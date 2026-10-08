unit DataInfermeria;

interface

uses
  SysUtils, Classes, Diccionari, DB, DBTables, HYSql;

type
  TwDataInfermeria = class(TDataModule)
    InferDades: TDic;
    InferItems: TDic;
    LlistaItems: THYSqlProc;
    LlistaValors: THYSqlProc;
    InferTasques: TDic;
    InferDades_BI: THYSqlTrigger;
    InferDades_BU: THYSqlTrigger;
    DocsInfer: TDic;
    UppCap: TDic;
    UppLin: TDic;
    UppRisc: TDic;
    InferDadesVirtual: TDic;
    P_CaigudesPt: THYSqlProc;
    P_IMCPt: THYSqlProc;
    AlarmaUPP: THYSqlProc;
    P_IMCbaix: THYSqlProc;
    IMCvistos: TDic;
    AillaEnCurs: THYSqlProc;
    RegistresInfer: TDic;
    InfAltaUPP: THYSqlProc;
    Inferdades_AI: THYSqlTrigger;
    IMCRespondre: TDic;
    Inferdades_AD: THYSqlTrigger;
    IMC_Percentils: TDic;
    IMC_Nens: TDic;
    IMC_Nenes: TDic;
    DrenaCap: TDic;
    DrenaLin: TDic;
    CatVPQ: TDic;
    P_Diuresi: THYSqlProc;
    P_Dolor: THYSqlProc;
    InferInformes: TDic;
    T_EliminaDades: THYSqlTrigger;
    P_BolcaEVA: THYSqlProc;
    P_BolcaEmina: THYSqlProc;
    P_BolcaCrichton: THYSqlProc;
    Ailla_Germens: TDic;
    PlanolsUH: THYSqlProc;
    Inferdades_AU: THYSqlTrigger;
    ValorRecent: THYSqlProc;
    CodiAparell: TDic;
    RegInfer_Finalitza: THYSqlProc;
    RegInfer_Reactiva: THYSqlProc;
    NoEvacuacio: THYSqlProc;
    RegInferAvis: TDic;
    P_GeneraAvisContencionsInf: THYSqlProc;
    P_GeneraAvisContencionsMet: THYSqlProc;
    RegInfer_AU: THYSqlTrigger;
    automatic: THYSqlProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDataInfermeria: TwDataInfermeria;

implementation

uses Data;

{$R *.dfm}

end.
