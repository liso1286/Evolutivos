unit DataBasics;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Diccionari, HYDialogConsulta, Db, DBTables;

type
  TwDataBasics = class(TDataModule)
    Login: THYSqlProc;
    Grups: TDic;
    Especial: TDic;
    Titulacions: TDic;
    Prestacion: TDic;  
    Filiacio: TDic;
    FiliFac: THYSqlProc;
    Parent: TDic;
    Areas: TDic;
    Tractaments: TDic;
    TractList: THYSqlView;
    TractActius: THYSqlView;
    MetgesActius: THYSqlView;
    vMetges: TDic;
    AssignaNumero: THYSqlProc;
    PrestaComp: TDic;
    Ins: THYSqlTrigger;
    Update: THYSqlTrigger;
    Exitus: TDic;
    AssignNumUSRA: THYSqlProc;
    Direccion: THYSqlProc;
    Filiacio_Resum: TDic;
    Tract_Resum: TDic;
    VegadaBI: THYSqlTrigger;
    VegadaBU: THYSqlTrigger;
    OmpleVegada: THYSqlProc;
    AreasPresta: TDic;
    VEscalesAltes: THYSqlProc;
    EscalesTRS1: THYSqlProc;
    EscalesTRS2: THYSqlProc;
    Telefons: TDic;
    ACTU_borra: THYSqlProc;
    Intercon_Especialitat: THYSqlProc;
    P_Metges: THYSqlProc;
    Exitusesp: TDic;
    ANY2000: THYSqlProc;
    UltimContacte: THYSqlProc;
    TSI: THYSqlProc;
    PReferencia: TDic;
    NHC_SALTA: THYSqlProc;
    TractEASE: TDic;
    FinalitzaProces: THYSqlProc;
    ualta: THYSqlTrigger;
    Embaras: TDic;
    Caduca_OM_Eliminat: THYSqlTrigger;
    RevisaAltes: THYSqlProc;              
    Codifica_2onSemestre2008: THYSqlProc;
    Bloquejos: TDic;
    LogFili: TDic;
    Entrada: THYSqlProc;
    MetgeExtra: TDic;
    Metges: TDic;
    Gracia: THYSqlProc;
    DCA: TDic;
    LogUM: TDic;
    LogCanvisLlit: TDic;
    GrupsLletres: TDic;
    LletresDePas: TDic;
    LogClaus: TDic;
    FaltaCE: THYSqlProc;
    DCA_Pendent: TDic;
    DcaUPMAU: THYSqlTrigger;
    DcaUPMAI: THYSqlTrigger;
    MetgesVirtual: TDic;
    Filiacio_AU: THYSqlTrigger;
    Filiacio_BU: THYSqlTrigger;
    Filiacio_BeforeI: THYSqlTrigger;
    TractCMB: TDic;
    Alergies: TDic;
    PesMig: THYSqlProc;
    P_Alergies_Comprova: THYSqlProc;
    ControlNPT: TDic;
    ContinuaNPT: TDic;
    ControlNPT_Init: THYSqlProc;
    AlergiesAlarma: TDic;
    MetgesSIIG: THYSqlView;
    AreaGrupEsp: TDic;
    Fili_DadesFac: TDic;
    LogAltes: TDic;
    Fili_TDI: TDic;
    Inicia: THYSqlProc;
    LogCF: TDic;
    LogCF_List: THYSqlProc;
    PrestaSessions: TDic;
    NensWISCV: TDic;
    TractCMB_CE: TDic;
    IngresAndorra: TDic;
    IngresAndorra_Avis: THYSqlProc;
    LogDuplicats: TDic;
    acessosMetges: THYSqlProc;
    ControlAmbulatoris: THYSqlProc;
    TractActius_Presta: THYSqlView;
    DiesAPT: THYSqlProc;
    Tract_AD: THYSqlTrigger;
    CEincompleta: THYSqlProc;
    LogHorariRehab: TDic;
    TractActius_SenseL: THYSqlView;
    Filiacio_BeforeI_OLD: THYSqlTrigger;
    E_NomPle: THYSqlException;
    AvisAltesSms: THYSqlProc;
    Anula_BU: THYSqlTrigger;
    EspecialProf: TDic;
    InsIntercon: THYSqlTrigger;
    MaxEstadesUnespa: THYSqlProc;
    AvisCaducaPermis: THYSqlProc;
    GrupsProf: TDic;
    RevisaEscalesAlta: THYSqlProc;
    T_Metges_BI: THYSqlTrigger;
    EscalesAlta: THYSqlProc;
    accessosFiTo: THYSqlProc;
    OrigenCMBDAEA: THYSqlProc;
    Tract_PrestaRecentsA: THYSqlView;
    PrestaAI: THYSqlTrigger;
    T_LogCF: THYSqlTrigger;
    InsProces: THYSqlTrigger;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDataBasics: TwDataBasics;

implementation

uses Data, DataInterCon, DataCodis, DataConfig, DataBarbara, DataGimnas,
  DataProductes, DataPerfilsNR, DataCurs;

{$R *.DFM}

end.



