unit DataPerfilsNR;

interface

uses
  SysUtils, Classes, Diccionari, DB, DBTables;

type
  TwDataPerfilsNR = class(TDataModule)
    PerfilsNR: TDic;
    UM_PerfilNR: TDic;
    SeveritatUM: TDic;
    ProcesNR: TDic;
    ProcesNR_Pautes: TDic;
    ProcesNR_Torns: TDic;
    P_Inicialitzacio: THYSqlProc;
    T_Pautes_AI: THYSqlTrigger;
    P_ActualitzaFreq: THYSqlProc;
    P_ActualitzaFreq_Dll: THYSqlProc;
    P_ActualitzaFreqActual: THYSqlProc;
    Protocols_ProcesNR: TDic;
    T_Torns_BI: THYSqlTrigger;
    Torns_Inicia_ID: THYSqlProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDataPerfilsNR: TwDataPerfilsNR;

implementation

uses Data;

{$R *.dfm}

end.
