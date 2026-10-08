unit DataConfig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Diccionari, Db, DBTables;

type
  TwDataConfig = class(TDataModule)
    ServerHora: THYSqlProc;
    Drets: TDic;
    Accesos: TDic;
    DretsAcces: TDic;
    DretsEspecial: TDic;
    DretsMetges: TDic;
    DretsGrup: TDic;
    TrazaControl: TDic;
    ContaTraza: THYSqlTrigger;
    InfCabe: TDic;
    DretsPresta: TDic;
    Menus: TDic;
    MenusAcces: TDic;
    InfCabeTexte: TDic;
    Config: TDic;
    T_Ordre_BI: THYSqlTrigger;
    T_Ordre_BU: THYSqlTrigger;
    InformesImprimir: TDic;
    InformesValidar: TDic;
    Resum: THYSqlProc;
    DretsMotiu: TDic;
    LogInhabilitats: TDic;
    RegistraLog: THYSqlProc;
    loghccc: TDic;
    LogHCCC_Alarma: THYSqlProc;
    ErrorsHc3: THYSqlProc;
    Admissions: THYSqlProc;
    ConfigBloq: TDic;
    Directoris: TDic;
    AdmisTotals: THYSqlProc;
    DretsGestionats: TDic;
    InitGrupEspe: THYSqlProc;
    Horaris_Funcions: TDic;
    DretsUsuari: THYSqlView;
    P_GrantSelectAll: THYSqlProc;
    Avisos_Correu: TDic;
    T_ACorreu_BI: THYSqlTrigger;
    Avisos_Dest: TDic;
    T_ADest_BI: THYSqlTrigger;
    Avisos: TDic;
    T_Avisos_BI: THYSqlTrigger;
    ConfigDates: TDic;
    BloqueigAcc: TDic;
    LogMetges: TDic;
    LogFili: TDic;
    LogTract: TDic;
    LogFacLin: TDic;
    LogCodiOrtesis_Eliminada: TDic;
    LogAlergies: TDic;
    Control: THYSqlProc;
    NHCnoactius: THYSqlProc;
    Alarma_Tipus: TDic;
    Alarma: TDic;
    T_Alarma_Tipus_BI: THYSqlTrigger;
    T_Alarma_BI: THYSqlTrigger;
    Llistat_Grups: THYSqlProc;
    anonim: THYSqlProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDataConfig: TwDataConfig;

implementation

uses Data, DataBasics, DataCurs, DataInterCon, DataFactu, DataOrtesis,
  DataAdmisio;

{$R *.DFM}

end.

Taules a migrar a dbfs:

Metges -> Metges.dbf

Filiacio -> Filiacio.dbf  /  Epi.dbf  / GutomC  / GutomD

Tractaments -> Registre / Ambulato / Visites / Revisio / HospDia / CapDom / CursPro / GutomC  / GutomD
  