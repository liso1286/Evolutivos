unit DataEstatPacientQ;

interface

uses
  SysUtils, Classes, Diccionari;

type
  TwDataEstatPacientQ = class(TDataModule)
    P_ECB: THYSqlProc;
    P_Historia: THYSqlProc;
    P_Diagnostics: THYSqlProc;
    P_Intercon: THYSqlProc;
    P_Semafors: THYSqlProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDataEstatPacientQ: TwDataEstatPacientQ;

implementation

{$R *.dfm}

end.
