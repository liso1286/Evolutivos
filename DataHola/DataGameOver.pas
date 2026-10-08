unit DataGameOver;

interface

uses
  SysUtils, Classes, Diccionari;

type
  TwDataGameOver = class(TDataModule)
    Professionals: TDic;
    Escoles: TDic;
    Processos: TDic;
    BaixesProf: TDic;
    Bloqueig: TDic;
    P_Calendari: THYSqlProc;
    P_Cursos: THYSqlProc;
    P_EstadisticaMonitors: THYSqlProc;
    P_EstMoniMesos: THYSqlProc;
    P_MesAny: THYSqlProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDataGameOver: TwDataGameOver;

implementation

{$R *.dfm}

end.
