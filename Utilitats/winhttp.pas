unit winhttp;

interface

uses
  Windows, SysUtils, WinInet, Messages, Variants, Classes, Math;

const
  WINHTTP_ACCESS_TYPE_DEFAULT_PROXY = 0;
  WINHTTP_NO_PROXY_NAME = nil;
  WINHTTP_NO_PROXY_BYPASS = nil;
  WINHTTP_NO_REFERER = nil;
  WINHTTP_DEFAULT_ACCEPT_TYPES: array[0..0] of PWideChar = (nil);
  WINHTTP_NO_ADDITIONAL_HEADERS = nil;
  WINHTTP_NO_REQUEST_DATA = nil;
  WINHTTP_ADDREQ_FLAG_ADD_IF_NEW = $10000000;
  WINHTTP_ADDREQ_FLAG_ADD = $20000000;
  WINHTTP_ADDREQ_FLAG_COALESCE_WITH_COMMA = $40000000;
  WINHTTP_ADDREQ_FLAG_COALESCE_WITH_SEMICOLON = $01000000;
  WINHTTP_ADDREQ_FLAG_REPLACE = $80000000;
  INTERNET_DEFAULT_HTTPS_PORT = 443;
  INTERNET_DEFAULT_HTTP_PORT  = 80;
  WINHTTP_OPTION_SECURE_PROTOCOLS = 84;
  WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_2 = $00000800;
  WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_1 = $00000200;
  WINHTTP_FLAG_SECURE_PROTOCOL_TLS1   = $00000080;

type
  HINTERNET = Pointer;

function WinHttpAddRequestHeaders(hRequest: HINTERNET; pwszHeaders: LPCWSTR; dwHeadersLength: DWORD;
  dwModifiers: DWORD): BOOL; stdcall;
  external 'winhttp.dll';

function WinHttpOpen(pszAgentW: PWideChar; dwAccessType: DWORD;
  pszProxyW, pszProxyBypassW: PWideChar; dwFlags: DWORD): HINTERNET; stdcall;
  external 'winhttp.dll';

function WinHttpConnect(hSession: HINTERNET; pswzServerName: PWideChar;
  nServerPort: INTERNET_PORT; dwReserved: DWORD): HINTERNET; stdcall;
  external 'winhttp.dll';

function WinHttpOpenRequest(hConnect: HINTERNET; pwszVerb, pwszObjectName,
  pwszVersion: PWideChar; pwszReferrer: PWideChar;
  ppwszAcceptTypes: Pointer; dwFlags: DWORD): HINTERNET; stdcall;
  external 'winhttp.dll';

function WinHttpSendRequest(hRequest: HINTERNET; pwszHeaders: PWideChar;
  dwHeadersLength: DWORD; lpOptional: Pointer;
  dwOptionalLength: DWORD; dwTotalLength: DWORD;
  dwContext: DWORD): BOOL; stdcall;
  external 'winhttp.dll';

function WinHttpReceiveResponse(hRequest: HINTERNET;
  lpReserved: Pointer): BOOL; stdcall;
  external 'winhttp.dll';

function WinHttpReadData(hRequest: HINTERNET; lpBuffer: Pointer;
  dwNumberOfBytesToRead: DWORD; var lpdwNumberOfBytesRead: DWORD): BOOL; stdcall;
  external 'winhttp.dll';

function WinHttpCloseHandle(hInternet: HINTERNET): BOOL; stdcall;
  external 'winhttp.dll';

function WinHttpQueryHeaders(hRequest: HINTERNET;
  dwInfoLevel: DWORD; pwszName: PWideChar; lpBuffer: Pointer;
  var lpdwBufferLength: DWORD; var lpdwIndex: DWORD): BOOL; stdcall;
  external 'winhttp.dll';

function WinHttpSetOption(hInternet: HINTERNET;
  dwOption: DWORD;
  lpBuffer: Pointer;
  dwBufferLength: DWORD): BOOL; stdcall;
  external 'winhttp.dll';  

