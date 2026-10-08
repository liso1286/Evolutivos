unit DataInformes;

interface

uses
  SysUtils, Classes, Diccionari, IdIOHandler, IdIOHandlerSocket,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, DB, DBTables;

type
  TwDataInformes = class(TDataModule)
    Informes_Reg: TDic;
    Informes_Tipus: TDic;
    Informes_Plantilles: TDic;
    Informes: TDic;
    P_Plantilles_Omple: THYSqlProc;
    Informes_HCCC: TDic;
    T_InfReg_BI: THYSqlTrigger;
    T_InfHCCC_BI: THYSqlTrigger;
    P_Informes_List: THYSqlProc;
    P_Inf_GeneraEMM: THYSqlProc;
    P_Inf_GeneraRNP: THYSqlProc;
    P_Inf_GeneraEMB: THYSqlProc;
    P_Inf_Autors: THYSqlProc;
    P_Inf_GeneraRMB: THYSqlProc;
    P_Inf_GeneraACU: THYSqlProc;
    Informes_Items: TDic;
    Informes_Lin: TDic;
    Informes_Tags: TDic;
    T_Plantilles_BI: THYSqlTrigger;
    T_Items_BI: THYSqlTrigger;
    T_Tags_AI: THYSqlTrigger;
    T_Items_BU: THYSqlTrigger;
    P_Items_Evolucio: THYSqlProc;
    P_Items_Anal1: THYSqlProc;
    P_Plantilles_Medicacio: THYSqlProc;
    P_Items_RX: THYSqlProc;
    P_Items_Ecos: THYSqlProc;
    P_Items_Uros: THYSqlProc;
    P_Items_EMG: THYSqlProc;
    P_Items_FSA: THYSqlProc;
    P_Items_Videofl: THYSqlProc;
    P_Items_ProvesEsp: THYSqlProc;
    P_Items_Procediments: THYSqlProc;
    P_Plantilles_Diagnostics: THYSqlProc;
    Informes_Llistes: TDic;
    T_Llistes_BI: THYSqlTrigger;
    P_Items_Recomanacions: THYSqlProc;
    P_Plantilles_FraseExtra: THYSqlProc;
    P_Items_Procs: THYSqlProc;
    T_InfLin_BI: THYSqlTrigger;
    P_Items_Anal: THYSqlProc;
    P_Inf_GeneraAlta: THYSqlProc;
    P_Items_ComentariIQ: THYSqlProc;
    P_Inf_GeneraTrasllat: THYSqlProc;
    P_Items_ECB: THYSqlProc;
    P_Items_Diags: THYSqlProc;
    P_Items_Diagnostics: THYSqlProc;
    P_Inf_GeneraAltesAntigues: THYSqlProc;
    P_Items_AnotacioAlta: THYSqlProc;
    T_Informes_AU: THYSqlTrigger;
    P_Plantiilles_EscalesATD: THYSqlProc;
    T_Tags_BI: THYSqlTrigger;
    P_Anotacio1BCN: THYSqlProc;
    P_AnotacioAltaBCN: THYSqlProc;
    P_1VisitaBCN: THYSqlProc;
    P_EvolsBCN: THYSqlProc;
    P_Items_EscalesBCN: THYSqlProc;
    P_EvolucioBCN: THYSqlProc;
    P_Inf_Genera: THYSqlProc;
    P_Escales: THYSqlProc;
    P_Items_Escales: THYSqlProc;
    P_Escales_Comprova: THYSqlProc;
    P_Inf_PassaAUrgent: THYSqlProc;
    P_Inf_Desbloqueja: THYSqlProc;
    HC3_Auto_Eliminada: THYSqlProc;
    ListPublicacions: THYSqlProc;
    P_Items_Altres_Diags: THYSqlProc;
    P_Items_AltresProves: THYSqlProc;
    P_Items_Imatges: THYSqlProc;
    P_Items_Complicacions: THYSqlProc;
    T_InfHCCC_AU: THYSqlTrigger;
    P_Inf_GeneraCE: THYSqlProc;
    CI_Procediments: TDic;
    CI_Especialitat: TDic;
    CI_FullInformatiu: TDic;
    T_CI_Procs_BI: THYSqlTrigger;
    P_Inf_GeneraExtern: THYSqlProc;
    P_Items_Llista: THYSqlProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDataInformes: TwDataInformes;

implementation

uses Data, DataBasics, DataConfig;

{$R *.dfm}

end.
