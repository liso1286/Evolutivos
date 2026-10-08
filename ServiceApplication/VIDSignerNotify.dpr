program VIDSignerNotify;

uses
  SvcMgr,
  ServiceUnit in 'ServiceUnit.pas' {Service1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TService1, Service1);
  Application.Run;
end.



