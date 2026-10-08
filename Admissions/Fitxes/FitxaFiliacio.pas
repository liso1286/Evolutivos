unit FitxaFiliacio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, HYSql, ExtCtrls, ComCtrls, HYPanels, StdCtrls, Buttons,
  HYEdit, DBCtrls, HYLabel, Grids, DBGrids, HYGrids, CheckLst,
  HYDialogConsulta, Hy_Misc, ActnList, Halcn6DB, Main, Variants,
  JvExExtCtrls, JvDBImage, Menus, JvImage, Clipbrd, IBCustomDataSet,
  IBQuery, QRCtrls, QuickRpt, dbcgrids, kbmMemTable, InputBoxBVG, HYCalendari,
  JvExtComponent, JvDBRadioPanel, Mask, Data;

type
  TwFitxaFiliacio = class(TForm)
    PC: TPageControl;
    tsPersonals: TTabSheet;
    tsPrestacio: TTabSheet;
    tsFacturacio: TTabSheet;
    HYBarra1: THYBarra;
    tFiliacio: ThySqlTable;
    tTractaments: THYSqlTable;
    dsFiliacio: TDataSource;
    dsTractaments: TDataSource;
    tParent: THYSqlTable;
    dsParent: TDataSource;
    Panel1: TPanel;
    Ed_tFiliacio_NUM_HIST: THYEdit;
    Ed_tFiliacio_APELLIDO1: THYEdit;
    Ed_tFiliacio_APELLIDO2: THYEdit;
    Nom: THYEdit;
    Ed_tFiliacio_DNI: THYEdit;
    Label2: TLabel;
    HYArea4: THYArea;
    tParent_NUMPAR: TIntegerField;
    tParent_NUM_HIST: TIntegerField;
    tParent_NOM: TStringField;
    tParent_COGNOM1: TStringField;
    tParent_COGNOM2: TStringField;
    tParent_ADRECA: TStringField;
    tParent_CODI: TStringField;
    tParent_POBLACIO: TStringField;
    tParent_PROVINCIA: TStringField;
    tParent_TELEFON: TStringField;
    tParent_DATANAC: TDateTimeField;
    HYArea5: THYArea;
    Panel3: TPanel;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    bFullFiliacio: TSpeedButton;
    SpeedButton3: TSpeedButton;
    lPrestacio: THYTextEdit;
    Panel5: TPanel;
    pDataIngres: TPanel;
    Data_Ingres: THYEdit;
    pHora: TPanel;
    Ed_tTractaments_Hora: THYEdit;
    Panel2: TPanel;
    HYEdit1: THYEdit;
    pLlitPlanta: TPanel;
    pMetge: TPanel;
    Eti_tTractaments_Coordinador_Nom: THYLabel;
    EditCoordinador: THYEdit;
    pSolicitud: TPanel;
    Eti_tTractaments_Solicitud_N_Codi: THYLabel;
    Solicitud: THYEdit;
    pCaracter: TPanel;
    Eti_tTractaments_Caracter_N_Codi: THYLabel;
    EditCaracter: THYEdit;
    pHospital: TPanel;
    Eti_tTractaments_HtalOrigen_N_Hospital: THYLabel;
    Eti_tTractaments_HtalOrigen_Poblacio: THYLabel;
    EditHospital: THYEdit;
    pProcedencia: TPanel;
    Eti_tTractaments_Origen_N_Codi: THYLabel;
    EditOrigen: THYEdit;
    cMetgePresta: THYConsulta;
    cParella: THYConsulta;
    mgUSRA: THyMoveGroupControl;
    PanelUSRA: TPanel;
    HYBarra2: THYBarra;
    HYArea2: THYArea;
    Ed_tParent_POBLACIO: THYEdit;
    Ed_tParent_PROVINCIA: THYEdit;
    Ed_tParent_NOM: THYEdit;
    Ed_tParent_COGNOM1: THYEdit;
    Ed_tParent_COGNOM2: THYEdit;
    Ed_tParent_ADRECA: THYEdit;
    Ed_tParent_CODI: THYEdit;
    Ed_tParent_TELEFON: THYEdit;
    Ed_tParent_DATANAC: THYEdit;
    Ed_tParent_NUMPAR: THYEdit;
    bCerrarUSRA: TSpeedButton;
    ActionList1: TActionList;
    USRA: TAction;
    pcPrestaciones: TPageControl;
    tsPrestacionsPendents: TTabSheet;
    tsTractaments: TTabSheet;
    PanelPrestacions: TPanel;
    HYPC: HYPanelConsulta;
    Panel9: TPanel;
    bBorrar: TSpeedButton;
    HistTract: HYPanelConsulta;
    pPrestacio: TPanel;
    HYLabel2: THYLabel;
    HYEdit2: THYEdit;
    Metge: THYConsulta;
    Prestacio: THYConsulta;
    lMORT: TLabel;
    pFacturacio: TGroupBox;
    pCompromis: TPanel;
    tsPreAlta: TTabSheet;
    tsAlta: TTabSheet;
    AreaPrealta: THYArea;
    HYArea7: THYArea;
    consultaLlits: THYConsulta;
    PrestaProgramada: THYConsulta;
    MotiuPrestaProgramada: THYConsulta;
    qEsperaProg: THYSqlQuery;
    qEsperaProgC_PRESTACIO: TStringField;
    qEsperaProgN_PRESTACIO: TStringField;
    qEsperaProgC_MOTIU: TSmallintField;
    qEsperaProgN_CODI: TStringField;
    qEsperaProgC_FRECUENCIA: TStringField;
    qEsperaProgCOMENTARIMETGE: TStringField;
    qEsperaProgCOMENTARIINFERMERA: TStringField;
    tTractaments_C_Tractament: TIntegerField;
    tTractaments_C_Historia: TIntegerField;
    tTractaments_C_Prestacio: TStringField;
    tTractaments_C_PrestacioOrigen: TStringField;
    tTractaments_Data_Ingres: TDateTimeField;
    tTractaments_Hora: TStringField;
    tTractaments_C_Coordinador: TStringField;
    tTractaments_Data_PreAlta: TDateTimeField;
    tTractaments_C_MetgePreAlta: TStringField;
    tTractaments_Data_Alta: TDateTimeField;
    tTractaments_C_MetgeAlta: TStringField;
    tTractaments_Durada: TFloatField;
    tTractaments_Comentari: TMemoField;
    tTractaments_C_Motiu: TSmallintField;
    tTractaments_C_Origen: TSmallintField;
    tTractaments_C_HospitalOrigen: TSmallintField;
    tTractaments_C_Caracter: TSmallintField;
    tTractaments_C_Solicitud: TSmallintField;
    tTractaments_C_LLit: TStringField;
    tTractaments_C_Planta: TStringField;
    tTractaments_C_Destinacio: TSmallintField;
    tTractaments_C_HospitalDesti: TSmallintField;
    tTractaments_InformeAlta: TMemoField;
    tTractaments_EstatInformeAlta: TIntegerField;
    tTractaments_ComentariMetge: TStringField;
    tTractaments_ComentariInfermeria: TStringField;
    tTractaments_Entrada: TIntegerField;
    tTractaments_Sortida: TIntegerField;
    tTractaments_C_Frequencia: TStringField;
    tTractaments_DiaFixe: TDateTimeField;
    tTractaments_C_FisioTerapeuta: TStringField;
    tTractaments_C_Terapeuta: TStringField;
    tTractaments_C_Cas: TSmallintField;
    tTractaments_Complicacions: TStringField;
    tTractaments_C_ProcesOrigen: TSmallintField;
    tTractaments_Frankel: TStringField;
    tTractaments_C_Codi_E: TStringField;
    tTractaments_N_Codi_E: TStringField;
    tTractaments_C_DiagnosticNeurologicIngres: TStringField;
    tTractaments_N_DiagnosticNeurologicIngres: TStringField;
    tTractaments_C_DiagnosticIngres: TStringField;
    tTractaments_N_DiagnosticIngres: TStringField;
    tTractaments_C_DiagnosticNeurologicAlta: TStringField;
    tTractaments_N_DiagnosticNeurologicAlta: TStringField;
    tTractaments_C_DiagnosticAlta: TStringField;
    tTractaments_N_DiagnosticAlta: TStringField;
    tTractaments_Comodin: TStringField;
    tTractaments_Vegada: TSmallintField;
    tTractaments_C_CentreFac: TStringField;
    tTractaments_C_Client: TStringField;
    tTractaments_C_Delegacio: TStringField;
    tTractaments_CaducaPermis: TDateTimeField;
    tTractaments_PercentatgePacient: TFloatField;
    tTractaments_Referencia: TStringField;
    tTractaments_C_Infermeria: TStringField;
    tTractaments_C_Auxiliar: TStringField;
    tTractaments_C_Psicoleg: TStringField;
    tTractaments_C_TrevallSocial: TStringField;
    tTractaments_EsProvisional: TSmallintField;
    tTractaments_C_MetgePassi: TStringField;
    tTractaments_Passi: TStringField;
    tTractaments_Ambulancia: TStringField;
    tTractaments_C_EstatFac: TSmallintField;
    tTractaments_C_EsperaProgramada: TIntegerField;
    tTractaments_C_Stock: TSmallintField;
    tTractaments_confirmstock: TStringField;
    Panel4: TPanel;
    PanelDadesDelegacio: TPanel;
    Panel12: TPanel;
    Eti_tTractaments_Centre_N_CentreFac: THYLabel;
    Eti_tTractaments_Client_N_Client: THYLabel;
    Eti_tTractaments_Delegacio_N_Delegacio: THYLabel;
    Centre: THYEdit;
    Client: THYEdit;
    Delegacio: THYEdit;
    Eti_tTractaments_Client_NIF: THYLabel;
    Eti_tTractaments_Delegacio_Poblacio: THYLabel;
    Eti_tTractaments_Delegacio_Responsable: THYLabel;
    Eti_tTractaments_Delegacio_Telefono: THYLabel;
    Eti_tTractaments_Delegacio_CPostal: THYLabel;
    Eti_tTractaments_Delegacio_Provincia: THYLabel;
    Eti_tTractaments_Delegacio_Pais: THYLabel;
    HYLabel1: THYLabel;
    Panel11: TPanel;
    pDataAlta: TPanel;
    Alta: THYEdit;
    pMetgeAlta: TPanel;
    MetgeAlta: THYEdit;
    Eti_tTractaments_MetgeAlta_Metge: THYLabel;
    pConfirmacioStock: TPanel;
    Confirmacio: THYCheck;
    pDestinacio: TPanel;
    Eti_tTractaments_Destinacio_N_Codi: THYLabel;
    N_Hospital: THYLabel;
    Destinacio: THYEdit;
    Hospital: THYEdit;
    pProgramacioPrestacio: TPanel;
    pProgramacio: TPanel;
    C_PrestaProgramada: THYTextEdit;
    N_PrestaProgramada: THYTextEdit;
    C_MotiuProgramacio: THYTextEdit;
    N_MotiuProgramacio: THYTextEdit;
    FrequenciaProgramacio: THYTextEdit;
    ComentariMetge: THYTextEdit;
    ComentariInfermeria: THYTextEdit;
    pDurada: TPanel;
    HYEdit3: THYEdit;
    FrequenciaProgramada: THYConsulta;
    N_Frequencia: THYTextEdit;
    pFrequencia: TPanel;
    HYLabel3: THYLabel;
    EditFrequencia: THYEdit;
    pNotaCarrec: TPanel;
    bNotaCarrec: TSpeedButton;
    bCalculaLetraNIF: TSpeedButton;
    tTractamentsDelegacio_Carrer: TStringField;
    CaracterProgramacio: THYTextEdit;
    N_CaracterProgramacio: THYTextEdit;
    cnsCaracterProgramacio: THYConsulta;
    panel: TPanel;
    PDataPreAlta: TPanel;
    PreAlta: THYEdit;
    pMetgePreAlta: TPanel;
    Eti_tTractaments_MetgePreAlta_Metge: THYLabel;
    Ed_tTractaments_C_MetgePreAlta: THYEdit;
    pMotiu: TPanel;
    Eti_tTractaments_Motiu_N_Codi: THYLabel;
    HYEdit4: THYEdit;
    pComentariMetge: TPanel;
    Label1: TLabel;
    MemoMetge: THYMemo;
    pComentariInfermeria: TPanel;
    Label3: TLabel;
    MemoInfermeria: THYMemo;
    pAmbulancia: TPanel;
    Check_tTractaments_Ambulancia: THYCheck;
    qEsperaProgC_CARACTER: TSmallintField;
    qEsperaProgN_CARACTER: TStringField;
    qEsperaProgN_FREQUENCIA: TStringField;
    Ed_tTractaments_C_EsperaProgramada: THYEdit;
    qPapers: TQuery;
    enfocado: TCheckBox;
    qDadesFactu: TQuery;
    cPoblacions: THYConsulta;
    qFindEspera: TQuery;
    SpeedButton2: TSpeedButton;
    accAmbulatori: TAction;
    accAltaIngres: TAction;
    qParametresFactu: TQuery;
    tTractaments_C_InfermeraPassi: TStringField;
    pEstatFactu: TPanel;
    Eti_tTractaments_EstatFac_N_Codi: THYLabel;
    EditEstatFactu: THYEdit;
    pEstatsFacturacion: TPanel;
    PapersPendents: TLabel;
    Panel13: TPanel;
    pCaducaPermis: TPanel;
    Ed_tTractaments_CaducaPermis: THYEdit;
    pPerPacient: TPanel;
    Ed_tTractaments_PercentatgePacient: THYEdit;
    pReferencia: TPanel;
    Ed_tTractaments_Referencia: THYEdit;
    qEstatsFac: TQuery;
    rgEstadosFacturacion: TDBRadioGroup;
    tTractaments_NotaCarrec: TIntegerField;
    tTractaments_NovaNotaCarrec: TStringField;
    pMotiuEspera: TPanel;
    HYLabel4: THYLabel;
    EditMotiuEspera: THYEdit;
    HYEdit6: THYEdit;
    tTractaments_C_EquipAssist: TIntegerField;
    dsFotos: TDataSource;
    popFoto: TPopupMenu;
    Esborrar1: TMenuItem;
    Assignar1: TMenuItem;
    pLlit: TPanel;
    EtiLlit: THYEdit;
    pPlanta: TPanel;
    EtiPlanta: THYEdit;
    Eti_tTractaments_Planta_N_Planta: THYLabel;
    tTractaments_c_logopeda: TStringField;
    tTractaments_C_Metge_InfAlta: TStringField;
    tFotos: TIBDataSet;
    JvDBFotografia: TJvDBImage;
    qFotos2: TIBDataSet;
    cPais: THYConsulta;
    tTractaments_C_Proces: TIntegerField;
    tTractaments_Fi_Proces: TStringField;
    tTractaments_C_Codi_E2: TStringField;
    tTractaments_N_Codi_E2: TStringField;
    tTractaments_C_Codi_E3: TStringField;
    tTractaments_N_Codi_E3: TStringField;
    cDistrictes: THYConsulta;
    tTractaments_c_Residencia: TStringField;
    tTractaments_Metge_Proces: TStringField;
    tTractaments_Data_Sinistre: TDateTimeField;
    tTractaments_Matricula_Vehicle: TStringField;
    pUnespa: TPanel;
    Label6: TLabel;
    Ed_tTractaments_Data_Sinistre: THYEdit;
    Ed_tTractaments_Matricula_Vehicle: THYEdit;
    qEsUnespa: TQuery;
    qEsUnespaES_UNESPA: TStringField;
    pACA: TPanel;
    SIFCO: THYEdit;
    tTractaments_SIFCO: TStringField;
    tTractaments_FISS: TStringField;
    pCI: TPanel;
    HYEdit7: THYEdit;
    tTractaments_G_DiagnosticIngres: TStringField;
    tTractaments_G_DiagnosticAlta: TStringField;
    tTractaments_C_Codi_E4: TStringField;
    tTractaments_N_Codi_E4: TStringField;
    tTractaments_C_Codi_E5: TStringField;
    tTractaments_N_Codi_E5: TStringField;
    Panel7: TPanel;
    qrDieta: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    qrlPacient: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    qDieta: TQuery;
    qDietaPACIENT: TStringField;
    qDietaC_DIETA: TSmallintField;
    qDietaN_CODI: TStringField;
    qDietaOBS_DIETA: TStringField;
    qDietaC_LLIT: TStringField;
    qDietaC_PLANTA: TStringField;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    qDietaNUM_HIST: TIntegerField;
    tTractaments_N_RESIDENCIA: TStringField;
    tTractaments_ACTUA_PADES: TStringField;
    tTractaments_hccc_informe_alta: TStringField;
    tTractaments_G_CODI_E: TStringField;
    tTractaments_G_CODI_E2: TStringField;
    tTractaments_G_CODI_E3: TStringField;
    tTractaments_G_CODI_E4: TStringField;
    tTractaments_G_CODI_E5: TStringField;
    tFiliacio_NUM_HIST: TIntegerField;
    tFiliacio_APELLIDO1: TStringField;
    tFiliacio_APELLIDO2: TStringField;
    tFiliacio_NOMBRE: TStringField;
    tFiliacio_NomComplet: TStringField;
    tFiliacio_DNI: TStringField;
    tFiliacio_NOMVIA: TStringField;
    tFiliacio_ADRESA: TStringField;
    tFiliacio_TELEFONO: TStringField;
    tFiliacio_email: TStringField;
    tFiliacio_TIPUSVIA: TStringField;
    tFiliacio_CODIGO: TStringField;
    tFiliacio_NUMERO: TStringField;
    tFiliacio_BLOC: TStringField;
    tFiliacio_ESCALA: TStringField;
    tFiliacio_PIS: TStringField;
    tFiliacio_PORTA: TStringField;
    tFiliacio_POBLACIO: TStringField;
    tFiliacio_PROVINCIA: TStringField;
    tFiliacio_RESIDENCIA: TStringField;
    tFiliacio_PAIS: TStringField;
    tFiliacio_SEXO: TStringField;
    tFiliacio_FECHA_NAC: TDateTimeField;
    tFiliacio_LUGAR_NAC: TStringField;
    tFiliacio_ESTADO_CIV: TStringField;
    tFiliacio_Edat: TIntegerField;
    tFiliacio_SOE: TStringField;
    tFiliacio_TSI: TStringField;
    tFiliacio_TITULAR: TStringField;
    tFiliacio_PENSIONIST: TStringField;
    tFiliacio_IDIOMA: TSmallintField;
    tFiliacio_TELEFO1_FAM: TStringField;
    tFiliacio_DESCRIPCIO1: TStringField;
    tFiliacio_TELEFO2_FAM: TStringField;
    tFiliacio_DESCRIPCIO2: TStringField;
    tFiliacio_AMIC: TFloatField;
    tFiliacio_MORT: TDateTimeField;
    tFiliacio_EsViu: TStringField;
    tFiliacio_USRA: TIntegerField;
    tFiliacio_UNITAT: TSmallintField;
    tFiliacio_Bloqueig: TStringField;
    tFiliacio_Objectius: TIntegerField;
    tFiliacio_Data_Contacte: TDateTimeField;
    tFiliacio_Data_UltimContacte: TDateTimeField;
    tFiliacio_Ultima1: TDateTimeField;
    tFiliacio_C_Dieta: TSmallintField;
    tFiliacio_Obs_Dieta: TStringField;
    tFiliacio_ConsentimentInf: TStringField;
    tFiliacio_c_Unitatmedica: TSmallintField;
    tFiliacio_UM_antiga: TSmallintField;
    tFiliacio_C_HOSPITAL: TSmallintField;
    tFiliacio_Consentiment: TStringField;
    tFiliacio_T_DOC: TStringField;
    Ed_tFiliacio_T_DOC: THYEdit;
    Eti_tFiliacio_TipusDoc_N_Codi: THYLabel;
    Label7: TLabel;
    qFili: THYSqlQuery;
    Llistat: TkbmMemTable;
    LlistatFoto: TBlobField;
    Llistatc_historia: TIntegerField;
    LlistatAPELLIDO1: TStringField;
    LlistatAPELLIDO2: TStringField;
    LlistatNOMBRE: TStringField;
    LlistatEdat: TIntegerField;
    LlistatSexe: TStringField;
    LlistatDNI: TStringField;
    dsLlistat: TDataSource;
    accHDia: TAction;
    sbNCobertura: TSpeedButton;
    Dades: TkbmMemTable;
    DadesId: TStringField;
    DadesDFC_ACE: TStringField;
    DadesDFC_ALO: TStringField;
    DadesDFC_ANT: TStringField;
    DadesDFC_AOFT: TStringField;
    DadesDFC_CABS: TStringField;
    DadesDFC_CAD: TStringField;
    DadesDFC_CAP: TStringField;
    DadesDFC_CAP_O: TStringField;
    DadesDFC_CAUP: TStringField;
    DadesDFC_CBL: TStringField;
    DadesDFC_CCC_A: TStringField;
    DadesDFC_CCC_CI: TStringField;
    DadesDFC_CCC_I: TStringField;
    DadesDFC_CCC_L: TStringField;
    DadesDFC_CCC_T: TStringField;
    DadesDFC_CCP: TStringField;
    DadesDFC_CDE_1: TStringField;
    DadesDFC_CDE_2: TStringField;
    DadesDFC_CDINE: TStringField;
    DadesDFC_CDP: TStringField;
    DadesDFC_CEC: TStringField;
    DadesDFC_CES: TStringField;
    DadesDFC_CFO_PC: TStringField;
    DadesDFC_CFO_SC: TStringField;
    DadesDFC_CGGC: TStringField;
    DadesDFC_CIDI: TStringField;
    DadesDFC_CIP: TStringField;
    DadesDFC_CIP_V: TStringField;
    DadesDFC_CLO: TStringField;
    DadesDFC_CMCT: TStringField;
    DadesDFC_CMO: TStringField;
    DadesDFC_CMRTS: TStringField;
    DadesDFC_CNSQ: TStringField;
    DadesDFC_COR: TStringField;
    DadesDFC_COR_1: TStringField;
    DadesDFC_COR_2: TStringField;
    DadesDFC_COT: TStringField;
    DadesDFC_CPA: TStringField;
    DadesDFC_CPASS: TStringField;
    DadesDFC_CPE: TStringField;
    DadesDFC_CPIS: TStringField;
    DadesDFC_CPO: TStringField;
    DadesDFC_CPOR: TStringField;
    DadesDFC_CRAA: TStringField;
    DadesDFC_CSA: TStringField;
    DadesDFC_CSINE: TStringField;
    DadesDFC_CSTSI: TStringField;
    DadesDFC_CTO: TStringField;
    DadesDFC_CTP: TStringField;
    DadesDFC_CTT: TStringField;
    DadesDFC_CUG: TStringField;
    DadesDFC_CUP: TStringField;
    DadesDFC_CUP_S: TStringField;
    DadesDFC_CUP_T: TStringField;
    DadesDFC_CUS_C: TStringField;
    DadesDFC_DAL: TStringField;
    DadesDFC_DAL_A: TStringField;
    DadesDFC_DCF: TStringField;
    DadesDFC_DCF_A: TStringField;
    DadesDFC_DCP: TStringField;
    DadesDFC_DDA: TStringField;
    DadesDFC_DDA_A: TStringField;
    DadesDFC_DDID: TStringField;
    DadesDFC_DDID_A: TStringField;
    DadesDFC_DDL: TStringField;
    DadesDFC_DDL_A: TStringField;
    DadesDFC_DDTSI: TStringField;
    DadesDFC_DDTSI_: TStringField;
    DadesDFC_DFDP: TStringField;
    DadesDFC_DFDP_A: TStringField;
    DadesDFC_DIDP: TStringField;
    DadesDFC_DIDP_A: TStringField;
    DadesDFC_DIP: TStringField;
    DadesDFC_DNA: TStringField;
    DadesDFC_DNA_A: TStringField;
    DadesDFC_ERR: TStringField;
    DadesDFC_IBIS: TStringField;
    DadesDFC_ICIPM: TStringField;
    DadesDFC_IDA: TStringField;
    DadesDFC_IDI: TStringField;
    DadesDFC_IDL: TStringField;
    DadesDFC_IDM: TStringField;
    DadesDFC_IDT: TStringField;
    DadesDFC_IIEC: TStringField;
    DadesDFC_IIT: TStringField;
    DadesDFC_ILTU: TStringField;
    DadesDFC_IPAD: TStringField;
    DadesDFC_ITRE: TStringField;
    DadesDFC_LSE: TStringField;
    DadesDFC_MEC: TStringField;
    DadesDFC_NAAS: TStringField;
    DadesDFC_NART_S: TStringField;
    DadesDFC_NCP: TStringField;
    DadesDFC_NDID: TStringField;
    DadesDFC_NFI: TStringField;
    DadesDFC_NIA: TStringField;
    DadesDFC_NLO: TStringField;
    DadesDFC_NLT: TStringField;
    DadesDFC_NOGT: TStringField;
    DadesDFC_NPE: TStringField;
    DadesDFC_NQU: TStringField;
    DadesDFC_NRD: TStringField;
    DadesDFC_NRD_ID: TStringField;
    DadesDFC_NRD_TD: TStringField;
    DadesDFC_NRE: TStringField;
    DadesDFC_NSAPA: TStringField;
    DadesDFC_NSQ: TStringField;
    DadesDFC_NTE_1: TStringField;
    DadesDFC_NTE_2: TStringField;
    DadesDFC_NVI: TStringField;
    DadesDFC_NVIA_F: TStringField;
    DadesDFC_NVIA_I: TStringField;
    DadesDFC_PCG: TStringField;
    DadesDFC_PRO: TStringField;
    DadesDFC_RAEC: TStringField;
    DadesDFC_SCG: TStringField;
    DadesDFC_SEXE: TStringField;
    DadesDFC_TAA: TStringField;
    DadesDFC_TDI: TStringField;
    DadesDFC_TDL: TStringField;
    DadesDFC_TFX: TStringField;
    DadesDFC_TOR: TStringField;
    DadesDFC_TRE: TStringField;
    DadesDFC_TVI: TStringField;
    DadesLAS_CBL: TStringField;
    DadesLAS_CDP: TStringField;
    DadesLAS_CES: TStringField;
    DadesLAS_CLO: TStringField;
    DadesLAS_CPIS: TStringField;
    DadesLAS_CPO: TStringField;
    DadesLAS_CPOR: TStringField;
    DadesLAS_DDL: TStringField;
    DadesLAS_DDL_A: TStringField;
    DadesLAS_IBIS: TStringField;
    DadesLAS_NLO: TStringField;
    DadesLAS_NQU: TStringField;
    DadesLAS_NVI: TStringField;
    DadesLAS_NVIA_F: TStringField;
    DadesLAS_NVIA_I: TStringField;
    logRCA: TMemo;
    cCentre: THYConsulta;
    tTractaments_hccc_infalta_infer: TStringField;
    tTractaments_PM: TFloatField;
    tTractaments_PMDRG: TFloatField;
    cProvincies: THYConsulta;
    edHoraAlta: THYEdit;
    tTractaments_Hora_Alta: TStringField;
    tTractaments_c_fisio_labo_marxa: TStringField;
    tTractaments_c_fisio_ar: TStringField;
    lbAvisFreq: TLabel;
    tFiliacio_CORRESPONDENCIA: TStringField;
    qInfSol: TQuery;
    tFiliDadesFac: ThySqlTable;
    dsFiliDadesFac: TDataSource;
    tFiliDadesFac_C_Historia: TIntegerField;
    tFiliDadesFac_C_CentreFac: TStringField;
    tFiliDadesFac_C_Client: TStringField;
    tFiliDadesFac_C_Delegacio: TStringField;
    tFiliDadesFac_data: TDateTimeField;
    tFiliDadesFac_usuari: TStringField;
    tFiliDadesFac_C0_0: TStringField;
    tFiliDadesFac_C0_1: TStringField;
    tFiliDadesFac_C0_2: TStringField;
    tFiliDadesFac_C1_0: TStringField;
    tFiliDadesFac_C1_1: TStringField;
    tFiliDadesFac_C1_2: TStringField;
    tFiliDadesFac_C1_3: TStringField;
    tFiliDadesFac_C1_4: TStringField;
    tFiliDadesFac_C1_5: TStringField;
    tFiliDadesFac_C2_0: TStringField;
    tFiliDadesFac_C2_1: TStringField;
    tFiliDadesFac_C2_2: TStringField;
    tFiliDadesFac_C2_3: TStringField;
    tFiliDadesFac_C2_4: TStringField;
    tFiliDadesFac_C2_5: TStringField;
    tFiliDadesFac_C2_6: TStringField;
    tFiliDadesFac_C2_7: TStringField;
    tFiliDadesFac_C2_8: TStringField;
    tFiliDadesFac_C2_9: TStringField;
    tFiliDadesFac_C2_10: TStringField;
    tFiliDadesFac_C2_11: TStringField;
    tFiliDadesFac_C2_12: TStringField;
    tFiliDadesFac_C2_13: TFloatField;
    tFiliDadesFac_C2_14: TIntegerField;
    tFiliDadesFac_C2_15: TStringField;
    tFiliDadesFac_C2_16: TIntegerField;
    tFiliDadesFac_C2_17: TStringField;
    tFiliacio_SNS: TStringField;
    dsTDI: TDataSource;
    tFiliTDI: THYSqlBrowse;
    tFiliTDI_C_HISTORIA: TIntegerField;
    tFiliTDI_TDI: TStringField;
    tFiliTDI_CDI: TStringField;
    tFiliTDI_C0_0: TStringField;
    tFiliTDI_C0_1: TStringField;
    tTractaments_Data_fi_contractat: TDateTimeField;
    tTractaments_Data_no_renovacio: TDateTimeField;
    pRenovaNPC: TPanel;
    tDataFiContractat: THYEdit;
    HYEdit9: THYEdit;
    bbNoRenovaNPC: TButton;
    tFiliacio_PAIS_NAIX: TStringField;
    tFiliacio_CCAA: TStringField;
    pBECA: TPanel;
    Label11: TLabel;
    HYEdit12: THYEdit;
    tTractaments_DESTI_CONT_EXT: TSmallintField;
    tTractaments_DESTI_CONT_INT: TSmallintField;
    tTractaments_BECA: TFloatField;
    tFiliacio_Nivell_cobertura: TSmallintField;
    Desti_cont_int: THYEdit;
    Desti_cont_ext: THYEdit;
    N_Desti_cont_ext: THYLabel;
    N_Desti_cont_int: THYLabel;
    tFiliacio_PAIS_DOC: TStringField;
    pPaisDoc: TPanel;
    Ed_tFiliacio_PaisDoc: THYEdit;
    Eti_tFiliacio_PaisDoc_N_Pais: THYLabel;
    cDelegacio: THYConsulta;
    tFiliacio_SMS: TStringField;
    tFiliacio_REVISTA: TStringField;
    eMotiu: TEdit;
    tTractaments_C_MUSICOTERAPEUTA: TStringField;
    tTractaments_CMBD_AEA: TStringField;
    tTractaments_REPUBLICAR_HC3: TStringField;
    tTractaments_T_HABITACIO: TSmallintField;
    EtiTHabitacio: THYEdit;
    Eti_tTractaments_TipHab_N_Codi: THYLabel;
    tTractaments_ID_GARANT: TIntegerField;
    tGarants: ThySqlTable;
    StringField38: TStringField;
    tGarants_ID_GARANT: TIntegerField;
    tGarants_COGNOM1: TStringField;
    tGarants_COGNOM2: TStringField;
    tGarants_NOM: TStringField;
    tGarants_DNI: TStringField;
    tGarants_ADRESA: TStringField;
    tGarants_TELEFONO: TStringField;
    tGarants_email: TStringField;
    tGarants_CODIGO: TStringField;
    tGarants_POBLACIO: TStringField;
    tGarants_PROVINCIA: TStringField;
    tGarants_PAIS: TStringField;
    tGarants_T_DOC: TStringField;
    dsGarants: TDataSource;
    mgcGarant: THyMoveGroupControl;
    HYArea6: THYArea;
    Ed_Garants_ID_GARANT: THYEdit;
    Ed_Garants_COGNOM1: THYEdit;
    Ed_Garants_COGNOM2: THYEdit;
    Ed_Garants_NOM: THYEdit;
    Ed_Garants_DNI: THYEdit;
    Ed_Garants_TELEFONO: THYEdit;
    Ed_Garants_email: THYEdit;
    Ed_Garants_POBLACIO: THYEdit;
    Ed_Garants_PROVINCIA: THYEdit;
    Ed_Garants_PAIS: THYEdit;
    Ed_Garants_T_DOC: THYEdit;
    Eti_Garants_Pais_N_Pais: THYLabel;
    Eti_Garants_TipusDoc_N_Codi: THYLabel;
    HYBarra4: THYBarra;
    Ed_Garants_CODIGO: THYEdit;
    tGarants_RELACIO: TStringField;
    Ed_tGarants_ADRESA: THYEdit;
    Ed_tGarants_RELACIO: THYEdit;
    tGarants_C0_0: TStringField;
    tGarants_C0_1: TStringField;
    tGarants_C0_2: TStringField;
    tGarants_C1_0: TStringField;
    tGarants_C1_1: TStringField;
    tGarants_C1_2: TStringField;
    tGarants_C1_3: TStringField;
    tGarants_C2_0: TStringField;
    tGarants_C2_1: TStringField;
    tGarants_C2_2: TStringField;
    tGarants_C2_3: TStringField;
    tGarants_C3_0: TStringField;
    tGarants_C3_1: TStringField;
    tGarants_C4_0: TStringField;
    tGarants_C4_1: TStringField;
    cPoblacionsG: THYConsulta;
    pGarant: TPanel;
    sGarant: TShape;
    Label15: TLabel;
    Eti_tTractaments_Garant_DNI: THYLabel;
    Eti_tTractaments_Garant_ADRESA: THYLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Ed_tTractaments_ID_GARANT: THYEdit;
    bModificarGarant: TButton;
    Eti_tTractaments_Garant_COGNOM1: THYLabel;
    Eti_tTractaments_Garant_COGNOM2: THYLabel;
    Eti_tTractaments_Garant_NOM: THYLabel;
    Eti_tTractaments_Garant_RELACIO: THYLabel;
    Label19: TLabel;
    Label20: TLabel;
    bNouGarant: TButton;
    pPressupost: TPanel;
    HYEdit13: THYEdit;
    tTractaments_PRESSUPOST: TStringField;
    tTractaments_T_SESSIO: TSmallintField;
    pTSessio: TPanel;
    EditTSessio: THYEdit;
    Eti_tTractaments_TSessio_N_Codi: THYLabel;
    pVolant: TPanel;
    tTractaments_ID_FACILITADOR: TIntegerField;
    Ed_tTractaments_ID_FACILITADOR: THYEdit;
    Eti_tTractaments_Facilitador_COGNOM1: THYLabel;
    Eti_tTractaments_Facilitador_COGNOM2: THYLabel;
    mgcFacilitador: THyMoveGroupControl;
    Panel21: TPanel;
    HYArea8: THYArea;
    tFacilitadors: ThySqlTable;
    tFacilitadors_NOM: TStringField;
    tFacilitadors_COGNOM1: TStringField;
    tFacilitadors_COGNOM2: TStringField;
    dsFacilitadors: TDataSource;
    Ed_tFacilitadors_COGNOM1: THYEdit;
    Ed_tFacilitadors_COGNOM2: THYEdit;
    HYBarra5: THYBarra;
    cFacilitadors: THYConsulta;
    tFacilitadors_ID_FACILITADOR: TIntegerField;
    Eti_tTractaments_Facilitador_NOM: THYLabel;
    Ed_tFacilitadors_NOM: THYEdit;
    cHtalDesti: THYConsulta;
    tTractaments_UCI: TStringField;
    pUCI: TPanel;
    Check_tTractaments_UCI: THYCheck;
    tTractaments_METGE_MUTUA: TStringField;
    tTractaments_TELF_METGE_MUTUA: TStringField;
    pSessionsCadaXSetmanes: TPanel;
    EditCadaXSetmanes: THYEdit;
    tTractaments_VersioCIM: TIntegerField;
    tTractaments_VersioCIM_G: TIntegerField;
    tTractaments_Publicacio_CMDB: TStringField;
    tTractaments_ConfiancaDPI: TFloatField;
    tTractaments_ConfiancaDPA: TFloatField;
    tTractaments_ID_DPI: TStringField;
    tTractaments_ID_DPA: TStringField;
    tTractaments_CADA_X_SETMANES: TIntegerField;
    bScanDoc: TSpeedButton;
    cEstatCivil: THYConsulta;
    tTractaments_Motiu_Dia_Prealta: TStringField;
    tTractaments_Motiu_Canvi_Prealta: TStringField;
    tTractaments_C_Terapeuta_Resp: TStringField;
    tTractaments_Obs_Secre: TStringField;
    tTractaments_Codificat_Revisat: TStringField;
    LlistatTSI: TStringField;
    LlistatSOE: TStringField;
    cCanviPresta: THYConsulta;
    bCanviPrestacio: TSpeedButton;
    sbCanviDataIngres: TSpeedButton;
    sbCanviCoordinador: TSpeedButton;
    cCanviCoord: THYConsulta;
    qDietaHORA_DINAR: TStringField;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qrlHoraCanvis: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    qDietaC_UBICACIO_DINAR: TSmallintField;
    qDietaUBICACIO: TStringField;
    tFiliacio_Autoritza_llit: TStringField;
    tFiliacio_Autoritza_enquestes: TStringField;
    EditTFrequencia: THYEdit;
    HYLabel8: THYLabel;
    tTractaments_C_FREQUENCIA_TIPUS: TSmallintField;
    tTractaments_HORA_INI_REHAB: TStringField;
    tTractaments_HORA_FIN_REHAB: TStringField;
    HYEdit16: THYEdit;
    HYEdit17: THYEdit;
    tFiliacio_Autoritza_investigacio: TStringField;
    tTractaments_DiesConsumits: TIntegerField;
    Ed_tTractaments_DiesConsumits: THYEdit;
    Eti_tTractaments_HtalOrigen_Dany_Cerebral: THYLabel;
    Label24: TLabel;
    lDiesConsumitsSolIng: TLabel;
    tFiliacioDATA_LESSIO: TDateTimeField;
    tFiliacio_C0_0: TStringField;
    tFiliacio_C0_1: TStringField;
    tFiliacio_C0_2: TStringField;
    tFiliacio_C1_0: TStringField;
    tFiliacio_C1_1: TStringField;
    tFiliacio_C1_2: TStringField;
    tFiliacio_C2_0: TStringField;
    tFiliacio_C2_1: TStringField;
    tFiliacio_C3_0: TSmallintField;
    tFiliacio_C3_1: TStringField;
    tFiliacio_C3_2: TSmallintField;
    tFiliacio_C3_3: TStringField;
    tFiliacio_C3_4: TStringField;
    tFiliacio_C4_0: TIntegerField;
    tFiliacio_C4_1: TIntegerField;
    tFiliacio_C4_2: TStringField;
    tFiliacio_C4_3: TStringField;
    tFiliacio_C4_4: TStringField;
    tFiliacio_C5_0: TSmallintField;
    tFiliacio_C5_1: TStringField;
    tFiliacio_C5_2: TSmallintField;
    tFiliacio_C5_3: TStringField;
    tFiliacio_C5_4: TStringField;
    tFiliacio_C6_0: TStringField;
    tFiliacio_C6_1: TStringField;
    tFiliacio_C6_2: TStringField;
    tFiliacio_C6_3: TStringField;
    tFiliacio_C7_0: TStringField;
    tFiliacio_C7_1: TStringField;
    tFiliacio_C7_2: TStringField;
    tFiliacio_C7_3: TStringField;
    tFiliacio_C8_0: TStringField;
    tFiliacio_C8_1: TStringField;
    tFiliacio_C9_0: TSmallintField;
    tFiliacio_C9_1: TStringField;
    tFiliacio_C9_2: TSmallintField;
    tFiliacio_C9_3: TStringField;
    tFiliacio_C9_4: TStringField;
    tFiliacio_C10_0: TSmallintField;
    tFiliacio_C10_1: TStringField;
    tFiliacio_C10_2: TSmallintField;
    tFiliacio_C10_3: TSmallintField;
    tFiliacio_C10_4: TStringField;
    tFiliacio_C10_5: TStringField;
    tFiliacio_C11_0: TSmallintField;
    tFiliacio_C11_1: TStringField;
    tFiliacio_C11_2: TSmallintField;
    tFiliacio_C11_3: TStringField;
    tFiliacio_C11_4: TStringField;
    tFiliacio_C12_0: TSmallintField;
    tFiliacio_C12_1: TStringField;
    tFiliacio_C12_2: TStringField;
    tFiliacio_C12_3: TStringField;
    tFiliacio_C12_4: TStringField;
    tFiliacio_C12_5: TStringField;
    tFiliacio_C12_6: TStringField;
    tFiliacio_C12_7: TStringField;
    tFiliacio_C13_0: TStringField;
    tFiliacio_C13_1: TStringField;
    tFiliacio_C14_0: TStringField;
    tFiliacio_C14_1: TStringField;
    tFiliacio_C14_2: TStringField;
    tFiliacio_C15_0: TStringField;
    tFiliacio_C15_1: TStringField;
    tFiliacio_C15_2: TStringField;
    tFiliacio_C15_3: TStringField;
    tFiliacio_C16_0: TSmallintField;
    tFiliacio_C16_1: TStringField;
    tFiliacio_C16_2: TSmallintField;
    tFiliacio_C16_3: TStringField;
    tFiliacio_C16_4: TStringField;
    tFiliacio_C17_0: TStringField;
    tFiliacio_C17_1: TStringField;
    tFiliacio_C17_2: TStringField;
    Label25: TLabel;
    cClient: THYConsulta;
    qValSol: TQuery;
    insValSol: TQuery;
    HYArea1: THYArea;
    HYArea3: THYArea;
    Shape1: TShape;
    Eti_tFiliacio_Unitat_N_Unitat: THYLabel;
    Eti_tFiliacio_Pais_N_Pais: THYLabel;
    Eti_tFiliacio_EstatCivil_N_Estat: THYLabel;
    bUSRA: TSpeedButton;
    Eti_tFiliacio_Idioma_N_Codi: THYLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    JVFotografia: TJvImage;
    Eti_tFiliacio_UnitatM_N_UNITATM: THYLabel;
    sbDistrictes: TSpeedButton;
    Eti_tFiliacio_UMantiga_N_Codi: THYLabel;
    Label9: TLabel;
    Eti_tFiliacio_PaisNaix_N_Pais: THYLabel;
    Label22: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Check_tFiliacio_LLIT: TJvDBRadioPanel;
    Ed_tFiliacio_NOMVIA: THYEdit;
    Ed_tFiliacio_CODIGO: THYEdit;
    Ed_tFiliacio_POBLACIO: THYEdit;
    Ed_tFiliacio_PROVINCIA: THYEdit;
    Ed_tFiliacio_RESIDENCIA: THYEdit;
    Ed_tFiliacio_PAIS: THYEdit;
    Ed_tFiliacio_AMIC: THYEdit;
    Ed_tFiliacio_UNITAT: THYEdit;
    Ed_tFiliacio_NUMERO: THYEdit;
    Ed_tFiliacio_BLOC: THYEdit;
    Ed_tFiliacio_ESCALA: THYEdit;
    Ed_tFiliacio_PIS: THYEdit;
    Ed_tFiliacio_PORTA: THYEdit;
    Ed_tFiliacio_TELEFONO: THYEdit;
    Ed_tFiliacio_TELEFO1_FAM: THYEdit;
    Ed_tFiliacio_DESCRIPCIO1: THYEdit;
    Ed_tFiliacio_TELEFO2_FAM: THYEdit;
    Ed_tFiliacio_DESCRIPCIO2: THYEdit;
    EditSexe: THYEdit;
    Ed_tFiliacio_FECHA_NAC: THYEdit;
    Ed_tFiliacio_LUGAR_NAC: THYEdit;
    Ed_tFiliacio_IDIOMA: THYEdit;
    Ed_tFiliacio_ESTADO_CIV: THYEdit;
    GroupBox2: TGroupBox;
    SpeedButton4: TSpeedButton;
    Eti_tFiliacio_CCAA_N_Codi: THYLabel;
    bCIP: TSpeedButton;
    Label12: TLabel;
    Eti_tFiliacio_cobertura_N_Codi: THYLabel;
    sbNetejarCIP: TSpeedButton;
    GroupBox1: TGroupBox;
    Ed_tFiliacio_SOE: THYEdit;
    DBRadioGroup1: TDBRadioGroup;
    cbPensionista: THYCheck;
    Ed_tFiliacio_TSI: THYEdit;
    HYEdit8: THYEdit;
    HYGrid1: THYGrid;
    Ed_tFiliacio_CCAA: THYEdit;
    HYBarra3: THYBarra;
    HYEdit5: THYEdit;
    Check_tFiliacio_Consentiment: THYCheck;
    Ed_tFiliacio_ConsentimentInf: THYEdit;
    Ed_tFiliacio_EMAIL: THYEdit;
    StaticText1: TStaticText;
    Ed_tFiliacio_c_Unitatmedica: THYEdit;
    Ed_tFiliacio_UM_ANTIGA: THYEdit;
    eAmic: TEdit;
    Ed_tFiliacio_PAIS_NAIX: THYEdit;
    mgcAvis: THyMoveGroupControl;
    Panel8: TPanel;
    Panel10: TPanel;
    bDataFoto: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Grid: TDBCtrlGrid;
    DBText2: TDBText;
    Bevel1: TBevel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    JvDBImage1: TJvDBImage;
    TopPanel: TPanel;
    lQuants: TLabel;
    bSortir: TButton;
    DBNavigator1: TDBNavigator;
    Panel20: TPanel;
    Label8: TLabel;
    sbSurt: TSpeedButton;
    Label14: TStaticText;
    JvDBRadioPanel1: TJvDBRadioPanel;
    JvDBRadioPanel2: TJvDBRadioPanel;
    JvDBRadioPanel3: TJvDBRadioPanel;
    Check_tFiliacio_ENQUESTES: TJvDBRadioPanel;
    pNovaHCE: TPanel;
    Label26: TLabel;
    lEspera: TLabel;
    eNHCNovaHCE: TEdit;
    bbCercaNovaHCE: TBitBtn;
    bbFiliaNovaHCE: TBitBtn;
    bbModiNovaHCE: TBitBtn;
    pFiliDadesfac: TPanel;
    GroupBox3: TGroupBox;
    HYLabel5: THYLabel;
    HYLabel6: THYLabel;
    HYLabel7: THYLabel;
    edFiliCentreFac: THYEdit;
    HYEdit10: THYEdit;
    HYEdit11: THYEdit;
    bbRefrescaNovaHCE: TBitBtn;
    Ed_tFiliacio_C_HOSPITAL: THYEdit;
    Eti_tFiliacio_Hospital_N_Hospital: THYLabel;
    Label27: TLabel;
    consultaPlantes: THYConsulta;
    pMetgeMutua: TPanel;
    HYEdit14: THYEdit;
    HYEdit15: THYEdit;
    qFiSol: TQuery;
    tTractaments_C_Prescriptor: TStringField;
    pPrescriptor: TPanel;
    Label28: TLabel;
    HYEdit18: THYEdit;
    HYLabel9: THYLabel;
    tTractaments_C_MEF: TStringField;
    HYEdit19: THYEdit;
    HYLabel10: THYLabel;
    tTractaments_C_TRANSPORT_SANITARI: TSmallintField;
    Label29: TLabel;
    HYLabel11: THYLabel;
    pModalitatEspera: TPanel;
    HYLabel12: THYLabel;
    EditModalitatEspera: THYEdit;
    tTractaments_C_Modalitat: TSmallintField;
    tTractaments_C0_0: TIntegerField;
    tTractaments_C0_1: TStringField;
    tTractaments_C0_2: TStringField;
    tTractaments_C0_3: TIntegerField;
    tTractaments_C0_4: TStringField;
    tTractaments_C0_5: TStringField;
    tTractaments_C0_6: TStringField;
    tTractaments_C0_7: TStringField;
    tTractaments_C0_8: TSmallintField;
    tTractaments_C0_9: TSmallintField;
    tTractaments_C0_10: TStringField;
    tTractaments_C0_11: TStringField;
    tTractaments_C0_12: TDateTimeField;
    tTractaments_C0_13: TStringField;
    tTractaments_C0_14: TStringField;
    tTractaments_C0_15: TStringField;
    tTractaments_C0_16: TStringField;
    tTractaments_C0_17: TSmallintField;
    tTractaments_C0_18: TSmallintField;
    tTractaments_C0_19: TStringField;
    tTractaments_C0_20: TStringField;
    tTractaments_C0_21: TStringField;
    tTractaments_C0_22: TStringField;
    tTractaments_C0_23: TStringField;
    tTractaments_C0_24: TSmallintField;
    tTractaments_C0_25: TStringField;
    tTractaments_C0_26: TSmallintField;
    tTractaments_C0_27: TStringField;
    tTractaments_C0_28: TStringField;
    tTractaments_C0_29: TStringField;
    tTractaments_C0_30: TIntegerField;
    tTractaments_C1_0: TStringField;
    tTractaments_C1_1: TStringField;
    tTractaments_C1_2: TStringField;
    tTractaments_C1_3: TStringField;
    tTractaments_C1_4: TSmallintField;
    tTractaments_C1_5: TStringField;
    tTractaments_C1_6: TStringField;
    tTractaments_C1_7: TSmallintField;
    tTractaments_C1_8: TStringField;
    tTractaments_C2_0: TStringField;
    tTractaments_C2_1: TStringField;
    tTractaments_C2_2: TStringField;
    tTractaments_C2_3: TStringField;
    tTractaments_C2_4: TStringField;
    tTractaments_C2_5: TStringField;
    tTractaments_C2_6: TStringField;
    tTractaments_C2_7: TIntegerField;
    tTractaments_C2_8: TStringField;
    tTractaments_C2_9: TStringField;
    tTractaments_C2_10: TSmallintField;
    tTractaments_C2_11: TStringField;
    tTractaments_C2_12: TStringField;
    tTractaments_C2_13: TStringField;
    tTractaments_C2_14: TStringField;
    tTractaments_C2_15: TStringField;
    tTractaments_C2_16: TIntegerField;
    tTractaments_C2_17: TDateTimeField;
    tTractaments_C3_0: TStringField;
    tTractaments_C3_1: TStringField;
    tTractaments_C3_2: TStringField;
    tTractaments_C3_3: TStringField;
    tTractaments_C3_4: TStringField;
    tTractaments_C3_5: TStringField;
    tTractaments_C3_6: TStringField;
    tTractaments_C3_7: TIntegerField;
    tTractaments_C3_8: TStringField;
    tTractaments_C3_9: TStringField;
    tTractaments_C3_10: TSmallintField;
    tTractaments_C3_11: TStringField;
    tTractaments_C3_12: TStringField;
    tTractaments_C3_13: TStringField;
    tTractaments_C3_14: TStringField;
    tTractaments_C3_15: TStringField;
    tTractaments_C3_16: TIntegerField;
    tTractaments_C3_17: TDateTimeField;
    tTractaments_C4_0: TStringField;
    tTractaments_C4_1: TStringField;
    tTractaments_C4_2: TStringField;
    tTractaments_C4_3: TStringField;
    tTractaments_C4_4: TStringField;
    tTractaments_C4_5: TStringField;
    tTractaments_C4_6: TStringField;
    tTractaments_C4_7: TIntegerField;
    tTractaments_C4_8: TStringField;
    tTractaments_C4_9: TStringField;
    tTractaments_C4_10: TSmallintField;
    tTractaments_C4_11: TStringField;
    tTractaments_C4_12: TStringField;
    tTractaments_C4_13: TStringField;
    tTractaments_C4_14: TStringField;
    tTractaments_C4_15: TStringField;
    tTractaments_C4_16: TIntegerField;
    tTractaments_C4_17: TDateTimeField;
    tTractaments_C5_0: TSmallintField;
    tTractaments_C5_1: TStringField;
    tTractaments_C6_0: TSmallintField;
    tTractaments_C6_1: TStringField;
    tTractaments_C7_0: TSmallintField;
    tTractaments_C7_1: TStringField;
    tTractaments_C7_2: TStringField;
    tTractaments_C7_3: TStringField;
    tTractaments_C7_4: TStringField;
    tTractaments_C7_5: TStringField;
    tTractaments_C7_6: TStringField;
    tTractaments_C7_7: TStringField;
    tTractaments_C8_0: TSmallintField;
    tTractaments_C8_1: TStringField;
    tTractaments_C9_0: TSmallintField;
    tTractaments_C9_1: TStringField;
    tTractaments_C10_0: TSmallintField;
    tTractaments_C10_1: TStringField;
    tTractaments_C10_2: TSmallintField;
    tTractaments_C10_3: TStringField;
    tTractaments_C10_4: TStringField;
    tTractaments_C10_5: TStringField;
    tTractaments_C11_0: TSmallintField;
    tTractaments_C11_1: TStringField;
    tTractaments_C11_2: TStringField;
    tTractaments_C11_3: TStringField;
    tTractaments_C11_4: TStringField;
    tTractaments_C11_5: TStringField;
    tTractaments_C11_6: TStringField;
    tTractaments_C11_7: TStringField;
    tTractaments_C12_0: TStringField;
    tTractaments_C12_1: TStringField;
    tTractaments_C12_2: TStringField;
    tTractaments_C12_3: TStringField;
    tTractaments_C12_4: TSmallintField;
    tTractaments_C13_0: TStringField;
    tTractaments_C13_1: TStringField;
    tTractaments_C13_2: TStringField;
    tTractaments_C13_3: TStringField;
    tTractaments_C13_4: TStringField;
    tTractaments_C13_5: TStringField;
    tTractaments_C13_6: TStringField;
    tTractaments_C13_7: TIntegerField;
    tTractaments_C13_8: TStringField;
    tTractaments_C13_9: TStringField;
    tTractaments_C13_10: TSmallintField;
    tTractaments_C13_11: TStringField;
    tTractaments_C13_12: TStringField;
    tTractaments_C13_13: TStringField;
    tTractaments_C13_14: TStringField;
    tTractaments_C13_15: TStringField;
    tTractaments_C13_16: TIntegerField;
    tTractaments_C13_17: TDateTimeField;
    tTractaments_C14_0: TStringField;
    tTractaments_C14_1: TStringField;
    tTractaments_C14_2: TStringField;
    tTractaments_C14_3: TStringField;
    tTractaments_C14_4: TStringField;
    tTractaments_C14_5: TStringField;
    tTractaments_C14_6: TStringField;
    tTractaments_C14_7: TIntegerField;
    tTractaments_C14_8: TStringField;
    tTractaments_C14_9: TStringField;
    tTractaments_C14_10: TSmallintField;
    tTractaments_C14_11: TStringField;
    tTractaments_C14_12: TStringField;
    tTractaments_C14_13: TStringField;
    tTractaments_C14_14: TStringField;
    tTractaments_C14_15: TStringField;
    tTractaments_C14_16: TIntegerField;
    tTractaments_C14_17: TDateTimeField;
    tTractaments_C15_0: TSmallintField;
    tTractaments_C15_1: TStringField;
    tTractaments_C15_2: TSmallintField;
    tTractaments_C15_3: TStringField;
    tTractaments_C15_4: TStringField;
    tTractaments_C15_5: TStringField;
    tTractaments_C16_0: TSmallintField;
    tTractaments_C16_1: TStringField;
    tTractaments_C16_2: TSmallintField;
    tTractaments_C16_3: TStringField;
    tTractaments_C16_4: TStringField;
    tTractaments_C16_5: TStringField;
    tTractaments_C17_0: TStringField;
    tTractaments_C17_1: TStringField;
    tTractaments_C17_2: TStringField;
    tTractaments_C17_3: TStringField;
    tTractaments_C17_4: TStringField;
    tTractaments_C17_5: TStringField;
    tTractaments_C17_6: TStringField;
    tTractaments_C17_7: TStringField;
    tTractaments_C17_8: TStringField;
    tTractaments_C17_9: TStringField;
    tTractaments_C17_10: TSmallintField;
    tTractaments_C17_11: TStringField;
    tTractaments_C17_12: TStringField;
    tTractaments_C17_13: TStringField;
    tTractaments_C17_14: TStringField;
    tTractaments_C17_15: TStringField;
    tTractaments_C17_16: TStringField;
    tTractaments_C17_17: TIntegerField;
    tTractaments_C18_0: TStringField;
    tTractaments_C18_1: TStringField;
    tTractaments_C18_2: TStringField;
    tTractaments_C19_0: TStringField;
    tTractaments_C19_1: TStringField;
    tTractaments_C19_2: TStringField;
    tTractaments_C19_3: TStringField;
    tTractaments_C19_4: TStringField;
    tTractaments_C19_5: TStringField;
    tTractaments_C20_0: TStringField;
    tTractaments_C20_1: TStringField;
    tTractaments_C20_2: TStringField;
    tTractaments_C20_3: TStringField;
    tTractaments_C20_4: TStringField;
    tTractaments_C20_5: TStringField;
    tTractaments_C20_6: TStringField;
    tTractaments_C20_7: TStringField;
    tTractaments_C20_8: TStringField;
    tTractaments_C20_9: TStringField;
    tTractaments_C20_10: TStringField;
    tTractaments_C20_11: TStringField;
    tTractaments_C20_12: TStringField;
    tTractaments_C20_13: TFloatField;
    tTractaments_C20_14: TIntegerField;
    tTractaments_C20_15: TStringField;
    tTractaments_C20_16: TIntegerField;
    tTractaments_C20_17: TStringField;
    tTractaments_C21_0: TStringField;
    tTractaments_C21_1: TStringField;
    tTractaments_C21_2: TStringField;
    tTractaments_C21_3: TStringField;
    tTractaments_C21_4: TStringField;
    tTractaments_C21_5: TStringField;
    tTractaments_C21_6: TStringField;
    tTractaments_C21_7: TStringField;
    tTractaments_C21_8: TStringField;
    tTractaments_C21_9: TStringField;
    tTractaments_C21_10: TSmallintField;
    tTractaments_C21_11: TStringField;
    tTractaments_C21_12: TStringField;
    tTractaments_C21_13: TStringField;
    tTractaments_C21_14: TStringField;
    tTractaments_C21_15: TStringField;
    tTractaments_C21_16: TStringField;
    tTractaments_C21_17: TIntegerField;
    tTractaments_C22_0: TStringField;
    tTractaments_C22_1: TStringField;
    tTractaments_C22_2: TSmallintField;
    tTractaments_C23_0: TStringField;
    tTractaments_C23_1: TStringField;
    tTractaments_C23_2: TSmallintField;
    tTractaments_C23_3: TSmallintField;
    tTractaments_C24_0: TSmallintField;
    tTractaments_C24_1: TStringField;
    tTractaments_C24_2: TSmallintField;
    tTractaments_C24_3: TStringField;
    tTractaments_C24_4: TStringField;
    tTractaments_C24_5: TStringField;
    tTractaments_C25_0: TSmallintField;
    tTractaments_C25_1: TStringField;
    tTractaments_C25_2: TSmallintField;
    tTractaments_C25_3: TStringField;
    tTractaments_C25_4: TStringField;
    tTractaments_C25_5: TStringField;
    tTractaments_C26_0: TSmallintField;
    tTractaments_C26_1: TStringField;
    tTractaments_C26_2: TSmallintField;
    tTractaments_C26_3: TStringField;
    tTractaments_C26_4: TStringField;
    tTractaments_C26_5: TStringField;
    tTractaments_C27_0: TSmallintField;
    tTractaments_C27_1: TStringField;
    tTractaments_C27_2: TSmallintField;
    tTractaments_C27_3: TStringField;
    tTractaments_C27_4: TStringField;
    tTractaments_C27_5: TStringField;
    tTractaments_C28_0: TIntegerField;
    tTractaments_C28_1: TStringField;
    tTractaments_C28_2: TStringField;
    tTractaments_C28_3: TSmallintField;
    tTractaments_C28_4: TStringField;
    tTractaments_C29_0: TSmallintField;
    tTractaments_C29_1: TStringField;
    tTractaments_C29_2: TSmallintField;
    tTractaments_C29_3: TStringField;
    tTractaments_C29_4: TStringField;
    tTractaments_C29_5: TStringField;
    tTractaments_C30_0: TSmallintField;
    tTractaments_C30_1: TStringField;
    tTractaments_C30_2: TSmallintField;
    tTractaments_C30_3: TStringField;
    tTractaments_C30_4: TStringField;
    tTractaments_C30_5: TStringField;
    tTractaments_C31_0: TSmallintField;
    tTractaments_C31_1: TStringField;
    tTractaments_C31_2: TSmallintField;
    tTractaments_C31_3: TStringField;
    tTractaments_C31_4: TStringField;
    tTractaments_C31_5: TStringField;
    tTractaments_C32_0: TIntegerField;
    tTractaments_C32_1: TStringField;
    tTractaments_C32_2: TStringField;
    tTractaments_C32_3: TStringField;
    tTractaments_C32_4: TStringField;
    tTractaments_C32_5: TStringField;
    tTractaments_C32_6: TStringField;
    tTractaments_C32_7: TStringField;
    tTractaments_C32_8: TStringField;
    tTractaments_C32_9: TStringField;
    tTractaments_C32_10: TStringField;
    tTractaments_C32_11: TStringField;
    tTractaments_C32_12: TStringField;
    tTractaments_C32_13: TStringField;
    tTractaments_C33_0: TSmallintField;
    tTractaments_C33_1: TStringField;
    tTractaments_C33_2: TSmallintField;
    tTractaments_C33_3: TStringField;
    tTractaments_C33_4: TStringField;
    tTractaments_C33_5: TStringField;
    tTractaments_C34_0: TIntegerField;
    tTractaments_C34_1: TStringField;
    tTractaments_C34_2: TStringField;
    tTractaments_C34_3: TStringField;
    tTractaments_C34_4: TStringField;
    tTractaments_C35_0: TStringField;
    tTractaments_C35_1: TStringField;
    tTractaments_C35_2: TStringField;
    tTractaments_C35_3: TStringField;
    tTractaments_C35_4: TStringField;
    tTractaments_C35_5: TStringField;
    tTractaments_C35_6: TStringField;
    tTractaments_C35_7: TStringField;
    tTractaments_C35_8: TStringField;
    tTractaments_C35_9: TStringField;
    tTractaments_C35_10: TSmallintField;
    tTractaments_C35_11: TStringField;
    tTractaments_C35_12: TStringField;
    tTractaments_C35_13: TStringField;
    tTractaments_C35_14: TStringField;
    tTractaments_C35_15: TStringField;
    tTractaments_C35_16: TStringField;
    tTractaments_C35_17: TIntegerField;
    tTractaments_C36_0: TStringField;
    tTractaments_C36_1: TStringField;
    tTractaments_C36_2: TStringField;
    tTractaments_C36_3: TStringField;
    tTractaments_C36_4: TStringField;
    tTractaments_C36_5: TStringField;
    tTractaments_C36_6: TStringField;
    tTractaments_C36_7: TStringField;
    tTractaments_C36_8: TStringField;
    tTractaments_C36_9: TStringField;
    tTractaments_C36_10: TSmallintField;
    tTractaments_C36_11: TStringField;
    tTractaments_C36_12: TStringField;
    tTractaments_C36_13: TStringField;
    tTractaments_C36_14: TStringField;
    tTractaments_C36_15: TStringField;
    tTractaments_C36_16: TStringField;
    tTractaments_C36_17: TIntegerField;
    tTractaments_C37_0: TStringField;
    tTractaments_C37_1: TStringField;
    tTractaments_C38_0: TSmallintField;
    tTractaments_C38_1: TStringField;
    tTractaments_C38_2: TSmallintField;
    tTractaments_C38_3: TStringField;
    tTractaments_C38_4: TStringField;
    tTractaments_C38_5: TStringField;
    tTractaments_C39_0: TStringField;
    tTractaments_C39_1: TStringField;
    tTractaments_C39_2: TStringField;
    tTractaments_C39_3: TStringField;
    tTractaments_C39_4: TStringField;
    tTractaments_C39_5: TStringField;
    tTractaments_C39_6: TStringField;
    tTractaments_C39_7: TIntegerField;
    tTractaments_C39_8: TStringField;
    tTractaments_C39_9: TStringField;
    tTractaments_C39_10: TSmallintField;
    tTractaments_C39_11: TStringField;
    tTractaments_C39_12: TStringField;
    tTractaments_C39_13: TStringField;
    tTractaments_C39_14: TStringField;
    tTractaments_C39_15: TStringField;
    tTractaments_C39_16: TIntegerField;
    tTractaments_C39_17: TDateTimeField;
    tTractaments_C40_0: TStringField;
    tTractaments_C40_1: TStringField;
    tTractaments_C40_2: TStringField;
    tTractaments_C40_3: TStringField;
    tTractaments_C40_4: TStringField;
    tTractaments_C40_5: TStringField;
    tTractaments_C40_6: TStringField;
    tTractaments_C40_7: TIntegerField;
    tTractaments_C40_8: TStringField;
    tTractaments_C40_9: TStringField;
    tTractaments_C40_10: TSmallintField;
    tTractaments_C40_11: TStringField;
    tTractaments_C40_12: TStringField;
    tTractaments_C40_13: TStringField;
    tTractaments_C40_14: TStringField;
    tTractaments_C40_15: TStringField;
    tTractaments_C40_16: TIntegerField;
    tTractaments_C40_17: TDateTimeField;
    tTractaments_C41_0: TSmallintField;
    tTractaments_C41_1: TStringField;
    tTractaments_C41_2: TSmallintField;
    tTractaments_C41_3: TStringField;
    tTractaments_C41_4: TStringField;
    tTractaments_C41_5: TStringField;
    tTractaments_C42_0: TSmallintField;
    tTractaments_C42_1: TStringField;
    pDestinacioPreAlta: TPanel;
    HYLabel13: THYLabel;
    N_HospitalPreAlta: THYLabel;
    N_Desti_cont_extPreAlta: THYLabel;
    N_Desti_cont_intPreAlta: THYLabel;
    DestinacioPreAlta: THYEdit;
    HospitalPreAlta: THYEdit;
    Desti_cont_extPreAlta: THYEdit;
    Desti_cont_intPreAlta: THYEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure HYBarra1AlPost(Sender: TObject);
    procedure HYBarra1AlCancel(Sender: TObject);
    procedure tFiliacioAfterOpen(DataSet: TDataSet);
    procedure bCIPClick(Sender: TObject);
    procedure PCChange(Sender: TObject);
    procedure HYPCAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure bBorrarClick(Sender: TObject);
    procedure tTractamentsAlConsultarCampo(Sender: TObject; NombreConsulta: String; var Ejecutada: Boolean; SubFiltro: String);
    procedure cMetgePrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure tFiliacioAlConsultarCampo(Sender: TObject; NombreConsulta: String; var Ejecutada: Boolean; SubFiltro: String);
    procedure cParellaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure tFiliacio_USRAChange(Sender: TField);
    procedure HYPCAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure USRAExecute(Sender: TObject);
    procedure bCerrarUSRAClick(Sender: TObject);
    procedure tParentAfterCancel(DataSet: TDataSet);
    procedure tParentAfterPost(DataSet: TDataSet);
    procedure HistTractAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure MetgeAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure PrestacioAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure tTractamentsCalcFields(DataSet: TDataSet);
    procedure tTractamentsBeforeEdit(DataSet: TDataSet);
    procedure tTractaments_C_DestinacioChange(Sender: TField);
    procedure bFullFiliacioClick(Sender: TObject);
    procedure tTractaments_C_OrigenChange(Sender: TField);
    procedure consultaLlitsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure PrestaProgramadaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure C_MotiuProgramacioAlConsultar(Sender: TObject);
    procedure MotiuPrestaProgramadaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure tFiliacioCalcFields(DataSet: TDataSet);
    procedure tTractaments_C_LLitChange(Sender: TField);
    procedure tTractaments_C_PlantaChange(Sender: TField);
    procedure tTractaments_C_CoordinadorChange(Sender: TField);
    procedure tTractaments_C_CaracterChange(Sender: TField);
    procedure tFiliacio_SEXOChange(Sender: TField);
    procedure tTractaments_C_DelegacioChange(Sender: TField);
    procedure FrequenciaProgramadaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure tTractaments_C_HospitalDestiChange(Sender: TField);
    procedure tTractaments_C_HospitalOrigenChange(Sender: TField);
//-    procedure bNotaCarrecClick(Sender: TObject);
    procedure tTractaments_C_FrequenciaChange(Sender: TField);
    procedure tFiliacio_EsViuChange(Sender: TField);
    procedure bCalculaLetraNIFClick(Sender: TObject);
    procedure tTractamentsAfterInsert(DataSet: TDataSet);
    procedure cnsCaracterProgramacioAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure CaracterProgramacioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure tTractamentsBeforeInsert(DataSet: TDataSet);
    procedure tParentBeforePost(DataSet: TDataSet);
    procedure tFiliacioAfterScroll(DataSet: TDataSet);
    procedure cbPensionistaClick(Sender: TObject);
    procedure tTractamentsAfterScroll(DataSet: TDataSet);
    procedure tTractamentsAfterEdit(DataSet: TDataSet);
    procedure tFiliacioAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean; NombreConsulta: String; var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure cPoblacionsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure tFiliacioBeforeEdit(DataSet: TDataSet);
    procedure tParentBeforeEdit(DataSet: TDataSet);
    procedure tTractaments_Data_AltaChange(Sender: TField);
    procedure tTractaments_Data_PreAltaChange(Sender: TField);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ComprobarDatosPrealta(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CaracterProgramacioAlConsultar(Sender: TObject);
//-    procedure accAmbulatoriExecute(Sender: TObject);
//-    procedure accAltaIngresExecute(Sender: TObject);
    procedure C_MotiuProgramacioChange(Sender: TObject);
    procedure FrequenciaProgramacioChange(Sender: TObject);
    procedure CaracterProgramacioChange(Sender: TObject);
    procedure tTractaments_C_CentreFacValidate(Sender: TField);
    procedure tTractaments_C_ClientValidate(Sender: TField);
    procedure tTractaments_C_DelegacioValidate(Sender: TField);
    procedure tTractamentsAfterOpen(DataSet: TDataSet);
    procedure tTractaments_C_MotiuChange(Sender: TField);
    procedure CentreExit(Sender: TObject);
    procedure tTractamentsAfterPost(DataSet: TDataSet);
    procedure JvDBFotografiaDblClick(Sender: TObject);
    procedure Esborrar1Click(Sender: TObject);
    procedure tFotosAfterCancel(DataSet: TDataSet);
    procedure tFiliacioBeforeScroll(DataSet: TDataSet);
    procedure tFotosAfterScroll(DataSet: TDataSet);
    procedure tFiliacioBeforePost(DataSet: TDataSet);
    procedure cPaisAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cDistrictesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure sbDistrictesClick(Sender: TObject);
    procedure Ed_tFiliacio_CODIGOChange(Sender: TObject);
    procedure tTractamentsAlConsultaChanged(Sender: TObject; NombreConsulta: String);
    procedure GridDblClick(Sender: TObject);
    procedure sbSurtClick(Sender: TObject);
//-    procedure accHDiaExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure sbNCoberturaClick(Sender: TObject);
    procedure cCentreAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure tTractamentsAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean; NombreConsulta: String; var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure tTractamentsBeforePost(DataSet: TDataSet);
    procedure cProvinciesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure Ed_tFiliacio_POBLACIOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Ed_tFiliacio_PROVINCIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditOnEnter(Sender: TObject);
    procedure EditOnExit(Sender: TObject);
    procedure tFiliDadesFacBeforeEdit(DataSet: TDataSet);
    procedure tFiliDadesFacBeforeInsert(DataSet: TDataSet);
    procedure edFiliDadesFacExit(Sender: TObject);
    procedure rgEstadosFacturacionClick(Sender: TObject);
    procedure tFiliTDIBefore(DataSet: TDataSet);
    procedure tFiliTDIBeforeDelete(DataSet: TDataSet);
    procedure tFiliTDIBeforePost(DataSet: TDataSet);
    procedure bbNoRenovaNPCClick(Sender: TObject);
    procedure EditFrequenciaChange(Sender: TObject);
    procedure tDataFiContractatChange(Sender: TObject);
    procedure cCoberturaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tTractaments_DESTI_CONT_EXTChange(Sender: TField);
    procedure tTractaments_DESTI_CONT_INTChange(Sender: TField);
    procedure Ed_tFiliacio_T_DOCExit(Sender: TObject);
    procedure cDelegacioAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tTractaments_T_HABITACIOChange(Sender: TField);
    procedure mgcGarantExit(Sender: TObject);
    procedure bModificarGarantClick(Sender: TObject);
    procedure HYBarra4AlCancel(Sender: TObject);
    procedure tGarantsAfterInsert(DataSet: TDataSet);
    procedure tGarantsAfterPost(DataSet: TDataSet);
    procedure tGarantsAlConsultarCampoFiltro2(Sender: TObject;
      var Personalizada: Boolean; NombreConsulta: String;
      var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure cPoblacionsGAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tGarantsBeforePost(DataSet: TDataSet);
    procedure bNouGarantClick(Sender: TObject);
    procedure tTractaments_T_SESSIOChange(Sender: TField);
    procedure cFacilitadorsEnClicAltreBoto(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tFacilitadorsAfterInsert(DataSet: TDataSet);
    procedure tFacilitadorsAfterPost(DataSet: TDataSet);
    procedure tFacilitadorsBeforePost(DataSet: TDataSet);
    procedure HYBarra5AlCancel(Sender: TObject);
    procedure cFacilitadorsAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
{    procedure cFacilitadorsEnFerAltraCosa(Sender: TxHYDialogConsulta;
      Datos: TDataSet); }
    procedure cHtalDestiAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure sbNetejarCIPClick(Sender: TObject);
    procedure tTractaments_CADA_X_SETMANESChange(Sender: TField);
    procedure bScanDocClick(Sender: TObject);
    procedure cEstatCivilAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure Ed_tTractaments_ID_FACILITADORKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure bCanviPrestacioClick(Sender: TObject);
    procedure cCanviPrestaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure sbCanviDataIngresClick(Sender: TObject);
    procedure sbCanviCoordinadorClick(Sender: TObject);
    procedure cCanviCoordAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tTractaments_C_FREQUENCIA_TIPUSChange(Sender: TField);
    procedure tTractaments_C_PrestacioChange(Sender: TField);
    procedure tTractaments_C_CentreFacChange(Sender: TField);
    procedure cClientAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure eNHCNovaHCEChange(Sender: TObject);
    procedure eNHCNovaHCEKeyPress(Sender: TObject; var Key: Char);
    procedure bbCercaNovaHCEClick(Sender: TObject);
    procedure bbFiliaNovaHCEClick(Sender: TObject);
    procedure bbModiNovaHCEClick(Sender: TObject);
    procedure bbRefrescaNovaHCEClick(Sender: TObject);
    procedure consultaPlantesAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tTractaments_C_ModalitatChange(Sender: TField);
  private
    Fecha_Server, DataPreAltaBefore, UnespaDataTall2021: TDateTime;
    llitAbans: String;
    idlog, bloc: Integer;
    impressores: TStringList;
    EsNou, novaHC: Boolean;
    mVisites: TMemo;
    FiliDadesFacPassades: Boolean;
    modificatCoordinador, modificadaDataIngres, modificadaPrestacio: Boolean;
    DesaLogHorariRehab: Boolean;
    procedure Iniciar;
    procedure DesProgramarPrestacio;
    procedure ProgramarPrestacio;
    procedure CambioenHospitalOrigen(Sender: TField);
    procedure cambioenLLit(Sender: TField);
    procedure cambioenPlanta(Sender: TField);
    procedure CambioenCoordinador(Sender: TField);
    procedure CambioenCaracter(Sender: TField);
    procedure CambioenFrequencia(Sender: TField);
    procedure CambioenTSessio(Sender: TField);
    procedure CambioenCadaXSetmanes(Sender: TField);
    procedure cambioenOrigen(Sender: TField);
    procedure cambioenMotiu(Sender: TField);
    procedure cambioenModalitat(Sender: TField);
    procedure CambioenDestiContInt(Sender: TField);
    procedure CambioenDestiContExt(Sender: TField);
    procedure CambioenHospitalDesti(Sender: TField);
    procedure CambioenTHab(Sender: TField);      
    function TeClient(CentreFac: String): Boolean;
    function TeDelegacio(CentreFac: String): Boolean;
    procedure CambioenDestinacio(Sender: TField);
    procedure ActualitzaEsperaProgramada;
    procedure CrearEstadosFac(Estados: array of Integer);
    procedure pintarParamsFac;
    function check_captura_passaport: Boolean;
    procedure BolcaValoracioPreingres(C_Espera: String);
    procedure CanviaColorFont;
    procedure DesActivarCamps;
    procedure ValidaDataAlta(data_ingres: TDateTime; hora_ingres: String; data_alta: TDateTime; hora_alta: String);
  public
    consulta               : String;  // per al trazacontrol
    PendienteInsertarUSRA  : Boolean; // Se utiliza cuando se filia una Historia sin numero de historia, al poner Usra no se puede grabar porque no se sabe a que historia relacionarla, asi que esperamos a que esta tenga número para grabar los datos introducidos.
    ForaDHores             : Boolean; // Ens diu si la filiacio que estem fent ve d'un Fora d'hores
    Borrando               : Boolean; // Flag para saber sie estamos eliminando prestaciones de la consulta de prestaciones programadas de la filiación activa en la ficha.
    ResultadoFiliacion     : Integer; // nos dice si el estado resultante de la espera que filiamos es una visita o una espera.
    EnPreAlta              : Boolean; // Para saber si estamos insertando/Modificando una PreAlta
    EnAlta                 : Boolean; // Para saber si estamos insertando/Modificando un Alta
    NUMESPERA              : String;  // Numero de l'espera de la qual ve el tractament.
    C_TractamentOrigen     : Integer; // Número del tractament origen associat a l'ESPERA 
    CAMBIODEPRESTACION2001 : Boolean; // CUANDO SE CAMBIA DE UNA 2001 A UNA 2002 O VICEVERSA.
    CAMBIODEPRESTACION2006 : Boolean; // CUANDO SE PASA UNA PRESTACION A 2006.
    CAMBIODEPRESTACION2016 : Boolean; // CUANDO SE PASA UNA PRESTACION A 2016.
    OldCentreFac           : String;  // Guarda el Valor del Centre de Facturació, per si canvia i toca, recalcular la prestació (2ª.Visita)
    AUTOGENERACIONINGRESO  : Boolean; // Variable que ens diu si s'autogenera un Ingrés, en aquet cas el num espera es de la espera que ha generat el tractament a partir del cual fem el nou tractament d'Ingrés.
    SUBSTITUEIX            : Boolean; // Variable que ens diu si l'ingrés que s'autogenera substitueix el tractament que estem passant a ingrés.
    ErrorEspearProg        : Boolean; // Da Error a true cuando hay un error de incoherencia de datos al establecer los parámetros de la espera a programar con el alta. si es true no graba hasta que los datos esten bien, osea hasta que sea false.
    mostrados              : Boolean; // Flag para mostrar solo una vez los estados de facturación, asi no cometer errores al cambiarlos y volver a mostrarlos.
    NoFacturableSCS        : Boolean; // era = teDretPresta198; ara és també teDretMotiu16 
    DadesEspera            : TDataSet;
    procedure DeshabilitarPrestacio(param: Boolean); // No deixa introduir dades de la prestació, només el metge.
    procedure MostrarPaneles(Prestacio:String);
    procedure CopiarDadesFactu;
    Procedure MostrarEstadosFact(Estat:Integer);
    Procedure ActivaUnespa;
    Procedure ActivaACA_CI;
    Procedure ActivaMetgeMutua;
    procedure peticioBeforeExecute(const MethodName: string; var SOAPRequest: WideString);
    procedure peticioAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure OmplirCampsDadesFac(DadesFac: TDadesFac; DataSet: TDataSet);
    procedure DonarAlta(c_tractament: integer);
    procedure EditarTractament(c_tractament: Integer);
  end;
var
  wFitxaFiliacio: TwFitxaFiliacio;

implementation

uses DataAdmisio, DataFactu, DataBasics, Funciones, FitxaEspera,
  FitxaLlistaEspera, DataCodis, FitxaAgendaProgramacio, FitxaIngressats,
  PrintFullFiliacio, PrintEtiquetesFiliacio,
  FitxaForadHores, DataGimnas, {-PrintNotaCarrec, -}FitxaEnTractament,
  FitxaLlistatPrestacions, FitxaHistorial, DialegEleccioEspera, fichafotou,
  DataImatges,FitxaProvincia, utili16, RCA_Func, RcaDialog, FuncionsCues, SOAPHTTPClient,
  PrintFullNoRenovacio, utilsSoapFacturacio, CapturaPasaport, Registry,
  DataHCE;

{$R *.DFM}

procedure TwFitxaFiliacio.FormCreate(Sender: TObject);
begin
    Fecha_Server  := DateServer;
    PC.ActivePage := tsPersonals;
    bFullFiliacio.Enabled := TeDretAcces([160,161]);
    bCanviPrestacio.Visible    := (wData.UsuariActiu.Codi <> '') and TeDretMetge(wData.UsuariActiu.Codi, [245]);
    sbCanviCoordinador.Visible := (wData.UsuariActiu.Codi <> '') and TeDretMetge(wData.UsuariActiu.Codi, [249]);
    sbCanviDataIngres.Visible  := (wData.UsuariActiu.Codi <> '') and TeDretMetge(wData.UsuariActiu.Codi, [251]);

    if wMain.Nivell < 2 then tsFacturacio.TabVisible := False;

    AUTOGENERACIONINGRESO  := False;
    SUBSTITUEIX            := False;
    PendienteInsertarUSRA  := False;
    CAMBIODEPRESTACION2001 := False;
    CAMBIODEPRESTACION2006 := False;
    CAMBIODEPRESTACION2016 := False;
    ErrorEspearProg        := False;
    mostrados              := False; //Flag para mostrar solo una vez los estados de facturación, asi no cometer errores al cambiarlos y volver a mostrarlos.
    NoFacturableSCS        := TeDretPresta(tTractaments.FieldByName('c_prestacio').AsString, [198])
                              or TeDretMotiu(tTractaments.FieldByName('c_motiu').AsInteger, [16]);

    llitAbans := tTractaments.FieldByName('c_llit').AsString;  // guardar el llit original per saber si l'han modificat

    mgcAvis.Hide;
    lQuants.Caption := '';
    EsNou := True;
    FiliDadesFacPassades := False;

    modificatCoordinador  := False;
    modificadaDataIngres  := False;
    modificadaPrestacio   := False;

    // camps només modificables si el RCA està KO -- 14.9.2017
    Ed_tFiliacio_TSI.ReadOnly := RCAOK;       // TSI
    HYEdit8.ReadOnly          := RCAOK;       // nivell de cobertura

    // aquí anirem afegint les visites que es generen per mostarar-les un cop filiat
    mVisites := TMemo.Create(Application);

    //si no te en el regedit la configuracio del ws-capturapassaport, no mostrar boto
    bScanDoc.Visible := check_captura_passaport();

    DesActivarCamps;

    GroupBox3.Enabled := True;        GroupBox3.Ctl3D := True;
    edFiliCentreFac.Enabled := True;  edFiliCentreFac.Ctl3D := True;
    HYEdit10.Enabled := True;         HYEdit10.Ctl3D := True;
    HYEdit11.Enabled := True;         HYEdit11.Ctl3D := True;

    CanviaColorFont;

    UnespaDataTall2021 := GutSelect('SELECT DATA FROM UNESPADATES WHERE ID="TALL_2021"',[]);
end;

procedure TwFitxaFiliacio.DesActivarCamps;
begin
    // HCE-243
    Panel1.Enabled  := nHCE_ON; // l'habilito pq puguin fer copy&paste però poso els camps ReadOnly = True;
    Ed_tFiliacio_NUM_HIST.ReadOnly := nHCE_ON; HYEdit6.ReadOnly := nHCE_ON; Ed_tFiliacio_APELLIDO2.ReadOnly       := nHCE_ON;     Ed_tFiliacio_DNI.ReadOnly := nHCE_ON;
    Ed_tFiliacio_T_DOC.ReadOnly    := nHCE_ON; Nom.ReadOnly     := nHCE_ON; Eti_tFiliacio_TipusDoc_N_Codi.Enabled := not nHCE_ON;

    HYArea3.Ctl3D   := not nHCE_ON;

    HYEdit5.ReadOnly                  := nHCE_ON; Ed_tFiliacio_NOMVIA.ReadOnly          := nHCE_ON; Ed_tFiliacio_NUMERO.ReadOnly      := nHCE_ON; Ed_tFiliacio_BLOC.ReadOnly := nHCE_ON;
    Ed_tFiliacio_ESCALA.ReadOnly      := nHCE_ON; Ed_tFiliacio_PIS.ReadOnly             := nHCE_ON; Ed_tFiliacio_PORTA.ReadOnly       := nHCE_ON;
    Ed_tFiliacio_CODIGO.ReadOnly      := nHCE_ON; Ed_tFiliacio_POBLACIO.ReadOnly        := nHCE_ON; Ed_tFiliacio_PROVINCIA.ReadOnly   := nHCE_ON; Ed_tFiliacio_PAIS.ReadOnly := nHCE_ON;
    Ed_tFiliacio_RESIDENCIA.ReadOnly  := nHCE_ON; Ed_tFiliacio_EMAIL.ReadOnly           := nHCE_ON; Eti_tFiliacio_Pais_N_Pais.Enabled := not nHCE_ON;
    Ed_tFiliacio_TELEFONO.ReadOnly    := nHCE_ON; Ed_tFiliacio_TELEFO1_FAM.ReadOnly     := nHCE_ON; Ed_tFiliacio_TELEFO2_FAM.ReadOnly := nHCE_ON;
    Ed_tFiliacio_DESCRIPCIO1.ReadOnly := nHCE_ON; Ed_tFiliacio_DESCRIPCIO2.ReadOnly     := nHCE_ON; eAmic.ReadOnly                    := nHCE_ON; Ed_tFiliacio_AMIC.ReadOnly := nHCE_ON;
    Ed_tFiliacio_FECHA_NAC.ReadOnly   := nHCE_ON; Ed_tFiliacio_LUGAR_NAC.ReadOnly       := nHCE_ON; Ed_tFiliacio_PAIS_NAIX.ReadOnly   := nHCE_ON; Ed_tFiliacio_ConsentimentInf.ReadOnly := nHCE_ON;
    Ed_tFiliacio_IDIOMA.ReadOnly      := nHCE_ON; EditSexe.ReadOnly                     := nHCE_ON;
    Ed_tFiliacio_ESTADO_CIV.ReadOnly  := nHCE_ON; Ed_tFiliacio_UNITAT.ReadOnly          := nHCE_ON;
    Ed_tFiliacio_UM_ANTIGA.ReadOnly   := nHCE_ON; Ed_tFiliacio_c_Unitatmedica.ReadOnly  := nHCE_ON;
    Check_tFiliacio_LLIT.ReadOnly     := nHCE_ON; Check_tFiliacio_Consentiment.ReadOnly := nHCE_ON; JvDBRadioPanel1.ReadOnly          := nHCE_ON;
    JvDBRadioPanel2.ReadOnly          := nHCE_ON; Check_tFiliacio_ENQUESTES.ReadOnly    := nHCE_ON; JvDBRadioPanel3.ReadOnly          := nHCE_ON; HYEdit8.ReadOnly           := nHCE_ON;
    Ed_tFiliacio_CCAA.ReadOnly        := nHCE_ON; HYGrid1.ReadOnly                      := nHCE_ON; Ed_tFiliacio_SOE.ReadOnly         := nHCE_ON; tFiliTDI.RequestLive       := not nHCE_ON;
    cbPensionista.ReadOnly            := nHCE_ON; DBRadioGroup1.ReadOnly                := nHCE_ON; HYBarra3.Enabled                  := not nHCE_ON;

    pNovaHCE.Visible  := nHCE_ON;
end;

procedure TwFitxaFiliacio.CanviaColorFont;
begin
    GroupBox3.Font.Color := clWindowText;

    if nHCE_ON then HYArea3.Font.Color := clGray
               else HYArea3.Font.Color := clWindowText;

    Panel1.Font.Color                    := HYArea3.Font.Color;
    GroupBox2.Font.Color                 := HYArea3.Font.Color;
    Ed_tFiliacio_TSI.Font.Color          := HYArea3.Font.Color;
    HYEdit8.Font.Color                   := HYArea3.Font.Color;
    sbNetejarCIP.Font.Color              := HYArea3.Font.Color;
    bCIP.Font.Color                      := HYArea3.Font.Color;
    //SpeedButton5.Font.Color              := HYArea3.Font.Color;
    Label12.Font.Color                   := HYArea3.Font.Color;
    Ed_tFiliacio_CCAA.Font.Color         := HYArea3.Font.Color;
    Eti_tFiliacio_CCAA_N_Codi.Font.Color := HYArea3.Font.Color;
    HYGrid1.Font.Color                   := HYArea3.Font.Color;
    GroupBox1.Font.Color                 := HYArea3.Font.Color;
    Ed_tFiliacio_SOE.Font.Color          := HYArea3.Font.Color;
    cbPensionista.Font.Color             := HYArea3.Font.Color;
    DBRadioGroup1.Font.Color             := HYArea3.Font.Color;
    Check_tFiliacio_LLIT.Font.Color      := HYArea3.Font.Color;
    JvDBRadioPanel1.Font.Color           := HYArea3.Font.Color;
    JvDBRadioPanel2.Font.Color           := HYArea3.Font.Color;
    Check_tFiliacio_ENQUESTES.Font.Color := HYArea3.Font.Color;
    JvDBRadioPanel3.Font.Color           := HYArea3.Font.Color;
    bCalculaLetraNIF.Font.Color          := HYArea3.Font.Color;

    Eti_tFiliacio_cobertura_N_Codi.Font.Color   := HYArea3.Font.Color;
    Eti_tFiliacio_Pais_N_Pais.Font.Color        := HYArea3.Font.Color;
    Eti_tFiliacio_PaisNaix_N_Pais.Font.Color    := HYArea3.Font.Color;
    Eti_tFiliacio_Idioma_N_Codi.Font.Color      := HYArea3.Font.Color;
    Eti_tFiliacio_EstatCivil_N_Estat.Font.Color := HYArea3.Font.Color;
    Eti_tFiliacio_Unitat_N_Unitat.Font.Color    := HYArea3.Font.Color;
    Eti_tFiliacio_UnitatM_N_UNITATM.Font.Color  := HYArea3.Font.Color;
    Eti_tFiliacio_UMantiga_N_Codi.Font.Color    := HYArea3.Font.Color;
    EditSexe.EtiFontColor                       := HYArea3.Font.Color;

end;


procedure TwFitxaFiliacio.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Bucle: Integer;
begin

  if tTractaments.RequestLive then //Si no se pueden hacer modificaciones no hace falta refrescar datos.
  begin

      if wMain.TeProvisional.Visible then
      begin
        if SelectSQL( wData.projecte.DataBaseName,
          'Select count(*) from TRACTAMENTS WHERE ESPROVISIONAL <> 0') = 0
        then wMain.TeProvisional.Visible := False;
      end;

      for Bucle := 0 to Screen.FormCount - 1 do
      begin
          Case ResultadoFiliacion of
             90:  if Screen.Forms[Bucle] is TwFitxaLlistaEspera
                  then with Screen.Forms[Bucle] as TwFitxaLlistaEspera do Todos.Execute;
             95:  if Screen.Forms[bucle] is TwFitxaAgendaProgramacio
                  then  with Screen.Forms[bucle] as TwFitxaAgendaProgramacio do PanelLista.RefreshSQL;
          end;

          if Screen.Forms[Bucle] is TwFitxaLlistatPrestacions
                then with Screen.Forms[Bucle] as TwFitxaLlistatPrestacions do pPrestacions.RefreshSQL;

          if Screen.Forms[Bucle] is TwFitxaHistorial
                then with Screen.Forms[Bucle] as TwFitxaHistorial do pHistorial.RefreshSQL;

          if Screen.Forms[Bucle] is TwFitxaIngressats
                then with Screen.Forms[Bucle] as TwFitxaIngressats do
                     begin
                        PIngressats.RefreshSQL;
                        pIngressats.Datos.Locate('C_Historia',tFiliacio.FieldbyName('NUM_HIST').asVariant,[]);
                     end;

          if Screen.Forms[Bucle] is TwFitxaEnTractament Then
              with Screen.Forms[Bucle] as TwFitxaEnTractament do pEnTractament.RefreshSql;

          if ForadHores
          then  if Screen.Forms[Bucle] is TwFitxaForaDHores
                then with Screen.Forms[Bucle] as TwFitxaForaDHores do pForaDHores.RefreshSQL;

          if CAMBIODEPRESTACION2006 or CAMBIODEPRESTACION2016 then
          begin
               if Screen.Forms[Bucle] is TwFitxaLlistatPrestacions
               then with Screen.Forms[Bucle] as TwFitxaLlistatPrestacions do  pPrestacions.RefreshSQL;
          end;
      end;
  end;

  mVisites.Free;  
  Action := caFree;
end;


procedure TwFitxaFiliacio.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    if (tFiliacio.EstaEditando or tTractaments.EstaEditando or tParent.EstaEditando or tFiliDadesFac.EstaEditando or tFiliTDI.EstaEditando or tGarants.EstaEditando or tFacilitadors.EstaEditando) then
    begin
        if ((tTractaments.State in [dsInsert]) and AvisoSN('voleu cancel·la la filiacio que esteu incloent?'))
        or AvisoSN('Voleu cancel·lar les modificacions?')
        then begin
            if tTractaments.EstaEditando  then tTractaments.Cancel;
            if tFiliacio.EstaEditando     then tFiliacio.Cancel;
            if tParent.EstaEditando       then tParent.Cancel;
            if tFiliDadesFac.EstaEditando then tFiliDadesFac.Cancel;
            if tFiliTDI.EstaEditando      then tFiliTDI.Cancel;
            if tGarants.EstaEditando      then tGarants.Cancel;
            if tFacilitadors.EstaEditando then tFacilitadors.Cancel;
            CanClose := True;
        end
        else CanClose := False;
    end
    else CanClose := True;
end;


procedure TwFitxaFiliacio.SpeedButton1Click(Sender: TObject);
begin
    Close;
end;


procedure TwFitxaFiliacio.MostrarPaneles(Prestacio:String);
var
  TeProtocolNR: Boolean;
begin

// Tractament.............................................
  pDataIngres.Visible           := TeDretPresta(Prestacio, [40]);
  pHora.Visible                 := TeDretPresta(Prestacio, [41]);
  pPrestacio.Visible            := TeDretPresta(Prestacio, [86]);
  pUCI.Visible                  := TeDretPresta(Prestacio, [156]) and
                                   ((tTractaments.FieldbyName('C_Origen').asString = '4')
                                    or (tTractaments.FieldbyName('C_Origen').asString = '12'));

  pMotiuEspera.Visible          := PrestaTeCodiCamps(Prestacio, 'MOTIU'); //- TeDretPresta(Prestacio, [49]);
  pModalitatEspera.Visible      := PrestaTeCodiCamps(Prestacio, 'ATENCIO.MODALITAT');
  pProcedencia.Visible          := PrestaTeCodiCamps(Prestacio, 'ORIGEN');//- TeDretPresta(Prestacio, [50]);

  pHospital.Visible             := pProcedencia.Visible and //- ( TeDretPresta(Prestacio, [50]) and
                                   ((tTractaments.FieldbyName('C_Origen').asString = '4')
                                    or (tTractaments.FieldbyName('C_Origen').asString = '12'));

  pCaracter.Visible             := TeDretPresta(Prestacio, [52]);
  pSolicitud.Visible            := TeDretPresta(Prestacio, [53]);
  pLlit.Visible                 := TeDretPresta(Prestacio, [54]);       // llit opcional
  pPlanta.Visible               := TeDretPresta(Prestacio, [55,545]);   // planta obligatòria / planta opcional
  pLlitPlanta.Visible           := TeDretPresta(Prestacio, [54,55,545]);
  pDurada.Visible               := TeDretPresta(Prestacio, [47]);
  pFrequencia.Visible           := TeDretPresta(Prestacio, [66]);
  pRenovaNPC.Visible            := TeDretPresta(Prestacio, [114]);
  pTSessio.Visible              := TeDretPresta(Prestacio, [149]);
  EtiTHabitacio.Visible         := Prestacio = '1004';
  Eti_tTractaments_TipHab_N_Codi.Visible := EtiTHabitacio.Visible;
  pSessionsCadaXSetmanes.Visible := TeDretPresta(Prestacio, [22]);

// NPC renovacions automàtiques
  tDataFiContractat.Enabled     := TeDretPresta(Prestacio, [157, 158]) and tTractaments.FieldByName('DATA_PREALTA').IsNull;
  bbNoRenovaNPC.Enabled         := TeDretPresta(Prestacio, [157, 158])                         and 
                                   (not tTractaments.FieldByName('DATA_FI_CONTRACTAT').IsNull) and
                                   (    tTractaments.FieldByName('DATA_NO_RENOVACIO' ).IsNull) and
                                   (tTractaments.State <> dsInsert);                                 // no està insertant

{-
  // No poden modificar la freqüència de processos NR amb pauta
  EditFrequencia.Enabled := pFrequencia.Visible and (0 = GutSelect('select COUNT(*) from PROCESNR_PAUTES P ' +
                                                                   'join TRACTAMENTS T on P.C_TRACTAMENT = T.C_TRACTAMENT ' +
                                                                   'where T.C_HISTORIA = %d and P.ESTAT = "V" and P.DATA_PREALTA > "TODAY"',
                                                                   [tTractaments.FieldbyName('C_Historia').AsInteger]));
-}
  // No poden modificar la freqüència de tractaments amb protocol NR
  TeProtocolNR := ((not Tedretpresta(Prestacio, [33]))
                              or
                              ((tTractaments.FieldByName('C_Motiu').AsInteger <> 0)
                           and (tTractaments.FieldByName('C_CentreFac').AsString <> '')
                           and (0 = GutSelect('select count(*) from PROTOCOLS_PROCESNR where C_MOTIU = %d and C_CENTREFAC = "%s"',
                                            [tTractaments.FieldByName('C_Motiu').AsInteger, tTractaments.FieldByName('C_CentreFac').AsString]))
                              )
                             );
  EditFrequencia.Enabled := pFrequencia.Visible and TeProtocolNR;

  EditFrequencia.Ctl3D := EditFrequencia.Enabled;
  lbAvisFreq.Visible := not EditFrequencia.Enabled;

  // No podem modificar el motiu de tractaments pre-programats (F8) en la inserció del tractament
  // ni en l'edició d'un tractament si aquest ja té un protocol NR vigent
  EditMotiuEspera.Enabled := ( (tTractaments.State in [dsInsert]) and (C_TractamentOrigen = 0) ) or
                             ( (tTractaments.State in [dsEdit, dsBrowse]) and TeProtocolNR and
                               (0 = GutSelect('SELECT count(*) FROM PROCESNR_PAUTES WHERE C_PROCES = %d AND ESTAT = "V"',[tTractaments.FieldByName('C_Proces').AsInteger])) );
  EditMotiuEspera.Ctl3D := EditMotiuEspera.Enabled;

// PreAlta...................................................
  pProgramacioPrestacio.Visible := TeDretPresta(Prestacio, [94]);
  pMetgePrealta.Visible         := TeDretPresta(Prestacio, [95]);
//-  pMotiu.Visible                := TeDretPresta(Prestacio, [96]);
  pMotiu.Visible                := PrestaTeCodiCamps(Prestacio, 'MOTIU');
//  pComentariMetge.Visible       := TeDretPresta(Prestacio, [97]);
//  pComentariInfermeria.Visible  := TeDretPresta(Prestacio, [104]);
  pAmbulancia.Visible           := TeDretPresta(Prestacio, [100]);
//  pCaracterPreAlta.Visible      := TeDretPresta(Prestacio, [105]);

// Alta......................................................
  pMetgeAlta.Visible            := TeDretPresta(Prestacio, [101]);
  pDestinacio.Visible           := TeDretPresta(Prestacio, [102]);
  pDestinacioPrealta.Visible    := pDestinacio.Visible;
  Hospital.Visible              := pDestinacio.Visible and (tTractaments.FieldbyName('C_Destinacio').asString = '2');
  HospitalPreAlta.Visible       := Hospital.Visible;
  if (tTractaments.FieldbyName('C_HospitalDesti').isNull)
  or (tTractaments.FieldbyName('C_HospitalDesti').asString = '-1') then HospitalPreAlta.EtiFontColor := clRed
                                                                   else HospitalPreAlta.EtiFontcolor := clWindowText;
  N_Hospital.Visible            := Hospital.Visible;
  N_HospitalPreAlta.Visible     := Hospital.Visible;

  Desti_cont_int.Visible := pDestinacio.Visible and (tTractaments.FieldbyName('C_Destinacio').asString = '9');
  N_Desti_cont_int.Visible := Desti_cont_int.Visible;
  Desti_cont_ext.Visible := pDestinacio.Visible and (tTractaments.FieldbyName('C_Destinacio').asString = '2');
  N_Desti_cont_ext.Visible := Desti_cont_ext.Visible;
  Desti_cont_intPreAlta.Visible := Desti_cont_int.Visible; N_Desti_cont_intPreAlta.Visible := N_Desti_cont_int.Visible;
  Desti_cont_extPreAlta.Visible := Desti_cont_ext.Visible; N_Desti_cont_extPreAlta.Visible := N_Desti_cont_ext.Visible;
  if ((tTractaments.FieldbyName('DESTI_CONT_INT').isNull)
  or (tTractaments.FieldbyName('DESTI_CONT_INT').asString = '-1')) then Desti_cont_intPreAlta.EtiFontColor := clRed
                                                                   else Desti_cont_intPreAlta.EtiFontColor := clWindowText;
  if ((tTractaments.FieldbyName('DESTI_CONT_EXT').isNull)
  or (tTractaments.FieldbyName('DESTI_CONT_EXT').asString = '-1')) then Desti_cont_extPreAlta.EtiFontColor := clRed
                                                                   else Desti_cont_extPreAlta.EtiFontColor := clWindowText;

  pConfirmacioStock.Visible     := TeDretPresta(Prestacio, [103]);
  edHoraAlta.Visible            := TeDretPresta(Prestacio, [113,223]);
end;


procedure TwFitxaFiliacio.cambioenOrigen(Sender: TField);
begin

       if ((Sender.Value = 2) or (Sender.Value = 4) or (Sender.Value = 12))
       then begin
           pUCI.Visible       := TeDretPresta( tTractaments.FieldbyName('C_Prestacio').asString, [156]);       
           pHospital.Visible  := TeDretPresta( tTractaments.FieldbyName('C_Prestacio').asString, [51 ]);
       end
       else begin
               pUCI.Visible       := False;
               pHospital.Visible  := False;
               if tTractaments.RequestLive then
               begin
                  if (not tTractaments.EstaEditando) then tTractaments.Edit;
                  tTractaments.FieldByName('UCI').AsString := 'N';
                  tTractaments.FieldbyName('C_HospitalOrigen').asInteger := -1;
               end;
            end;

   if ((EsPle(tTractaments.FieldbyName('C_Origen').asString)) AND (tTractaments.FieldbyName('C_Origen').asString <> '0'))
   then EditOrigen.EtiFontColor := clWindowText
   else EditOrigen.EtiFontColor := clRed;

end;


procedure TwFitxaFiliacio.cambioenMotiu(Sender: TField);
begin
    NoFacturableSCS := TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [198])
                       or TeDretMotiu(tTractaments.FieldByName('C_Motiu').AsInteger, [16]);

    if ((EsPle(tTractaments.FieldbyName('C_Motiu').asString)) AND (tTractaments.FieldbyName('C_Motiu').asString <> '0'))
    then EditMotiuEspera.EtiFontColor := clWindowText
    else EditMotiuEspera.EtiFontColor := clRed;
end;

procedure TwFitxaFiliacio.cambioenModalitat(Sender: TField);
begin
    if ((EsPle(tTractaments.FieldbyName('C_Modalitat').asString)) AND (tTractaments.FieldbyName('C_Modalitat').asString <> '0'))
    then EditModalitatEspera.EtiFontColor := clWindowText
    else EditModalitatEspera.EtiFontColor := clRed;
end;

procedure TwFitxaFiliacio.tTractaments_C_MotiuChange(Sender: TField);
begin
    CambioenMotiu(Sender);
end;

procedure TwFitxaFiliacio.tTractaments_C_ModalitatChange(Sender: TField);
begin
    Cambioenmodalitat(Sender);
end;

procedure TwFitxaFiliacio.tTractaments_C_OrigenChange(Sender: TField);
begin
    CambioenOrigen(Sender);
end;


procedure TwFitxaFiliacio.ProgramarPrestacio;
var
  TeProgramada:Char;
  EsperaProgramada: String;

  tmp_MotiuProgramacio,
  tmp_FrequenciaProgramacio,
  tmp_CaracterProgramacio,
  tmp_ComentariMetge{,
  tmp_ComentariInfermeria}:String;


    procedure VerificarDades; {@@Ricardo}
    begin

       if esBuit(C_MotiuProgramacio.EditValue)
       then tmp_MotiuProgramacio := '0'
       else tmp_MotiuProgramacio := C_MotiuProgramacio.EditValue;

       if esBuit(FrequenciaProgramacio.EditValue)
       then tmp_FrequenciaProgramacio := 'NULL'
       else tmp_FrequenciaProgramacio := '"'+FrequenciaProgramacio.EditValue+'" ';

       if esBuit(CaracterProgramacio.EditValue)
       then tmp_CaracterProgramacio := '0'
       else tmp_CaracterProgramacio := CaracterProgramacio.EditValue;

       if esBuit(ComentariMetge.EditValue)
       then tmp_ComentariMetge := 'NULL'
       else tmp_ComentariMetge := '"'+ComentariMetge.EditValue+'"';

  {    ¡¡DE MOMENTO DESHABILITADO!! Pero asi ya ta hecho.
       if esBuit(ComentariInfermeria.EditValue)
       then tmp_ComentariInfermeria := 'NULL, '
       else tmp_ComentariInfermeria := '"'+ComentariInfermeria.EditValue+'", ';}

    end;


begin

  if EsPle(tTractaments.FieldbyName('C_EsperaProgramada').asString) then
  begin
    TeProgramada := 'S';
    EsperaProgramada := '"'+tTractaments.FieldbyName('C_EsperaProgramada').asString+'"';
  end
  else
  begin
    TeProgramada := 'N';
    EsperaProgramada := 'NULL';
  end;

  VerificarDades;

  tTractaments.FieldbyName('C_EsperaProgramada').asString :=
  SelectSQLfmt(wData.Projecte.DataBaseName,
               'Select C_Espera from P_ESPERA_INSPROG(%d, "%s", %s, %s, %s, %s, NULL, "%s", "%s", %s)',
               [ tTractaments.FieldbyName('C_Tractament').asInteger,
                 C_PrestaProgramada.EditValue,
                 tmp_MotiuProgramacio,
                 tmp_FrequenciaProgramacio,
                 tmp_CaracterProgramacio,
                 tmp_ComentariMetge,
               //tmp_ComentariInfermeria,
                 tTractaments.FieldbyName('C_MetgePreAlta').asString,
                 TeProgramada,
                 EsperaProgramada ]);
end;


procedure TwFitxaFiliacio.DesProgramarPrestacio;
begin

   if AvisoSN('Vol Eliminar la Espera Programada?') Then
   begin
      try
           GutExecute('Update Espera Set Exclos = "S" Where C_Espera = %s', [tTractaments.FieldbyName('C_EsperaProgramada').asString]);

      finally

           tTractaments.FieldbyName('C_EsperaProgramada').Clear;
           C_PrestaProgramada.EditValue    := '';
           N_PrestaProgramada.EditValue    := '';
           C_MotiuProgramacio.EditValue    := '';
           N_MotiuProgramacio.EditValue    := '';
           CaracterProgramacio.EditValue   := '';
           N_CaracterProgramacio.EditValue := '';
           FrequenciaProgramacio.EditValue := '';
           N_Frequencia.EditValue          := '';
           ComentariMetge.EditValue        := '';
//           ComentariInfermeria.EditValue   := '';

      end;
   end;
end;


procedure TwFitxaFiliacio.ActualitzaEsperaProgramada;
var
  tmp_MotiuProgramacio,
  tmp_FrequenciaProgramacio,
  tmp_CaracterProgramacio,
  tmp_ComentariMetge{,
  tmp_ComentariInfermeria}:String;


    procedure VerificarDades;
    begin

       if esBuit(C_MotiuProgramacio.EditValue)
       then tmp_MotiuProgramacio := '0'
       else tmp_MotiuProgramacio := C_MotiuProgramacio.EditValue;

       if esBuit(FrequenciaProgramacio.EditValue)
       then tmp_FrequenciaProgramacio := 'NULL'
       else tmp_FrequenciaProgramacio := '"'+FrequenciaProgramacio.EditValue+'" ';

       if esBuit(CaracterProgramacio.EditValue)
       then tmp_CaracterProgramacio := '0'
       else tmp_CaracterProgramacio := CaracterProgramacio.EditValue;

       if esBuit(ComentariMetge.EditValue)
       then tmp_ComentariMetge := 'NULL'
       else tmp_ComentariMetge := '"'+ComentariMetge.EditValue+'"';

  {    ¡¡DE MOMENTO DESHABILITADO!! Pero asi ya ta hecho.
       if esBuit(ComentariInfermeria.EditValue)
       then tmp_ComentariInfermeria := 'NULL, '
       else tmp_ComentariInfermeria := '"'+ComentariInfermeria.EditValue+'", ';}

    end;

begin
    VerificarDades;

    GutExecute('Update Espera set C_Prestacio = "%s", C_Motiu = %s, C_Frecuencia = %s, C_Caracter = %s, ComentariMetge = %s  where C_Espera = %s',
               [C_PrestaProgramada.EditValue, tmp_MotiuProgramacio, tmp_FrequenciaProgramacio, tmp_CaracterProgramacio, tmp_ComentariMetge, tTractaments.FieldbyName('C_EsperaProgramada').asString]);
end;

procedure TwFitxaFiliacio.ValidaDataAlta(data_ingres: TDateTime; hora_ingres: String; data_alta: TDateTime; hora_alta: String);
var
 dataI, dataA: String;
 dIngres, dAlta: TDateTime;
begin
   // glpi 38582: la data d'alta d'una 1004 només pot ser passda
   if data_alta >= DateServer then FerError('La data d''alta ha de ser passada.', True); 

   // glpi 29712: es considera ingrés si com a mínim està 16 hores a l'hospital o hi ha pernoctat (= hi ha canvi de dia)
   if data_ingres = data_alta then
   begin
       dataI := DateTimeToStr(data_ingres)+' '+hora_ingres+':00';
       dataA := DateTimeToStr(data_alta)  +' '+hora_alta  +':00';

       dIngres := StrToDateTime(dataI);
       dAlta   := StrToDateTime(dataA);

       if      dIngres > dAlta         then FerError('La data d''ingrés no pot ser posterior a la data d''alta.', True)
       else if dAlta - dIngres < 16/24 then FerError('Un ingrés ha de durar un mínim de 16 hores o haver pernoctat (l''alta és al dia següent a l''ingrés). '+NLine+
                                                     'En cas contrari, s''ha de canviar la prestació per una de compatible o anul·lar-la i filiar-ne una de nova.', True);
   end;
end;


procedure TwFitxaFiliacio.HYBarra1AlPost(Sender: TObject);
var
  NombPrestacio, TempPresta, tmp, NuevaEspera,  OldPrestacio,
  TMPTRACTAMENT : String;
  cont,CONTADOR : Integer;
  DF            : TDadesFac;
  Insertando    : Boolean;
  presta_no_comp: String;
  errorcomp: String;
  unGraficClass: TGraphicClass;
  datafoto: TDateTime;
  usuarifoto: String;
  qEspera, qOM: TQuery;
  error: Boolean;
  texterror: String;
  i: integer;
  horaActual,minActual,modif: string;
  resultatcua: TTiquet;
  hora, minut: Smallint;
  UltimaAlta: TDateTime;
  RutaOrigen, RutaDesti, NomArxiuOrigen, FitxerOrigen, NomArxiuDesti, FitxerDesti: String;
  EsEASE: Boolean;
  idLog: Integer;
  DOW: Integer;
  Dia, HoraCanvis: TDateTime;
  CosEmail: String;
  setText: String;
  dIngres: TDateTime;
  JSON: String;
  C_MEF: String;
  AVUI, ProperDiaLaborable: TDateTime; 
  resultatAdmissio: String;
begin
    Enfocado.SetFocus;

    if ErrorEspearProg then Exit;
    AVUI := DateServer;

    if tTractaments.Active then
    begin
        // Mirem si cal recalcular la prestació
        if (OldCentreFac <> tTractaments.FieldbyName('C_CentreFac').AsString) then
        begin

            if  (3 = GutSelect('select SUBGRUP from PRESTACION where C_PRESTACIO = "%s"',[tTractaments.FieldByName('C_Prestacio').AsString]))
            and (tTractaments.FieldByName('C_CentreFac').AsString = '04')
            and  esPle(tTractaments.FieldByName('C_Historia').AsString)
            and (tTractaments.State in [dsInsert]) then
            begin
                OldPrestacio := tTractaments.FieldByName('C_Prestacio'  ).AsString;
                
                // Si el motiu de la consulta és Preoperatori, serà una 1a visita sempre:
                if (tTractaments.FieldByName('C_Motiu').AsInteger = 61) then TempPresta := '2001'

                // Canvi d'una primera visita a segona i viceversa.
                else begin
                    TempPresta := GutSelect('select C_PRESTACIO from P_TRACTAMENTS_SEGONAVISITA("%s", "%s", "%s") where C_PRESTACIO is not NULL',
                                            [tTractaments.FieldByName('C_HISTORIA').AsString,
                                             FechaIB(tTractaments.FieldByName('DATA_INGRES').AsDateTime),
                                             tTractaments.FieldByName('C_COORDINADOR').AsString ]);

                    if (OldPrestacio <> '2001') and (TEMPPRESTA <> '2001') then TempPresta := OldPrestacio;
                end;

                NombPrestacio := GutSelect('select N_PRESTACIO from PRESTACION where C_PRESTACIO = %s', [TempPresta]);

                lPrestacio.EditValue := TempPresta + ' - ' + NombPrestacio;
                tTractaments.FieldByName('C_Prestacio').AsString := TempPresta;
            end;
        end;

        CopiarDadesFactu;

        if (tTractaments.FieldByName('C_EstatFac').AsInteger = 0)
        then FerError(' * *  CAL QUE ASSIGNEU UN ESTAT DE FACTURACIÓ DIFERENT DE ''0''  * * ', True);

        if TePapers(tTractaments.FieldByName('C_EstatFac').AsInteger) then
        begin
            if EsBuit(tTractaments.FieldByName('C_CentreFac').AsString) then FerError(Format(Avis52, ['EL CENTRE DE FACTURACIÓ']), True);

            if (tTractaments.FieldByName('C_CentreFac').AsString <> '00') then
            begin
                if   EsBuit(tTractaments.FieldByName('C_Client').AsString)
                and  TeClient(tTractaments.FieldByName('C_CentreFac').AsString)
                then FerError(Format(Avis52, ['EL CLIENT']), True);

                if   EsBuit(tTractaments.FieldByName('C_Delegacio').AsString)
                and  TeDelegacio(tTractaments.FieldByName('C_CentreFac').AsString)
                then FerError(Format(Avis52, ['EL CODI DE DELEGACIÓ']), True);
            end;
        end;

        if tTractaments.FieldByName('Coordinador_Baixa').AsString = 'B'
        then FerError(Error78, True);

        if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [42])
        and tTractaments.FieldByName('C_Coordinador').IsNull
        then FerError(Avis59, True);

        if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [66])
        and EditFrequencia.Enabled
        and tTractaments.FieldByName('C_Frequencia').IsNull
        then FerError(Avis60, True);

        if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [52])
        and (tTractaments.FieldByName('C_Caracter').AsInteger = 0)
        then FerError(Avis61, True);

        if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [149])
        and EditTSessio.Enabled
        and tTractaments.FieldByName('T_SESSIO').IsNull
        then FerError(Avis62, True);

        if pSessionsCadaXSetmanes.Visible
        and TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [22])
        and EditCadaXSetmanes.Enabled
        and (tTractaments.FieldByName('CADA_X_SETMANES').AsString = '') then
        begin
            // si no estava informat no demanar-ho a l'alta
            if EnPreAlta or EnAlta then tTractaments.FieldByName('CADA_X_SETMANES').AsInteger := 0
                                   else FerError('És obligatori indicar cada quantes setmanes s''ha de generar una visita.',True);
         end;

        if tFiliacio.FieldByName('SEXO').IsNull
        or (tFiliacio.FieldByName('SEXO').AsString = '') then  // Incondicionalmente el sexo ha de estar introducido
        begin
            Aviso(Avis24);
            Exit;
        end;

        // Dret P55: planta obligatòria
        if (ResultadoFiliacion = 90)
        and TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [55])
        and EsBuit(tTractaments.FieldByName('C_Planta').AsString)
        then FerError(Error35, True);

        // Dret P545: planta opcional.
        // Si no han posat planta, hi posarem la que tingui dret A207 (és per als hospitals de dia, i actualment van a la UH-2)
        if (ResultadoFiliacion = 90)
        and TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [545])
        and EsBuit(tTractaments.FieldByName('C_Planta').AsString) then
        begin
            tTractaments.FieldByName('C_Planta').AsString := GutSelect('select A.DESCRIPCIO from DRETSACCES D ' +
                                                                       'join ACCESOS A on D.C_ACCES = A.C_ACCES ' +
                                                                       'where D.C_DRET = "A207"', []);
        end;

        // Dret P172: té límit de sessions UNESPA => no pot tenir freqüècia <3D
        if  TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [172])
        and (tTractaments.FieldByName('Client_Es_Unespa').AsString = 'S')
        and (tTractaments.FieldByName('Frequencia_Frequencia').AsInteger < 3)
        then begin
            if  tTractaments.FieldByName('Data_sinistre').IsNull                                 then ShowMessage(Format('RECORDEU que per tractaments UNESPA amb data lesió (del sinistre) >= "%s" no es permet freqüència inferior a 3D.',[FormatDateTime('dd/mm/yyyy', UnespaDataTall2021)]))
            else if (tTractaments.FieldByName('Data_sinistre').AsDateTime >= UnespaDataTall2021) then FerError(Format('Per tractaments UNESPA amb data lesió (del sinistre) >= "%s" no es permet freqüència inferior a 3D.',[FormatDateTime('dd/mm/yyyy', UnespaDataTall2021)]),True);
        end;

        if ForaDHores then
        begin
            tTractaments.FieldByName('EsProvisional').AsString := '0';

            if EsVisita(tTractaments.FieldByName('C_Prestacio').AsString)
            then tTractaments.FieldByName('Data_Alta').AsDateTime := tTractaments.fieldByName('Data_Ingres').AsDateTime;
        end;

        // Farmatools - enviem canvi de llit si l'informen en modificar l'episodi
        if FT_ON
        and TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [252])
        and (tTractaments.state in [dsEdit]) then
        begin
            if (not EtiLlit.ReadOnly) and (not tTractaments.FieldByName('C_Llit').IsNull)
            then begin
                JSON := '{'+nline+
                        Format('''nhc1'':{ ''nhc'':%s, ''tractament'':%s, ''planta'':''%s'', ''llit'':%s}',
                               [tTractaments.FieldByName('C_Historia').AsString,tTractaments.FieldByName('C_Tractament').AsString,
                                tTractaments.FieldByName('C_Planta').AsString,tTractaments.FieldByName('C_Llit').AsString])+nline+
                        '}';

                GutExecute('insert into HL7_LOG(TAULA,PK_VALOR,C_MISSATGE,ACCIO,PAFECTATS,DATA,INFO)'+
                           '             VALUES("LLITS",%s,"ADT_A02","M","M","NOW","%s")', [tTractaments.FieldByName('C_Llit').AsString,JSON]);
            end;
        end;

       if (tTractaments.state in [dsInsert]) then
       begin
           // Desembre 2019: les prestacions de BCN es poden filiar amb tanta antelació com es vulgui (però avisarem)
           // Canviem la manera de fer servir els drets:

           // Prestacions que s'han de filiar amb data d'avui
           if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [173]) then
           begin
               if (tTractaments.FieldByName('Data_Ingres').AsDateTime < Fecha_Server) then  FerError(Avis32, True);
           end
           // Prestacions que es poden filiar fins amb 7 dies de retard
           else if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [9]) then
           begin
               if (tTractaments.FieldByName('Data_Ingres').AsDateTime < Fecha_Server-7) then FerError(Avis44, True);
           end
           // Prestacions que es poden filiar a posteriori sense restricció
           else begin
               if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [1])     // llista d'espera - prestacions llargues
               and (tTractaments.FieldByName('Data_Ingres').AsDateTime < Fecha_Server-7)  // avisem si van més enrere de 7 dies
               and not AvisoSN('DATA D''INGRÉS ANTERIOR A 7 DIES. '+ NLine + 'SEGUR QUE VOLEU CONTINUAR?', 'Atenció') then Abort;

               if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [2])    // agenda - consulta externa
               and (tTractaments.FieldByName('Data_Ingres').AsDateTime < Fecha_Server)   // avisem si filien a data passada
               and not AvisoSN('DATA D''INGRÉS PASSADA. '+ NLine + 'SEGUR QUE VOLEU CONTINUAR?', 'Atenció') then Abort;
           end;

           // Si filien amb data passada, comprovem compatibilitats
           if (tTractaments.FieldByName('Data_Ingres').AsDateTime < Fecha_Server)
           and EsPle(tTractaments.FieldByName('C_Historia').AsString)
           then begin
               errorcomp := '';
               TRY
                 // busquem totes les prestacions que estaven actives entre la data d'ingrés nova i avui, amb les seves incompatibilitats
                 // i mirem si la prestació que filien és una d'elles (de les incompatibilitats)
                 presta_no_comp := GutSelect('select T.C_PRESTACIO ' +
                                             'from TRACTAMENTS T join PRESTACOMP P on P.C_PRESTACIO = T.C_PRESTACIO ' +
                                             'join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "ESTATFACTU" and X.R_CODI <> 9 ' +  // no anul·lades
                                             'where T.C_HISTORIA = %d ' +
                                             'and   T.DATA_ALTA >= "%s" ' +  // no cal mirar les actives pq ja ho haurà comprovat abans
                                             'and P.C_PRESTACOMP = "%s"',
                                             [tTractaments.FieldByName('C_Historia').AsInteger,
                                              FormatDateTime('dd.mm.yyyy', tTractaments.FieldByName('Data_Ingres').AsDateTime),
                                              tTractaments.FieldByName('C_Prestacio').AsString]);
               EXCEPT
                 on e: Exception do errorcomp := 'Hi ha hagut un error en comprovar compatibilitats. ' + NLine +  e.Message;
               END;
               if (errorcomp <> '') then FerError(errorcomp, True);
               if (presta_no_comp <> '') then FerError('Hi ha una prestació (%s) amb data d''alta posterior a la data d''ingrés de la que esteu filiant, ' +
                                                       'que és incompatible amb la que esteu filiant', [presta_no_comp], True);
           end;

           // Filiació a futur
           if (tTractaments.FieldByName('Data_Ingres').AsDateTime > Fecha_Server) then
           begin
               // Només permesa per a certes prestacions (ingrés i CMA)
               if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [253]) then
               begin
                   // i només amb un dia laborable d'antelació
                   ProperDiaLaborable := AVUI+1;
                   while NoEsLaborable(ProperDiaLaborable) do ProperDiaLaborable := ProperDiaLaborable +1;  

                   if (tTractaments.FieldByName('Data_Ingres').AsDateTime > ProperDiaLaborable)
                   then FerError('LA DATA D''INGRÉS NO POT ANAR MÉS ENLLÀ DEL PROPER DIA LABORABLE', True);
               end
               else FerError(Avis67, True);
           end;

           // Actualitzem la data d'alta si és consulta externa (tipus 2)
           // S'ha de fer per prestacions de dia únic (2005 no és tipus 2!)
           {- if EsVisita(tTractaments.FieldByName('C_Prestacio').AsString)
           then tTractaments.FieldByName('Data_Alta').AsDateTime := tTractaments.fieldByName('Data_Ingres').AsDateTime; -}
           if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [92]) // prestació de dia únic
           then tTractaments.FieldByName('Data_Alta').AsDateTime := tTractaments.FieldByName('Data_Ingres').AsDateTime;

           // Comprovem hora ingrés i li donem un format correcte
           {if pHora.Visible then
           begin
               TRY
                 hora  := StrToInt(Copy(tTractaments.FieldByName('Hora').AsString, 1, 2));
                 minut := StrToInt(Copy(tTractaments.FieldByName('Hora').AsString, 4, 2));
                 if (hora > 24) or (minut > 60) then FerError('HORA INCORRECTA', True);

                 dIngres := StrToDateTime(tTractaments.FieldByName('Data_Ingres').AsString+' '+tTractaments.FieldByName('Hora').AsString+':00');
                 if dIngres > NowServer then FerError(Avis67, True);
               EXCEPT
                 FerError('HORA INCORRECTA', True);
               END;
               tTractaments.FieldByName('Hora').AsString := JustificaC(IntToStr(hora), 2, '0') + ':' + JustificaC(IntToStr(minut), 2, '0');
           end;  }

           // PROCÉS NR: Si indiquen motiu TIR i ja ha tingut un procés finalitzat, demanem confirmació (si no hi ha una nova lesió)
           if TeDretMotiu(tTractaments.FieldByName('C_Motiu').AsInteger, [1])
           and TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [33]) then
           begin
               // Busquem últim procés
               UltimaAlta := GutSelect('select Max(DATA_ALTA) from TRACTAMENTS ' +
                                       'where C_HISTORIA = %d and (C_PRESTACIO = "1004" or C_PRESTACIO = "2014") and C_PROCES is not NULL ',
                                       [tTractaments.FieldByName('C_Historia').AsInteger]);
               // Si l'últim procés està tancat fa més de 180 dies (es tanca automàticament als 30 dies)...
               if (UltimaAlta <> 0) and (UltimaAlta < AVUI - 180) then
               begin
                   // ...i no hi ha nova lesió (amb data_registre de fa menys d'un mes, i amb C_Proces nul)
                   if (0 = GutSelect('select COUNT(*) from LESIONS_SUCCESSIVES ' +
                                     'where C_HISTORIA = %d and DATA_REGISTRE >= "TODAY" -30 and C_PROCES is NULL',
                                     [tTractaments.FieldByName('C_Historia').AsInteger]))
                   // -> demanem confirmació: "segur que és TIR?"
                   then if not AvisoNS('Aquest pacient va finalitzar el PROCÉS REHABILITADOR. ' + NLine +
                                       '(només pot tornar a ingressar per TIR en cas de tenir una nova lesió) ' + NLine + NLine +
                                       'SEGUR QUE TORNA A INGRESSAR PER TRACTAMENT I REHABILITACIÓ? ')
                   then Abort;
               end;

               // Recuperem CAFE de l'últim tractament del procés per arrossegar-lo si està buit
               if tTractaments.FieldByName('C_MEF').IsNull or (tTractaments.FieldByName('C_MEF').AsString='') then
               begin
                   C_MEF := GutSelect('SELECT C_MEF FROM TRACTAMENTS WHERE C_HISTORIA = %d AND DATA_ALTA IS NOT NULL '+
                                      'AND (C_PRESTACIO = "1004" or C_PRESTACIO = "2014") and C_PROCES is not NULL   '+
                                      'ORDER BY DATA_ALTA DESC ROWS 1',[tTractaments.FieldByName('C_Historia').AsInteger]);
                   tTractaments.FieldByName('C_MEF').AsString := C_MEF;
               end;
           end;

       end;

       // Comprovem hora ingrés i li donem un format correcte (tant si estem afegint com si estem modificant registre)
       if pHora.Visible then
       begin
           TRY
             hora  := StrToInt(Copy(tTractaments.FieldByName('Hora').AsString, 1, 2));
             minut := StrToInt(Copy(tTractaments.FieldByName('Hora').AsString, 4, 2));
             if (hora > 24) or (minut > 60) then FerError('HORA INCORRECTA', True);
             dIngres := StrToDateTime(tTractaments.FieldByName('Data_Ingres').AsString + ' ' + tTractaments.FieldByName('Hora').AsString + ':00');
             if (tTractaments.FieldByName('Data_Ingres').AsDateTime = AVUI) and (dIngres > NowServer) then
             begin
                 FerError(Avis67, False);  // Si fem True aquí, genera exepció i retorna "hora incorrecta", crec.
                 Abort;
             end
             else
           EXCEPT
             FerError('HORA INCORRECTA', True);
           END;
           tTractaments.FieldByName('Hora').AsString := JustificaC(IntToStr(hora), 2, '0') + ':' + JustificaC(IntToStr(minut), 2, '0');
       end;

//-       if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [49]) and (tTractaments.FieldByName('C_Motiu').AsInteger = 0)
       if PrestaTeCodiCamps(tTractaments.FieldByName('C_Prestacio').AsString, 'MOTIU') and (tTractaments.FieldByName('C_Motiu').AsInteger = 0)
       then FerError(Avis25, True);

       if PrestaTeCodiCamps(tTractaments.FieldByName('C_Prestacio').AsString, 'ATENCIO.MODALITAT') and (tTractaments.FieldByName('C_Modalitat').AsInteger = 0)
       then FerError(Avis69, True);

       if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [50]) then
       begin
           if (tTractaments.FieldByName('C_Origen').AsInteger = 0) then
           begin
               if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [165])
               and (tTractaments.FieldByName('C_Prestacio').AsString <> '2001') and (tTractaments.FieldByName('C_Prestacio').AsString <> '1008')
               then tTractaments.FieldByName('C_Origen').AsInteger := 10
               else begin
                   PC.ActivePage := tsPrestacio;
                   PCChange(PC);
                   EditOrigen.SetFocus;
                   FerError(Avis57, True);
               end;
           end;

           if (tTractaments.FieldByName('C_Origen').AsInteger in [2,4,12])
           and (tTractaments.FieldByName('C_HospitalOrigen').IsNull or (tTractaments.FieldByName('C_HospitalOrigen').AsString = '-1'))
           then  FerError(Avis58, True);
       end;

       DesaLogHorariRehab := False;
       if (tTractaments.FieldByName('Hora_Ini_Rehab').AsString <> '') then
       begin
           TRY
             hora  := StrToInt(Copy(tTractaments.FieldByName('Hora_Ini_Rehab').AsString, 1, 2));
             minut := StrToInt(Copy(tTractaments.FieldByName('Hora_Ini_Rehab').AsString, 4, 2));
             if (hora > 24) or (minut > 60) then FerError('HORA INICI REHABILITACIÓ INCORRECTA', True);
           EXCEPT
             FerError('HORA INICI REHABILITACIÓ INCORRECTA', True);
           END;
           tTractaments.FieldByName('Hora_Ini_Rehab').AsString := JustificaC(IntToStr(hora), 2, '0') + ':' + JustificaC(IntToStr(minut), 2, '0');
           DesaLogHorariRehab := True;
       end;

       if (tTractaments.FieldByName('Hora_Fin_Rehab').AsString <> '') then
       begin
           TRY
             hora  := StrToInt(Copy(tTractaments.FieldByName('Hora_Fin_Rehab').AsString, 1, 2));
             minut := StrToInt(Copy(tTractaments.FieldByName('Hora_Fin_Rehab').AsString, 4, 2));
             if (hora > 24) or (minut > 60) then FerError('HORA FINAL REHABILITACIÓ INCORRECTA', True);
           EXCEPT
             FerError('HORA FINAL REHABILITACIÓ INCORRECTA', True);
           END;
           tTractaments.FieldByName('Hora_Fin_Rehab').AsString := JustificaC(IntToStr(hora), 2, '0') + ':' + JustificaC(IntToStr(minut), 2, '0');
           DesaLogHorariRehab := True;
       end;

       if EnPreAlta then
       begin
           if  (not tTractaments.FieldByName('Data_preAlta').IsNull)
           and (tTractaments.FieldByName('Data_preAlta').AsDateTime < Fecha_Server)
           then FerError(Format(Avis50, ['DE PREALTA', 'PASSADA']), True);

           if EsBuit(tTractaments.FieldByName('C_MetgePreAlta').AsString)
           then FerError('ABANS D''INCLOURE L''ESPERA PROGRAMADA, EL METGE DE PREALTA HA D''ESTAR DEFINIT', True);

           if EsBuit(tTractaments.FieldByName('C_EsperaProgramada').AsString) or tTractaments.FieldByName('C_EsperaProgramada').IsNull then
           begin
               if EsPle(C_PrestaProgramada.EditValue) then ProgramarPrestacio;
           end
           else if EsBuit(C_PrestaProgramada.EditValue) then DesprogramarPrestacio;

           if EsPle(tTractaments.FieldByName('C_EsperaProgramada').AsString)
           then ActualitzaEsperaProgramada;

           if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [102]) then
           begin
               if (tTractaments.FieldByName('C_Destinacio').AsInteger = 6) then
               begin
                   // Si el fem exitus ensenyem les prestacions que s'exclouen que tenia pendents
                   tmp := ExclourePrestacionsActives(tFiliacio.FieldbyName('Num_Hist').AsString);
                   if EsPle(tmp) then ShowMensaje(tmp);

                   tFiliacio.FieldByName('Mort').AsDateTime := tTractaments.FieldByName('Data_Alta').AsDateTime;

                   // Si el fem exitus ensenyem les intervencions quirúrgiques que s'exclouen i que tenia pendents
                   tmp := ExcloureAltresActives(tFiliacio.FieldbyName('Num_Hist').AsString);
                   if EsPle(tmp) then ShowMensaje(tmp);

                   tmp := ExcloureTractamentsActius(tFiliacio.FieldbyName('Num_Hist').AsString, True);
                   if EsPle(tmp) then ShowMensaje(tmp);

                   tmp := FinalitzarProcesActiu(tFiliacio.FieldbyName('Num_Hist').AsString, True);
                   if EsPle(tmp) then ShowMensaje(tmp);
               end;

               if (tTractaments.FieldByName('C_Destinacio').AsInteger = 2) then
               begin
                   if tTractaments.FieldByName('C_HospitalDesti').IsNull or (tTractaments.FieldByName('C_HospitalDesti').AsString = '-1')
                   then FerError(Avis56, True);
               end;
           end;
       end;

       if EnAlta then
       begin
           // a tTractamentsCalcFields es mira si no es anterior a la data de consolidaci del SIIG. No cal restringir mes.
           {if  (not tTractaments.FieldByName('Data_Alta').IsNull)
           and (tTractaments.FieldByName('Prestacio_EsEase').AsString <> 'C')  // per prestacions NPC permetem posar data d'alta tan enerere com vulguin
           then begin
               if (tTractaments.FieldByName('C_CentreFac').AsString = '00')
               or (tTractaments.FieldByName('C_CentreFac').AsString = '50') then
               begin
                    if (tTractaments.FieldByName('Data_Alta').AsDateTime < (Fecha_Server -10))
                    then FerError(Format(Avis50, ['D''ALTA', 'ANTERIOR A DEU DIES']), True);
               end
               else if (tTractaments.FieldByName('Data_Alta').AsDateTime < (Fecha_Server -5))
                    then FerError(Format(Avis50, ['D''ALTA', 'ANTERIOR A CINC DIES']), True);
           end;  }

           if (not tTractaments.FieldByName('Data_Alta').IsNull)
           and (tTractaments.FieldByName('Data_Alta').AsDateTime <= wData.QParametres.FieldByName('DataConsolidatFins').AsDateTime)
           then FerError('Data d''alta incorrecta: dades ja consolidades.',True);

           // bb: Comprovo hora alta i li dono un format correcte:
           if edHoraAlta.Visible then
           begin
               TRY
                 hora  := StrToInt(Copy(tTractaments.FieldByName('Hora_Alta').AsString, 1, 2));
                 minut := StrToInt(Copy(tTractaments.FieldByName('Hora_Alta').AsString, 4, 2));
                 if (hora > 24) or (minut > 60) then FerError('HORA ALTA INCORRECTA', True);
               EXCEPT
                 if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [113]) // hora alta obligatòria
                 then FerError('HORA ALTA INCORRECTA', True)
                 // si l'hora d'alta és opcional i el valor no és ok, hi posem 00:00
                 else begin
                   hora := 0;
                   minut := 0;
                 end;
               END;
               tTractaments.FieldByName('Hora_Alta').AsString := JustificaC(IntToStr(hora), 2, '0') + ':' + JustificaC(IntToStr(minut), 2, '0');
           end;

           if tTractaments.FieldByName('C_Prestacio').AsString = '1004'
           then ValidaDataAlta(tTractaments.FieldByName('Data_Ingres').AsDateTime,tTractaments.FieldByName('Hora'     ).AsString,
                               tTractaments.FieldByName('Data_Alta'  ).AsDateTime,tTractaments.FieldByName('Hora_alta').AsString);

           if TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [102]) then
           begin
               if tTractaments.FieldByName('C_Destinacio').IsNull or (tTractaments.FieldByName('C_Destinacio').AsString = '0')
               then FerError(Avis51, True);

               if (tTractaments.FieldByName('C_Destinacio').AsString = '6' ) then
               begin
                   // Si el fem exitus ensenyem les prestacions que s'exclouen que tenia pendents
                   tmp := ExclourePrestacionsActives(tFiliacio.FieldbyName('Num_Hist').AsString);
                   if EsPle(tmp) then ShowMensaje(tmp);

                   tFiliacio.FieldByName('Mort').AsDateTime := tTractaments.FieldByName('Data_Alta').AsDateTime;

                   // Si el fem exitus ensenyem les intervencions quirúrgiques que s'exclouen i que tenia pendents
                   tmp := ExcloureAltresActives(tFiliacio.FieldbyName('Num_Hist').AsString);
                   if EsPle(tmp) then ShowMensaje(tmp);

                   // 7-2-2019: afegim tractaments i proces NR
                   tmp := ExcloureTractamentsActius(tFiliacio.FieldbyName('Num_Hist').AsString, True);
                   if EsPle(tmp) then ShowMensaje(tmp);

                   tmp := FinalitzarProcesActiu(tFiliacio.FieldbyName('Num_Hist').AsString, True);
                   if EsPle(tmp) then ShowMensaje(tmp);
               end;

               if (tTractaments.FieldByName('C_Destinacio').asString = '2') then
               begin
                   if tTractaments.FieldByName('C_HospitalDesti').IsNull or (tTractaments.FieldByName('C_HospitalDesti').AsString = '-1')
                   then FerError(Avis56, True);
               end;
           end;

           // Si en la PreAlta Incluimos una Programación de Espera, al Alta la ponemos como activa.
           if EsPle(tTractaments.FieldByName('C_EsperaProgramada').asString)
           then GutExecute('update ESPERA set C_ESTAT = 21 where C_ESPERA = %s', [tTractaments.FieldbyName('C_EsperaProgramada').asString]);

       end;

       if TePapers(tTractaments.FieldbyName('C_EstatFac').asInteger) then
       begin
           // Comprovem si les dades de facturacio son correctes
           with DF, tTractaments do
           begin
               C_CentreFac        := FieldByName('C_CentreFac'       ).AsString;
               C_Client           := FieldByName('C_Client'          ).AsString;
               C_Delegacio        := FieldByName('C_Delegacio'       ).AsString;
               CaducaPermis       := FieldByName('CaducaPermis'      ).AsDateTime;
               PercentatgePacient := FieldByName('PercentatgePacient').AsFloat;
               Referencia         := FieldByName('Referencia'        ).AsString;
           end;
           if not CheckDadesFac(DF) then FerError(Error24,True);
       end;
    end;

    if tFiliacio.Active then
    begin
        try
          if tFiliacio.FieldByName('Consentiment').IsNull then tFiliacio.FieldByName('Consentiment').AsString := 'N';

          tFiliacio.FieldbyName('DNI').AsString := Trim(tFiliacio.FieldbyName('DNI').AsString);
          WaitOn('Guardant dades de filiació...');
                             
          tFiliacio.FieldByName('Apellido1').AsString := Trim(tFiliacio.FieldByName('Apellido1').AsString);
          tFiliacio.FieldByName('Apellido2').AsString := Trim(tFiliacio.FieldByName('Apellido2').AsString);
          tFiliacio.FieldByName('Nombre'   ).AsString := Trim(tFiliacio.FieldByName('Nombre'   ).AsString);

          // ARA EN LA NOVA HCE EL TFILIACIO SEMPRE ESTA CREAT I TE NUM_HIST
          // s'ha de fer només si la NHC és nova - es fa en el IF següent
          {if tTractaments.Active then tTractaments.FieldByName('C_Historia').AsInteger := tFiliacio.FieldByName('NUM_HIST').AsInteger;
          GutExecute('update ESPERA set C_HISTORIA = %s where C_ESPERA = %s', [tFiliacio.FieldByName('NUM_HIST').AsString, NUMESPERA]);}


          // SI NO EXISTIA LA HISTORIA LE CREAMOS UN NUMERO NUEVO.
          if tFiliacio.FieldbyName('NUM_HIST').IsNull or novaHC then
          begin
              if EsNou then
              begin
                  if (0 < GutSelect('select count(*) from FILIACIO ' +
                                    'where (NOMCOMPLET containing "%s" and NOMCOMPLET containing "%s") ' +
                                    'or ("%s" <> "" and DNI = "%s") or ("%s" <> "" and TSI = "%s") or ("%s" <> "" and SOE = "%s") ',
                                    [tFiliacio.FieldbyName('apellido1').AsString, tFiliacio.FieldbyName('apellido2').AsString,
                                     Trim(tFiliacio.FieldbyName('DNI').AsString), Trim(tFiliacio.FieldbyName('DNI').AsString),
                                     Trim(tFiliacio.FieldbyName('TSI').AsString), Trim(tFiliacio.FieldbyName('TSI').AsString),
                                     Trim(tFiliacio.FieldbyName('SOE').AsString), Trim(tFiliacio.FieldbyName('SOE').AsString)]))
                  then begin
                      EsNou := False;
                      if (not nHCE_ON) then
                      begin
                          Iniciar;
                          Llistat.SortOn('nombre', Llistat.SortOptions);  // ordenem per nom
                          TRY idLog := GutSelect('select max(id) from LOGDUPLICATS', []) + 1;
                              GutExecute('insert into LOGDUPLICATS(ID, DATA, C_USUARI, NOMPC, COGNOM1, COGNOM2, C_ESPERA)'+
                                         '                  values(%d,"NOW",     "%s",  "%s",    "%s",    "%s",       %s)',
                                         [idLog,wData.UsuariActiu.Codi,wData.ID_COMPUTER,tFiliacio.FieldbyName('apellido1').asString,tFiliacio.FieldbyName('apellido2').asString,
                                          NUMESPERA]);
                          EXCEPT
                            on e:Exception do FerError('ERROR EN VALIDAR DUPLICITAT DE PACIENTS.' + NLine + Nline +
                                                       'No s''ha generat cap registra a FILIACIO ni a TRACTAMENTS.' + NLine + 'Cal que torneu a DESAR les dades. ' +
                                                       'Aviseu a informàtica. '+ NLine + NLine + e.Message, False);
                          END;
                          Abort;
                      end;
                   end;
              end;

              // Posem TRY EXCEPT per controlar petades per duplicitat de número d'història (si estan filiant 2 nous alhora)
              // Com que està dins d'un TRY FINALLY, si peta per aquest motiu, seguia executant codi i insertava el tractament!
              // Ara fem que si no pot crear el nou registre a FILIACIO, aborti.
              if (not nHCE_ON) then
              begin
                  TRY
                    tFiliacio.New.OpenFisrt := False;
                    tFiliacio.InsertTable;
                  EXCEPT
                    on e:Exception do
                    begin
                      FerError('ERROR EN GENERAR EL NOU NÚMERO D''HISTÒRIA (%d).' + NLine + 'Possible duplicitat.' + NLine + Nline +
                               'No s''ha generat cap registre a FILIACIO ni a TRACTAMENTS.' + NLine + 'Cal que torneu a DESAR les dades.' +
                                NLine + NLine + e.Message,
                               [tFiliacio.FieldByName('NUM_HIST').AsInteger]);
                      tFiliacio.FieldByName('NUM_HIST').Clear;
                      Abort;
                    end;
                  END;
              end;
              // Moc aquestes dues línies després del TRY. A més, amb això potser podem treure l'assignació manual de NHC (ja ho farà el trigger)
              if tTractaments.Active then tTractaments.FieldByName('C_Historia').AsInteger := tFiliacio.FieldByName('NUM_HIST').AsInteger;
              GutExecute('update ESPERA set C_HISTORIA = %s where C_ESPERA = %s', [tFiliacio.FieldByName('NUM_HIST').AsString, NUMESPERA]);

              TRY
                // Si hem filiat un nou pacient, bolquem els informes de Sol·licituds d'Ingrés a Informes Externs o a Informes (si són d'EASE)
                qInfSol.Close;
                qInfSol.ParamByName('idregistre').AsInteger := GutSelect('select IDREGISTRE from ESPERA where C_ESPERA = %s', [NUMESPERA]);
                qInfSol.Open;
                qInfSol.First;
                RutaOrigen := GutSelect('select RUTA from DIRECTORIS where NOM = "SOL.INGRES"', []);
                EsEASE := (qInfSol.FieldByName('Tipus').AsString = 'PAD');
                if EsEASE then RutaDesti := GutSelect('select RUTA from DIRECTORIS where NOM = "INFMET"', [])
                          else RutaDesti := GutSelect('select RUTA from DIRECTORIS where NOM = "INFEXTERNS"', []);
                RutaDesti  := IdentificaDirectori(RutaDesti, tFiliacio.FieldByName('NUM_HIST').AsString);
                while not qInfSol.Eof do
                begin
                    NomArxiuOrigen := qInfSol.FieldByName('NomArxiu').AsString;
                    FitxerOrigen := ConcatFilePath(RutaOrigen, NomArxiuOrigen);
                    if EsEASE then NomArxiuDesti := JustificaC(tFiliacio.FieldByName('NUM_HIST').AsString, -5, '0') + 'PAD' +
                                                    FormatDateTime('yyyymmdd', qInfSol.FieldByName('Data').AsDateTime) +
                                                    qInfSol.FieldByName('Usuari').AsString + '.pdf'
                              else NomArxiuDesti := JustificaC(tFiliacio.FieldByName('NUM_HIST').AsString, -5, '0') + '-' + NomArxiuOrigen;
                    FitxerDesti := ConcatFilePath(RutaDesti, NomArxiuDesti);

                    CopyFile(PChar(FitxerOrigen), PChar(FitxerDesti), False);
                    qInfSol.Next;
                end;
              EXCEPT
                 on e: Exception do FerError('No s''han pogut traspassar els informes al Curs Clínic.' + NLine +
                                             'Haureu de fer-ho manualment' + NLine + NLine +
                                             'Error: ' + e.Message, False);
              END;

          end
          else begin
              tFiliacio.New.OpenFisrt := False;
              tFiliacio.UpdateTable;
          end;

          if (wData.UsuariActiu.Codi = '') then PreguntaMetge;
          wMain.StatusTraza := '';
          wMain.LastTraza := wData.ObraTrazaControl(tFiliacio.FieldbyName('NUM_HIST').AsInteger, consulta, wMain.Aplica);
          wMain.AddStatusTraza('j');
          wData.TancaTrazaControl(wMain.LastTraza,wMain.StatusTraza);

          if (tFotos.State in [dsInsert, dsEdit]) then
          begin
              tFotos.FieldByName('C_Historia').AsInteger := tFiliacio.FieldByName('NUM_HIST').AsInteger;
              datafoto := tFotos.FieldByName('FECHAFOTO').AsDateTime;
              usuarifoto := tFotos.FieldByName('USUARI').AsString;
              JVFotografia.Picture.SaveToFile(C_TEMPORAL + '\' + tFiliacio.FieldByName('NUM_HIST').AsString + '.jpg');

              if (tFotos.State in [dsInsert]) then tFotos.Cancel;
              if (tFotos.State in [dsEdit])   then tFotos.Delete;

              qFotos2.Close;
              qFotos2.SelectSQL.Text := 'insert into FOTOPACIENTE (FOTO, C_HISTORIA, USUARI) values (:miblob, ' + tFiliacio.FieldByName('NUM_HIST').AsString + ', :usuari)';
              qFotos2.ParamByName('miblob').Clear;
              qFotos2.ExecSQL;

              qFotos2.SelectSQL.Text := 'select * from FOTOPACIENTE where C_HISTORIA = ' + tFiliacio.FieldByName('NUM_HIST').AsString;
              dsFotos.DataSet := qFotos2;
              qFotos2.Open;
              qFotos2.Edit;
              JvDBFotografia.Picture.LoadFromFile(C_TEMPORAL + '\' + tFiliacio.FieldByName('NUM_HIST').AsString + '.jpg');
              sleep(2000);
              qfotos2.FieldByName('FECHAFOTO').AsDateTime := datafoto;
              qfotos2.FieldByName('USUARI').AsString := usuarifoto;
              qFotos2.Post;
              qFotos2.Transaction.CommitRetaining;

              DeleteFile(C_TEMPORAL + '\' + tFiliacio.FieldByName('NUM_HIST').AsString + '.jpg');

              dsFotos.DataSet := tFotos;
          end;

          if PendienteInsertarUSRA then tParent.Post;

        finally
          WaitOff;
        end;
    end;

    // Si entren o modifiquen les dades de facturació previstes per al proper tractament, les guardem
    if tFiliDadesFac.EstaEditando then
    begin
        if (tFiliDadesFac.FieldByName('C_CentreFac').AsString = '') then tFiliDadesFac.Delete
        else begin
            tFiliDadesFac.FieldByName('Usuari').AsString := wData.UsuariActiu.Codi;
            tFiliDadesFac.FieldByName('Data').AsDateTime := NowServer;

            tFiliDadesFac.New.OpenFisrt := False;
            if (tFiliDadesFac.State in [dsInsert]) then
            begin
                tFiliDadesFac.FieldByName('C_Historia').AsInteger := tFiliacio.FieldByName('Num_Hist').AsInteger;
                tFiliDadesFac.InsertTable;
            end
            else tFiliDadesFac.UpdateTable;
        end;
    end
    // altrament, si les hem bolcat al tractament que insertaven, eliminem el registre de dades de facturació previsites
    else if FiliDadesFacPassades then tFiliDadesFac.Delete;

    if tFiliTDI.EstaEditando then TRY tFiliTDI.Post; FINALLY END;

    if tTractaments.Active then
    begin
        try
          WaitOn('Guardant tractament...');

          Insertando := (tTractaments.State in [dsInsert]); // en aquesta variable guardem si s'estava insertant perquè ho necessitarem després de fer el post.

          // si la prestacié no és facturable, ho posem
          if  (TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [109]) or
              (NoFacturableSCS and (tTractaments.FieldByName('c_centrefac').AsString = '04')))
          and not (tTractaments.FieldByName('C_EstatFac').AsInteger in [50..59])  // gener 2023: si ja era no facturable per algun altre motiu, el mantenim
          then tTractaments.FieldByName('C_EstatFac').AsString := '50';

          if not (tTractaments.State in [dsEdit,dsInsert]) then tTractaments.Edit;

          if EsBuit(tTractaments.FieldByName('C_CentreFac').AsString) then tTractaments.FieldByName('C_CentreFac').Clear;
          if EsBuit(tTractaments.FieldByName('C_Client'   ).AsString) then tTractaments.FieldByName('C_Client'   ).Clear;
          if EsBuit(tTractaments.FieldByName('C_Delegacio').AsString) then tTractaments.FieldByName('C_Delegacio').Clear;

          // PER 1008 mostrar DESTINACIÓ = 1- DOMICILI però deixar-los-ho canviar
          if (tTractaments.Fieldbyname('c_prestacio').asstring = '1008') and Insertando
          then tTractaments.Fieldbyname('c_destinacio').asinteger := 1;

          if Insertando then
          begin
              tTractaments.New.OpenFisrt := False;
              if tTractaments.FieldbyName('C_Historia').IsNull or (tTractaments.FieldbyName('C_Historia').AsInteger = 0)
              then tTractaments.FieldbyName('C_Historia').AsInteger := tFiliacio.FieldByName('Num_Hist').AsInteger;
              tTractaments.InsertTable;

              // Només en el cas en que sigui un reingrés en menys de 7 dies, conservem la dieta i les observacions
              // la data d'ingrés al filiar només pot ser avui
              // NOMÉS SI ESTEM FILIANT UN NOU EL TRACTAMENT i és 1004!!!!!
              if  (tTractaments.FieldByName('c_prestacio').AsString='1004')
              and ((AVUI-7) > GutSelect('select max(data_alta) from tractaments where c_historia=%d and C_PRESTACIO="1004"',
                                              [tFiliacio.FieldByName('num_hist').AsInteger]))
              then begin
                  TRY GutExecute('update FILIACIO set C_DIETA=-1,OBS_DIETA="" where NUM_HIST=%d', [tFiliacio.FieldByName('num_hist').AsInteger]);
                  EXCEPT on e: Exception do ShowMessage('No s''ha pogut ressetejar la dieta del pacient '+tFiliacio.FieldByName('num_hist').AsString+Nline+
                                                        'Error: '+e.Message);
                  END;
              end;
              // Si la prestacio te dret de ressetejar hora de dinar
              if TeDretPresta(tTractaments.FieldByName('c_prestacio').AsString, [207])
              then begin
                  TRY GutExecute('update FILIACIO set C_UBICACIO_DINAR=NULL, HORA_DINAR = "00:00" where NUM_HIST=%d', [tFiliacio.FieldByName('num_hist').AsInteger]);
                  EXCEPT on e: Exception do ShowMessage('No s''han pogut reinicialitzar la ubicació ni l''hora de dinar del pacient '+tFiliacio.FieldByName('num_hist').AsString+Nline+
                                                        'Error: '+e.Message);
                  END;
              end;

              mVisites.Text := '';
              // afegim a l'agenda les visites de seguiment cada X setmanes
              Dia := tTractaments.FieldByName('data_ingres').AsDateTime + (7*tTractaments.FieldByName('CADA_X_SETMANES').AsInteger);
              DOW := DiaDeLaSemana(tTractaments.FieldByName('data_ingres').AsDateTime); // 1-DLL, 2-DM, 3-DX, 4-DJ, 5-DV, 6-DSS, 7-DG

              while Dia <= tTractaments.FieldByName('data_prealta').AsDateTime do
              begin
                  TRY GutExecute('INSERT INTO ESPERA(C_ESPERA, C_HISTORIA, C_PRESTACIO, DATA_INCLUSIO, DATA_PREINGRES, NOM, COGNOM1, COGNOM2, TELEFON, C_CARACTER,C_PROCEDENCIA,    '+
                                 'C_MOTIU, COMENTARI, C_ESTAT, C_UNITAT, C_COORDINADOR, HORA_PREINGRES, NOMCOMPLET, SEXO, T_SESSIO, C_FRECUENCIA, C_TRACTAMENTORIGEN)               '+
                                 'VALUES(%d, %d, "2124", "TODAY", "%s", "%s", "%s", "%s", "%s", 0, 0, 0, "Seguiment NPT automàtic", 30, %d, "%s", "00:00", "%s", "%s", %d, "%s", %d)',
                                 [Gen_ID(wData.Projecte.DataBaseName, 'CONTALLISTAESPERA', 1), tTractaments.FieldByName('C_HISTORIA').AsInteger,
                                  FormatDateTime('dd.mm.yyyy',Dia),                    tTractaments.FieldByName('Fili_NOMBRE').AsString,
                                  tTractaments.FieldByName('Fili_APELLIDO1').AsString, tTractaments.FieldByName('Fili_APELLIDO2').AsString,
                                  tTractaments.FieldByName('Fili_TELEFONO').AsString,  tTractaments.FieldByName('Fili_UNITAT').AsInteger,
                                  tTractaments.FieldByName('C_COORDINADOR').AsString,  tTractaments.FieldByName('Fili_NOMCOMPLET').AsString,
                                  tTractaments.FieldByName('Fili_SEXO').AsString,      tTractaments.FieldByName('T_SESSIO').AsInteger,
                                  tTractaments.FieldByName('C_FREQUENCIA').AsString,   tTractaments.FieldByName('C_TRACTAMENT').AsInteger]);
                      GutExecute('INSERT INTO CONTROLNPT(ID, C_HISTORIA, C_TRACTAMENT, DATA, TIPUS)'+
                                 '                VALUES(%d,         %d,           %d, "%s",    -1)',
                                 [Gen_ID(wData.Projecte.DataBaseName,'G_CONTROLNPT', 1),tTractaments.FieldByName('C_HISTORIA').AsInteger,
                                  tTractaments.FieldByName('C_TRACTAMENT').AsInteger,   FormatDateTime('dd.mm.yyyy',Dia)]);

                      mVisites.Text := mVisites.Text + Nline +'Afegida visita de seguiment NPT el dia '+FormatDateTime('dd.mm.yyyy',Dia);
                  EXCEPT on e: Exception do ShowMessage('No s''ha pogut incloure a l''agenda la visita de seguiment NPT pel dia '+FormatDateTime('dd.mm.yyyy',Dia)+Nline+
                                                        'Error: '+e.Message);
                  END;
                  Dia := Dia + (7*tTractaments.FieldByName('CADA_X_SETMANES').AsInteger);
              end;

              // Mostrar les visites afegides a l'agende de forma automàtica
              if mVisites.Text <> '' then ShowMessage(mVisites.Text);

              // OM latent (baclofèn)
              if (NUMESPERA <> '-1') and (not AUTOGENERACIONINGRESO) then
              begin
                  qEspera := TQuery.Create(Application);
                  TRY
                    qEspera.DatabaseName := 'interna';
                    qEspera.SQL.Text := Format('select C_ESPERA, C_OM, C_HISTORIA from ESPERA where C_ESPERA = %s', [NUMESPERA]);
                    qEspera.Open;

                    if not qEspera.Fieldbyname('C_OM').IsNull then
                    begin
                        qOM := TQuery.Create(Application);
                        TRY
                          qOM.DataBaseName := 'interna';
                          qOM.SQL.Text := Format('select C_HISTORIA, C_ESTAT from ORDRESMEDIQUES where C_ORDREMEDICA = %d',
                                                 [qEspera.Fieldbyname('C_OM').AsInteger]);
                          qOM.Open;

                          error := False;

                          if not error then
                          begin
                              //* Si l'ordre mèdica està CADUCADA (pot haver caducat a l'alta), la reactivem:
                              if (qOM.FieldByName('c_estat').AsString = 'C') then
                              begin
                                  // esborrem la data de suspensió i canviem estat a 'V' si té metge_pautat informat o 'P' si no el té informat.
                                  if ('' <> GutSelect('select metge_pautat from ordresmediques where c_ordremedica = %d',
                                                      [qEspera.Fieldbyname('C_OM').AsInteger]))
                                  then GutExecute('update ordresmediques set data_suspensio = null, c_estat = "V" where C_ORDREMEDICA = %d',
                                                  [qEspera.Fieldbyname('C_OM').AsInteger])
                                  else GutExecute('update ordresmediques set data_suspensio = null, c_estat = "P" where C_ORDREMEDICA = %d',
                                                  [qEspera.Fieldbyname('C_OM').AsInteger]);
                              end;

                              // Li posem el C_TRACTAMENT que filiem:
                              GutExecute('update ORDRESMEDIQUES set C_TRACTAMENT = %d where C_ORDREMEDICA = %d',
                                         [tTractaments.FieldByName('C_Tractament').AsInteger, qEspera.Fieldbyname('C_OM').AsInteger]);
                          end;
                        FINALLY qOM.Free;
                        END;

                        if error then mandaerror2(application, nil , 'FILIANT 2006 Baclofèn: '+ texterror , false, 2);
                    end;
                  FINALLY qEspera.Free;
                  END;
              end;


          end

          else if (tTractaments.State in [dsEdit]) then
          begin
              tTractaments.New.OpenFisrt := False;
              tTractaments.UpdateTable;
          end;

          wMain.StatusTraza := '';
          wMain.LastTraza := wData.ObraTrazaControl(tFiliacio.FieldbyName('NUM_HIST').AsInteger, consulta, wMain.Aplica);
          GutExecute('update trazacontrol set referencia=%d where pk=%d',[tTractaments.FieldByName('C_Tractament').AsInteger,wMain.LastTraza]);
          wMain.AddStatusTraza('k');
          if (DataPreAltaBefore <> tTractaments.FieldByName('DATA_PREALTA').AsDateTime) then wMain.AddStatusTraza('p');
          wData.TancaTrazaControl(wMain.LastTraza,wMain.StatusTraza);

          // Si han ingressat un pacient provinent de sol·licituds d'ingrés,
          // bolquem la valoració mèdica al Curs Clínic com una anotació de tipus "valoració pre-ingrés"
          if Insertando and (tTractaments.FieldByName('C_Prestacio').AsString = '1004') then BolcaValoracioPreingres(NUMESPERA);

          if DesaLogHorariRehab then
          begin
              TRY
              idLog := Gen_ID('interna', 'G_LOGHORARIREHAB', 1);

              GutExecute('INSERT INTO LOGHORARIREHAB (ID, DATA, C_USUARI, C_TRACTAMENT, HORA_INI_REHAB, HORA_FIN_REHAB) '+
                         'VALUES (%d, "NOW", "%s", %d, "%s", "%s")',
                         [idLog, wData.UsuariActiu.Codi, tTractaments.FieldByName('C_TRACTAMENT').AsInteger,
                          tTractaments.FieldByName('Hora_Ini_Rehab').AsString, tTractaments.FieldByName('Hora_Fin_Rehab').AsString]);

              EXCEPT on E:Exception do FerError('Error en insertar a LOGHORARIREHAB: '+E.Message, True);
              END;
          end;

          // SI ÉS 1004 O 9999 AMB PRESTACIOORIGEN 1004 I C_DIETA <> NULL, IMPRIMIR A CUINA LA DIETA
          TRY
            DateTimeToString(horaActual,'hh',TimeServer);
            DateTimeToString(minActual, 'nn',TimeServer);

            qDieta.Close;
            qDieta.SQL[4] := 'WHERE T.C_TRACTAMENT = '+tTractaments.fieldByName('C_TRACTAMENT').AsString;
            qDieta.Open;

            // només quan s'inserta, no quan es modifica alguna dada a menys que sigui el llit i abans estigués buit
            if  ( (tTractaments.FieldByName('c_prestacio').AsString = '1004')
            or    ((tTractaments.FieldByName('c_prestacio').AsString = '9999') and (tTractaments.FieldByName('c_prestacioorigen').AsString = '1004'))
                )
            and (qDieta.FieldByName('c_dieta').AsInteger >= 0)
            and (not tTractaments.FieldByName('c_planta').IsNull) and (tTractaments.FieldByName('c_planta').AsString <> '')
            and (Insertando or ((llitAbans <> tTractaments.FieldByName('c_llit').AsString)) and (llitAbans = '')) then
            begin
              // El c_usuari, dieta_ant i obs_ant NULLs indica que s'ha fet des de fitxa filiació
              idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
              bloc := GutSelect('select max(bloc) from LOGDIETES',[]) + 1;
              if qDieta.FieldByName('obs_dieta').IsNull or (qDieta.FieldByName('obs_dieta').asstring = '')
              then modif := qDieta.FieldByName('c_dieta').AsString+' - sense observacions'
              else modif := qDieta.FieldByName('c_dieta').AsString+' - '+qDieta.FieldByName('obs_dieta').AsString;

              HoraCanvis:=NowServer;
              if qDieta.FieldByName('C_UBICACIO_DINAR').IsNull
              then
              GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                         'VALUES               (%d, "%s",     "%s",         %s,     "%s",   "%s",   %d,  "%s",  "%s",  "%s",       "%s",             NULL)',
                         [idlog,
                         FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                         wData.UsuariActiu.Codi,
                         qDieta.FieldByName('NUM_HIST').AsString,
                         qDieta.FieldByName('c_planta').AsString,
                         qDieta.FieldByName('c_llit').AsString,
                         bloc,
                         modif,
                         wData.ID_COMPUTER,
                         CopyLeft(wData.ID_LOGIN+'-'+horaActual,40),
                         qDieta.FieldByName('HORA_DINAR').AsString])
              else
              GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                         'VALUES               (%d, "%s",     "%s",         %s,     "%s",   "%s",   %d,  "%s",  "%s",  "%s",       "%s",             "%s")',
                         [idlog,
                         FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                         wData.UsuariActiu.Codi,
                         qDieta.FieldByName('NUM_HIST').AsString,
                         qDieta.FieldByName('c_planta').AsString,
                         qDieta.FieldByName('c_llit').AsString,
                         bloc,
                         modif,
                         wData.ID_COMPUTER,
                         CopyLeft(wData.ID_LOGIN+'-'+horaActual,40),
                         qDieta.FieldByName('HORA_DINAR').AsString,
                         qDieta.FieldByName('C_UBICACIO_DINAR').AsString]);

              if  (StrToInt(horaActual)<7)
              or ((StrToInt(horaActual)=12) and (StrToInt(minActual)>=30))
              or  (StrToInt(horaActual)>=13) then
              begin
                  // Canviem impressio per e-mail
                  {TRY CosEmail := Format('Pacient %s Unitat %s Llit %s Ubicació %s' + NLine +
                                         'Dieta %s'+ NLine +
                                         'Observacions %s' + NLine +
                                         'Hora dinar %s '+ NLine +
                                         'Canvis fets el %s.' + NLine + NLine +
                                         'NO CONTESTEU AQUEST CORREU-e JA QUE ÉS AUTOMÀTIC I EL REMITENT NO EXISTEIX.',
                                   [qDieta.FieldByName('pacient').AsString, qDieta.FieldByName('C_PLANTA').AsString, qDieta.FieldByName('C_LLIT').AsString,
                                    qDieta.FieldByName('UBICACIO').AsString, qDieta.FieldByName('n_codi').AsString, qDieta.FieldByName('obs_dieta').AsString,
                                    qDieta.FieldByName('hora_dinar').AsString, FormatDateTime('dd-mm-yyyy',HoraCanvis)]);

                      TRY GutExecute('insert into AVISOS_CORREU (DATA_GENERAT, ID_AVIS, ASSUMPTE, COS) ' +
                                     'values ("NOW", 24, "Avís de nou ingrés amb dieta", "%s")',[CosEmail]);
                      EXCEPT
                          on E: Exception do ShowMessage('No s''ha pogut avisar a CUINA per correu electrònic.' + NLine + E.Message);
                      END;
                  FINALLY
                      ShowMessage('E-mail enviat correctamet a CUINA');
                  END; }

                  qrlHoraCanvis.Caption := FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis);
                  if TeDretAcces([99]) then qrDieta.Preview
                  else begin
                      Impressores := TStringList.Create;
                      impresorasplanta('CUINA', 'DIETES', Impressores);
                      // si hi ha un error en aquest cas pq no recupera cap impresora ho marquem
                      if Impressores.Count = 0 then GutExecute('update LOGDIETES set PRINT_OK = "B", DATA_PRINT = "%s", LOGIN = "%s" where bloc = %d',
                                                    [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),CopyLeft(wData.ID_LOGIN+'-'+horaActual,40),bloc]);

                      for i:=0 to Impressores.Count - 1 do
                      Begin
                          If selectprinterqr(qrDieta,Impressores.Strings[i]) then
                          begin
                              qrDieta.Print;
                              // un cop imprès, marquem com a imprès el bloc
                              GutExecute('update LOGDIETES set PRINT_OK = "S", DATA_PRINT = "%s", LOGIN ="%s" where bloc = %d',
                                         [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),CopyLeft(wData.ID_LOGIN+'-'+horaActual,40),bloc]);
                          end
                          else begin
                              GutExecute('update LOGDIETES set PRINT_OK = "E", DATA_PRINT = "%s", LOGIN="%s" where bloc = %d',
                                         [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),CopyLeft(wData.ID_LOGIN+'-'+horaActual,40),bloc]);
                              FerError('Error en imprimir la notificació a "%s"' +#13+'Aviseu a informàtica',[Impressores.Strings[i]], False);
                          end;
                      end;

{                      if NT7OK and INFORMATICA_OK then impresorapordefecto
                                                  else FerError('No s''ha pogut posar la impressora per defecte.' + NLine +
                                                                'Actualitzeu-la manualment o aviseu a INFORMÀTICA');       }
                      Impressores.Free;
                  end;
              end;
            end;
          EXCEPT on E : Exception do FerError('No s''ha pogut registrar/enviar a CUINA la dieta. Aviseu a informàtica. '+Nline+
                                              'Error: '+E.Message, False);
          END;

          TempPresta := '';

          // Estat de Facturacio

          if (not AUTOGENERACIONINGRESO) and (not ForaDHores)
          then GutExecute('update ESPERA set C_TRACTAMENTDESTI = %s where C_ESPERA = %s',
                          [tTractaments.FieldbyName('C_Tractament').AsString, NUMESPERA]);
        finally
          WaitOff;
        end;
      end;

      // Grabamos en Espera el estado Actual, que será Filiado, menos cuando sea una autogeneración de ingreso, ya que no hay espera.
      if (NUMESPERA <> '-1') and (not AUTOGENERACIONINGRESO)
      then GutExecute('update ESPERA set C_ESTAT = "%d" where C_ESPERA = "%s"',
                      [ResultadoFiliacion, NUMESPERA]);

      if CAMBIODEPRESTACION2001
      then GutExecute('update ESPERA set C_PRESTACIO = %s where C_ESPERA = %s',
                      [tTractaments.FieldByName('C_Prestacio').AsString, NUMESPERA]);

      if  (not tTractaments.FieldByName('Data_Alta').IsNull)
      and (tTractaments.FieldByName('Ambulancia').AsString = 'S')
      then Aviso(Avis49);

      if tTractaments.Active then
      begin
        try
          if Insertando then // Si s'estava insertant procedim a l'assignació de l'estat de facturació.
          begin
              if AUTOGENERACIONINGRESO then
              begin
                  TMPTRACTAMENT := GutSelect('select C_TRACTAMENTDESTI from ESPERA where C_ESPERA = %s', [NUMESPERA]);
                  TempPresta := GutSelect('select C_PRESTACIO from ESPERA where C_TRACTAMENTDESTI = %s', [TMPTRACTAMENT]);
                  CONTADOR := GutSelect('select COUNT(*) from PRESTACION where C_PRESTACIO = %s and TIPUS = 2', [TEMPPRESTA]);

                  if (CONTADOR <> 0) and EsIngres(tTractaments.FieldByName('C_Prestacio').AsString)
                  then GutExecute('update TRACTAMENTS set C_ESTATFAC = 52 where C_TRACTAMENT = %s', [TMPTRACTAMENT]);

                  // Traspassem anotacions i interconsultes de la visita a l'ingrés:
                  GutExecute('update HISTORIA set C_TRACTAMENT = %d, C_PRESTACIO = "1004" where C_TRACTAMENT = %s',
                             [tTractaments.FieldbyName('C_Tractament').AsInteger, TMPTRACTAMENT]);
                  GutExecute('update INTERCON set C_TRACTAMENT = %d where C_TRACTAMENT = %s',
                             [tTractaments.FieldbyName('C_Tractament').AsInteger, TMPTRACTAMENT]);
              end;

              // QMATIC-i
              // Si ve a consulta externa, IMPRIMIM EL TIQUET i l'enviem a la CUA QMATIC
              if (ResultadoFiliacion = 95) and CUESOK
              and TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [166], False)
              then begin
                  if GestorCues = 'QMATIC' then
                  begin
                      resultatcua := PosaALaCua(NUMESPERA);
                      // Si dóna error, el mostrem, però deixem filiar igualment perquè aquí ja s'ha fet algun post...
                      if (resultatcua.Error <> '')
                      then FerError(resultatcua.Error + NLine + NLine + '*** AVISEU A INFORMÀTICA ***')
                      else if (resultatcua.Localitzador <> '') then ShowMessage('Localitzador: ' + resultatcua.Localitzador);
                  end
                  else if GestorCues = 'BUTTON' then
                  begin
                      resultatAdmissio := AdmissioPacient(tTractaments.FieldByName('C_Tractament').AsInteger);
                      // si arriva aquí és que no ha donat error
                      if resultatAdmissio <> '' then ShowMessage('Localitzador: ' + resultatAdmissio);
                  end
                  else ShowMessage('Sense gestor de cues activat. Avisar a informàtica.');
              end;
              // QMATIC-f
          end
        finally
          WaitOff;
        end;
    end;

    if ForaDHores then
    begin
        GutExecute('update HISTORIA set C_HISTORIA = %s , C_PRESTACIO = "%s", DATA_INGRES = "%s", C_COORDINADOR = "%s" where C_TRACTAMENT = %s',
                   [tTractaments.FieldByName('C_Historia').AsString,
                    tTractaments.FieldByName('C_Prestacio').AsString,
                    FechaIB(tTractaments.FieldByName('Data_Ingres').AsDateTime),
                    tTractaments.FieldByName('C_Coordinador').AsString,
                    tTractaments.FieldByName('C_Tractament').AsString]);

        if (EsVisita(tTractaments.FieldByName('C_Prestacio').AsString)) then
        begin
            qFindEspera.Close;
            qFindEspera.Sql[4] := ' and C_ESTAT between 30 and 39 ';
            qFindEspera.Open;

            cont := qFindespera.RecordCount;

            if (cont > 1) then
            begin
                with TwDialegeleccioEspera.Create(Application) do
                begin
                    try
                      pEspera.SqlDic[1] := 'where DATA_PREINGRES = "' + FechaIB(tTractaments.FieldByName('Data_Ingres').AsDateTime) + '"';
                      pEspera.SqlDic[2] := 'and C_HISTORIA       = '  + tTractaments.FieldByName('C_Historia').AsString;
                      pEspera.SqlDic[3] := 'and C_PRESTACIO      = "' + tTractaments.FieldByName('C_Prestacio').AsString + '"';
                      pEspera.SqlDic[4] := 'and C_ESTAT between 30 and 39';

                      pEspera.SqlDicTotal[1] := 'where DATA_PREINGRES = "' + FechaIB(tTractaments.FieldByName('Data_Ingres').AsDateTime) + '"';
                      pEspera.SqlDicTotal[2] := 'and C_HISTORIA       = '  + tTractaments.FieldByName('C_Historia').AsString;
                      pEspera.SqlDicTotal[3] := 'and C_PRESTACIO      = "' + tTractaments.FieldByName('C_Prestacio').AsString + '"';
                      pEspera.SqlDicTotal[4] := 'and C_ESTAT between 30 and 39';

                      pEspera.Execute('','');
                      ShowModal;

                      if (Resultado = '') then cont := 0
                                          else cont := 1;

                      NuevaEspera := Resultado;
                    finally
                      Free;
                    end;
                end;

                if (cont = 1) then
                begin
                    qFindespera.First;
                    qFindEspera.Locate('C_Espera', VarArrayOf([NuevaEspera]), []);
                end;
            end;

            // si no hay ninguna, Creamos la espera
            if (cont = 0)
            then NuevaEspera := GutSelect('select C_ESPERA from P_ESPERA_CREARESPERA("%s", "%s", %s, "%s", %s, %s)',
                                          [tTractaments.FieldByName('C_Coordinador').AsString,
                                           tTractaments.FieldByName('C_Prestacio').AsString,
                                           tTractaments.FieldByName('C_Historia').AsString,
                                           FechaIB(tTractaments.FieldByName('Data_Ingres').AsDateTime),
                                           tTractaments.FieldByName('C_Tractament').AsString, {tractament destí}
                                          '95']);

            if (cont = 1)
            then GutExecute('update ESPERA set C_ESTAT = 90, C_TRACTAMENTDESTI = %s where C_ESPERA = %s',
                            [tTractaments.FieldByName('C_Tractament').AsString,
                             qFindEspera.FieldByName('C_Espera').AsString]);
        end

        else begin
            qFindEspera.Close;
            qFindEspera.SQL[4] := ' and C_ESTAT between 20 and 29 ';
            qFindEspera.Open;

            cont := qFindEspera.RecordCount;

            if (cont > 1) then
            begin
                with TwDialegeleccioEspera.Create(Application) do
                begin
                    try

                      pEspera.SqlDic[1] := 'where DATA_PREINGRES = "' + FechaIB(tTractaments.FieldByName('Data_Ingres').AsDateTime) + '"';
                      pEspera.SqlDic[2] := 'and C_HISTORIA       = '  + tTractaments.FieldByName('C_Historia').AsString;
                      pEspera.SqlDic[3] := 'and C_PRESTACIO      = "' + tTractaments.FieldByName('C_Prestacio').AsString + '"';
                      pEspera.SqlDic[4] := 'and C_ESTAT between 20 and 29';

                      pEspera.SqlDicTotal[1] := 'where DATA_PREINGRES = "' + FechaIB(tTractaments.FieldByName('Data_Ingres').AsDateTime) + '"';
                      pEspera.SqlDicTotal[2] := 'and C_HISTORIA       = '  + tTractaments.FieldByName('C_Historia').AsString;
                      pEspera.SqlDicTotal[3] := 'and C_PRESTACIO      = "' + tTractaments.FieldByName('C_Prestacio').AsString + '"';
                      pEspera.SqlDicTotal[4] := 'and C_ESTAT between 20 and 29';

                      pEspera.Execute('','');
                      ShowModal;

                      if (Resultado = '') then cont := 0
                                          else cont := 1;

                      NuevaEspera := Resultado;
                    finally
                      Free;
                    end;
                end;

                if (cont = 1) then
                begin
                    qFindespera.First;
                    qFindEspera.Locate('C_Espera', VarArrayOf([NuevaEspera]), []);
                end;

            end;

            if (cont = 1)
            then GutExecute('update ESPERA set C_ESTAT = 90, C_TRACTAMENTDESTI = %s where C_ESPERA = %s',
                            [tTractaments.FieldByName('C_Tractament').AsString,
                             qFindEspera.FieldByName('C_Espera'     ).AsString]);
        end;
    end
    else begin
        setText := '';
        if modificatCoordinador then setText :=       Format(' C_COORDINADOR = "%s" ', [tTractaments.FieldByName('C_Coordinador').AsString]);
        if modificadaDataIngres then
        begin
            if setText = '' then setText :=           Format(' DATA_INGRES = "%s" ', [FormatDateTime('dd.mm.yyyy',tTractaments.FieldByName('Data_Ingres').AsDateTime)])
                            else setText := setText + Format(',DATA_INGRES = "%s" ', [FormatDateTime('dd.mm.yyyy',tTractaments.FieldByName('Data_Ingres').AsDateTime)]);
        end;
        if modificadaPrestacio or CAMBIODEPRESTACION2006 or CAMBIODEPRESTACION2016 or SUBSTITUEIX then
        begin
            if setText = '' then setText :=           Format(' C_PRESTACIO = "%s" ', [tTractaments.FieldByName('C_Prestacio').AsString])
                            else setText := setText + Format(',C_PRESTACIO = "%s" ', [tTractaments.FieldByName('C_Prestacio').AsString]);
        end;

        if setText <> '' then
        begin
          TRY // Actualitzem les anotacions
              GutExecute('update HISTORIA set %s where C_TRACTAMENT = %d', [setText, tTractaments.FieldByName('C_Tractament').AsInteger]);
              // wData.IBTransGutt.CommitRetaining;
              ShowMessage('La prestació i les anotacions corresponents s''han modificat correctament');
          EXCEPT on e: Exception do FerError('Hi ha hagut un error en comprovar compatibilitats. ' + NLine +  e.Message, True);
          END;
        end;
    end;

    if EnAlta then
    begin
        // Guardem Log d'inserció/eliminació de data d'alta
        if tTractaments.FieldByName('Data_Alta').IsNull
        then GutExecute('insert into LOGALTES (C_TRACTAMENT, DATA_REGISTRE, C_USUARI) values (%d, "NOW", "%s")',
                        [tTractaments.FieldByName('C_Tractament').AsInteger,
                         wData.UsuariActiu.Codi])
        else GutExecute('insert into LOGALTES (C_TRACTAMENT, DATA_REGISTRE, C_USUARI, DATA_ALTA) values (%d, "NOW", "%s", "%s")',
                        [tTractaments.FieldByName('C_Tractament').AsInteger,
                         wData.UsuariActiu.Codi,
                         FormatDateTime('dd.mm.yyyy', tTractaments.FieldByName('Data_Alta').AsDateTime)]);
    end;

    tFiliacio.Close;
    tTractaments.Close;
    tFotos.Close;
    tFiliDadesFac.Close;
    tFiliTDI.Close;
    tGarants.Close;
    tFacilitadors.Close;
    Close;
end;


procedure TwFitxaFiliacio.HYBarra1AlCancel(Sender: TObject);
var
  accio, Missatgecancelacio: String;
begin

  if not tsPrestacio.TabVisible then Missatgecancelacio:= 'Voleu cancel·lar l''edició de la història que esteu modificant?'
  else begin

      if tTractaments.State in [dsEdit] then accio := 'editant';
      if tTractaments.State in [dsInsert] then accio := 'insertant';

      Missatgecancelacio := Format('Voleu cancel·lar la filiació que esteu %s?', [accio]);

      if EnAlta then
      begin
          if tTractaments.FieldByName('Data_Alta').IsNull
          then Missatgecancelacio := 'Voleu cancel·lar la inserció de l''alta?'
          else Missatgecancelacio := 'Voleu cancel·lar la modificació de l''alta?';
      end;

      if EnPrealta then
      begin
          if tTractaments.FieldByName('Data_PreAlta').IsNull
          then Missatgecancelacio := 'Voleu cancel·lar la inserció de la prealta?'
          else Missatgecancelacio := 'Voleu cancel·lar la modificació de la prealta?';
      end;

      if ForaDHores then Missatgecancelacio := 'Voleu cancel·lar la filiació del provisional?';
  end;

  if tTractaments.EstabaInsertando then
  begin
      if AvisoSN(Missatgecancelacio) then
      begin
          tTractaments.Close;
          tFiliacio.Close;
          tFotos.Close;
          tFiliDadesFac.Close;
          tFiliTDI.Close;
          tGarants.Close;
          tFacilitadors.Close;
          Close;
      end
      else Exit;
  end
  else begin
      if not tTractaments.Active then
      begin
          if AvisoSN(Missatgecancelacio) then
          begin
              tFiliacio.Close;
              tFotos.Close;
              tFiliDadesFac.Close;
              tFiliTDI.Close;
              tGarants.Close;
              tFacilitadors.Close;
              Close;
          end
          else Exit;
      end
      else begin
          if tTractaments.State  in [dsEdit] then tTractaments.Close;
          if tFiliacio.State     in [dsEdit] then tFiliacio.Close;
          if tFiliDadesFac.EstaEditando      then tFiliDadesFac.Close;
          if tFiliTDI.State      in [dsEdit] then tFiliTDI.Close;
          if tFotos.State        in [dsEdit, dsInsert] then tFotos.Close;
          if tGarants.State      in [dsEdit] then tGarants.Close;
          if tFacilitadors.State in [dsEdit] then tFacilitadors.Close;
          Close;
      end;
  end;
end;


procedure TwFitxaFiliacio.tFiliacioAfterOpen(DataSet: TDataSet);
begin
{-
  bNotaCarrec.Enabled := ((tsPrestacio.TabVisible)
                     and (EsPle(tTractaments.FieldbyName('C_Tractament').asString))
                     and (tTractaments.FieldByName('C_CentreFac').AsString = '04')
                     and (( ResultadoFiliacion = 95) or (tTractaments.FieldbyName('C_Prestacio').asString = '2005')))
                     and (wMain.Nivell > 1);
-}
  Ed_tFiliacio_UNITAT.ReadOnly := TeDretAcces([102], False, False);
  pPaisDoc.Visible := tFiliacio.FieldByName('T_DOC').AsString = 'P';  // només visible per PASSAPORT

end;


procedure TwFitxaFiliacio.bCIPClick(Sender: TObject);
var
  RIO: THTTPRIO;
  log: String;
begin
   if tFiliacio.RequestLive then
   begin
      if (tFiliacio.FieldByName('sexo').AsString = '') then FerError('Cal informar el gènere del pacient', True);

      RIO := THTTPRIO.Create(nil);
      RIO.OnBeforeExecute := peticioBeforeExecute;
      RIO.OnAfterExecute := peticioAfterExecute;

      Dades.Close;
      Dades.Open;
      Dades.DisableControls;

      log := RCA_consulta_per_dades(tFiliacio.FieldByName('nombre').AsString,
                                    tFiliacio.FieldByName('apellido1').AsString,
                                    tFiliacio.FieldByName('apellido2').AsString,
                                    tFiliacio.FieldByName('fecha_nac').AsString,
                                    BoolToStr(tFiliacio.FieldByName('sexo').AsString = 'D', '1', '0'),
                                    '', '', '', '', Dades, RIO);
      Dades.EnableControls;
      Dades.First;

      // Només actuar en cas de que només s'hagi trobat 1 únic registre
      if log = '1 Trobat/s' then
      begin
          if not tFiliacio.EstaEditando then tFiliacio.Edit;

          tFiliacio.FieldByName('TSI').AsString := Dades.FieldByName('DFC_CIP_V').AsString;
          tFiliacio.FieldByName('Nivell_Cobertura').AsInteger := Dades.FieldByName('DFC_CCP').AsInteger;
      end
      else ShowMessage('Hi ha '+log+' a l''RCA. No es poden actualitzar les dades de forma automàtica.');
   end;
end;


procedure TwFitxaFiliacio.SpeedButton4Click(Sender: TObject);
begin
   if RCAOK then rcadialog.showRca(self.tFiliacio)
  else FerError('El servidor RCA del CatSalut no està disponible. Aviseu a informàtica.',True);  // parte 57336
end;


procedure TwFitxaFiliacio.CopiarDadesFactu;
begin

  if ((tTractaments.FieldbyName('C_Historia').isNull) or (esBuit(tTractaments.FieldbyName('C_Historia').asString))) then Exit;

  if tTractaments.EstaEditando Then
  begin
      // Agafem les dades de facturació de l'últim tractament facturable, no privat, no ease

      qDadesFactu.Close;
      qDadesFactu.ParambyName('C_Historia').asString := tTractaments.FieldbyName('C_Historia').asString;
      qDadesFactu.Open;
      qDadesFactu.First;

{      if  ((tTractaments.FieldbyName('C_CentreFac').asString = '00') or (tTractaments.FieldbyName('C_CentreFac').asString = '50'))
      and (not qDadesFactu.FieldByName('ID_Garant').IsNull) and tTractaments.FieldbyName('ID_Garant').IsNull
      then tTractaments.FieldbyName('ID_Garant').AsInteger := qDadesFactu.FieldByName('ID_Garant').AsInteger; <-- si el volem treure, segueix posant-lo pq encara no hem fet el post a tractaments i qDadesFactu el té plè.}

      if EsBuit(tTractaments.FieldbyName('C_CentreFac').asString) then
      begin
          if esPle(qDadesFactu.FieldbyName('C_CentreFac').asString)
          then tTractaments.FieldbyName('C_CentreFac').asString := qDadesFactu.FieldbyName('C_CentreFac').asString;
      end
      else exit;
      if EsBuit(tTractaments.FieldbyName('C_Client'   ).asString) then
      begin
          if esPle(qDadesFactu.FieldbyName('C_Client'   ).asString)
          then tTractaments.FieldbyName('C_Client'   ).asString := qDadesFactu.FieldbyName('C_Client'   ).asString;
      end
      else exit;
      if EsBuit(tTractaments.FieldbyName('C_Delegacio').asString) then
      begin
          if esPle(qDadesFactu.FieldbyName('C_Delegacio').asString)
          then tTractaments.FieldbyName('C_Delegacio').asString := qDadesFactu.FieldbyName('C_Delegacio').asString;
      end
      else exit;

      qDadesFactu.Close;
  end;
end;


procedure TwFitxaFiliacio.PCChange(Sender: TObject);
begin

   if PC.ActivePage = tsFacturacio then
   begin
       tTractaments_C_DelegacioChange(tTractaments.FieldbyName('C_Delegacio'));

       if EsPle(tTractaments.FieldbyName('C_Historia'  ).asString) then
       begin
           qPapers.Close;
           qPapers.ParambyName('Historia'  ).asString := tTractaments.FieldbyName('C_Historia'  ).asString;
           qPapers.Open;
           qPapers.First;
       end;

       PapersPendents.visible :=  (not (qPapers.Eof and qPapers.Bof)) and (not qPapers.FieldbyName('C_EstatFac').asInteger in [20..29]);
       if not mostrados then MostrarEstadosFact(tTractaments.FieldbyName('C_EstatFac').asInteger);
       mostrados := True;

       CopiarDadesFactu;

       qParametresFactu.Close;
       qParametresFactu.Open;
   end;

   if PC.ActivePage = tsPrestacio then
   begin
        CambioenHospitalOrigen(tTractaments.FieldbyName('C_HospitalOrigen'));
        cambioenLlit          (tTractaments.FieldbyName('C_Llit'          ));
        cambioenPlanta        (tTractaments.FieldbyName('C_Planta'        ));
        cambioenCoordinador   (tTractaments.FieldbyName('C_Coordinador'   ));
        cambioenCaracter      (tTractaments.FieldbyName('C_Caracter'      ));
        cambioenFrequencia    (tTractaments.FieldbyName('C_Frequencia'    ));
        cambioenOrigen        (tTractaments.FieldbyName('C_Origen'        ));
        cambioenMotiu         (tTractaments.FieldbyName('C_Motiu'         ));
        cambioenModalitat     (tTractaments.FieldbyName('C_Modalitat'     ));
        CambioenHospitalDesti (tTractaments.FieldbyName('C_HospitalDesti' ));
        CambioenDestiContInt  (tTractaments.FieldByName('DESTI_CONT_INT'  ));
        CambioenDestiContExt  (tTractaments.FieldByName('DESTI_CONT_EXT'  ));
        CambioenTHab          (tTractaments.FieldbyName('T_Habitacio'     ));
        CambioenTSessio       (tTractaments.FieldByName('T_Sessio'        ));
        CambioenCadaXSetmanes (tTractaments.FieldByName('Cada_X_Setmanes' ));

       if tFiliacio.FieldbyName('NUM_HIST').isNull then exit;

       case  ResultadoFiliacion of
         90:begin
              HYPC.SqlDic[4]      := ' AND A.C_ESTAT >= 20 ';
              HYPC.SqlDicTotal[4] := ' AND A.C_ESTAT >= 20 ';
              HYPC.SqlDic[5]      := ' AND A.C_ESTAT <= 29 ';
              HYPC.SqlDicTotal[5] := ' AND A.C_ESTAT <= 29 ';
            end;
         95:begin
              HYPC.SqlDic[4]      := ' AND A.C_ESTAT >= 30 ';
              HYPC.SqlDicTotal[4] := ' AND A.C_ESTAT >= 30 ';
              HYPC.SqlDic[5]      := ' AND A.C_ESTAT <= 39 ';
              HYPC.SqlDicTotal[5] := ' AND A.C_ESTAT <= 39 ';
              HYPC.CamposOculta.Add('Data_Inclusio');
            end;
       end;

       HYPC.SqlDic[3]      := '  AND C_HISTORIA = '+tFiliacio.FieldbyName('NUM_HIST').AsString;
       HYPC.SqlDicTotal[3] := '  AND C_HISTORIA = '+tFiliacio.FieldbyName('NUM_HIST').AsString;

       if not AUTOGENERACIONINGRESO then  //Una autoinserción de ingreso no viene de una espera, por lo que no hace falta filtrar por ella. que muestre todas las esperas activas de la historia que se filia.
       begin
         HYPC.SqlDic[6]      := '  AND NOT C_ESPERA  = '+NUMESPERA;
         HYPC.SqlDicTotal[6] := '  AND NOT C_ESPERA  = '+NUMESPERA;
       end
       else
       begin
         HYPC.SqlDic[6]      := ' ';
         HYPC.SqlDicTotal[6] := ' ';
       end;

       HYPC.Execute('','');

       HistTract.SqlDic[3]      := tFiliacio.FieldbyName('NUM_HIST').AsString;
       HistTract.SqlDicTotal[3] := tFiliacio.FieldbyName('NUM_HIST').AsString;
       HistTract.Execute('','');
   end;
{   else
   begin
     if HYPC.IsActive then HYPC.RefreshSql;
     if HistTract.IsActive then HistTract.RefreshSql;
   end;}

   if PC.ActivePage = tsPreAlta then
   begin
      if esPle(tTractaments.FieldbyName('C_EsperaProgramada').asString) then
      begin
         //Cargando datos de la espera programada....

         qEsperaProg.Open;
         C_PrestaProgramada.EditValue    := qEsperaProg.fieldbyName('C_Prestacio'       ).asString;
         N_PrestaProgramada.EditValue    := qEsperaProg.fieldbyName('N_Prestacio'       ).asString;

         MotiuPrestaProgramada.SqlDic[3] := Format('AND C_Prestacio = "%s" ',
                                           [qEsperaProg.fieldbyName('C_Prestacio'       ).asString]);

         cnsCaracterProgramacio.SqlDic[3] := Format('AND C_Prestacio = "%s" ',
                                           [qEsperaProg.fieldbyName('C_Prestacio'       ).asString]);

         C_MotiuProgramacio.EditValue    := qEsperaProg.fieldbyName('C_Motiu'           ).asString;
         N_MotiuProgramacio.EditValue    := qEsperaProg.fieldbyName('N_Codi'            ).asString;
         CaracterProgramacio.EditValue   := qEsperaProg.fieldbyName('C_Caracter'        ).asString;
         N_CaracterProgramacio.EditValue := qEsperaProg.fieldbyName('N_Caracter'        ).asString;
         FrequenciaProgramacio.EditValue := qEsperaProg.fieldbyName('C_Frecuencia'      ).asString;
         N_Frequencia.EditValue          := qEsperaProg.fieldbyName('N_FreQuencia'      ).asString;
         ComentariMetge.EditValue        := qEsperaProg.fieldbyName('ComentariMetge'    ).asString;
//         ComentariInfermeria.EditValue   := qEsperaProg.fieldbyName('ComentariInfermera').asString;
         qEsperaProg.Close;

      end;
   end;

   if PC.ActivePage = tsAlta
   then CambioenDestinacio(tTractaments.FieldbyName('C_Destinacio'));

end;


procedure TwFitxaFiliacio.HYPCAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  Bucle :Integer;
begin

  if Borrando then
  begin

    for Bucle:= 0 to Sender.Grid.SelectedRows.Count - 1  do
    begin
       Sender.DS.Dataset.BookMark := Sender.Grid.SelectedRows[Bucle];

     {  CASE Datos.FieldbyName('C_Espera').asInteger of
          20:     EjecutaSQL(wData.Projecte.DataBaseName,
                  'UPDATE ESPERA SET C_ESTAT = 51 , Data_Exclusio = "TODAY" WHERE C_ESPERA = '+
                  Datos.FieldbyName('C_Espera').asString);
          21:     EjecutaSQL(wData.Projecte.DataBaseName,
                  'UPDATE ESPERA SET C_ESTAT = 57 , Data_Exclusio = "TODAY" WHERE C_ESPERA = '+
                  Datos.FieldbyName('C_Espera').asString);
          30:     EjecutaSQL(wData.Projecte.DataBaseName,
                  'UPDATE ESPERA SET C_ESTAT = 56 , Data_Exclusio = "TODAY" WHERE C_ESPERA = '+
                  Datos.FieldbyName('C_Espera').asString);
          31:     EjecutaSQL(wData.Projecte.DataBaseName,
                  'UPDATE ESPERA SET C_ESTAT = 59 , Data_Exclusio = "TODAY" WHERE C_ESPERA = '+
                  Datos.FieldbyName('C_Espera').asString);
       end;}

       EjecutaSQL(wData.Projecte.DataBaseName,
                  'UPDATE ESPERA SET EXCLOS = "S" , Data_Exclusio = "TODAY" WHERE C_ESPERA = '+
                  Datos.FieldbyName('C_Espera').asString);
    end;
  end
  else
  begin
       //@ Ficha de Insertar en Ficha de espera pero en Edit con el registro activo de la consulta localizado
       with TwFitxaEspera.Create(Application) do
       begin
         Caption :='Modificació prestació en espera ['+ Datos.FieldbyName('C_Prestacio').AsString+']';
         tEspera.Open;

         tEspera.Findkey(varArrayOf([Datos.FieldbyName('C_Espera').AsVariant]));

         mostrarPaneles(tEspera.FieldByName('C_Prestacio').AsString);
       end;
  end;
end;


procedure TwFitxaFiliacio.bBorrarClick(Sender: TObject);
begin
  Borrando := True;
  HYPC.Seleccionar;
  Borrando := False;
end;


procedure TwFitxaFiliacio.tTractamentsAlConsultarCampo(Sender: TObject; NombreConsulta: String; var Ejecutada: Boolean; SubFiltro: String);
begin

  if not tTractaments.RequestLive then FerError(Error39, True);

  if NombreConsulta = 'Llit' then
  begin
      Ejecutada := False;
      consultaLlits.ExecuteModal('','');
  end;

  if NombreConsulta = 'Planta' then
  begin
      Ejecutada := False;
      consultaPlantes.ExecuteModal('','');
  end;

  if (NombreConsulta = 'Coordinador') then
  begin
      Ejecutada := False;

      if esPle(tTractaments.FieldbyName('C_Prestacio').asString)
      then cCanviCoord.SqlDic[5] := Format('and mp.c_prestacio = "%s" ',[tTractaments.FieldByName('C_Prestacio').AsString])
      else cCanviCoord.SqlDic[5] := '';

      if esPle(tTractaments.FieldbyName('C_Coordinador').asString)
      then cCanviCoord.SqlDic[6] := Format('and m.codi <> "%s" ',[tTractaments.FieldByName('C_Coordinador').AsString])
      else cCanviCoord.SqlDic[6] := '';
      
      cCanviCoord.ExecuteModal;
  end;

  if ({(NombreConsulta = 'Coordinador') or} (NombreConsulta = 'MetgeAlta') or (NombreConsulta = 'MetgePreAlta')) then
  begin
      Ejecutada := False;

      if ((TeDretPresta(tTractaments.Fieldbyname('C_Prestacio').asString, [1])) or (ResultadoFiliacion = 90))
      then  IniciarSQLDeConsultas(tTractaments.FieldbyName('C_Coordinador').asString, tTractaments.FieldbyName('C_Prestacio').asString,'P1');

      if ((TeDretPresta(tTractaments.Fieldbyname('C_Prestacio').asString, [2])) or (ResultadoFiliacion = 95))
      then   IniciarSQLDeConsultas(tTractaments.FieldbyName('C_Coordinador').asString, tTractaments.FieldbyName('C_Prestacio').asString,'P2');

      if esPle(tTractaments.FieldbyName('C_Prestacio').asString)
      then Metge.SqlDic.Text := SQLMetgeAmbPrestacio
      else Metge.SqlDic.Text := SQLMetgeSensePrestacio;

      if NombreConsulta = 'Coordinador'  then Metge.Tag := 1; //MetgeCoordinador
      if NombreConsulta = 'MetgeAlta'    then Metge.Tag := 2; //MetgeAlta
      if NombreConsulta = 'MetgePreAlta' then Metge.Tag := 3; //MetgePreAlta

      Metge.ExecuteModal('','');
  end;

  if NombreConsulta = 'Prestacio' then
  begin
     Ejecutada := False;

      if ResultadoFiliacion = 90
      then  IniciarSQLDeConsultas(tTractaments.FieldbyName('C_Coordinador').asString, tTractaments.FieldbyName('C_Prestacio').asString,'P1');

      if ResultadoFiliacion = 95
      then   IniciarSQLDeConsultas(tTractaments.FieldbyName('C_Coordinador').asString, tTractaments.FieldbyName('C_Prestacio').asString,'P2');

     if esPle(tTractaments.FieldbyName('C_Coordinador').asString)
     then Prestacio.SqlDic.Text := SQLPrestacioAmbMetge
     else Prestacio.SqlDic.Text := SQLPrestacioSenseMetge;

     Prestacio.ExecuteModal('','');

  end;

end;


procedure TwFitxaFiliacio.cMetgePrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tTractaments.FieldbyName('C_Coordinador').asString := Datos.FieldbyName('Codi').asString;
end;


procedure TwFitxaFiliacio.tFiliacioAlConsultarCampo(Sender: TObject; NombreConsulta: String; var Ejecutada: Boolean; SubFiltro: String);
begin

  if not tFiliacio.RequestLive then FerError(Error39, True);

  if NombreConsulta = 'Parent' then
  begin
    Ejecutada := False;
    cParella.ExecuteModal('','');
  end;

end;


procedure TwFitxaFiliacio.cParellaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tParent.Open;
  tParent.FindKey(varArrayOf([Datos.fieldbyName('NumPar').asVariant]));
  tFiliacio.FieldbyName('Usra').asString := tParent.FieldbyName('NumPar').asString;
  tParent.Edit;
end;


procedure TwFitxaFiliacio.tFiliacio_USRAChange(Sender: TField);
var
  contador: Integer;
begin
   if Sender.isNull then exit;

   Contador := SelectSQL(wData.Projecte.DataBaseName, 'Select Count(*) from PARENT Where NumPar = '+Sender.AsString);

   if ((contador = 0) OR (Contador = null)) then
   begin
    tParent.Open;
    tParent.Insert;
    tParent.FieldbyName('NumPar').asString := tFiliacio.FieldbyName('Usra').asString;
   end;
end;


procedure TwFitxaFiliacio.HYPCAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
begin

   if ((Query.Active) and ( not Query.FieldByName('C_ESTAT').isNull)) then
     if  ((Query.FieldByName('C_ESTAT').asInteger  >= 20)
     and  (Query.FieldByName('C_ESTAT').asInteger  <  29))
     or  ((Query.FieldByName('C_ESTAT').asInteger  >= 30)
     and  (Query.FieldByName('C_ESTAT').asInteger  <  39))
     Then ColorFont  := clGreen
     else ColorFont  := clBlack;

end;


procedure TwFitxaFiliacio.USRAExecute(Sender: TObject);
var
  Res: Integer;
begin
    centerinClient(mgUSRA);

    if mgUSRA.Visible then
    begin
       if tParent.EstaEditando then
       begin
           res := Application.MessageBox('Guardar modificacions?', 'Dades d''USRA', MB_ICONQUESTION+MB_YESNOCANCEL);
           CASE res OF
             6,1: {OK} tParent.Post;
             2  :      exit;
             7  : {NO} tParent.Cancel;
           END;
       end;
       mgUSRA.Visible := False;
       bUSRA.Down := False;
    end
    else begin
        if (not tFiliacio.FieldbyName('USRA').isNull) and (tFiliacio.FieldbyName('USRA').asString <> '0') then
        begin
          if not tParent.Active then tParent.Open;
          tParent.Findkey(varArrayOf([tFiliacio.FieldbyName('Usra').asVariant]));
          mgUSRA.Visible := True;
        end
        else if tParent.RequestLive then
        begin
          if not tParent.Active then tParent.Open;
          tParent.Insert;
          mgUSRA.Visible := True;
        end;
    end;
end;


procedure TwFitxaFiliacio.bCerrarUSRAClick(Sender: TObject);
begin
   USRA.Execute;
end;


procedure TwFitxaFiliacio.tParentAfterCancel(DataSet: TDataSet);
begin
   mgUSRA.Visible := False;
   bUsra.Down     := False;
end;


procedure TwFitxaFiliacio.tParentAfterPost(DataSet: TDataSet);
begin
   mgUSRA.Visible := False;
   bUsra.Down     := False;

   if tParent.EstabaInsertando then
   begin
      if not tFiliacio.EstaEditando then tFiliacio.Edit;
      tFiliacio.fieldbyName('USRA').asInteger := DataSet.FieldbyName('NumPar').asInteger;
      tFiliacio.New.OpenFisrt := False;
      tFiliacio.Post;
      tFiliacio.Edit;
   end;
end;


procedure TwFitxaFiliacio.HistTractAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
begin

   if (Query.Active) then
   begin
     if   (Query.FieldByName('DATA_ALTA').isNull)
     Then  ColorFont := clBlue
     else  ColorFont := clBlack;

     if gdSelected in State then ColorFont := clWhite;
   end;

end;


procedure TwFitxaFiliacio.MetgeAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   if (not tTractaments.EstaEditando) then tTractaments.Edit;  // parte 42535
   case Metge.Tag of
     1:   tTractaments.FieldbyName('C_Coordinador' ).asString := Datos.FieldbyName('Codi').asString; //Coordinador
     2:   tTractaments.FieldbyName('C_MetgeAlta'   ).asString := Datos.FieldbyName('Codi').asString; //Alta
     3:   tTractaments.FieldbyName('C_MetgePreAlta').asString := Datos.FieldbyName('Codi').asString; //PreAlta
   end;
end;


procedure TwFitxaFiliacio.PrestacioAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   if (not tTractaments.EstaEditando) then tTractaments.Edit;  // parte 42535
   tTractaments.FieldbyName('C_Prestacio').asString := Datos.FieldbyName('C_Prestacio').asString;
end;


Function TwFitxaFiliacio.TeClient(CentreFac:String):Boolean;
begin
    Result := (SelectSqlFmt( wData.Gdb.DataBaseName,
              'SELECT COUNT(*) FROM CLIENTS WHERE C_CENTREFAC = "%s"',
              [CentreFac]) <> 0);
end;


Function TwFitxaFiliacio.TeDelegacio(CentreFac: String):Boolean;
begin
    Result := (SelectSqlFmt( wData.Gdb.DataBaseName,
              'SELECT COUNT(*) FROM DELEGACIONS WHERE C_CENTREFAC = "%s"' ,
              [CentreFac]) <> 0);
end;


procedure TwFitxaFiliacio.DeshabilitarPrestacio(param:Boolean);
begin
  param := not param;

  pDataIngres.Enabled := param;
  pHora.Enabled       := param;
  pPrestacio.Enabled  := param;
  pProcedencia.Enabled:= param;
  pUCI.Enabled        := param;
  pHospital.Enabled   := param;
  pCaracter.Enabled   := param;
  pSolicitud.Enabled  := param;
  pLlit.Enabled       := param;
  pPlanta.Enabled     := param;
  pDurada.Enabled     := param;
  pFrequencia.Enabled := param;
  pRenovaNPC.Enabled  := param;
  pTSessio.Enabled    := param;
  pSessionsCadaXSetmanes.Enabled := param;

  sbCanviDataIngres.Enabled := not pDataIngres.Enabled;
end;


procedure TwFitxaFiliacio.tTractamentsCalcFields(DataSet: TDataSet);
var
  Deshabilita: Boolean;
begin
    Deshabilita         := False;
    pEstatFactu.Enabled := True;

    if (not DataSet.FieldByName('Data_Alta').IsNull) and (DataSet.FieldByName('Data_Alta').AsDateTime <> 0)
    then begin
        Deshabilita := (DataSet.FieldbyName('Data_Alta').asDateTime <= wData.QParametres.FieldByName('DataConsolidatFins').AsDateTime);
        if Deshabilita then pEstatFactu.Enabled := DataSet.FieldByName('c_estatfac').AsInteger<50;
    end;
    DeshabilitarPrestacio(Deshabilita);

    Data_Ingres.ReadOnly := not (DataSet.State in [dsInsert]);
    sbCanviDataIngres.Enabled := Data_Ingres.ReadOnly;

    if TePapers(tTractaments.FieldbyName('C_EstatFac').asInteger) then
    begin
      if esBuit(tTractaments.FieldByName('C_CentreFac').AsString)
      then Centre.EtiFontColor    := clRed
      else Centre.EtiFontColor    := clWindowText;
    end
    else begin
      Centre.EtiFontColor    := clWindowText;
      Client.EtiFontColor    := clWindowText;
      Delegacio.EtiFontColor := clWindowText;
    end;

    {-
    bNotaCarrec.Enabled := ((tsPrestacio.TabVisible)
                     and (EsPle(tTractaments.FieldbyName('C_Tractament').asString))
                     and (tTractaments.FieldByName('C_CentreFac').AsString = '04')
                     and ((EsVisita(tTractaments.FieldbyName('C_Prestacio').asString)) or (tTractaments.FieldbyName('C_Prestacio').asString = '2005'))
                     and (wMain.Nivell > 1));
    -}                 
    tTractaments.FieldbyName('Delegacio_Carrer').asString :=
       tTractaments.FieldbyName('Delegacio_N_Delegacio').asString +' '+
       tTractaments.FieldbyName('Delegacio_TipusVia'   ).asString +' '+
       tTractaments.FieldbyName('Delegacio_NomVia'     ).asString;

    ActivaUnespa;
    ActivaACA_CI;
    ActivaMetgeMutua;
end;


procedure TwFitxaFiliacio.tTractamentsBeforeEdit(DataSet: TDataSet);
begin
  if not tTractaments.RequestLive then FerError(Error39, True);

  if not tFiliacio.EstaEditando   then tFiliacio.Edit;

  EtiLlit.ReadOnly         := False;
  EtiLlit.Ctl3D            := True;
  EtiPlanta.ReadOnly       := False;
  EtiPlanta.Ctl3D          := True;
  EtiTHabitacio.ReadOnly   := False;
  EtiTHabitacio.Ctl3D      := True;

  if not EsBuit(tTractaments.FieldByName('C_Llit'     ).AsString) then
  begin
    EtiLlit.ReadOnly       := True;
    EtiLlit.Ctl3D          := False;
  end;

  if not EsBuit(tTractaments.FieldByName('C_Planta'   ).AsString) then
  begin
    EtiPlanta.ReadOnly     := True;
    EtiPlanta.Ctl3D        := False;
  end;

{  if not EsBuit(tTractaments.FieldByName('T_Habitacio').AsString) then
  begin
    EtiTHabitacio.ReadOnly := True;
    EtiTHabitacio.Ctl3D    := False;
  end; 16-03-2017}

  DataPreAltaBefore := DataSet.FieldByName('DATA_PREALTA').AsDateTime;
end;


procedure TwFitxaFiliacio.CambioenDestinacio(Sender: TField);
begin

  if ((tTractaments.FieldbyName('C_Destinacio').isNull)
  or (tTractaments.FieldbyName('C_Destinacio').asString = '0'))
  then Destinacio.EtiFontColor := clRed
  else Destinacio.EtiFontColor := clWindowText;

  if Sender.asInteger = 99 {in [2,3]} then
  begin
     Hospital.Visible   := True;
     N_Hospital.Visible := True;
  end
  else
  begin
     Hospital.Visible   := False;
     N_Hospital.Visible := False;
  end;

  HospitalPreAlta.Visible := Hospital.Visible;
  N_HospitalPreAlta.Visible := N_Hospital.Visible;

  tTractaments_C_HospitalDestiChange(tTractaments.FieldbyName('C_HospitalDesti'));

end;


procedure TwFitxaFiliacio.tTractaments_C_DestinacioChange(Sender: TField);
begin
  if ((tTractaments.FieldbyName('C_Destinacio').isNull)
  or (tTractaments.FieldbyName('C_Destinacio').asString = '0'))
  then Destinacio.EtiFontColor := clRed
  else Destinacio.EtiFontColor := clWindowText;

  Hospital.visible   := False;
  N_Hospital.Visible := False;

  tFiliacio.FieldbyName('EsViu').asString   := 'S';
  tFiliacio.FieldbyName('Mort' ).Clear;

  Case Sender.Value of
    2{,3}: begin  //Hospital d'aguts...
           Hospital.visible   := True;
           N_Hospital.Visible := True;
         end;
      6: begin  //la palma...
           tFiliacio.FieldbyName('EsViu').asString   := 'N';
           tFiliacio.FieldbyName('Mort' ).asDateTime := tTractaments.FieldbyName('Data_Alta' ).asDateTime;
           lMort.Caption := ' EXITUS -'+FormatDateTime('dd/mmm/yyyy', tTractaments.FieldbyName('Data_Alta' ).asDateTime)+'-';
           lMort.visible := True;
         end;
  end;
  if Sender.Value <> 6 then lMort.visible := False;

  HospitalPreAlta.Visible := Hospital.Visible;
  N_HospitalPreAlta.Visible := N_Hospital.Visible;

  tTractaments_C_HospitalOrigenChange(tTractaments.FieldbyName('C_HospitalOrigen'));

  Desti_cont_int.Visible := Sender.Value = 9; N_Desti_cont_int.Visible := Desti_cont_int.Visible;
  Desti_cont_ext.Visible := Sender.Value = 2; N_Desti_cont_ext.Visible := Desti_cont_ext.Visible;
  Desti_cont_intPreAlta.Visible := Desti_cont_int.Visible; N_Desti_cont_intPreAlta.Visible := N_Desti_cont_int.Visible;
  Desti_cont_extPreAlta.Visible := Desti_cont_ext.Visible; N_Desti_cont_extPreAlta.Visible := N_Desti_cont_ext.Visible;
end;


procedure TwFitxaFiliacio.bFullFiliacioClick(Sender: TObject);
begin

  with TwPrintFullFiliacio.Create(Application) do
    try
      qFiliacio.Close;
      qFiliacio.ParambyName('C_Historia').asString := tFiliacio.FieldbyName('Num_Hist').asString;
      qFiliacio.Open;
      qHistorico.Open;


      CentreFac := ' -- '; //Es Una variable que guarda el últim Centre de Facturació de la Historia.
      UP := '';
      qDadesFactu.Close;
      qDadesFactu.ParambyName('C_Historia').asString := qFiliacio.ParambyName('C_Historia').asString;
      qDadesFactu.Open;
      qDadesFactu.First;
      if not ((qDadesFactu.Eof) and (qDadesFactu.Bof)) then
      begin
         CentreFac := qDadesFactu.FieldbyName('N_CentreFac').asString;
         UP        := qDadesFactu.FieldbyName('N_Delegacio').asString;
      end;

{      if not wData.ES_PROVA
      then qrFullFiliacio.Print
      else qrFullFiliacio.Preview;}
      if not wData.ES_PROVA then
      begin
          // PARTE 40492
          if TeDretAcces([161],False,False) then qrFullFiliacio2.Print
          else qrFullFiliacio.Print;
      end
      else begin
          // PARTE 40492
          if TeDretAcces([161],False,False) then qrFullFiliacio2.Preview
          else qrFullFiliacio.Preview;
      end;

    finally
      qFiliacio.Close;
      qHistorico.Close;
      Free;
    end;

end;


procedure TwFitxaFiliacio.consultaLlitsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if (not tTractaments.EstaEditando) then tTractaments.Edit;  // parte 42535
  tTractaments.FieldbyName('C_Llit'  ).asString := Datos.FieldbyName('C_Llit'  ).asString;
  tTractaments.FieldbyName('C_Planta').asString := Datos.FieldbyName('Planta').asString;
end;


procedure TwFitxaFiliacio.PrestaProgramadaAlSeleccionar( Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  C_PrestaProgramada.EditValue    := Datos.FieldbyName('C_Prestacio').asString;
  N_PrestaProgramada.EditValue    := Datos.FieldbyName('N_Prestacio').asString;

  MotiuPrestaProgramada.SqlDic[3] := Format('AND C_Prestacio = "%s" ',
                                     [Datos.FieldbyName('C_Prestacio').asString]);

  cnsCaracterProgramacio.SqlDic[3] := MotiuPrestaProgramada.SqlDic[3];   //- Format('AND C_Prestacio = "%s" ',
                                                                         //- [Datos.FieldbyName('C_Prestacio').asString]);

  C_MotiuProgramacio.EditValue := '';
  N_MotiuProgramacio.EditValue := '';

  CaracterProgramacio.EditValue   := '';
  N_CaracterProgramacio.EditValue := '';

  FrequenciaProgramacio.Visible := TeDretPresta(C_PrestaProgramada.EditValue, [66]);
  N_Frequencia.Visible          := FrequenciaProgramacio.Visible;  //- TeDretPresta(C_PrestaProgramada.EditValue, [66]);

  CaracterProgramacio.Visible   :=  TeDretPresta(C_PrestaProgramada.EditValue, [19]);
  N_CaracterProgramacio.Visible :=  CaracterProgramacio.Visible;   //- TeDretPresta(C_PrestaProgramada.EditValue, [19]);

//-  C_MotiuProgramacio.Visible    := TeDretPresta(C_PrestaProgramada.EditValue, [16]);
//-  C_MotiuProgramacio.Visible    :=  TeDretPresta(C_PrestaProgramada.EditValue, [16]);
  C_MotiuProgramacio.Visible    := PrestaTeCodiCamps(C_PrestaProgramada.EditValue, 'MOTIU');
  N_MotiuProgramacio.Visible    := C_MotiuProgramacio.Visible;
end;


procedure TwFitxaFiliacio.C_MotiuProgramacioAlConsultar(Sender: TObject);
begin

  if EsBuit(C_PrestaProgramada.EditValue)
  then FerError('PER ESTABLIR UN MOTIU ABANS S''HA D''ESCOLLIR LA PRESTACIÓ')
  else MotiuPrestaProgramada.ExecuteModal('','');

end;


procedure TwFitxaFiliacio.MotiuPrestaProgramadaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  C_MotiuProgramacio.EditValue := Datos.FieldbyName('C_Codi').asString;
  N_MotiuProgramacio.EditValue := Datos.FieldbyName('N_Codi').asString;
end;


procedure TwFitxaFiliacio.tFiliacioCalcFields(DataSet: TDataSet);
begin
  tFiliacio_SEXOChange(tFiliacio.FieldbyName('Sexo'));
end;


procedure TwFitxaFiliacio.cambioenLLit(Sender: TField);
begin
   if EsPle(tTractaments.FieldbyName('C_LLit').asString)
   then EtiLlit.EtiFontColor := clWindowText
   else EtiLlit.EtiFontColor := clRed;
end;


procedure TwFitxaFiliacio.tTractaments_C_LLitChange(Sender: TField);
begin
   CambioenLLit(Sender);
end;


procedure TwFitxaFiliacio.cambioenPlanta(Sender: TField);
begin
   if EsPle(tTractaments.FieldbyName('C_Planta').asString) then
   begin
     EtiPlanta.EtiFontColor := clWindowText;
     EtiLlit.EtiFontColor := clWindowText;
   end
   else begin
     EtiPlanta.EtiFontColor := clRed;
     EtiLlit.EtiFontColor   := clRed;
   end;
end;


procedure TwFitxaFiliacio.tTractaments_C_PlantaChange(Sender: TField);
begin
   CambioenPlanta(Sender);
end;

procedure TwFitxaFiliacio.CambioenTHab(Sender: TField);
begin
   if EsPle(tTractaments.FieldbyName('T_Habitacio').asString) then EtiTHabitacio.EtiFontColor := clWindowText
                                                              else EtiTHabitacio.EtiFontColor := clRed;
end;


procedure TwFitxaFiliacio.CambioenCoordinador(Sender: TField);
begin

   if EsPle(tTractaments.FieldbyName('C_Coordinador').asString)
   then EditCoordinador.EtiFontColor := clWindowText
   else EditCoordinador.EtiFontColor := clRed;

end;


procedure TwFitxaFiliacio.tTractaments_C_CoordinadorChange(Sender: TField);
begin
   CambioenCoordinador(Sender);
end;


procedure TwFitxaFiliacio.CambioenCaracter(Sender: TField);
begin

   if ( (EsPle(tTractaments.FieldbyName('C_Caracter').asString) )
    and (tTractaments.FieldbyName('C_Caracter').asString <> '0'))
   then  EditCaracter.EtiFontColor := clWindowText
   else EditCaracter.EtiFontColor := clRed;

end;


procedure TwFitxaFiliacio.tTractaments_C_CaracterChange(Sender: TField);
begin
   CambioenCaracter(Sender);
end;


procedure TwFitxaFiliacio.tFiliacio_SEXOChange(Sender: TField);
begin
   if nHCE_ON then EditSexe.EtiFontColor := HYArea3.Font.Color
   else if EsPle(tFiliacio.FieldbyName('Sexo').asString)
        then EditSexe.EtiFontColor := clWindowText
        else EditSexe.EtiFontColor := clRed;
end;


procedure TwFitxaFiliacio.tTractaments_C_DelegacioChange(Sender: TField);
begin
  if EsPle(tTractaments.FieldbyName('C_Delegacio').asString) then PanelDadesDelegacio.Height := 70
                                                             else PanelDadesDelegacio.Height := 1;
  pFacturacio.Height := 268;
  pFacturacio.Height := pFacturacio.Height + PanelDadesDelegacio.Height + pMetgeMutua.Height;
end;


procedure TwFitxaFiliacio.FrequenciaProgramadaAlSeleccionar( Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  FrequenciaProgramacio.EditValue := Datos.FieldbyName('Codi').asString;
  N_Frequencia.EditValue := Datos.FieldbyName('Descripcio').asString;
end;


procedure TwFitxaFiliacio.tTractaments_C_HospitalDestiChange(Sender: TField);
begin
   CambioenHospitalDesti(Sender);
end;


procedure TwFitxaFiliacio.CambioenHospitalOrigen(Sender: TField);
begin
   if ((tTractaments.FieldbyName('C_HospitalOrigen').isNull)
    or (tTractaments.FieldbyName('C_HospitalOrigen').asString = '-1'))
   then EditHospital.EtiFontColor := clRed
   else EditHospital.EtiFontColor := clWindowText;
end;

procedure TwFitxaFiliacio.CambioenDestiContInt(Sender: TField);
begin
   if ((tTractaments.FieldbyName('DESTI_CONT_INT').isNull)
    or (tTractaments.FieldbyName('DESTI_CONT_INT').asString = '-1'))
   then Desti_cont_int.EtiFontColor := clRed
   else Desti_cont_int.EtiFontColor := clWindowText;

   Desti_cont_intPreAlta.EtiFontColor := Desti_cont_int.EtiFontColor;
end;

procedure TwFitxaFiliacio.CambioenDestiContExt(Sender: TField);
begin
   if ((tTractaments.FieldbyName('DESTI_CONT_EXT').isNull)
    or (tTractaments.FieldbyName('DESTI_CONT_EXT').asString = '-1'))
   then Desti_cont_ext.EtiFontColor := clRed
   else Desti_cont_ext.EtiFontColor := clWindowText;

   Desti_cont_extPreAlta.EtiFontColor := Desti_cont_ext.EtiFontColor;
end;

procedure TwFitxaFiliacio.CambioenHospitalDesti(Sender: TField);
begin
   if ((tTractaments.FieldbyName('C_HospitalDesti').isNull)
    or (tTractaments.FieldbyName('C_HospitalDesti').asString = '-1'))
   then Hospital.EtiFontColor := clRed
   else Hospital.EtiFontColor := clWindowText;

   HospitalPreAlta.EtiFontColor := Hospital.EtiFontColor;
end;

procedure TwFitxaFiliacio.tTractaments_C_HospitalOrigenChange(Sender: TField);
begin
   CambioenHospitalOrigen(Sender);
end;


{-
procedure TwFitxaFiliacio.bNotaCarrecClick(Sender: TObject);
begin
   ImprimirNotaCarrec(1, tTractaments, tFiliacio);
end;
-}

procedure TwFitxaFiliacio.CambioenFrequencia(Sender: TField);
begin
  IF tTractaments.FieldbyName('C_Frequencia').isNull
  then EditFrequencia.EtifontColor := clRed
  else EditFrequencia.EtifontColor := clWindowText;
end;

procedure TwFitxaFiliacio.CambioenTSessio(Sender: TField);
begin
  if tTractaments.FieldbyName('T_Sessio').isNull
  then EditTSessio.EtifontColor := clRed
  else EditTSessio.EtifontColor := clWindowText;
end;

procedure TwFitxaFiliacio.tTractaments_C_FrequenciaChange(Sender: TField);
begin
   CambioenFrequencia(Sender);
end;


procedure TwFitxaFiliacio.tFiliacio_EsViuChange(Sender: TField);
begin
  lMort.Visible := (tFiliacio.FieldbyName('EsViu').AsString = 'N')
               and EsPle(tFiliacio.FieldbyName('NUM_HIST').AsString);

  if lMort.Visible
  then lMort.Caption := 'EXITUS -'+FormatDateTime('dd/mmm/yyyy', tTractaments.FieldbyName('Data_Alta').asDateTime)+'-';
end;


procedure TwFitxaFiliacio.bCalculaLetraNIFClick(Sender: TObject);
var
 doc: String;
begin

   if tFiliacio.EstaEditando then
   begin

       Nom.SetFocus;
       Ed_tFiliacio_DNI.SetFocus;
       doc := ValidarDNI( tFiliacio.FieldbyName('DNI').AsString );

       if tFiliacio.FieldByName('T_DOC').AsString='D' then
       begin
           if doc <> '0' then tFiliacio.FieldbyName('DNI').AsString := doc + CalculaLetraNif(StrToInt(doc))
                         else FerError(Format(Error36, [tFiliacio.FieldbyName('DNI').AsString,tFiliacio.FieldbyName('TipusDoc_N_Codi').AsString]));
       end
       else if tFiliacio.FieldByName('T_DOC').AsString='N' then
       begin
           if doc <> '0' then tFiliacio.FieldbyName('DNI').AsString := Copy(tFiliacio.FieldbyName('DNI').AsString,1,1) + doc + CalculaLetraNie(StrToInt(doc))
                         else FerError(Format(Error36,[tFiliacio.FieldbyName('DNI').AsString,tFiliacio.FieldbyName('TipusDoc_N_Codi').AsString]));
       end
       else if tFiliacio.FieldByName('T_DOC').AsString='P' then
       begin
           if doc = '0'  then FerError(Format(Error36, [tFiliacio.FieldbyName('DNI').AsString,tFiliacio.FieldbyName('TipusDoc_N_Codi').AsString]));
       end;

   end else beep;

end;


procedure TwFitxaFiliacio.tTractamentsAfterInsert(DataSet: TDataSet);
var
  UltimTractament: String;
  DatosFacturacion: TDadesFac;
begin

   if EsPle(tFiliacio.FieldbyName('NUM_HIST').asString) then
   begin
       // Bolquem les dades de facturació previstes si n'hi ha (estaran a Fili_DadesFac)
       if (tFiliDadesFac.FieldByName('C_CentreFac').AsString <> '') then
       begin
           if EsBuit(tTractaments.FieldbyName('C_CentreFac').AsString) then
           begin
              tTractaments.FieldbyName('C_CentreFac').AsString := tFiliDadesFac.FieldByName('C_CentreFac').AsString;
              tTractaments.FieldbyName('C_Client'   ).AsString := tFiliDadesFac.FieldByName('C_Client'   ).AsString;
              tTractaments.FieldbyName('C_Delegacio').AsString := tFiliDadesFac.FieldByName('C_Delegacio').AsString;
              FiliDadesFacPassades := True;
           end;
       end

       // Altrament, agafem les dades de facturació de l'últim tractament facturable, no privat, no ease (si n'hi ha) 
       else  begin
           UltimTractament :=  GutSelect('select T.C_TRACTAMENT ' +
                                         'from TRACTAMENTS T   ' +
                                         'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO ' +
                                         'where T.C_HISTORIA = %d   ' +
                                         'and   P.FACTURAR = "S"    ' +   // Això exclou visites de seguiment, família, 9999 i 8888.
                                         'and   P.ESEASE = "N"      ' +   // Això exclou EASE i NPC.
                                         'order by DATA_INGRES desc ',
                                         [tFiliacio.FieldbyName('NUM_HIST').AsInteger]);

           DatosFacturacion := GetDadesFac(UltimTractament);
           if EsPle(DatosFacturacion.C_CentreFac) then
           begin
              if EsPle(DatosFacturacion.C_CentreFac)
              then DataSet.FieldbyName('C_CentreFac').asString  := DatosFacturacion.C_CentreFac
              else DataSet.FieldbyName('C_CentreFac').Clear;

              if EsPle(DatosFacturacion.C_Client)
              then DataSet.FieldbyName('C_Client'   ).asString  := DatosFacturacion.C_Client
              else DataSet.FieldbyName('C_Client'   ).Clear;

              if EsPle(DatosFacturacion.C_Delegacio)
              then DataSet.FieldbyName('C_Delegacio').asString  := DatosFacturacion.C_Delegacio
              else DataSet.FieldbyName('C_Delegacio').Clear;

//              DataSet.FieldbyName('Papers'      ).asString  := DatosFacturacion.Papers;

              OmplirCampsDadesFac(DatosFacturacion, tTractaments);
           end;
       end;
   end;

   if pUCI.Visible then DataSet.FieldByName('UCI').AsString := 'N';
end;

procedure TwFitxaFiliacio.OmplirCampsDadesFac(DadesFac: TDadesFac; DataSet: TDataSet);
begin
    qParametresFactu.Close;
    qParametresFactu.Open;

    if qParametresFactu.fieldbyname('CaducaPermis').asString = 'S' then
    begin
      if DadesFac.CaducaPermis = 0
      then DataSet.FieldbyName('CaducaPermis').Clear
      else DataSet.FieldbyName('CaducaPermis').asDateTime:= DadesFac.CaducaPermis;
    end;

    if qParametresFactu.fieldbyname('PerPacient').asInteger <> 0 then
    begin
      DataSet.FieldbyName('PercentatgePacient' ).asFloat := DadesFac.PercentatgePacient;
    end;

    if qParametresFactu.fieldbyname('Referencia').asString = 'S' then
    begin
        if DadesFac.Referencia =''
        then DataSet.FieldbyName('Referencia'  ).Clear
        else DataSet.FieldbyName('Referencia'  ).asString      := DadesFac.Referencia;

        if DadesFac.Data_Sinistre=0
        then DataSet.FieldByName('Data_Sinistre').Clear
        else DataSet.FieldByName('Data_Sinistre').AsDateTime   := DadesFac.Data_Sinistre;

        if DadesFac.Matricula_Vehicle=''
        then DataSet.FieldByName('Matricula_Vehicle').Clear
        else DataSet.FieldByName('Matricula_Vehicle').AsString := DadesFac.Matricula_Vehicle;
    end;
end;

procedure TwFitxaFiliacio.cnsCaracterProgramacioAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  CaracterProgramacio.EditValue := Datos.FieldbyName('C_Codi').asString;
  N_CaracterProgramacio.EditValue := Datos.FieldbyName('N_Codi').asString;
end;


procedure TwFitxaFiliacio.CaracterProgramacioKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
 if Key = vk_Return then
  begin
     if EsBuit(CaracterProgramacio.EditValue) then
     begin
        N_CaracterProgramacio.EditValue := '';
        CaracterProgramacio.SetFocus;
     end;
  end;

end;


procedure TwFitxaFiliacio.tTractamentsBeforeInsert(DataSet: TDataSet);
begin
  EtiLlit.ReadOnly       := False;
  EtiLlit.Ctl3D          := True;

  EtiPlanta.ReadOnly     := False;
  EtiPlanta.Ctl3D        := True;

  EtiTHabitacio.ReadOnly := False;
  EtiTHabitacio.Ctl3D    := True;
end;


procedure TwFitxaFiliacio.tParentBeforePost(DataSet: TDataSet);
begin

  if ( (esPle(tFiliacio.FieldbyName('Num_Hist').asString))
  and  ( not tFiliacio.FieldbyName('Num_Hist').isNull) ) then
  begin

    if EsBuit(DataSet.FieldbyName('NumPar').asString) then
    begin
      DataSet.FieldbyName('NumPar').asString :=
                SelectSQL(wData.Projecte.DataBaseName,
               'SELECT NEWCODE FROM P_PARENT_ASSIGNNUMUSRA');
    end;
    DataSet.FieldbyName('Num_Hist').asString := tFiliacio.FieldbyName('Num_Hist').asString;

  end
  else
  begin
    PendienteInsertarUSRA:= True;
    MgUsra.Visible := False;
    Abort;
  end;
end;


procedure TwFitxaFiliacio.tFiliacioAfterScroll(DataSet: TDataSet);
begin
{
  if DataSet.FieldByName('Pensionist').asString = 'P'
  then cbPensionista.Checked := True
  else cbPensionista.Checked := False;
}
  if NT7OK and FOTOS_OK and wDataImatges.Gdb.Connected then
  begin
      TRY
        tFotos.Close;
        tFotos.ParamByName('C_Historia').AsInteger := tFiliacio.FieldByName('NUM_HIST').AsInteger;
        tFotos.Open;

        StaticText1.Visible := tFotos.FieldByName('FOTO').IsNull and tFiliacio.RequestLive;
        if tFotos.FieldByName('FOTO').IsNull and nHCE_ON then
        begin
            StaticText1.Top    := 26;
            StaticText1.Height := 193;
            StaticText1.Caption := '';
        end
        else begin
            StaticText1.Top    := 99;
            StaticText1.Height := 29;
            StaticText1.Caption := 'Doble clic per assignar una fotografia';
        end;
      EXCEPT
      END;
  end;

  sbDistrictes.Enabled := (CopyLeft(DataSet.FieldByName('CODIGO').AsString,2) = '08')  // només actiu per Barcelona ciutat
                        and (DataSet.FieldByName('POBLACIO').AsString = 'BARCELONA');

  if (tFiliacio.FieldByName('NUM_HIST').AsInteger <> 0)
  then eAmic.Text:=GutSelect('select amicnum from amics where num_hist=%d',[tFiliacio.FieldByName('NUM_HIST').AsInteger]);  // parte 60327

  tFiliDadesFac.Close;
  tFiliDadesFac.Open;
  tFiliDadesFac.FindKey(VarArrayof([tFiliacio.FieldByName('Num_Hist').AsVariant]));

  tFiliTDI.Close;
  tFiliTDI.Open;
end;

// SETEMBRE 2014: DESVINCULO LA PROCEDURE DEL CHECK, PQ ARA ÉS UN HYCHECK I NO CAL FER AIXÒ. 
procedure TwFitxaFiliacio.cbPensionistaClick(Sender: TObject);
begin
   if tFiliacio.RequestLive then
   begin
       if tFiliacio.Active then
       begin
          if not tFiliacio.EstaEditando then tFiliacio.Edit;

          if cbPensionista.Checked
          then tFiliacio.FieldByName('Pensionist').asString := 'P'
          else tFiliacio.FieldByName('Pensionist').asString := ' ';
       end;
   end
   else begin
      if tFiliacio.FieldByName('Pensionist').asString = 'P'
      then cbPensionista.Checked := True
      else cbPensionista.Checked := False;
   end;
end;


procedure TwFitxaFiliacio.tTractamentsAfterScroll(DataSet: TDataSet);
var
 Presta: String;
begin
    OldCentreFAc := DataSet.FieldByName('C_CentreFac').AsString;

    if tTractaments.RequestLive then
    begin
        if not EsBuit(tTractaments.FieldByName('C_Prestacio').AsString) then Presta := tTractaments.FieldByName('C_Prestacio').AsString
                                                                        else Presta := CopyLeft(lPrestacio.AsString,4);

        if EsBuit(tTractaments.FieldByName('T_Habitacio').AsString) and (Presta = '1004') then
        begin // CF <> 00, 50, 08 => 1 - compartida
            if  (tTractaments.FieldByName('C_CENTREFAC').AsString <> '00')
            and (tTractaments.FieldByName('C_CENTREFAC').AsString <> '50')
            and (tTractaments.FieldByName('C_CENTREFAC').AsString <> '08') then
            begin
                if not tTractaments.EstaEditando then tTractaments.Edit;
                tTractaments.FieldByName('T_Habitacio').AsString := '1';
            end;
        end;
    end;

    pGarant.Visible := (tTractaments.FieldByName('C_CENTREFAC').AsString = '00') or (tTractaments.FieldByName('C_CENTREFAC').AsString = '50');
    pPrescriptor.Visible := pGarant.Visible;

    if pFrequencia.Visible then
    begin
        if not tTractaments.EstaEditando then tTractaments.Edit;
        tTractaments.FieldByName('C_FREQUENCIA_TIPUS').AsInteger := 0; // per defecte la frequencia es setmanal
    end;
end;

procedure TwFitxaFiliacio.tTractamentsAfterEdit(DataSet: TDataSet);
var
 Presta: String;
begin                                                                                        
  // deixem modificar el coordinador, el metge alta i la data d'alta si fa menys de 7 dies de l'alta (o encara no és alta)
  if ((not DataSet.FieldbyName('Data_Alta').IsNull) and ((Fecha_Server - DataSet.FieldByName('Data_Alta').AsDateTime) <= 7))
  or  DataSet.FieldbyName('Data_Alta').IsNull  then
  begin
      EditCoordinador.ReadOnly := False;
      EditCoordinador.Ctl3D := True;
      Alta.ReadOnly := False;
      Alta.Ctl3D := True;
      MetgeAlta.ReadOnly := False;
      MetgeAlta.Ctl3D := True;
  end
  else begin
      EditCoordinador.ReadOnly := True;
      EditCoordinador.Ctl3D := False;
      Alta.ReadOnly := True;
      Alta.Ctl3D := False;
      MetgeAlta.ReadOnly := True;
      MetgeAlta.Ctl3D := False;
  end;
  sbCanviCoordinador.Enabled := EditCoordinador.ReadOnly;

  if EnAlta then if tTractaments.FieldByName('Data_Alta').IsNull then tTractaments.FieldByName('Data_Alta').AsDateTime := Fecha_Server;

  if not EsBuit(tTractaments.FieldByName('C_Prestacio').AsString) then Presta := tTractaments.FieldByName('C_Prestacio').AsString
                                                                  else Presta := CopyLeft(lPrestacio.AsString,4);

  if EsBuit(tTractaments.FieldByName('T_Habitacio').AsString) and (Presta = '1004') then
  begin // CF <> 00, 50, 08 => 1 - compartida
      if  (DataSet.FieldByName('C_CENTREFAC').AsString <> '00')
      and (DataSet.FieldByName('C_CENTREFAC').AsString <> '50')
      and (DataSet.FieldByName('C_CENTREFAC').AsString <> '08') then tTractaments.FieldByName('T_Habitacio').AsString := '1';
  end;
{  EtiTHabitacio.Enabled := ((tTractaments.FieldByName('C_CENTREFAC').AsString='00') or (tTractaments.FieldByName('C_CENTREFAC').AsString='50') or (tTractaments.FieldByName('C_CENTREFAC').AsString='08'))  or
                            ((tTractaments.FieldByName('C_CENTREFAC').AsString<>'00') and (tTractaments.FieldByName('C_CENTREFAC').AsString<>'50') and (tTractaments.FieldByName('C_CENTREFAC').AsString<>'08') and
                             EsBuit(tTractaments.FieldByName('T_Habitacio').AsString));   16-03-2017}
end;


procedure TwFitxaFiliacio.tFiliacioAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean; NombreConsulta: String;
                                                           var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
     if nHCE_ON and (CompareText(NombreConsulta, 'Hospital')<>0) then Exit;

     Personalizada := False;
     if (CompareText(NombreConsulta, 'CP')=0)
     or (CompareText(NombreConsulta, 'Poblacio')=0)
     then Begin
          if ValueDb=Null
          then CPoblacions.SqlDic[3] := '[AND FILTRO]'
          else CPoblacions.SqlDic[3] := 'AND '+SubFiltro+' [AND FILTRO]';
          cPoblacions.ExecuteModal;
          Personalizada := True;
     end;
//PARTE 35486 - I.
     if (CompareText(NombreConsulta, 'Pais')=0)
     then begin
         if ValueDB=Null
         then cPais.SqlDic[1] := '[FILTRO]'
         else cPais.SqlDic[1] := 'WHERE  '+subfiltro+ '[AND FILTRO]';
         cPais.ExecuteModal;
         Personalizada := True;
     end;
//PARTE 35486 - F.
     if CompareText(NombreConsulta, 'EstatCivil')=0
     then begin
         if ValueDB=Null
         then cEstatCivil.SqlDic[1] := '[FILTRO]'
         else cEstatCivil.SqlDic[1] := 'WHERE '+subfiltro+' [AND FILTRO]';
         cEstatCivil.ExecuteModal;
         Personalizada:=True;
     end;
end;


procedure TwFitxaFiliacio.cPoblacionsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tFiliacio.Edicion;
  tFiliacio.FieldByName('Codigo'    ).AsString := Datos.FieldByName('CPostal'     ).AsString;
  tFiliacio.FieldByName('Poblacio'  ).AsString := Datos.FieldByName('N_Poblacio'  ).AsString;
  tFiliacio.FieldByName('Provincia' ).AsString := Datos.FieldByName('N_Provincia' ).AsString;
  tFiliacio.FieldByName('Residencia').AsString := Datos.FieldByName('C_Residencia').AsString;

  // 28-10-2019: si el codi postal és andorrà (PROVINCIA='AD') el país ha de ser Andorra (el modifiquem automàticament)
  if Datos.FieldByName('C_PROVINCIA').AsString = 'AD' then tFiliacio.FieldByName('PAIS').AsString := '376'
                                                      else tFiliacio.FieldByName('PAIS').AsString := '34';
end;


procedure TwFitxaFiliacio.tFiliacioBeforeEdit(DataSet: TDataSet);
begin
  if not tFiliacio.requestLive then FerError(Error39, True);
end;


procedure TwFitxaFiliacio.tParentBeforeEdit(DataSet: TDataSet);
begin
  if not tParent.requestLive then FerError(Error39, True);
end;


procedure TwFitxaFiliacio.tTractaments_Data_AltaChange(Sender: TField);
begin
   if ((not tTractaments.FieldbyName('Data_Alta').isNull) and (not tTractaments.FieldbyName('Data_Ingres').isNull)) then
   begin
     if (tTractaments.FieldbyName('Data_Alta').asDateTime < tTractaments.FieldbyName('Data_Ingres').asDateTime)
     then FerError(' * * LA DATA D''ALTA NO POT SER ANTERIOR A LA D''INGRÉS * * ', True);

     if lMort.Visible
     then lMort.Caption := ' EXITUS -'+FormatDateTime('dd/mmm/yyyy', tTractaments.FieldbyName('Data_Alta' ).asDateTime)+'-';
   end;
end;


procedure TwFitxaFiliacio.tTractaments_Data_PreAltaChange(Sender: TField);
begin
   if ((not tTractaments.FieldbyName('Data_PreAlta').isNull) and (not tTractaments.FieldbyName('Data_Ingres').isNull)) then
   begin

     if (tTractaments.FieldbyName('Data_PreAlta').asDateTime < tTractaments.FieldbyName('Data_Ingres').asDateTime) then
     begin
        tTractaments.FieldbyName('Data_PreAlta').asDateTime := Fecha_Server;
        FerError(' * * LA DATA DE PREALTA NO POT SER ANTERIOR A LA D''INGRÉS * * ', True);
     end;

     if (tTractaments.FieldbyName('Data_PreAlta').asDateTime < Fecha_Server - 7) then
     begin
        tTractaments.FieldbyName('Data_PreAlta').asDateTime := Fecha_Server;
        FerError(' * * LA DATA DE PREALTA NO POT SER ANTERIOR A UNA SETMANA * * ', True);
     end;

   end;

   // if not tTractaments.Active then Exit;
   // si ja han dit que no renoven no poden deixar DATA_PREALTA buida
   if  tTractaments.FieldByName('DATA_PREALTA').IsNull and (not tTractaments.FieldByName('DATA_NO_RENOVACIO').IsNull)
   then FerError('Pacient que ha dit que no renova. La data PreAlta és obligatòria.',True);

   tDataFiContractat.Enabled := pRenovaNPC.Visible and tTractaments.FieldByName('DATA_PREALTA').IsNull;

   //if not (tTractaments.State in [dsInsert,dsEdit]) then tTractaments.Edit;
   if tDataFiContractat.Enabled
   then tTractaments.FieldByName('DATA_FI_CONTRACTAT').AsDateTime := BuscaDiaNPC(tTractaments.FieldByName('C_Frequencia').AsString,
                                                                                 tTractaments.FieldByName('Data_Ingres').AsDateTime+60)
   else tTractaments.FieldByName('DATA_FI_CONTRACTAT').Clear;
end;


procedure TwFitxaFiliacio.SpeedButton3Click(Sender: TObject);
begin
  ImprimirEtiquetes(tFiliacio);
end;


procedure TwFitxaFiliacio.ComprobarDatosPrealta(Sender: TObject);
var
  Cont: Integer;
  db: String;
begin

   ErrorEspearProg := False;
   db := wData.Projecte.DataBaseName;
   //Comprobem la integritat de les dades.
   //Prestacio

//    cont := 0;
    if EsPle(C_PrestaProgramada.EditValue) then
    begin
       cont := SelectSQLfmt(db, 'SELECT COUNT(*) FROM PRESTACION WHERE C_PRESTACIO = %s',
                           [C_PrestaProgramada.EditValue]);
       if cont < 1 then
       begin
         N_PrestaProgramada.EditValue := '';
         ErrorEspearProg := True;
         C_PrestaProgramada.SetFocus;
         FerError(' * * PRESTACIO NO VÀLIDA * * ', True);
       end;
       N_PrestaProgramada.EditValue := SelectSQLfmt(db, 'SELECT N_Prestacio FROM PRESTACION WHERE C_PRESTACIO = %s',
                           [C_PrestaProgramada.EditValue]);
    end else
    begin
       N_PrestaProgramada.EditValue     := '';
       C_MotiuProgramacio.EditValue     := '';
       N_MotiuProgramacio.EditValue     := '';
       CaracterProgramacio.EditValue    := '';
       N_CaracterProgramacio.EditValue  := '';
    end;
{   else
    begin
      C_PrestaProgramada.SetFocus;
      ErrorEspearProg := True;
      FerError(' * * S''HA DESPECIFICAR LA PRESTACIO * * ', True);
    end;}

    //Motiu
    if EsPle(C_MotiuProgramacio.EditValue) then
    begin

       //Mirem que sigui vàlid
       cont := SelectSQLfmt(db, 'SELECT COUNT(*) FROM CODICAMPS WHERE TIPUSCODI = "MOTIU" AND C_CODI = %s',
                           [C_MotiuProgramacio.EditValue]);

       if cont < 1 then
       begin
          C_MotiuProgramacio.SetFocus;
          N_MotiuProgramacio.EditValue := '';
          ErrorEspearProg := True;
          FerError(' * * EL MOTIU INTRODUÏT NO ES VÀLID * * ', True);
       end
       else
       begin
           cont := SelectSQLfmt(db, '       SELECT COUNT(*)            '+
                                    '  FROM CODICAMPS C                '+
                                    '  JOIN PRESTACODICAMPS PC         '+
                                    '    ON PC.TIPUSCODI = C.TIPUSCODI '+
                                    '   AND PC.C_CODI = C.C_CODI       '+
                                    '   AND PC.C_PRESTACIO = %s        '+
                                    ' WHERE C.TIPUSCODI = "MOTIU"      '+
                                    '   AND C.C_CODI    = %s           ',
                                [C_PrestaProgramada.EditValue, C_MotiuProgramacio.EditValue]);

           if cont < 1 then
           begin
                    C_MotiuProgramacio.SetFocus;
                    N_MotiuProgramacio.EditValue := '';
                    ErrorEspearProg := True;
                    FerError(Format(' * * AQUEST MOTIU NO ESTA ASSIGNAT A LA PRESTACIÓ %s * * ',
                                           [C_PrestaProgramada.EditValue])
                                    ,True);
           end;

           N_MotiuProgramacio.EditValue :=
                   SelectSQLfmt(db, '       SELECT C.N_CODI            '+
                                    '  FROM CODICAMPS C                '+
                                    '  JOIN PRESTACODICAMPS PC         '+
                                    '    ON PC.TIPUSCODI = C.TIPUSCODI '+
                                    '   AND PC.C_CODI = C.C_CODI       '+
                                    '   AND PC.C_PRESTACIO = %s        '+
                                    ' WHERE C.TIPUSCODI = "MOTIU"      '+
                                    '   AND C.C_CODI    = %s           ',
                                [C_PrestaProgramada.EditValue, C_MotiuProgramacio.EditValue]);

       end;
    end
    else N_MotiuProgramacio.EditValue := '';

    //Freqüència
    if EsPle(FrequenciaProgramacio.EditValue) then
    begin

       //Mirem que sigui vàlid
       cont := SelectSQLfmt(db, 'SELECT COUNT(*) FROM TORNAMB WHERE CODI = "%s"',
                           [FrequenciaProgramacio.EditValue]);

       if cont < 1 then
       begin
          FrequenciaProgramacio.SetFocus;
          N_Frequencia.EditValue := '';
          ErrorEspearProg := True;
          FerError(' * * LA FREQUÈNCIA PROGRAMADA INTRODUÏDA NO ES VÀLIDA * * ', True);
       end;

       N_Frequencia.EditValue := SelectSQLfmt(db, 'SELECT DESCRIPCIO FROM TORNAMB WHERE CODI = "%s"',
                                                  [FrequenciaProgramacio.EditValue]);
    end
    else N_Frequencia.EditValue := '';

  //Caràcter
    if EsPle(CaracterProgramacio.EditValue) then
    begin

       //Mirem que sigui vàlid
       cont := SelectSQLfmt(db, 'SELECT COUNT(*) FROM CODICAMPS WHERE TIPUSCODI = "CARACTER" AND C_CODI = %s',
                           [CaracterProgramacio.EditValue]);
       if cont < 1 then
       begin
          CaracterProgramacio.SetFocus;
          N_CaracterProgramacio.EditValue := '';
          ErrorEspearProg := True;
          FerError(' * * EL CARÀCTER INTRODUÏT NO ES VÀLID * * ', True);
       end
       else
       begin
           cont := SelectSQLfmt(db, '       SELECT COUNT(*)            '+
                                    '  FROM CODICAMPS C                '+
                                    '  JOIN PRESTACODICAMPS PC         '+
                                    '    ON PC.TIPUSCODI = C.TIPUSCODI '+
                                    '   AND PC.C_CODI = C.C_CODI       '+
                                    '   AND PC.C_PRESTACIO = %s        '+
                                    ' WHERE C.TIPUSCODI = "CARACTER"   '+
                                    '   AND C.C_CODI    = %s           ',
                                [C_PrestaProgramada.EditValue, CaracterProgramacio.EditValue]);

           if cont < 1 then
           begin
              CaracterProgramacio.setFocus;
              N_CaracterProgramacio.EditValue := '';
              ErrorEspearProg := True;
              FerError(Format(' * * AQUEST CARÀCTER NO ESTA ASSIGNAT A LA PRESTACIÓ %s * * ',
                               [C_PrestaProgramada.EditValue])
                      ,True);
           end;

           N_CaracterProgramacio.EditValue :=
                   SelectSQLfmt(db, '       SELECT C.N_CODI            '+
                                    '  FROM CODICAMPS C                '+
                                    '  JOIN PRESTACODICAMPS PC         '+
                                    '    ON PC.TIPUSCODI = C.TIPUSCODI '+
                                    '   AND PC.C_CODI = C.C_CODI       '+
                                    '   AND PC.C_PRESTACIO = %s        '+
                                    ' WHERE C.TIPUSCODI = "CARACTER"   '+
                                    '   AND C.C_CODI    = %s           ',
                                [C_PrestaProgramada.EditValue, CaracterProgramacio.EditValue]);
       end;
    end
    else N_CaracterProgramacio.EditValue := '';

end;


procedure TwFitxaFiliacio.SpeedButton2Click(Sender: TObject);
begin
   C_PrestaProgramada.EditValue     := '';
   N_PrestaProgramada.EditValue     := '';
   C_MotiuProgramacio.EditValue     := '';
   N_MotiuProgramacio.EditValue     := '';
   FrequenciaProgramacio.EditValue  := '';
   N_Frequencia.EditValue           := '';
   CaracterProgramacio.EditValue    := '';
   N_CaracterProgramacio.EditValue  := '';
end;


procedure TwFitxaFiliacio.CaracterProgramacioAlConsultar(Sender: TObject);
begin
  if EsBuit(C_PrestaProgramada.EditValue)
  then FerError('PER ESTABLIR UN CARACTER ABANS S''HA D''ESCOLLIR LA PRESTACIÓ')
  else cnsCaracterProgramacio.ExecuteModal('','');
end;


{-
procedure TwFitxaFiliacio.accAmbulatoriExecute(Sender: TObject);
begin
   ImprimirNotaCarrec(2, tTractaments, tFiliacio);
end;
-}

{-
procedure TwFitxaFiliacio.accAltaIngresExecute(Sender: TObject);
begin
   ImprimirNotaCarrec(3, tTractaments, tFiliacio);
end;
-}

procedure TwFitxaFiliacio.C_MotiuProgramacioChange(Sender: TObject);
begin
  if EsPle(C_MotiuProgramacio.EditValue)
  then C_MotiuProgramacio.Font.Color := clBlack
  else C_MotiuProgramacio.Font.Color := clRed;
end;


procedure TwFitxaFiliacio.FrequenciaProgramacioChange(Sender: TObject);
begin
  if EsPle(FrequenciaProgramacio.EditValue)
  then FrequenciaProgramacio.Font.Color := clBlack
  else FrequenciaProgramacio.Font.Color := clRed;
end;


procedure TwFitxaFiliacio.CaracterProgramacioChange(Sender: TObject);
begin
  if EsPle(CaracterProgramacio.EditValue)
  then CaracterProgramacio.Font.Color := clBlack
  else CaracterProgramacio.Font.Color := clRed;
end;


procedure TwFitxaFiliacio.PintarParamsFac;
begin
    if TePapers(tTractaments.FieldbyName('C_EstatFac').asInteger) then
    begin
      if esBuit(tTractaments.FieldByName('C_CentreFac').AsString)
      then Centre.EtiFontColor    := clRed
      else Centre.EtiFontColor    := clWindowText;

      if  ( esBuit( tTractaments.FieldByName('C_Client').AsString   ))
      and (TeClient(tTractaments.FieldByName('C_CentreFac').AsString))
      then Client.EtiFontColor    := clRed
      else Client.EtiFontColor    := clWindowText;

      if esBuit(tTractaments.FieldByName('C_Delegacio').AsString)
      and (TeDelegacio(tTractaments.FieldByName('C_CentreFac').AsString))
      then Delegacio.EtiFontColor := clRed
      else Delegacio.EtiFontColor := clWindowText;
    end
    else
    begin
      Centre.EtiFontColor    := clWindowText;
      Client.EtiFontColor    := clWindowText;
      Delegacio.EtiFontColor := clWindowText;
    end;
end;


procedure TwFitxaFiliacio.tTractaments_C_CentreFacValidate(Sender: TField);
var
  OldPrestacio, TEMPPRESTA, NombPrestacio, EsPresencial: String;
begin
     if pc.ActivePage = tsFacturacio then
     begin
       //Nom.SetFocus;
       Centre.SetFocus;

       if tTractaments.EstaEditando then
       begin
          if (esPle(tTractaments.FieldbyName('C_Client').asString)
          and esBuit(tTractaments.FieldbyName('Client_N_Client').asString))
          then tTractaments.FieldbyName('C_Client').Clear;

          if (esPle(tTractaments.FieldbyName('C_Delegacio').asString)
          and esBuit(tTractaments.FieldbyName('Delegacio_Carrer').asString))
          then tTractaments.FieldbyName('C_Delegacio').Clear;

          OldPrestacio := GutSelect('select C_PRESTACIO from ESPERA where C_ESPERA = %s', [NUMESPERA]); 

          // Filiant consulta externa:
          if  (tTractaments.State in [dsInsert]) 
          and TeDretPresta(OldPrestacio, [145])
          then begin
              // Si és del SCS hem de mirar si és 1a visita o 2a
              if (tTractaments.FieldbyName('C_CentreFac').asString = '04') then
              begin
                  if TeDretPresta(OldPrestacio, [185]) then EsPresencial := 'N'
                                                       else EsPresencial := 'S';

                  if esPle(tTractaments.FieldbyName('C_Historia').AsString) then
                  begin
                      // Si el motiu de la consulta és Preoperatori, serà una 1a visita sempre:
                      if (tTractaments.FieldByName('C_Motiu').AsInteger = 61) then TEMPPRESTA := '2001'

                      // Canvi d'una primera visita a segona i viceversa.
                      else begin
                          TEMPPRESTA := SelectSQLfmt(wData.Projecte.DataBaseName,
                                  ' SelecT C_Prestacio From P_TRACTAMENTS_SEGONAVISITA("%s","%s","%s","%s") WHERE C_PRESTACIO IS NOT NULL',[
                                  tTractaments.FieldbyName('C_HISTORIA'    ).asString,
                                  FechaIB(tTractaments.FieldbyName('DATA_INGRES').asDateTime),
                                  tTractaments.FieldbyName('C_COORDINADOR' ).asString, EsPresencial]);

                          // si era una segona i segueix sent una segona, cal mantenir el tipus de segona (2002, 2011, 2012...)
                          if EsPresencial = 'N' then
                          begin
                              if (OldPrestacio <> '6001') and (TEMPPRESTA <> '6001') then TEMPPRESTA := OldPrestacio;
                          end
                          else begin
                              if (OldPrestacio <> '2001') and (TEMPPRESTA <> '2001') then TEMPPRESTA := OldPrestacio;
                          end;
                      end;

                      NombPrestacio := SelectSQL(wData.Projecte.DataBaseName, 'SELECT N_PRESTACIO FROM Prestacion WHERE C_PRESTACIO = '+
                                       TEMPPRESTA);

                      lPrestacio.EditValue := TEMPPRESTA +' - '+NombPrestacio;

                      tTractaments.FieldbyName('C_Prestacio').asString := TEMPPRESTA;
                  end
                  else begin
                      if EsPresencial = 'N' then TEMPPRESTA := '6001'
                                            else TEMPPRESTA := '2001';
                      tTractaments.FieldbyName('C_Prestacio'  ).asString := TEMPPRESTA;
                      NombPrestacio := SelectSQL(wData.Projecte.DataBaseName, 'SELECT N_PRESTACIO FROM Prestacion WHERE C_PRESTACIO = '+TEMPPRESTA);
                      lPrestacio.EditValue := TEMPPRESTA +' - '+NombPrestacio;
                  end;

                  CAMBIODEPRESTACION2001 := (OldPrestacio <> tTractaments.FieldbyName('C_Prestacio').AsString);       //+
                  if CAMBIODEPRESTACION2001 then MostrarPaneles(tTractaments.FieldbyName('C_Prestacio'  ).asString);  //+
              end

              // Si no és del SCS, recuperem la prestació que venia de la llista d'espera
              // Podria ser que en obrir la FitxaFiliacio tingués centrefac 04 i li hagués recalculat la prestació.
              else begin
                  tTractaments.FieldbyName('C_Prestacio').asString := OldPrestacio;
                  NombPrestacio := GutSelect('select N_PRESTACIO from PRESTACION where C_PRESTACIO = "%s"', [OldPrestacio]);
                  lPrestacio.EditValue := OldPrestacio + ' - ' + NombPrestacio;
                  MostrarPaneles(OldPrestacio);
                  CAMBIODEPRESTACION2001 := False;
              end;
          end;
       end;

     end;

     qParametresFactu.Close;
     qParametresFactu.Open;
     pCaducaPermis.Enabled := qParametresFactu.FieldbyName('CaducaPermis').asString  = 'S';
     pCaducaPermis.Ctl3D   := qParametresFactu.FieldbyName('CaducaPermis').asString  = 'S';
     pPerPacient.Enabled   := qParametresFactu.FieldbyName('PerPacient'  ).asString <> '0';
     pPerPacient.Ctl3D     := qParametresFactu.FieldbyName('PerPacient'  ).asString <> '0';
     pReferencia.Enabled   := qParametresFactu.FieldbyName('Referencia'  ).asString  = 'S';
     pReferencia.Ctl3D     := qParametresFactu.FieldbyName('Referencia'  ).asString  = 'S';
     pintarParamsFac;
end;


procedure TwFitxaFiliacio.tTractaments_C_ClientValidate(Sender: TField);
begin
     if pc.ActivePage = tsFacturacio then
     begin
       //Nom.SetFocus;
       Client.SetFocus;

       if tTractaments.EstaEditando then
       begin
          if (esPle(tTractaments.FieldbyName('C_Delegacio').asString)
          and esBuit(tTractaments.FieldbyName('Delegacio_Carrer').asString))
          then tTractaments.FieldbyName('C_Delegacio').Clear;
       end;

     end;
     qParametresFactu.Close;
     qParametresFactu.Open;
     pCaducaPermis.Enabled := qParametresFactu.FieldbyName('CaducaPermis').asString  = 'S';
     pCaducaPermis.Ctl3D   := qParametresFactu.FieldbyName('CaducaPermis').asString  = 'S';
     pPerPacient.Enabled   := qParametresFactu.FieldbyName('PerPacient'  ).asString <> '0';
     pPerPacient.Ctl3D     := qParametresFactu.FieldbyName('PerPacient'  ).asString <> '0';
     pReferencia.Enabled   := qParametresFactu.FieldbyName('Referencia'  ).asString  = 'S';
     pReferencia.Ctl3D     := qParametresFactu.FieldbyName('Referencia'  ).asString  = 'S';
     pintarParamsFac;
end;


procedure TwFitxaFiliacio.tTractaments_C_DelegacioValidate(Sender: TField);
begin
     if pc.ActivePage = tsFacturacio then
     begin
       //Nom.SetFocus;
       Delegacio.SetFocus;
     end;
     qParametresFactu.Close;
     qParametresFactu.Open;
     pCaducaPermis.Enabled := qParametresFactu.FieldbyName('CaducaPermis').asString  = 'S';
     pCaducaPermis.Ctl3D   := qParametresFactu.FieldbyName('CaducaPermis').asString  = 'S';
     pPerPacient.Enabled   := qParametresFactu.FieldbyName('PerPacient'  ).asString <> '0';
     pPerPacient.Ctl3D     := qParametresFactu.FieldbyName('PerPacient'  ).asString <> '0';
     pReferencia.Enabled   := qParametresFactu.FieldbyName('Referencia'  ).asString  = 'S';
     pReferencia.Ctl3D     := qParametresFactu.FieldbyName('Referencia'  ).asString  = 'S';
     pintarParamsFac;
end;


procedure TwFitxaFiliacio.CrearEstadosFac(Estados: Array of Integer);
var
  i: Integer;
begin

  qEstatsFac.Open;

  rgEstadosFacturacion.width := 185;
  rgEstadosFacturacion.Columns := 1;
  rgEstadosFacturacion.Columns := trunc(sqrt(High(Estados)+1));
  rgEstadosFacturacion.width := rgEstadosFacturacion.width * rgEstadosFacturacion.Columns;
  rgEstadosFacturacion.Items.Clear;
  rgEstadosFacturacion.Values.Clear;

  for i := 0 to High(Estados) do
  begin
    qEstatsFac.locate('C_Codi', Variant(Estados[i]), []);

    rgEstadosFacturacion.Items.Add ( qEstatsFac.FieldbyName('N_Codi').asString );
    rgEstadosFacturacion.Values.Add( qEstatsFac.FieldbyName('C_Codi').asString );
  end;

  if not tTractaments.EstabaInsertando then
  begin
    for i := 0 to High(Estados) do
    begin
       if rgEstadosFacturacion.Values[i] = tTractaments.FieldbyName('C_EstatFac').asString
       then rgEstadosFacturacion.ItemIndex := i;
    end;
  end
  else rgEstadosFacturacion.ItemIndex := 0;

end;


procedure TwFitxaFiliacio.MostrarEstadosFact(Estat: Integer);
var
  estats: Array of Integer;
  longi: Integer;
begin
    if TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [109]) then  // no facturable
    begin
      Estat := 50;
      if tTractaments.estaEditando
      then tTractaments.FieldbyName('C_EstatFac').asString := '50'
      else
      begin
          GutExecute('Update Tractaments Set C_EstatFac = %s Where C_Tractament = %s',
                     ['50', tTractaments.FieldbyName('C_Tractament').asString]);
      end;
    end;

    if NoFacturableSCS  // drets P198 o X16)
    and not (tTractaments.FieldByName('C_EstatFac').AsInteger in [50..59])  // gener 2023: si ja és no facturable per algun altre motiu, el mantenim
    then begin
        pEstatFactu.Visible        := False;
        pEstatsFacturacion.Visible := True;

        if (tTractaments.FieldByName('c_centrefac').AsString = '04') then Estat := 50
                                                                     else Estat := 0;

        if tTractaments.estaEditando
        then tTractaments.FieldbyName('C_EstatFac').asString := IntToStr(Estat)
        else GutExecute('Update Tractaments Set C_EstatFac = %s Where C_Tractament = %s',
                        [IntToStr(Estat), tTractaments.FieldbyName('C_Tractament').asString]);

        pEstatsFacturacion.Enabled := (Estat <> 50);
        rgEstadosFacturacion.Ctl3D := pEstatsFacturacion.Enabled;
    end;

    // Març 2022: Si l'estat de facturació és "activitat anul·lada", només permetem modificar-lo a certs usuaris
    if (tTractaments.FieldByName('EstatFac_R_Codi').AsString = '9')
    and not TeDretMetge (wData.UsuariActiu.Codi, [306]) then
    begin
        pEstatFactu.Show;
        EditEstatFactu.ReadOnly := True;
        EditEstatFactu.Ctl3D := False;
        pEstatsFacturacion.Hide;
        Exit;
    end;

    // Març 2022: els usuaris autoritzats poden fer el que vulguin amb els estats de facturació (si la prestació és facturable, està clar)
    if TeDretMetge(wData.UsuariActiu.Codi, [278]) then
    begin
        pEstatFactu.Show;
        EditEstatFactu.ReadOnly := False;
        EditEstatFactu.Ctl3D := True;
        pEstatsFacturacion.Hide;
        Exit;
    end;

    if      (Estat = 0)                    then longi := 5
    else if (Estat in [10,11,20,21])       then longi := 4
                                           else longi := 0;

    if (Estat=50) and NoFacturableSCS then longi := longi + 1;

    if (longi > 0) then
    begin
        // Per a certes prestacions (dret P12), permetem posar estat facturat
        if (tTractaments.FieldByName('c_centrefac').AsString = '00')
        or (tTractaments.FieldByName('c_centrefac').AsString = '50')
        then longi := longi + 1;
        SetLength(estats, longi);

        CASE Estat OF
                 0: begin estats[0] := 0;   estats[1] := 10;  estats[2] := 20;  estats[3] := 21;  estats[4] := 50; end;
                10: begin estats[0] := 10;  estats[1] := 20;  estats[2] := 21;  estats[3] := 50;  end;
          11,20,21: begin estats[0] := 11;  estats[1] := 20;  estats[2] := 21;  estats[3] := 50;  end;
                50: begin estats[0] := 50;  end;
        END;

        if (tTractaments.FieldByName('c_centrefac').AsString = '00')
        or (tTractaments.FieldByName('c_centrefac').AsString = '50')
        then estats[longi-1] := 80;

        CrearEstadosFac(estats);
    end

    else begin
        if not NoFacturableSCS then
        begin
            pEstatFactu.Enabled := False;
            pEstatFactu.Visible := True;
            pEstatsFacturacion.Visible := False;
        end;
    end;
end;


procedure TwFitxaFiliacio.tTractamentsAfterOpen(DataSet: TDataSet);
begin
  if not ForaDHores then
  begin
      lPrestacio.EditValue := tTractaments.FieldByName('C_Prestacio').AsString + '-' + tTractaments.FieldByName('Prestacio_N_Prestacio').AsString;
      MostrarPaneles(tTractaments.FieldByName('C_Prestacio').AsString);
  end;
  llitAbans := tTractaments.FieldByName('c_llit').AsString;  // guardar el llit original per saber si l'han modificat

  EtiLlit.ReadOnly         := False;
  EtiLlit.Ctl3D            := True;
  EtiPlanta.ReadOnly       := False;
  EtiPlanta.Ctl3D          := True;
  EtiTHabitacio.ReadOnly   := False;
  EtiTHabitacio.Ctl3D      := True;

  if not EsBuit(tTractaments.FieldByName('C_Llit'     ).AsString) then
  begin
    EtiLlit.ReadOnly       := True;
    EtiLlit.Ctl3D          := False;
  end;

  if not EsBuit(tTractaments.FieldByName('C_Planta'   ).AsString) then
  begin
    EtiPlanta.ReadOnly     := True;
    EtiPlanta.Ctl3D        := False;
  end;

{  if not EsBuit(tTractaments.FieldByName('T_Habitacio').AsString) then
  begin
    EtiTHabitacio.ReadOnly := True;
    EtiTHabitacio.Ctl3D    := False;  16-03-2017}
{  end
  else begin
    if not tTractaments.EstaEditando then tTractaments.Edit;
    CentreExit(Centre);
  end;}

  pPressupost.Visible      := TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString,[152]);
  pPressupost.Ctl3D        := pPressupost.Visible;

{  Ed_tTractaments_ID_GARANT.Enabled := tTractaments.FieldByName('ID_GARANT').IsNull;
  bNouGarant.Enabled                := Ed_tTractaments_ID_GARANT.Enabled;
  bModificarGarant.Enabled          := Ed_tTractaments_ID_GARANT.Enabled;

  Ed_tTractaments_ID_FACILITADOR.Enabled := tTractaments.FieldByName('ID_FACILITADOR').IsNull; 16-03-2017}
end;


procedure TwFitxaFiliacio.CentreExit(Sender: TObject);
var
 Presta: String;
begin
  if tTractaments.EstaEditando then
  begin
     if (esPle(tTractaments.FieldbyName('C_Client').asString)
     and esBuit(tTractaments.FieldbyName('Client_N_Client').asString))
     then tTractaments.FieldbyName('C_Client').Clear;

     if (esPle(tTractaments.FieldbyName('C_Delegacio').asString)
     and esBuit(tTractaments.FieldbyName('Delegacio_Carrer').asString))
     then tTractaments.FieldbyName('C_Delegacio').Clear;

    if not EsBuit(tTractaments.FieldByName('C_Prestacio').AsString) then Presta := tTractaments.FieldByName('C_Prestacio').AsString
                                                                    else Presta := CopyLeft(lPrestacio.AsString,4);


{    if not EtiTHabitacio.ReadOnly then  tTractaments.FieldByName('T_Habitacio').Clear;  // el netegem pq per <> 00,50,08 només poden posar '1' si no l'havíem enviat a SAP 16-03-2017}
    if EsBuit(tTractaments.FieldByName('T_Habitacio').AsString) and (Presta = '1004') then
    begin // CF <> 00, 50, 08 => 1 - compartida
        if  (tTractaments.FieldByName('C_CENTREFAC').AsString <> '00')
        and (tTractaments.FieldByName('C_CENTREFAC').AsString <> '50')
        and (tTractaments.FieldByName('C_CENTREFAC').AsString <> '08') then
        begin
            if not tTractaments.EstaEditando then tTractaments.Edit;
            tTractaments.FieldByName('T_Habitacio').AsString := '1';
        end;
    end;
{    EtiTHabitacio.Enabled := ((tTractaments.FieldByName('C_CENTREFAC').AsString='00') or (tTractaments.FieldByName('C_CENTREFAC').AsString='50') or (tTractaments.FieldByName('C_CENTREFAC').AsString='08'))  or
                             ((tTractaments.FieldByName('C_CENTREFAC').AsString<>'00') and (tTractaments.FieldByName('C_CENTREFAC').AsString<>'50') and (tTractaments.FieldByName('C_CENTREFAC').AsString<>'08') and
                              EsBuit(tTractaments.FieldByName('T_Habitacio').AsString));    16-03-2017}

    pGarant.Visible := (tTractaments.FieldByName('C_CENTREFAC').AsString = '00') or (tTractaments.FieldByName('C_CENTREFAC').AsString = '50');
    pPrescriptor.Visible := pGarant.Visible;    
  end;

end;


procedure TwFitxaFiliacio.tTractamentsAfterPost(DataSet: TDataSet);
begin
    qDadesFactu.ParambyName('C_Historia').asString := tTractaments.FieldbyName('C_Historia').asString;
    qDadesFactu.Open;
    qDadesFactu.First;

    if  ((tTractaments.FieldbyName('C_CentreFac').asString = '00') or (tTractaments.FieldbyName('C_CentreFac').asString = '50'))
    and (not qDadesFactu.FieldByName('ID_Garant').IsNull) and tTractaments.FieldbyName('ID_Garant').IsNull
    then tTractaments.FieldbyName('ID_Garant').AsInteger := qDadesFactu.FieldByName('ID_Garant').AsInteger;

    if lMort.Visible then lMort.Caption := ' EXITUS - ' + FormatDateTime('dd/mmm/yyyy', tTractaments.FieldByName('Data_Alta').AsDateTime) + '-';

    if ((DataSet.FieldByName('C_CLIENT').AsString = 'ACA') and (DataSet.FieldByName('SIFCO').isnull or (DataSet.FieldByName('SIFCO').Asstring = '')))
    then if AvisoSN('Client ACA sense SIFCO informat. Voleu marcar-lo com a "no facturable"?')
         then GutExecute('update tractaments set c_estatfac = 50 where c_tractament = %d',[DataSet.FieldByName('c_tractament').asinteger]);

    if ((DataSet.FieldByName('C_CLIENT').AsString = 'CI')  and (DataSet.FieldByName('FISS' ).isnull or (DataSet.FieldByName('FISS' ).Asstring = '')))
    then if AvisoSN('Client CI sense FISS informat. Voleu marcar-lo com a "no facturable"?')
         then GutExecute('update tractaments set c_estatfac = 50 where c_tractament = %d',[DataSet.FieldByName('c_tractament').asinteger]);

end;


procedure TwFitxaFiliacio.JvDBFotografiaDblClick(Sender: TObject);
begin
  if not TeDretAcces([70]) then Exit;
  if not tFiliacio.RequestLive then Exit;

  if (not NT7OK) or (not FOTOS_OK) or (not wDataImatges.Gdb.Connected) then
  begin
      StaticText1.Hide;
      FerError('Error en obrir la base de dades de fotos [3a]', False);
      Exit;
  end;

  TRY
    Application.CreateForm(Tfichafoto, fichafoto);
    with fichafoto do
    begin
        fitfil := Self;
        if (tFiliacio.FieldByName('NUM_HIST').AsInteger > 0) then entrahistoria(tFiliacio.FieldByName('NUM_HIST').AsInteger);
        ShowModal;
    end;
  EXCEPT
    ShowMessage('Error en obrir la base de dades de fotos [3b]');
  END;
end;


procedure TwFitxaFiliacio.Esborrar1Click(Sender: TObject);
begin
  if not TeDretAcces([70]) then Exit;
  if not tFiliacio.RequestLive then Exit;

  if (not NT7OK) or (not FOTOS_OK) or (not wDataImatges.Gdb.Connected) then
  begin
      StaticText1.Hide;
      FerError('Error en obrir la base de dades de fotos [4a]', False);
      Exit;
  end;

  TRY
    if tFotos.FieldByName('FOTO').IsNull then
    begin
        StaticText1.Show;
        Exit;
    end;

    if AvisoNS('Esteu segurs que voleu esborrar aquesta fotografia?') then
    begin
        if (tFotos.State in [dsInsert]) then tFotos.Cancel
        else if (tFotos.State in [dsBrowse]) then tFotos.Delete;
        tFotos.Transaction.CommitRetaining;

        StaticText1.Show;
    end;
  EXCEPT
    ShowMessage('Error en obrir la base de dades de fotos [4b]');
  END;
end;


procedure TwFitxaFiliacio.tFotosAfterCancel(DataSet: TDataSet);
begin
    if tFotos.FieldByName('FOTO').IsNull then StaticText1.Show;
end;


procedure TwFitxaFiliacio.tFiliacioBeforeScroll(DataSet: TDataSet);
var
  datafoto: TDateTime;
  usuarifoto: String;
begin
    if (tFotos.State in [dsInsert, dsEdit]) then
    begin
        tFotos.FieldByName('C_Historia').AsInteger := tFiliacio.FieldByName('NUM_HIST').AsInteger;
        datafoto := tFotos.FieldByName('FECHAFOTO').AsDateTime;
        usuarifoto := tFotos.FieldByName('USUARI').AsString;
        JVFotografia.Picture.SaveToFile(C_TEMPORAL + '\' + tFiliacio.FieldByName('NUM_HIST').AsString + '.jpg');

        if (tFotos.State in [dsInsert]) then tFotos.Cancel;
        if (tFotos.State in [dsEdit])   then tFotos.Delete;

        qFotos2.Close;
        qFotos2.SelectSQL.Text := 'insert into FOTOPACIENTE (FOTO, C_HISTORIA) values (:miblob, ' + tFiliacio.FieldByName('NUM_HIST').AsString + ')';
        qFotos2.ParamByName('miblob').Clear;
        qFotos2.ExecSQL;

        qFotos2.SelectSQL.Text := 'select * from FOTOPACIENTE where C_HISTORIA = ' + tFiliacio.FieldByName('NUM_HIST').AsString;
        dsFotos.DataSet := qFotos2;
        qFotos2.Open;
        qFotos2.Edit;
        JvDBFotografia.Picture.LoadFromFile(C_TEMPORAL + '\' + tFiliacio.FieldByName('NUM_HIST').AsString + '.jpg');
        Sleep(2000);
        qfotos2.FieldByName('FECHAFOTO').AsDateTime := datafoto;
        qfotos2.FieldByName('USUARI').AsString := usuarifoto;
        qFotos2.Post;

        DeleteFile(C_TEMPORAL + '\' + tFiliacio.FieldByName('NUM_HIST').AsString + '.jpg');
        dsFotos.DataSet := tFotos;
    end;
end;


procedure TwFitxaFiliacio.tFotosAfterScroll(DataSet: TDataSet);
begin
    if (tFotos.State in [dsBrowse]) then JVFotografia.Picture.Assign(JvDBFotografia.Picture);
end;


procedure TwFitxaFiliacio.tFiliacioBeforePost(DataSet: TDataSet);
var
 telf, PacientAmbIgualDoc: Integer;
 doc,sexo,Valor1,lletraDoc: String;
 session_token: String;
 RIO: THTTPRIO;
 motiu: TMemo;
begin
  // si nHCE_ON=1, no permetre filiar sense Núm. Història (es generen a la nova HCE)
  if nHCE_ON and (eNHCNovaHCE.Text = '') then
  begin
      FerError('És obligatori informar el Núm. Història. Si és un pacient nou, s''ha de crear des de la nova HCE.');
      Abort;
  end;

  if not nHCE_ON then // si està activat el flag, les validacions es fan a la nova HCE
  begin

      // PAIS: sempre ha d'estar informat, si no posarem 34-Espanya.
      if (not DataSet.FieldByName('pais').isnull)
      then begin
           if (GutSelect('select count(*) from pais where c_pais = "%s"',[DataSet.FieldByName('pais').asstring]) = 0)
           then begin
             FerError('País incorrecte. Trieu-ne un de la llista.',False);
             tFiliacio.ConsultaCampo('pais','');
             Abort;
           end;
      end
      else if not AvisoSN('Si no informeu el país, per defecte s''assignarà 34-ESPANYA. Voleu continuar?') then Abort;

      // Validació de PAIS_NAIX
      if (not DataSet.FieldByName('PAIS_NAIX').IsNull)
      then begin
           if (GutSelect('select count(*) from pais where c_pais = "%s"',[DataSet.FieldByName('PAIS_NAIX').asstring]) = 0)
           then begin
             FerError('País de naixement incorrecte. Trieu-ne un de la llista.',False);
             tFiliacio.ConsultaCampo('paisnaix','');
             Abort;
           end;
      end;

      // Validació de IDIOMA
      if (not DataSet.FieldByName('idioma').IsNull)
      then begin
           if (GutSelect('select count(*) from CODICAMPS where c_CODI=%d and TIPUSCODI="IDIOMA"',[DataSet.FieldByName('idioma').asinteger]) = 0)
           then begin
             FerError('Idioma incorrecte. Trieu-ne un de la llista.',False);
             tFiliacio.ConsultaCampo('idioma','');
             Abort;
           end;
      end;

      if (not tFiliacio.FieldByName('DNI').IsNull) and (tFiliacio.FieldByName('DNI').AsString<>'')
      and (tFiliacio.FieldByName('T_DOC').IsNull or (tFiliacio.FieldByName('T_DOC').AsString=''))
      then begin
    //      FerError('És obligatori informar el tipus de document.',True);
          Ed_tFiliacio_T_DOC.SetFocus;
          tFiliacio.ConsultaCampo('TipusDoc','');
          Abort;
      end;

      // Afegir validacions - i
      if (not tFiliacio.FieldByName('T_DOC').IsNull and (tFiliacio.FieldByName('T_DOC').AsString='D'))
      and (not tFiliacio.FieldByName('DNI').IsNull) and (tFiliacio.FieldByName('DNI').AsString<>'') then
      begin
          doc := ValidarDNI(tFiliacio.FieldbyName('DNI').AsString);
          lletraDoc := CalculaLetraNif(StrToInt(doc));
          if  (doc = '0')
          or  (tFiliacio.FieldbyName('DNI').AsString <> doc + lletraDoc)
          then begin
              FerError(Format(Error36, [tFiliacio.FieldbyName('DNI').AsString,tFiliacio.FieldbyName('TipusDoc_N_Codi').AsString]));
              Abort;
          end;
      end;

      if  (not tFiliacio.FieldByName('T_DOC').IsNull) and (tFiliacio.FieldByName('T_DOC').AsString<>'')
      and (not tFiliacio.FieldByName('DNI').IsNull)   and (tFiliacio.FieldByName('DNI').AsString<>'')
      then begin
          PacientAmbIgualDoc := GutSelect('select NUM_HIST from filiacio where T_DOC="%s" AND DNI="%s" and num_hist <> %d order by NUM_HIST DESC ROWS 1',
                                          [tFiliacio.FieldByName('T_DOC').AsString, tFiliacio.FieldbyName('DNI').AsString, tFiliacio.FieldByName('NUM_HIST').AsInteger]);
          if PacientAmbIgualDoc > 0 then
          begin
              FerError(Format('No es pot filiar: el pacient %d té aquest tipus i número de document.', [PacientAmbIgualDoc]));
              Abort;
          end;
      end;

      if (tFiliacio.FieldByName('DNI').IsNull or (tFiliacio.FieldByName('DNI').AsString=''))
      then tFiliacio.FieldByName('T_DOC').Clear;

      if tFiliacio.FieldByName('NOMBRE'   ).IsNull or (tFiliacio.FieldByName('NOMBRE'   ).AsString='')
      or tFiliacio.FieldByName('APELLIDO1').IsNull or (tFiliacio.FieldByName('APELLIDO1').AsString='')
      then begin
          FerError('El NOM i el PRIMER COGNOM han d''estar informats.');
          Abort;
      end;

      if not tFiliacio.FieldByName('FECHA_NAC').IsNull then
      begin
          if tFiliacio.FieldByName('FECHA_NAC').AsDateTime >= DateServer then
          begin
              FerError('La data de naixement ha de ser passada.');
              Abort;
          end;                                                        // 365 * 150 (dies que tenen 150 anys)
          if tFiliacio.FieldByName('FECHA_NAC').AsDateTime < DateServer - 54750 then
          begin
              FerError('La data de naixement ha de ser posterior a 150 anys.');
              Abort;
          end;
      end;

      // El telefon ha de ser numeric, no admetem cap caracter que no sigui un numero
      if (Ed_tFiliacio_TELEFONO.EditInterno.EditText <> '')
      and ((not IntegerOK(Ed_tFiliacio_TELEFONO.EditInterno.EditText, telf))
        or (CopyLeft(Ed_tFiliacio_TELEFONO.EditInterno.EditText, 1) = '-')
        or (CopyLeft(Ed_tFiliacio_TELEFONO.EditInterno.EditText, 1) = '+'))
      then begin
          FerError('No s''admeten caracters al camp telèfon.');
          Abort;
      end;

      if (Ed_tFiliacio_TELEFO1_FAM.EditInterno.EditText <> '')
      and ((not IntegerOK(Ed_tFiliacio_TELEFO1_FAM.EditInterno.EditText, telf))
        or (CopyLeft(Ed_tFiliacio_TELEFO1_FAM.EditInterno.EditText, 1) = '-')
        or (CopyLeft(Ed_tFiliacio_TELEFO1_FAM.EditInterno.EditText, 1) = '+'))
      then begin
          FerError('No s''admeten caracters al camp telèfon familiar 1.');
          Abort;
      end;
  
      if (Ed_tFiliacio_TELEFO2_FAM.EditInterno.EditText <> '')
      and ((not IntegerOK(Ed_tFiliacio_TELEFO2_FAM.EditInterno.EditText, telf))
        or (CopyLeft(Ed_tFiliacio_TELEFO2_FAM.EditInterno.EditText, 1) = '-')
        or (CopyLeft(Ed_tFiliacio_TELEFO2_FAM.EditInterno.EditText, 1) = '+'))
      then begin
          FerError('No s''admeten caracters al camp telèfon familiar 2.');
          Abort;
      end;

      // l-e-mail ha de contenir @ i com a minim un .
      if (not tFiliacio.FieldByName('EMAIL').IsNull and (tFiliacio.FieldByName('EMAIL').AsString <>''))
      and ((Pos('@',tFiliacio.FieldByName('EMAIL').AsString) = 0)
       or  (Pos('.',tFiliacio.FieldByName('EMAIL').AsString) = 0))
      then begin
          FerError('Format d''e-mail incorrecte.');
          Abort;
      end;

    {  if sbDistrictes.Enabled and (CopyRight(tFiliacio.FieldByName('RESIDENCIA').AsString,2)='00') then
      begin
          FerError('És obligatori informar el districte per residents a Barcelona.');
          sbDistrictes.Click;
          Abort;
      end;  }
      // Afegir validacions - f

      // PAIS_DOCUMENT: si el tipus de document é 'P' - Passaport, és obligatori informar PAIS_DOC
      if (tFiliacio.FieldByName('T_DOC').AsString='P') and tFiliacio.FieldByName('PAIS_DOC').IsNull
      then begin
           Ed_tFiliacio_PaisDoc.SetFocus;
           tFiliacio.ConsultaCampo('PaisDoc','');
           Abort;
      end;

      if (tFiliacio.FieldByName('T_DOC').AsString<>'P') then tFiliacio.FieldByName('PAIS_DOC').Clear;

      // Si hi ha pendent d'informar algun dels checks de la LOPD, avisar-ho pero deixar continuar
      if (tFiliacio.FieldByName('Autoritza_LLIT').IsNull or tFiliacio.FieldByName('Autoritza_ENQUESTES').IsNull)
      and AvisoSN('No s''han informat les autoritzacions LLIT i ENQUESTA. Voleu informar-les ara (S/N)?') then
      begin
          PC.ActivePage := tsPersonals;
          if tFiliacio.FieldByName('Autoritza_LLIT').IsNull then Check_tFiliacio_LLIT.SetFocus
                                                            else Check_tFiliacio_ENQUESTES.SetFocus;
          Abort;
      end;

      if (tTractaments.State in [dsInsert]) then  // només si s'està insertant
      begin
          // 27.3.2015 - Si és 04-UP i nivell de cobertura al RCA <> 1,3,4,214 => no deixar filiar si no canvien dades de facturació, donar avís
          //             i guardar registre a TRAZACONTROL
          if  (tTractaments.FieldByName('C_CENTREFAC').AsString='04') and (tTractaments.FieldByName('C_CLIENT').AsString='UP') then
          begin
              if not RCAOK then
              begin
                  // 18-5-2015: obligar a entrar-lo
                  // ShowMessage('RCA KO. Comproveu nivell de cobertura del pacient.');
                  if tTractaments.FieldByName('c_estatfac').AsInteger<>50 then
                  begin
                      // tFiliacio.FieldByName('nivell_cobertura').Clear;    3-1-2022: si ja tenia un nivell de cobertura i no es pot accedir a l'RCA, mantenir el que ja hi havia
                      ShowMessage('Servei web RCA no disponible. Comproveu el nivell de cobertura del pacient via web o mes tard.');

                      PC.ActivePage := tsPersonals;
                      PCChange(PC);
                      while tFiliacio.FieldByName('nivell_cobertura').IsNull or (tFiliacio.FieldByName('nivell_cobertura').AsString='') do
                      begin
                          if InputPregunta(ftInteger, 'RCA KO. Comproveu el nivell de cobertura del pacient.','Entreu el nivell de cobertura actual.',Valor1,1,1)
                          then tFiliacio.FieldByName('nivell_cobertura').AsString := Valor1
                          else begin
                              HYBarra1AlCancel(HYBarra1);  // han de poder fer cancel de la filiació
                              Abort;
                          end;
                      end;
                  end;
              end
              else begin
                  RIO:=THTTPRIO.Create(nil);
                  RIO.OnBeforeExecute:=peticioBeforeExecute;
                  RIO.OnAfterExecute :=peticioAfterExecute;

                  Dades.Close;
                  Dades.Open;
                  Dades.DisableControls;
                  TRY
                      if      tFiliacio.FieldByName('sexo').AsString='H' then sexo := '0'
                      else if tFiliacio.FieldByName('sexo').AsString='D' then sexo := '1';

                      if (not tFiliacio.FieldByName('tsi').IsNull) and (tFiliacio.FieldByName('tsi').AsString<>'')
                      then RCA_consulta_per_cip(tFiliacio.FieldByName('tsi').AsString,Dades,RIO)
                      else RCA_consulta_per_dades(tFiliacio.FieldByName('nombre').AsString,tFiliacio.FieldByName('apellido1').AsString,
                                                    tFiliacio.FieldByName('apellido2').AsString,tFiliacio.FieldByName('fecha_nac').AsString,
                                                    sexo,'','','','',Dades,RIO);
                  EXCEPT
                      on E:Exception do
                      begin
                         // fer parte a informàtica conforme ha petat l'RCA al PC x - només si no n'hi ha ja un d'obert per ID_LOGIN i ID_COMPUTER
                         {if Funciones.SelectSQLFmt(wData.GdbInf.DataBaseName,
                                                   'SELECT count(*) FROM SORTI2 where USUARI="%s" and ESTAT<>"F" and ESTAT<>"A" '+
                                                   'and NOMPC="AUTOMATIC" and UBICACIO="RCA %s"',[wData.ID_LOGIN,wData.ID_COMPUTER])=0
                         then begin}
                             motiu := TMemo.Create(Application);
                             motiu.Text := Format('No es pot accedir a l''RCA al PC "%s" USUARI "%s"',[wData.ID_COMPUTER,wData.ID_LOGIN]);
                             if wData.ES_PROVA then ShowMessage('Si estiguéssim en entorn PRO, ara es crearia un GLPI amb motiu: '+motiu.Text)
                                               else begin
                                                   // ParteInformatica(wData.ID_LOGIN,'ADMISSIONS','RCA '+wData.ID_COMPUTER,motiu.Text,2);
                                                   session_token := wData.GetTokenGlpi;
                                                   if (session_token <> '') then wData.CreaIncidenciaGlpi(session_token, 'ADMISSIONS RCA', motiu.Text, '2')
                                                                            else FerError('No s''ha pogut iniciar sessió al GLPI', True);
                                               end;
                         {end;}
                         Dades.EnableControls;
                         Dades.First;
                         if  (not tFiliacio.FieldByName('nivell_cobertura').IsNull) and (tFiliacio.FieldByName('nivell_cobertura').AsString<>'')
                         and (tFiliacio.FieldByName('nivell_cobertura').AsInteger<>1)
                         and (tFiliacio.FieldByName('nivell_cobertura').AsInteger<>3)
                         and (tFiliacio.FieldByName('nivell_cobertura').AsInteger<>4)
                         and (tFiliacio.FieldByName('nivell_cobertura').AsInteger<>214)
                         then FerError('No es pot accedir a l''RCA. '+#13+
                                       'El nivell de cobertura enregistrat a Guttmann ('+tFiliacio.FieldByName('nivell_cobertura').AsString+
                                       ') indica que el pacient no està cobert.',True)
                         else ShowMessage('No es pot accedir a l''RCA. Comproveu nivell de cobertura del pacient.');
                      end;
                  END;
                  Dades.EnableControls;
                  Dades.First;

                  if  (not Dades.FieldByName('DFC_CCP').IsNull) and (Dades.FieldByName('DFC_CCP').AsString<>'')
                  and (Dades.FieldByName('DFC_CCP').AsInteger<>1)             // nivell de cobertura
                  and (Dades.FieldByName('DFC_CCP').AsInteger<>3)
                  and (Dades.FieldByName('DFC_CCP').AsInteger<>4)
                  and (Dades.FieldByName('DFC_CCP').AsInteger<>214)
                  and (tTractaments.FieldByName('c_estatfac').AsInteger<>50)
                  then begin
                      FerError('PACIENT SENSE COBERTURA! No es pot filiar amb dades de facturació 04-UP.',False);

                      if (wData.UsuariActiu.Codi = '') then PreguntaMetge;
                      wMain.StatusTraza := '';
                      wMain.LastTraza := wData.ObraTrazaControl(tFiliacio.FieldbyName('NUM_HIST').AsInteger, consulta, wMain.Aplica);
                      wMain.AddStatusTraza('w');  // Intent filiació 04-UP sense cobertura
                      wData.TancaTrazaControl(wMain.LastTraza,wMain.StatusTraza);

                      Abort;
                  end;
              end;
          end;
      end;
  end;  // fi nHCE_ON
end;


procedure TwFitxaFiliacio.cPaisAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tFiliacio.Edicion;
  tFiliacio.FieldByName('Pais').AsString := Datos.FieldByName('c_pais').AsString;
end;


procedure TwFitxaFiliacio.cDistrictesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
     tFiliacio.Edicion;
     tFiliacio.FieldByName('Residencia').AsString := copyleft(tFiliacio.FieldByName('Residencia').AsString,5)+ Datos.fieldbyname('C_CODI').AsString;
end;


procedure TwFitxaFiliacio.sbDistrictesClick(Sender: TObject);
begin
    cDistrictes.ExecuteModal('','');
end;


procedure TwFitxaFiliacio.Ed_tFiliacio_CODIGOChange(Sender: TObject);
begin
  sbDistrictes.Enabled := (CopyLeft(tFiliacio.FieldByName('CODIGO').AsString,2) = '08')  // només actiu per Barcelona ciutat
                        and (tFiliacio.FieldByName('POBLACIO').AsString = 'BARCELONA');
end;


procedure TwFitxaFiliacio.tTractamentsAlConsultaChanged(Sender: TObject;NombreConsulta: String);
begin
    ActivaUnespa;
    ActivaACA_CI;
    ActivaMetgeMutua;
end;


procedure TwFitxaFiliacio.ActivaUnespa;
begin
    pUnespa.Visible := False;
    if  (tTractaments_C_CentreFac.AsString<>'')
    and (tTractaments_C_Client.AsString<>'')
    and (qEsUnespa.ParamByName('C_CentreFac').AsString<>tTractaments_C_CentreFac.AsString)
    and (qEsUnespa.ParamByName('C_Client').AsString<>tTractaments_C_Client.AsString)
    then begin
        if (tFiliacio_NUM_HIST.AsInteger>=11606) or (tFiliacio_NUM_HIST.AsInteger=3072) or
           (tFiliacio_NUM_HIST.AsInteger=2029)   or (tFiliacio_NUM_HIST.AsInteger=1744) or  // parte 56188
           (tFiliacio_NUM_HIST.AsInteger=0)
        then begin
            qEsUnespa.Close;
            qEsUnespa.ParamByName('C_CENTREFAC').AsString := tTractaments_C_CentreFac.AsString;
            qEsUnespa.ParamByName('C_CLIENT'   ).AsString := tTractaments_C_Client.AsString;            
            qEsUnespa.Open;
        end;
    end;
    pUnespa.Visible := qEsUnespaES_UNESPA.AsString = 'S';
end;


procedure TwFitxaFiliacio.ActivaACA_CI;
begin
   pACA.Visible := tTractaments_C_Client.AsString = 'ACA';
   pCI.Visible  := tTractaments_C_Client.AsString = 'CI';
end;

procedure TwFitxaFiliacio.ActivaMetgeMutua;
begin
  if (EsPle(tTractaments.FieldbyName('C_Delegacio').asString) and
     (not tTractaments_C_Centrefac.IsNull)                    and
     (tTractaments_C_Centrefac.AsString <> '')                and
//   (tTractaments_C_Centrefac.AsString <> '00')              and
//   (tTractaments_C_CentreFac.AsString <> '50')              and
     (tTractaments_C_CentreFac.AsString <> '04'))             or
     (tTractaments_C_Centrefac.AsString = '00') then pMetgeMutua.Height := 44
                                                else pMetgeMutua.Height := 1;
  pFacturacio.Height := 268;
  pFacturacio.Height := pFacturacio.Height + PanelDadesDelegacio.Height + pMetgeMutua.Height;
end;

procedure TwFitxaFiliacio.Iniciar;
var
   m: TMemoryStream;    
begin
    Llistat.DisableControls;
    try
      Llistat.Close;
      Llistat.ReadOnly := False;
      Llistat.Open;
      qFili.Close;
//-      qFili.SqlDic[1] := 'where apellido1="'+tFiliacio.FieldbyName('Apellido1').asString+'" and apellido2="'+tFiliacio.FieldbyName('Apellido2').asString+'"';
      qFili.SqlDic[1] := Format('where (NOMCOMPLET containing "%s" and NOMCOMPLET containing "%s") ' +
                                'or ("%s" <> "" and DNI = "%s") or ("%s" <> "" and TSI = "%s") or ("%s" <> "" and SOE = "%s") ',
                                [tFiliacio.FieldbyName('apellido1').AsString, tFiliacio.FieldbyName('apellido2').AsString,
                                 Trim(tFiliacio.FieldbyName('DNI').AsString), Trim(tFiliacio.FieldbyName('DNI').AsString),
                                 Trim(tFiliacio.FieldbyName('TSI').AsString), Trim(tFiliacio.FieldbyName('TSI').AsString),
                                 Trim(tFiliacio.FieldbyName('SOE').AsString), Trim(tFiliacio.FieldbyName('SOE').AsString)]);
      qFili.SQL[1] := qFili.SqlDic[1];
      qFili.Open;
      lQuants.Caption := 'Pacients amb els mateixos cognoms, DNI, CIP o SOE: ' + IntToStr(qFili.RecordCount);
      while not qFili.Eof do
      begin
           Llistat.Append;

           Llistatc_historia.AsInteger := qFili.FieldByName('NUM_HIST').AsInteger;
           LlistatNOMBRE.AsString := qFili.FieldByName('NOMBRE').AsString;
           LlistatAPELLIDO1.AsString := qFili.FieldByName('APELLIDO1').AsString;
           LlistatAPELLIDO2.AsString := qFili.FieldByName('APELLIDO2').AsString;
           LlistatSexe.AsString := qFili.FieldByName('Sexo').AsString;
           LlistatEdat.AsInteger := qFili.FieldByName('Edat').AsInteger;
           LlistatDNI.AsString := qFili.fieldByName('DNI').AsString;
           LlistatTSI.AsString := qFili.fieldByName('TSI').AsString;
           LlistatSOE.AsString := qFili.fieldByName('SOE').AsString;

           if NT7OK and FOTOS_OK and wDataImatges.Gdb.Connected
           then with wDataImatges.qFoto do
                begin
                    m := TMemoryStream.Create;
                    try
                      Close;
                      ParamByName('C_historia').AsInteger := llistatc_historia.AsInteger;
                      Open;
                      if FieldByName('FOTO').IsNull
                      then LlistatFoto.Clear
                      else begin
                           TBlobField(FieldByName('FOTO')).SaveToStream(m);
                           m.Position:=0;
                           LlistatFoto.LoadFromStream(m);
                      end;
                      Close;
                    finally
                      m.Free;
                    end;
                end;
           Llistat.Post;
           qFili.Next;
      end;

    finally
      if NT7OK and FOTOS_OK and wDataImatges.Gdb.Connected then wDataImatges.Gdb.Close;
      Llistat.Filtered := True;
      Llistat.First;
      Llistat.ReadOnly := True;
      Llistat.EnableControls;
    end;
    CenterInClient(mgcAvis);
    mgcAvis.Show;
end;


procedure TwFitxaFiliacio.GridDblClick(Sender: TObject);
var
 hc,nom,c1,c2:String;
 bucle: Integer;
begin
    if not (tFiliacio.State in [dsInsert,dsEdit]) then tFiliacio.Edit;
    tFiliacio.FieldByName('num_hist').AsInteger := Llistat.FieldByName('c_historia').AsInteger;
    tFiliacio.FieldByName('apellido1').AsString := Llistat.FieldByName('apellido1').AsString;
    tFiliacio.FieldByName('apellido2').AsString := Llistat.FieldByName('apellido2').AsString;
    tFiliacio.FieldByName('nombre').AsString    := Llistat.FieldByName('nombre').AsString;
    tFiliacio.FieldByName('sexo').AsString      := Llistat.FieldByName('sexe').AsString;

    if (tTractaments.State in [dsEdit, dsInsert])
    then tTractaments.FieldByName('C_Historia').AsInteger := tFiliacio.FieldByName('NUM_HIST').AsInteger;
    hc:=tFiliacio.FieldByName('NUM_HIST').AsString; nom:=tFiliacio.FieldByName('nombre').AsString;
    c1:=tFiliacio.FieldByName('apellido1').AsString; c2:=tFiliacio.FieldByName('apellido2').AsString;
    HYBarra1AlPost(Sender);
    // Cal actualitzar la llista d'espera
    GutExecute('update ESPERA set C_HISTORIA=%s,NOM="%s",COGNOM1="%s",COGNOM2="%s" where C_ESPERA=%s',
               [hc,nom,c1,c2,NUMESPERA]);
    for Bucle := 0 to Screen.FormCount - 1 do
    begin
        if Screen.Forms[bucle] is TwFitxaAgendaProgramacio
        then  with Screen.Forms[bucle] as TwFitxaAgendaProgramacio do PanelLista.RefreshSQL;
    end;
end;


procedure TwFitxaFiliacio.sbSurtClick(Sender: TObject);
begin
    mgcAvis.Hide;
    HYBarra1AlPost(Sender);
end;

{-
procedure TwFitxaFiliacio.accHDiaExecute(Sender: TObject);
begin
  ImprimirNotaCarrec(4, tTractaments, tFiliacio);
end;
-}

// Pels pacients vius (ESVIU='S'), recuperar de l'RCA el camp DFC_CCP (Nivell de cobertura) i actualitzar FILIACIO.NIVELL_COBERTURA
procedure TwFitxaFiliacio.sbNCoberturaClick(Sender: TObject);
var
 i,j: Integer;
 log,sexo: String;
 qFiliNC: TQuery;
 RIO: THTTPRIO;
begin
  logRCA.Lines.Clear;

  qFiliNC := TQuery.Create(Application);
  qFiliNC.DatabaseName := wData.Gdb.DatabaseName;
  qFiliNC.SQL.Text := 'select num_hist,tsi,nombre,apellido1,apellido2,fecha_nac,sexo from FILIACIO where (esviu=''S'') '+
                      //'and ((nivell_cobertura is null) or (nivell_cobertura='''')) '+
                      'order by nombre,apellido1,apellido2';
  qFiliNC.Open;

  RIO:=THTTPRIO.Create(nil);
  RIO.OnBeforeExecute:=peticioBeforeExecute;
  RIO.OnAfterExecute :=peticioAfterExecute;

  i:=0;j:=0;
  while not qFiliNC.Eof do
  begin
      Dades.Close;
      Dades.Open;
      Dades.DisableControls;
      try
          if qFiliNC.FieldByName('sexo').AsString='H' then sexo := '0';
          if qFiliNC.FieldByName('sexo').AsString='D' then sexo := '1';

          if (not qFiliNC.FieldByName('tsi').IsNull) and (qFiliNC.FieldByName('tsi').AsString<>'')
          then begin
              log := RCA_consulta_per_cip(qFiliNC.FieldByName('tsi').AsString,Dades,RIO);
              logRCA.Lines.Add('TSI: '+qFiliNC.FieldByName('tsi').AsString+' resultat RCA: '+log);
          end
          else begin
              log := RCA_consulta_per_dades(qFiliNC.FieldByName('nombre').AsString,qFiliNC.FieldByName('apellido1').AsString,
                                            qFiliNC.FieldByName('apellido2').AsString,qFiliNC.FieldByName('fecha_nac').AsString,
                                            sexo,'','','','',Dades,RIO);
              logRCA.Lines.Add('NOM: '+qFiliNC.FieldByName('nombre').AsString+' '+qFiliNC.FieldByName('apellido1').AsString+
                               ' '+qFiliNC.FieldByName('apellido2').AsString+' resultat RCA: '+log);
          end;
      finally
          Dades.EnableControls;
          Dades.First;
      end;
      if (not Dades.FieldByName('DFC_CCP').IsNull) and (Dades.FieldByName('DFC_CCP').AsString<>'')
      then begin
          GutExecute('update FILIACIO set Nivell_cobertura=%s where NUM_HIST=%d',
                     [Dades.FieldByName('DFC_CCP').AsString,qFiliNC.FieldByName('num_hist').AsInteger]);
          j:=j+1;
      end;

      i:=i+1;
      qFiliNC.Next;
  end;

  qFiliNC.Close;
  qFiliNC.Free;
  RIO.Free;
  ShowMessage(Format('De %d pacients, s''han actualitzat %d',[i,j]));
  logRCA.Lines.SaveToFile(C_TEMPORAL + '\LogRCA.txt');
end;


procedure TwFitxaFiliacio.tTractamentsAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean; NombreConsulta: String;
                                                              var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
  if UpperCase(NombreConsulta)='FACILITADOR' then Exit;

  Personalizada := False;
  if (UpperCase(NombreConsulta)='CENTRE') and (tTractaments.FieldByName('Prestacio_NoSCS').AsString='S') then
  begin
      cCentre.ExecuteModal;
      Personalizada := True;
  end;
  if (UpperCase(NombreConsulta) = 'CLIENT') then
  begin
      if tTractaments.fieldByName('C_CENTREFAC').IsNull
      then cClient.SqlDic[3] := ''
      else cClient.SqlDic[3] := 'and cl.c_centrefac = "'+tTractaments.fieldByName('C_CENTREFAC').AsString+'"';

      cClient.ExecuteModal;
      Personalizada := True;
  end;
  if (UpperCase(NombreConsulta)='DELEGACIO') then
  begin
      if tTractaments.fieldByName('C_CENTREFAC').IsNull
      then cDelegacio.SqlDic[5] := ''
      else cDelegacio.SqlDic[5] := 'and d.c_centrefac = "'+tTractaments.fieldByName('C_CENTREFAC').AsString+'"';

      if tTractaments.fieldByName('C_CLIENT').IsNull
      then cDelegacio.SqlDic[6] := ''
      else cDelegacio.SqlDic[6] := 'and d.c_client = "'   +tTractaments.fieldByName('C_CLIENT'   ).AsString+'"';

      if  (tTractaments.fieldByName('C_CENTREFAC').AsString = '04')
      and (tTractaments.fieldByName('C_CLIENT'   ).AsString = 'UP')
      then cDelegacio.SqlDic[7] := 'AND (D.D_TIPUS_UP IS NOT NULL) [AND FILTRO]'
      else cDelegacio.SqlDic[7] := '[AND FILTRO]';

      cDelegacio.ExecuteModal;
      Personalizada := True;
  end;
  if (UpperCase(NombreConsulta)='HTALDESTINACIO') then
  begin
      if  (tTractaments.FieldByName('C_DESTINACIO').AsInteger = 2)          // només per destinació 'Alta amb continuïtat assistencial a centre aliè'
      and (tTractaments.FieldByName('DESTI_CONT_EXT').AsInteger >= 1)
      and (tTractaments.FieldByName('DESTI_CONT_EXT').AsInteger <= 5) then
      begin
          cHtalDesti.Filtros[0].Valor1 := '';
          cHtalDesti.Filtros[0].CondiActual:= 1; 
          case tTractaments.FieldByName('DESTI_CONT_EXT').AsInteger of
            1,3: cHtalDesti.Filtros[0].Valor1 := '10';  // assistencia hospitalaria
            2:   cHtalDesti.Filtros[0].Valor1 := '50';  // assistencia sociosanitaria
            4,5: cHtalDesti.Filtros[0].Valor1 := '60';  // assistencia salut mental
          end;
          cHtalDesti.ExecuteModal;
          Personalizada := True;
      end;
  end;
  // Març 2022: restringim els estats possibles
  if (UpperCase(NombreConsulta) = 'ESTATFAC') then
  begin
      SubFiltro := 'PARAMS like "%T%"';
      Personalizada := False;
  end;
end;


procedure TwFitxaFiliacio.cCentreAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   if (not tTractaments.EstaEditando) then tTractaments.Edit;
   tTractaments.FieldbyName('C_CentreFac').asString := Datos.FieldbyName('C_CentreFac').asString;
end;

procedure TwFitxaFiliacio.tTractamentsBeforePost(DataSet: TDataSet);
var
 qAux: TQuery;
 DiesSetmana: Integer;
 DataAlta: TDateTime;
begin
  // 19.12.2013: només fer-ho per prealtes no informades
  if (tTractaments.FieldByName('c_prestacio').AsString='2024') and tTractaments.FieldByName('data_prealta').IsNull
  then begin
      DiesSetmana := GutSelect('SELECT FREQUENCIA FROM TORNAMB WHERE CODI="%s"',[tTractaments.FieldByName('C_FREQUENCIA').AsString]);
      tTractaments.FieldByName('data_prealta').AsDateTime := tTractaments.FieldByName('data_ingres').AsDateTime + (7*(60/DiesSetmana)) - 1;
  end;

  // i si és 2023, arrossegar c_fisioterapeuta i c_fisio_ar de l'última 2023
  if (tTractaments.FieldByName('c_prestacio').AsString='2023') then
  begin
      qAux := TQuery.Create(Application);
      qAux.DataBaseName:=wData.Gdb.DatabaseName;
      qAux.Sql.Text:=Format('SELECT C_FISIOTERAPEUTA, C_FISIO_AR FROM TRACTAMENTS WHERE C_HISTORIA=%d AND '+
                            'C_PRESTACIO="2023" ORDER BY DATA_INGRES DESC ROWS 1',[tTractaments.FieldByName('c_historia').AsInteger]);
      qAux.Open;
      if not qAux.Eof then
      begin
          tTractaments.FieldByName('C_FISIOTERAPEUTA').AsString:=qAux.FieldByName('C_FISIOTERAPEUTA').AsString;
          tTractaments.FieldByName('C_FISIO_AR'      ).AsString:=qAux.FieldByName('C_FISIO_AR'      ).AsString;
      end;
      qAux.Close;
      qAux.Free;
  end;

  if (tTractaments.FieldByName('C_DESTINACIO').AsInteger = 2) and (tTractaments.FieldByName('DESTI_CONT_EXT').IsNull)
  then FerError('És obligatori informar el destí de continuïtat externa',True);

  if (tTractaments.FieldByName('C_DESTINACIO').AsInteger = 9) and (tTractaments.FieldByName('DESTI_CONT_INT').IsNull)
  then FerError('És obligatori informar el destí de continuïtat interna',True);

  if (tTractaments.FieldByName('C_DESTINACIO').AsInteger <> 2) then tTractaments.FieldByName('DESTI_CONT_EXT').Clear;
  if (tTractaments.FieldByName('C_DESTINACIO').AsInteger <> 9) then tTractaments.FieldByName('DESTI_CONT_INT').Clear;

  if (tTractaments.FieldByName('C_CENTREFAC').AsString <> '00') and (tTractaments.FieldByName('C_CENTREFAC').AsString <> '50') and (not tTractaments.FieldByName('id_garant').IsNull)
  then tTractaments.FieldByName('id_garant').Clear;

  // Per CF <> 00, 50 i 08 només poden posar tipus d'habitació 1-Compartida
  if  TeDretPresta(tTractaments.FieldByName('C_PRESTACIO').AsString, [150])  // 20-12-2017: enviar t_habitacio=1 sempre que s'enviï a SAP un A01 ==> dret P150
  and (tTractaments.FieldByName('T_Habitacio').IsNull or (tTractaments.FieldByName('T_Habitacio').AsString=''))  // 30-11-2017: no deixar-lo mai buit. Si no l'han informat enviar un '1'.
  then tTractaments.FieldByName('T_Habitacio').AsString := '1'; //FerError('Aquest centre de facturació només permet habitació compartida.',True);

  // No es pot afegir una 2014 motiu 103 si n'hi ha algun altre en l'últim any
  if  (tTractaments.FieldbyName('C_Prestacio').asString = '2014')
  and (tTractaments.FieldbyName('C_Motiu'    ).asInteger = 103)
  then begin
      DataAlta := GutSelect('select data_alta from tractaments where c_prestacio="2014" and c_motiu=103 and c_historia=%d '+
                            'and c_estatfac <> 55 order by data_ingres desc rows 1',
                            [tTractaments.FieldbyName('C_Historia').AsInteger]);

      if (DataAlta <> 0) and (tTractaments.FieldbyName('Data_Ingres').AsDateTime - DataAlta <= 365)
      then FerError('No es pot filiar una 2014 motiu 103 perquè en té una de fa menys d''un any.', True);
  end;

end;


procedure TwFitxaFiliacio.cProvinciesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tFiliacio.Edicion;
  tFiliacio.FieldByName('Provincia').AsString := Datos.FieldByName('N_Provincia').AsString;
end;


procedure TwFitxaFiliacio.Ed_tFiliacio_POBLACIOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if nHCE_ON then Exit;
  if (key = ord(#114))  then   // F3
  begin
    if Ed_tFiliacio_POBLACIO.EditInterno.Text=''
    then cPoblacions.SqlDic[3] := '[AND FILTRO]'
    else cPoblacions.SqlDic[3] := 'AND N_POBLACIO STARTING WITH "'+Ed_tFiliacio_POBLACIO.EditInterno.Text+'" [AND FILTRO]';
    cPoblacions.ExecuteModal;
  end;
end;


procedure TwFitxaFiliacio.Ed_tFiliacio_PROVINCIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if nHCE_ON then Exit;
  if (key = ord(#114)) then    // F3
  begin
    if Ed_tFiliacio_PROVINCIA.EditInterno.Text=''
    then cProvincies.SqlDic[2] := '[FILTRO]'
    else cProvincies.SqlDic[2] := 'WHERE N_PROVINCIA STARTING WITH "'+Ed_tFiliacio_PROVINCIA.EditInterno.Text+'" [AND FILTRO]';
    cProvincies.ExecuteModal;
  end;
end;


procedure TwFitxaFiliacio.EditOnEnter(Sender: TObject);
begin
  (Sender as THYEdit).EditInterno.Brush.Color := clAqua;
end;


procedure TwFitxaFiliacio.EditOnExit(Sender: TObject);
begin
  (Sender as THYEdit).EditInterno.Brush.Color := clWhite;
end;

procedure TwFitxaFiliacio.peticioAfterExecute(const MethodName: string; SOAPResponse: TStream);
var
  sl : TStringList;
begin
  sl := TStringList.Create;
  try
    SOAPResponse.Position := 0;
    sl.LoadFromStream(SOAPResponse);    // Load the response into a stringlist so we can work on it.
    sl.SaveToFile(C_TEMPORAL + '\ultim_retornat_rca.xml');

    // Now write out edits back out to the stream.
    SOAPResponse.Position := 0;            // Now overwrite the crappy response with our good one.
    SOAPResponse.size := length(sl.Text);  // Important - set new length before saving.  Otherwise, the old
    sl.SaveToStream(SOAPResponse);         // leftover crud is still there, at the end, and the XML will blow up on it.
    SOAPResponse.Position := 0;

  finally
    FreeAndNil(sl);
  end;
end;

procedure TwFitxaFiliacio.peticioBeforeExecute(const MethodName: string; var SOAPRequest: WideString);
var
 tmp: TStringList;
begin
  tmp := TStringList.Create;
  try
    tmp.text := SOAPRequest;
//    tmp.Text := Replace('<?xml version="1.0"?>','<?xml version="1.0" encoding="UTF-8"?>', tmp.Text);
//    tmp.Text := Replace('<CENTRE',    '<NS1:CENTRE',    tmp.Text); tmp.Text := Replace('/CENTRE',    '/NS1:CENTRE',    tmp.Text);
    tmp.Text := Replace('Ñ','&#209;',tmp.Text);  tmp.Text := Replace('ñ','&#241;',tmp.Text);    
    tmp.SaveToFile(C_TEMPORAL + '\ultim_generat_rca.xml');
    SOAPRequest := tmp.text;
  finally
    tmp.Free;
  end;
end;


procedure TwFitxaFiliacio.tFiliDadesFacBeforeEdit(DataSet: TDataSet);
begin
    if not tFiliacio.EstaEditando then tFiliacio.Edit;
end;


procedure TwFitxaFiliacio.tFiliDadesFacBeforeInsert(DataSet: TDataSet);
begin
    if not tFiliacio.EstaEditando then tFiliacio.Edit;
end;

procedure TwFitxaFiliacio.edFiliDadesFacExit(Sender: TObject);
begin
    if tFiliDadesFac.EstaEditando then
    begin
        if EsPle(tFiliDadesFac.FieldByName('C_CentreFac').AsString)
        and EsBuit(tFiliDadesFac.FieldByName('centrefac_N_CentreFac').AsString)
        then tFiliDadesFac.FieldByName('C_CentreFac').Clear;

        if EsPle(tFiliDadesFac.FieldByName('C_Client').AsString)
        and EsBuit(tFiliDadesFac.FieldByName('client_N_Client').AsString)
        then tFiliDadesFac.FieldByName('C_Client').Clear;

        if EsPle(tFiliDadesFac.FieldByName('C_Delegacio').AsString)
        and EsBuit(tFiliDadesFac.FieldByName('delegacio_N_Delegacio').AsString)
        then tFiliDadesFac.FieldByName('C_Delegacio').Clear;
    end;
end;

procedure TwFitxaFiliacio.rgEstadosFacturacionClick(Sender: TObject);
begin
    if TePapers(StrToInt(rgEstadosFacturacion.Values[rgEstadosFacturacion.ItemIndex])) then
    begin
      if esBuit(tTractaments.FieldByName('C_CentreFac').AsString)
      then Centre.EtiFontColor    := clRed
      else Centre.EtiFontColor    := clWindowText;
    end
    else begin
      Centre.EtiFontColor    := clWindowText;
      Client.EtiFontColor    := clWindowText;
      Delegacio.EtiFontColor := clWindowText;
    end;
end;

procedure TwFitxaFiliacio.tFiliTDIBefore(DataSet: TDataSet);
begin
  if not tFiliacio.RequestLive  then FerError(Error39, True);
  if not tFiliacio.EstaEditando then tFiliacio.Edit;
end;

procedure TwFitxaFiliacio.tFiliTDIBeforeDelete(DataSet: TDataSet);
begin
  if not tFiliacio.RequestLive  then FerError(Error39, True);
end;

procedure TwFitxaFiliacio.tFiliTDIBeforePost(DataSet: TDataSet);
begin
  // controlar que no hi hagi 2 tipus de documents iguals per una mateixa HC
  if GutSelect('select count(*) from FILI_TDI where C_HISTORIA=%d and TDI="%s"',
               [tFiliTDI.FieldByName('C_HISTORIA').AsInteger, tFiliTDI.FieldByName('TDI').AsString])>0
  then FerError(Format('Tipus de document "%s" ja existent.',[tFiliTDI.FieldByName('TDI').AsString]),True);
end;

procedure TwFitxaFiliacio.bbNoRenovaNPCClick(Sender: TObject);
var
 Valor: String;
begin
  // modificar DATA_PREALTA amb la DATA_FI_CONTRACTAT
  // primer comprovem que: DATA_FI_CONTRACTAT >= DATA_INGRES i DATA_FI_CONTRACTAT >= AVUI - 7 i DATA_FI_CONTRACTAT >= AVUI
  if ((not tTractaments.FieldbyName('DATA_FI_CONTRACTAT').isNull) and (not tTractaments.FieldbyName('Data_Ingres').isNull)) then
  begin
    if (tTractaments.FieldbyName('DATA_FI_CONTRACTAT').asDateTime < tTractaments.FieldbyName('Data_Ingres').asDateTime)
    then FerError(' * * LA DATA FI CONTRACTAT NO POT SER ANTERIOR A LA DATA D''INGRÉS * * ', True);

    if (tTractaments.FieldbyName('DATA_FI_CONTRACTAT').asDateTime < Fecha_Server - 7)
    then FerError(' * * LA DATA FI CONTRACTAT NO POT SER ANTERIOR A UNA SETMANA * * ', True);

    if (tTractaments.FieldByName('DATA_FI_CONTRACTAT').AsDateTime < Fecha_Server)
    then FerError(Format(Avis50, ['FI CONTRACTAT', 'PASSADA']), True);
  end;
  tTractaments.FieldByName('DATA_PREALTA').AsDateTime := tTractaments.FieldByName('DATA_FI_CONTRACTAT').AsDateTime;

  // Imprimir carta de NO RENOVACIÓ que Ainara em passarà en Català i Castellà (segons idioma del pacient).
  // Aquí caldrà preguntar el familiar o autoritzat. Si no l’omplen és que ho ha demanat el pacient.
  // No ens guardem el familiar o autoritzat, estarà en el full imprès.
  Valor:='';
  with TwPrintFullNoRenovacio.Create(Application) do
  begin
      TRY
          if InputPregunta(ftString,'Diàleg d''impressió del document de NO RENOVACIÓ.',
                           'Si cal, entreu el familiar o autoritzat que demana la NO RENOVACIÓ',Valor,100,1)
          then Familiar := Valor
          else Familiar := '';

          qDades.Close;
          qDades.ParamByName('c_tractament').AsInteger := tTractaments.FieldByName('c_tractament').AsInteger;
          qDades.Open;

          DataFiContractat:=FormatDateTime('dd-mm-yyyy',PreAlta.EditInterno.Field.Value);

          case tFiliacio.FieldByName('idioma').AsInteger of
            1: if TeDretAcces([99]) then qrFullNoRenovaC.Preview
                                    else qrFullNoRenovaC.Print;
          else if TeDretAcces([99]) then qrFullNoRenovaE.Preview
                                    else qrFullNoRenovaE.Print;
          end;
      FINALLY
        Free;
      END;
  end;

  // esborrar la DATA_FI_CONTRACTAT
  // tTractaments.FieldByName('DATA_FI_CONTRACTAT').Clear; Ja es fa al Change de PreAlta
  // desar DATA_NO_RENOVACIO = "NOW"
  tTractaments.FieldByName('DATA_NO_RENOVACIO').AsDateTime := NowServer;
  HYBarra1AlPost(HYBarra1);
end;

procedure TwFitxaFiliacio.EditFrequenciaChange(Sender: TObject);
begin
  if not tTractaments.Active then Exit;

  if  TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [114])    //(tTractaments.FieldByName('C_Prestacio').AsString='2023')
  and (tTractaments.FieldByName('C_Frequencia').AsString <> '')                // si no tenim la freqüència plena no ho fem
  and tTractaments.FieldByName('DATA_PREALTA').IsNull
  and tTractaments.FieldByName('DATA_ALTA').IsNull                              
  then begin
      // 2-5-2016: validem que la freqüència sigui bona (a vegades es posa '-------')
      if GutSelect('select count(*) from TORNAMB where codi="%s"',[tTractaments.FieldByName('C_Frequencia').AsString])=0 then Exit;
  
      if not (tTractaments.State in [dsInsert,dsEdit]) then tTractaments.Edit;
      if tTractaments.FieldByName('DATA_FI_CONTRACTAT').IsNull
      then tTractaments.FieldByName('DATA_FI_CONTRACTAT').AsDateTime := BuscaDiaNPC(tTractaments.FieldByName('C_Frequencia').AsString,
                                                                                    tTractaments.FieldByName('Data_Ingres').AsDateTime+60)
      else tTractaments.FieldByName('DATA_FI_CONTRACTAT').AsDateTime := BuscaDiaNPC(tTractaments.FieldByName('C_Frequencia').AsString,
                                                                                    tTractaments.FieldByName('DATA_FI_CONTRACTAT').AsDateTime);
  end;

end;

procedure TwFitxaFiliacio.tDataFiContractatChange(Sender: TObject);
begin
  if (not tTractaments.FieldByName('DATA_FI_CONTRACTAT').IsNull) and EsFestiu(tTractaments.FieldByName('DATA_FI_CONTRACTAT').AsDateTime)
  then ShowMessage('El dia '+FormatDateTime('dd-mm-yyyy',tTractaments.FieldByName('DATA_FI_CONTRACTAT').AsDateTime)+' és festiu.');

  bbNoRenovaNPC.Enabled := (not tTractaments.FieldByName('DATA_FI_CONTRACTAT').IsNull) and
                           (    tTractaments.FieldByName('DATA_NO_RENOVACIO' ).IsNull) and
                           (tTractaments.State <> dsInsert);                                 // no està insertant
end;

procedure TwFitxaFiliacio.cCoberturaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    tFiliacio.FieldByName('Nivell_Cobertura').AsInteger := Datos.FieldByName('C_Codi').AsInteger;
end;

procedure TwFitxaFiliacio.tTractaments_DESTI_CONT_EXTChange(
  Sender: TField);
begin
   CambioenDestiContExt(Sender);
end;

procedure TwFitxaFiliacio.tTractaments_DESTI_CONT_INTChange(
  Sender: TField);
begin
   CambioenDestiContInt(Sender);
end;

procedure TwFitxaFiliacio.Ed_tFiliacio_T_DOCExit(Sender: TObject);
begin
  pPaisDoc.Visible := Ed_tFiliacio_T_DOC.EditInterno.Field.Value = 'P';  // només visible per PASSAPORT
end;

procedure TwFitxaFiliacio.cDelegacioAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   if (not tTractaments.EstaEditando) then tTractaments.Edit;
   if (tTractaments.FieldbyName('C_CentreFac').asString <> Datos.FieldbyName('C_CentreFac').asString) then tTractaments.FieldbyName('C_CentreFac').asString := Datos.FieldbyName('C_CentreFac').asString;
   if (tTractaments.FieldbyName('C_Client'   ).asString <> Datos.FieldbyName('C_Client'   ).asString) then tTractaments.FieldbyName('C_Client'   ).asString := Datos.FieldbyName('C_Client'   ).asString;
   tTractaments.FieldbyName('C_Delegacio').asString := Datos.FieldbyName('C_Delegacio').asString;
end;

procedure TwFitxaFiliacio.tTractaments_T_HABITACIOChange(Sender: TField);
begin
  CambioenTHab(Sender);
end;

procedure TwFitxaFiliacio.mgcGarantExit(Sender: TObject);
begin
  mgcGarant.Hide;
end;

procedure TwFitxaFiliacio.bModificarGarantClick(Sender: TObject);
begin
  tGarants.Close;
  tGarants.Open;
  tGarants.FindKey( VarArrayof([tTractaments.FieldByName('id_garant').AsInteger]));
  if tGarants.Eof then tGarants.Insert
                  else tGarants.Edit;
  CenterInclient(mgcGarant);
  mgcGarant.Show;
end;

procedure TwFitxaFiliacio.HYBarra4AlCancel(Sender: TObject);
begin
  if tGarants.EstaEditando and AvisoSN('Voleu cancel·lar les modificacions?') then
  begin
      tGarants.Close;
      mgcGarant.Hide;
  end;
end;

procedure TwFitxaFiliacio.tGarantsAfterInsert(DataSet: TDataSet);
var
 id: Integer;
begin
  id := GutSelect('select max(id_garant) from GARANTS',[]);
  DataSet.FieldByName('id_garant').AsInteger := id + 1;
end;


procedure TwFitxaFiliacio.tGarantsAfterPost(DataSet: TDataSet);
var
  mode: String;
  moros: String;
begin
    if not (tTractaments.State in [dsEdit, dsInsert]) then tTractaments.Edicion;
    tTractaments.FieldByName('id_garant').AsInteger := tGarants.FieldByName('id_garant').AsInteger;
    mgcGarant.Hide;

    // Mirem si el garant és morós
    if wData.ES_PROVA then mode := 'PRE'
                      else mode := 'PRO';

    moros := miramoroso(tTractaments.FieldByName('C_Historia').AsString, tGarants.FieldByName('DNI').AsString, mode);
    if      (moros = 'S') then ShowMessage('AQUEST CLIENT ÉS MORÓS')
    else if (moros = 'E') then ShowMessage('No s''ha pogut determinar si aquest client és morós');
end;


procedure TwFitxaFiliacio.tGarantsAlConsultarCampoFiltro2(Sender: TObject;
  var Personalizada: Boolean; NombreConsulta: String;
  var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
  Personalizada := False;
  if (CompareText(NombreConsulta, 'CP')=0)
  or (CompareText(NombreConsulta, 'Poblacio')=0)
  then Begin
      if ValueDb=Null
      then CPoblacionsG.SqlDic[2] := '[FILTRO]'
      else CPoblacionsG.SqlDic[2] := 'WHERE '+SubFiltro+' [AND FILTRO]';
      cPoblacionsG.ExecuteModal;
      Personalizada := True;
  end;
end;

procedure TwFitxaFiliacio.cPoblacionsGAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if (not tGarants.EstaEditando) then tGarants.Edicion;
  tGarants.FieldByName('Codigo'    ).AsString := Datos.FieldByName('CPostal'     ).AsString;
  tGarants.FieldByName('Poblacio'  ).AsString := Datos.FieldByName('N_Poblacio'  ).AsString;
  tGarants.FieldByName('Provincia' ).AsString := Datos.FieldByName('N_Provincia' ).AsString;
end;

procedure TwFitxaFiliacio.tGarantsBeforePost(DataSet: TDataSet);
begin
  // si no han entrat cap dada, cancel·lar l'insert
  if  DataSet.FieldByName('NOM'      ).IsNull and (DataSet.FieldByName('NOM'      ).AsString = '')
  and DataSet.FieldByName('COGNOM1'  ).IsNull and (DataSet.FieldByName('COGNOM1'  ).AsString = '')
  and DataSet.FieldByName('COGNOM2'  ).IsNull and (DataSet.FieldByName('COGNOM2'  ).AsString = '')
  and DataSet.FieldByName('T_DOC'    ).IsNull and (DataSet.FieldByName('T_DOC'    ).AsString = '')
  and DataSet.FieldByName('DNI'      ).IsNull and (DataSet.FieldByName('DNI'      ).AsString = '')
  and DataSet.FieldByName('ADRESA'   ).IsNull and (DataSet.FieldByName('ADRESA'   ).AsString = '')
  and DataSet.FieldByName('CODIGO'   ).IsNull and (DataSet.FieldByName('CODIGO'   ).AsString = '')
  and DataSet.FieldByName('POBLACIO' ).IsNull and (DataSet.FieldByName('POBLACIO' ).AsString = '')
  and DataSet.FieldByName('PROVINCIA').IsNull and (DataSet.FieldByName('PROVINCIA').AsString = '')
  and DataSet.FieldByName('TELEFONO' ).IsNull and (DataSet.FieldByName('TELEFONO' ).AsString = '')
  and DataSet.FieldByName('EMAIL'    ).IsNull and (DataSet.FieldByName('EMAIL'    ).AsString = '')
  and DataSet.FieldByName('RELACIO'  ).IsNull and (DataSet.FieldByName('RELACIO'  ).AsString = '')
  then begin
     mgcGarant.Hide;  
     DataSet.Cancel;
     Abort;
  end;
end;

procedure TwFitxaFiliacio.bNouGarantClick(Sender: TObject);
begin
  tGarants.Close;
  tGarants.Open;
  tGarants.FindKey( VarArrayof([tTractaments.FieldByName('id_garant').AsInteger]));
  tGarants.Insert;
  CenterInclient(mgcGarant);
  mgcGarant.Show;
end;

procedure TwFitxaFiliacio.tTractaments_T_SESSIOChange(Sender: TField);
begin
   CambioenTSessio(Sender);
end;

procedure TwFitxaFiliacio.cFacilitadorsEnClicAltreBoto(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tFacilitadors.Close;
  tFacilitadors.Open;
  tFacilitadors.FindKey(VarArrayof([tTractaments.FieldByName('id_facilitador').AsInteger]));
  if tFacilitadors.Eof then tFacilitadors.Insert
                       else tFacilitadors.Edit;
  CenterInClient(mgcFacilitador);
  mgcFacilitador.Show;
end;

procedure TwFitxaFiliacio.tFacilitadorsAfterInsert(DataSet: TDataSet);
var
 id: Integer;
begin
  id := GutSelect('select max(id_facilitador) from FACILITADORS',[]);
  DataSet.FieldByName('id_facilitador').AsInteger := id + 1;
end;

procedure TwFitxaFiliacio.tFacilitadorsAfterPost(DataSet: TDataSet);
begin
  if not (tTractaments.State in [dsEdit, dsInsert]) then tTractaments.Edicion;
  tTractaments.FieldByName('id_facilitador').AsInteger := tFacilitadors.FieldByName('id_facilitador').AsInteger;
  mgcFacilitador.Hide;
end;

procedure TwFitxaFiliacio.tFacilitadorsBeforePost(DataSet: TDataSet);
begin
  // si no han entrat cap dada, cancel·lar l'insert
  if  DataSet.FieldByName('NOM'      ).IsNull and (DataSet.FieldByName('NOM'      ).AsString = '')
  and DataSet.FieldByName('COGNOM1'  ).IsNull and (DataSet.FieldByName('COGNOM1'  ).AsString = '')
  and DataSet.FieldByName('COGNOM2'  ).IsNull and (DataSet.FieldByName('COGNOM2'  ).AsString = '')
  then begin
     mgcFacilitador.Hide;  
     DataSet.Cancel;
     Abort;
  end;
end;

procedure TwFitxaFiliacio.HYBarra5AlCancel(Sender: TObject);
begin
  if tFacilitadors.EstaEditando and AvisoSN('Voleu cancel·lar les modificacions?') then
  begin
      tFacilitadors.Close;
      mgcFacilitador.Hide;
  end;
end;

procedure TwFitxaFiliacio.cFacilitadorsAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if not (tTractaments.State in [dsEdit, dsInsert]) then tTractaments.Edicion;
  tTractaments.FieldByName('id_facilitador').AsInteger := Datos.FieldByName('id_facilitador').AsInteger;
  mgcFacilitador.Hide;
end;

{procedure TwFitxaFiliacio.cFacilitadorsEnFerAltraCosa(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  // poder modificar les dades del Facilitador
  tFacilitadors.Close;
  tFacilitadors.Open;
  tFacilitadors.FindKey(VarArrayof([Datos.FieldByName('id_facilitador').AsInteger]));
  if tFacilitadors.Eof then tFacilitadors.Insert
                       else tFacilitadors.Edit;
  CenterInClient(mgcFacilitador);
  mgcFacilitador.Show;
  Sender.Close;
end; }

procedure TwFitxaFiliacio.cHtalDestiAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tTractaments.FieldByName('C_HospitalDesti').AsString := Datos.FieldByName('c_hospital').AsString; 
end;

procedure TwFitxaFiliacio.sbNetejarCIPClick(Sender: TObject);
begin
  if tFiliacio.RequestLive then
  begin
      if AvisoSN('Voleu buidar el camp CIP (S/N)?') then
      begin
          if not tFiliacio.EstaEditando then tFiliacio.Edit;
          tFiliacio.FieldByName('TSI').Clear;
      end;
  end;
end;

procedure TwFitxaFiliacio.tTractaments_CADA_X_SETMANESChange(
  Sender: TField);
begin
  CambioenCadaXSetmanes(Sender);
end;

procedure TwFitxaFiliacio.CambioenCadaXSetmanes(Sender: TField);
begin
  if tTractaments.FieldbyName('Cada_X_setmanes').isNull
  then EditCadaXSetmanes.EtifontColor := clRed
  else EditCadaXSetmanes.EtifontColor := clWindowText;
end;

procedure TwFitxaFiliacio.bScanDocClick(Sender: TObject);
var
    f: TwCapturaPasaport;
begin
    try
     Application.CreateForm(TwCapturaPasaport,f);
     f.dsFili.DataSet := tFiliacio;
     f.ShowModal;
    finally
     f.Free;
    end;
end;



function TwFitxaFiliacio.check_captura_passaport: Boolean;
var
    r: TRegistry;
    url: String;
begin
    url := '';
    R := TRegistry.Create;
    TRY
      R.RootKey := HKEY_LOCAL_MACHINE;
       if R.OpenKeyReadOnly('\Software\LectorPasaport') then url := R.ReadString('url');
    FINALLY
     R.Free;
    END;
    Result := (url<>'');
end;

procedure TwFitxaFiliacio.cEstatCivilAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tFiliacio.Edicion;
  tFiliacio.FieldByName('ESTADO_CIV').AsString := Datos.FieldByName('c_estat').AsString;
end;

procedure TwFitxaFiliacio.Ed_tTractaments_ID_FACILITADORKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = ord(#13) then cFacilitadors.ExecuteModal('','');  // intro
end;

procedure TwFitxaFiliacio.bCanviPrestacioClick(Sender: TObject);
begin
    if not tTractaments.RequestLive then FerError('Visualització de consulta. No es poden modificar les dades', True);

    if tTractaments.FieldByName('Data_Ingres').AsDateTime <= wData.QParametres.FieldByName('DataConsolidatFins').AsDateTime then FerError('No es poden modificar dades consolidades.',True);

    if (tTractaments.State in [dsInsert]) then FerError('Podreu canviar la prestació un cop hàgiu desat les dades', True);
    TeDretMetge(wData.UsuariActiu.Codi, [245], True);
    TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [175], True);

    // Mostrem llista de prestacions intercanviables
    cCanviPresta.SqlDic[3] := Format('where P.C_PRESTACIO <> "%s"', [tTractaments.FieldByName('C_Prestacio').AsString]);
    cCanviPresta.SqlDic[4] := Format('and P.TIPUS = %d', [tTractaments.FieldByName('Prestacio_Tipus').AsInteger]);
    cCanviPresta.SqlDic[5] := Format('and P.ESEASE = "%s"', [tTractaments.FieldByName('Prestacio_EsEASE').AsString]);
    cCanviPresta.ExecuteModal;
end;

procedure TwFitxaFiliacio.cCanviPrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    if not AvisoNS(Format('Esteu segur que voleu canviar la prestació ' + NLine +
                          '%s - %s ' + NLine +
                          'per ' + NLine +
                          '%s - %s?',
                          [tTractaments.FieldByName('C_Prestacio').AsString, tTractaments.FieldByName('Prestacio_N_Prestacio').AsString,
                           Datos.FieldByName('C_Prestacio').AsString, Datos.FieldByName('N_Prestacio').AsString]),
                   'Atenció')
    then Exit;


    if not (tTractaments.State in [dsEdit]) then tTractaments.Edicion;
    tTractaments.FieldByName('C_Prestacio').AsString := Datos.FieldByName('C_Prestacio').AsString;

    MostrarPaneles(tTractaments.FieldByName('C_Prestacio').AsString);

    // Revisem el motiu
    if pMotiuEspera.Visible
    then while not tTractaments.ConsultaCampo('Motiu','') do ShowMessage('Cal que actualitzeu/confirmeu el motiu.');

    // i la modalitat
    if pModalitatEspera.Visible
    then while not tTractaments.ConsultaCampo('Modalitat','') do ShowMessage('Cal que actualitzeu/confirmeu la modalitat.');

    lPrestacio.EditValue := Datos.FieldByName('C_Prestacio').AsString + ' - ' + Datos.FieldByName('N_Prestacio').AsString;
    modificadaPrestacio := True;
end;

procedure TwFitxaFiliacio.sbCanviDataIngresClick(Sender: TObject);
var
 eData,dIngres: TDateTime;
 hora,minut: integer;
begin
    if not tTractaments.RequestLive then FerError('Visualització de consulta. No es poden modificar les dades', True);

    if tTractaments.FieldByName('Data_Ingres').AsDateTime <= wData.QParametres.FieldByName('DataConsolidatFins').AsDateTime then FerError('No es poden modificar dades consolidades.',True);

    if (tTractaments.State in [dsInsert]) then FerError('Podreu canviar la data d''ingrés un cop hàgiu desat les dades', True);
    TeDretMetge(wData.UsuariActiu.Codi, [251], True);
    if not TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [178]) then FerError('Aquesta prestció no permet canvi de data d''ingrés',True);

    // Mostrem calendari
    Data_Ingres.SetFocus;
    eData := 0;
    eData := Calendario(tTractaments.FieldByName('data_ingres').AsDateTime, Catala, False, 'Data ingrés');
    if eData = 0 then eData := tTractaments.FieldByName('Data_Ingres').AsDateTime
    else if eData <= wData.QParametres.FieldByName('DataConsolidatFins').AsDateTime then FerError('No es poden modificar dades consolidades.',True)
    else if eData > DateServer                                                      then FerError(Avis67,True)
    else begin
        if pHora.Visible then
        begin
          TRY
            hora  := StrToInt(Copy(tTractaments.FieldByName('Hora').AsString, 1, 2));
            minut := StrToInt(Copy(tTractaments.FieldByName('Hora').AsString, 4, 2));
            if (hora > 24) or (minut > 60) then FerError('HORA INCORRECTA', True);

            dIngres := StrToDateTime(tTractaments.FieldByName('Data_Ingres').AsString+' '+tTractaments.FieldByName('Hora').AsString+':00');
            if dIngres > NowServer then FerError(Avis67, True);
          EXCEPT
            FerError('HORA INCORRECTA', True);
          END;
        end;

        if not (tTractaments.State in [dsEdit]) then tTractaments.Edicion;
        tTractaments.FieldByName('Data_Ingres').AsDateTime := eData;
        if pHora.Visible then tTractaments.FieldByName('Hora').AsString := JustificaC(IntToStr(hora), 2, '0') + ':' + JustificaC(IntToStr(minut), 2, '0');
        if tTractaments.FieldByName('Prestacio_Tipus').AsInteger = 2 then tTractaments.FieldByName('data_alta').AsDateTime := eData;
    end;
    modificadaDataIngres := True;
end;

procedure TwFitxaFiliacio.sbCanviCoordinadorClick(Sender: TObject);
begin
    if not tTractaments.RequestLive then FerError('Visualització de consulta. No es poden modificar les dades', True);

    if (tTractaments.State in [dsInsert]) then FerError('Podreu canviar el coordinador un cop hàgiu desat les dades', True);
    TeDretMetge(wData.UsuariActiu.Codi, [249], True);
    TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [177], True);

    // Mostrem llista de metges que tenen assignada aquesta prestació
    if esPle(tTractaments.FieldbyName('C_Prestacio').asString)
    then cCanviCoord.SqlDic[5] := Format('and mp.c_prestacio = "%s" ',[tTractaments.FieldByName('C_Prestacio').AsString])
    else cCanviCoord.SqlDic[5] := '';

    if esPle(tTractaments.FieldbyName('C_Coordinador').asString)
    then cCanviCoord.SqlDic[6] := Format('and m.codi <> "%s" ',[tTractaments.FieldByName('C_Coordinador').AsString])
    else cCanviCoord.SqlDic[6] := '';

    cCanviCoord.ExecuteModal;
end;

procedure TwFitxaFiliacio.cCanviCoordAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    if not AvisoNS(Format('Esteu segur que voleu canviar el coordinador ' + NLine +
                          '%s - %s ' + NLine +
                          'per ' + NLine +
                          '%s - %s?',
                          [tTractaments.FieldByName('C_Coordinador').AsString, tTractaments.FieldByName('Coordinador_Nomsencer').AsString,
                           Datos.FieldByName('Codi').AsString, Datos.FieldByName('Nomsencer').AsString]),
                   'Atenció')
    then Exit;

    if not (tTractaments.State in [dsEdit]) then tTractaments.Edicion;
    tTractaments.FieldByName('C_Coordinador').AsString := Datos.FieldByName('Codi').AsString;

    modificatCoordinador := True;
end;

procedure TwFitxaFiliacio.tTractaments_C_FREQUENCIA_TIPUSChange(
  Sender: TField);
begin
  IF tTractaments.FieldbyName('C_Frequencia_Tipus').isNull
  then EditTFrequencia.EtifontColor := clRed
  else EditTFrequencia.EtifontColor := clWindowText;
end;

procedure TwFitxaFiliacio.tTractaments_C_PrestacioChange(Sender: TField);
begin
  NoFacturableSCS := TeDretPresta(tTractaments.FieldByName('C_Prestacio').AsString, [198])
                     or TeDretMotiu(tTractaments.FieldByName('C_Motiu').AsInteger, [16]);
end;

procedure TwFitxaFiliacio.tTractaments_C_CentreFacChange(Sender: TField);
begin
//-  if teDretPresta198 then MostrarEstadosFact(tTractaments.FieldByName('c_estatfac').AsInteger);
end;

procedure TwFitxaFiliacio.cClientAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
   if (not tTractaments.EstaEditando) then tTractaments.Edit;
   if (tTractaments.FieldbyName('C_CentreFac').asString <> Datos.FieldbyName('C_CentreFac').asString) then tTractaments.FieldbyName('C_CentreFac').asString := Datos.FieldbyName('C_CentreFac').asString;
   tTractaments.FieldbyName('C_Client').asString := Datos.FieldbyName('C_Client').asString;
end;


procedure TwFitxaFiliacio.BolcaValoracioPreingres(C_Espera: String);
var
  ID_Registre, C_Anotacio: Integer;
  ultima_alta: TDateTime;
  comentari, Anotacio: String;
  salt: Integer;
begin
    // Busquem les respostes donades en la valoració de l'ingrés

    ID_Registre := GutSelect('select IDREGISTRE from ESPERA where C_ESPERA = %s', [C_Espera]);

    if (ID_Registre = 0) then Exit;

    // Només contemplarem respostes donades amb posterioritat a tractaments anteriors del pacient
    ultima_alta := GutSelect('select Max(DATA_ALTA) from TRACTAMENTS where C_HISTORIA = %d and DATA_INGRES < "%s"',
                             [tTractaments.FieldByName('C_Historia').AsInteger,
                              FormatDateTime('dd.mm.yyyy', tTractaments.FieldByName('Data_Ingres'  ).AsDateTime)]);

    qValSol.Close;
    qValSol.ParamByName('idregistre').AsInteger := ID_Registre;
    qValSol.ParamByName('data_desde').AsDateTime := ultima_alta;
    qValSol.Open;

    // També descartem les respostes no donades per un metge:
    while not qValSol.Eof do
    begin
        if (BuscaMetge(qValSol.FieldByName('Usuari').AsString).Grup = 'ME') then Break;
        qValSol.Next;
    end;

    // Si no hi ha resposta de metge, no bolquem res
    if (BuscaMetge(qValSol.FieldByName('Usuari').AsString).Grup <> 'ME') then Exit;

    comentari := qValSol.FieldByName('Comentari').AsString;
    salt := Pos(NLine, comentari);
    Anotacio := Trim(Copy(comentari, salt, Length(comentari)-salt+1));

    if (Anotacio = '') then Exit;

    C_Anotacio := GutGen_ID('CONTAHISTORIA', 1);

    // Insertem anotació a Historia
    with insValSol do
    begin
        ParamByName('C_Anotacio'   ).AsInteger  := C_Anotacio;
        ParamByName('C_Historia'   ).AsInteger  := tTractaments.FieldByName('C_Historia'   ).AsInteger;
        ParamByName('C_Tractament' ).AsInteger  := tTractaments.FieldByName('C_Tractament' ).AsInteger;
        ParamByName('C_Prestacio'  ).AsString   := tTractaments.FieldByName('C_Prestacio'  ).AsString;
        ParamByName('Data_Ingres'  ).AsDateTime := tTractaments.FieldByName('Data_Ingres'  ).AsDateTime;
        ParamByName('C_Coordinador').AsString   := tTractaments.FieldByName('C_Coordinador').AsString;
        ParamByName('EsRCP'        ).Clear;

        ParamByName('Data'         ).AsDateTime := qValSol.FieldByName('Data').AsDateTime;
        ParamByName('Anotacio'     ).AsString   := Anotacio;
        ParamByName('C_Usuari'     ).AsString   := qValSol.FieldByName('Usuari').AsString;
        ParamByName('C_Grup'       ).AsString   := 'ME';
        ParamByName('QueEs'        ).AsInteger  := 30;
        ParamByName('Link'         ).AsInteger  := ID_Registre;
        ExecSql;
    end;

    // Bolquem també com a anotació el comentari de finalització de registre fet per admissions
    qFiSol.Close;
    qFiSol.ParamByName('idregistre').AsInteger := ID_Registre;
    qFiSol.ParamByName('data_desde').AsDateTime := ultima_alta;
    qFiSol.Open;

    Anotacio := Trim(qFiSol.FieldByName('Comentari').AsString);

    if (Anotacio = '') then Exit;

    C_Anotacio := GutGen_ID('CONTAHISTORIA', 1);

    // Insertem anotació a Historia
    with insValSol do
    begin
        ParamByName('C_Anotacio'   ).AsInteger  := C_Anotacio;
        ParamByName('C_Historia'   ).AsInteger  := tTractaments.FieldByName('C_Historia'   ).AsInteger;
        ParamByName('C_Tractament' ).AsInteger  := tTractaments.FieldByName('C_Tractament' ).AsInteger;
        ParamByName('C_Prestacio'  ).AsString   := tTractaments.FieldByName('C_Prestacio'  ).AsString;
        ParamByName('Data_Ingres'  ).AsDateTime := tTractaments.FieldByName('Data_Ingres'  ).AsDateTime;
        ParamByName('C_Coordinador').AsString   := tTractaments.FieldByName('C_Coordinador').AsString;
        ParamByName('EsRCP'        ).Clear;

        ParamByName('Data'         ).AsDateTime := qFiSol.FieldByName('Data').AsDateTime;
        ParamByName('Anotacio'     ).AsString   := Anotacio;
        ParamByName('C_Usuari'     ).AsString   := qFiSol.FieldByName('Usuari').AsString;
        ParamByName('C_Grup'       ).AsString   := 'AD';
        ParamByName('QueEs'        ).AsInteger  := 30;
        ParamByName('Link'         ).AsInteger  := ID_Registre;
        ExecSql;
    end;
end;


procedure TwFitxaFiliacio.eNHCNovaHCEChange(Sender: TObject);
begin
  bbCercaNovaHCE.Enabled    := eNHCNovaHCE.Text='';
  bbFiliaNovaHCE.Enabled    := bbCercaNovaHCE.Enabled;
  bbModiNovaHCE.Enabled     := not bbFiliaNovaHCE.Enabled;
  bbRefrescaNovaHCE.Enabled := bbModiNovaHCE.Enabled;
end;

procedure TwFitxaFiliacio.eNHCNovaHCEKeyPress(Sender: TObject;
  var Key: Char);
var
 captionEspera : String;
begin
  if key = #13 then
  begin
      tFiliacio.Close;
      if eNHCNovaHCE.Text <> '' then
      begin
          bbRefrescaNovaHCE.Click;
          captionEspera :=Format('Filiant (%s) Hist. (%s)', [tTractaments.FieldByName('c_prestacio').AsString, eNHCNovaHCE.Text]);
      end
      else begin
          tFiliacio.New.OpenFisrt := True;
          tFiliacio.Open;
          tFiliacio.Insert;
          captionEspera := 'Filiant ['+ tTractaments.FieldByName('c_prestacio').AsString+']';
      end;

      if      ResultadoFiliacion = 90 then lEspera.Caption := 'Llista d''espera ('+NUMESPERA+') '+ captionEspera
      else if ResultadoFiliacion = 95 then lEspera.Caption := 'Agenda ('+NUMESPERA+') '+ captionEspera;
  end;
end;

procedure TwFitxaFiliacio.bbCercaNovaHCEClick(Sender: TObject);
begin
    wDataHCE.BuscaPacientAdmissions(strtoint(NUMESPERA));
end;

procedure TwFitxaFiliacio.bbFiliaNovaHCEClick(Sender: TObject);
begin
    wDataHCE.CrearPacientAdmissions(StrToInt(NUMESPERA));
    novaHC := True;
end;

procedure TwFitxaFiliacio.bbModiNovaHCEClick(Sender: TObject);
var
    c_historia: integer;
    c_espera: integer;
begin
    c_historia := StrToInt(eNHCNovaHCE.Text);
    c_espera := StrToInt(NUMESPERA);
    wDataHCE.EditarPacientAdmissions(c_historia,c_espera);
end;

procedure TwFitxaFiliacio.bbRefrescaNovaHCEClick(Sender: TObject);
begin
    tFiliacio.New.OpenFisrt := False;
    tFiliacio.Open;
    tFiliacio.Findkey(vararrayof([eNHCNovaHCE.Text]));
    tFiliacio.Edit;
end;

procedure TwFitxaFiliacio.consultaPlantesAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if (not tTractaments.EstaEditando) then tTractaments.Edit;  // parte 42535
  tTractaments.FieldbyName('C_Llit'  ).Clear;
  tTractaments.FieldbyName('C_Planta').asString := Datos.FieldbyName('C_Planta').asString;
end;

procedure TwFitxaFiliacio.DonarAlta(c_tractament: integer);
var
    c_historia: integer;
begin
    c_historia := GutSelect('select c_historia from tractaments where c_tractament = %d',[c_tractament]);

    tFiliacio.New.OpenFisrt := False;
    tFiliacio.Open;
    tFiliacio.Findkey(vararrayof([c_historia]));
    tFiliacio.Edit;


      tTractaments.Open;
      tTractaments.FindKey( VarArrayof([c_tractament]));

      //tFiliacio.Open;
      //tFiliacio.FindKey( VarArrayof([tTractaments_C_Historia.AsVariant ]));


      Caption := Format('Alta a la Filiació (%s)', [tTractaments_C_Historia.AsString]);
      eNHCNovaHCE.Text :=  tTractaments_C_Historia.AsString;

      EnPrealta := False;
      EnAlta    := True;

      tsPrealta.TabVisible := True;
      tsAlta.TabVisible := True;
      PC.activePage := tsAlta;
      lPrestacio.EditValue := tTractaments_C_Prestacio.AsString+'-'+tTractaments.FieldByName('Prestacio_N_Prestacio').AsString;

      NUMESPERA := '-1';

      tParent.Open;
      tTractaments.Edit;

      AreaPrealta.Enabled := False;
      Confirmacio.visible := EsPle(tTractaments.FieldbyName('C_Stock').asString);

      if ( ((tTractaments.FieldbyName('C_MetgeAlta').isNull)
          or EsBuit(tTractaments.FieldbyName('C_MetgeAlta').asString))
         and (TeDretPresta(tTractaments_C_Prestacio.AsString, [101]))) then
      begin

          tTractaments.FieldbyName('C_MetgeAlta').asString := tTractaments.FieldbyName('C_MetgePreAlta').asString;

          if (tTractaments.FieldbyName('C_MetgePreAlta').isNull or EsBuit(tTractaments.FieldbyName('C_MetgePreAlta').asString))
          and TeDretPresta(tTractaments_C_Prestacio.AsString, [95])
          then tTractaments.FieldbyName('C_MetgeAlta').asString := tTractaments.FieldbyName('C_Coordinador').asString;
      end;

      PCChange(Self);
      MostrarPaneles(tTractaments_C_Prestacio.AsString);

      Alta.SetFocus;
      consulta:=Self.Caption;
end;

procedure TwFitxaFiliacio.EditarTractament(c_tractament: Integer);
var
  c_historia: Integer;
begin
   c_historia := GutSelect('select c_historia from tractaments where c_tractament = %d',[c_tractament]);

   Caption := Format('Edició Filiació (%d)', [c_historia]);
   eNHCNovaHCE.Text := IntToStr(c_historia);

   NUMESPERA := '-1';

   tFiliacio.New.OpenFisrt := False;
   tFiliacio.Open;
   tFiliacio.Findkey(vararrayof([c_historia]));
   tFiliacio.Edit;

   tTractaments.Open;
   tTractaments.FindKey(VarArrayof([c_tractament]));

   if tTractaments.FieldByName('C_EstatFac').AsString = '80'
   then ShowMessage('Episodi facturat. S''ha de tenir en compte de cara a la factura si es modifica alguna dada.');

   lPrestacio.EditValue := tTractaments.FieldbyName('C_Prestacio').asString+'-'+tTractaments.FieldbyName('Prestacio_N_Prestacio').asString;

   tParent.Open;

   mostrarpaneles(tTractaments.FieldbyName('C_Prestacio').asString);
   consulta:=Self.Caption;
end;

end.