function HttpDeleteWinHTTP(const URL, ExtraHeaders: string; out StatusCode: Integer): string;  
function HttpGetWinHTTP(const URL, ExtraHeaders: string; out StatusCode: Integer): string;
function HttpPostJsonWinHTTP(const URL, JSONData: string; out StatusCode: Integer; ExtraHeaders: string = ''): string;
function HttpPostJsonWinHTTP_UTF8(const URL: string; const JSONData: UTF8String; out StatusCode: Integer; ExtraHeaders: string = ''): string;
function HttpPostJson(const Host, Resource, Headers: WideString; MemStream: TMemoryStream; Port: INTERNET_PORT): string;


const
  WINHTTP_FLAG_SECURE = $00800000;
  WINHTTP_QUERY_STATUS_CODE = 19;
  WINHTTP_QUERY_FLAG_NUMBER = $20000000;
  WINHTTP_NO_HEADER_INDEX = DWORD(-1);


implementation


function TrimTrailingCRLF(const S: WideString): WideString;
begin
  Result := S;
  while (Result <> '') and 
        ((Result[Length(Result)] = WideChar(#13)) or (Result[Length(Result)] = WideChar(#10))) do
    SetLength(Result, Length(Result) - 1);
end;

function GetHttpStatusCodeWinHTTP(hRequest: HINTERNET): Integer;
var
  szBuffer: array[0..15] of WideChar;
  dwSize: DWORD;
  dwIndex: DWORD;
begin
  Result := -1;
  dwSize := SizeOf(szBuffer);
  dwIndex := WINHTTP_NO_HEADER_INDEX;

  if WinHttpQueryHeaders(hRequest,
       WINHTTP_QUERY_STATUS_CODE,
       nil,
       @szBuffer,
       dwSize,
       dwIndex) then
    Result := StrToIntDef(WideCharToString(szBuffer), -1)
  else
    OutputDebugString(PChar('WinHttpQueryHeaders failed. Error: ' + IntToStr(GetLastError)));
end;


function GetHttpStatusCode(hRequest: HINTERNET): Integer;
var
  dwStatusCode: DWORD;
  dwSize: DWORD;
  dwIndex: DWORD;
begin
  Result := 0;
  dwStatusCode := 0;
  dwSize := SizeOf(dwStatusCode);
  dwIndex := WINHTTP_NO_HEADER_INDEX;

  if WinHttpQueryHeaders(
       hRequest,
       WINHTTP_QUERY_STATUS_CODE or WINHTTP_QUERY_FLAG_NUMBER,
       nil,
       @dwStatusCode,
       dwSize,
       dwIndex) then
    Result := dwStatusCode
  else
    Result := -1;
end;

function HttpGetWinHTTP(const URL, ExtraHeaders: string; out StatusCode: Integer): string;
var
  hSession, hConnect, hRequest: HINTERNET;
  ServerName, ObjectName: WideString;
  UseSSL: Boolean;
  URLNoProtocol: string;
  PosSlash, PosColon: Integer;
  Port: INTERNET_PORT;
  BytesRead: DWORD;
  Buffer: array[0..1023] of Byte;
  ResponseStream: TStringStream;
  ErrorCode: DWORD;
  dwProtocols: DWORD;
  HeadersWide: WideString;
begin
  Result := '';
  StatusCode := -1;
  UseSSL := Pos('https://', LowerCase(URL)) = 1;

  // --- parse URL
  URLNoProtocol := URL;
  Delete(URLNoProtocol, 1, Pos('://', URLNoProtocol) + 2);
  PosSlash := Pos('/', URLNoProtocol);
  if PosSlash = 0 then
    raise Exception.Create('URL mal formada (no conté path)');
  ObjectName := Copy(URLNoProtocol, PosSlash, Length(URLNoProtocol));
  ServerName := Copy(URLNoProtocol, 1, PosSlash - 1);
  PosColon := Pos(':', ServerName);
  if PosColon > 0 then
  begin
    Port := StrToIntDef(Copy(ServerName, PosColon + 1, Length(ServerName)), 80);
    ServerName := Copy(ServerName, 1, PosColon - 1);
  end
  else if UseSSL then
    Port := 443
  else
    Port := 80;

  // --- open session
  hSession := WinHttpOpen('Delphi WinHTTP/1.0', WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
                          WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);
  if hSession = nil then
    raise Exception.CreateFmt('WinHttpOpen error: %d', [GetLastError]);

  // Force TLS1.2
  dwProtocols := WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_2;
  WinHttpSetOption(hSession, WINHTTP_OPTION_SECURE_PROTOCOLS, @dwProtocols, SizeOf(dwProtocols));

  try
    hConnect := WinHttpConnect(hSession, PWideChar(ServerName), Port, 0);
    if hConnect = nil then
      raise Exception.CreateFmt('WinHttpConnect error: %d', [GetLastError]);

    try
      hRequest := WinHttpOpenRequest(hConnect,
                                     'GET',
                                     PWideChar(ObjectName),
                                     nil,
                                     WINHTTP_NO_REFERER,
                                     nil,
                                     IfThen(UseSSL, WINHTTP_FLAG_SECURE, 0));
      if hRequest = nil then
        raise Exception.CreateFmt('WinHttpOpenRequest error: %d', [GetLastError]);

      // --- PREPARE HEADERS: NO TRAILING CRLF
      HeadersWide := TrimTrailingCRLF(WideString(ExtraHeaders));

      // --- SEND REQUEST: pass headers directly here (reliable)
      if not WinHttpSendRequest(hRequest,
                                PWideChar(HeadersWide),    // additional headers
                                DWORD(-1),                 // -1 = null-terminated
                                WINHTTP_NO_REQUEST_DATA,
                                0,
                                0,
                                0) then
      begin
        ErrorCode := GetLastError;
        raise Exception.CreateFmt('WinHttpSendRequest error: %d - %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
      end;

      if not WinHttpReceiveResponse(hRequest, nil) then
      begin
        ErrorCode := GetLastError;
        raise Exception.CreateFmt('WinHttpReceiveResponse error: %d - %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
      end;

      // --- get status
      StatusCode := GetHttpStatusCode(hRequest);

      // --- read response
      ResponseStream := TStringStream.Create('');
      try
        repeat
          BytesRead := 0;
          if not WinHttpReadData(hRequest, @Buffer, SizeOf(Buffer), BytesRead) then
            Break;
          if BytesRead > 0 then
            ResponseStream.WriteBuffer(Buffer, BytesRead);
        until BytesRead = 0;
        Result := ResponseStream.DataString;
      finally
        ResponseStream.Free;
      end;

    finally
      WinHttpCloseHandle(hRequest);
      WinHttpCloseHandle(hConnect);
    end;
  finally
    WinHttpCloseHandle(hSession);
  end;
end;

function HttpPostJsonWinHTTP(const URL, JSONData: string; out StatusCode: Integer; ExtraHeaders: string = ''): string;
var
  hSession, hConnect, hRequest: HINTERNET;
  ServerName, ObjectName: WideString;
  Port: INTERNET_PORT;
  UseSSL: Boolean;
  BytesRead: DWORD;
  Buffer: array[0..1023] of Byte;
  ResponseStream: TStringStream;
  Headers: WideString;
  URLNoProtocol: string;
  PosSlash, PosColon: Integer;
  ErrorCode: DWORD;
  LogPath: string;
  LogFile: TextFile;
  dwProtocols: DWORD;  
begin
  Result := '';
  StatusCode := -1;
  UseSSL := Pos('https://', LowerCase(URL)) = 1;

  // Crear carpeta de logs si no existeix
  LogPath := 'C:\tempexes\WinHttp_Log.txt';
  ForceDirectories(ExtractFileDir(LogPath));

  // Preparar el log
  AssignFile(LogFile, LogPath);
  if FileExists(LogPath) then
    Append(LogFile)
  else
    Rewrite(LogFile);

  try
    Writeln(LogFile, '-----------------------------');
    Writeln(LogFile, Format('Hora: %s', [DateTimeToStr(Now)]));
    Writeln(LogFile, 'URL: ' + URL);
    Writeln(LogFile, 'Headers:');
    Writeln(LogFile, ExtraHeaders);
    Writeln(LogFile, 'Body (JSON):');
    Writeln(LogFile, JSONData);
    Writeln(LogFile, '-----------------------------');
  finally
    CloseFile(LogFile);
  end;

  // Eliminar protocol
  URLNoProtocol := URL;
  Delete(URLNoProtocol, 1, Pos('://', URLNoProtocol) + 2);

  // Separar host i objecte
  PosSlash := Pos('/', URLNoProtocol);
  if PosSlash = 0 then
    raise Exception.Create('URL mal formada (no conté path)');

  ObjectName := Copy(URLNoProtocol, PosSlash, Length(URLNoProtocol));
  ServerName := Copy(URLNoProtocol, 1, PosSlash - 1);

  // Separar port si existeix
  PosColon := Pos(':', ServerName);
  if PosColon > 0 then
  begin
    Port := StrToIntDef(Copy(ServerName, PosColon + 1, Length(ServerName)), 80);
    ServerName := Copy(ServerName, 1, PosColon - 1);
  end
  else
    if UseSSL then port := 443 else port:=80;

  // Obrir sessió
  hSession := WinHttpOpen('Delphi WinHTTP/1.0', WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
                          WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);

  if hSession = nil then
  begin
    ErrorCode := GetLastError;
    raise Exception.CreateFmt('Error a WinHttpOpen (%d): %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
  end;

  try
    hConnect := WinHttpConnect(hSession, PWideChar(ServerName), Port, 0);
    if hConnect = nil then
    begin
      ErrorCode := GetLastError;
      raise Exception.CreateFmt('Error a WinHttpConnect (%d): %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
    end;

    dwProtocols := WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_2;
    if not WinHttpSetOption(hSession, WINHTTP_OPTION_SECURE_PROTOCOLS, @dwProtocols, SizeOf(dwProtocols)) then
    begin
        ErrorCode := GetLastError;
        raise Exception.CreateFmt('No s’ha pogut establir TLS 1.2 (%d): %s', [ErrorCode, SysErrorMessage(GetLastError)]);
    end;
    
    try
      hRequest := WinHttpOpenRequest(hConnect,
                                     'POST',
                                     PWideChar(ObjectName),
                                     nil,
                                     WINHTTP_NO_REFERER,
                                     nil,
                                     IfThen(UseSSL, WINHTTP_FLAG_SECURE, 0));

      if hRequest = nil then
      begin
        ErrorCode := GetLastError;
        raise Exception.CreateFmt('Error a WinHttpOpenRequest (%d): %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
      end;

      Headers := ExtraHeaders + 'Content-Type: application/json' + #13#10;

      if not WinHttpSendRequest(hRequest,
                                PWideChar(Headers), Length(Headers),
                                PChar(JSONData), Length(JSONData),
                                Length(JSONData), 0) then
        raise Exception.Create('Error a WinHttpSendRequest');

      if not WinHttpReceiveResponse(hRequest, nil) then
        raise Exception.Create('Error a WinHttpReceiveResponse');

      // Llegir el codi d’estat HTTP
      StatusCode := GetHttpStatusCodeWinHTTP(hRequest);

      // Llegir la resposta
      ResponseStream := TStringStream.Create('');
      try
        repeat
          BytesRead := 0;
          if not WinHttpReadData(hRequest, @Buffer, SizeOf(Buffer), BytesRead) then
          begin
            ErrorCode := GetLastError;
            raise Exception.CreateFmt('Error a WinHttpReadData (%d): %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
          end;
          if BytesRead > 0 then
            ResponseStream.WriteBuffer(Buffer, BytesRead);
        until BytesRead = 0;

        Result := ResponseStream.DataString;

        // Escriure resultat al log
        AssignFile(LogFile, LogPath);
        Append(LogFile);
        try
          Writeln(LogFile, Format('HTTP Status: %d', [StatusCode]));
          Writeln(LogFile, 'Resposta del servidor:');
          Writeln(LogFile, Result);
          Writeln(LogFile, IntToStr(Length(JSONData)));
          Writeln(LogFile, '=============================');
        finally
          CloseFile(LogFile);
        end;

      finally
        ResponseStream.Free;
      end;

    finally
      WinHttpCloseHandle(hRequest);
      WinHttpCloseHandle(hConnect);
    end;

  finally
    WinHttpCloseHandle(hSession);
  end;

end;


function HttpPostJsonWinHTTP_UTF8(const URL: string; const JSONData: UTF8String; out StatusCode: Integer; ExtraHeaders: string = ''): string;
var
  hSession, hConnect, hRequest: HINTERNET;
  ServerName, ObjectName: WideString;
  Port: INTERNET_PORT;
  UseSSL: Boolean;
  BytesRead: DWORD;
  Buffer: array[0..1023] of Byte;
  ResponseStream: TStringStream;
  Headers: WideString;
  URLNoProtocol: string;
  PosSlash, PosColon: Integer;
  ErrorCode: DWORD;
  LogPath: string;
  LogFile: TextFile;
  dwProtocols: DWORD;  
begin
  Result := '';
  StatusCode := -1;
  UseSSL := Pos('https://', LowerCase(URL)) = 1;

  // Crear carpeta de logs si no existeix
  LogPath := 'C:\tempexes\WinHttp_Log.txt';
  ForceDirectories(ExtractFileDir(LogPath));

  // Preparar el log
  AssignFile(LogFile, LogPath);
  if FileExists(LogPath) then
    Append(LogFile)
  else
    Rewrite(LogFile);

  try
    Writeln(LogFile, '-----------------------------');
    Writeln(LogFile, Format('Hora: %s', [DateTimeToStr(Now)]));
    Writeln(LogFile, 'URL: ' + URL);
    Writeln(LogFile, 'Headers:');
    Writeln(LogFile, ExtraHeaders);
    Writeln(LogFile, 'Body (JSON):');
    Writeln(LogFile, JSONData);
    Writeln(LogFile, '-----------------------------');
  finally
    CloseFile(LogFile);
  end;

  // Eliminar protocol
  URLNoProtocol := URL;
  Delete(URLNoProtocol, 1, Pos('://', URLNoProtocol) + 2);

  // Separar host i objecte
  PosSlash := Pos('/', URLNoProtocol);
  if PosSlash = 0 then
    raise Exception.Create('URL mal formada (no conté path)');

  ObjectName := Copy(URLNoProtocol, PosSlash, Length(URLNoProtocol));
  ServerName := Copy(URLNoProtocol, 1, PosSlash - 1);

  // Separar port si existeix
  PosColon := Pos(':', ServerName);
  if PosColon > 0 then
  begin
    Port := StrToIntDef(Copy(ServerName, PosColon + 1, Length(ServerName)), 80);
    ServerName := Copy(ServerName, 1, PosColon - 1);
  end
  else
    if UseSSL then port := 443 else port:=80;

  // Obrir sessió
  hSession := WinHttpOpen('Delphi WinHTTP/1.0', WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
                          WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);

  if hSession = nil then
  begin
    ErrorCode := GetLastError;
    raise Exception.CreateFmt('Error a WinHttpOpen (%d): %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
  end;

  try
    hConnect := WinHttpConnect(hSession, PWideChar(ServerName), Port, 0);
    if hConnect = nil then
    begin
      ErrorCode := GetLastError;
      raise Exception.CreateFmt('Error a WinHttpConnect (%d): %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
    end;

    dwProtocols := WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_2;
    if not WinHttpSetOption(hSession, WINHTTP_OPTION_SECURE_PROTOCOLS, @dwProtocols, SizeOf(dwProtocols)) then
    begin
        ErrorCode := GetLastError;
        raise Exception.CreateFmt('No s’ha pogut establir TLS 1.2 (%d): %s', [ErrorCode, SysErrorMessage(GetLastError)]);
    end;
    
    try
      hRequest := WinHttpOpenRequest(hConnect,
                                     'POST',
                                     PWideChar(ObjectName),
                                     nil,
                                     WINHTTP_NO_REFERER,
                                     nil,
                                     IfThen(UseSSL, WINHTTP_FLAG_SECURE, 0));

      if hRequest = nil then
      begin
        ErrorCode := GetLastError;
        raise Exception.CreateFmt('Error a WinHttpOpenRequest (%d): %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
      end;

      Headers := ExtraHeaders + #13#10; // + 'Content-Type: application/json' + #13#10;

      if not WinHttpSendRequest(hRequest,
                                PWideChar(Headers), Length(Headers),
                                PAnsiChar(JSONData), Length(JSONData),
                                Length(JSONData), 0) then
        raise Exception.Create('Error a WinHttpSendRequest'); 

      if not WinHttpReceiveResponse(hRequest, nil) then
        raise Exception.Create('Error a WinHttpReceiveResponse');

      // Llegir el codi d’estat HTTP
      StatusCode := GetHttpStatusCodeWinHTTP(hRequest);

      // Llegir la resposta
      ResponseStream := TStringStream.Create('');
      try
        repeat
          BytesRead := 0;
          if not WinHttpReadData(hRequest, @Buffer, SizeOf(Buffer), BytesRead) then
          begin
            ErrorCode := GetLastError;
            raise Exception.CreateFmt('Error a WinHttpReadData (%d): %s', [ErrorCode, SysErrorMessage(ErrorCode)]);
          end;
          if BytesRead > 0 then
            ResponseStream.WriteBuffer(Buffer, BytesRead);
        until BytesRead = 0;

        Result := ResponseStream.DataString;

        // Escriure resultat al log
        AssignFile(LogFile, LogPath);
        Append(LogFile);
        try
          Writeln(LogFile, Format('HTTP Status: %d', [StatusCode]));
          Writeln(LogFile, 'Resposta del servidor:');
          Writeln(LogFile, Result);
          Writeln(LogFile, '=============================');
        finally
          CloseFile(LogFile);
        end;

      finally
        ResponseStream.Free;
      end;

    finally
      WinHttpCloseHandle(hRequest);
      WinHttpCloseHandle(hConnect);
    end;

  finally
    WinHttpCloseHandle(hSession);
  end;

end;

{function HttpPostJsonWinHTTP(const URL, JSONData: string; out StatusCode: Integer): string;
var
  hSession, hConnect, hRequest: HINTERNET;
  ServerName, ObjectName: WideString;
  Port: INTERNET_PORT;
  UseSSL: Boolean;
  BytesRead: DWORD;
  Buffer: array[0..1023] of Byte;
  ResponseStream: TStringStream;
  Headers: WideString;
  URLNoProtocol: string;
  PosSlash, PosColon: Integer;
begin
  Result := '';
  StatusCode := 0;
  UseSSL := Pos('https://', LowerCase(URL)) = 1;

  // Eliminar protocol
  URLNoProtocol := URL;
  Delete(URLNoProtocol, 1, Pos('://', URLNoProtocol) + 2);

  // Separar host i objecte
  PosSlash := Pos('/', URLNoProtocol);
  if PosSlash = 0 then
    raise Exception.Create('URL mal formada (no conté path)');

  ObjectName := Copy(URLNoProtocol, PosSlash, Length(URLNoProtocol));
  ServerName := Copy(URLNoProtocol, 1, PosSlash - 1);

  // Separar port si existeix
  PosColon := Pos(':', ServerName);
  if PosColon > 0 then
  begin
    Port := StrToIntDef(Copy(ServerName, PosColon + 1, Length(ServerName)), 80);
    ServerName := Copy(ServerName, 1, PosColon - 1);
  end
  else
    if UseSSL then port := 443 else port:=80;
//    Port := IfThen(UseSSL, 443, 80);

  hSession := WinHttpOpen('Delphi WinHTTP/1.0', WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
                          WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);
  if hSession = nil then
    raise Exception.Create('Error a WinHttpOpen');

  hConnect := WinHttpConnect(hSession, PWideChar(ServerName), Port, 0);
  if hConnect = nil then
  begin
    WinHttpCloseHandle(hSession);
    raise Exception.Create('Error a WinHttpConnect');
  end;

  hRequest := WinHttpOpenRequest(hConnect, 'POST', PWideChar(ObjectName), nil,
                                 WINHTTP_NO_REFERER, nil,
                                 IfThen(UseSSL, WINHTTP_FLAG_SECURE, 0));
  if hRequest = nil then
  begin
    WinHttpCloseHandle(hConnect);
    WinHttpCloseHandle(hSession);
    raise Exception.Create('Error a WinHttpOpenRequest');
  end;

  Headers := 'Content-Type: application/json' + #13#10;

  if not WinHttpSendRequest(hRequest,
                            PWideChar(Headers), Length(Headers),
                            PChar(JSONData), Length(JSONData),
                            Length(JSONData), 0) then
    raise Exception.Create('Error a WinHttpSendRequest');

  if not WinHttpReceiveResponse(hRequest, nil) then
    raise Exception.Create('Error a WinHttpReceiveResponse');

  // Llegir codi d’estat


  StatusCode := GetHttpStatusCode(hRequest);

  // Llegir cos de la resposta
  ResponseStream := TStringStream.Create('');
  try
    repeat
      BytesRead := 0;
      if not WinHttpReadData(hRequest, @Buffer, SizeOf(Buffer), BytesRead) then
        Break;
      if BytesRead > 0 then
        ResponseStream.WriteBuffer(Buffer, BytesRead);
    until BytesRead = 0;

    Result := ResponseStream.DataString;
  finally
    ResponseStream.Free;
    WinHttpCloseHandle(hRequest);
    WinHttpCloseHandle(hConnect);
    WinHttpCloseHandle(hSession);
  end;
end; }

function HttpPostJson(const Host, Resource, Headers: WideString; MemStream: TMemoryStream; Port: INTERNET_PORT): string;
var
  hSession, hConnect, hRequest: HINTERNET;
  dwSize, StatusCode: DWORD;
  ResponseStream: TStringStream;  
  Buffer: array[0..1023] of AnsiChar;
  dwRead: DWORD;
  SendBuffer: PWideChar;
  DataLength: DWORD;
  BytesRead: DWORD;
begin
  Result := '';

  try
    // 1. Obrir sessió
    hSession := WinHttpOpen(
      PWideChar(WideString('Delphi6App')),
      WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
      WINHTTP_NO_PROXY_NAME,
      WINHTTP_NO_PROXY_BYPASS,
      0
    );

    if hSession = nil then
      raise Exception.Create('WinHttpOpen error: ' + SysErrorMessage(GetLastError));

    try
      // 2. Connectar al host
      hConnect := WinHttpConnect(
        hSession,
        PWideChar(WideString(Host)),
        Port,
        0
      );

      if hConnect = nil then
        raise Exception.Create('WinHttpConnect error: ' + SysErrorMessage(GetLastError));

      try
        // 3. Obrir petició POST (HTTPS)
        hRequest := WinHttpOpenRequest(
          hConnect,
          PWideChar(WideString('POST')),
          PWideChar(WideString(Resource)),
          nil,
          WINHTTP_NO_REFERER,
          nil, // Accept types: nil per defecte
          WINHTTP_FLAG_SECURE
        );

        if hRequest = nil then
          raise Exception.Create('WinHttpOpenRequest error: ' + SysErrorMessage(GetLastError));

        // 4. Enviar la petició
        if not WinHttpSendRequest(
          hRequest,
          PWideChar(WideString(Headers)),
          Length(Headers),
          MemStream.Memory,
          MemStream.Size,
          MemStream.Size,
          0
        ) then
          raise Exception.Create('WinHttpSendRequest error: ' + SysErrorMessage(GetLastError));

        // 5. Rebre resposta
        if not WinHttpReceiveResponse(hRequest, nil) then
          raise Exception.Create('WinHttpReceiveResponse error: ' + SysErrorMessage(GetLastError));

        // 6. Llegir la resposta
        ResponseStream := TStringStream.Create('');
        repeat
          BytesRead := 0;
          if not WinHttpReadData(hRequest, @Buffer, SizeOf(Buffer), BytesRead) then
            Break;
          if BytesRead > 0 then
            ResponseStream.WriteBuffer(Buffer, BytesRead);
        until BytesRead = 0;
        Result := ResponseStream.DataString;

      finally
        WinHttpCloseHandle(hRequest);
      end;

    finally
      WinHttpCloseHandle(hConnect);
    end;

  finally
    WinHttpCloseHandle(hSession);
  end;
end;

function HttpDeleteWinHTTP(const URL, ExtraHeaders: string; out StatusCode: Integer): string;
var
  hSession, hConnect, hRequest: HINTERNET;
  ServerName, ObjectName: WideString;
  UseSSL: Boolean;
  URLNoProtocol: string;
  PosSlash, PosColon: Integer;
  Port: INTERNET_PORT;
  BytesRead: DWORD;
  Buffer: array[0..1023] of Byte;
  ResponseStream: TStringStream;
  dwProtocols: DWORD;
  HeadersWide: WideString;
begin
  Result := '';
  StatusCode := -1;
  UseSSL := Pos('https://', LowerCase(URL)) = 1;

  // Desglossar URL
  URLNoProtocol := URL;
  Delete(URLNoProtocol, 1, Pos('://', URLNoProtocol) + 2);
  PosSlash := Pos('/', URLNoProtocol);
  if PosSlash = 0 then
    raise Exception.Create('URL mal formada (no conté path)');
  ObjectName := Copy(URLNoProtocol, PosSlash, Length(URLNoProtocol));
  ServerName := Copy(URLNoProtocol, 1, PosSlash - 1);
  PosColon := Pos(':', ServerName);
  if PosColon > 0 then
  begin
    Port := StrToIntDef(Copy(ServerName, PosColon + 1, Length(ServerName)), 80);
    ServerName := Copy(ServerName, 1, PosColon - 1);
  end
  else if UseSSL then
    Port := 443
  else
    Port := 80;

  // Obrir sessió
  hSession := WinHttpOpen('Delphi WinHTTP/1.0',
                          WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
                          WINHTTP_NO_PROXY_NAME,
                          WINHTTP_NO_PROXY_BYPASS,
                          0);
  if hSession = nil then
    raise Exception.CreateFmt('WinHttpOpen error: %d', [GetLastError]);

  // Forçar TLS 1.2
  dwProtocols := WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_2;
  WinHttpSetOption(hSession, WINHTTP_OPTION_SECURE_PROTOCOLS, @dwProtocols, SizeOf(dwProtocols));

  try
    hConnect := WinHttpConnect(hSession, PWideChar(ServerName), Port, 0);
    if hConnect = nil then
      raise Exception.CreateFmt('WinHttpConnect error: %d', [GetLastError]);

    try
      // Obrir petició DELETE
      hRequest := WinHttpOpenRequest(hConnect,
                                     'DELETE',
                                     PWideChar(ObjectName),
                                     nil,
                                     WINHTTP_NO_REFERER,
                                     nil,
                                     IfThen(UseSSL, WINHTTP_FLAG_SECURE, 0));
      if hRequest = nil then
        raise Exception.CreateFmt('WinHttpOpenRequest error: %d', [GetLastError]);

      HeadersWide := WideString(ExtraHeaders);

      // Enviar la petició DELETE amb les capçaleres
      if not WinHttpSendRequest(hRequest,
                                PWideChar(HeadersWide),
                                Length(HeadersWide),
                                WINHTTP_NO_REQUEST_DATA,
                                0,
                                0,
                                0) then
        raise Exception.CreateFmt('WinHttpSendRequest error: %d', [GetLastError]);

      if not WinHttpReceiveResponse(hRequest, nil) then
        raise Exception.CreateFmt('WinHttpReceiveResponse error: %d', [GetLastError]);

      StatusCode := GetHttpStatusCode(hRequest);

      // Llegir resposta
      ResponseStream := TStringStream.Create('');
      try
        repeat
          BytesRead := 0;
          if not WinHttpReadData(hRequest, @Buffer, SizeOf(Buffer), BytesRead) then
            Break;
          if BytesRead > 0 then
            ResponseStream.WriteBuffer(Buffer, BytesRead);
        until BytesRead = 0;

        Result := ResponseStream.DataString;
      finally
        ResponseStream.Free;
      end;

    finally
      WinHttpCloseHandle(hRequest);
      WinHttpCloseHandle(hConnect);
    end;
  finally
    WinHttpCloseHandle(hSession);
  end;
end;

end.
