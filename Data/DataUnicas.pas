unit DataUnicas;

interface

uses
  SysUtils, Classes, Dialogs, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, 
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, uLkJSON, winhttp, DateUtils,
  IdCoder, IdCoder3to4, IdCoderMIME;

const
  URL_BASE_NA_UNICAS_PRE = 'https://preproduccio.unicas.salut.intranet.gencat.cat/';
  USUARI_PRE = 'na-cliente-ig';
  PASS_PRE = 'ECzPeEeItEL78cdCJXkxvxdrO9enelGT';
  URL_TOKEN_EXTERN_PRE = 'https://hc-pre3.guttmann.com/unicas/credential/load';
  URL_CONSULTA_PACIENT_PRE = 'https://hc-pre3.guttmann.com/unicas/patient-ext/%s/state';

  URL_BASE_NA_UNICAS_PRO = 'https://unicas.salut.intranet.gencat.cat/';
  USUARI_PRO = 'Guttmann?';
  PASS_PRO = '??????';
  URL_TOKEN_EXTERN_PRO = 'https://hc.guttmann.com/unicas/credential/load';
  URL_CONSULTA_PACIENT_PRO = 'https://hc.guttmann.com/unicas/patient-ext/%s/state';

  KID = 'DpcUuLrplLeX5_vAhPwgJetkAWGl5m8PUvANXYkN9G8';

type

  TwDataUnicas = class(TDataModule)
    http: TIdHTTP;
    ssl: TIdSSLIOHandlerSocket;
    Encoder: TIdEncoderMIME;
  private
    { Private declarations }
  public
    function GetTokenExtern(Username, Patient: String): String;
    function GetURLVisor(Usuari, Patient: String): String;
    function GetPacientUnicas(Patient: String): String;
  end;

var
  wDataUnicas: TwDataUnicas;

implementation

uses Data, Funciones;

{$R *.dfm}

function TwDataUnicas.GetTokenExtern(Username, Patient: String): String;
var
  URL: String;
  JSONBody, Headers, Response: String;
  StatusCode: Integer;
  JSONResposta: TlkJSONbase;
begin
  if wData.ES_PROVA then URL := URL_TOKEN_EXTERN_PRE
                    else URL := URL_TOKEN_EXTERN_PRO;

  JSONBody := '{'+
              '    "type": "user", '+
              '    "params": {'+
              '      "username": "'+Username+'",'+
              '      "patient": '+Patient+
              '    }'+
              '}';

  Headers := 'x-api-key: Vd8fSeFU79M3dmgAuI6l3o9xjlyuROjm' + #13#10;

  // Fem la crida POST
  Response := HttpPostJsonWinHTTP(URL, JSONBody, StatusCode, Headers);

  if (StatusCode <> -1) and (StatusCode <> 200) then
    raise Exception.CreateFmt('Error %d a obtenir token: %s', [StatusCode, Response]);

  TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
  EXCEPT
    ShowMessage('Error "GetUnicasToken":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
    Exit;
  END;

  Result := JSONResposta.Field['token'].Value;

end;

function TwDataUnicas.GetURLVisor(Usuari, Patient: String): String;
var
  URL, Username, Token: String;
begin
  if wData.ES_PROVA then URL := URL_BASE_NA_UNICAS_PRE
                    else URL := URL_BASE_NA_UNICAS_PRO;

  Username := GutSelect('select email from metges where codi = "%s"', [Usuari]);
  Username := Copy(Username,1,len(Username)-13);

  Token := GetTokenExtern(Username, Patient);
  if (Token = '') then FerError('ERROR: token extern no generat.', True);
  Result := URL + 'desktop-hd?iss=' + URL +'ehrserver/fhir&launch=' + Token;
end;

function TwDataUnicas.GetPacientUnicas(Patient: String): String;
var
  URL, Response: String;
  StatusCode: Integer;
  JSONResposta: TlkJSONbase;
begin
    if wData.ES_PROVA then URL := URL_CONSULTA_PACIENT_PRE
                      else URL := URL_CONSULTA_PACIENT_PRO;

    URL := Format(URL, [Patient]);

    // Fem la crida GET
    Response := HttpGetWinHTTP(URL, 'x-api-key: Vd8fSeFU79M3dmgAuI6l3o9xjlyuROjm', StatusCode);   

    if (StatusCode <> -1) and (StatusCode <> 200) then
      raise Exception.CreateFmt('Error %d a consulta pacient UNICAS: %s', [StatusCode, Response]);

    TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
    EXCEPT
      ShowMessage('Error API UNICAS  - Consulta Pacient:' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
      Exit;
    END;

    Result := '';
    if Pos('err',Response) > 0 then Result := JSONResposta.Field['err'].Value
    else begin
        if JSONResposta <> nil then
        begin
            if      not JSONResposta.Field['active'  ].Value then Result := 'El pacient no està INSCRIT a UNICAS'
            else if not JSONResposta.Field['enrolled'].Value then Result := 'El pacient no està ENROLAT a UNICAS';
        end
        else Result := 'La consulta no retorna res';
    end;
end;

end.
