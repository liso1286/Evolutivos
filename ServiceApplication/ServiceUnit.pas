unit ServiceUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, SvcMgr, IdHTTPServer, IdCustomHTTPServer, IdGlobal, IdTCPServer;

type
  TService1 = class(TService)
  private
    HTTPServer: TIdHTTPServer;
    procedure Log(const S: string);
    procedure OnCommandGet(AThread: TIdPeerThread;
      RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
  public
    function GetServiceController: TServiceController; override;
  published
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
  end;

var
  Service1: TService1;

implementation

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Service1.Controller(CtrlCode);
end;

function TService1.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TService1.Log(const S: string);
var
  F: TextFile;
  LogPath: string;
begin
  LogPath := 'C:\VIDSignerNotify\callback.log';

  ForceDirectories('C:\VIDSignerNotify');

  AssignFile(F, LogPath);
  if FileExists(LogPath) then
    Append(F)
  else
    Rewrite(F);

  Writeln(F, DateTimeToStr(Now) + ' - ' + S);
  CloseFile(F);
end;

procedure TService1.OnCommandGet(AThread: TIdPeerThread;
  RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
var
  Body: string;
begin
  if (RequestInfo.Command = 'POST') and
     (RequestInfo.Document = '/vidsigner/notify') then
  begin
    Body := RequestInfo.UnparsedParams;
    Log('Rebut POST: ' + Body);

    // Respondre a VIDSigner
    ResponseInfo.ResponseNo := 200;
    ResponseInfo.ContentText := 'OK';
    Exit;
  end;

  // Si no és la ruta que esperem:
  ResponseInfo.ResponseNo := 404;
  ResponseInfo.ContentText := 'Not found';
end;

procedure TService1.ServiceStart(Sender: TService;
  var Started: Boolean);
begin
  HTTPServer := TIdHTTPServer.Create(nil);
  HTTPServer.DefaultPort := 8080;
  HTTPServer.OnCommandGet := OnCommandGet;

  HTTPServer.Active := True;

  Log('Servei iniciat. Escoltant a http://*:8080/vidsigner/notify');
  Started := True;
end;

procedure TService1.ServiceStop(Sender: TService;
  var Stopped: Boolean);
begin
  HTTPServer.Active := False;
  HTTPServer.Free;
  Log('Servei aturat.');
  Stopped := True;
end;

end.

