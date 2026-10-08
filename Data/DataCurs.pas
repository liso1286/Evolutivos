unit DataCurs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Diccionari, Data, Db, DBTables, HYDialogConsulta;

type
  TwDataCurs = class(TDataModule)
    Historia: TDic;
    Conta: THYSqlTrigger;
    Usra: TDic;
    u_conta: THYSqlTrigger;
    AnulaAlta: TDic;
    CodiRevi: TDic;
    InfRevi: TDic;
    InfReviLin: TDic;
    InfNivell: THYSqlProc;
    ReviInforme: THYSqlProc;
    HClinica: TDic;
    HClinicaCodis: TDic;
    HClinicaMov: TDic;
    Diagnostics: TDic;
    Lesions: TDic;
    InfAlta: TDic;
    AnotaPsicologia: TDic;
    CancelaValida: THYSqlProc;
    HistoriaValida: TDic;
    PteValida: THYSqlProc;
    vValida: TDic;
    InsValida: THYSqlTrigger;
    ValidaTot: THYSqlProc;
    AnotaNeuropsico_OBSOLET: TDic;
    Informe2: THYSqlProc;
    u_Informe2: THYSqlProc;
    poliocap: TDic;
    polioitems: TDic;
    poliolin: TDic;
    reingressos: THYSqlProc;
    P_InitProces: THYSqlProc;
    ActivitatNeuro: TDic;
    ActivitatVELLA: THYSqlProc;
    AnotaRehab: TDic;
    TRC: TDic;
    Logopedia: TDic;
    Deficits: TDic;
    ValidaPacient: THYSqlProc;
    UroAntecedents: TDic;
    UroValoracions: TDic;
    Procediments: TDic;
    Diags_Ordre: THYSqlTrigger;
    AnotaGine: TDic;
    RCP_comentaris: TDic;
    LegalInf: TDic;
    ItemsCodis: TDic;
    ItemsDades: TDic;
    ItemsTipus: TDic;
    LesionsSucc: TDic;
    HandOver: TDic;
    ActivitatPSI_antic: THYSqlProc;
    SessionsPeriode: TDic;
    Act_: THYSqlProc;
    AnotaEASE: TDic;
    CountActivitat: THYSqlProc;
    ActivitatLogo: THYSqlProc;
    ActivitatPsico: THYSqlProc;
    ActivitatNeu: THYSqlProc;
    ActivitatMusico: THYSqlProc;
    Diagnostics_CIM10: TDic;
    Procediments_CIM10: TDic;
    Activitat: THYSqlProc;
    Musicoterapia: TDic;
    ActivitatMetge: THYSqlProc;
    Act_Metge: THYSqlProc;
    AnotaTrucada: TDic;
    AnotaHC3: TDic;
    Tract_Codificacio: TDic;
    LogCodificacio: TDic;
    Semafors: TDic;
    Semafors_Estats: TDic;
    P_Semafors_Tipus: THYSqlProc;
    P_Semafors_NHC: THYSqlProc;
    REC_Edats: TDic;
    P_REC_Parcials: THYSqlProc;
    P_REC_Total: THYSqlProc;
    REC_Scores: TDic;
    P_Semafors_Estat: THYSqlProc;
    REC_Lesions: TDic;
    ResetREC: THYSqlProc;
    ResetLET: THYSqlProc;
    Critics_OBSOLET: TDic;
    DadesCovid: THYSqlProc;
    CensCovid: THYSqlProc;
    Historia_AU: THYSqlTrigger;
    PteInfAltaN: THYSqlView;
    P_Semafors_Critics: THYSqlProc;
    T_Semafors_AI: THYSqlTrigger;
    T_EscLCau_AI: THYSqlTrigger;
    T_EscCCau_AU: THYSqlTrigger;
    NetejaREC: THYSqlProc;
    PteInfAlta: THYSqlView;
    T_RegInfer_AI_Semafors: THYSqlTrigger;
    T_RegInfer_AU_Semafors: THYSqlTrigger;
    P_Semafors_InicialitzaISO: THYSqlProc;
    Diags_BI: THYSqlTrigger;
    HandOver_BI: THYSqlTrigger;
    Passaport_Items: TDic;
    Passaport_BI: THYSqlTrigger;
    Passaport: TDic;
    ResumPassaport: THYSqlProc;
    P_REC_Alt: THYSqlProc;
    P_Semafors_RECActius: THYSqlProc;
  private
  public
  end;

var
  wDataCurs: TwDataCurs;

implementation

uses DataBasics, DataInterCon, DataECBdics, DataCodis, DataEscales,
  DataInfermeria;

{$R *.DFM}

{ TwDataCurs }

end.




