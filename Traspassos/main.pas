unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ExtCtrls, RVOfficeCnv, DB, DBTables, HYSql,
  StdCtrls, Word_TLB_2010, AxCtrls, OleCtrls, Halcn6DB, Diccionari, kbmMemTable,
  HYEdit, Grids, DBGrids, HYGrids, HYCalendari;

const Separador=';';   // tabulador codi ascii '09'

type
  Twmain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    sbEsig1av: TSpeedButton;
    sbEsigSeg: TSpeedButton;
    sbChart: TSpeedButton;
    sbEfa: TSpeedButton;
    Panel3: TPanel;
    sbTancar: TSpeedButton;
    dsTRS: TDataSource;
    qTRS: TQuery;
    InsESIG_1AV: TQuery;
    ds1AV: TDataSource;
    qTRSCLAU: TIntegerField;
    qTRSC_ESCALA: TIntegerField;
    qTRSC_TRACTAMENT: TIntegerField;
    qTRSC_HISTORIA: TIntegerField;
    qTRSDATA: TDateTimeField;
    qTRSC_USUARI: TStringField;
    qTRSC_ENTRADA: TIntegerField;
    qTRSESTUDIS: TStringField;
    qTRSSITLABA1: TStringField;
    qTRSSITLABA2: TStringField;
    qTRSSITLABA3: TStringField;
    qTRSSITLABAON: TStringField;
    qTRSSITLABAQ: TStringField;
    qTRSSITLABD1: TStringField;
    qTRSSITLABD2: TStringField;
    qTRSSITLABD3: TStringField;
    qTRSSITLABDON: TStringField;
    qTRSSITLABDQ: TStringField;
    qTRSRESIHAB: TStringField;
    qTRSHABIALTA1: TStringField;
    qTRSHABIALTA2: TStringField;
    qTRSHABIALTA3: TStringField;
    qTRSHABIACTU1: TStringField;
    qTRSHABIACTU2: TStringField;
    qTRSHABIACTU3: TStringField;
    qTRSSUBSIDI1: TStringField;
    qTRSSUBSIDI2: TStringField;
    qTRSSUBSIDI3: TStringField;
    qTRSACTIVITATS1: TStringField;
    qTRSACTIVITATS2: TStringField;
    qTRSACTIVITATS3: TStringField;
    qTRSACCESS: TStringField;
    qTRSINTERIOR: TStringField;
    qTRSMOBILITAT1: TStringField;
    qTRSMOBILITAT2: TStringField;
    qTRSMOBILITAT3: TStringField;
    qTRSCONVINGRE1: TStringField;
    qTRSCONVINGRE2: TStringField;
    qTRSCONVINGRE3: TStringField;
    qTRSCONVALTA1: TStringField;
    qTRSCONVALTA2: TStringField;
    qTRSCONVALTA3: TStringField;
    qTRSSERVEIS1: TStringField;
    qTRSSERVEIS2: TStringField;
    qTRSSERVEIS3: TStringField;
    qTRSFIGASSIST1: TStringField;
    qTRSFIGASSIST2: TStringField;
    qTRSFIGASSIST3: TStringField;
    qTRSESCOLA_I: TStringField;
    qTRSESTUDIS_I: TStringField;
    qTRSRESIHAB_I: TStringField;
    qTRSHABIALTA_I1: TStringField;
    qTRSHABIALTA_I2: TStringField;
    qTRSHABIALTA_I3: TStringField;
    qTRSHABIACTU_I: TStringField;
    qTRSHABIACTU_I2: TStringField;
    qTRSHABIACTU_I3: TStringField;
    qTRSSUBSIDI_I: TStringField;
    qTRSMOBILITAT_I: TStringField;
    qTRSACTIVITATS_I1: TStringField;
    qTRSACTIVITATS_I2: TStringField;
    qTRSACTIVITATS_I3: TStringField;
    qTRSFIGASSIST_I1: TStringField;
    qTRSFIGASSIST_I2: TStringField;
    qTRSFIGASSIST_I3: TStringField;
    qTRSCONVINGRE_I1: TStringField;
    qTRSCONVINGRE_I2: TStringField;
    qTRSCONVINGRE_I3: TStringField;
    qTRSCONVALTA_I1: TStringField;
    qTRSCONVALTA_I2: TStringField;
    qTRSCONVALTA_I3: TStringField;
    qTRSDEDICACIO: TStringField;
    qTRSANOTACIO: TStringField;
    qTRSDEDICACIO2: TStringField;
    qTRSDEDICACIO3: TStringField;
    qTRSSUBSIDI_I2: TStringField;
    qTRSSUBSIDI_I3: TStringField;
    qTRSANULAT: TStringField;
    qTRSDATA_ANULAT: TDateTimeField;
    qTRSC_VALIDADOR: TStringField;
    qTRSDATA_VALIDAT: TDateTimeField;
    InsESIG_SEG: TQuery;
    InsCHART: TQuery;
    InsEFA: TQuery;
    dsSEG: TDataSource;
    dsCHART: TDataSource;
    dsEFA: TDataSource;
    dsVip: TDataSource;
    qVIP: TQuery;
    qVIPTREB_CANVIS_NIVELL_ESTUDIS: TStringField;
    qVIPTREB_CANVIS_CONVI_ULT_REV: TStringField;
    qVIPTREB_CANVIS_HABIT_ULT_REV: TStringField;
    qVIPTREB_GRAU_SATIFACCIO_HABITATGE: TIntegerField;
    qVIPTREB_NO_PERQUE: TIntegerField;
    qVIPTREB_TREBALLA_TIPUS_TREBALL: TStringField;
    qVIPTREB_ESTA_ASEGURAT: TStringField;
    qVIPTREB_CANVIS_TREBALL_ULT_REV: TStringField;
    qVIPTREB_GRAU_SATIFACCIO_LABORAL: TIntegerField;
    qVIPTREB_CANVIS_PENSIO_ULT_REV: TStringField;
    qVIPTREB_GRAU_SATIFACCIO_PENSIO: TIntegerField;
    qVIPTREB_CANVIS_MOB_ENTORN_ULT_REV: TStringField;
    qVIPTREB_GRAU_SATIF_MOB_ENTORN: TIntegerField;
    qVIPTREB_3_5DIES_SETMANA: TStringField;
    qVIPTREB_2DIES_SETMANA: TStringField;
    qVIPTREB_1DIA_SETMANA: TStringField;
    qVIPTREB_1DIA_MES: TStringField;
    qVIPTREB_ESPORADICAMENT: TStringField;
    qVIPTREB_ALTRA_FREQUENCIA: TStringField;
    qVIPTREB_MES_3HORES_DIA: TStringField;
    qVIPTREB_1A3HORES_DIA: TStringField;
    qVIPTREB_MENYS_1HORA_DIA: TStringField;
    qVIPTREB_CANVIS_ALTRES_ACT_ULT_REV: TStringField;
    qVIPTREB_GRAU_SATIF_ALTRES_ACT: TIntegerField;
    qVIPTREB_GRAU_SATIF_AVD: TIntegerField;
    qVIPTREB_CANVIS_SUP_AVD_ULT_REV: TStringField;
    dsVIP2: TDataSource;
    qVIP2: TQuery;
    qVIP2C_TRACTAMENT: TIntegerField;
    qVIP2C_HISTORIA: TIntegerField;
    qVIP2USUARIAS: TStringField;
    qVIP2DATAAS: TDateTimeField;
    qVIP2TREB_NUM_PERS_CONV: TIntegerField;
    qVIP2TREB_CONVIU_AMB: TIntegerField;
    qVIP2TREB_QUANTS_FAMILIA: TIntegerField;
    qVIP2TREB_QUANTES_FAMILIA: TIntegerField;
    qVIP2TREB_HORAS_ASSIST_PAGADES_DIA: TIntegerField;
    qVIP2TREB_HORAS_ASSIST_NO_PAG_DIA: TIntegerField;
    qVIP2TREB_HORAS_DIA_AIXECAT: TIntegerField;
    qVIP2TREB_DC_PERSONA_A_CASA_SEVA: TIntegerField;
    qVIP2TREB_DC_PERSONA_AMB_VOSTE: TIntegerField;
    qVIP2TREB_HORAS_SETMANA_ESTUDIANT: TIntegerField;
    qVIP2PSI_AUTOSUFICIENT_ECONOMICAMENT: TStringField;
    qVIP2PSI_TE_SUPORT_ECONOMIC: TStringField;
    qVIP2PSI_DESP_SANIT_NO_PAGA_SEG_SOC: TStringField;
    qVIP2PSI_QUANTIT_DESP_SANIT_NO_SEGSO: TStringField;
    qVIP2TREB_HORES_SETMANA_REMUNERADES: TIntegerField;
    qVIP2TREB_CONTACTES_MES_DE_NEGOCIS: TIntegerField;
    qVIP2TREB_DIES_SETMANA_FORA_CASA: TIntegerField;
    qVIP2TREB_NITS_FORA_CASA_ANY_PASSAT: TIntegerField;
    qVIP2TREB_HORAS_SETMANA_TASQ_DOMESTI: TIntegerField;
    qVIP2TREB_HORAS_SETMANA_MANT_HOGAR: TIntegerField;
    qVIP2TREB_HORAS_SETMANA_OCI: TIntegerField;
    qVIP2TREB_CONTACTES_AMB_AMICS: TIntegerField;
    qVIP2TREB_CONVERSACIONS_DESCONEG_MES: TIntegerField;
    qVIP2TREB_FREQ_PROBLEM_DISP_TRANSP: TIntegerField;
    qVIP2TREB_PROBLEM_TRANSP: TStringField;
    qVIP2TREB_FREQ_PROBLEM_MEDI_NATURAL: TIntegerField;
    qVIP2TREB_PROBLEM_MEDI_NAT: TStringField;
    qVIP2TREB_FREQ_PROBLEM_ENTORN: TIntegerField;
    qVIP2TREB_PROBLEM_ENTORN: TStringField;
    qVIP2TREB_FREQ_PROBLEM_DISP_TRANSP_1: TIntegerField;
    qVIP2TREB_PROBLEM_INFORMACIO: TStringField;
    qVIP2TREB_MAL_ACTIT_PERSON_A_CASA: TIntegerField;
    qVIP2TREB_PROBLEM_ACTI_PERS_CASA: TStringField;
    qVIP2TREB_NECESITAT_AJUD_A_CASA: TIntegerField;
    qVIP2TREB_PROBLEM_NO_AJUD_A_CASA: TStringField;
    qVIP2TREB_NECESITAT_AJUD_A_FEINA: TIntegerField;
    qVIP2TREB_PROBLEM_NO_AJUD_A_FEINA: TStringField;
    qVIP2TREB_MAL_ACTIT_PERSON_TREBALL: TIntegerField;
    qVIP2TREB_PROBLEM_ACTI_PERS_TREBALL: TStringField;
    qVIP2TREB_DISP_SERV_SALUD: TIntegerField;
    qVIP2TREB_PROBLEM_SERV_SALUD: TStringField;
    qVIP2TREB_SENTIT_PREJUICIS: TIntegerField;
    qVIP2TREB_PROBLEM_SENTIT_PREJUICIS: TStringField;
    qVIP2TREB_POLIT_NORMES_INTITUCIONS: TIntegerField;
    qVIP2TREB_PROBLEM_POLIT_NORMES: TStringField;
    qVIP2TREB_GOBERN_ADMINIST_DIFICULT: TIntegerField;
    qVIP2TREB_PROBLEM_GOBERN_ADMINIST: TStringField;
    dsVIPB: TDataSource;
    qVIPB: TQuery;
    qVIPBC_HISTORIA: TIntegerField;
    qVIPBC_TRACTAMENT: TIntegerField;
    qVIPBUSUARIAS: TStringField;
    qVIPBDATAAS: TDateTimeField;
    qVIPBTREB_CANVIS_NIVELL_ESTUDIS: TStringField;
    qVIPBTREB_CANVIS_CONVI_ULT_REV: TStringField;
    qVIPBTREB_CANVIS_HABIT_ULT_REV: TStringField;
    qVIPBTREB_GRAU_SATIFACCIO_HABITATGE: TIntegerField;
    qVIPBTREB_NO_PERQUE: TIntegerField;
    qVIPBTREB_TREBALLA_TIPUS_TREBALL: TStringField;
    qVIPBTREB_ESTA_ASEGURAT: TStringField;
    qVIPBTREB_CANVIS_TREBALL_ULT_REV: TStringField;
    qVIPBTREB_GRAU_SATIFACCIO_LABORAL: TIntegerField;
    qVIPBTREB_CANVIS_PENSIO_ULT_REV: TStringField;
    qVIPBTREB_GRAU_SATIFACCIO_PENSIO: TIntegerField;
    qVIPBTREB_CANVIS_MOB_ENTORN_ULT_REV: TStringField;
    qVIPBTREB_GRAU_SATIF_MOB_ENTORN: TIntegerField;
    qVIPBTREB_3_5DIES_SETMANA: TStringField;
    qVIPBTREB_2DIES_SETMANA: TStringField;
    qVIPBTREB_1DIA_SETMANA: TStringField;
    qVIPBTREB_1DIA_MES: TStringField;
    qVIPBTREB_ESPORADICAMENT: TStringField;
    qVIPBTREB_ALTRA_FREQUENCIA: TStringField;
    qVIPBTREB_MES_3HORES_DIA: TStringField;
    qVIPBTREB_1A3HORES_DIA: TStringField;
    qVIPBTREB_MENYS_1HORA_DIA: TStringField;
    qVIPBTREB_CANVIS_ALTRES_ACT_ULT_REV: TStringField;
    qVIPBTREB_GRAU_SATIF_ALTRES_ACT: TIntegerField;
    qVIPBTREB_GRAU_SATIF_AVD: TIntegerField;
    qVIPBTREB_CANVIS_SUP_AVD_ULT_REV: TStringField;
    sbAsia: TSpeedButton;
    qEscCAP: TQuery;
    dsEscCAP: TDataSource;
    InsASIA: TQuery;
    dsASIA: TDataSource;
    qEscLIN: TQuery;
    dsEscLIN: TDataSource;
    sbBateria: TSpeedButton;
    dsBATERIA: TDataSource;
    InsBATERIA: TQuery;
    qVipNeuroPsico: TQuery;
    dsVIPNP: TDataSource;
    qVipNeuroPsicoID: TIntegerField;
    qVipNeuroPsicoC_HISTORIA: TIntegerField;
    qVipNeuroPsicoC_TRACTAMENT: TIntegerField;
    qVipNeuroPsicoUSUARINP: TStringField;
    qVipNeuroPsicoDATANP: TDateTimeField;
    qVipNeuroPsicoFUNCIO: TIntegerField;
    qVipNeuroPsicoTEST: TIntegerField;
    qVipNeuroPsicoITEM: TIntegerField;
    qVipNeuroPsicoRESULTAT: TIntegerField;
    qVipNeuroPsicoAFECTA_MOTRIU: TStringField;
    qVipNeuroPsicoAFECTA_VISUAL: TStringField;
    qVipNeuroPsicoAFECTA_VERBAL: TStringField;
    qVipNeuroPsicoAFECTA_AUDITIVA: TStringField;
    qVipNeuroPsicoTRANSTORN_C_E: TStringField;
    qVipNeuroPsicoES_REVISIO: TStringField;
    sbICAS: TSpeedButton;
    sbVIP: TSpeedButton;
    sbUM: TSpeedButton;
    InsEscalesCap: TQuery;
    qEscASIA: TQuery;
    qEscalesTRS: TQuery;
    qEscBarcelona: TQuery;
    qEscBateria: TQuery;
    qEscBateriaInf: TQuery;
    qEscCHART: TQuery;
    qEscCIQ: TQuery;
    qEscEFA: TQuery;
    qEscEntrevista: TQuery;
    qEscESIG1aV: TQuery;
    qEscESIGSeg: TQuery;
    qEscEVSF: TQuery;
    qEscPEDI: TQuery;
    Label1: TLabel;
    bASIA: TSpeedButton;
    bTRS: TSpeedButton;
    bBCN: TSpeedButton;
    bBateria: TSpeedButton;
    bBateriaInf: TSpeedButton;
    bCHART: TSpeedButton;
    bCIQ: TSpeedButton;
    bEFA: TSpeedButton;
    bPEDI: TSpeedButton;
    bEVSF: TSpeedButton;
    bESIGSeg: TSpeedButton;
    bESIG1aV: TSpeedButton;
    bEntrevista: TSpeedButton;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    sbCaigudes: TSpeedButton;
    sbBaclofen: TSpeedButton;
    sbInformesSol: TSpeedButton;
    sbFarma: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    mLogErrors: TMemo;
    Panel6: TPanel;
    lLlegits: TLabel;
    lInsertats: TLabel;
    lclaumin: TLabel;
    lclaumax: TLabel;
    Label3: TLabel;
    literal: TLabel;
    eLlegits: TEdit;
    eInsertats: TEdit;
    eClauMin: TEdit;
    eClauMax: TEdit;
    rbTots: TRadioButton;
    rbTram: TRadioButton;
    sbValida: TSpeedButton;
    qIngressos: TQuery;
    mLogFile: TMemo;
    mLogICD: TMemo;
    sbCognom1: TSpeedButton;
    qMetges: TQuery;
    qUpdNombre: TQuery;
    qAltes: TQuery;
    sbAltres: TSpeedButton;
    sbIasist: TSpeedButton;
    qTractGTN: TQuery;
    qTractFiliacioBo: TQuery;
    qDiagGTN: TQuery;
    dsTractGTN: TDataSource;
    dsFiliacioBo: TDataSource;
    qDiagFiliacioBo: TQuery;
    qProcGTN: TQuery;
    qProcFiliacioBo: TQuery;
    bbRecerca: TBitBtn;
    qProjectes: TQuery;
    qUpdProjectes: TQuery;
    RECERCA: TDatabase;
    qInsCoinvestigadors: TQuery;
    Dades: THalcyonDataSet;
    DadesPROJECTE: TFloatField;
    DadesCOINVEST: TStringField;
    Dades2: THalcyonDataSet;
    qInsParticipants: TQuery;
    qInsEstudis: TQuery;
    qDadesGut: TQuery;
    bbPOAs: TBitBtn;
    POAsE: THalcyonDataSet;
    POAsEC_ICD: TStringField;
    POAsEN_ICD: TStringField;
    qUpdPoasE: TQuery;
    bbLogHc3Visor: TBitBtn;
    LogHC3Visor: TDic;
    FileDlg: TOpenDialog;
    qInsLogHC3Visor: TQuery;
    Lab: TLabel;
    bbLogHCCC: TBitBtn;
    qLogHCCC: TQuery;
    qInsLogHCCC: TQuery;
    BitBtn1: TBitBtn;
    bbPM: TBitBtn;
    PM: THalcyonDataSet;
    qUpdPM: TQuery;
    bbCMG: TBitBtn;
    CMG: THalcyonDataSet;
    qUpdICD: TQuery;
    CMGC_ICD: TStringField;
    bbPMDRG: TBitBtn;
    PMDRG: THalcyonDataSet;
    qUpdPMDRG: TQuery;
    sbMigracioTesis: TSpeedButton;
    Label7: TLabel;
    scTesis: TScrollBox;
    cbGQE: TCheckBox;
    cbDestinataris: TCheckBox;
    cbConceptesOrtesis: TCheckBox;
    cbMetges: TCheckBox;
    cbUPs: TCheckBox;
    cbLlits: TCheckBox;
    cbProveidors: TCheckBox;
    cbHistoriesCliniques: TCheckBox;
    cbHospitalitzacions: TCheckBox;
    cbTractReahb: TCheckBox;
    cbVisitesSessions: TCheckBox;
    cbTarifaprovaesp: TCheckBox;
    cbFactures: TCheckBox;
    cbLiniesDespeses: TCheckBox;
    cbCobraments: TCheckBox;
    cbDiposits: TCheckBox;
    eDesde: THYTextEdit;
    eFins: THYTextEdit;
    Shape1: TShape;
    lGDB: TLabel;
    eTractament: THYTextEdit;
    eHC: THYTextEdit;
    Shape2: TShape;
    Shape3: TShape;
    eHC2: THYTextEdit;
    eOpcio: THYTextEdit;
    Label8: TLabel;
    sbAnotaPsico: TSpeedButton;
    qAnotaPsico: TQuery;
    qInsActivitatNeuro: TQuery;
    CIM10D: THalcyonDataSet;
    qInsCIM10D: TQuery;
    CIM10P: THalcyonDataSet;
    qInsCIM10P: TQuery;
    sbCIM10: TSpeedButton;
    sbArago: TSpeedButton;
    Residencies: THalcyonDataSet;
    qUpdPoblacio: TQuery;
    qInsPoblacio: TQuery;
    PMDRGHC: TStringField;
    PMDRGDINGRES: TDateField;
    PMDRGDALTA: TDateField;
    PMDRGGRD: TFloatField;
    PMDRGPMDRG: TFloatField;
    sbINE: TSpeedButton;
    INE: THalcyonDataSet;
    qUpdateINE: TQuery;
    INEC_PROVINCI: TStringField;
    INEC_MUNICIPI: TStringField;
    INECPOSTAL: TStringField;
    INEMUNICIPI: TStringField;
    sbCIE9: TSpeedButton;
    CIE9: THalcyonDataSet;
    qCIE9: TQuery;
    CIE9C_ICD: TStringField;
    CIE9N_ICD2: TStringField;
    CIE9IDREL: TStringField;
    sbISO2: TSpeedButton;
    ISO2: THalcyonDataSet;
    qUpdISO2: TQuery;
    ISO2C_ISO2: TStringField;
    ISO2C_ISO: TStringField;
    CIE10D: THalcyonDataSet;
    CIE10P: THalcyonDataSet;
    CIE10DC_ICD: TStringField;
    CIE10DN_ICD: TStringField;
    CIE10PC_ICD: TStringField;
    CIE10PN_ICD: TStringField;
    qInsCodiICD: TQuery;
    SpeedButton1: TSpeedButton;
    Frequent: THalcyonDataSet;
    qFreqs: TQuery;
    qIns910: TQuery;
    FrequentICD9: TStringField;
    FrequentICD10: TStringField;
    PMHISTORIA: TFloatField;
    PMFECHA_ADMS: TDateField;
    PMFECHA_ALTA: TDateField;
    PMCMG: TStringField;
    PMPESO: TFloatField;
    CIM10PCAMPO1: TStringField;
    CIM10PCAMPO3: TStringField;
    CIM10PCAMPO4: TStringField;
    CIM10PCAMPO5: TStringField;
    CIM10PCAMPO6: TStringField;
    SpeedButton2: TSpeedButton;
    GRD: THalcyonDataSet;
    qInsTractCodificacio: TQuery;
    GRDCAMPO1: TMemoField;
    GRDCAMPO2: TStringField;
    GRDCAMPO4: TStringField;
    GRDCAMPO5: TStringField;
    GRDCAMPO6: TFloatField;
    qInsCodiICD10: TQuery;
    qCodiicd: TQuery;
    CIM10DTIPUS: TStringField;
    CIM10DC_ICD: TStringField;
    CIM10DN_ICD: TStringField;
    CIM10DR_ICD: TStringField;
    CIM10DINESP: TStringField;
    mtCIM10D: TkbmMemTable;
    mtCIM10DTIPUS: TStringField;
    mtCIM10DC_ICD: TStringField;
    mtCIM10DN_ICD: TStringField;
    mtCIM10DR_ICD: TStringField;
    mtCIM10DINESP: TStringField;
    HYGrid1: THYGrid;
    dsmtCIM10D: TDataSource;
    HYGrid2: THYGrid;
    dsCODIICD10: TDataSource;
    Splitter1: TSplitter;
    ResidenciesCPRO: TStringField;
    ResidenciesCMUN: TStringField;
    ResidenciesDC: TStringField;
    ResidenciesNOMBRE: TStringField;
    ResidenciesRESIDENCIA: TStringField;
    sbSAPProductes: TSpeedButton;
    SAPPROD: THalcyonDataSet;
    qUpdProd: TQuery;
    sbConsums: TSpeedButton;
    sbNReg2: TSpeedButton;
    ProdNREG2: THalcyonDataSet;
    qUpdProdNReg2: TQuery;
    ProdNREG2C_PROD: TFloatField;
    ProdNREG2N_REG2: TStringField;
    sbCIM10_2021: TSpeedButton;
    CIM102021D: THalcyonDataSet;
    qUpdCodiICD: TQuery;
    dsCIM102021D: TDataSource;
    CIM102021P: THalcyonDataSet;
    sbPAO: TSpeedButton;
    hdsPAO: THalcyonDataSet;
    qInsCodiOrtesis: TQuery;
    dsPAO: TDataSource;
    hdsPAOCORTESIS: TFloatField;
    hdsPAONORTESIS: TStringField;
    hdsPAOCFAMILIA: TStringField;
    hdsPAOIVAVENTA: TFloatField;
    hdsPAOCODISERVEI: TStringField;
    hdsPAOPREUMAXIMS: TFloatField;
    hdsPAOAPORTACIOS: TFloatField;
    hdsPAOTIPUSORTES: TFloatField;
    hdsPAON_ORTESIS2: TStringField;
    hdsPAOTECATALEG: TStringField;
    hdsPAOACTIU: TStringField;
    qUpdCodiOrtesis: TQuery;
    qInsCodiGrupOrtesis: TQuery;
    qUpdCodiGrupOrtesis: TQuery;
    qUpdCodiGrupOrtesisLin: TQuery;
    qInsCodiGrupOrtesisLin: TQuery;
    CIM102021DCAMPO1: TStringField;
    CIM102021DCAMPO3: TStringField;
    CIM102021DCAMPO4: TStringField;
    CIM102021DCAMPO5: TStringField;
    CIM102021DCAMPO6: TStringField;
    CIM102021DCAMPO7: TStringField;
    CIM102021PCAMPO1: TStringField;
    CIM102021PCAMPO3: TStringField;
    CIM102021PCAMPO4: TStringField;
    CIM102021PCAMPO5: TStringField;
    CIM102021PCAMPO6: TStringField;
    CIM102021PCAMPO7: TStringField;
    CIM10MC_BAIXES: THalcyonDataSet;
    qBaixaCodiICD: TQuery;
    CIM10MC_BAIXESCAMPO1: TStringField;
    CIM10MC_BAIXESCAMPO2: TStringField;
    CIM10SCP_BAIXES: THalcyonDataSet;
    StringField1: TStringField;
    ADDRESS: THalcyonDataSet;
    qFiliacio: TQuery;
    sbNovaHCEPis: TSpeedButton;
    ADDRESSPERS_ID: TFloatField;
    ADDRESSNAME: TStringField;
    ADDRESSSNAME_1: TStringField;
    ADDRESSSNAME_2: TStringField;
    ADDRESSPATIENT: TFloatField;
    ADDRESSUSER: TStringField;
    ADDRESSADD_TYPE: TFloatField;
    ADDRESSSTR_TYPE: TFloatField;
    ADDRESSSTREET: TStringField;
    ADDRESSNUMBER: TFloatField;
    ADDRESSBLOCK: TStringField;
    ADDRESSSTAIR: TStringField;
    ADDRESSFLOOR: TStringField;
    ADDRESSDOOR: TStringField;
    ADDRESSPREMISES: TStringField;
    ADDRESSPC_MUNICIP: TFloatField;
    ADDRESSPC_OTHER: TStringField;
    ADDRESSMUNICIPALI: TStringField;
    ADDRESSPROVINCE: TStringField;
    ADDRESSCOUNTRY: TFloatField;
    ADDRESSORDER: TFloatField;
    ADDRESSCONTACT: TFloatField;
    qUpdFili: TQuery;
    sbGermen: TSpeedButton;
    hdsGermen: THalcyonDataSet;
    hdsGermenC_GERMEN: TStringField;
    hdsGermenN_GERMEN: TStringField;
    qInsGermen: TQuery;
    qUpdGermen: TQuery;
    sbFactPredis: TSpeedButton;
    hdsFactPredis: THalcyonDataSet;
    qInsFactPredis: TQuery;
    hdsFactPredisFACTPRED: TStringField;
    SpeedButton3: TSpeedButton;
    EMDN: THalcyonDataSet;
    qInsEMDN: TQuery;
    EMDNTEMDN_ID: TStringField;
    EMDNTEMDN_DESC: TStringField;
    EMDNIDIOMA: TStringField;
    EMDNDATA_INI: TStringField;
    EMDNDATA_FIN: TStringField;
    EMDNDESC_CA: TStringField;
    EMDNDESC_ES: TStringField;
    EMDNDESC_EN: TStringField;
    EMDNCATEGORIA: TStringField;
    EMDNCATEGORIA_: TStringField;
    EMDNNIVELL: TStringField;
    EMDNNIVELL_INF: TStringField;
    EMDNCODI_PARE: TStringField;
    qUpdEMDN: TQuery;
    sbPrefix: TSpeedButton;
    prefix: THalcyonDataSet;
    qUpdPais: TQuery;
    procedure sbTancarClick(Sender: TObject);
    procedure sbEsig1avClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbEsigSegClick(Sender: TObject);
    procedure rbTotsClick(Sender: TObject);
    procedure rbTramClick(Sender: TObject);
    procedure sbChartClick(Sender: TObject);
    procedure sbEfaClick(Sender: TObject);
    procedure sbAsiaClick(Sender: TObject);
    procedure sbBateriaClick(Sender: TObject);
    procedure sbICASClick(Sender: TObject);
    procedure bASIAClick(Sender: TObject);
    procedure bTRSClick(Sender: TObject);
    procedure bBCNClick(Sender: TObject);
    procedure bBateriaClick(Sender: TObject);
    procedure bBateriaInfClick(Sender: TObject);
    procedure bCHARTClick(Sender: TObject);
    procedure bCIQClick(Sender: TObject);
    procedure bEFAClick(Sender: TObject);
    procedure bEntrevistaClick(Sender: TObject);
    procedure bESIG1aVClick(Sender: TObject);
    procedure bESIGSegClick(Sender: TObject);
    procedure bEVSFClick(Sender: TObject);
    procedure bPEDIClick(Sender: TObject);
    procedure sbCaigudesClick(Sender: TObject);
    procedure sbInformesSolClick(Sender: TObject);
    procedure sbValidaClick(Sender: TObject);
    procedure sbCognom1Click(Sender: TObject);
    procedure sbIasistClick(Sender: TObject);
    procedure bbRecercaClick(Sender: TObject);
    procedure bbPOAsClick(Sender: TObject);
    procedure FileDlgClose(Sender: TObject);
    procedure bbLogHc3VisorClick(Sender: TObject);
    procedure FileDlgSelectionChange(Sender: TObject);
    procedure bbLogHCCCClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbPMClick(Sender: TObject);
    procedure bbCMGClick(Sender: TObject);
    procedure bbPMDRGClick(Sender: TObject);
    procedure sbMigracioTesisClick(Sender: TObject);
    procedure sbAnotaPsicoClick(Sender: TObject);
    procedure sbCIM10Click(Sender: TObject);
    procedure sbAragoClick(Sender: TObject);
    procedure sbINEClick(Sender: TObject);
    procedure sbCIE9Click(Sender: TObject);
    procedure sbISO2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure sbSAPProductesClick(Sender: TObject);
    procedure sbConsumsClick(Sender: TObject);
    procedure sbNReg2Click(Sender: TObject);
    procedure sbCIM10_2021Click(Sender: TObject);
    procedure sbPAOClick(Sender: TObject);
    procedure sbNovaHCEPisClick(Sender: TObject);
    procedure sbGermenClick(Sender: TObject);
    procedure sbFactPredisClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sbPrefixClick(Sender: TObject);
  private
    esprimer,tract_ant_nofet: boolean;
    cont_insertats,cont_erronis,tract_ant,tract_act: integer;
    function hihainfo(i: integer): boolean;
    function ValoracioTest: string;
    function RecalcularCIP(Apellido1, Apellido2, Sexo: String; DataNaixement: TDateTime):String;
    function IdentificaDirectori(DirectoriDocs, H: String): String;
    procedure TraspasESIG1AV;
    procedure TraspasESIGSEG;
    procedure TraspasESIGSEG_ANULAT;
    procedure TraspasESIGSEG_VIP;
    procedure TraspasCHART;
    procedure TraspasEFA;
    procedure TraspasASIA;
    procedure TraspasBATERIA;
    procedure TractarBateria;
    procedure RecercaProjectes;
    procedure RecercaCoinvestigadors;
    procedure RecercaParticipants;
    function DataHora(dh: String): TDateTime;
    function PosaPunt(c,t: String): String;
    function Data(d: String): TDate;
  public
    { Public declarations }
  end;

var
  wmain: Twmain;

implementation

uses Data, TraspasICAS, TraspasVIP, Funciones, TraspasAltres, DataHola, DataSAPSOAP;

{$R *.dfm}

procedure Twmain.sbTancarClick(Sender: TObject);
begin
  close;
end;

procedure Twmain.sbEsig1avClick(Sender: TObject);
begin
  lLlegits.Caption := 'Registres llegits de ESCALESTRS:';
  lInsertats.Caption := 'Registres insertats a ESCESIG_1AV:';
  cont_insertats := 0;

  InsESIG_1AV.Close;
  qTRS.Close;
  qTRS.ParamByName('c_escala').AsInteger := 29;
  if (eclaumin.text <> '') then qTRS.SQL[2] := 'and clau >='+eclaumin.text else qTRS.SQL[2] := '';
  if (eclaumax.text <> '') then qTRS.SQL[3] := 'and clau <='+eclaumax.text else qTRS.SQL[3] := '';
  qTRS.Open;

  while (not qTRS.Eof) do
  begin
     TraspasESIG1AV;
     qTRS.Next;
  end;

  literal.Visible := true;
  lLlegits.Visible := true;
  eLlegits.Visible := true;
  lInsertats.Visible := true;
  eInsertats.Visible := True;
  ellegits.Text := inttostr(qTRS.RecordCount);
  eINsertats.Text := inttostr(cont_insertats);

  qTRS.Close;
  InsESIG_1AV.Close;
  
  sbEsig1av.Enabled := false;
  sbEsigSeg.Enabled := false;
  sbChart.Enabled := false;
  sbefa.Enabled := false;
  sbAsia.Enabled := false;
  sbBateria.Enabled := false;
  sbIcas.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := False;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;

  rbTots.Checked := False;
  rbTram.Checked := False;
end;

procedure twmain.TraspasESIG1AV;
begin
  InsESIG_1AV.ParamByName('id').asinteger := GutSelect('select max(id) from ESCESIG_1AV',[]) + 1;
  InsESIG_1AV.ParamByName('c_tractament').AsInteger := qTRS.FieldByName('c_tractament').AsInteger;
  InsESIG_1AV.ParamByName('c_historia').AsInteger := qTRS.FieldByName('c_historia').AsInteger;
  InsESIG_1AV.ParamByName('c_usuari').Asstring := qTRS.FieldByName('c_usuari').Asstring;
  InsESIG_1AV.ParamByName('data').AsDateTime := qTRS.FieldByName('data').AsDateTime;
  InsESIG_1AV.ParamByName('c_entrada').AsInteger := qTRS.FieldByName('c_entrada').AsInteger;
  InsESIG_1AV.ParamByName('anulat').Asstring := qTRS.FieldByName('anulat').Asstring;

  if qTRS.FieldByName('data_anulat').AsDateTime <> 0 then InsESIG_1AV.ParamByName('data_anulat').AsDateTime := qTRS.FieldByName('data_anulat').AsDateTime
  else InsESIG_1AV.ParamByName('data_anulat').Clear;

// VFO-I. - 26/03/2007
//  InsESIG_1AV.ParamByName('c_validador').Asstring := qTRS.FieldByName('c_usuari').Asstring;
//  if qTRS.FieldByName('data_validat').AsDateTime <> 0 then InsESIG_1AV.ParamByName('data_validat').AsDateTime := qTRS.FieldByName('data_validat').AsDateTime
//  else InsESIG_1AV.ParamByName('data_validat').clear;

  InsESIG_1AV.ParamByName('c_validador').Clear;
  InsESIG_1AV.ParamByName('data_validat').clear;
// VFO-F.

  // estudis  -------------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('estudis').AsString <> '' then
  begin
    if qTRS.FieldByName('estudis').AsInteger = 0 then InsESIG_1AV.ParamByName('estudis').AsInteger := 1;
    if qTRS.FieldByName('estudis').AsInteger = 1 then InsESIG_1AV.ParamByName('estudis').AsInteger := 2;
    if qTRS.FieldByName('estudis').AsInteger in[2,3,4] then InsESIG_1AV.ParamByName('estudis').AsInteger := 3;
    if qTRS.FieldByName('estudis').AsInteger in[5,6] then InsESIG_1AV.ParamByName('estudis').AsInteger := 4;
    if qTRS.FieldByName('estudis').AsInteger in[7,8] then InsESIG_1AV.ParamByName('estudis').AsInteger := 5;
    if qTRS.FieldByName('estudis').AsInteger = 9 then InsESIG_1AV.ParamByName('estudis').AsInteger := 6;
  end
  else InsESIG_1AV.ParamByName('estudis').Clear;

  // convingres1 i convalta1 (ignorem els altres) --> convivencia_i i convivencia_a  ---------------------------------
  if qTRS.FieldByName('convingre1').Asstring <> '' then
  begin
    if qTRS.FieldByName('convingre1').AsInteger = 1 then InsESIG_1AV.ParamByName('convivencia_i').AsInteger := 1;
    if qTRS.FieldByName('convingre1').AsInteger = 2 then InsESIG_1AV.ParamByName('convivencia_i').AsInteger := 2;
    if qTRS.FieldByName('convingre1').AsInteger in[3,4,6] then InsESIG_1AV.ParamByName('convivencia_i').AsInteger := 4;
    if qTRS.FieldByName('convingre1').AsInteger in[5,10,11] then InsESIG_1AV.ParamByName('convivencia_i').AsInteger := 3;
    if qTRS.FieldByName('convingre1').AsInteger = 7 then InsESIG_1AV.ParamByName('convivencia_i').AsInteger := 5;
    if qTRS.FieldByName('convingre1').AsInteger = 8 then InsESIG_1AV.ParamByName('convivencia_i').AsInteger := 7;
    if qTRS.FieldByName('convingre1').AsInteger = 9 then InsESIG_1AV.ParamByName('convivencia_i').AsInteger := 8;
  end
  else InsESIG_1AV.ParamByName('convivencia_i').Clear;

  if qTRS.FieldByName('convalta1').Asstring <> '' then
  begin
    if qTRS.FieldByName('convalta1').AsInteger = 1 then InsESIG_1AV.ParamByName('convivencia_a').AsInteger := 1;
    if qTRS.FieldByName('convalta1').AsInteger = 2 then InsESIG_1AV.ParamByName('convivencia_a').AsInteger := 2;
    if qTRS.FieldByName('convalta1').AsInteger in[3,4,6] then InsESIG_1AV.ParamByName('convivencia_a').AsInteger := 4;
    if qTRS.FieldByName('convalta1').AsInteger in[5,10,11] then InsESIG_1AV.ParamByName('convivencia_a').AsInteger := 3;
    if qTRS.FieldByName('convalta1').AsInteger = 7 then InsESIG_1AV.ParamByName('convivencia_a').AsInteger := 5;
    if qTRS.FieldByName('convalta1').AsInteger = 8 then InsESIG_1AV.ParamByName('convivencia_a').AsInteger := 7;
    if qTRS.FieldByName('convalta1').AsInteger = 9 then InsESIG_1AV.ParamByName('convivencia_a').AsInteger := 8;
  end
  else InsESIG_1AV.ParamByName('convivencia_a').Clear;

  // Residencia habitual ---------------------------------------------------------------------------------------------
  if qTRS.FieldByName('resihab').Asstring <> '' then
  begin
    if qTRS.FieldByName('resihab').AsInteger = 1 then InsESIG_1AV.ParamByName('residencia_i').AsInteger := 1;
    if qTRS.FieldByName('resihab').AsInteger = 0 then InsESIG_1AV.ParamByName('residencia_i').AsInteger := 2;
    if qTRS.FieldByName('resihab').AsInteger = 2 then InsESIG_1AV.ParamByName('residencia_i').AsInteger := 9;
    if qTRS.FieldByName('resihab').AsInteger in[3,5] then InsESIG_1AV.ParamByName('residencia_i').AsInteger := 4;
    if qTRS.FieldByName('resihab').AsInteger = 4 then InsESIG_1AV.ParamByName('residencia_i').AsInteger := 5;
    if qTRS.FieldByName('resihab').AsInteger = 6 then InsESIG_1AV.ParamByName('residencia_i').AsInteger := 6;
    if qTRS.FieldByName('resihab').AsInteger = 7 then InsESIG_1AV.ParamByName('residencia_i').AsInteger := 3;
    if qTRS.FieldByName('resihab').AsInteger = 8 then InsESIG_1AV.ParamByName('residencia_i').AsInteger := 10;
    if qTRS.FieldByName('resihab').AsInteger = 9 then InsESIG_1AV.ParamByName('residencia_i').AsInteger := 11;
  end
  else InsESIG_1AV.ParamByName('residencia_i').Clear;

  // Habialta1 (ignorem els altres) --> Llar Alta  -------------------------------------------------------------------
  if qTRS.FieldByName('habialta1').Asstring <> '' then
  begin
    if qTRS.FieldByName('habialta1').AsInteger = 1 then InsESIG_1AV.ParamByName('llar_a').AsInteger := 1;
    if qTRS.FieldByName('habialta1').AsInteger = 2 then InsESIG_1AV.ParamByName('llar_a').AsInteger := 2;
    if qTRS.FieldByName('habialta1').AsInteger in[3,4,5,6,7,9] then InsESIG_1AV.ParamByName('llar_a').AsInteger := 3;
  end
  else InsESIG_1AV.ParamByName('llar_a').Clear;

  // Access + interior vivenda = accessibilitat ----------------------------------------------------------------------
  if (qTRS.FieldByName('access').Asstring <> '') and (qTRS.FieldByName('interior').asstring <> '') then
  begin
    if qTRS.FieldByName('access').AsInteger = 1 then
    begin
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger in[1,2,4,9] then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 1;
    end;
    if qTRS.FieldByName('ACCESS').AsInteger = 2 then
    begin
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger in[1,2,4,9] then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 2;
    end;
    if qTRS.FieldByName('ACCESS').AsInteger in[3,4] then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 3;
    if qTRS.FieldByName('ACCESS').AsInteger = 5 then
    begin
      if qTRS.FieldByName('interior').asinteger = 1 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 2;
      if qTRS.FieldByName('interior').asinteger = 2 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 1;
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger in[4,9] then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 4;
    end;
    if qTRS.FieldByName('access').AsInteger = 9 then
    begin
      if qTRS.FieldByName('interior').asinteger = 1 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 2;
      if qTRS.FieldByName('interior').asinteger = 2 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 1;
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger = 4 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 4;
      if qTRS.FieldByName('interior').asinteger = 9 then InsESIG_1AV.ParamByName('accessibilitat').AsInteger := 5;
    end;
  end
  else InsESIG_1AV.ParamByName('accessibilitat').Clear;

  // Situació laboral a l'ingrés ----------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('sitlaba1').asstring <> '' then
  begin
    // 1+4=2. altrament, l'1 mana.
    if qTRS.FieldByName('sitlaba1').asinteger = 1 then
    begin
      if (qTRS.FieldByName('sitlaba2').asstring = '4') or (qTRS.FieldByName('sitlaba3').asstring = '4') then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 2
      else InsESIG_1AV.ParamByName('laboral_i').AsInteger := 1;
    end;
    // 2 i 3 manen.
    if qTRS.FieldByName('sitlaba1').asinteger in[2,3] then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 3;
    // 1+4=2. altrament, el 4 mana.
    if qTRS.FieldByName('sitlaba1').asinteger = 4 then
    begin
      if (qTRS.FieldByName('sitlaba2').asstring = '1') or (qTRS.FieldByName('sitlaba3').asstring = '1') then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 2
      else InsESIG_1AV.ParamByName('laboral_i').AsInteger := 4;
    end;
    // 5, 6, 7, 8 i 10 ==> si no n'hi ha cap altre més informat passen a 5. altrament, manen 1, 2, 3, 4 i 9.
    if qTRS.FieldByName('sitlaba1').asinteger in[5,6,7,8,10] then
    begin
      if qTRS.FieldByName('sitlaba2').asstring <> '' then
      begin
        if qTRS.FieldByName('sitlaba2').asinteger = 1 then
        begin
           if qTRS.FieldByName('sitlaba3').asstring = '4' then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 2
           else InsESIG_1AV.ParamByName('laboral_i').AsInteger := 1;
        end;
        if qTRS.FieldByName('sitlaba2').asinteger in[2,3] then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 3;
        if qTRS.FieldByName('sitlaba2').asinteger = 4 then
        begin
           if qTRS.FieldByName('sitlaba3').asstring = '1' then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 2
           else InsESIG_1AV.ParamByName('laboral_i').AsInteger := 4;
        end;
        if qTRS.FieldByName('sitlaba2').asinteger in[5,6,7,8,10] then
        begin
           if qTRS.FieldByName('sitlaba3').asstring <> '' then
           begin
             if qTRS.FieldByName('sitlaba3').asinteger = 1 then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 1;
             if qTRS.FieldByName('sitlaba3').asinteger in[2,3] then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 3;
             if qTRS.FieldByName('sitlaba3').asinteger = 4 then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 4;
             if qTRS.FieldByName('sitlaba3').asinteger in[5,6,7,8,9,10] then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 5;
           end
           else InsESIG_1AV.ParamByName('laboral_i').AsInteger := 5;
        end;
        if qTRS.FieldByName('sitlaba2').asinteger = 9 then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 5;
      end
      else InsESIG_1AV.ParamByName('laboral_i').AsInteger := 5;
    end;
    // 9 mana.
    if qTRS.FieldByName('sitlaba1').asinteger = 9 then InsESIG_1AV.ParamByName('laboral_i').AsInteger := 5;
  end
  else InsESIG_1AV.ParamByName('laboral_i').Clear;

  // Laboral Qui / Laboral On -------------------------------------------------------------------------------------
  if qTRS.FieldByName('sitlabaon').asstring <> '' then
  begin
    if qTRS.FieldByName('sitlabaon').asinteger in[1,2,3,4,5] then
    begin
      InsESIG_1AV.ParamByName('laboralqui_i').AsInteger := qTRS.FieldByName('sitlabaon').asinteger;
    end;
    if qTRS.FieldByName('sitlabaon').asinteger = 6 then InsESIG_1AV.ParamByName('laboralon_i').AsInteger := 1;
    if qTRS.FieldByName('sitlabaon').asinteger = 7 then InsESIG_1AV.ParamByName('laboralon_i').AsInteger := 2;
    if qTRS.FieldByName('sitlabaon').asinteger = 9 then InsESIG_1AV.ParamByName('laboralon_i').AsInteger := 3;
  end
  else begin
      InsESIG_1AV.ParamByName('laboralon_i').Clear;
      InsESIG_1AV.ParamByName('laboralqui_i').Clear;
  end;

  // Situació laboral a l'alta ----------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('sitlabd1').asstring <> '' then
  begin
    // 1+4=2. altrament, l'1 mana.
    if qTRS.FieldByName('sitlabd1').asinteger = 1 then
    begin
      if (qTRS.FieldByName('sitlabd2').asstring = '4') or (qTRS.FieldByName('sitlabd3').asstring = '4') then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 2
      else InsESIG_1AV.ParamByName('laboral_a').AsInteger := 1;
    end;
    // 2 i 3 manen.
    if qTRS.FieldByName('sitlabd1').asinteger in[2,3] then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 3;
    // 1+4=2. altrament, el 4 mana.
    if qTRS.FieldByName('sitlabd1').asinteger = 4 then
    begin
      if (qTRS.FieldByName('sitlabd2').asstring = '1') or (qTRS.FieldByName('sitlabd3').asstring = '1') then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 2
      else InsESIG_1AV.ParamByName('laboral_a').AsInteger := 4;
    end;
    // 5, 6, 7, 8 i 10 ==> si no n'hi ha cap altre més informat passen a 5. altrament, manen 1, 2, 3, 4 i 9.
    if qTRS.FieldByName('sitlabd1').asinteger in[5,6,7,8,10] then
    begin
      if qTRS.FieldByName('sitlabd2').asstring <> '' then
      begin
        if qTRS.FieldByName('sitlabd2').asinteger = 1 then
        begin
           if qTRS.FieldByName('sitlabd3').asstring = '4' then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 2
           else InsESIG_1AV.ParamByName('laboral_a').AsInteger := 1;
        end;
        if qTRS.FieldByName('sitlabd2').asinteger in[2,3] then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 3;
        if qTRS.FieldByName('sitlabd2').asinteger = 4 then
        begin
           if qTRS.FieldByName('sitlabd3').asstring = '1' then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 2
           else InsESIG_1AV.ParamByName('laboral_a').AsInteger := 4;
        end;
        if qTRS.FieldByName('sitlabd2').asinteger in[5,6,7,8,10] then
        begin
           if qTRS.FieldByName('sitlabd3').asstring <> '' then
           begin
             if qTRS.FieldByName('sitlabd3').asinteger = 1 then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 1;
             if qTRS.FieldByName('sitlabd3').asinteger in[2,3] then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 3;
             if qTRS.FieldByName('sitlabd3').asinteger = 4 then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 4;
             if qTRS.FieldByName('sitlabd3').asinteger in[5,6,7,8,9,10] then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 5;
           end
           else InsESIG_1AV.ParamByName('laboral_a').AsInteger := 5;
        end;
        if qTRS.FieldByName('sitlabd2').asinteger = 9 then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 5;
      end
      else InsESIG_1AV.ParamByName('laboral_a').AsInteger := 5;
    end;
    // 9 mana.
    if qTRS.FieldByName('sitlabd1').asinteger = 9 then InsESIG_1AV.ParamByName('laboral_a').AsInteger := 5;
  end
  else InsESIG_1AV.ParamByName('laboral_a').Clear;

  // Laboral Qui / Laboral On -------------------------------------------------------------------------------------
  if qTRS.FieldByName('sitlabdon').asstring <> '' then
  begin
    if qTRS.FieldByName('sitlabdon').asinteger in[1,2,3,4,5] then
    begin
      InsESIG_1AV.ParamByName('laboralqui_a').AsInteger := qTRS.FieldByName('sitlabdon').asinteger;
    end;
    if qTRS.FieldByName('sitlabdon').asinteger = 6 then InsESIG_1AV.ParamByName('laboralon_a').AsInteger := 1;
    if qTRS.FieldByName('sitlabdon').asinteger = 7 then InsESIG_1AV.ParamByName('laboralon_a').AsInteger := 2;
    if qTRS.FieldByName('sitlabdon').asinteger = 9 then InsESIG_1AV.ParamByName('laboralon_a').AsInteger := 3;
  end
  else begin
      InsESIG_1AV.ParamByName('laboralon_a').Clear;
      InsESIG_1AV.ParamByName('laboralqui_a').Clear;
  end;

  // Pensió ----------------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('subsidi1').asstring <> '' then
  begin
    if qTRS.FieldByName('subsidi1').asstring = '0.1' then InsESIG_1AV.ParamByName('pensio').Asinteger := 1;
    if qTRS.FieldByName('subsidi1').asstring = '0.2' then InsESIG_1AV.ParamByName('pensio').Asinteger := 2;
    if qTRS.FieldByName('subsidi1').asstring = '0.3' then InsESIG_1AV.ParamByName('pensio').Asinteger := 3;
    if qTRS.FieldByName('subsidi1').asstring = '0.4' then InsESIG_1AV.ParamByName('pensio').Asinteger := 4;
    if qTRS.FieldByName('subsidi1').asstring = '2' then InsESIG_1AV.ParamByName('pensio').Asinteger := 5;
    if (qTRS.FieldByName('subsidi1').asstring = '1') or (qTRS.FieldByName('subsidi1').asstring = '7') then InsESIG_1AV.ParamByName('pensio').Asinteger := 7;

    if (qTRS.FieldByName('subsidi1').asstring = '3') or (qTRS.FieldByName('subsidi1').asstring = '4')
    or (qTRS.FieldByName('subsidi1').asstring = '5') or (qTRS.FieldByName('subsidi1').asstring = '6') then InsESIG_1AV.ParamByName('pensio').Asinteger := 6;

    if qTRS.FieldByName('subsidi1').asstring = '9' then InsESIG_1AV.ParamByName('pensio').Asinteger := 9;
    if qTRS.FieldByName('subsidi1').asstring = '10' then InsESIG_1AV.ParamByName('pensio').Asinteger := 8;
    if qTRS.FieldByName('subsidi1').asstring = '8' then
    begin
      if qTRS.FieldByName('subsidi2').asstring = '' then InsESIG_1AV.ParamByName('pensio').Asinteger := 9
      else begin
        if qTRS.FieldByName('subsidi2').asstring = '0.1' then InsESIG_1AV.ParamByName('pensio').Asinteger := 1;
        if qTRS.FieldByName('subsidi2').asstring = '0.2' then InsESIG_1AV.ParamByName('pensio').Asinteger := 2;
        if qTRS.FieldByName('subsidi2').asstring = '0.3' then InsESIG_1AV.ParamByName('pensio').Asinteger := 3;
        if qTRS.FieldByName('subsidi2').asstring = '0.4' then InsESIG_1AV.ParamByName('pensio').Asinteger := 4;
        if qTRS.FieldByName('subsidi2').asstring = '2' then InsESIG_1AV.ParamByName('pensio').Asinteger := 5;
        if (qTRS.FieldByName('subsidi2').asstring = '1') or (qTRS.FieldByName('subsidi2').asstring = '7') then InsESIG_1AV.ParamByName('pensio').Asinteger := 7;

        if (qTRS.FieldByName('subsidi2').asstring = '3') or (qTRS.FieldByName('subsidi2').asstring = '4')
        or (qTRS.FieldByName('subsidi2').asstring = '5') or (qTRS.FieldByName('subsidi2').asstring = '6') then InsESIG_1AV.ParamByName('pensio').Asinteger := 6;

        if qTRS.FieldByName('subsidi2').asstring = '9' then InsESIG_1AV.ParamByName('pensio').Asinteger := 9;
        if qTRS.FieldByName('subsidi2').asstring = '10' then InsESIG_1AV.ParamByName('pensio').Asinteger := 8;
        if qTRS.FieldByName('subsidi2').asstring = '8' then
        begin
          if qTRS.FieldByName('subsidi3').asstring = '' then InsESIG_1AV.ParamByName('pensio').Asinteger := 9
          else begin
            if qTRS.FieldByName('subsidi3').asstring = '0.1' then InsESIG_1AV.ParamByName('pensio').Asinteger := 1;
            if qTRS.FieldByName('subsidi3').asstring = '0.2' then InsESIG_1AV.ParamByName('pensio').Asinteger := 2;
            if qTRS.FieldByName('subsidi3').asstring = '0.3' then InsESIG_1AV.ParamByName('pensio').Asinteger := 3;
            if qTRS.FieldByName('subsidi3').asstring = '0.4' then InsESIG_1AV.ParamByName('pensio').Asinteger := 4;
            if qTRS.FieldByName('subsidi3').asstring = '2' then InsESIG_1AV.ParamByName('pensio').Asinteger := 5;

            if (qTRS.FieldByName('subsidi3').asstring = '1') or (qTRS.FieldByName('subsidi3').asstring = '7') then InsESIG_1AV.ParamByName('pensio').Asinteger := 7;

            if (qTRS.FieldByName('subsidi3').asstring = '3') or (qTRS.FieldByName('subsidi3').asstring = '4')
            or (qTRS.FieldByName('subsidi3').asstring = '5') or (qTRS.FieldByName('subsidi3').asstring = '6') then InsESIG_1AV.ParamByName('pensio').Asinteger := 6;

            if (qTRS.FieldByName('subsidi3').asstring = '8') or (qTRS.FieldByName('subsidi3').asstring = '9') then InsESIG_1AV.ParamByName('pensio').Asinteger := 9;
            if qTRS.FieldByName('subsidi3').asstring = '10' then InsESIG_1AV.ParamByName('pensio').Asinteger := 8;
          end;
        end;
      end;
    end;
  end
  else InsESIG_1AV.ParamByName('pensio').Clear;

  // Mobilitat -------------------------------------------------------------------------------------------------------
  if (qTRS.FieldByName('mobilitat1').asstring = '1')
  or (qTRS.FieldByName('mobilitat2').asstring = '1')
  or (qTRS.FieldByName('mobilitat3').asstring = '1')
  then InsESIG_1AV.ParamByName('mobilitat1').Asstring := 'S'
  else InsESIG_1AV.ParamByName('mobilitat1').Asstring := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '2')
  or (qTRS.FieldByName('mobilitat2').asstring = '2')
  or (qTRS.FieldByName('mobilitat3').asstring = '2')
  then InsESIG_1AV.ParamByName('mobilitat2').AsString := 'S'
  else InsESIG_1AV.ParamByName('mobilitat2').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '3')
  or (qTRS.FieldByName('mobilitat2').asstring = '3')
  or (qTRS.FieldByName('mobilitat3').asstring = '3')
  then InsESIG_1AV.ParamByName('mobilitat3').AsString := 'S'
  else InsESIG_1AV.ParamByName('mobilitat3').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '4')
  or (qTRS.FieldByName('mobilitat2').asstring = '4')
  or (qTRS.FieldByName('mobilitat3').asstring = '4')
  then InsESIG_1AV.ParamByName('mobilitat4').AsString := 'S'
  else InsESIG_1AV.ParamByName('mobilitat4').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '5')
  or (qTRS.FieldByName('mobilitat2').asstring = '5')
  or (qTRS.FieldByName('mobilitat3').asstring = '5')
  then InsESIG_1AV.ParamByName('mobilitat5').AsString := 'S'
  else InsESIG_1AV.ParamByName('mobilitat5').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '6')
  or (qTRS.FieldByName('mobilitat2').asstring = '6')
  or (qTRS.FieldByName('mobilitat3').asstring = '6')
  then InsESIG_1AV.ParamByName('mobilitat6').AsString := 'S'
  else InsESIG_1AV.ParamByName('mobilitat6').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '7')
  or (qTRS.FieldByName('mobilitat2').asstring = '7')
  or (qTRS.FieldByName('mobilitat3').asstring = '7')
  then InsESIG_1AV.ParamByName('mobilitat7').AsString := 'S'
  else InsESIG_1AV.ParamByName('mobilitat7').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '9')
  or (qTRS.FieldByName('mobilitat2').asstring = '9')
  or (qTRS.FieldByName('mobilitat3').asstring = '9')
  then InsESIG_1AV.ParamByName('mobilitat8').AsString := 'S'
  else InsESIG_1AV.ParamByName('mobilitat8').AsString := 'N';

{  if (qTRS.FieldByName('mobilitat1').isnull)
  and (qTRS.FieldByName('mobilitat2').isnull)
  and (qTRS.FieldByName('mobilitat3').isnull)
  then begin
      InsESIG_1AV.ParamByName('mobilitat1').clear;
      InsESIG_1AV.ParamByName('mobilitat2').clear;
      InsESIG_1AV.ParamByName('mobilitat3').clear;
      InsESIG_1AV.ParamByName('mobilitat4').clear;
      InsESIG_1AV.ParamByName('mobilitat5').clear;
      InsESIG_1AV.ParamByName('mobilitat6').clear;
      InsESIG_1AV.ParamByName('mobilitat7').clear;
      InsESIG_1AV.ParamByName('mobilitat8').clear;
  end;
}
  // Figura assistencial ---------------------------------------------------------------------------------------------
  if qTRS.FieldByName('figassist1').asstring <> '' then
  begin
    if qTRS.FieldByName('figassist1').asstring = '1.1' then InsESIG_1AV.ParamByName('figura').Asinteger := 1;
    if (qTRS.FieldByName('figassist1').asstring = '1.2') or (qTRS.FieldByName('figassist1').asstring = '1.3') then InsESIG_1AV.ParamByName('figura').Asinteger := 2;
    if (qTRS.FieldByName('figassist1').asstring = '1.4') or (qTRS.FieldByName('figassist1').asstring = '1.5') then InsESIG_1AV.ParamByName('figura').Asinteger := 3;
    if qTRS.FieldByName('figassist1').asstring = '9' then InsESIG_1AV.ParamByName('figura').Asinteger := 11;
    if qTRS.FieldByName('figassist1').asstring = '2' then
    begin
      InsESIG_1AV.ParamByName('figura').Asinteger := 4;
      if qTRS.FieldByName('figassist2').asstring <> '' then
      begin
        if qTRS.FieldByName('figassist2').asstring = '1.1' then InsESIG_1AV.ParamByName('dedicacio').Asinteger := 5;
        if (qTRS.FieldByName('figassist2').asstring = '1.2') or (qTRS.FieldByName('figassist2').asstring = '1.3') then InsESIG_1AV.ParamByName('figura').Asinteger := 6;
        if (qTRS.FieldByName('figassist2').asstring = '1.4') or (qTRS.FieldByName('figassist2').asstring = '1.5') then InsESIG_1AV.ParamByName('figura').Asinteger := 7;
      end;
    end;
  end
  else InsESIG_1AV.ParamByName('figura').Clear;

  // Dedicació -------------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('dedicacio').asstring <> '' then
  begin
    if qTRS.FieldByName('dedicacio').asstring = '1.1' then InsESIG_1AV.ParamByName('dedicacio').Asinteger := 1;
    if qTRS.FieldByName('dedicacio').asstring = '1.2' then InsESIG_1AV.ParamByName('dedicacio').Asinteger := 2;
    if qTRS.FieldByName('dedicacio').asstring = '1.3' then InsESIG_1AV.ParamByName('dedicacio').Asinteger := 3;
    if qTRS.FieldByName('dedicacio').asstring = '1.4' then InsESIG_1AV.ParamByName('dedicacio').Asinteger := 4;
    if qTRS.FieldByName('dedicacio').asstring = '1.5' then InsESIG_1AV.ParamByName('dedicacio').Asinteger := 5;
    if qTRS.FieldByName('dedicacio').asstring = '2'   then InsESIG_1AV.ParamByName('dedicacio').Asinteger := 6;
  end
  else InsESIG_1AV.ParamByName('dedicacio').Clear;

  // serveis  (NOU - LLEI DE DEPENDÈNCIA)  
  InsESIG_1AV.ParamByName('servei1').clear;
  InsESIG_1AV.ParamByName('servei2').clear;
  InsESIG_1AV.ParamByName('servei3').clear;
  InsESIG_1AV.ParamByName('servei4').clear;
  InsESIG_1AV.ParamByName('servei5').clear;
  InsESIG_1AV.ParamByName('servei6').clear;
  InsESIG_1AV.ParamByName('servei7').clear;
  InsESIG_1AV.ParamByName('servei8').clear;
  InsESIG_1AV.ParamByName('servei9').clear;
  InsESIG_1AV.ParamByName('servei10').clear;
  InsESIG_1AV.ParamByName('servei11').clear;

  InsESIG_1AV.ExecSQL;
  cont_insertats := cont_insertats + 1;
end;

procedure Twmain.FormCreate(Sender: TObject);
begin
  rbTots.Checked := False;
  rbTram.Checked := False;
  literal.Visible := False;
  lLlegits.Visible := False;
  eLlegits.Visible := False;
  ellegits.Text := '';
  lInsertats.Visible := False;
  eInsertats.Visible := False;
  eInsertats.Text := '';

  RECERCA.Close;
  if wData.ES_PROVA then RECERCA.AliasName := 'RECERCAPROVES'
                    else RECERCA.AliasName := 'RECERCA';
  RECERCA.Open;

  eDesde.AsString := FormatDateTime('01/01/1990',DateServer);
  eFins.AsString  := FormatDateTime('31/12/yyyy',DateServer-365);

  if wData.Es_prova then lGDB.Caption := 'PROVES '+wData.Gdb.AliasName+' '+wData.Gdb.Params.Text
                    else lGDB.Caption := 'REAL '+wData.Gdb.AliasName+' '+wData.Gdb.Params.Text;
  eOpcio.AsString := '0';
  eHC.AsString    := '0';
  eHC2.AsString   := '999999';
end;

procedure Twmain.sbEsigSegClick(Sender: TObject);
var
  VIPregs : integer;
begin
  lLlegits.Caption := 'Registres llegits de ESCALESTRS:';
  lInsertats.Caption := 'Registres insertats a ESCESIG_SEG:';
  cont_insertats := 0;

  InsESIG_SEG.Close;
  qTRS.Close;
  qTRS.ParamByName('c_escala').AsInteger := 30;
  if (eclaumin.text <> '') then qTRS.SQL[2] := 'and clau >='+eclaumin.text else qTRS.SQL[2] := '';
  if (eclaumax.text <> '') then qTRS.SQL[3] := 'and clau <='+eclaumax.text else qTRS.SQL[3] := '';
  qTRS.Open;

  while (not qTRS.Eof) do
  begin
     if qTRS.FieldByName('anulat').Asstring = 'N' then TraspasESIGSEG
     else TraspasESIGSEG_ANULAT;
     qTRS.Next;
  end;

  //----------------------------------------------------------------------------------------------
  // falta insertar a ESCESIG_SEG els que tenen dades al VIP però no tenen Seguiment a ESCALESTRS

  if rbtots.Checked then
  begin
    qVipB.Close;
    qVipB.Open;

    while (not qVIPB.eof) do
    begin
      VIPregs := GutSelect('select count(*) from ESCALESTRS where C_Escala = 30 AND c_historia = %d and c_tractament = %d',
                 [qVIPB.FieldByName('c_historia').AsInteger,qVIPB.FieldByName('c_tractament').AsInteger]);
      if (VIPregs = 0) then
      begin
          TraspasESIGSEG_VIP;
      end;
      qVIPb.Next;
    end;
  end;

  //----------------------------------------------------------------------------------------------

  literal.Visible := true;
  lLlegits.Visible := true;
  eLlegits.Visible := true;
  lInsertats.Visible := true;
  eInsertats.Visible := True;
  if rbtots.Checked then ellegits.Text := inttostr(qTRS.RecordCount+qVIPB.RecordCount)
  else ellegits.Text := inttostr(qTRS.RecordCount);
  eINsertats.Text := inttostr(cont_insertats);

  qTRS.Close;
  qVip.Close;
  qVIPb.Close;

  InsESIG_SEG.Close;

  sbEsig1av.Enabled := false;
  sbEsigSeg.Enabled := false;
  sbChart.Enabled := false;
  sbefa.Enabled := false;
  sbAsia.Enabled := false;
  sbBateria.Enabled := false;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;    

  rbTots.Checked := False;
  rbTram.Checked := False;
end;

procedure twmain.TraspasESIGSEG;
begin
  // Recuperem les dades del VIP
  qVip.Close;
  qVip.ParamByName('tractament').AsInteger := qTRS.FieldByName('c_tractament').AsInteger;
  qVip.ParamByName('historia').AsInteger := qTRS.fieldbyname('c_historia').asinteger;
  qVip.Open;

  InsESIG_SEG.ParamByName('id').asinteger := GutSelect('select max(id) from ESCESIG_SEG',[]) + 1;
  InsESIG_SEG.ParamByName('c_tractament').AsInteger := qTRS.FieldByName('c_tractament').AsInteger;
  InsESIG_SEG.ParamByName('c_historia').AsInteger := qTRS.FieldByName('c_historia').AsInteger;
  InsESIG_SEG.ParamByName('c_usuari').Asstring := qTRS.FieldByName('c_usuari').Asstring;
  InsESIG_SEG.ParamByName('data').AsDateTime := qTRS.FieldByName('data').AsDateTime;
  InsESIG_SEG.ParamByName('c_entrada').AsInteger := qTRS.FieldByName('c_entrada').AsInteger;
  InsESIG_SEG.ParamByName('anulat').Asstring := qTRS.FieldByName('anulat').Asstring;

  if qTRS.FieldByName('data_anulat').AsDateTime <> 0 then InsESIG_SEG.ParamByName('data_anulat').AsDateTime := qTRS.FieldByName('data_anulat').AsDateTime
  else InsESIG_SEG.ParamByName('data_anulat').Clear;

  if qTRS.FieldByName('c_validador').isnull then InsESIG_SEG.ParamByName('c_validador').clear
  else InsESIG_SEG.ParamByName('c_validador').Asstring := qTRS.FieldByName('c_validador').Asstring;

  if qTRS.FieldByName('data_validat').AsDateTime <> 0 then InsESIG_SEG.ParamByName('data_validat').AsDateTime := qTRS.FieldByName('data_validat').AsDateTime
  else InsESIG_SEG.ParamByName('data_validat').clear;

  // estudis  -------------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('estudis').AsString <> '' then
  begin
    if qTRS.FieldByName('estudis').AsInteger = 0 then InsESIG_SEG.ParamByName('estudis').AsInteger := 1;
    if qTRS.FieldByName('estudis').AsInteger = 1 then InsESIG_SEG.ParamByName('estudis').AsInteger := 2;
    if qTRS.FieldByName('estudis').AsInteger in[2,3,4] then InsESIG_SEG.ParamByName('estudis').AsInteger := 3;
    if qTRS.FieldByName('estudis').AsInteger in[5,6] then InsESIG_SEG.ParamByName('estudis').AsInteger := 4;
    if qTRS.FieldByName('estudis').AsInteger in[7,8] then InsESIG_SEG.ParamByName('estudis').AsInteger := 5;
    if qTRS.FieldByName('estudis').AsInteger = 9 then InsESIG_SEG.ParamByName('estudis').AsInteger := 6;
  end
  else InsESIG_SEG.ParamByName('estudis').Clear;

  // estudis canvis -------------------------------------------------------------------------------------------------
  if qvip.FieldByName('TREB_CANVIS_NIVELL_ESTUDIS').IsNull then InsESIG_SEG.ParamByName('estudis_c').clear
  else InsESIG_SEG.ParamByName('estudis_c').asstring := qvip.FieldByName('TREB_CANVIS_NIVELL_ESTUDIS').asstring;

  // estudis grau de satisfacció ------------------------------------------------------------------------------------

  // convingres1 (ignorem els altres) --> convivencia  --------------------------------------------------------------
  if qTRS.FieldByName('convingre1').Asstring <> '' then
  begin
    if qTRS.FieldByName('convingre1').AsInteger = 1 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 1;
    if qTRS.FieldByName('convingre1').AsInteger = 2 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 2;
    if qTRS.FieldByName('convingre1').AsInteger in[3,4,6] then InsESIG_SEG.ParamByName('convivencia').AsInteger := 4;
    if qTRS.FieldByName('convingre1').AsInteger in[5,10,11] then InsESIG_SEG.ParamByName('convivencia').AsInteger := 3;
    if qTRS.FieldByName('convingre1').AsInteger = 7 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 5;
    if qTRS.FieldByName('convingre1').AsInteger = 8 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 7;
    if qTRS.FieldByName('convingre1').AsInteger = 9 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 8;
  end
  else InsESIG_SEG.ParamByName('convivencia').Clear;

  // canvis en convivència des de l'alta/última revisió --------------------------------------------------------------
  if qvip.FieldByName('TREB_CANVIS_CONVI_ULT_REV').isnull then InsESIG_SEG.ParamByName('convivencia_c').Clear
  else InsESIG_SEG.ParamByName('convivencia_c').asstring := qvip.FieldByName('TREB_CANVIS_CONVI_ULT_REV').asstring;

  // Residencia habitual ---------------------------------------------------------------------------------------------
  if qTRS.FieldByName('resihab').Asstring <> '' then
  begin
    if qTRS.FieldByName('resihab').AsInteger = 1 then InsESIG_SEG.ParamByName('residencia').AsInteger := 1;
    if qTRS.FieldByName('resihab').AsInteger = 0 then InsESIG_SEG.ParamByName('residencia').AsInteger := 2;
    if qTRS.FieldByName('resihab').AsInteger = 2 then InsESIG_SEG.ParamByName('residencia').AsInteger := 9;
    if qTRS.FieldByName('resihab').AsInteger = 3 then InsESIG_SEG.ParamByName('residencia').AsInteger := 4;
    if qTRS.FieldByName('resihab').AsInteger = 4 then InsESIG_SEG.ParamByName('residencia').AsInteger := 5;
    if qTRS.FieldByName('resihab').AsInteger = 5 then InsESIG_SEG.ParamByName('residencia').AsInteger := 8;
    if qTRS.FieldByName('resihab').AsInteger = 6 then InsESIG_SEG.ParamByName('residencia').AsInteger := 6;
    if qTRS.FieldByName('resihab').AsInteger = 7 then InsESIG_SEG.ParamByName('residencia').AsInteger := 3;
    if qTRS.FieldByName('resihab').AsInteger = 8 then InsESIG_SEG.ParamByName('residencia').AsInteger := 10;
    if qTRS.FieldByName('resihab').AsInteger = 9 then InsESIG_SEG.ParamByName('residencia').AsInteger := 11;
  end
  else InsESIG_SEG.ParamByName('residencia').Clear;

  // Access + interior vivenda = accessibilitat ----------------------------------------------------------------------
  if (qTRS.FieldByName('access').Asstring <> '') and (qTRS.FieldByName('interior').asstring <> '') then
  begin
    if qTRS.FieldByName('access').AsInteger = 1 then
    begin
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger in[1,2,4,9] then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 1;
    end;
    if qTRS.FieldByName('ACCESS').AsInteger = 2 then
    begin
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger in[1,2,4,9] then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 2;
    end;
    if qTRS.FieldByName('ACCESS').AsInteger in[3,4] then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
    if qTRS.FieldByName('ACCESS').AsInteger = 5 then
    begin
      if qTRS.FieldByName('interior').asinteger = 1 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 2;
      if qTRS.FieldByName('interior').asinteger = 2 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 1;
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger in[4,9] then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 4;
    end;
    if qTRS.FieldByName('access').AsInteger = 9 then
    begin
      if qTRS.FieldByName('interior').asinteger = 1 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 2;
      if qTRS.FieldByName('interior').asinteger = 2 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 1;
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger = 4 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 4;
      if qTRS.FieldByName('interior').asinteger = 9 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 5;
    end;
  end
  else InsESIG_SEG.ParamByName('accessibilitat').Clear;

  // canvis en la residència habitual des de l'alta/última revisió --------------------------------------------------------------
  if qvip.FieldByName('TREB_CANVIS_HABIT_ULT_REV').isnull then InsESIG_SEG.ParamByName('llar_c').clear
  else InsESIG_SEG.ParamByName('llar_c').asstring := qvip.FieldByName('TREB_CANVIS_HABIT_ULT_REV').asstring;

  // grau de satisfacció amb l'habitatge actual des de l'alta/última revisió -------------------------------------------------
  if qvip.FieldByName('TREB_GRAU_SATIFACCIO_HABITATGE').IsNull then InsESIG_SEG.ParamByName('llar_s').clear
  else InsESIG_SEG.ParamByName('llar_s').asinteger := qvip.FieldByName('TREB_GRAU_SATIFACCIO_HABITATGE').asinteger;

  // noTreballa  i tipustreball   ---------------------------------------------------------------------------------------------
  if qvip.FieldByName('TREB_TREBALLA_TIPUS_TREBALL').asstring = '' then
  begin
      InsESIG_SEG.ParamByName('tipustreball').Clear;
      if qvip.FieldByName('TREB_NO_PERQUE').isnull then InsESIG_SEG.ParamByName('notreballa').clear
      else begin
        if qvip.FieldByName('TREB_NO_PERQUE').asinteger = 0 then InsESIG_SEG.ParamByName('notreballa').asinteger := 2;
        if qvip.FieldByName('TREB_NO_PERQUE').asinteger = 1 then InsESIG_SEG.ParamByName('notreballa').asinteger := 3;
        if qvip.FieldByName('TREB_NO_PERQUE').asinteger = 2 then InsESIG_SEG.ParamByName('notreballa').asinteger := 4;
        if qvip.FieldByName('TREB_NO_PERQUE').asinteger = 3 then InsESIG_SEG.ParamByName('notreballa').asinteger := 6;
        if qvip.FieldByName('TREB_NO_PERQUE').asinteger = 4 then InsESIG_SEG.ParamByName('notreballa').asinteger := 5;
        if qvip.FieldByName('TREB_NO_PERQUE').asinteger = 5 then InsESIG_SEG.ParamByName('notreballa').asinteger := 6;
      end;
  end
  else begin
      InsESIG_SEG.ParamByName('tipustreball').asstring := qvip.FieldByName('TREB_TREBALLA_TIPUS_TREBALL').asstring;
      InsESIG_SEG.ParamByName('notreballa').clear;
  end;

  // assegurat
  if qvip.FieldByName('TREB_ESTA_ASEGURAT').isnull then InsESIG_SEG.ParamByName('assegurat').clear
  else InsESIG_SEG.ParamByName('assegurat').asstring := qvip.FieldByName('TREB_ESTA_ASEGURAT').asstring;

  // laboralqui, laboralon
  if qTRS.FieldByName('sitlabaon').asstring <> '' then
  begin
    if qTRS.FieldByName('sitlabaon').asinteger in[1,2,3,4,5] then
    begin
      InsESIG_SEG.ParamByName('laboralqui').AsInteger := qTRS.FieldByName('sitlabaon').asinteger;
    end;
    if qTRS.FieldByName('sitlabaon').asinteger = 6 then InsESIG_SEG.ParamByName('laboralon').AsInteger := 1;
    if qTRS.FieldByName('sitlabaon').asinteger = 7 then InsESIG_SEG.ParamByName('laboralon').AsInteger := 2;
    if qTRS.FieldByName('sitlabaon').asinteger = 9 then InsESIG_SEG.ParamByName('laboralon').AsInteger := 3;
  end
  else begin
      InsESIG_SEG.ParamByName('laboralon').Clear;
      InsESIG_SEG.ParamByName('laboralqui').Clear;
  end;

  // canvis situació laboral des de l'alta/última revisió   ------------------------------------------------------------
  if qvip.FieldByName('TREB_CANVIS_TREBALL_ULT_REV').isnull then InsESIG_SEG.ParamByName('laboral_c').clear
  else InsESIG_SEG.ParamByName('laboral_c').asstring := qvip.FieldByName('TREB_CANVIS_TREBALL_ULT_REV').asstring;

  // grau de satisfacció amb la feina actual des de l'alta/última revisió -------------------------------------------
  if qvip.FieldByName('TREB_GRAU_SATIFACCIO_LABORAL').IsNull then InsESIG_SEG.ParamByName('laboral_s').clear
  else InsESIG_SEG.ParamByName('laboral_s').asinteger := qvip.FieldByName('TREB_GRAU_SATIFACCIO_LABORAL').asinteger;

  // Pensió ----------------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('subsidi1').asstring <> '' then
  begin
    if qTRS.FieldByName('subsidi1').asstring = '0.1' then InsESIG_SEG.ParamByName('pensio').Asinteger := 1;
    if qTRS.FieldByName('subsidi1').asstring = '0.2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 2;
    if qTRS.FieldByName('subsidi1').asstring = '0.3' then InsESIG_SEG.ParamByName('pensio').Asinteger := 3;
    if qTRS.FieldByName('subsidi1').asstring = '0.4' then InsESIG_SEG.ParamByName('pensio').Asinteger := 4;
    if qTRS.FieldByName('subsidi1').asstring = '2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 5;
    if (qTRS.FieldByName('subsidi1').asstring = '1') or (qTRS.FieldByName('subsidi1').asstring = '7') then InsESIG_SEG.ParamByName('pensio').Asinteger := 7;

    if (qTRS.FieldByName('subsidi1').asstring = '3') or (qTRS.FieldByName('subsidi1').asstring = '4')
    or (qTRS.FieldByName('subsidi1').asstring = '5') or (qTRS.FieldByName('subsidi1').asstring = '6') then InsESIG_SEG.ParamByName('pensio').Asinteger := 6;

    if qTRS.FieldByName('subsidi1').asstring = '9' then InsESIG_SEG.ParamByName('pensio').Asinteger := 9;
    if qTRS.FieldByName('subsidi1').asstring = '10' then InsESIG_SEG.ParamByName('pensio').Asinteger := 8;
    if qTRS.FieldByName('subsidi1').asstring = '8' then
    begin
      if qTRS.FieldByName('subsidi2').asstring = '' then InsESIG_SEG.ParamByName('pensio').Asinteger := 9
      else begin
        if qTRS.FieldByName('subsidi2').asstring = '0.1' then InsESIG_SEG.ParamByName('pensio').Asinteger := 1;
        if qTRS.FieldByName('subsidi2').asstring = '0.2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 2;
        if qTRS.FieldByName('subsidi2').asstring = '0.3' then InsESIG_SEG.ParamByName('pensio').Asinteger := 3;
        if qTRS.FieldByName('subsidi2').asstring = '0.4' then InsESIG_SEG.ParamByName('pensio').Asinteger := 4;
        if qTRS.FieldByName('subsidi2').asstring = '2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 5;
        if (qTRS.FieldByName('subsidi2').asstring = '1') or (qTRS.FieldByName('subsidi2').asstring = '7') then InsESIG_SEG.ParamByName('pensio').Asinteger := 7;

        if (qTRS.FieldByName('subsidi2').asstring = '3') or (qTRS.FieldByName('subsidi2').asstring = '4')
        or (qTRS.FieldByName('subsidi2').asstring = '5') or (qTRS.FieldByName('subsidi2').asstring = '6') then InsESIG_SEG.ParamByName('pensio').Asinteger := 6;

        if qTRS.FieldByName('subsidi2').asstring = '9' then InsESIG_SEG.ParamByName('pensio').Asinteger := 9;
        if qTRS.FieldByName('subsidi2').asstring = '10' then InsESIG_SEG.ParamByName('pensio').Asinteger := 8;
        if qTRS.FieldByName('subsidi2').asstring = '8' then
        begin
          if qTRS.FieldByName('subsidi3').asstring = '' then InsESIG_SEG.ParamByName('pensio').Asinteger := 9
          else begin
            if qTRS.FieldByName('subsidi3').asstring = '0.1' then InsESIG_SEG.ParamByName('pensio').Asinteger := 1;
            if qTRS.FieldByName('subsidi3').asstring = '0.2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 2;
            if qTRS.FieldByName('subsidi3').asstring = '0.3' then InsESIG_SEG.ParamByName('pensio').Asinteger := 3;
            if qTRS.FieldByName('subsidi3').asstring = '0.4' then InsESIG_SEG.ParamByName('pensio').Asinteger := 4;
            if qTRS.FieldByName('subsidi3').asstring = '2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 5;

            if (qTRS.FieldByName('subsidi3').asstring = '1') or (qTRS.FieldByName('subsidi3').asstring = '7') then InsESIG_SEG.ParamByName('pensio').Asinteger := 7;

            if (qTRS.FieldByName('subsidi3').asstring = '3') or (qTRS.FieldByName('subsidi3').asstring = '4')
            or (qTRS.FieldByName('subsidi3').asstring = '5') or (qTRS.FieldByName('subsidi3').asstring = '6') then InsESIG_SEG.ParamByName('pensio').Asinteger := 6;

            if (qTRS.FieldByName('subsidi3').asstring = '8') or (qTRS.FieldByName('subsidi3').asstring = '9') then InsESIG_SEG.ParamByName('pensio').Asinteger := 9;
            if qTRS.FieldByName('subsidi3').asstring = '10' then InsESIG_SEG.ParamByName('pensio').Asinteger := 8;
          end;
        end;
      end;
    end;
  end
  else InsESIG_SEG.ParamByName('pensio').Clear;

  // canvis en la pensíó des de l'alta / última revisió   ------------------------------------------------------------
  if qvip.FieldByName('TREB_CANVIS_PENSIO_ULT_REV').isnull then InsESIG_SEG.ParamByName('pensio_c').clear
  else InsESIG_SEG.ParamByName('pensio_c').asstring := qvip.FieldByName('TREB_CANVIS_PENSIO_ULT_REV').asstring;

  // grau de satisfacció amb la pensió actual des de l'alta/última revisió -------------------------------------------
  if qvip.FieldByName('TREB_GRAU_SATIFACCIO_PENSIO').IsNull then InsESIG_SEG.ParamByName('pensio_s').clear
  else InsESIG_SEG.ParamByName('pensio_s').asinteger := qvip.FieldByName('TREB_GRAU_SATIFACCIO_PENSIO').asinteger;

  // Mobilitat -------------------------------------------------------------------------------------------------------
  if (qTRS.FieldByName('mobilitat1').asstring = '1')
  or (qTRS.FieldByName('mobilitat2').asstring = '1')
  or (qTRS.FieldByName('mobilitat3').asstring = '1')
  then InsESIG_SEG.ParamByName('mobilitat1').Asstring := 'S'
  else InsESIG_SEG.ParamByName('mobilitat1').Asstring := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '2')
  or (qTRS.FieldByName('mobilitat2').asstring = '2')
  or (qTRS.FieldByName('mobilitat3').asstring = '2')
  then InsESIG_SEG.ParamByName('mobilitat2').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat2').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '3')
  or (qTRS.FieldByName('mobilitat2').asstring = '3')
  or (qTRS.FieldByName('mobilitat3').asstring = '3')
  then InsESIG_SEG.ParamByName('mobilitat3').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat3').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '4')
  or (qTRS.FieldByName('mobilitat2').asstring = '4')
  or (qTRS.FieldByName('mobilitat3').asstring = '4')
  then InsESIG_SEG.ParamByName('mobilitat4').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat4').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '5')
  or (qTRS.FieldByName('mobilitat2').asstring = '5')
  or (qTRS.FieldByName('mobilitat3').asstring = '5')
  then InsESIG_SEG.ParamByName('mobilitat5').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat5').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '6')
  or (qTRS.FieldByName('mobilitat2').asstring = '6')
  or (qTRS.FieldByName('mobilitat3').asstring = '6')
  then InsESIG_SEG.ParamByName('mobilitat6').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat6').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '7')
  or (qTRS.FieldByName('mobilitat2').asstring = '7')
  or (qTRS.FieldByName('mobilitat3').asstring = '7')
  then InsESIG_SEG.ParamByName('mobilitat7').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat7').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '9')
  or (qTRS.FieldByName('mobilitat2').asstring = '9')
  or (qTRS.FieldByName('mobilitat3').asstring = '9')
  then InsESIG_SEG.ParamByName('mobilitat8').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat8').AsString := 'N';

{  if (qTRS.FieldByName('mobilitat1').isnull)
  and (qTRS.FieldByName('mobilitat2').isnull)
  and (qTRS.FieldByName('mobilitat3').isnull)
  then begin
      InsESIG_SEG.ParamByName('mobilitat1').clear;
      InsESIG_SEG.ParamByName('mobilitat2').clear;
      InsESIG_SEG.ParamByName('mobilitat3').clear;
      InsESIG_SEG.ParamByName('mobilitat4').clear;
      InsESIG_SEG.ParamByName('mobilitat5').clear;
      InsESIG_SEG.ParamByName('mobilitat6').clear;
      InsESIG_SEG.ParamByName('mobilitat7').clear;
      InsESIG_SEG.ParamByName('mobilitat8').clear;
  end;
}
  // canvis en la mobilitat des de l'alta / última revisió  ------------------------------------------------------------
  if qvip.FieldByName('TREB_CANVIS_MOB_ENTORN_ULT_REV').isnull then InsESIG_SEG.ParamByName('mobilitat_c').clear
  else InsESIG_SEG.ParamByName('mobilitat_c').asstring := qvip.FieldByName('TREB_CANVIS_MOB_ENTORN_ULT_REV').asstring;

  // grau de satisfacció amb la mobilitat actual des de l'alta/última revisió -------------------------------------------
  if qvip.FieldByName('TREB_GRAU_SATIF_MOB_ENTORN').IsNull then InsESIG_SEG.ParamByName('mobilitat_s').clear
  else InsESIG_SEG.ParamByName('mobilitat_s').asinteger := qvip.FieldByName('TREB_GRAU_SATIF_MOB_ENTORN').asinteger;

  // activitats  -----------------------------------------------------------------------------------------------------
  {0: no la realitza
   1: la realitza al domicili
   2: la realitza fora del domicili
   3: sí la realitza però no especifiquem on (antics)}

   InsESIG_SEG.ParamByName('activitats1').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats2').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats3').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats4').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats5').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats6').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats7').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats8').AsInteger := 0;

   // si hi ha activitats però cap té valor 11 ó 12, posarem un 3 a les que sí estiguin triades.
   if (qTRS.FieldByName('activitats1').asstring = '1')
   or (qTRS.FieldByName('activitats2').asstring = '1')
   or (qTRS.FieldByName('activitats3').asstring = '1')
   then InsESIG_SEG.ParamByName('activitats1').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '2')
   or (qTRS.FieldByName('activitats2').asstring = '2')
   or (qTRS.FieldByName('activitats3').asstring = '2')
   then InsESIG_SEG.ParamByName('activitats2').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '3')
   or (qTRS.FieldByName('activitats2').asstring = '3')
   or (qTRS.FieldByName('activitats3').asstring = '3')
   then InsESIG_SEG.ParamByName('activitats3').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '4')
   or (qTRS.FieldByName('activitats2').asstring = '4')
   or (qTRS.FieldByName('activitats3').asstring = '4')
   then InsESIG_SEG.ParamByName('activitats4').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '5')
   or (qTRS.FieldByName('activitats2').asstring = '5')
   or (qTRS.FieldByName('activitats3').asstring = '5')
   then InsESIG_SEG.ParamByName('activitats7').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '6')
   or (qTRS.FieldByName('activitats2').asstring = '6')
   or (qTRS.FieldByName('activitats3').asstring = '6')
   then InsESIG_SEG.ParamByName('activitats5').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '7')
   or (qTRS.FieldByName('activitats2').asstring = '7')
   or (qTRS.FieldByName('activitats3').asstring = '7')
   then InsESIG_SEG.ParamByName('activitats8').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '8')
   or (qTRS.FieldByName('activitats2').asstring = '8')
   or (qTRS.FieldByName('activitats3').asstring = '8')
   then InsESIG_SEG.ParamByName('activitats6').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '9')
   or (qTRS.FieldByName('activitats2').asstring = '9')
   or (qTRS.FieldByName('activitats3').asstring = '9')
   then InsESIG_SEG.ParamByName('activitats8').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '10')
   or (qTRS.FieldByName('activitats2').asstring = '10')
   or (qTRS.FieldByName('activitats3').asstring = '10')
   then InsESIG_SEG.ParamByName('activitats4').AsInteger := 3;

   if (not qTRS.FieldByName('activitats1').IsNull) and (not qTRS.FieldByName('activitats2').IsNull) then
   begin
     // convinacions de 1 i 2
     if qTRS.FieldByName('activitats1').AsInteger = 11 then
     begin
       if qTRS.FieldByName('activitats2').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
     end;
     if qTRS.FieldByName('activitats1').AsInteger = 12 then
     begin
       if qTRS.FieldByName('activitats2').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
     end;
     if qTRS.FieldByName('activitats2').AsInteger = 11 then
     begin
       if qTRS.FieldByName('activitats1').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
     end;
     if qTRS.FieldByName('activitats2').AsInteger = 12 then
     begin
       if qTRS.FieldByName('activitats1').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
     end;
     if not qTRS.FieldByName('activitats3').IsNull then
     begin
       // convinacions de 3 i 1
       if qTRS.FieldByName('activitats1').AsInteger = 11 then
       begin
         if qTRS.FieldByName('activitats3').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
       end;
       if qTRS.FieldByName('activitats1').AsInteger = 12 then
       begin
         if qTRS.FieldByName('activitats3').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
       end;
       if qTRS.FieldByName('activitats3').AsInteger = 11 then
       begin
         if qTRS.FieldByName('activitats1').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
       end;
       if qTRS.FieldByName('activitats3').AsInteger = 12 then
       begin
         if qTRS.FieldByName('activitats1').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
       end;
      // convinacions de 3 i 2
       if qTRS.FieldByName('activitats2').AsInteger = 11 then
       begin
         if qTRS.FieldByName('activitats3').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
       end;
       if qTRS.FieldByName('activitats2').AsInteger = 12 then
       begin
         if qTRS.FieldByName('activitats3').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
       end;
       if qTRS.FieldByName('activitats3').AsInteger = 11 then
       begin
         if qTRS.FieldByName('activitats2').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
       end;
       if qTRS.FieldByName('activitats3').AsInteger = 12 then
       begin
         if qTRS.FieldByName('activitats2').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
       end;
     end;
   end;

  // freqüència  --------------------------------------------------------------------------------------------------------
  if qvip.FieldByName('TREB_3_5DIES_SETMANA').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 1
  else if qvip.FieldByName('TREB_2DIES_SETMANA').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 2
       else if qvip.FieldByName('TREB_1DIA_SETMANA').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 3
            else if qvip.FieldByName('TREB_1DIA_MES').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 4
                 else if qvip.FieldByName('TREB_ESPORADICAMENT').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 5
                      else if qvip.FieldByName('TREB_ALTRA_FREQUENCIA').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 6
                           else InsESIG_SEG.ParamByName('frequencia').clear;

  // durada  --------------------------------------------------------------------------------------------------------------
  if qvip.FieldByName('TREB_MES_3HORES_DIA').asstring <> '' then InsESIG_SEG.ParamByName('durada').asinteger := 1
  else if qvip.FieldByName('TREB_1A3HORES_DIA').asstring <> '' then InsESIG_SEG.ParamByName('durada').asinteger := 2
       else if qvip.FieldByName('TREB_MENYS_1HORA_DIA').asstring <> '' then InsESIG_SEG.ParamByName('durada').asinteger := 3
            else InsESIG_SEG.ParamByName('durada').clear;

  // canvis en les activitats des de l'alta / última revisió ------------------------------------------------------------
  if qvip.FieldByName('TREB_CANVIS_ALTRES_ACT_ULT_REV').isnull then InsESIG_SEG.ParamByName('activitats_c').clear
  else InsESIG_SEG.ParamByName('activitats_c').asstring := qvip.FieldByName('TREB_CANVIS_ALTRES_ACT_ULT_REV').asstring;

  // grau de satisfacció amb les activitats q desenvolupa ------------------------------------------------------------
  if qvip.FieldByName('TREB_GRAU_SATIF_ALTRES_ACT').IsNull then InsESIG_SEG.ParamByName('activitats_s').clear
  else InsESIG_SEG.ParamByName('activitats_s').asinteger := qvip.FieldByName('TREB_GRAU_SATIF_ALTRES_ACT').asinteger;

  // Figura assistencial ---------------------------------------------------------------------------------------------
  if qTRS.FieldByName('figassist1').asstring <> '' then
  begin
    if qTRS.FieldByName('figassist1').asstring = '1.1' then InsESIG_SEG.ParamByName('figura').Asinteger := 1;
    if (qTRS.FieldByName('figassist1').asstring = '1.2') or (qTRS.FieldByName('figassist1').asstring = '1.3') then InsESIG_SEG.ParamByName('figura').Asinteger := 2;
    if (qTRS.FieldByName('figassist1').asstring = '1.4') or (qTRS.FieldByName('figassist1').asstring = '1.5') then InsESIG_SEG.ParamByName('figura').Asinteger := 3;
    if qTRS.FieldByName('figassist1').asstring = '9' then InsESIG_SEG.ParamByName('figura').Asinteger := 11;
    if qTRS.FieldByName('figassist1').asstring = '2' then
    begin
      InsESIG_SEG.ParamByName('figura').Asinteger := 4;
      if qTRS.FieldByName('figassist2').asstring <> '' then
      begin
        if qTRS.FieldByName('figassist2').asstring = '1.1' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 5;
        if (qTRS.FieldByName('figassist2').asstring = '1.2') or (qTRS.FieldByName('figassist2').asstring = '1.3') then InsESIG_SEG.ParamByName('figura').Asinteger := 6;
        if (qTRS.FieldByName('figassist2').asstring = '1.4') or (qTRS.FieldByName('figassist2').asstring = '1.5') then InsESIG_SEG.ParamByName('figura').Asinteger := 7;
      end;
    end;
  end
  else InsESIG_SEG.ParamByName('figura').Clear;

  // Dedicació -------------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('dedicacio').asstring <> '' then
  begin
    if qTRS.FieldByName('dedicacio').asstring = '1.1' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 1;
    if qTRS.FieldByName('dedicacio').asstring = '1.2' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 2;
    if qTRS.FieldByName('dedicacio').asstring = '1.3' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 3;
    if qTRS.FieldByName('dedicacio').asstring = '1.4' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 4;
    if qTRS.FieldByName('dedicacio').asstring = '1.5' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 5;
    if qTRS.FieldByName('dedicacio').asstring = '2'   then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 6;
  end
  else InsESIG_SEG.ParamByName('dedicacio').Clear;

  // Ajuda AVD canvis des de l'alta / última revisió ------------------------------------------------------------
  if qvip.FieldByName('TREB_CANVIS_SUP_AVD_ULT_REV').isnull then InsESIG_SEG.ParamByName('ajudaavd_c').clear
  else InsESIG_SEG.ParamByName('ajudaavd_c').asstring := qvip.FieldByName('TREB_CANVIS_SUP_AVD_ULT_REV').asstring;

  // grau de satisfacció amb les activitats q desenvolupa ------------------------------------------------------------
  if qvip.FieldByName('TREB_GRAU_SATIF_AVD').IsNull then InsESIG_SEG.ParamByName('ajudaavd_s').clear
  else InsESIG_SEG.ParamByName('ajudaavd_s').asinteger := qvip.FieldByName('TREB_GRAU_SATIF_AVD').asinteger;

  // serveis  (NOU - LLEI DE DEPENDÈNCIA)
  InsESIG_SEG.ParamByName('servei1').clear;
  InsESIG_SEG.ParamByName('servei2').clear;
  InsESIG_SEG.ParamByName('servei3').clear;
  InsESIG_SEG.ParamByName('servei4').clear;
  InsESIG_SEG.ParamByName('servei5').clear;
  InsESIG_SEG.ParamByName('servei6').clear;
  InsESIG_SEG.ParamByName('servei7').clear;
  InsESIG_SEG.ParamByName('servei8').clear;
  InsESIG_SEG.ParamByName('servei9').clear;
  InsESIG_SEG.ParamByName('servei10').clear;
  InsESIG_SEG.ParamByName('servei11').clear;
  InsESIG_SEG.ParamByName('servei_c').clear;
  InsESIG_SEG.ParamByName('servei_s').Clear;

  InsESIG_SEG.ExecSQL;
  cont_insertats := cont_insertats + 1;
end;
procedure twmain.TraspasESIGSEG_ANULAT;
begin
  // No recuperem les dades del VIP per a entrades anul·lades.

  InsESIG_SEG.ParamByName('id').asinteger := GutSelect('select max(id) from ESCESIG_SEG',[]) + 1;
  InsESIG_SEG.ParamByName('c_tractament').AsInteger := qTRS.FieldByName('c_tractament').AsInteger;
  InsESIG_SEG.ParamByName('c_historia').AsInteger := qTRS.FieldByName('c_historia').AsInteger;
  InsESIG_SEG.ParamByName('c_usuari').Asstring := qTRS.FieldByName('c_usuari').Asstring;
  InsESIG_SEG.ParamByName('data').AsDateTime := qTRS.FieldByName('data').AsDateTime;
  InsESIG_SEG.ParamByName('c_entrada').AsInteger := qTRS.FieldByName('c_entrada').AsInteger;
  InsESIG_SEG.ParamByName('anulat').Asstring := qTRS.FieldByName('anulat').Asstring;

  if qTRS.FieldByName('data_anulat').AsDateTime <> 0 then InsESIG_SEG.ParamByName('data_anulat').AsDateTime := qTRS.FieldByName('data_anulat').AsDateTime
  else InsESIG_SEG.ParamByName('data_anulat').Clear;

  if qTRS.FieldByName('c_validador').isnull then InsESIG_SEG.ParamByName('c_validador').clear
  else InsESIG_SEG.ParamByName('c_validador').Asstring := qTRS.FieldByName('c_validador').Asstring;

  if qTRS.FieldByName('data_validat').AsDateTime <> 0 then InsESIG_SEG.ParamByName('data_validat').AsDateTime := qTRS.FieldByName('data_validat').AsDateTime
  else InsESIG_SEG.ParamByName('data_validat').clear;

  // estudis  -------------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('estudis').AsString <> '' then
  begin
    if qTRS.FieldByName('estudis').AsInteger = 0 then InsESIG_SEG.ParamByName('estudis').AsInteger := 1;
    if qTRS.FieldByName('estudis').AsInteger = 1 then InsESIG_SEG.ParamByName('estudis').AsInteger := 2;
    if qTRS.FieldByName('estudis').AsInteger in[2,3,4] then InsESIG_SEG.ParamByName('estudis').AsInteger := 3;
    if qTRS.FieldByName('estudis').AsInteger in[5,6] then InsESIG_SEG.ParamByName('estudis').AsInteger := 4;
    if qTRS.FieldByName('estudis').AsInteger in[7,8] then InsESIG_SEG.ParamByName('estudis').AsInteger := 5;
    if qTRS.FieldByName('estudis').AsInteger = 9 then InsESIG_SEG.ParamByName('estudis').AsInteger := 6;
  end
  else InsESIG_SEG.ParamByName('estudis').Clear;

  // estudis canvis -------------------------------------------------------------------------------------------------
  InsESIG_SEG.ParamByName('estudis_c').clear;

  // estudis grau de satisfacció ------------------------------------------------------------------------------------

  // convingres1 (ignorem els altres) --> convivencia  --------------------------------------------------------------
  if qTRS.FieldByName('convingre1').Asstring <> '' then
  begin
    if qTRS.FieldByName('convingre1').AsInteger = 1 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 1;
    if qTRS.FieldByName('convingre1').AsInteger = 2 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 2;
    if qTRS.FieldByName('convingre1').AsInteger in[3,4,6] then InsESIG_SEG.ParamByName('convivencia').AsInteger := 4;
    if qTRS.FieldByName('convingre1').AsInteger in[5,10,11] then InsESIG_SEG.ParamByName('convivencia').AsInteger := 3;
    if qTRS.FieldByName('convingre1').AsInteger = 7 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 5;
    if qTRS.FieldByName('convingre1').AsInteger = 8 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 7;
    if qTRS.FieldByName('convingre1').AsInteger = 9 then InsESIG_SEG.ParamByName('convivencia').AsInteger := 8;
  end
  else InsESIG_SEG.ParamByName('convivencia').Clear;

  // canvis en convivència des de l'alta/última revisió --------------------------------------------------------------
  InsESIG_SEG.ParamByName('convivencia_c').Clear;

  // Residencia habitual ---------------------------------------------------------------------------------------------
  if qTRS.FieldByName('resihab').Asstring <> '' then
  begin
    if qTRS.FieldByName('resihab').AsInteger = 1 then InsESIG_SEG.ParamByName('residencia').AsInteger := 1;
    if qTRS.FieldByName('resihab').AsInteger = 0 then InsESIG_SEG.ParamByName('residencia').AsInteger := 2;
    if qTRS.FieldByName('resihab').AsInteger = 2 then InsESIG_SEG.ParamByName('residencia').AsInteger := 9;
    if qTRS.FieldByName('resihab').AsInteger = 3 then InsESIG_SEG.ParamByName('residencia').AsInteger := 4;
    if qTRS.FieldByName('resihab').AsInteger = 4 then InsESIG_SEG.ParamByName('residencia').AsInteger := 5;
    if qTRS.FieldByName('resihab').AsInteger = 5 then InsESIG_SEG.ParamByName('residencia').AsInteger := 8;
    if qTRS.FieldByName('resihab').AsInteger = 6 then InsESIG_SEG.ParamByName('residencia').AsInteger := 6;
    if qTRS.FieldByName('resihab').AsInteger = 7 then InsESIG_SEG.ParamByName('residencia').AsInteger := 3;
    if qTRS.FieldByName('resihab').AsInteger = 8 then InsESIG_SEG.ParamByName('residencia').AsInteger := 10;
    if qTRS.FieldByName('resihab').AsInteger = 9 then InsESIG_SEG.ParamByName('residencia').AsInteger := 11;
  end
  else InsESIG_SEG.ParamByName('residencia').Clear;

  // Access + interior vivenda = accessibilitat ----------------------------------------------------------------------
  if (qTRS.FieldByName('access').Asstring <> '') and (qTRS.FieldByName('interior').asstring <> '') then
  begin
    if qTRS.FieldByName('access').AsInteger = 1 then
    begin
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger in[1,2,4,9] then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 1;
    end;
    if qTRS.FieldByName('ACCESS').AsInteger = 2 then
    begin
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger in[1,2,4,9] then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 2;
    end;
    if qTRS.FieldByName('ACCESS').AsInteger in[3,4] then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
    if qTRS.FieldByName('ACCESS').AsInteger = 5 then
    begin
      if qTRS.FieldByName('interior').asinteger = 1 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 2;
      if qTRS.FieldByName('interior').asinteger = 2 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 1;
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger in[4,9] then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 4;
    end;
    if qTRS.FieldByName('access').AsInteger = 9 then
    begin
      if qTRS.FieldByName('interior').asinteger = 1 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 2;
      if qTRS.FieldByName('interior').asinteger = 2 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 1;
      if qTRS.FieldByName('interior').asinteger = 3 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 3;
      if qTRS.FieldByName('interior').asinteger = 4 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 4;
      if qTRS.FieldByName('interior').asinteger = 9 then InsESIG_SEG.ParamByName('accessibilitat').AsInteger := 5;
    end;
  end
  else InsESIG_SEG.ParamByName('accessibilitat').Clear;

  // canvis en la residència habitual des de l'alta/última revisió --------------------------------------------------------------
  InsESIG_SEG.ParamByName('llar_c').clear;

  // grau de satisfacció amb l'habitatge actual des de l'alta/última revisió -------------------------------------------------
  InsESIG_SEG.ParamByName('llar_s').clear;

  // noTreballa  i tipustreball   ---------------------------------------------------------------------------------------------
  InsESIG_SEG.ParamByName('tipustreball').clear;
  InsESIG_SEG.ParamByName('notreballa').clear;

  // assegurat
  InsESIG_SEG.ParamByName('assegurat').clear;

  // laboralqui, laboralon
  if qTRS.FieldByName('sitlabaon').asstring <> '' then
  begin
    if qTRS.FieldByName('sitlabaon').asinteger in[1,2,3,4,5] then
    begin
      InsESIG_SEG.ParamByName('laboralqui').AsInteger := qTRS.FieldByName('sitlabaon').asinteger;
    end;
    if qTRS.FieldByName('sitlabaon').asinteger = 6 then InsESIG_SEG.ParamByName('laboralon').AsInteger := 1;
    if qTRS.FieldByName('sitlabaon').asinteger = 7 then InsESIG_SEG.ParamByName('laboralon').AsInteger := 2;
    if qTRS.FieldByName('sitlabaon').asinteger = 9 then InsESIG_SEG.ParamByName('laboralon').AsInteger := 3;
  end
  else begin
      InsESIG_SEG.ParamByName('laboralon').Clear;
      InsESIG_SEG.ParamByName('laboralqui').Clear;
  end;

  // canvis situació laboral des de l'alta/última revisió   ------------------------------------------------------------
  InsESIG_SEG.ParamByName('laboral_c').clear;

  // grau de satisfacció amb la feina actual des de l'alta/última revisió -------------------------------------------
  InsESIG_SEG.ParamByName('laboral_s').clear;

  // Pensió ----------------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('subsidi1').asstring <> '' then
  begin
    if qTRS.FieldByName('subsidi1').asstring = '0.1' then InsESIG_SEG.ParamByName('pensio').Asinteger := 1;
    if qTRS.FieldByName('subsidi1').asstring = '0.2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 2;
    if qTRS.FieldByName('subsidi1').asstring = '0.3' then InsESIG_SEG.ParamByName('pensio').Asinteger := 3;
    if qTRS.FieldByName('subsidi1').asstring = '0.4' then InsESIG_SEG.ParamByName('pensio').Asinteger := 4;
    if qTRS.FieldByName('subsidi1').asstring = '2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 5;
    if (qTRS.FieldByName('subsidi1').asstring = '1') or (qTRS.FieldByName('subsidi1').asstring = '7') then InsESIG_SEG.ParamByName('pensio').Asinteger := 7;

    if (qTRS.FieldByName('subsidi1').asstring = '3') or (qTRS.FieldByName('subsidi1').asstring = '4')
    or (qTRS.FieldByName('subsidi1').asstring = '5') or (qTRS.FieldByName('subsidi1').asstring = '6') then InsESIG_SEG.ParamByName('pensio').Asinteger := 6;

    if qTRS.FieldByName('subsidi1').asstring = '9' then InsESIG_SEG.ParamByName('pensio').Asinteger := 9;
    if qTRS.FieldByName('subsidi1').asstring = '10' then InsESIG_SEG.ParamByName('pensio').Asinteger := 8;
    if qTRS.FieldByName('subsidi1').asstring = '8' then
    begin
      if qTRS.FieldByName('subsidi2').asstring = '' then InsESIG_SEG.ParamByName('pensio').Asinteger := 9
      else begin
        if qTRS.FieldByName('subsidi2').asstring = '0.1' then InsESIG_SEG.ParamByName('pensio').Asinteger := 1;
        if qTRS.FieldByName('subsidi2').asstring = '0.2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 2;
        if qTRS.FieldByName('subsidi2').asstring = '0.3' then InsESIG_SEG.ParamByName('pensio').Asinteger := 3;
        if qTRS.FieldByName('subsidi2').asstring = '0.4' then InsESIG_SEG.ParamByName('pensio').Asinteger := 4;
        if qTRS.FieldByName('subsidi2').asstring = '2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 5;
        if (qTRS.FieldByName('subsidi2').asstring = '1') or (qTRS.FieldByName('subsidi2').asstring = '7') then InsESIG_SEG.ParamByName('pensio').Asinteger := 7;

        if (qTRS.FieldByName('subsidi2').asstring = '3') or (qTRS.FieldByName('subsidi2').asstring = '4')
        or (qTRS.FieldByName('subsidi2').asstring = '5') or (qTRS.FieldByName('subsidi2').asstring = '6') then InsESIG_SEG.ParamByName('pensio').Asinteger := 6;

        if qTRS.FieldByName('subsidi2').asstring = '9' then InsESIG_SEG.ParamByName('pensio').Asinteger := 9;
        if qTRS.FieldByName('subsidi2').asstring = '10' then InsESIG_SEG.ParamByName('pensio').Asinteger := 8;
        if qTRS.FieldByName('subsidi2').asstring = '8' then
        begin
          if qTRS.FieldByName('subsidi3').asstring = '' then InsESIG_SEG.ParamByName('pensio').Asinteger := 9
          else begin
            if qTRS.FieldByName('subsidi3').asstring = '0.1' then InsESIG_SEG.ParamByName('pensio').Asinteger := 1;
            if qTRS.FieldByName('subsidi3').asstring = '0.2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 2;
            if qTRS.FieldByName('subsidi3').asstring = '0.3' then InsESIG_SEG.ParamByName('pensio').Asinteger := 3;
            if qTRS.FieldByName('subsidi3').asstring = '0.4' then InsESIG_SEG.ParamByName('pensio').Asinteger := 4;
            if qTRS.FieldByName('subsidi3').asstring = '2' then InsESIG_SEG.ParamByName('pensio').Asinteger := 5;

            if (qTRS.FieldByName('subsidi3').asstring = '1') or (qTRS.FieldByName('subsidi3').asstring = '7') then InsESIG_SEG.ParamByName('pensio').Asinteger := 7;

            if (qTRS.FieldByName('subsidi3').asstring = '3') or (qTRS.FieldByName('subsidi3').asstring = '4')
            or (qTRS.FieldByName('subsidi3').asstring = '5') or (qTRS.FieldByName('subsidi3').asstring = '6') then InsESIG_SEG.ParamByName('pensio').Asinteger := 6;

            if (qTRS.FieldByName('subsidi3').asstring = '8') or (qTRS.FieldByName('subsidi3').asstring = '9') then InsESIG_SEG.ParamByName('pensio').Asinteger := 9;
            if qTRS.FieldByName('subsidi3').asstring = '10' then InsESIG_SEG.ParamByName('pensio').Asinteger := 8;
          end;
        end;
      end;
    end;
  end
  else InsESIG_SEG.ParamByName('pensio').Clear;

  // canvis en la pensíó des de l'alta / última revisió   ------------------------------------------------------------
  InsESIG_SEG.ParamByName('pensio_c').clear;

  // grau de satisfacció amb la pensió actual des de l'alta/última revisió -------------------------------------------
  InsESIG_SEG.ParamByName('pensio_s').clear;

  // Mobilitat -------------------------------------------------------------------------------------------------------
  if (qTRS.FieldByName('mobilitat1').asstring = '1')
  or (qTRS.FieldByName('mobilitat2').asstring = '1')
  or (qTRS.FieldByName('mobilitat3').asstring = '1')
  then InsESIG_SEG.ParamByName('mobilitat1').Asstring := 'S'
  else InsESIG_SEG.ParamByName('mobilitat1').Asstring := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '2')
  or (qTRS.FieldByName('mobilitat2').asstring = '2')
  or (qTRS.FieldByName('mobilitat3').asstring = '2')
  then InsESIG_SEG.ParamByName('mobilitat2').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat2').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '3')
  or (qTRS.FieldByName('mobilitat2').asstring = '3')
  or (qTRS.FieldByName('mobilitat3').asstring = '3')
  then InsESIG_SEG.ParamByName('mobilitat3').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat3').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '4')
  or (qTRS.FieldByName('mobilitat2').asstring = '4')
  or (qTRS.FieldByName('mobilitat3').asstring = '4')
  then InsESIG_SEG.ParamByName('mobilitat4').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat4').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '5')
  or (qTRS.FieldByName('mobilitat2').asstring = '5')
  or (qTRS.FieldByName('mobilitat3').asstring = '5')
  then InsESIG_SEG.ParamByName('mobilitat5').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat5').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '6')
  or (qTRS.FieldByName('mobilitat2').asstring = '6')
  or (qTRS.FieldByName('mobilitat3').asstring = '6')
  then InsESIG_SEG.ParamByName('mobilitat6').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat6').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '7')
  or (qTRS.FieldByName('mobilitat2').asstring = '7')
  or (qTRS.FieldByName('mobilitat3').asstring = '7')
  then InsESIG_SEG.ParamByName('mobilitat7').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat7').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').asstring = '9')
  or (qTRS.FieldByName('mobilitat2').asstring = '9')
  or (qTRS.FieldByName('mobilitat3').asstring = '9')
  then InsESIG_SEG.ParamByName('mobilitat8').AsString := 'S'
  else InsESIG_SEG.ParamByName('mobilitat8').AsString := 'N';

  if (qTRS.FieldByName('mobilitat1').isnull)
  and (qTRS.FieldByName('mobilitat2').isnull)
  and (qTRS.FieldByName('mobilitat3').isnull)
  then begin
      InsESIG_SEG.ParamByName('mobilitat1').clear;
      InsESIG_SEG.ParamByName('mobilitat2').clear;
      InsESIG_SEG.ParamByName('mobilitat3').clear;
      InsESIG_SEG.ParamByName('mobilitat4').clear;
      InsESIG_SEG.ParamByName('mobilitat5').clear;
      InsESIG_SEG.ParamByName('mobilitat6').clear;
      InsESIG_SEG.ParamByName('mobilitat7').clear;
      InsESIG_SEG.ParamByName('mobilitat8').clear;
  end;

  // canvis en la mobilitat des de l'alta / última revisió  ------------------------------------------------------------
  InsESIG_SEG.ParamByName('mobilitat_c').clear;

  // grau de satisfacció amb la mobilitat actual des de l'alta/última revisió -------------------------------------------
  InsESIG_SEG.ParamByName('mobilitat_s').clear;

  // activitats  -----------------------------------------------------------------------------------------------------
  {0:no la realitza
   1:la realitza al domicili
   2: la realitza fora del domicili
   3: sí la realitza però no especifiquem on (antics)}

   InsESIG_SEG.ParamByName('activitats1').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats2').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats3').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats4').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats5').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats6').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats7').AsInteger := 0;
   InsESIG_SEG.ParamByName('activitats8').AsInteger := 0;

   // si hi ha activitats però cap té valor 11 ó 12, posarem un 3 a les que sí estiguin triades.
   if (qTRS.FieldByName('activitats1').asstring = '1')
   or (qTRS.FieldByName('activitats2').asstring = '1')
   or (qTRS.FieldByName('activitats3').asstring = '1')
   then InsESIG_SEG.ParamByName('activitats1').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '2')
   or (qTRS.FieldByName('activitats2').asstring = '2')
   or (qTRS.FieldByName('activitats3').asstring = '2')
   then InsESIG_SEG.ParamByName('activitats2').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '3')
   or (qTRS.FieldByName('activitats2').asstring = '3')
   or (qTRS.FieldByName('activitats3').asstring = '3')
   then InsESIG_SEG.ParamByName('activitats3').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '4')
   or (qTRS.FieldByName('activitats2').asstring = '4')
   or (qTRS.FieldByName('activitats3').asstring = '4')
   then InsESIG_SEG.ParamByName('activitats4').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '5')
   or (qTRS.FieldByName('activitats2').asstring = '5')
   or (qTRS.FieldByName('activitats3').asstring = '5')
   then InsESIG_SEG.ParamByName('activitats7').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '6')
   or (qTRS.FieldByName('activitats2').asstring = '6')
   or (qTRS.FieldByName('activitats3').asstring = '6')
   then InsESIG_SEG.ParamByName('activitats5').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '7')
   or (qTRS.FieldByName('activitats2').asstring = '7')
   or (qTRS.FieldByName('activitats3').asstring = '7')
   then InsESIG_SEG.ParamByName('activitats8').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '8')
   or (qTRS.FieldByName('activitats2').asstring = '8')
   or (qTRS.FieldByName('activitats3').asstring = '8')
   then InsESIG_SEG.ParamByName('activitats6').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '9')
   or (qTRS.FieldByName('activitats2').asstring = '9')
   or (qTRS.FieldByName('activitats3').asstring = '9')
   then InsESIG_SEG.ParamByName('activitats8').AsInteger := 3;

   if (qTRS.FieldByName('activitats1').asstring = '10')
   or (qTRS.FieldByName('activitats2').asstring = '10')
   or (qTRS.FieldByName('activitats3').asstring = '10')
   then InsESIG_SEG.ParamByName('activitats4').AsInteger := 3;

   if (not qTRS.FieldByName('activitats1').IsNull) and (not qTRS.FieldByName('activitats2').IsNull) then
   begin
     // convinacions de 1 i 2
     if qTRS.FieldByName('activitats1').AsInteger = 11 then
     begin
       if qTRS.FieldByName('activitats2').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
       if qTRS.FieldByName('activitats2').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
     end;
     if qTRS.FieldByName('activitats1').AsInteger = 12 then
     begin
       if qTRS.FieldByName('activitats2').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
       if qTRS.FieldByName('activitats2').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
     end;
     if qTRS.FieldByName('activitats2').AsInteger = 11 then
     begin
       if qTRS.FieldByName('activitats1').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
       if qTRS.FieldByName('activitats1').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
     end;
     if qTRS.FieldByName('activitats2').AsInteger = 12 then
     begin
       if qTRS.FieldByName('activitats1').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
       if qTRS.FieldByName('activitats1').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
     end;
     if not qTRS.FieldByName('activitats3').IsNull then
     begin
       // convinacions de 3 i 1
       if qTRS.FieldByName('activitats1').AsInteger = 11 then
       begin
         if qTRS.FieldByName('activitats3').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
       end;
       if qTRS.FieldByName('activitats1').AsInteger = 12 then
       begin
         if qTRS.FieldByName('activitats3').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
       end;
       if qTRS.FieldByName('activitats3').AsInteger = 11 then
       begin
         if qTRS.FieldByName('activitats1').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
         if qTRS.FieldByName('activitats1').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
       end;
       if qTRS.FieldByName('activitats3').AsInteger = 12 then
       begin
         if qTRS.FieldByName('activitats1').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
         if qTRS.FieldByName('activitats1').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
       end;
      // convinacions de 3 i 2
       if qTRS.FieldByName('activitats2').AsInteger = 11 then
       begin
         if qTRS.FieldByName('activitats3').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
         if qTRS.FieldByName('activitats3').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
       end;
       if qTRS.FieldByName('activitats2').AsInteger = 12 then
       begin
         if qTRS.FieldByName('activitats3').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
         if qTRS.FieldByName('activitats3').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
       end;
       if qTRS.FieldByName('activitats3').AsInteger = 11 then
       begin
         if qTRS.FieldByName('activitats2').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 1;
         if qTRS.FieldByName('activitats2').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 1;
       end;
       if qTRS.FieldByName('activitats3').AsInteger = 12 then
       begin
         if qTRS.FieldByName('activitats2').AsInteger = 1 then InsESIG_SEG.ParamByName('activitats1').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 2 then InsESIG_SEG.ParamByName('activitats2').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 3 then InsESIG_SEG.ParamByName('activitats3').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger in[4,10] then InsESIG_SEG.ParamByName('activitats4').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 5 then InsESIG_SEG.ParamByName('activitats7').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 6 then InsESIG_SEG.ParamByName('activitats5').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger in[7,9] then InsESIG_SEG.ParamByName('activitats8').asinteger := 2;
         if qTRS.FieldByName('activitats2').AsInteger = 8 then InsESIG_SEG.ParamByName('activitats6').asinteger := 2;
       end;
     end;
   end;

  // freqüència  --------------------------------------------------------------------------------------------------------
  InsESIG_SEG.ParamByName('frequencia').clear;

  // durada  --------------------------------------------------------------------------------------------------------------
  InsESIG_SEG.ParamByName('durada').clear;

  // canvis en les activitats des de l'alta / última revisió ------------------------------------------------------------
  InsESIG_SEG.ParamByName('activitats_c').clear;

  // grau de satisfacció amb les activitats q desenvolupa ------------------------------------------------------------
  InsESIG_SEG.ParamByName('activitats_s').clear;

  // Figura assistencial ---------------------------------------------------------------------------------------------
  if qTRS.FieldByName('figassist1').asstring <> '' then
  begin
    if qTRS.FieldByName('figassist1').asstring = '1.1' then InsESIG_SEG.ParamByName('figura').Asinteger := 1;
    if (qTRS.FieldByName('figassist1').asstring = '1.2') or (qTRS.FieldByName('figassist1').asstring = '1.3') then InsESIG_SEG.ParamByName('figura').Asinteger := 2;
    if (qTRS.FieldByName('figassist1').asstring = '1.4') or (qTRS.FieldByName('figassist1').asstring = '1.5') then InsESIG_SEG.ParamByName('figura').Asinteger := 3;
    if qTRS.FieldByName('figassist1').asstring = '9' then InsESIG_SEG.ParamByName('figura').Asinteger := 11;
    if qTRS.FieldByName('figassist1').asstring = '2' then
    begin
      InsESIG_SEG.ParamByName('figura').Asinteger := 4;
      if qTRS.FieldByName('figassist2').asstring <> '' then
      begin
        if qTRS.FieldByName('figassist2').asstring = '1.1' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 5;
        if (qTRS.FieldByName('figassist2').asstring = '1.2') or (qTRS.FieldByName('figassist2').asstring = '1.3') then InsESIG_SEG.ParamByName('figura').Asinteger := 6;
        if (qTRS.FieldByName('figassist2').asstring = '1.4') or (qTRS.FieldByName('figassist2').asstring = '1.5') then InsESIG_SEG.ParamByName('figura').Asinteger := 7;
      end;
    end;
  end
  else InsESIG_SEG.ParamByName('figura').Clear;

  // Dedicació -------------------------------------------------------------------------------------------------------
  if qTRS.FieldByName('dedicacio').asstring <> '' then
  begin
    if qTRS.FieldByName('dedicacio').asstring = '1.1' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 1;
    if qTRS.FieldByName('dedicacio').asstring = '1.2' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 2;
    if qTRS.FieldByName('dedicacio').asstring = '1.3' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 3;
    if qTRS.FieldByName('dedicacio').asstring = '1.4' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 4;
    if qTRS.FieldByName('dedicacio').asstring = '1.5' then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 5;
    if qTRS.FieldByName('dedicacio').asstring = '2'   then InsESIG_SEG.ParamByName('dedicacio').Asinteger := 6;
  end
  else InsESIG_SEG.ParamByName('dedicacio').Clear;

  // Ajuda AVD canvis des de l'alta / última revisió ------------------------------------------------------------
  InsESIG_SEG.ParamByName('ajudaavd_c').clear;

  // grau de satisfacció amb les activitats q desenvolupa ------------------------------------------------------------
  InsESIG_SEG.ParamByName('ajudaavd_s').clear;

  // serveis  (NOU - LLEI DE DEPENDÈNCIA)
  InsESIG_SEG.ParamByName('servei1').clear;
  InsESIG_SEG.ParamByName('servei2').clear;
  InsESIG_SEG.ParamByName('servei3').clear;
  InsESIG_SEG.ParamByName('servei4').clear;
  InsESIG_SEG.ParamByName('servei5').clear;
  InsESIG_SEG.ParamByName('servei6').clear;
  InsESIG_SEG.ParamByName('servei7').clear;
  InsESIG_SEG.ParamByName('servei8').clear;
  InsESIG_SEG.ParamByName('servei9').clear;
  InsESIG_SEG.ParamByName('servei10').clear;
  InsESIG_SEG.ParamByName('servei11').clear;
  InsESIG_SEG.ParamByName('servei_c').clear;
  InsESIG_SEG.ParamByName('servei_s').Clear;

  InsESIG_SEG.ExecSQL;
  cont_insertats := cont_insertats + 1;
end;

procedure twmain.TraspasESIGSEG_VIP;
var
  entrada : integer;
begin
    InsESIG_SEG.ParamByName('id').asinteger := GutSelect('select max(id) from ESCESIG_SEG',[]) + 1;
    InsESIG_SEG.ParamByName('c_tractament').AsInteger := qVIPB.FieldByName('c_tractament').AsInteger;
    InsESIG_SEG.ParamByName('c_historia').AsInteger := qVIPB.FieldByName('c_historia').AsInteger;
    InsESIG_SEG.ParamByName('c_usuari').Asstring := qVIPB.FieldByName('usuariAS').Asstring;
    InsESIG_SEG.ParamByName('data').AsDateTime := qVIPB.FieldByName('dataAS').AsDateTime;

    entrada := GutSelect('select max(c_entrada) from escesig_seg where c_historia = %d',[qVIPB.FieldByName('c_historia').AsInteger]);
    InsESIG_SEG.ParamByName('c_entrada').AsInteger := entrada + 1;

    // al VIP no es pot anul·lar res.
    InsESIG_SEG.ParamByName('anulat').Asstring := 'N';
    InsESIG_SEG.ParamByName('data_anulat').Clear;

    // al VIP no hi ha validador
    InsESIG_SEG.ParamByName('c_validador').clear;
    InsESIG_SEG.ParamByName('data_validat').clear;

    // les dades de ESCALESTRS totes a null
    // estudis  -------------------------------------------------------------------------------------------------------
    InsESIG_SEG.ParamByName('estudis').Clear;

    // estudis canvis -------------------------------------------------------------------------------------------------
    if qvipb.FieldByName('TREB_CANVIS_NIVELL_ESTUDIS').IsNull then InsESIG_SEG.ParamByName('estudis_c').clear
    else InsESIG_SEG.ParamByName('estudis_c').asstring := qvipb.FieldByName('TREB_CANVIS_NIVELL_ESTUDIS').asstring;

    // estudis grau de satisfacció ------------------------------------------------------------------------------------

    // convingres1 (ignorem els altres) --> convivencia  --------------------------------------------------------------
    InsESIG_SEG.ParamByName('convivencia').Clear;

    // canvis en convivència des de l'alta/última revisió --------------------------------------------------------------
    if qvipb.FieldByName('TREB_CANVIS_CONVI_ULT_REV').isnull then InsESIG_SEG.ParamByName('convivencia_c').Clear
    else InsESIG_SEG.ParamByName('convivencia_c').asstring := qvipb.FieldByName('TREB_CANVIS_CONVI_ULT_REV').asstring;

    // Residencia habitual ---------------------------------------------------------------------------------------------
    InsESIG_SEG.ParamByName('residencia').Clear;

    // Access + interior vivenda = accessibilitat ----------------------------------------------------------------------
    InsESIG_SEG.ParamByName('accessibilitat').Clear;

    // canvis en la residència habitual des de l'alta/última revisió --------------------------------------------------------------
    if qvipb.FieldByName('TREB_CANVIS_HABIT_ULT_REV').isnull then InsESIG_SEG.ParamByName('llar_c').clear
    else InsESIG_SEG.ParamByName('llar_c').asstring := qvipb.FieldByName('TREB_CANVIS_HABIT_ULT_REV').asstring;

    // grau de satisfacció amb l'habitatge actual des de l'alta/última revisió -------------------------------------------------
    if qvipb.FieldByName('TREB_GRAU_SATIFACCIO_HABITATGE').IsNull then InsESIG_SEG.ParamByName('llar_s').clear
    else InsESIG_SEG.ParamByName('llar_s').asinteger := qvipb.FieldByName('TREB_GRAU_SATIFACCIO_HABITATGE').asinteger;

    // noTreballa  i tipustreball   ---------------------------------------------------------------------------------------------
    if qvipb.FieldByName('TREB_TREBALLA_TIPUS_TREBALL').asstring = '' then
    begin
        InsESIG_SEG.ParamByName('tipustreball').Clear;
        if qvipb.FieldByName('TREB_NO_PERQUE').isnull then InsESIG_SEG.ParamByName('notreballa').clear
        else begin
          if qvipb.FieldByName('TREB_NO_PERQUE').asinteger = 0 then InsESIG_SEG.ParamByName('notreballa').asinteger := 2;
          if qvipb.FieldByName('TREB_NO_PERQUE').asinteger = 1 then InsESIG_SEG.ParamByName('notreballa').asinteger := 3;
          if qvipb.FieldByName('TREB_NO_PERQUE').asinteger = 2 then InsESIG_SEG.ParamByName('notreballa').asinteger := 4;
          if qvipb.FieldByName('TREB_NO_PERQUE').asinteger = 3 then InsESIG_SEG.ParamByName('notreballa').asinteger := 6;
          if qvipb.FieldByName('TREB_NO_PERQUE').asinteger = 4 then InsESIG_SEG.ParamByName('notreballa').asinteger := 5;
          if qvipb.FieldByName('TREB_NO_PERQUE').asinteger = 5 then InsESIG_SEG.ParamByName('notreballa').asinteger := 6;
        end;
    end
    else begin
        InsESIG_SEG.ParamByName('tipustreball').asstring := qvipb.FieldByName('TREB_TREBALLA_TIPUS_TREBALL').asstring;
        InsESIG_SEG.ParamByName('notreballa').clear;
    end;

    // assegurat
    if qvipb.FieldByName('TREB_ESTA_ASEGURAT').isnull then InsESIG_SEG.ParamByName('assegurat').clear
    else InsESIG_SEG.ParamByName('assegurat').asstring := qvipb.FieldByName('TREB_ESTA_ASEGURAT').asstring;

    // laboralqui, laboralon
    InsESIG_SEG.ParamByName('laboralon').Clear;
    InsESIG_SEG.ParamByName('laboralqui').Clear;

    // canvis situació laboral des de l'alta/última revisió   ------------------------------------------------------------
    if qvipb.FieldByName('TREB_CANVIS_TREBALL_ULT_REV').isnull then InsESIG_SEG.ParamByName('laboral_c').clear
    else InsESIG_SEG.ParamByName('laboral_c').asstring := qvipb.FieldByName('TREB_CANVIS_TREBALL_ULT_REV').asstring;

    // grau de satisfacció amb la feina actual des de l'alta/última revisió -------------------------------------------
    if qvipb.FieldByName('TREB_GRAU_SATIFACCIO_LABORAL').IsNull then InsESIG_SEG.ParamByName('laboral_s').clear
    else InsESIG_SEG.ParamByName('laboral_s').asinteger := qvipb.FieldByName('TREB_GRAU_SATIFACCIO_LABORAL').asinteger;

    // Pensió ----------------------------------------------------------------------------------------------------------
    InsESIG_SEG.ParamByName('pensio').Clear;

    // canvis en la pensíó des de l'alta / última revisió   ------------------------------------------------------------
    if qvipb.FieldByName('TREB_CANVIS_PENSIO_ULT_REV').isnull then InsESIG_SEG.ParamByName('pensio_c').clear
    else InsESIG_SEG.ParamByName('pensio_c').asstring := qvipb.FieldByName('TREB_CANVIS_PENSIO_ULT_REV').asstring;

    // grau de satisfacció amb la pensió actual des de l'alta/última revisió -------------------------------------------
    if qvipb.FieldByName('TREB_GRAU_SATIFACCIO_PENSIO').IsNull then InsESIG_SEG.ParamByName('pensio_s').clear
    else InsESIG_SEG.ParamByName('pensio_s').asinteger := qvipb.FieldByName('TREB_GRAU_SATIFACCIO_PENSIO').asinteger;

    // Mobilitat -------------------------------------------------------------------------------------------------------
    InsESIG_SEG.ParamByName('mobilitat1').clear;
    InsESIG_SEG.ParamByName('mobilitat2').clear;
    InsESIG_SEG.ParamByName('mobilitat3').clear;
    InsESIG_SEG.ParamByName('mobilitat4').clear;
    InsESIG_SEG.ParamByName('mobilitat5').clear;
    InsESIG_SEG.ParamByName('mobilitat6').clear;
    InsESIG_SEG.ParamByName('mobilitat7').clear;
    InsESIG_SEG.ParamByName('mobilitat8').clear;

    // canvis en la mobilitat des de l'alta / última revisió  ------------------------------------------------------------
    if qvipb.FieldByName('TREB_CANVIS_MOB_ENTORN_ULT_REV').isnull then InsESIG_SEG.ParamByName('mobilitat_c').clear
    else InsESIG_SEG.ParamByName('mobilitat_c').asstring := qvipb.FieldByName('TREB_CANVIS_MOB_ENTORN_ULT_REV').asstring;

    // grau de satisfacció amb la mobilitat actual des de l'alta/última revisió -------------------------------------------
    if qvipb.FieldByName('TREB_GRAU_SATIF_MOB_ENTORN').IsNull then InsESIG_SEG.ParamByName('mobilitat_s').clear
    else InsESIG_SEG.ParamByName('mobilitat_s').asinteger := qvipb.FieldByName('TREB_GRAU_SATIF_MOB_ENTORN').asinteger;

    // activitats  -----------------------------------------------------------------------------------------------------
    InsESIG_SEG.ParamByName('activitats1').clear;
    InsESIG_SEG.ParamByName('activitats2').clear;
    InsESIG_SEG.ParamByName('activitats3').clear;
    InsESIG_SEG.ParamByName('activitats4').clear;
    InsESIG_SEG.ParamByName('activitats5').clear;
    InsESIG_SEG.ParamByName('activitats6').clear;
    InsESIG_SEG.ParamByName('activitats7').clear;
    InsESIG_SEG.ParamByName('activitats8').clear;

    // freqüència  --------------------------------------------------------------------------------------------------------
    if qvipb.FieldByName('TREB_3_5DIES_SETMANA').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 1
    else if qvipb.FieldByName('TREB_2DIES_SETMANA').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 2
       else if qvipb.FieldByName('TREB_1DIA_SETMANA').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 3
            else if qvipb.FieldByName('TREB_1DIA_MES').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 4
                 else if qvipb.FieldByName('TREB_ESPORADICAMENT').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 5
                      else if qvipb.FieldByName('TREB_ALTRA_FREQUENCIA').asstring <> '' then InsESIG_SEG.ParamByName('frequencia').asinteger := 6
                           else InsESIG_SEG.ParamByName('frequencia').clear;

    // durada  --------------------------------------------------------------------------------------------------------------
    if qvipb.FieldByName('TREB_MES_3HORES_DIA').asstring <> '' then InsESIG_SEG.ParamByName('durada').asinteger := 1
    else if qvipb.FieldByName('TREB_1A3HORES_DIA').asstring <> '' then InsESIG_SEG.ParamByName('durada').asinteger := 2
       else if qvipb.FieldByName('TREB_MENYS_1HORA_DIA').asstring <> '' then InsESIG_SEG.ParamByName('durada').asinteger := 3
            else InsESIG_SEG.ParamByName('durada').clear;

    // canvis en les activitats des de l'alta / última revisió ------------------------------------------------------------
    if qvipb.FieldByName('TREB_CANVIS_ALTRES_ACT_ULT_REV').isnull then InsESIG_SEG.ParamByName('activitats_c').clear
    else InsESIG_SEG.ParamByName('activitats_c').asstring := qvipb.FieldByName('TREB_CANVIS_ALTRES_ACT_ULT_REV').asstring;

    // grau de satisfacció amb les activitats q desenvolupa ------------------------------------------------------------
    if qvipb.FieldByName('TREB_GRAU_SATIF_ALTRES_ACT').IsNull then InsESIG_SEG.ParamByName('activitats_s').clear
    else InsESIG_SEG.ParamByName('activitats_s').asinteger := qvipb.FieldByName('TREB_GRAU_SATIF_ALTRES_ACT').asinteger;

    // Figura assistencial ---------------------------------------------------------------------------------------------
    InsESIG_SEG.ParamByName('figura').Clear;

    // Dedicació -------------------------------------------------------------------------------------------------------
    InsESIG_SEG.ParamByName('dedicacio').Clear;

    // Ajuda AVD canvis des de l'alta / última revisió ------------------------------------------------------------
    if qvipb.FieldByName('TREB_CANVIS_SUP_AVD_ULT_REV').isnull then InsESIG_SEG.ParamByName('ajudaavd_c').clear
    else InsESIG_SEG.ParamByName('ajudaavd_c').asstring := qvipb.FieldByName('TREB_CANVIS_SUP_AVD_ULT_REV').asstring;

    // grau de satisfacció amb les activitats q desenvolupa ------------------------------------------------------------
    if qvipb.FieldByName('TREB_GRAU_SATIF_AVD').IsNull then InsESIG_SEG.ParamByName('ajudaavd_s').clear
    else InsESIG_SEG.ParamByName('ajudaavd_s').asinteger := qvipb.FieldByName('TREB_GRAU_SATIF_AVD').asinteger;

    // serveis  (NOU - LLEI DE DEPENDÈNCIA)
    InsESIG_SEG.ParamByName('servei1').clear;
    InsESIG_SEG.ParamByName('servei2').clear;
    InsESIG_SEG.ParamByName('servei3').clear;
    InsESIG_SEG.ParamByName('servei4').clear;
    InsESIG_SEG.ParamByName('servei5').clear;
    InsESIG_SEG.ParamByName('servei6').clear;
    InsESIG_SEG.ParamByName('servei7').clear;
    InsESIG_SEG.ParamByName('servei8').clear;
    InsESIG_SEG.ParamByName('servei9').clear;
    InsESIG_SEG.ParamByName('servei10').clear;
    InsESIG_SEG.ParamByName('servei11').clear;
    InsESIG_SEG.ParamByName('servei_c').clear;
    InsESIG_SEG.ParamByName('servei_s').Clear;

    InsESIG_SEG.ExecSQL;
    cont_insertats := cont_insertats + 1;
end;

procedure Twmain.rbTotsClick(Sender: TObject);
begin
  if rbTots.Checked then
  begin
      rbTram.Checked := False;
      lclaumin.Visible := false;
      lclaumax.Visible := false;
      eclaumin.Visible := false;
      eclaumax.Visible := false;
      eclaumin.Text := '';
      eclaumax.Text := '';
      sbEsig1av.Enabled := True;
      sbEsigSeg.Enabled := True;
      sbChart.Enabled := True;
      sbEfa.Enabled := True;
      sbAsia.Enabled := True;
      sbBateria.Enabled := True;
  end
  else begin
      sbEsig1av.Enabled := False;
      sbEsigSeg.Enabled := False;
      sbChart.Enabled := False;
      sbEfa.Enabled := False;
      sbAsia.Enabled := false;
      sbBateria.Enabled := false;
  end;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;
  
  literal.Visible := False;
  lLlegits.Visible := False;
  eLlegits.Visible := False;
  ellegits.Text := '';
  lInsertats.Visible := False;
  eInsertats.Visible := False;
  eInsertats.Text := '';
end;

procedure Twmain.rbTramClick(Sender: TObject);
begin
  if rbTram.Checked then
  begin
      rbTots.Checked := False;
      lclaumin.Visible := true;
      lclaumax.Visible := True;
      eclaumin.Visible := true;
      eclaumax.Visible := True;
      sbEsig1av.Enabled := True;
      sbEsigSeg.Enabled := True;
      sbChart.Enabled := True;
      sbEfa.Enabled := True;
      sbAsia.Enabled := True;
  end
  else begin
      lclaumin.Visible := false;
      lclaumax.Visible := false;
      eclaumin.Visible := false;
      eclaumax.Visible := false;
      eclaumin.Text := '';
      eclaumax.Text := '';
      sbEsig1av.Enabled := false;
      sbEsigSeg.Enabled := false;
      sbChart.Enabled := false;
      sbEfa.Enabled := false;
      sbAsia.Enabled := false;
  end;
  sbBateria.Enabled := false;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;    

  literal.Visible := False;
  lLlegits.Visible := False;
  eLlegits.Visible := False;
  ellegits.Text := '';
  lInsertats.Visible := False;
  eInsertats.Visible := False;
  eInsertats.Text := '';
end;

procedure Twmain.sbChartClick(Sender: TObject);
begin
  lLlegits.Caption := 'Registres llegits de VIP:';
  lInsertats.Caption := 'Registres insertats a CHART:';
  cont_insertats := 0;

  InsCHART.Close;
  qVIP2.Close;
  if (eclaumin.text <> '') then qVIP2.SQL[26] := 'and id >='+eclaumin.text else qVIP2.SQL[26] := '';
  if (eclaumax.text <> '') then qVIP2.SQL[27] := 'and id <='+eclaumax.text else qVIP2.SQL[27] := '';
  qVIP2.Open;

  while (not qVIP2.Eof) do
  begin
     if hihainfo(0) then TraspasCHART;
     qVIP2.Next;
  end;

  literal.Visible := true;
  lLlegits.Visible := true;
  eLlegits.Visible := true;
  lInsertats.Visible := true;
  eInsertats.Visible := True;
  ellegits.Text := inttostr(qVIP2.RecordCount);
  eINsertats.Text := inttostr(cont_insertats);

  qVIP2.Close;
  InsCHART.Close;

  sbEsig1av.Enabled := false;
  sbEsigSeg.Enabled := false;
  sbChart.Enabled := false;
  sbefa.Enabled := false;
  sbAsia.Enabled := false;
  sbBateria.Enabled := false;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;  

  rbTots.Checked := False;
  rbTram.Checked := False;
end;

function twmain.hihainfo(i: integer):boolean;
begin
  // chart
  if i = 0 then
    if  qVIP2.Fieldbyname('TREB_NUM_PERS_CONV').isnull
    and qVIP2.FieldByName('TREB_CONVIU_AMB').isnull
    and qVIP2.FieldByName('TREB_QUANTS_FAMILIA').Isnull
    and qVIP2.FieldByName('TREB_QUANTES_FAMILIA').isnull
    and qVIP2.FieldByName('TREB_HORAS_ASSIST_PAGADES_DIA').isnull
    and qVIP2.FieldByName('TREB_HORAS_ASSIST_NO_PAG_DIA').isnull
    and qVIP2.FieldByName('TREB_HORAS_DIA_AIXECAT').isnull
    and qVIP2.FieldByName('TREB_DC_PERSONA_A_CASA_SEVA').isnull
    and qVIP2.FieldByName('TREB_DC_PERSONA_AMB_VOSTE').isnull
    and qVIP2.FieldByName('TREB_HORAS_SETMANA_ESTUDIANT').isnull
    and qVIP2.FieldByName('PSI_AUTOSUFICIENT_ECONOMICAMENT').isnull
    and qVIP2.FieldByName('PSI_TE_SUPORT_ECONOMIC').isnull
    and qVIP2.FieldByName('PSI_DESP_SANIT_NO_PAGA_SEG_SOC').isnull
    and qVIP2.FieldByName('PSI_QUANTIT_DESP_SANIT_NO_SEGSO').isnull
    and qVIP2.FieldByName('TREB_HORES_SETMANA_REMUNERADES').isnull
    and qVIP2.FieldByName('TREB_CONTACTES_MES_DE_NEGOCIS').isnull
    and qVIP2.FieldByName('TREB_DIES_SETMANA_FORA_CASA').isnull
    and qVIP2.FieldByName('TREB_NITS_FORA_CASA_ANY_PASSAT').isnull
    and qVIP2.FieldByName('TREB_HORAS_SETMANA_TASQ_DOMESTI').isnull
    and qVIP2.FieldByName('TREB_HORAS_SETMANA_MANT_HOGAR').isnull
    and qVIP2.FieldByName('TREB_HORAS_SETMANA_OCI').isnull
    and qVIP2.FieldByName('TREB_CONTACTES_AMB_AMICS').isnull
    and qVIP2.FieldByName('TREB_CONVERSACIONS_DESCONEG_MES').isnull
    then result := False else result := True
  else
  // efa
    If  qVIP2.FieldByName('TREB_MAL_ACTIT_PERSON_A_CASA').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_CASA').isnull
    and qVIP2.FieldByName('TREB_NECESITAT_AJUD_A_CASA').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_CASA').isnull
    and qVIP2.FieldByName('TREB_FREQ_PROBLEM_DISP_TRANSP').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_TRANSP').isnull
    and qVIP2.FieldByName('TREB_FREQ_PROBLEM_MEDI_NATURAL').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_MEDI_NAT').isnull
    and qVIP2.FieldByName('TREB_FREQ_PROBLEM_ENTORN').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_ENTORN').isnull
    and qVIP2.FieldByName('TREB_FREQ_PROBLEM_DISP_TRANSP').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_INFORMACIO').isnull
    and qVIP2.FieldByName('TREB_NECESITAT_AJUD_A_FEINA').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_FEINA').isnull
    and qVIP2.FieldByName('TREB_MAL_ACTIT_PERSON_TREBALL').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_TREBALL').isnull
    and qVIP2.FieldByName('TREB_DISP_SERV_SALUD').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_SERV_SALUD').isnull
    and qVIP2.FieldByName('TREB_SENTIT_PREJUICIS').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_SENTIT_PREJUICIS').isnull
    and qVIP2.FieldByName('TREB_POLIT_NORMES_INTITUCIONS').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_POLIT_NORMES').isnull
    and qVIP2.FieldByName('TREB_GOBERN_ADMINIST_DIFICULT').isnull
    and qVIP2.FieldByName('TREB_PROBLEM_GOBERN_ADMINIST').isnull
    then result := false else result := true;
end;

procedure twmain.TraspasCHART;
var
  entrada : integer;
begin
  InsCHART.ParamByName('id').asinteger := GutSelect('select max(id) from ESCCHART',[]) + 1;
  InsCHART.ParamByName('c_tractament').AsInteger := qVIP2.FieldByName('c_tractament').AsInteger;
  InsCHART.ParamByName('c_historia').AsInteger := qVIP2.FieldByName('c_historia').AsInteger;
  InsCHART.ParamByName('c_usuari').Asstring := qVIP2.FieldByName('UsuariAS').Asstring;
  InsCHART.ParamByName('data').AsDateTime := qVIP2.FieldByName('dataAS').AsDateTime;
  // al VIP no hi ha diferents entrades ==> el calculo jo per NHC
  entrada := GutSelect('select max(c_entrada) from escchart where c_historia = %d',[qVIP2.FieldByName('c_historia').AsInteger]);
  InsCHART.ParamByName('c_entrada').AsInteger := entrada + 1;
  // al VIP no es poden anul·lar ni validar valoracions.
  InsCHART.ParamByName('anulat').Asstring := 'N';
  InsCHART.ParamByName('data_anulat').Clear;
  InsCHART.ParamByName('c_validador').clear;
  InsCHART.ParamByName('data_validat').clear;

  // Núm. de persones amb les quals viu?
  if qVIP2.Fieldbyname('TREB_NUM_PERS_CONV').isnull then InsCHART.ParamByName('EHC12').clear
  else if qVIP2.Fieldbyname('TREB_NUM_PERS_CONV').asinteger = 99 then InsCHART.ParamByName('EHC12').AsInteger := -1
       else InsCHART.ParamByName('EHC12').AsInteger := qVIP2.Fieldbyname('TREB_NUM_PERS_CONV').Asinteger;

  // Alguns d'ells és el seu cònjuge/parella?
  if qVIP2.Fieldbyname('TREB_CONVIU_AMB').isnull then InsCHART.ParamByName('EHC13').clear
  else if qVIP2.Fieldbyname('TREB_CONVIU_AMB').Asinteger < 3 then InsCHART.ParamByName('EHC13').AsInteger := qVIP2.Fieldbyname('TREB_CONVIU_AMB').Asinteger
       else begin
         if qVIP2.Fieldbyname('TREB_CONVIU_AMB').Asinteger = 3 then InsCHART.ParamByName('EHC13').AsInteger := -2;
         if qVIP2.Fieldbyname('TREB_CONVIU_AMB').Asinteger = 4 then InsCHART.ParamByName('EHC13').AsInteger := -1;
       end;
  // De les persones amb les quals conviu, quantes són família?
  if qVIP2.Fieldbyname('TREB_QUANTS_FAMILIA').isnull then
  begin
      if qVIP2.Fieldbyname('TREB_QUANTES_FAMILIA').isnull then InsCHART.ParamByName('EHC13').clear
      else InsCHART.ParamByName('EHC14').asinteger := qVIP2.Fieldbyname('TREB_QUANTES_FAMILIA').asinteger;
  end
  else begin
      if qVIP2.Fieldbyname('TREB_QUANTES_FAMILIA').asinteger = 3 then InsCHART.ParamByName('EHC14').asinteger := -2
      else if qVIP2.Fieldbyname('TREB_QUANTES_FAMILIA').asinteger = 4 then InsCHART.ParamByName('EHC14').asinteger := -1
           else InsCHART.ParamByName('EHC14').asinteger := qVIP2.Fieldbyname('TREB_QUANTS_FAMILIA').asinteger;
  end;

  // Núm. d'hores d'assistència pagades/dia
  if qVIP2.Fieldbyname('TREB_HORAS_ASSIST_PAGADES_DIA').isnull then InsCHART.ParamByName('EHC1_A').clear
  else if qVIP2.Fieldbyname('TREB_HORAS_ASSIST_PAGADES_DIA').asinteger = 99 then InsCHART.ParamByName('EHC1_A').AsInteger := -1
       else InsCHART.ParamByName('EHC1_A').AsInteger := qVIP2.Fieldbyname('TREB_HORAS_ASSIST_PAGADES_DIA').Asinteger;

  // Núm. d'hores d'assistència no pagades/dia
  if qVIP2.Fieldbyname('TREB_HORAS_ASSIST_NO_PAG_DIA').IsNull then InsCHART.ParamByName('EHC1_B').clear
  else if qVIP2.Fieldbyname('TREB_HORAS_ASSIST_NO_PAG_DIA').asinteger = 99 then InsCHART.ParamByName('EHC1_B').AsInteger := -1
       else InsCHART.ParamByName('EHC1_B').AsInteger := qVIP2.Fieldbyname('TREB_HORAS_ASSIST_NO_PAG_DIA').Asinteger;

  // Núm. d'hores aixecat al dia
  if qVIP2.Fieldbyname('TREB_HORAS_DIA_AIXECAT').IsNull then InsCHART.ParamByName('EHC4').clear
  else if qVIP2.Fieldbyname('TREB_HORAS_DIA_AIXECAT').asinteger = 99 then InsCHART.ParamByName('EHC4').AsInteger := -1
       else InsCHART.ParamByName('EHC4').AsInteger := qVIP2.Fieldbyname('TREB_HORAS_DIA_AIXECAT').Asinteger;

  // NOMÉS SI LA PERSONA PATEIX DC.
  // Quant temps hi ha alguna persona a casa seva per ajudar-lo en activitats tals com pressa de decisions, recordar activitats,...?
  if qVIP2.Fieldbyname('TREB_DC_PERSONA_A_CASA_SEVA').isnull then InsCHART.ParamByName('EHC2').clear
  else if qVIP2.Fieldbyname('TREB_DC_PERSONA_A_CASA_SEVA').Asinteger = 7 then InsCHART.ParamByName('EHC2').AsInteger := -1
       else InsCHART.ParamByName('EHC2').AsInteger := qVIP2.Fieldbyname('TREB_DC_PERSONA_A_CASA_SEVA').Asinteger - 1;

  // idem fora de casa?
  if qVIP2.Fieldbyname('TREB_DC_PERSONA_AMB_VOSTE').isnull then InsCHART.ParamByName('EHC3').clear
  else if qVIP2.Fieldbyname('TREB_DC_PERSONA_AMB_VOSTE').Asinteger = 4 then InsCHART.ParamByName('EHC3').AsInteger := -1
       else InsCHART.ParamByName('EHC3').AsInteger := qVIP2.Fieldbyname('TREB_DC_PERSONA_AMB_VOSTE').Asinteger;

  // Núm. d'hores/setmana a l'escola/estudiant
  if qVIP2.Fieldbyname('TREB_HORAS_SETMANA_ESTUDIANT').isnull then InsCHART.ParamByName('EHC8').clear
  else if qVIP2.Fieldbyname('TREB_HORAS_SETMANA_ESTUDIANT').asinteger = 99 then InsCHART.ParamByName('EHC8').AsInteger := -1
       else InsCHART.ParamByName('EHC8').AsInteger := qVIP2.Fieldbyname('TREB_HORAS_SETMANA_ESTUDIANT').Asinteger;

  // Es considera autosuficient des de el punt de vista econòmic
  if qVIP2.Fieldbyname('PSI_AUTOSUFICIENT_ECONOMICAMENT').IsNull then InsCHART.ParamByName('EHC18_1').clear
  else if qVIP2.Fieldbyname('PSI_AUTOSUFICIENT_ECONOMICAMENT').asstring = 'S' then InsCHART.ParamByName('EHC18_1').asstring := 'S'
       else InsCHART.ParamByName('EHC18_1').asstring := 'N';

  // Rep suport econòmic de la seva família   1-No, 2-Esporàdicament, 3-Sempre, 4-Sí.
  if qVIP2.Fieldbyname('PSI_TE_SUPORT_ECONOMIC').asstring = '' then InsCHART.ParamByName('EHC18_2').clear
  else if qVIP2.Fieldbyname('PSI_TE_SUPORT_ECONOMIC').asstring = 'S' then InsCHART.ParamByName('EHC18_2').asinteger := 4
       else InsCHART.ParamByName('EHC18_2').asinteger := 1;

  // el darrer any, ha tingut despeses sanitàries no cobertes per la Seg. Social
  if qVIP2.Fieldbyname('PSI_DESP_SANIT_NO_PAGA_SEG_SOC').isnull then InsCHART.ParamByName('EHC19_1').clear
  else InsCHART.ParamByName('EHC19_1').asstring := qVIP2.Fieldbyname('PSI_DESP_SANIT_NO_PAGA_SEG_SOC').asstring;

  // Quantitat
  InsCHART.ParamByName('EHC19_2').clear;
  if qVIP2.Fieldbyname('PSI_QUANTIT_DESP_SANIT_NO_SEGSO').AsString <> '' then
  begin
      if (qVIP2.Fieldbyname('PSI_QUANTIT_DESP_SANIT_NO_SEGSO').AsString = '1000')
      or (qVIP2.Fieldbyname('PSI_QUANTIT_DESP_SANIT_NO_SEGSO').AsString = '<1000€')
      then InsCHART.ParamByName('EHC19_2').AsInteger := 1;

      if (qVIP2.Fieldbyname('PSI_QUANTIT_DESP_SANIT_NO_SEGSO').AsString = '1001')
      or (qVIP2.Fieldbyname('PSI_QUANTIT_DESP_SANIT_NO_SEGSO').AsString = '2000')
      or (qVIP2.Fieldbyname('PSI_QUANTIT_DESP_SANIT_NO_SEGSO').AsString = '>1000 <2000€')
      then InsCHART.ParamByName('EHC19_2').AsInteger := 2;

      if (qVIP2.Fieldbyname('PSI_QUANTIT_DESP_SANIT_NO_SEGSO').AsString = '>2000€')
      then InsCHART.ParamByName('EHC19_2').AsInteger := 3;
  end;

  // Núm. d'hores/setmana de feina remunerada
  if qVIP2.Fieldbyname('TREB_HORES_SETMANA_REMUNERADES').isnull then InsCHART.ParamByName('EHC7').clear
  else InsCHART.ParamByName('EHC7').AsInteger := qVIP2.Fieldbyname('TREB_HORES_SETMANA_REMUNERADES').Asinteger;

  // Núm. de contactes de negocis/mes
  if qVIP2.Fieldbyname('TREB_CONTACTES_MES_DE_NEGOCIS').isnull then InsCHART.ParamByName('EHC15').clear
  else if qVIP2.Fieldbyname('TREB_CONTACTES_MES_DE_NEGOCIS').asinteger >= 10 then InsCHART.ParamByName('EHC15').asinteger := 10
       else InsCHART.ParamByName('EHC15').asinteger := qVIP2.Fieldbyname('TREB_CONTACTES_MES_DE_NEGOCIS').asinteger;

  // Núm. de dies/setmana fora de casa
  if qVIP2.Fieldbyname('TREB_DIES_SETMANA_FORA_CASA').isnull then InsCHART.ParamByName('EHC5').clear
  else if qVIP2.Fieldbyname('TREB_DIES_SETMANA_FORA_CASA').asinteger = 99 then InsCHART.ParamByName('EHC5').asinteger := -1
       else InsCHART.ParamByName('EHC5').AsInteger := qVIP2.Fieldbyname('TREB_DIES_SETMANA_FORA_CASA').Asinteger;

  // Núm. de nits fora de casa durant l'any passat
  if qVIP2.Fieldbyname('TREB_NITS_FORA_CASA_ANY_PASSAT').isnull then InsCHART.ParamByName('EHC6').clear
  else if qVIP2.Fieldbyname('TREB_NITS_FORA_CASA_ANY_PASSAT').asinteger = 99 then InsCHART.ParamByName('EHC6').asinteger := -1
       else begin
           if qVIP2.Fieldbyname('TREB_NITS_FORA_CASA_ANY_PASSAT').Asinteger = 0 then InsCHART.ParamByName('EHC6').AsInteger := 0;
           if qVIP2.Fieldbyname('TREB_NITS_FORA_CASA_ANY_PASSAT').Asinteger in[1,2] then InsCHART.ParamByName('EHC6').AsInteger := 1;
           if qVIP2.Fieldbyname('TREB_NITS_FORA_CASA_ANY_PASSAT').Asinteger in[3,4] then InsCHART.ParamByName('EHC6').AsInteger := 2;
           if qVIP2.Fieldbyname('TREB_NITS_FORA_CASA_ANY_PASSAT').Asinteger > 4 then InsCHART.ParamByName('EHC6').AsInteger := 3;
       end;

  // Núm. d'hores/setmana en tasques domèstiques
  if qVIP2.Fieldbyname('TREB_HORAS_SETMANA_TASQ_DOMESTI').isnull then InsCHART.ParamByName('EHC9').clear
  else if qVIP2.Fieldbyname('TREB_HORAS_SETMANA_TASQ_DOMESTI').asinteger = 99 then InsCHART.ParamByName('EHC9').asinteger := -1
       else InsCHART.ParamByName('EHC9').AsInteger := qVIP2.Fieldbyname('TREB_HORAS_SETMANA_TASQ_DOMESTI').Asinteger;

  // Núm. d'hores/setmana en el manteniment de la llar
  if qVIP2.Fieldbyname('TREB_HORAS_SETMANA_MANT_HOGAR').isnull then InsCHART.ParamByName('EHC10').clear
  else if qVIP2.Fieldbyname('TREB_HORAS_SETMANA_MANT_HOGAR').asinteger = 99 then InsCHART.ParamByName('EHC10').asinteger := -1
       else InsCHART.ParamByName('EHC10').AsInteger := qVIP2.Fieldbyname('TREB_HORAS_SETMANA_MANT_HOGAR').Asinteger;

  // Núm. d'hores/setmana en activitats d'oci
  if qVIP2.Fieldbyname('TREB_HORAS_SETMANA_OCI').isnull then InsCHART.ParamByName('EHC11').clear
  else if qVIP2.Fieldbyname('TREB_HORAS_SETMANA_OCI').asinteger = 99 then InsCHART.ParamByName('EHC11').asinteger := -1
       else InsCHART.ParamByName('EHC11').AsInteger := qVIP2.Fieldbyname('TREB_HORAS_SETMANA_OCI').Asinteger;

  // Núm. de contactes/mes amb els amics
  if qVIP2.Fieldbyname('TREB_CONTACTES_AMB_AMICS').isnull then InsCHART.ParamByName('EHC16').clear
  else if qVIP2.Fieldbyname('TREB_CONTACTES_AMB_AMICS').asinteger = 99 then InsCHART.ParamByName('EHC16').AsInteger := -1
       else
           if qVIP2.Fieldbyname('TREB_CONTACTES_AMB_AMICS').asinteger > 4 then InsCHART.ParamByName('EHC16').AsInteger := 5
           else InsCHART.ParamByName('EHC16').AsInteger := qVIP2.Fieldbyname('TREB_CONTACTES_AMB_AMICS').asinteger;

  // Amb quants desconeguts pot haver iniciat una conversació al mes
  if qVIP2.Fieldbyname('TREB_CONVERSACIONS_DESCONEG_MES').isnull then InsCHART.ParamByName('EHC17').clear
  else if qVIP2.Fieldbyname('TREB_CONVERSACIONS_DESCONEG_MES').asinteger = 99 then InsCHART.ParamByName('EHC17').asinteger := -1
       else begin
           if qVIP2.Fieldbyname('TREB_CONVERSACIONS_DESCONEG_MES').Asinteger = 0 then InsCHART.ParamByName('EHC17').AsInteger := 0;
           if qVIP2.Fieldbyname('TREB_CONVERSACIONS_DESCONEG_MES').Asinteger in[1,2] then InsCHART.ParamByName('EHC17').AsInteger := 1;
           if qVIP2.Fieldbyname('TREB_CONVERSACIONS_DESCONEG_MES').Asinteger in[3,4,5] then InsCHART.ParamByName('EHC17').AsInteger := 2;
           if qVIP2.Fieldbyname('TREB_CONVERSACIONS_DESCONEG_MES').Asinteger > 5 then InsCHART.ParamByName('EHC17').AsInteger := 3;
       end;

  InsCHART.ExecSQL;
  cont_insertats := cont_insertats + 1;
end;

procedure Twmain.sbEfaClick(Sender: TObject);
begin
  lLlegits.Caption := 'Registres llegits de VIP:';
  lInsertats.Caption := 'Registres insertats a EFA:';
  cont_insertats := 0;

  InsEFA.Close;
  qVIP2.Close;
  if (eclaumin.text <> '') then qVIP2.SQL[26] := 'and id >='+eclaumin.text else qVIP2.SQL[26] := '';
  if (eclaumax.text <> '') then qVIP2.SQL[27] := 'and id <='+eclaumax.text else qVIP2.SQL[27] := '';
  qVIP2.Open;

  while (not qVIP2.Eof) do
  begin
     if hihainfo(1) then TraspasEFA;
     qVIP2.Next;
  end;

  literal.Visible := true;
  lLlegits.Visible := true;
  eLlegits.Visible := true;
  lInsertats.Visible := true;
  eInsertats.Visible := True;
  ellegits.Text := inttostr(qVIP2.RecordCount);
  eINsertats.Text := inttostr(cont_insertats);

  qVIP2.Close;
  InsEFA.Close;

  sbEsig1av.Enabled := false;
  sbEsigSeg.Enabled := false;
  sbChart.Enabled := false;
  sbefa.Enabled := false;
  sbAsia.Enabled := false;
  sbBateria.Enabled := false;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;      

  rbTots.Checked := False;
  rbTram.Checked := False;
end;

procedure twmain.TraspasEFA;
var
  entrada : integer;
begin
  InsEFA.ParamByName('id').asinteger := GutSelect('select max(id) from ESCEFA',[]) + 1;
  InsEFA.ParamByName('c_tractament').AsInteger := qVIP2.FieldByName('c_tractament').AsInteger;
  InsEFA.ParamByName('c_historia').AsInteger := qVIP2.FieldByName('c_historia').AsInteger;
  InsEFA.ParamByName('c_usuari').Asstring := qVIP2.FieldByName('UsuariAS').Asstring;
  InsEFA.ParamByName('data').AsDateTime := qVIP2.FieldByName('dataAS').AsDateTime;
  // al VIP no hi ha diferents entrades ==> el calculo jo per NHC
  entrada := GutSelect('select max(c_entrada) from escefa where c_historia = %d',[qVIP2.FieldByName('c_historia').AsInteger]);
  InsEFA.ParamByName('c_entrada').AsInteger := entrada + 1;
  // al VIP no es poden anul·lar ni validar valoracions.
  InsEFA.ParamByName('anulat').Asstring := 'N';
  InsEFA.ParamByName('data_anulat').Clear;
  InsEFA.ParamByName('c_validador').clear;
  InsEFA.ParamByName('data_validat').clear;

  // En els últims 12 mesos, amb quina freqüència, a casa seva, les actituds d'altres persones envers a vostè han estat un problema
  if qVIP2.FieldByName('TREB_MAL_ACTIT_PERSON_A_CASA').IsNull then InsEFA.ParamByName('EFA8').clear
  else if qVIP2.FieldByName('TREB_MAL_ACTIT_PERSON_A_CASA').asinteger = 5 then InsEFA.ParamByName('EFA8').asinteger := -2
       else if qVIP2.FieldByName('TREB_MAL_ACTIT_PERSON_A_CASA').asinteger = 9 then InsEFA.ParamByName('EFA8').asinteger := -1
            else InsEFA.ParamByName('EFA8').asinteger := qVIP2.FieldByName('TREB_MAL_ACTIT_PERSON_A_CASA').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_CASA').IsNull then InsEFA.ParamByName('EFA8_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_CASA').asstring = 'CAP' then InsEFA.ParamByName('EFA8_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_CASA').asstring = 'PETIT' then InsEFA.ParamByName('EFA8_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_CASA').asstring = 'GRAN' then InsEFA.ParamByName('EFA8_P').asinteger := 2
                 else InsEFA.ParamByName('EFA8_P').asinteger := -1;

  // En els últims 12 mesos, amb quina freqüència ha necessitat l'ajuda d'algú a casa seva i no l'ha aconseguit fàcilment
  if qVIP2.FieldByName('TREB_NECESITAT_AJUD_A_CASA').IsNull then InsEFA.ParamByName('EFA6').clear
  else if qVIP2.FieldByName('TREB_NECESITAT_AJUD_A_CASA').asinteger = 9 then InsEFA.ParamByName('EFA6').asinteger := -1
       else InsEFA.ParamByName('EFA6').asinteger := qVIP2.FieldByName('TREB_NECESITAT_AJUD_A_CASA').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_CASA').IsNull then InsEFA.ParamByName('EFA6_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_CASA').asstring = 'CAP' then InsEFA.ParamByName('EFA6_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_CASA').asstring = 'PETIT' then InsEFA.ParamByName('EFA6_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_CASA').asstring = 'GRAN' then InsEFA.ParamByName('EFA6_P').asinteger := 2
                 else InsEFA.ParamByName('EFA6_P').asinteger := -1;

  // En els últims 12 mesos, amb quina freqüència la disponibilitat de transport ha estat un problema per a vostè
  if qVIP2.FieldByName('TREB_FREQ_PROBLEM_DISP_TRANSP').IsNull then InsEFA.ParamByName('EFA1').clear
  else if qVIP2.FieldByName('TREB_FREQ_PROBLEM_DISP_TRANSP').asinteger = 9 then InsEFA.ParamByName('EFA1').asinteger := -1
       else InsEFA.ParamByName('EFA1').asinteger := qVIP2.FieldByName('TREB_FREQ_PROBLEM_DISP_TRANSP').asinteger;

  //Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_TRANSP').IsNull then InsEFA.ParamByName('EFA1_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_TRANSP').asstring = 'CAP' then InsEFA.ParamByName('EFA1_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_TRANSP').asstring = 'PETIT' then InsEFA.ParamByName('EFA1_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_TRANSP').asstring = 'GRAN' then InsEFA.ParamByName('EFA1_P').asinteger := 2
                 else InsEFA.ParamByName('EFA1_P').asinteger := -1;

  // En els últims 12 mesos, amb quina freqüència el medi natural (temperatura, clima, terreny,...) li va dificultar fer allò que volia o necessitava fer
  if qVIP2.FieldByName('TREB_FREQ_PROBLEM_MEDI_NATURAL').IsNull then InsEFA.ParamByName('EFA2').clear
  else if qVIP2.FieldByName('TREB_FREQ_PROBLEM_MEDI_NATURAL').asinteger = 9 then InsEFA.ParamByName('EFA2').asinteger := -1
       else InsEFA.ParamByName('EFA2').asinteger := qVIP2.FieldByName('TREB_FREQ_PROBLEM_MEDI_NATURAL').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_MEDI_NAT').IsNull then InsEFA.ParamByName('EFA2_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_MEDI_NAT').asstring = 'CAP' then InsEFA.ParamByName('EFA2_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_MEDI_NAT').asstring = 'PETIT' then InsEFA.ParamByName('EFA2_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_MEDI_NAT').asstring = 'GRAN' then InsEFA.ParamByName('EFA2_P').asinteger := 2
                 else InsEFA.ParamByName('EFA2_P').asinteger := -1;

   // En els últims 12 mesos, amb quina freqüència altres aspectes del seu entorn (llum, sorolls, multituds,...) li va dificultar fer allò que volia o necessitava fer
  if qVIP2.FieldByName('TREB_FREQ_PROBLEM_ENTORN').IsNull then InsEFA.ParamByName('EFA3').clear
  else if qVIP2.FieldByName('TREB_FREQ_PROBLEM_ENTORN').asinteger = 9 then InsEFA.ParamByName('EFA3').asinteger := -1
       else InsEFA.ParamByName('EFA3').asinteger := qVIP2.FieldByName('TREB_FREQ_PROBLEM_ENTORN').asinteger;

   // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_ENTORN').IsNull then InsEFA.ParamByName('EFA3_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_ENTORN').asstring = 'CAP' then InsEFA.ParamByName('EFA3_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_ENTORN').asstring = 'PETIT' then InsEFA.ParamByName('EFA3_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_ENTORN').asstring = 'GRAN' then InsEFA.ParamByName('EFA3_P').asinteger := 2
                 else InsEFA.ParamByName('EFA3_P').asinteger := -1;

   // En els últims 12 mesos, amb quina freqüència la informació que volia o necessitava no ha estat disponible en un format que vostè podia utilitzar o entendre
  if qVIP2.FieldByName('TREB_FREQ_PROBLEM_DISP_TRANSP').IsNull then InsEFA.ParamByName('EFA4').clear
  else if qVIP2.FieldByName('TREB_FREQ_PROBLEM_DISP_TRANSP').asinteger = 9 then InsEFA.ParamByName('EFA4').asinteger := -1
       else InsEFA.ParamByName('EFA4').asinteger := qVIP2.FieldByName('TREB_FREQ_PROBLEM_DISP_TRANSP').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_INFORMACIO').IsNull then InsEFA.ParamByName('EFA4_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_INFORMACIO').asstring = 'CAP' then InsEFA.ParamByName('EFA4_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_INFORMACIO').asstring = 'PETIT' then InsEFA.ParamByName('EFA4_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_INFORMACIO').asstring = 'GRAN' then InsEFA.ParamByName('EFA4_P').asinteger := 2
                 else InsEFA.ParamByName('EFA4_P').asinteger := -1;

  // En els últims 12 mesos, amb quina freqüència ha necessitat l'ajuda d'algú a l'escola o a la feina i no l'ha aconseguit fàcilment
  if qVIP2.FieldByName('TREB_NECESITAT_AJUD_A_FEINA').IsNull then InsEFA.ParamByName('EFA7').clear
  else if qVIP2.FieldByName('TREB_NECESITAT_AJUD_A_FEINA').asinteger = 9 then InsEFA.ParamByName('EFA7').asinteger := -1
       else InsEFA.ParamByName('EFA7').asinteger := qVIP2.FieldByName('TREB_NECESITAT_AJUD_A_FEINA').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_FEINA').IsNull then InsEFA.ParamByName('EFA7_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_FEINA').asstring = 'CAP' then InsEFA.ParamByName('EFA7_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_FEINA').asstring = 'PETIT' then InsEFA.ParamByName('EFA7_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_NO_AJUD_A_FEINA').asstring = 'GRAN' then InsEFA.ParamByName('EFA7_P').asinteger := 2
                 else InsEFA.ParamByName('EFA7_P').asinteger := -1;

   // En els últims 12 mesos, amb quina freqüència les actituds d'altres persones envers a vostè han estat un problema al centre d'estudis o a la feina
  if qVIP2.FieldByName('TREB_MAL_ACTIT_PERSON_TREBALL').IsNull then InsEFA.ParamByName('EFA9').clear
  else if qVIP2.FieldByName('TREB_MAL_ACTIT_PERSON_TREBALL').asinteger = 9 then InsEFA.ParamByName('EFA9').asinteger := -1
       else InsEFA.ParamByName('EFA9').asinteger := qVIP2.FieldByName('TREB_MAL_ACTIT_PERSON_TREBALL').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_TREBALL').IsNull then InsEFA.ParamByName('EFA9_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_TREBALL').asstring = 'CAP' then InsEFA.ParamByName('EFA9_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_TREBALL').asstring = 'PETIT' then InsEFA.ParamByName('EFA9_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_ACTI_PERS_TREBALL').asstring = 'GRAN' then InsEFA.ParamByName('EFA9_P').asinteger := 2
                 else InsEFA.ParamByName('EFA9_P').asinteger := -1;

  // En els últims 12 mesos, amb quina freqüència la disponibilitat dels serveis de salut i serveis mèdics han estat un problema per a vostè
  if qVIP2.FieldByName('TREB_DISP_SERV_SALUD').IsNull then InsEFA.ParamByName('EFA5').clear
  else if qVIP2.FieldByName('TREB_DISP_SERV_SALUD').asinteger = 9 then InsEFA.ParamByName('EFA5').asinteger := -1
       else InsEFA.ParamByName('EFA5').asinteger := qVIP2.FieldByName('TREB_DISP_SERV_SALUD').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_SERV_SALUD').IsNull then InsEFA.ParamByName('EFA5_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_SERV_SALUD').asstring = 'CAP' then InsEFA.ParamByName('EFA5_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_SERV_SALUD').asstring = 'PETIT' then InsEFA.ParamByName('EFA5_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_SERV_SALUD').asstring = 'GRAN' then InsEFA.ParamByName('EFA5_P').asinteger := 2
                 else InsEFA.ParamByName('EFA5_P').asinteger := -1;

  // En els últims 12 mesos, amb quina freqüència ha sentit prejudicis o s'ha sentit discriminat
  if qVIP2.FieldByName('TREB_SENTIT_PREJUICIS').IsNull then InsEFA.ParamByName('EFA10').clear
  else if qVIP2.FieldByName('TREB_SENTIT_PREJUICIS').asinteger = 9 then InsEFA.ParamByName('EFA10').asinteger := -1
       else InsEFA.ParamByName('EFA10').asinteger := qVIP2.FieldByName('TREB_SENTIT_PREJUICIS').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_SENTIT_PREJUICIS').IsNull then InsEFA.ParamByName('EFA10_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_SENTIT_PREJUICIS').asstring = 'CAP' then InsEFA.ParamByName('EFA10_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_SENTIT_PREJUICIS').asstring = 'PETIT' then InsEFA.ParamByName('EFA10_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_SENTIT_PREJUICIS').asstring = 'GRAN' then InsEFA.ParamByName('EFA10_P').asinteger := 2
                 else InsEFA.ParamByName('EFA10_P').asinteger := -1;

  // En els últims 12 mesos, amb quina freqüència les polítiques, normes de negocis i de les institucions li han provocat algun problema
  if qVIP2.FieldByName('TREB_POLIT_NORMES_INTITUCIONS').IsNull then InsEFA.ParamByName('EFA11').clear
  else if qVIP2.FieldByName('TREB_POLIT_NORMES_INTITUCIONS').asinteger = 9 then InsEFA.ParamByName('EFA11').asinteger := -1
       else InsEFA.ParamByName('EFA11').asinteger := qVIP2.FieldByName('TREB_POLIT_NORMES_INTITUCIONS').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_POLIT_NORMES').IsNull then InsEFA.ParamByName('EFA11_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_POLIT_NORMES').asstring = 'CAP' then InsEFA.ParamByName('EFA11_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_POLIT_NORMES').asstring = 'PETIT' then InsEFA.ParamByName('EFA11_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_POLIT_NORMES').asstring = 'GRAN' then InsEFA.ParamByName('EFA11_P').asinteger := 2
                 else InsEFA.ParamByName('EFA11_P').asinteger := -1;

  // En els últims 12 mesos, amb quina freqüència els programes i polítiques del govern o administracions públiques li han creat dificultats per fer allò que volia o necessitava fer
  if qVIP2.FieldByName('TREB_GOBERN_ADMINIST_DIFICULT').IsNull then InsEFA.ParamByName('EFA12').clear
  else if qVIP2.FieldByName('TREB_GOBERN_ADMINIST_DIFICULT').asinteger = 9 then InsEFA.ParamByName('EFA12').asinteger := -1
       else InsEFA.ParamByName('EFA12').asinteger := qVIP2.FieldByName('TREB_GOBERN_ADMINIST_DIFICULT').asinteger;

  // Quan això succeeix, , li representa un problema
  if qVIP2.FieldByName('TREB_PROBLEM_GOBERN_ADMINIST').IsNull then InsEFA.ParamByName('EFA12_P').clear
  else if qVIP2.FieldByName('TREB_PROBLEM_GOBERN_ADMINIST').asstring = 'CAP' then InsEFA.ParamByName('EFA12_P').asinteger := 0
       else if qVIP2.FieldByName('TREB_PROBLEM_GOBERN_ADMINIST').asstring = 'PETIT' then InsEFA.ParamByName('EFA12_P').asinteger := 1
            else if qVIP2.FieldByName('TREB_PROBLEM_GOBERN_ADMINIST').asstring = 'GRAN' then InsEFA.ParamByName('EFA12_P').asinteger := 2
                 else InsEFA.ParamByName('EFA12_P').asinteger := -1;


  InsEFA.ExecSQL;
  cont_insertats := cont_insertats + 1;
end;

procedure Twmain.sbAsiaClick(Sender: TObject);
begin
  lLlegits.Caption := 'Registres llegits de ESCALESCAP:';
  lInsertats.Caption := 'Registres insertats a ESCASIA:';
  cont_insertats := 0;

  qEscLIN.Close;
  qEscCAP.Close;
  qEscCAP.ParamByName('c_escala').AsInteger := 8;
  if (eclaumin.text <> '') then qEscCAP.SQL[2] := 'and clau >='+eclaumin.text else qEscCAP.SQL[2] := '';
  if (eclaumax.text <> '') then qEscCAP.SQL[3] := 'and clau <='+eclaumax.text else qEscCAP.SQL[3] := '';
  qEscCAP.Open;
  qEscLIN.Open;

  while (not qEscCAP.Eof) do
  begin
     TraspasASIA;
     qEscCAP.Next;
  end;

  literal.Visible := true;
  lLlegits.Visible := true;
  eLlegits.Visible := true;
  lInsertats.Visible := true;
  eInsertats.Visible := True;
  ellegits.Text := inttostr(qEscCAP.RecordCount);
  eINsertats.Text := inttostr(cont_insertats);

  qEscLIN.Close;
  qEscCAP.Close;

  sbEsig1av.Enabled := false;
  sbEsigSeg.Enabled := false;
  sbChart.Enabled := false;
  sbefa.Enabled := false;
  sbAsia.Enabled := false;
  sbBateria.Enabled := false;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;      

  rbTots.Checked := False;
  rbTram.Checked := False;
end;

procedure Twmain.TraspasASIA;
begin
    InsASIA.ParamByName('id').AsInteger := GutSelect('select max(ID) from ESCASIA',[]) + 1;

    InsASIA.ParamByName('c_tractament').Assign(qEscCAP.FieldByName('C_tractament'));
    InsASIA.ParamByName('c_historia'  ).Assign(qEscCAP.FieldByName('C_historia'  ));
    InsASIA.ParamByName('c_usuari'    ).Assign(qEscCAP.FieldByName('C_usuari'    ));
    InsASIA.ParamByName('data'        ).Assign(qEscCAP.FieldByName('Data'        ));
    InsASIA.ParamByName('c_entrada'   ).Assign(qEscCAP.FieldByName('C_Entrada'   ));
    InsASIA.ParamByName('anulat'      ).Assign(qEscCAP.FieldByName('Anulat'      ));

    if qEscCAP.FieldByName('data_anulat' ).IsNull then InsASIA.ParamByName('data_anulat' ).Clear
                                                  else InsASIA.ParamByName('data_anulat' ).AsDateTime := qEscCAP.FieldByName('Data_Anulat' ).AsDateTime;

    if qEscCAP.FieldByName('c_validador' ).IsNull then InsASIA.ParamByName('c_validador' ).Clear
                                                  else InsASIA.ParamByName('c_validador' ).AsString   := qEscCAP.FieldByName('C_Validador' ).Asstring;

    if qEscCAP.FieldByName('data_validat').IsNull then InsASIA.ParamByName('data_validat').Clear
                                                  else InsASIA.ParamByName('data_validat').AsDateTime := qEscCAP.FieldByName('Data_Validat').AsDateTime;


    if qEscLIN.Locate('C_ITEM',  85, []) then InsASIA.ParamByName('Motor_D_Total' ).AsInteger := qEscLIN.FieldByName('D_Item').AsInteger
                                         else InsASIA.ParamByName('Motor_D_Total' ).Clear;
    if qEscLIN.Locate('C_ITEM',  86, []) then InsASIA.ParamByName('Motor_E_Total' ).AsInteger := qEscLIN.FieldByName('D_Item').AsInteger
                                         else InsASIA.ParamByName('Motor_E_Total' ).Clear;
    if qEscLIN.Locate('C_ITEM',  87, []) then InsASIA.ParamByName('Motor_Total'   ).AsInteger := qEscLIN.FieldByName('D_Item').AsInteger
                                         else InsASIA.ParamByName('Motor_Total'   ).Clear;

    if qEscLIN.Locate('C_ITEM',  91, []) then InsASIA.ParamByName('SensTF_D_Total').AsInteger := qEscLIN.FieldByName('D_Item').AsInteger
                                         else InsASIA.ParamByName('SensTF_D_Total').Clear;
    if qEscLIN.Locate('C_ITEM',  92, []) then InsASIA.ParamByName('SensTF_E_Total').AsInteger := qEscLIN.FieldByName('D_Item').AsInteger
                                         else InsASIA.ParamByName('SensTF_E_Total').Clear;
    if qEscLIN.Locate('C_ITEM',  93, []) then InsASIA.ParamByName('SensTF_Total'  ).AsInteger := qEscLIN.FieldByName('D_Item').AsInteger
                                         else InsASIA.ParamByName('SensTF_Total'  ).Clear;

    if qEscLIN.Locate('C_ITEM',  88, []) then InsASIA.ParamByName('SensD_D_Total' ).AsInteger := qEscLIN.FieldByName('D_Item').AsInteger
                                         else InsASIA.ParamByName('SensD_D_Total' ).Clear;
    if qEscLIN.Locate('C_ITEM',  89, []) then InsASIA.ParamByName('SensD_E_Total' ).AsInteger := qEscLIN.FieldByName('D_Item').AsInteger
                                         else InsASIA.ParamByName('SensD_E_Total' ).Clear;
    if qEscLIN.Locate('C_ITEM',  90, []) then InsASIA.ParamByName('SensD_Total'   ).AsInteger := qEscLIN.FieldByName('D_Item').AsInteger
                                         else InsASIA.ParamByName('SensD_Total'   ).Clear;

    if qEscLIN.Locate('C_ITEM', 209, []) then InsASIA.ParamByName('N_Sens_D'      ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('N_Sens_D'      ).Clear;
    if qEscLIN.Locate('C_ITEM', 210, []) then InsASIA.ParamByName('N_Sens_E'      ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('N_Sens_E'      ).Clear;
    if qEscLIN.Locate('C_ITEM', 207, []) then InsASIA.ParamByName('N_Motor_D'     ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('N_Motor_D'     ).Clear;
    if qEscLIN.Locate('C_ITEM', 208, []) then InsASIA.ParamByName('N_Motor_E'     ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('N_Motor_E'     ).Clear;

    if qEscLIN.Locate('C_ITEM',  94, []) then InsASIA.ParamByName('Complet'       ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('Complet'       ).Clear;
    if qEscLIN.Locate('C_ITEM',  95, []) then InsASIA.ParamByName('Asia'          ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('Asia'          ).Clear;

    if qEscLIN.Locate('C_ITEM', 213, []) then InsASIA.ParamByName('ZPP_Sens_D'    ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('ZPP_Sens_D'    ).Clear;
    if qEscLIN.Locate('C_ITEM', 214, []) then InsASIA.ParamByName('ZPP_Sens_E'    ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('ZPP_Sens_E'    ).Clear;
    if qEscLIN.Locate('C_ITEM', 211, []) then InsASIA.ParamByName('ZPP_Motor_D'   ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('ZPP_Motor_D'   ).Clear;
    if qEscLIN.Locate('C_ITEM', 212, []) then InsASIA.ParamByName('ZPP_Motor_E'   ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('ZPP_Motor_E'   ).Clear;

    if qEscLIN.Locate('C_ITEM', 215, []) then InsASIA.ParamByName('Sindrome'      ).AsString  := Trim(qEscLIN.FieldByName('D_Item').AsString)
                                         else InsASIA.ParamByName('Sindrome'      ).Clear;


    TRY
      InsASIA.ExecSQL;
    EXCEPT
      on e: Exception
      do begin
        ShowMessage(e.Message + #10#13 + 'Registre: EscalesCAP.CLAU = ' + qEscCAP.FieldByName('CLAU').AsString);
        Exit;
      end;
    END;

    cont_insertats := cont_insertats + 1;

      {
      85	1	8	Índex neurològic motor dret
      86	2	8	Índex neurològic motor esq.
      87	3	8	 * * * * * * * * * *  Total  (0-100)
      88	4	8	Índex neurològic sensitiu dolor dret
      89	5	8	Índex neurològic sensitiu dolor esq.
      90	6	8	 * * * * * * * * * *  Total  (0-112)
      91	7	8	Índex neurològic sensitiu tacte fi dret
      92	8	8	Índex neurològic sensitiu tacte fi esq.
      93	9	8	 * * * * * * * * * *  Total  (0-112)
      207	10	8	Nivell neurològic motor dret
      208	11	8	Nivell neurològic motor esquerre
      209	12	8	Nivell neurològic sensitiu dret
      210	13	8	Nivell neurològic sensitiu esquerre
      94	14	8	Complet / Incomplet
      95	15	8	ASIA
      211	16	8	Zona preservació parcial motora dreta
      212	17	8	Zona preservació parcial motora esq.
      213	18	8	Zona preservació parcial sensitiva dreta
      214	19	8	Zona preservació parcial sensitiva esq.
      215	20	8	Síndrome clínica
      }
end;

function Twmain.ValoracioTest: string;
begin
  if qVipNeuroPsico.FieldByName('resultat').asinteger = -1 then result := 'NV'
  else if qVipNeuroPsico.FieldByName('resultat').asinteger = -2 then result := 'NP'
       else begin
         result := '-----';
         if qVipNeuroPsico.FieldByName('afecta_motriu').asstring = 'S' then result[1] := 'M';
         if qVipNeuroPsico.FieldByName('afecta_visual').asstring = 'S' then result[2] := 'V';
         if qVipNeuroPsico.FieldByName('afecta_verbal').asstring = 'S' then result[3] := 'B';
         if qVipNeuroPsico.FieldByName('afecta_auditiva').asstring = 'S' then result[4] := 'A';
         if qVipNeuroPsico.FieldByName('transtorn_c_e').asstring = 'S' then result[5] := 'T';
         if result = '-----' then result := '';
       end;
end;

procedure Twmain.sbBateriaClick(Sender: TObject);
begin
  // no permetre fer-ho per trams.
  if rbTram.Checked then Exit;

  lLlegits.Caption := 'Registres llegits de VIPNEUROPSICO:';
  lInsertats.Caption := 'Registres insertats a ESCBATERIA:';
  cont_insertats := 0;
  cont_erronis:=0;
  panel5.visible:= false;
  mLogErrors.Lines.Clear;

  qVipNeuroPsico.Close;
  qVipNeuroPsico.Open;
  tract_ant:=qVipNeuroPsico.FieldByName('c_tractament').asinteger;
  tract_act:=qVipNeuroPsico.FieldByName('c_tractament').asinteger;
  esprimer:=true;
  tract_ant_nofet:=true;

  while (not qVipNeuroPsico.Eof) do
  begin
     TraspasBATERIA;
     qVipNeuroPsico.Next;
     tract_ant:=tract_act;
     tract_act:=qVipNeuroPsico.FieldByName('c_tractament').asinteger;
  end;

  if mlogerrors.lines.Text <> '' then
  begin
     panel5.Visible := true;
     mLogErrors.Lines.Add('registres erronis:'+inttostr(cont_erronis));
  end;

  literal.Visible := true;
  lLlegits.Visible := true;
  eLlegits.Visible := true;
  lInsertats.Visible := true;
  eInsertats.Visible := True;
  ellegits.Text := inttostr(qVipNeuroPsico.RecordCount);
  eINsertats.Text := inttostr(cont_insertats);

  qVipNeuroPsico.Close;

  sbEsig1av.Enabled := false;
  sbEsigSeg.Enabled := false;
  sbChart.Enabled := false;
  sbefa.Enabled := false;
  sbAsia.Enabled := false;
  sbBateria.Enabled := false;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;    

  rbTots.Checked := False;
  rbTram.Checked := False;
end;

procedure Twmain.TractarBateria;
var
  funcio,test,item:integer;
begin
      // altrament, anem guardant les dades en els corresponents camps
      funcio:= qVipNeuroPsico.FieldByName('funcio').asinteger;
      test:= qVipNeuroPsico.FieldByName('test').asinteger;
      item:= qVipNeuroPsico.FieldByName('item').asinteger;

      if esprimer then
      begin
        InsBATERIA.ParamByName('id').AsInteger := GutSelect('select max(ID) from ESCBATERIA',[]) + 1;

        InsBATERIA.ParamByName('c_tractament').Asinteger  := qVipNeuroPsico.FieldByName('C_tractament').asinteger;
        InsBATERIA.ParamByName('c_historia'  ).Asinteger  := qVipNeuroPsico.FieldByName('C_historia'  ).Asinteger;
        InsBATERIA.ParamByName('C_USUARI'    ).Asstring   := qVipNeuroPsico.FieldByName('USUARINP'    ).AsString;
        InsBATERIA.ParamByName('data'        ).Asdatetime := qVipNeuroPsico.FieldByName('DataNP'      ).asdatetime;
        InsBATERIA.ParamByName('es_revisio'  ).Asstring   := qVipNeuroPsico.FieldByName('es_revisio'  ).asstring;
        InsBATERIA.ParamByName('anulat'      ).AsString   := 'N';
        InsBATERIA.ParamByName('data_anulat' ).Clear;
//        InsBATERIA.ParamByName('c_validador' ).Asstring   := qVipNeuroPsico.FieldByName('USUARINP'    ).asstring;
        InsBATERIA.ParamByName('c_validador' ).Clear;
        InsBATERIA.ParamByName('data_validat').Clear;
        InsBATERIA.ParamByName('c_entrada'   ).AsInteger := GutSelect('select max(c_entrada) from ESCBATERIA where '+
                                                            'c_historia = %d and c_tractament = %d',
                                                            [qVipNeuroPsico.FieldByName('C_historia').asinteger,
                                                            qVipNeuroPsico.FieldByName('C_tractament').asinteger]) + 1;
        if InsBATERIA.ParamByName('es_revisio').asstring = 'S' then InsBATERIA.ParamByName('tipus').asstring := 'S'
        else InsBATERIA.ParamByName('tipus'       ).clear;  // el tipus es posarà amb el traspàs massiu d'ICAS. Per revisions és sempre 'S'.
        esprimer:=false;

        // INICIALITZEM VALORS I VALORACIONS
        InsBATERIA.ParamByName('VORIENTA').Clear;
        InsBATERIA.ParamByName('OPERSONA').Clear;
        InsBATERIA.ParamByName('OESPAI').Clear;
        InsBATERIA.ParamByName('OTEMPS').Clear;
        InsBATERIA.ParamByName('VAWAIS').Clear;
        InsBATERIA.ParamByName('ASPAN').Clear;
        InsBATERIA.ParamByName('VATMTA').Clear;
        InsBATERIA.ParamByName('ATMTA').Clear;
        InsBATERIA.ParamByName('VASTROOP').Clear;
        InsBATERIA.ParamByName('APARAULA').Clear;
        InsBATERIA.ParamByName('ACOLOR').Clear;
        InsBATERIA.ParamByName('APARAULACOLOR').Clear;
        InsBATERIA.ParamByName('VVWAIS').Clear;
        InsBATERIA.ParamByName('VPWAISIII').Clear;
        InsBATERIA.ParamByName('VLREPE').Clear;
        InsBATERIA.ParamByName('LREPETICIOTB').Clear;
        InsBATERIA.ParamByName('VLDENO').Clear;
        InsBATERIA.ParamByName('LDENOMINACIOTB').Clear;
        InsBATERIA.ParamByName('VLCOMP').Clear;
        InsBATERIA.ParamByName('LCOMPRENSIOTB').Clear;
        InsBATERIA.ParamByName('LLAMINATB').Clear;
        InsBATERIA.ParamByName('VLLAMINA').Clear;
        InsBATERIA.ParamByName('VPERCEP').Clear;
        InsBATERIA.ParamByName('VPIMATGES').Clear;
        InsBATERIA.ParamByName('VCONSTRUC').Clear;
        InsBATERIA.ParamByName('VCCUBS').Clear;
        InsBATERIA.ParamByName('VMDIGITS').Clear;
        InsBATERIA.ParamByName('MDIGITS').Clear;
        InsBATERIA.ParamByName('VMLLETRES').Clear;
        InsBATERIA.ParamByName('MLLETRES').Clear;
        InsBATERIA.ParamByName('MRAVLT075').Clear;
        InsBATERIA.ParamByName('VMRAVLT075').Clear;
        InsBATERIA.ParamByName('MRAVLT015').Clear;
        InsBATERIA.ParamByName('VMRAVLT015').Clear;
        InsBATERIA.ParamByName('MRAVLT015R').Clear;
        InsBATERIA.ParamByName('VMRAVLT015R').Clear;
        InsBATERIA.ParamByName('FETMTB').Clear;
        InsBATERIA.ParamByName('VFETMTB').Clear;
        InsBATERIA.ParamByName('VFEWCST').Clear;
        InsBATERIA.ParamByName('FEWCSTC').Clear;
        InsBATERIA.ParamByName('FEWCSTE').Clear;
        InsBATERIA.ParamByName('FESTROOP').Clear;
        // inicialitzo el sumatori PMR
        InsBATERIA.ParamByName('FEPMR').Clear;
        InsBATERIA.ParamByName('VFEPMR').Clear;
      end;

      // (FUNCIO,TEST) --> (1,1) : test orientacio tb
      if (funcio =1) and (test=1) then
      begin
        InsBATERIA.ParamByName('VORIENTA').AsString := ValoracioTest;

        // ITEM 1: OPERSONA
        if (item=1) then if InsBATERIA.ParamByName('VORIENTA').AsString = ''  // si el test és valorable, informar el resultat
                         then InsBATERIA.ParamByName('OPERSONA').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
                         else InsBATERIA.ParamByName('OPERSONA').Clear;

        // ITEM 2: OESPAI
        if (item=2) then if InsBATERIA.ParamByName('VORIENTA').AsString = ''
                         then InsBATERIA.ParamByName('OESPAI').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
                         else InsBATERIA.ParamByName('OESPAI').Clear;

        // ITEM 3: OTEMPS
        if (item=3) then if InsBATERIA.ParamByName('VORIENTA').AsString = ''
                         then InsBATERIA.ParamByName('OTEMPS').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
                         else InsBATERIA.ParamByName('OTEMPS').Clear;
      end;

      // (2,2,4): ASPAN - VAWAIS
      if (funcio=2) and (test=2) and (item=4) then
      begin
        InsBATERIA.ParamByName('VAWAIS').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VAWAIS').AsString = ''
        then InsBATERIA.ParamByName('ASPAN').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('ASPAN').Clear;
      end;

      // (2,3,5): ATMTA - VATMTA
      if (funcio=2) and (test=3) and (item=5) then
      begin
        InsBATERIA.ParamByName('VATMTA').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VATMTA').AsString = ''
        then InsBATERIA.ParamByName('ATMTA').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('ATMTA').Clear;
      end;

      // (FUNCIO,TEST) --> (2,4) : test de Stroop
      if (funcio =2) and (test=4) then
      begin
        InsBATERIA.ParamByName('VASTROOP').AsString := ValoracioTest;

        // ITEM 6: APARAULA
        if (item=6) then if InsBATERIA.ParamByName('VASTROOP').AsString = ''
                         then InsBATERIA.ParamByName('APARAULA').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
                         else InsBATERIA.ParamByName('APARAULA').Clear;

        // ITEM 7: ACOLOR
        if (item=7) then if InsBATERIA.ParamByName('VASTROOP').AsString = ''
                         then InsBATERIA.ParamByName('ACOLOR').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
                         else InsBATERIA.ParamByName('ACOLOR').Clear;

        // ITEM 8: APARAULACOLOR
        if (item=8) then if InsBATERIA.ParamByName('VASTROOP').AsString = ''
                         then InsBATERIA.ParamByName('APARAULACOLOR').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
                         else InsBATERIA.ParamByName('APARAULACOLOR').Clear;
      end;

      // (3,5,9): VPWAISIII - VVWAIS
      if (funcio=3) and (test=5) and (item=9) then
      begin
        InsBATERIA.ParamByName('VVWAIS').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VVWAIS').AsString = ''
        then InsBATERIA.ParamByName('VPWAISIII').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('VPWAISIII').Clear;
      end;

      // (4,6,10): LREPETICIOTB - VLREPE
      if (funcio=4) and (test=6) and (item=10) then
      begin
        InsBATERIA.ParamByName('VLREPE').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VLREPE').AsString = ''
        then InsBATERIA.ParamByName('LREPETICIOTB').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('LREPETICIOTB').Clear;
      end;

      // (4,7,11): LDENOMINACIOTB - VLDENO
      if (funcio=4) and (test=7) and (item=11) then
      begin
        if qVipNeuroPsico.FieldByName('es_revisio').asstring = 'S' then
        begin
            InsBATERIA.ParamByName('VLLAMINA').AsString := ValoracioTest;

            if InsBATERIA.ParamByName('VLLAMINA').AsString = ''
            then InsBATERIA.ParamByName('LLAMINATB').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
            else InsBATERIA.ParamByName('LLAMINATB').Clear;
        end
        else begin
            InsBATERIA.ParamByName('VLDENO').AsString := ValoracioTest;

            if InsBATERIA.ParamByName('VLDENO').AsString = ''
            then InsBATERIA.ParamByName('LDENOMINACIOTB').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
            else InsBATERIA.ParamByName('LDENOMINACIOTB').Clear;
        end;
      end;

      // (4,8,12): LCOMPRENSIOTB - VLCOMP
      if (funcio=4) and (test=8) and (item=12) then
      begin
        InsBATERIA.ParamByName('VLCOMP').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VLCOMP').AsString = ''
        then InsBATERIA.ParamByName('LCOMPRENSIOTB').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('LCOMPRENSIOTB').Clear;
      end;

      // (5,9,13): VPIMATGES - VPERCEP
      if (funcio=5) and (test=9) and (item=13) then
      begin
        InsBATERIA.ParamByName('VPERCEP').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VPERCEP').AsString = ''
        then InsBATERIA.ParamByName('VPIMATGES').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('VPIMATGES').Clear;
      end;

      // (6,10,14): VCCUBS - VCONSTRUC
      if (funcio=6) and (test=10) and (item=14) then
      begin
        InsBATERIA.ParamByName('VCONSTRUC').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VCONSTRUC').AsString = ''
        then InsBATERIA.ParamByName('VCCUBS').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('VCCUBS').Clear;
      end;

      // (7,11,15): MDIGITS - VMDIGITS
      if (funcio=7) and (test=11) and (item=15) then
      begin
        InsBATERIA.ParamByName('VMDIGITS').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VMDIGITS').AsString = ''
        then InsBATERIA.ParamByName('MDIGITS').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('MDIGITS').Clear;
      end;

      // (7,12,16): MLLETRES - VMLLETRES
      if (funcio=7) and (test=12) and (item=16) then
      begin
        InsBATERIA.ParamByName('VMLLETRES').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VMLLETRES').AsString =  ''
        then InsBATERIA.ParamByName('MLLETRES').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('MLLETRES').Clear;
      end;

      // (7,14,20): MRAVLT075 - VMRAVLT075
      if (funcio=7) and (test=14) and (item=20) then
      begin
        InsBATERIA.ParamByName('VMRAVLT075').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VMRAVLT075').AsString = ''
        then InsBATERIA.ParamByName('MRAVLT075').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('MRAVLT075').Clear;
      end;

      // (7,18,28): MRAVLT015 - VMRAVLT015
      if (funcio=7) and (test=18) and (item=28) then
      begin
        InsBATERIA.ParamByName('VMRAVLT015').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VMRAVLT015').AsString = ''
        then InsBATERIA.ParamByName('MRAVLT015').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('MRAVLT015').Clear;
      end;

      // (7,19,29): MRAVLT015R - VMRAVLT015R
      if (funcio=7) and (test=19) and (item=29) then
      begin
        InsBATERIA.ParamByName('VMRAVLT015R').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VMRAVLT015R').AsString = ''
        then InsBATERIA.ParamByName('MRAVLT015R').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('MRAVLT015R').Clear;
      end;

      // (8,15,21): FETMTB - VFETMTB
      if (funcio=8) and (test=15) and (item=21) then
      begin
        InsBATERIA.ParamByName('VFETMTB').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VFETMTB').AsString = ''
        then InsBATERIA.ParamByName('FETMTB').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('FETMTB').Clear;
      end;

      // (FUNCIO,TEST) --> (8,16) : test WCST
      if (funcio =8) and (test=16) then
      begin
        InsBATERIA.ParamByName('VFEWCST').AsString := ValoracioTest;

        // ITEM 22: FEWCSTC
        if (item=22) then if InsBATERIA.ParamByName('VFEWCST').AsString = ''
                         then InsBATERIA.ParamByName('FEWCSTC').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
                         else InsBATERIA.ParamByName('FEWCSTC').Clear;

        // ITEM 23: FEWCSTE
        if (item=23) then if InsBATERIA.ParamByName('VFEWCST').AsString = ''
                         then InsBATERIA.ParamByName('FEWCSTE').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
                         else InsBATERIA.ParamByName('FEWCSTE').Clear;
      end;

      // (8,4,24): FESTROOP  (sense valoració del test; val el VASTROOP)
      if (funcio=8) and (test=4) and (item=24)
      then if InsBATERIA.ParamByName('VASTROOP').AsString = ''
           then InsBATERIA.ParamByName('FESTROOP').AsInteger := qVipNeuroPsico.FieldByName('resultat').asinteger
           else InsBATERIA.ParamByName('FESTROOP').Clear;

      // (8,17): FEPMR - VFEPMR
      if (funcio=8) and (test=17) then
      begin
        InsBATERIA.ParamByName('VFEPMR').AsString := ValoracioTest;

        if InsBATERIA.ParamByName('VFEPMR').AsString = ''
        then InsBATERIA.ParamByName('FEPMR').AsInteger := InsBATERIA.ParamByName('FEPMR').AsInteger+qVipNeuroPsico.FieldByName('resultat').asinteger
        else InsBATERIA.ParamByName('FEPMR').Clear;
      end;

end;

procedure Twmain.TraspasBATERIA;
begin
    if (tract_act <> tract_ant) then
    begin
     if tract_ant_nofet then
     begin
      //NOMÉS INSERTEM QUAN CANVIEM DE NHC+TRACTAMENT
      TRY
        InsBATERIA.ExecSQL;
        tract_ant_nofet:=false;
      EXCEPT
        on e: Exception
        do begin
          mLogErrors.Lines.Add(e.Message + 'Tractament: ' + inttostr(tract_ant)+ #10#13 +#13);
          cont_erronis:=cont_erronis+1;
          Exit;
        end;
      END;
      cont_insertats := cont_insertats + 1;
      esprimer:=true;
      //tiro un registre enrerra o em perdré el primer de cada nou tractament
      qVipNeuroPsico.Prior;
      tract_act:=tract_ant;
      tract_ant:=qVipNeuroPsico.FieldByName('c_tractament').asinteger;
     end
     else TractarBateria;  // per tractar el primer registre del tractament nou següent a l'insertat
    end
    else begin
      tract_ant_nofet:=true;
      TractarBateria;
    end;

end;

procedure Twmain.sbICASClick(Sender: TObject);
begin
  // no permetre fer-ho per trams.
  if rbTram.Checked then Exit;

  Application.CreateForm(TwTraspasVIP, wTraspasVIP);
  wTraspasVIP.Show;

  sbEsig1av.Enabled := false;
  sbEsigSeg.Enabled := false;
  sbChart.Enabled := false;
  sbefa.Enabled := false;
  sbAsia.Enabled := false;
  sbBateria.Enabled := false;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;

  rbTots.Checked := False;
  rbTram.Checked := False;
end;


//*BVG-i
// TRASPASSEM A ESCALESCAP LES CAPÇALERES DE TOTES LES ESCALES AMB TAULA PRÒPIA

// ASIA
procedure Twmain.bASIAClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCASIA:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscASIA.SQL.Text;

    qEscASIA.Close;

    if (eClauMin.Text <> '') then qEscASIA.SQL.Text := StringReplace(qEscASIA.SQL.Text, '[WHERE1]', 'where ID >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscASIA.SQL.Text) > 0) then
        begin
             qEscASIA.SQL.Text := StringReplace(qEscASIA.SQL.Text, '[WHERE1]', '', []);
             qEscASIA.SQL.Text := StringReplace(qEscASIA.SQL.Text, '[WHERE2]', 'where ID <= ' + eClauMax.Text, []);
        end
        else qEscASIA.SQL.Text := StringReplace(qEscASIA.SQL.Text, '[WHERE2]', 'and ID <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscASIA.SQL.Text) > 0) then
        begin
             qEscASIA.SQL.Text := StringReplace(qEscASIA.SQL.Text, '[WHERE1]', '', []);
             qEscASIA.SQL.Text := StringReplace(qEscASIA.SQL.Text, '[WHERE2]', 'where ID <= 100000', []);
        end
        else qEscASIA.SQL.Text := StringReplace(qEscASIA.SQL.Text, '[WHERE2]', 'and ID <= 100000', []);
    end;

    qEscASIA.Open;

    eLlegits.Text := IntToStr(qEscASIA.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscASIA.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 8;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscASIA.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscASIA.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscASIA.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscASIA.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscASIA.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscASIA.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscASIA.FieldByName('Tipus'       ).AsString;

        if        qEscASIA.FieldByName('Data_Anulat' ).IsNull then InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime    := qEscASIA.FieldByName('Data_Anulat' ).AsDateTime;
        if        qEscASIA.FieldByName('C_Validador' ).IsNull then InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString      := qEscASIA.FieldByName('C_Validador' ).AsString;
        if        qEscASIA.FieldByName('Data_Validat').IsNull then InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime    := qEscASIA.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCASIA per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCASIA set ID = %d where ID = %d', [id, qEscASIA.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID ASIA: ' + qEscAsia.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscASIA.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscASIA.Close;

    qEscASIA.SQL.Text := sqlinicial;
end;


// TRS
procedure Twmain.bTRSClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCALESTRS:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscalesTRS.SQL.Text;

    qEscalesTRS.Close;

    if (eClauMin.Text <> '') then qEscalesTRS.SQL.Text := StringReplace(qEscalesTRS.SQL.Text, '[WHERE1]', 'where CLAU >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscalesTRS.SQL.Text) > 0) then
        begin
             qEscalesTRS.SQL.Text := StringReplace(qEscalesTRS.SQL.Text, '[WHERE1]', '', []);
             qEscalesTRS.SQL.Text := StringReplace(qEscalesTRS.SQL.Text, '[WHERE2]', 'where CLAU <= ' + eClauMax.Text, []);
        end
        else qEscalesTRS.SQL.Text := StringReplace(qEscalesTRS.SQL.Text, '[WHERE2]', 'and CLAU <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscalesTRS.SQL.Text) > 0) then
        begin
             qEscalesTRS.SQL.Text := StringReplace(qEscalesTRS.SQL.Text, '[WHERE1]', '', []);
             qEscalesTRS.SQL.Text := StringReplace(qEscalesTRS.SQL.Text, '[WHERE2]', 'where CLAU <= 100000', []);
        end
        else qEscalesTRS.SQL.Text := StringReplace(qEscalesTRS.SQL.Text, '[WHERE2]', 'and CLAU <= 100000', []);
    end;

    qEscalesTRS.Open;

    eLlegits.Text := IntToStr(qEscalesTRS.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscalesTRS.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := qEscalesTRS.FieldByName('C_Escala').AsInteger;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscalesTRS.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscalesTRS.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscalesTRS.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscalesTRS.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscalesTRS.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscalesTRS.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscalesTRS.FieldByName('Tipus'       ).AsString;

        if     qEscalesTRS.FieldByName('Data_Anulat' ).IsNull then InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime := qEscalesTRS.FieldByName('Data_Anulat' ).AsDateTime;
        if     qEscalesTRS.FieldByName('C_Validador' ).IsNull then InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   := qEscalesTRS.FieldByName('C_Validador' ).AsString;
        if     qEscalesTRS.FieldByName('Data_Validat').IsNull then InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime := qEscalesTRS.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp CLAU de ESCALESTRS per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCALESTRS set CLAU = %d where CLAU = %d', [id, qEscalesTRS.FieldByName('CLAU').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('CLAU TRS: ' + qEscalesTRS.FieldByName('CLAU').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscalesTRS.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscalesTRS.Close;

    qEscalesTRS.SQL.Text := sqlinicial;
end;


// BARCELONA
procedure Twmain.bBCNClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
  hist1: Integer;
  c_entrada: Integer;
begin
    ShowMessage('OBSOLET');
    Exit; // 21/7/2014 ESCBARCELONA DESAPAREIX

    c_entrada := 1;

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCBARCELONA:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscBarcelona.SQL.Text;

    qEscBarcelona.Close;

    // El filtre serà per història perquè hem d'ordenar per aquest camp per anar informant el camp c_entrada
    if (eClauMin.Text <> '') then qEscBarcelona.SQL.Text := StringReplace(qEscBarcelona.SQL.Text, '[WHERE1]', 'where C_HISTORIA >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscBarcelona.SQL.Text) > 0) then
        begin
             qEscBarcelona.SQL.Text := StringReplace(qEscBarcelona.SQL.Text, '[WHERE1]', '', []);
             qEscBarcelona.SQL.Text := StringReplace(qEscBarcelona.SQL.Text, '[WHERE2]', 'where C_HISTORIA <= ' + eClauMax.Text, []);
        end
        else qEscBarcelona.SQL.Text := StringReplace(qEscBarcelona.SQL.Text, '[WHERE2]', 'and C_HISTORIA <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscBarcelona.SQL.Text) > 0) then qEscBarcelona.SQL.Text := StringReplace(qEscBarcelona.SQL.Text, '[WHERE1]', '', []);
        qEscBarcelona.SQL.Text := StringReplace(qEscBarcelona.SQL.Text, '[WHERE2]', '', []);
    end;

    qEscBarcelona.Open;

    eLlegits.Text := IntToStr(qEscBarcelona.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    hist1 := 0;
    while not qEscBarcelona.Eof do
    begin
        // Calculem quin c_entrada li toca:
        //     si canvia el número d'història, es reinicialitza a 1
        //     altrament, se li suma 1 a l'últim c_entrada
        if (qEscBarcelona.FieldByName('C_Historia').AsInteger <> hist1) then
        begin
            c_entrada := 1;
            hist1 := qEscBarcelona.FieldByName('C_Historia').AsInteger;
        end
        else Inc(c_entrada);

        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 22;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscBarcelona.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscBarcelona.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscBarcelona.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscBarcelona.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := c_entrada;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscBarcelona.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscBarcelona.FieldByName('Tipus'       ).AsString;

        if   qEscBarcelona.FieldByName('Data_Anulat' ).IsNull then   InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime := qEscBarcelona.FieldByName('Data_Anulat' ).AsDateTime;
        if   qEscBarcelona.FieldByName('C_Validador' ).IsNull then   InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   := qEscBarcelona.FieldByName('C_Validador' ).AsString;
        if   qEscBarcelona.FieldByName('Data_Validat').IsNull then   InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime := qEscBarcelona.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCBARCELONA per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCBARCELONA set ID = %d where ID = %d', [id, qEscBarcelona.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID BCN: ' + qEscBarcelona.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscBarcelona.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscBarcelona.Close;

    qEscBarcelona.SQL.Text := sqlinicial;
end;


// BATERIA
procedure Twmain.bBateriaClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCBATERIA:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscBateria.SQL.Text;

    qEscBateria.Close;

    if (eClauMin.Text <> '') then qEscBateria.SQL.Text := StringReplace(qEscBateria.SQL.Text, '[WHERE1]', 'where ID >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscBateria.SQL.Text) > 0) then
        begin
             qEscBateria.SQL.Text := StringReplace(qEscBateria.SQL.Text, '[WHERE1]', '', []);
             qEscBateria.SQL.Text := StringReplace(qEscBateria.SQL.Text, '[WHERE2]', 'where ID <= ' + eClauMax.Text, []);
        end
        else qEscBateria.SQL.Text := StringReplace(qEscBateria.SQL.Text, '[WHERE2]', 'and ID <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscBateria.SQL.Text) > 0) then
        begin
             qEscBateria.SQL.Text := StringReplace(qEscBateria.SQL.Text, '[WHERE1]', '', []);
             qEscBateria.SQL.Text := StringReplace(qEscBateria.SQL.Text, '[WHERE2]', 'where ID <= 100000', []);
        end
        else qEscBateria.SQL.Text := StringReplace(qEscBateria.SQL.Text, '[WHERE2]', 'and ID <= 100000', []);
    end;

    qEscBateria.Open;

    eLlegits.Text := IntToStr(qEscBateria.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscBateria.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 52;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscBateria.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscBateria.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscBateria.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscBateria.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscBateria.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscBateria.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscBateria.FieldByName('Tipus'       ).AsString;

        if     qEscBateria.FieldByName('Data_Anulat' ).IsNull then InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime := qEscBateria.FieldByName('Data_Anulat' ).AsDateTime;
        if     qEscBateria.FieldByName('C_Validador' ).IsNull then InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   := qEscBateria.FieldByName('C_Validador' ).AsString;
        if     qEscBateria.FieldByName('Data_Validat').IsNull then InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime := qEscBateria.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCBateria per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCBATERIA set ID = %d where ID = %d', [id, qEscBateria.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID BATERIA: ' + qEscBateria.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscBateria.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscBateria.Close;

    qEscBateria.SQL.Text := sqlinicial;
end;


// BATERIA INF
procedure Twmain.bBateriaInfClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCBATERIAINF:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscBateriaInf.SQL.Text;

    qEscBateriaInf.Close;

    if (eClauMin.Text <> '') then qEscBateriaInf.SQL.Text := StringReplace(qEscBateriaInf.SQL.Text, '[WHERE1]', 'where ID >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscBateriaInf.SQL.Text) > 0) then
        begin
             qEscBateriaInf.SQL.Text := StringReplace(qEscBateriaInf.SQL.Text, '[WHERE1]', '', []);
             qEscBateriaInf.SQL.Text := StringReplace(qEscBateriaInf.SQL.Text, '[WHERE2]', 'where ID <= ' + eClauMax.Text, []);
        end
        else qEscBateriaInf.SQL.Text := StringReplace(qEscBateriaInf.SQL.Text, '[WHERE2]', 'and ID <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscBateriaInf.SQL.Text) > 0) then
        begin
             qEscBateriaInf.SQL.Text := StringReplace(qEscBateriaInf.SQL.Text, '[WHERE1]', '', []);
             qEscBateriaInf.SQL.Text := StringReplace(qEscBateriaInf.SQL.Text, '[WHERE2]', 'where ID <= 100000', []);
        end
        else qEscBateriaInf.SQL.Text := StringReplace(qEscBateriaInf.SQL.Text, '[WHERE2]', 'and ID <= 100000', []);
    end;

    qEscBateriaInf.Open;

    eLlegits.Text := IntToStr(qEscBateriaInf.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscBateriaInf.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 58;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscBateriaInf.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscBateriaInf.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscBateriaInf.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscBateriaInf.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscBateriaInf.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscBateriaInf.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscBateriaInf.FieldByName('Tipus'       ).AsString;

        if  qEscBateriaInf.FieldByName('Data_Anulat' ).IsNull then    InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime := qEscBateriaInf.FieldByName('Data_Anulat' ).AsDateTime;
        if  qEscBateriaInf.FieldByName('C_Validador' ).IsNull then    InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   := qEscBateriaInf.FieldByName('C_Validador' ).AsString;
        if  qEscBateriaInf.FieldByName('Data_Validat').IsNull then    InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime := qEscBateriaInf.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCBateriaInf per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCBATERIAINF set ID = %d where ID = %d', [id, qEscBateriaInf.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID BATERIAINF: ' + qEscBateriaInf.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscBateriaInf.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscBateriaInf.Close;

    qEscBateriaInf.SQL.Text := sqlinicial;
end;


// CHART
procedure Twmain.bCHARTClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCCHART:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscCHART.SQL.Text;

    qEscCHART.Close;

    if (eClauMin.Text <> '') then qEscCHART.SQL.Text := StringReplace(qEscCHART.SQL.Text, '[WHERE1]', 'where ID >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscCHART.SQL.Text) > 0) then
        begin
             qEscCHART.SQL.Text := StringReplace(qEscCHART.SQL.Text, '[WHERE1]', '', []);
             qEscCHART.SQL.Text := StringReplace(qEscCHART.SQL.Text, '[WHERE2]', 'where ID <= ' + eClauMax.Text, []);
        end
        else qEscCHART.SQL.Text := StringReplace(qEscCHART.SQL.Text, '[WHERE2]', 'and ID <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscCHART.SQL.Text) > 0) then
        begin
             qEscCHART.SQL.Text := StringReplace(qEscCHART.SQL.Text, '[WHERE1]', '', []);
             qEscCHART.SQL.Text := StringReplace(qEscCHART.SQL.Text, '[WHERE2]', 'where ID <= 100000', []);
        end
        else qEscCHART.SQL.Text := StringReplace(qEscCHART.SQL.Text, '[WHERE2]', 'and ID <= 100000', []);
    end;

    qEscCHART.Open;

    eLlegits.Text := IntToStr(qEscCHART.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscCHART.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 48;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscCHART.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscCHART.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscCHART.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscCHART.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscCHART.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscCHART.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscCHART.FieldByName('Tipus'       ).AsString;

        if       qEscCHART.FieldByName('Data_Anulat' ).IsNull then   InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime :=     qEscCHART.FieldByName('Data_Anulat' ).AsDateTime;
        if       qEscCHART.FieldByName('C_Validador' ).IsNull then   InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   :=     qEscCHART.FieldByName('C_Validador' ).AsString;
        if       qEscCHART.FieldByName('Data_Validat').IsNull then   InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime :=     qEscCHART.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCCHART per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCCHART set ID = %d where ID = %d', [id, qEscCHART.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID CHART: ' + qEscCHART.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscCHART.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscCHART.Close;

    qEscCHART.SQL.Text := sqlinicial;
end;


// CIQ
procedure Twmain.bCIQClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCCIQ:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscCIQ.SQL.Text;

    qEscCIQ.Close;

    if (eClauMin.Text <> '') then qEscCIQ.SQL.Text := StringReplace(qEscCIQ.SQL.Text, '[WHERE1]', 'where CLAU >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscCIQ.SQL.Text) > 0) then
        begin
             qEscCIQ.SQL.Text := StringReplace(qEscCIQ.SQL.Text, '[WHERE1]', '', []);
             qEscCIQ.SQL.Text := StringReplace(qEscCIQ.SQL.Text, '[WHERE2]', 'where CLAU <= ' + eClauMax.Text, []);
        end
        else qEscCIQ.SQL.Text := StringReplace(qEscCIQ.SQL.Text, '[WHERE2]', 'and CLAU <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscCIQ.SQL.Text) > 0) then
        begin
             qEscCIQ.SQL.Text := StringReplace(qEscCIQ.SQL.Text, '[WHERE1]', '', []);
             qEscCIQ.SQL.Text := StringReplace(qEscCIQ.SQL.Text, '[WHERE2]', 'where CLAU <= 100000', []);
        end
        else qEscCIQ.SQL.Text := StringReplace(qEscCIQ.SQL.Text, '[WHERE2]', 'and CLAU <= 100000', []);
    end;

    qEscCIQ.Open;

    eLlegits.Text := IntToStr(qEscCIQ.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscCIQ.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 34;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscCIQ.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscCIQ.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscCIQ.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscCIQ.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscCIQ.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscCIQ.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscCIQ.FieldByName('Tipus'       ).AsString;

        if         qEscCIQ.FieldByName('Data_Anulat' ).IsNull then InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime :=     qEscCIQ.FieldByName('Data_Anulat' ).AsDateTime;
        if         qEscCIQ.FieldByName('C_Validador' ).IsNull then InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   :=     qEscCIQ.FieldByName('C_Validador' ).AsString;
        if         qEscCIQ.FieldByName('Data_Validat').IsNull then InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime :=     qEscCIQ.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp CLAU de ESCCIQ per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCCIQ set CLAU = %d where CLAU = %d', [id, qEscCIQ.FieldByName('CLAU').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('CLAU CIQ: ' + qEscCIQ.FieldByName('CLAU').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscCIQ.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscCIQ.Close;

    qEscCIQ.SQL.Text := sqlinicial;
end;


// EFA
procedure Twmain.bEFAClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCEFA:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscEFA.SQL.Text;

    qEscEFA.Close;

    if (eClauMin.Text <> '') then qEscEFA.SQL.Text := StringReplace(qEscEFA.SQL.Text, '[WHERE1]', 'where ID >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscEFA.SQL.Text) > 0) then
        begin
             qEscEFA.SQL.Text := StringReplace(qEscEFA.SQL.Text, '[WHERE1]', '', []);
             qEscEFA.SQL.Text := StringReplace(qEscEFA.SQL.Text, '[WHERE2]', 'where ID <= ' + eClauMax.Text, []);
        end
        else qEscEFA.SQL.Text := StringReplace(qEscEFA.SQL.Text, '[WHERE2]', 'and ID <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscEFA.SQL.Text) > 0) then
        begin
             qEscEFA.SQL.Text := StringReplace(qEscEFA.SQL.Text, '[WHERE1]', '', []);
             qEscEFA.SQL.Text := StringReplace(qEscEFA.SQL.Text, '[WHERE2]', 'where ID <= 100000', []);
        end
        else qEscEFA.SQL.Text := StringReplace(qEscEFA.SQL.Text, '[WHERE2]', 'and ID <= 100000', []);
    end;

    qEscEFA.Open;

    eLlegits.Text := IntToStr(qEscEFA.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscEFA.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 49;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscEFA.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscEFA.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscEFA.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscEFA.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscEFA.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscEFA.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscEFA.FieldByName('Tipus'       ).AsString;

        if         qEscEFA.FieldByName('Data_Anulat' ).IsNull then InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime     := qEscEFA.FieldByName('Data_Anulat' ).AsDateTime;
        if         qEscEFA.FieldByName('C_Validador' ).IsNull then InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString       := qEscEFA.FieldByName('C_Validador' ).AsString;
        if         qEscEFA.FieldByName('Data_Validat').IsNull then InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime     := qEscEFA.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCEFA per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCEFA set ID = %d where ID = %d', [id, qEscEFA.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID EFA: ' + qEscEFA.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscEFA.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscEFA.Close;

    qEscEFA.SQL.Text := sqlinicial;
end;


// ENTREVISTA
procedure Twmain.bEntrevistaClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCENTREVISTA:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscEntrevista.SQL.Text;

    qEscEntrevista.Close;

    if (eClauMin.Text <> '') then qEscEntrevista.SQL.Text := StringReplace(qEscEntrevista.SQL.Text, '[WHERE1]', 'where ID >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscEntrevista.SQL.Text) > 0) then
        begin
             qEscEntrevista.SQL.Text := StringReplace(qEscEntrevista.SQL.Text, '[WHERE1]', '', []);
             qEscEntrevista.SQL.Text := StringReplace(qEscEntrevista.SQL.Text, '[WHERE2]', 'where ID <= ' + eClauMax.Text, []);
        end
        else qEscEntrevista.SQL.Text := StringReplace(qEscEntrevista.SQL.Text, '[WHERE2]', 'and ID <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscEntrevista.SQL.Text) > 0) then
        begin
             qEscEntrevista.SQL.Text := StringReplace(qEscEntrevista.SQL.Text, '[WHERE1]', '', []);
             qEscEntrevista.SQL.Text := StringReplace(qEscEntrevista.SQL.Text, '[WHERE2]', 'where ID <= 100000', []);
        end
        else qEscEntrevista.SQL.Text := StringReplace(qEscEntrevista.SQL.Text, '[WHERE2]', 'and ID <= 100000', []);
    end;

    qEscEntrevista.Open;

    eLlegits.Text := IntToStr(qEscEntrevista.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscEntrevista.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 82;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscEntrevista.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscEntrevista.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscEntrevista.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscEntrevista.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscEntrevista.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscEntrevista.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscEntrevista.FieldByName('Tipus'       ).AsString;

        if  qEscEntrevista.FieldByName('Data_Anulat' ).IsNull then    InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime := qEscEntrevista.FieldByName('Data_Anulat' ).AsDateTime;
        if  qEscEntrevista.FieldByName('C_Validador' ).IsNull then    InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   := qEscEntrevista.FieldByName('C_Validador' ).AsString;
        if  qEscEntrevista.FieldByName('Data_Validat').IsNull then    InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime := qEscEntrevista.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCEntrevista per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCENTREVISTA set ID = %d where ID = %d', [id, qEscEntrevista.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID ENTREVISTA: ' + qEscEntrevista.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscEntrevista.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscEntrevista.Close;

    qEscEntrevista.SQL.Text := sqlinicial;
end;


// ESIG 1aV
procedure Twmain.bESIG1aVClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCESIG_1AV:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscESIG1aV.SQL.Text;

    qEscESIG1aV.Close;

    if (eClauMin.Text <> '') then qEscESIG1aV.SQL.Text := StringReplace(qEscESIG1aV.SQL.Text, '[WHERE1]', 'where ID >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscESIG1aV.SQL.Text) > 0) then
        begin
             qEscESIG1aV.SQL.Text := StringReplace(qEscESIG1aV.SQL.Text, '[WHERE1]', '', []);
             qEscESIG1aV.SQL.Text := StringReplace(qEscESIG1aV.SQL.Text, '[WHERE2]', 'where ID <= ' + eClauMax.Text, []);
        end
        else qEscESIG1aV.SQL.Text := StringReplace(qEscESIG1aV.SQL.Text, '[WHERE2]', 'and ID <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscESIG1aV.SQL.Text) > 0) then
        begin
             qEscESIG1aV.SQL.Text := StringReplace(qEscESIG1aV.SQL.Text, '[WHERE1]', '', []);
             qEscESIG1aV.SQL.Text := StringReplace(qEscESIG1aV.SQL.Text, '[WHERE2]', 'where ID <= 100000', []);
        end
        else qEscESIG1aV.SQL.Text := StringReplace(qEscESIG1aV.SQL.Text, '[WHERE2]', 'and ID <= 100000', []);
    end;

    qEscESIG1aV.Open;

    eLlegits.Text := IntToStr(qEscESIG1aV.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscESIG1aV.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 29;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscESIG1aV.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscESIG1aV.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscESIG1aV.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscESIG1aV.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscESIG1aV.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscESIG1aV.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscESIG1aV.FieldByName('Tipus'       ).AsString;

        if     qEscESIG1aV.FieldByName('Data_Anulat' ).IsNull then InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime := qEscESIG1aV.FieldByName('Data_Anulat' ).AsDateTime;
        if     qEscESIG1aV.FieldByName('C_Validador' ).IsNull then InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   := qEscESIG1aV.FieldByName('C_Validador' ).AsString;
        if     qEscESIG1aV.FieldByName('Data_Validat').IsNull then InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime := qEscESIG1aV.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCESIG1aV per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCESIG_1AV set ID = %d where ID = %d', [id, qEscESIG1aV.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID ESIG1AV: ' + qEscESIG1aV.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscESIG1aV.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscESIG1aV.Close;

    qEscESIG1aV.SQL.Text := sqlinicial;
end;


// ESIG Seg
procedure Twmain.bESIGSegClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCESIG_SEG:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscESIGSeg.SQL.Text;

    qEscESIGSeg.Close;

    if (eClauMin.Text <> '') then qEscESIGSeg.SQL.Text := StringReplace(qEscESIGSeg.SQL.Text, '[WHERE1]', 'where ID >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscESIGSeg.SQL.Text) > 0) then
        begin
             qEscESIGSeg.SQL.Text := StringReplace(qEscESIGSeg.SQL.Text, '[WHERE1]', '', []);
             qEscESIGSeg.SQL.Text := StringReplace(qEscESIGSeg.SQL.Text, '[WHERE2]', 'where ID <= ' + eClauMax.Text, []);
        end
        else qEscESIGSeg.SQL.Text := StringReplace(qEscESIGSeg.SQL.Text, '[WHERE2]', 'and ID <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscESIGSeg.SQL.Text) > 0) then
        begin
             qEscESIGSeg.SQL.Text := StringReplace(qEscESIGSeg.SQL.Text, '[WHERE1]', '', []);
             qEscESIGSeg.SQL.Text := StringReplace(qEscESIGSeg.SQL.Text, '[WHERE2]', 'where ID <= 100000', []);
        end
        else qEscESIGSeg.SQL.Text := StringReplace(qEscESIGSeg.SQL.Text, '[WHERE2]', 'and ID <= 100000', []);
    end;

    qEscESIGSeg.Open;

    eLlegits.Text := IntToStr(qEscESIGSeg.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscESIGSeg.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 30;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscESIGSeg.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscESIGSeg.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscESIGSeg.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscESIGSeg.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscESIGSeg.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscESIGSeg.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscESIGSeg.FieldByName('Tipus'       ).AsString;

        if     qEscESIGSeg.FieldByName('Data_Anulat' ).IsNull then InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime := qEscESIGSeg.FieldByName('Data_Anulat' ).AsDateTime;
        if     qEscESIGSeg.FieldByName('C_Validador' ).IsNull then InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   := qEscESIGSeg.FieldByName('C_Validador' ).AsString;
        if     qEscESIGSeg.FieldByName('Data_Validat').IsNull then InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime := qEscESIGSeg.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCESIGSeg per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCESIG_SEG set ID = %d where ID = %d', [id, qEscESIGSeg.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID ESIGSEG: ' + qEscESIGSeg.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscESIGSeg.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscESIGSeg.Close;

    qEscESIGSeg.SQL.Text := sqlinicial;
end;


// EVSF
procedure Twmain.bEVSFClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCEVSF:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscEVSF.SQL.Text;

    qEscEVSF.Close;

    if (eClauMin.Text <> '') then qEscEVSF.SQL.Text := StringReplace(qEscEVSF.SQL.Text, '[WHERE1]', 'where CLAU >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscEVSF.SQL.Text) > 0) then
        begin
             qEscEVSF.SQL.Text := StringReplace(qEscEVSF.SQL.Text, '[WHERE1]', '', []);
             qEscEVSF.SQL.Text := StringReplace(qEscEVSF.SQL.Text, '[WHERE2]', 'where CLAU <= ' + eClauMax.Text, []);
        end
        else qEscEVSF.SQL.Text := StringReplace(qEscEVSF.SQL.Text, '[WHERE2]', 'and CLAU <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscEVSF.SQL.Text) > 0) then
        begin
             qEscEVSF.SQL.Text := StringReplace(qEscEVSF.SQL.Text, '[WHERE1]', '', []);
             qEscEVSF.SQL.Text := StringReplace(qEscEVSF.SQL.Text, '[WHERE2]', 'where CLAU <= 100000', []);
        end
        else qEscEVSF.SQL.Text := StringReplace(qEscEVSF.SQL.Text, '[WHERE2]', 'and CLAU <= 100000', []);
    end;

    qEscEVSF.Open;

    eLlegits.Text := IntToStr(qEscEVSF.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscEVSF.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 35;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscEVSF.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscEVSF.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscEVSF.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscEVSF.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscEVSF.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscEVSF.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscEVSF.FieldByName('Tipus'       ).AsString;

        if        qEscEVSF.FieldByName('Data_Anulat' ).IsNull then InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime :=    qEscEVSF.FieldByName('Data_Anulat' ).AsDateTime;
        if        qEscEVSF.FieldByName('C_Validador' ).IsNull then InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString   :=    qEscEVSF.FieldByName('C_Validador' ).AsString;
        if        qEscEVSF.FieldByName('Data_Validat').IsNull then InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime :=    qEscEVSF.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp CLAU de ESCEVSF per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCEVSF set CLAU = %d where CLAU = %d', [id, qEscEVSF.FieldByName('CLAU').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('CLAU EVSF: ' + qEscEVSF.FieldByName('CLAU').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscEVSF.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscEVSF.Close;

    qEscEVSF.SQL.Text := sqlinicial;
end;


// PEDI
procedure Twmain.bPEDIClick(Sender: TObject);
var
  sqlinicial: String;
  id: Integer;
begin

    Panel5.Hide;
    literal.Hide;
    lLlegits.Hide;
    eLlegits.Hide;
    lInsertats.Hide;
    eInsertats.Hide;

    lLlegits.Caption := 'Registres llegits de ESCPEDI:';
    lInsertats.Caption := 'Registres insertats a ESCALESCAP';

    cont_insertats := 0;
    cont_erronis := 0;

    sqlinicial := qEscPEDI.SQL.Text;

    qEscPEDI.Close;

    if (eClauMin.Text <> '') then qEscPEDI.SQL.Text := StringReplace(qEscPEDI.SQL.Text, '[WHERE1]', 'where ID >= ' + eClauMin.Text, []);
    if (eClauMax.Text <> '') then
    begin
        if (Pos('[WHERE1]', qEscPEDI.SQL.Text) > 0) then
        begin
             qEscPEDI.SQL.Text := StringReplace(qEscPEDI.SQL.Text, '[WHERE1]', '', []);
             qEscPEDI.SQL.Text := StringReplace(qEscPEDI.SQL.Text, '[WHERE2]', 'where ID <= ' + eClauMax.Text, []);
        end
        else qEscPEDI.SQL.Text := StringReplace(qEscPEDI.SQL.Text, '[WHERE2]', 'and ID <= ' + eClauMax.Text, []);
    end
    else begin
        if (Pos('[WHERE1]', qEscPEDI.SQL.Text) > 0) then
        begin
             qEscPEDI.SQL.Text := StringReplace(qEscPEDI.SQL.Text, '[WHERE1]', '', []);
             qEscPEDI.SQL.Text := StringReplace(qEscPEDI.SQL.Text, '[WHERE2]', 'where ID <= 100000', []);
        end
        else qEscPEDI.SQL.Text := StringReplace(qEscPEDI.SQL.Text, '[WHERE2]', 'and ID <= 100000', []);
    end;

    qEscPEDI.Open;

    eLlegits.Text := IntToStr(qEscPEDI.RecordCount);
    lLlegits.Show;
    eLlegits.Show;

    while not qEscPEDI.Eof do
    begin
        id := Gen_ID('interna', 'G_ESCALESCAP', 1);

        InsEscalesCap.ParamByName('CLAU'        ).AsInteger  := id;
        InsEscalesCap.ParamByName('C_ESCALA'    ).AsInteger  := 72;
        InsEscalesCap.ParamByName('C_TRACTAMENT').AsInteger  := qEscPEDI.FieldByName('C_Tractament').AsInteger;
        InsEscalesCap.ParamByName('C_HISTORIA'  ).AsInteger  := qEscPEDI.FieldByName('C_Historia'  ).AsInteger;
        InsEscalesCap.ParamByName('C_USUARI'    ).AsString   := qEscPEDI.FieldByName('C_Usuari'    ).AsString;
        InsEscalesCap.ParamByName('DATA'        ).AsDateTime := qEscPEDI.FieldByName('Data'        ).AsDateTime;
        InsEscalesCap.ParamByName('C_ENTRADA'   ).AsInteger  := qEscPEDI.FieldByName('C_Entrada'   ).AsInteger;
        InsEscalesCap.ParamByName('ANULAT'      ).AsString   := qEscPEDI.FieldByName('Anulat'      ).AsString;
        InsEscalesCap.ParamByName('TIPUS'       ).AsString   := qEscPEDI.FieldByName('Tipus'       ).AsString;

        if        qEscPEDI.FieldByName('Data_Anulat' ).IsNull then InsEscalesCap.ParamByName('DATA_ANULAT' ).Clear
        else InsEscalesCap.ParamByName('DATA_ANULAT' ).AsDateTime    := qEscPEDI.FieldByName('Data_Anulat' ).AsDateTime;
        if        qEscPEDI.FieldByName('C_Validador' ).IsNull then InsEscalesCap.ParamByName('C_VALIDADOR' ).Clear
        else InsEscalesCap.ParamByName('C_VALIDADOR' ).AsString      := qEscPEDI.FieldByName('C_Validador' ).AsString;
        if        qEscPEDI.FieldByName('Data_Validat').IsNull then InsEscalesCap.ParamByName('DATA_VALIDAT').Clear
        else InsEscalesCap.ParamByName('DATA_VALIDAT').AsDateTime    := qEscPEDI.FieldByName('Data_Validat').AsDateTime;

        TRY
          InsEscalesCap.ExecSQL;
          Inc(cont_insertats);

          // Modifiquem el camp ID de ESCPEDI per lligar-lo a la nova entrada d'EscalesCap:
          GutExecute('update ESCPEDI set ID = %d where ID = %d', [id, qEscPEDI.FieldByName('ID').AsInteger]);

        EXCEPT
          on e: Exception do
          begin
              mLogErrors.Lines.Add('ID PEDI: ' + qEscPEDI.FieldByName('ID').AsString + '  ' + e.Message  + NLine);
              Inc(cont_erronis);
          end;
        END;

        qEscPEDI.Next;
    end;

    literal.Show;

    eInsertats.Text := IntToStr(cont_insertats);
    lInsertats.Show;
    eInsertats.Show;

    if (cont_erronis > 0) then Panel5.Show;

    qEscPEDI.Close;

    qEscPEDI.SQL.Text := sqlinicial;
end;

procedure Twmain.sbCaigudesClick(Sender: TObject);
begin
  // no permetre fer-ho per trams.
  if rbTram.Checked then Exit;

  Application.CreateForm(TwTraspasAltres, wTraspasAltres);
  wTraspasAltres.Show;

  sbEsig1av.Enabled := false;
  sbEsigSeg.Enabled := false;
  sbChart.Enabled := false;
  sbefa.Enabled := false;
  sbAsia.Enabled := false;
  sbBateria.Enabled := false;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;

  rbTots.Checked := False;
  rbTram.Checked := False;
end;

procedure Twmain.sbInformesSolClick(Sender: TObject);
begin
  // no permetre fer-ho per trams.
  if rbTram.Checked then Exit;

  Application.CreateForm(TwTraspasAltres, wTraspasAltres);
  wTraspasAltres.Show;

  sbEsig1av.Enabled := false;
  sbEsigSeg.Enabled := false;
  sbChart.Enabled := false;
  sbefa.Enabled := false;
  sbAsia.Enabled := false;
  sbBateria.Enabled := false;
  sbICAS.Enabled := false;
  sbVIP.Enabled := false;
  sbUM.Enabled := false;
  sbCaigudes.Enabled := false;
  sbBaclofen.Enabled := False;
  sbInformesSol.Enabled := False;
  sbFarma.Enabled := False;

  rbTots.Checked := False;
  rbTram.Checked := False;
end;

function Twmain.RecalcularCIP(Apellido1, Apellido2, Sexo: String; DataNaixement: TDateTime):String;
begin
  Result := '';
  Result := copy(Apellido1,0,2);
  Result := Result + copy(Apellido2,0,2);

  if Sexo = 'H'
  then Result := Result + '0'
  else Result := Result + '1';

  if DataNaixement <> 0
  then Result := Result + formatDateTime('yymmdd', DataNaixement);
end;

function TsiOK(tsi1,tsi2,apellido2: string):boolean;
begin
    if (apellido2 = '')       then Result:=(copy(tsi1,5,7)=copy(tsi2,3,7)) and (len(tsi1)=14)      // estrangers
    else if (apellido2 = '-') then Result:=(copy(tsi1,5,7)=copy(tsi2,4,7)) and (len(tsi1)=14)      // estrangers
                              else Result:=(copy(tsi1,1,11)=copy(tsi2,1,11)) and (len(tsi1)=14);
end;

function Twmain.IdentificaDirectori(DirectoriDocs, H: String): String;
var
  Dir:String;
  passos: Integer;
begin
    passos := Trunc(StrToInt(H) div 500);
    Dir := IntToStr(passos * 500) + '-' + IntToStr(((passos + 1) * 500) - 1);

    if not DirectoryExists(DirectoriDocs + '\' + Dir) then
    begin
        Result := '';
        FerError('No existeix el directori %s', [DirectoriDocs + '\' + Dir]);
    end
    else Result := DirectoriDocs + '\' + Dir;
end;

procedure Twmain.sbValidaClick(Sender: TObject);
var
  TSIrecalculat, nomfitxer, n_historia,
  PathHistoria, PathDocuments:          String;
  i,TSInoOK,ICDnoOk,FileNoOK,InfNoOK,
  hist_ant:                             Integer;
begin
  Panel5.visible:= True;
  mLogErrors.Lines.Clear;
  mLogFile.Lines.Clear;
  mLogICD.Lines.Clear;
  qIngressos.Close;
  qIngressos.Open;
  mLogErrors.Lines.Add('Nº d''ingressos: '+inttostr(qIngressos.RecordCount));
  mLogErrors.Lines.Add('----- NOMÉS PACIENTS VIUS --------');

  TSInoOK:=0; ICDnoOk:=0; FileNoOK:=0; InfNoOK:=0;
  hist_ant:=0;

  // per cada 1004 04-UP amb data d'alta >= '01.01.2005', cal comprovar 3 coses:
  //    1. el TSI té 14 posicions i és correcte
  //    2. el c_diagnosticalta del tractament està a CODIICD
  //    3. l'informe d'alta existeix i en el nom hi ha la mateixa data d'alta que al tractament
  // els que no verifiquin alguna de les 3 coses, els imprimiré al mLogErrors.
  while not qIngressos.Eof do
  begin
      TSIrecalculat := RecalcularCIP(qIngressos.FieldByName('APELLIDO1').AsString,qIngressos.FieldByName('APELLIDO2').AsString,
                                     qIngressos.FieldByName('SEXO').AsString,qIngressos.FieldByName('FECHA_NAC').AsDateTime);
      if  (not TsiOK(qIngressos.FieldByName('TSI').AsString,TSIrecalculat,qIngressos.FieldByName('APELLIDO2').AsString))
      and (hist_ant <> qIngressos.FieldByName('C_HISTORIA').AsInteger)
      then begin
          mLogErrors.Lines.Add('TSI no vàlid: '+qIngressos.FieldByName('TSI').AsString+' NHC: '+qIngressos.FieldByName('C_HISTORIA').AsString+
                               ' Hauria de ser: '+TSIrecalculat+'XXX');
          TSInoOK := TSInoOK +1;
      end;

      if qIngressos.FieldByName('C_DIAGNOSTICALTA').IsNull or (qIngressos.FieldByName('C_DIAGNOSTICALTA').AsString = '')
      or qIngressos.FieldByName('N_ICD').IsNull or (qIngressos.FieldByName('N_ICD').AsString = '')
      then begin
          mLogICD.Lines.Add('ICD no vàlid: '+qIngressos.FieldByName('C_DIAGNOSTICALTA').AsString+' - '+qIngressos.FieldByName('N_ICD').AsString+
                               ' NHC: '+qIngressos.FieldByName('C_HISTORIA').AsString+' DATA ALTA: '+qIngressos.FieldByName('DATA_ALTA').AsString);
          ICDnoOk := ICDnoOk + 1;
      end;

      PathDocuments := GutSelect('Select pathinfalta3 From config',[]);                                    // G:\USR\infmetAltes
      PathHistoria  := IdentificaDirectori(PathDocuments,qIngressos.FieldByName('C_HISTORIA').AsString);  // calcula la carpeta que li toca

      // Construim la cadena n_historia: seran zeros més el número d'història, de manera que tingui 5 caràcters:
      n_historia := '00000';
      for i:=5-length(qIngressos.FieldByName('C_HISTORIA').AsString)+1 to 5
      do n_historia[i]:=qIngressos.FieldByName('C_HISTORIA').AsString[Length(qIngressos.FieldByName('C_HISTORIA').AsString)-5+i];
      nomfitxer := PathHistoria+'\'+n_historia+'AHO'+FormatDateTime('yyyymmdd',qIngressos.FieldByName('DATA_ALTA').AsDateTime)+'.doc';

      if not FileExists(nomfitxer) then
      begin
          mLogFile.Lines.Add('Informe d''alta '+nomfitxer+' inexistent. Data alta: '+qIngressos.FieldByName('DATA_ALTA').AsString+
                             '. Coordinador: '+qIngressos.FieldByName('C_COORDINADOR').AsString);
          FileNoOK := FileNoOK + 1;
      end;

      if qIngressos.FieldByName('INFORMEALTA').IsNull or (qIngressos.FieldByName('INFORMEALTA').AsString = '')
      then begin
          mLogFile.Lines.Add('NHC '+qIngressos.FieldByName('C_HISTORIA').AsString+' Data alta: '+qIngressos.FieldByName('DATA_ALTA').AsString+
                               ' sense informe a la base de dades. Coordinador: '+qIngressos.FieldByName('C_COORDINADOR').AsString);
          InfNoOK := InfNoOK + 1;
      end;

      hist_ant := qIngressos.FieldByName('C_HISTORIA').AsInteger;
      qIngressos.Next;
  end;
  qIngressos.Close;
  mLogErrors.Lines.Add('TSI erronis: '+inttostr(TSInoOK));
  mLogICD.Lines.Add('ICD erronis: '+inttostr(ICDnoOk));
  mLogFile.Lines.Add('INFORMES inexistents: '+inttostr(FileNoOK));
  mLogFile.Lines.Add('INFORMES no guardats a la base de dades: '+inttostr(InfNoOK));
end;


procedure Twmain.sbCognom1Click(Sender: TObject);
var
  i: integer;

  function ExtrauCognom(S: String):String;
  var
     i,l:Integer;
  begin
      Result := '';
      i := Pos(' ',S);
      l := Length(S);
      Result := Copy(S,i+1,l-i);
  end;

  function ExtrauNom(S: String):String;  // no funciona per noms compostos
  var
     i: Integer;
  begin
      Result := '';
      i := Pos(' ',S);
      Result := Copy(S,1,i);
  end;
begin
  // a la taula METGES cal traspassar el primer cognom al nou camp COGNOM1 a partir del camp METGE
  // 23/10 -> ara traspasso a NOMBRE el nom des de NOMSENCER
  Panel5.visible:= True;
  mLogErrors.Lines.Clear;
  qMetges.Close;
  qMetges.Open;
  i:=0;

  while not qMetges.Eof do
  begin
      qUpdNombre.ParamByName('nombre').AsString := ExtrauNom(qMetges.FieldByName('nomsencer').AsString);
      qUpdNombre.ParamByName('codi').AsString := qMetges.FieldByName('codi').AsString;

      if qUpdNombre.ParamByName('nombre').AsString <> '' then
      begin
          qUpdNombre.ExecSQL;
          i:=i+1;
      end;

      qMetges.Next;
  end;
  qMetges.Close;
  mLogErrors.Lines.Add('Nombres actualitzats: '+inttostr(i));
end;

{procedure Twmain.bInfaPdfClick(Sender: TObject);
var
  nomfitxer,n_historia,destiPDF,pSignatura,
  PathHistoria, PathDocuments,ruta:  String;
  i,j,k,FileNoOK,InfNoOK: Integer;
  pNomesLectura,pGuardarCanvis,pNomDOC,
  pUnit,pExtend,pCount,pFals,pVertader,
  pLinkToFile,pSaveWithDocument,pAnchor: OleVariant;
  WordDoc:  _Document;
  WordApp:  _Application;
  ok: Boolean;
begin
    bInfaPdf.enabled := False;
    Panel5.visible:= True;
    mLogFile.Lines.Clear;
    k:=0;j:=0;FileNoOK:=0;InfNoOK:=0;ok:=True;

    ruta := 'G:\PROVES\InfAltaHccc';

    // convertir a pdf tots els informes d'alta des del 1.1.2009 fins al 30.9.2009
    qAltes.Close;
    qAltes.Open;

    while not qAltes.Eof do
    begin
        j:=j+1;
        PathDocuments := GutSelect('Select pathinfalta3 From config',[]);                                    // G:\USR\infmetAltes
        PathHistoria  := IdentificaDirectori(PathDocuments,qAltes.FieldByName('C_HISTORIA').AsString);   // calcula la carpeta que li toca

        // Construim la cadena n_historia: seran zeros més el número d'història, de manera que tingui 5 caràcters:
        n_historia := '00000';
        for i:=5-length(qAltes.FieldByName('C_HISTORIA').AsString)+1 to 5
        do n_historia[i]:=qAltes.FieldByName('C_HISTORIA').AsString[Length(qAltes.FieldByName('C_HISTORIA').AsString)-5+i];
        nomfitxer := PathHistoria+'\'+n_historia+'AHO'+FormatDateTime('yyyymmdd',qAltes.FieldByName('DATA_ALTA').AsDateTime)+'.doc';

        if not FileExists(nomfitxer) then
        begin
            mLogFile.Lines.Add('Informe d''alta '+nomfitxer+' inexistent. Data alta: '+qAltes.FieldByName('DATA_ALTA').AsString+
                               '. Coordinador: '+qAltes.FieldByName('C_COORDINADOR').AsString);
            FileNoOK:=FileNoOK+ 1;
            ok:=False;
        end;

        if qAltes.FieldByName('INFORMEALTA').IsNull or (qAltes.FieldByName('INFORMEALTA').AsString = '')
        then begin
            mLogFile.Lines.Add('NHC '+qAltes.FieldByName('C_HISTORIA').AsString+' Data alta: '+qAltes.FieldByName('DATA_ALTA').AsString+
                                 ' sense informe a la base de dades. Coordinador: '+qAltes.FieldByName('C_COORDINADOR').AsString);
            InfNoOK := InfNoOK + 1;
            ok:=False;
        end;

        if ok then
        begin
            // Preparem l'OLE Object de Word:
            WordApp := CoWordApplication.Create;

            // Obrim el document .DOC
            pNomesLectura := True;
            pNomDOC := nomfitxer;
            WordDoc := WordApp.Documents.Open(pNomDOC, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam,
                                              EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                              EmptyParam, EmptyParam, EmptyParam, EmptyParam);
            WordApp.Visible := False;

            // Tallem la capçalera de l'encabezado al portapapers: XXXX
            WordApp.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
            WordApp.Selection.WholeStory;
            WordApp.Selection.Cut;
            WordApp.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
            // Ens col·loquem al principi del document
            pUnit   := wdStory;
            pExtend := wdMove;
            WordApp.Selection.HomeKey(pUnit, pExtend);
            // La copiem al document normal
            pUnit := wdStory;
            WordApp.Selection.HomeKey(pUnit, EmptyParam);
            WordApp.Selection.Paste;
            WordApp.Selection.TypeParagraph;
            // XXXX

            // afegim logo Guttmann a la capçalera del Word
            // Ens col·loquem al principi del document
            pUnit   := wdStory;
            pExtend := wdMove;
            WordApp.Selection.HomeKey(pUnit, pExtend);

            pSignatura  := 'c:\guthccc\publica\guttmann25.jpg';
            pLinkToFile := False; pSaveWithDocument := True;
            WordApp.ActiveDocument.Shapes.AddPicture(pSignatura,pLinkToFile,pSaveWithDocument,EmptyParam,
                                                     EmptyParam,EmptyParam,EmptyParam,EmptyParam);
//            ANCHOR:=SELECTION.RANGE

            // fem el PDF
            destiPDF := ruta+'\'+n_historia+'AHO'+FormatDateTime('yyyymmdd',qAltes.FieldByName('DATA_ALTA').AsDateTime)+'.pdf';
            WordDoc.ExportAsFixedFormat(destiPDF, wdExportFormatPDF, False, wdExportOptimizeForPrint, wdExportAllDocument, 1, 1, wdExportDocumentContent,
                                True, True, wdExportCreateNoBookmarks, True, True, False, EmptyParam);

            // Tancar WordApp
            pGuardarCanvis := False;
            TRY WordApp.Quit(pGuardarCanvis, EmptyParam, EmptyParam); FINALLY END;
            k:=k+1;
        end;
        
        qAltes.Next;
        ok:=True;
    end;
    mLogFile.Lines.Add('Nombre d''altes tractades: '+inttostr(j));
    mLogFile.Lines.Add('Nombre de pdf''s creats: '+inttostr(k));
    mLogFile.Lines.Add('Nombre d''informes inexistents en fitxer: '+inttostr(FileNoOK));
    mLogFile.Lines.Add('Nombre d''informes inexistents a la base de dades: '+inttostr(InfNoOK));
end; }

procedure Twmain.sbIasistClick(Sender: TObject);
begin
  Panel5.visible:= True;
  mLogErrors.Lines.Clear;
  mLogFile.Lines.Clear; mLogFile.Visible := False;
  mLogICD.Lines.Clear;  mLogICD.Visible := False;

  qTractGTN.Close; qTractFiliacioBo.Close;
  qTractGTN.Open;  qTractFiliacioBo.Open;

  if qTractFiliacioBo.RecordCount <> qTractGTN.RecordCount
  then mLogErrors.Lines.Add('Nº d''altes diferents. GUTTMANN: '+IntToStr(qTractGTN.RecordCount)+' FILIACIOBO: '+IntToStr(qTractFiliacioBo.RecordCount))
  else mLogErrors.Lines.Add('Nº d''altres '+IntToStr(qTractGTN.RecordCount));

  // si un dels dos arriba al final ja no comparem res més. De fet, ja ho haurem dit abans.
  while (not qTractGTN.Eof) or (not qTractFiliacioBo.Eof) do
  begin
      if qTractGTN.FieldByName('C_HISTORIA').AsInteger <> qTractFiliacioBo.FieldByName('C_HISTORIA').AsInteger
      then begin
          mLogErrors.Lines.Add('NHC <>. GUTTMANN: '+qTractGTN.FieldByName('C_HISTORIA').AsString+' FILIACIOBO: '+qTractFiliacioBo.FieldByName('C_HISTORIA').AsString);
          Abort;
      end;

      if qTractGTN.FieldByName('C_TRACTAMENT').AsInteger <> qTractFiliacioBo.FieldByName('C_TRACTAMENT').AsInteger
      then begin
          mLogErrors.Lines.Add('TRACTAMENT <>. GUTTMANN: '+qTractGTN.FieldByName('C_TRACTAMENT').AsString+' FILIACIOBO: '+qTractFiliacioBo.FieldByName('C_TRACTAMENT').AsString);
          Abort;
      end;

      mLogErrors.Lines.Add(Format('------------------------- TRACTAMENT %d ----------------------------------',[qTractGTN.FieldByName('C_TRACTAMENT').AsInteger]));
      if qTractGTN.FieldByName('C_DIAGNOSTICALTA').AsString <> qTractFiliacioBo.FieldByName('C_DIAGNOSTICALTA').AsString
      then mLogErrors.Lines.Add('C_DIAGNOSTICALTA <>: GUTTMANN: '+qTractGTN.FieldByName('C_DIAGNOSTICALTA').AsString+
                                ' FILIACIOBO: '+qTractFiliacioBo.FieldByName('C_DIAGNOSTICALTA').AsString)
      else mLogErrors.Lines.Add('C_DIAGNOSTICALTA: GUTTMANN: '+qTractGTN.FieldByName('C_DIAGNOSTICALTA').AsString+
                                ' FILIACIOBO: '+qTractFiliacioBo.FieldByName('C_DIAGNOSTICALTA').AsString);

      // taula DIAGNÒSTICS
      qDiagGTN.Close;  qDiagGTN.Open;
      qDiagFiliacioBo.Close; qDiagFiliacioBo.Open;
      while (not qDiagGTN.Eof) or (not qDiagFiliacioBo.Eof) do
      begin
          if qDiagGTN.Eof
          then mLogErrors.Lines.Add('C_DIAGNOSTIC <> : GUTTMANN inexistent. '+
                                    ' FILIACIOBO '+qDiagFiliacioBo.FieldByName('C_DIAGNOSTIC').AsString+' ordre '+qDiagFiliacioBo.FieldByName('ORDRE').AsString+
                                    ' '+qDiagFiliacioBo.FieldByName('G_DIAGNOSTIC').AsString+
                                    ' '+qDiagFiliacioBo.FieldByName('N_DIAGNOSTIC').AsString+
                                    ' '+qDiagFiliacioBo.FieldByName('C_METGE').AsString+' '+
                                    FormatDateTime('dd/mm/yyyy',qDiagFiliacioBo.FieldByName('DATA').AsDateTime))
          else if qDiagFiliacioBo.Eof
          then mLogErrors.Lines.Add('C_DIAGNOSTIC <> : GUTTMANN '+qDiagGTN.FieldByName('C_DIAGNOSTIC').AsString+' ordre '+qDiagGTN.FieldByName('ORDRE').AsString+
                                    ' FILIACIOBO inexistent')
          else begin
              if qDiagGTN.FieldByName('C_DIAGNOSTIC').AsString <> qDiagFiliacioBo.FieldByName('C_DIAGNOSTIC').AsString
              then mLogErrors.Lines.Add('C_DIAGNOSTIC <>: GUTTMANN '+qDiagGTN.FieldByName('C_DIAGNOSTIC').AsString+' ordre '+qDiagGTN.FieldByName('ORDRE').AsString+
                                        ' FILIACIOBO '+qDiagFiliacioBo.FieldByName('C_DIAGNOSTIC').AsString+' ordre '+qDiagFiliacioBo.FieldByName('ORDRE').AsString+
                                        ' '+qDiagFiliacioBo.FieldByName('G_DIAGNOSTIC').AsString+
                                        ' '+qDiagFiliacioBo.FieldByName('N_DIAGNOSTIC').AsString+
                                        ' '+qDiagFiliacioBo.FieldByName('C_METGE').AsString+' '+
                                        FormatDateTime('dd/mm/yyyy',qDiagFiliacioBo.FieldByName('DATA').AsDateTime))
              else mLogErrors.Lines.Add('C_DIAGNOSTIC: GUTTMANN '+qDiagGTN.FieldByName('C_DIAGNOSTIC').AsString+' ordre '+qDiagGTN.FieldByName('ORDRE').AsString+
                                        ' FILIACIOBO '+qDiagFiliacioBo.FieldByName('C_DIAGNOSTIC').AsString+' ordre '+qDiagFiliacioBo.FieldByName('ORDRE').AsString+
                                        ' '+qDiagFiliacioBo.FieldByName('G_DIAGNOSTIC').AsString+
                                        ' '+qDiagFiliacioBo.FieldByName('N_DIAGNOSTIC').AsString+
                                        ' '+qDiagFiliacioBo.FieldByName('C_METGE').AsString+' '+
                                        FormatDateTime('dd/mm/yyyy',qDiagFiliacioBo.FieldByName('DATA').AsDateTime));
          end;

          if not qDiagGTN.Eof then qDiagGTN.Next;
          if not qDiagFiliacioBo.Eof then qDiagFiliacioBo.Next;
      end;

      // taula TPROCEDIMENTS
      qProcGTN.Close;  qProcGTN.Open;
      qProcFiliacioBo.Close; qProcFiliacioBo.Open;
      while (not qProcGTN.Eof) or (not qProcFiliacioBo.Eof) do
      begin
          if qProcGTN.Eof
          then mLogErrors.Lines.Add('C_PROCEDIMENT <>: GUTTMANN inexistent. FILIACIOBO '+qProcFiliacioBo.FieldByName('C_PROCEDIMENT').AsString+
                                    ' '+qProcFiliacioBo.FieldByName('G_PROCEDIMENT').AsString+
                                    ' '+qProcFiliacioBo.FieldByName('N_PROCEDIMENT').AsString+
                                    ' '+qProcFiliacioBo.FieldByName('C_METGE').AsString+' '+
                                    FormatDateTime('dd/mm/yyyy',qProcFiliacioBo.FieldByName('DATA').AsDateTime))
          else if qProcFiliacioBo.Eof 
          then mLogErrors.Lines.Add('C_PROCEDIMENT <>: GUTTMANN '+qProcGTN.FieldByName('C_PROCEDIMENT').AsString+' FILIACIOBO inexistent.')
          else begin
              if qProcGTN.FieldByName('C_PROCEDIMENT').AsString <> qProcFiliacioBo.FieldByName('C_PROCEDIMENT').AsString
              then mLogErrors.Lines.Add('C_PROCEDIMENT <>: GUTTMANN '+qProcGTN.FieldByName('C_PROCEDIMENT').AsString+
                                        ' FILIACIOBO '+qProcFiliacioBo.FieldByName('C_PROCEDIMENT').AsString+
                                        ' '+qProcFiliacioBo.FieldByName('G_PROCEDIMENT').AsString+
                                        ' '+qProcFiliacioBo.FieldByName('N_PROCEDIMENT').AsString+
                                        ' '+qProcFiliacioBo.FieldByName('C_METGE').AsString+' '+
                                        FormatDateTime('dd/mm/yyyy',qProcFiliacioBo.FieldByName('DATA').AsDateTime))
              else  mLogErrors.Lines.Add('C_PROCEDIMENT: GUTTMANN '+qProcGTN.FieldByName('C_PROCEDIMENT').AsString+
                                        ' FILIACIOBO '+qProcFiliacioBo.FieldByName('C_PROCEDIMENT').AsString+
                                        ' '+qProcFiliacioBo.FieldByName('G_PROCEDIMENT').AsString+
                                        ' '+qProcFiliacioBo.FieldByName('N_PROCEDIMENT').AsString+
                                        ' '+qProcFiliacioBo.FieldByName('C_METGE').AsString+' '+
                                        FormatDateTime('dd/mm/yyyy',qProcFiliacioBo.FieldByName('DATA').AsDateTime));
          end;

          if not qProcGTN.Eof then qProcGTN.Next;
          if not qProcFiliacioBo.Eof then qProcFiliacioBo.Next;
      end;

      // BQUIRURGIC(no caldria però per si de cas ho miro) i BQPROCEDIMENTS


      qTractGTN.Next;
      qTractFiliacioBo.Next;
  end;

end;

procedure Twmain.bbRecercaClick(Sender: TObject);
var
 opcio: Integer;
begin
  opcio:=AvisoLista('Tria el traspàs que vols fer:',['1. Projectes',
                                                     '2. Coinvestigadors',
                                                     '3. Participants - Estudis']);
  if (opcio<0) then Exit
               else opcio:=opcio+1;
  case opcio of
  1: RecercaProjectes;
  2: RecercaCoinvestigadors;
  3: RecercaParticipants;
  end;
end;

procedure TwMain.RecercaProjectes;
begin
  qProjectes.Close;
  qProjectes.Open;
  while not qProjectes.Eof do
  begin
      qUpdProjectes.ParamByName('c_ip').AsString := qProjectes.FieldbyName('c_ip').AsString;
      qUpdProjectes.ParamByName('n_ip').AsString := GutSelect('select nomsencer from metges where codi="%s"',
                                                              [qProjectes.FieldbyName('c_ip').AsString]);
      TRY qUpdProjectes.ExecSQL; FINALLY END;
      qProjectes.Next;
  end;
  ShowMessage('PROJECTES actualitzats correctament.');
end;

procedure twMain.RecercaCoinvestigadors;
begin
  Dades.Close;
  Dades.Open;
  while not Dades.Eof do
  begin
      qInsCoinvestigadors.ParamByName('proj').AsInteger := Dades.FieldByName('projecte').AsInteger;
      qInsCoinvestigadors.ParamByName('coin').AsString  := Dades.FieldByName('coinvest').AsString;
      qInsCoinvestigadors.ParamByName('n_co').AsString  := GutSelect('select nomsencer from metges where codi="%s"',
                                                                     [Dades.FieldByName('coinvest').AsString]);
      TRY qInsCoinvestigadors.ExecSql; FINALLY END;
      Dades.Next;
  end;
  ShowMessage('COINVESTIGADORS insertats correctament.');
end;

procedure Twmain.RecercaParticipants;
begin
  Dades2.Close;
  Dades2.Open;
  while not Dades2.Eof do
  begin
      qDadesGut.Close;
      qDadesGut.ParamByName('c_historia').AsInteger := Dades2.FieldByName('c_historia').AsInteger;
      qDadesGut.Open;

      // insert a PARTICIPANTS
      qInsParticipants.ParamByName('participant').AsInteger := Dades2.FieldByName('particip').AsInteger;
      qInsParticipants.ParamByName('nom').AsString          := qDadesGut.FieldByName('nomcomplet').AsString;
      qInsParticipants.ParamByName('data').AsDateTime       := qDadesGut.FieldByName('fecha_nac').AsDateTime;
      qInsParticipants.ParamByName('tdoc').AsString         := qDadesGut.FieldByName('t_doc').AsString;
      qInsParticipants.ParamByName('doc').AsString          := qDadesGut.FieldByName('dni').AsString;
      qInsParticipants.ParamByName('telf').AsString         := qDadesGut.FieldByName('telefono').AsString;
      qInsParticipants.ParamByName('c_historia').AsInteger  := Dades2.FieldByName('historia').AsInteger;      
      TRY qInsParticipants.ExecSql; FINALLY END;

      // insert a ESTUDIS
      qInsEstudis.ParamByName('c_projecte').AsInteger      := Dades2.FieldByName('projecte').AsInteger;
      qInsEstudis.ParamByName('nip').AsInteger := HolaSelect('select max(nip) from ESTUDIS where c_projecte=%d',
                                                             [Dades2.FieldByName('projecte').AsInteger]) + 1;
      qInsEstudis.ParamByName('c_participant').AsInteger   := Dades2.FieldByName('particip').AsInteger;
      qInsEstudis.ParamByName('data_inici').AsDateTime     := Dades2.FieldByName('datai').AsDateTime;
      qInsEstudis.ParamByName('data_fi'   ).AsDateTime     := Dades2.FieldByName('dataf').AsDateTime;
      qInsEstudis.ParamByName('ef_advers').AsString        := Dades2.FieldByName('efadvers').AsString;
      qInsEstudis.ParamByName('coment_ea').AsString        := Dades2.FieldByName('comentea').AsString;
      qInsEstudis.ParamByName('fi_prematura').AsString     := Dades2.FieldByName('fipremat').AsString;
      qInsEstudis.ParamByName('coment_fp').AsString        := Dades2.FieldByName('comentfp').AsString;
      qInsEstudis.ParamByName('coment').AsString           := Dades2.FieldByName('coment').AsString;
      qInsEstudis.ParamByName('data_recluta').AsDateTime   := Dades2.FieldByName('datarec').AsDateTime;
      qInsEstudis.ParamByName('usuari_recluta').AsString   := Dades2.FieldByName('userrec').AsString;
      qInsEstudis.ParamByName('data_finalitza').AsDateTime := Dades2.FieldByName('datafin').AsDateTime;
      qInsEstudis.ParamByName('usuari_finalitza').AsString := Dades2.FieldByName('userfin').AsString;
      TRY qInsEstudis.ExecSql; FINALLY END;

      Dades2.Next;
  end;
  ShowMessage('PARTICIPANTS i ESTUDIS insertats correctament.');
end;

procedure Twmain.bbPOAsClick(Sender: TObject);
var
 i: Integer;
 text: String;
begin
  POAsE.close;
  POAsE.open;
  i:=0;
  while not POAsE.eof do
  begin
      if GutSelect('select count(*) from CODIICD where c_icd="%s"',[POAsE.FieldByName('C_ICD').AsString])>0 then
      begin
          qUpdPoasE.ParamByName('C_ICD').AsString:=POAsE.FieldByName('C_ICD').AsString;
          TRY qUpdPoasE.ExecSQL;
              i:=i+1;
          FINALLY END;
      end
      else text:=text+'C_ICD '+POAsE.FieldByName('C_ICD').AsString+' no actualitzat. No està a CODIICD.';

      POAsE.Next;
  end;
  ShowMessage(Format('Actualitzats %d CODIS ICD a POA excempt.',[i])+#13+text);
end;

function TwMain.DataHora(dh: String): TDateTime;
var
 d,m,a,h,n,s,ss: Word;
 dia: TDate;
 hora: TTime;
begin
  Result:=0;
  d:=StrToInt(Copy(dh,1,2));
  m:=StrToInt(Copy(dh,4,2));
  a:=StrToInt(Copy(dh,7,4));
  Dia:=EncodeDate(a,m,d);

  h:=StrToInt(Copy(dh,12,2));
  n:=StrToInt(Copy(dh,15,2));
  s:=0; ss:=0;
  Hora:=EncodeTime(h,n,s,ss);

  Result:=Dia+Hora;
end;

function TwMain.Data(d: String): TDate;
var
 dd,mm,aaaa: Word;
 dia: TDate;
begin
  Result:=0;
  dd:=StrToInt(CopyLeft(d,2));
  mm:=StrToInt(Copy(d,3,2));
  aaaa:=StrToInt(CopyRight(d,4));
  Dia:=EncodeDate(aaaa,mm,dd);
  Result := dia;
end;

procedure Twmain.FileDlgClose(Sender: TObject);
var
 F: TextFile;
 s: String;
begin
  // Passar lo antic
  AssignFile(F,Lab.Caption);

  TRY Reset(F); EXCEPT Exit; END;

  qInsLogHC3Visor.Close;
  {if AvisoSN('Fitxer antic (S/N)?') then
  begin
      WaitOn(' Important dades ... ');
      // fitxer antic
      while not Eof(F) do
      begin
        ReadLn(F,S);
        if (Copy(S,18,4)='Cip:') then
        begin
            qInsLogHC3Visor.ParamByName('ID').AsInteger:=GutSelect('select max(id) from LOGHC3VISOR',[])+1;
            qInsLogHC3Visor.ParamByName('DATAHORA').AsDateTime:=DataHora(Copy(S,1,16));
            qInsLogHC3Visor.ParamByName('CIP').AsString:=Copy(S,23,14);
        end
        else begin
            qInsLogHC3Visor.ParamByName('USUARI').AsString:=Copy(S,55,3);
            TRY qInsLogHC3Visor.ExecSQL; FINALLY END;
        end;
      end;
  end
  else begin }
      WaitOn(' Important dades ... ');
      // fitxer nou
      while not Eof(F) do
      begin
        ReadLn(F,S);
        if (Copy(S,38,4)='Cip:') then
        begin
            qInsLogHC3Visor.ParamByName('ID').AsInteger:=GutSelect('select max(id) from LOGHC3VISOR',[])+1;
            qInsLogHC3Visor.ParamByName('DATAHORA').AsDateTime:=DataHora(Copy(S,1,19));
            if Copy(S,43,1)=' ' then qInsLogHC3Visor.ParamByName('CIP').Clear
                                else qInsLogHC3Visor.ParamByName('CIP').AsString:=Copy(S,43,14);
        end
        else begin
            qInsLogHC3Visor.ParamByName('USUARI').AsString:=Copy(S,67,3);
            TRY if not qInsLogHC3Visor.ParamByName('CIP').IsNull then qInsLogHC3Visor.ExecSQL; FINALLY END;
        end;
      end;
  {end;}
  CloseFile(F);
  WaitOff();
end;

procedure Twmain.bbLogHc3VisorClick(Sender: TObject);
begin
  FileDlg.Execute;
end;

procedure Twmain.FileDlgSelectionChange(Sender: TObject);
begin
  Lab.Caption:=FileDlg.FileName;
  Lab.Visible:=True;
end;

procedure Twmain.bbLogHCCCClick(Sender: TObject);
var
 i: Integer;
begin
  qLogHCCC.Close;
  qLogHCCC.Open; i:=0;
  while not qLogHCCC.Eof do
  begin
      qInsLogHCCC.ParamByName('PK').AsInteger:=GutSelect('select max(pk) from LOGHCCC',[])+1;
      qInsLogHCCC.ParamByName('C_TRACTAMENT').AsInteger:=qLogHCCC.FieldByName('c_tractament').AsInteger;
      qInsLogHCCC.ParamByName('DATA_PDF').AsDateTime:=qLogHCCC.FieldByName('DATA_ALTA').AsDateTime+1;
      qInsLogHCCC.ParamByName('DATA_1ER').AsDateTime:=qLogHCCC.FieldByName('DATA_ALTA').AsDateTime+1;
      qInsLogHCCC.ParamByName('DATA_SUCCES').AsDateTime:=qLogHCCC.FieldByName('DATA_ALTA').AsDateTime+1;
      qInsLogHCCC.ParamByName('LOG').AsString:='Cip: '+qLogHCCC.FieldByName('TSI').AsString+
                                               ' H: '+qLogHCCC.FieldByName('C_HISTORIA').AsString+
                                               ' T: '+qLogHCCC.FieldByName('C_TRACTAMENT').AsString+
                                               ' Id: '+qLogHCCC.FieldByName('HCCC_INFORME_ALTA').AsString;
      TRY qInsLogHCCC.ExecSQL; i:=i+1; FINALLY END; 
      qLogHCCC.Next;
  end;
  ShowMessage(Format('Insertats %d registres',[i]));
end;

procedure Twmain.BitBtn1Click(Sender: TObject);
var
 i,m: Integer;
begin
  Panel5.visible:= True;
  m:=GutSelect('select max(pk) from loghccc',[]);
  mLogFile.Lines.Clear;
  for i:=1 to m do
  begin
      if GutSelect('select count(*) from loghccc where pk=%d',[i])=0
      then mLogFile.Lines.Add('Falta PK '+IntToStr(i));
  end;
end;

procedure Twmain.bbPMClick(Sender: TObject);
var
 i,c_tract: Integer;
 text: String;
begin
  PM.Close;
  PM.Open;
  i:=0; text:='';

  while not PM.Eof do
  begin
      c_tract:=0;
      c_tract:=GutSelect('SELECT C_TRACTAMENT FROM TRACTAMENTS WHERE C_HISTORIA=%d AND DATA_ALTA="%s"',
                         [PM.FieldByName('HISTORIA').AsInteger,
                          FormatDateTime('dd.mm.yyyy',PM.FieldByName('FECHA_ALTA').AsDateTime)]);
      if c_tract>0 then
      begin
          TRY qUpdPM.ParamByName('PM').AsFloat:=PM.FieldByName('PESO').AsFloat;
              qUpdPM.ParamByName('C_TRACT').AsInteger:=c_tract;
              qUpdPM.ExecSQL;

              i:=i+1;
          FINALLY END;
      end
      else text:=text+Nline+' no trobat tractament PROCES '+ PM.FieldByName('PROCESO').AsString+' DALTA '+PM.FieldByName('FECHA_ALTA').AsString;
      PM.Next;
  end;
  ShowMessage(Format('Actualitzats %d PM.',[i])+#13+text);
end;

procedure Twmain.bbCMGClick(Sender: TObject);
var
 i: Integer;
begin
  CMG.Close;
  CMG.Open;
  i:=0;

  while not CMG.Eof do
  begin
      TRY qUpdICD.ParamByName('C_ICD').AsString:=CMG.FieldByName('C_ICD').AsString;
          qUpdICD.ExecSQL;

          i:=i+1;
      FINALLY END;
      CMG.Next;
  end;
  ShowMessage(Format('Actualitzats %d CMG.',[i]));
end;

procedure Twmain.bbPMDRGClick(Sender: TObject);
var
 i,TractOK: Integer;
begin
  Panel5.Visible:= True;
  mLogErrors.Lines.Clear;
  PMDRG.Close;
  PMDRG.Open;
  i:=0;
  WaitOn('Actualitzant PM DRG . . .');
  while not PMDRG.Eof do
  begin
      TractOK:=0;
      TractOK:=GutSelect('SELECT C_TRACTAMENT FROM TRACTAMENTS WHERE C_HISTORIA=%d AND DATA_INGRES="%s" AND DATA_ALTA="%s"',
                         [PMDRG.FieldByName('HC').AsInteger,FormatDateTime('dd.mm.yyyy',PMDRG.FieldByName('DINGRES').AsDateTime),
                          FormatDateTime('dd.mm.yyyy',PMDRG.FieldByName('DALTA').AsDateTime)]);
      if TractOK>0 then
      begin
          TRY qUpdPMDRG.ParamByName('PMDRG'  ).AsFloat  :=PMDRG.FieldByName('PMDRG').AsFloat;
              qUpdPMDRG.ParamByName('C_TRACT').AsInteger:=TractOK;
              qUpdPMDRG.ExecSQL;

              i:=i+1;
          FINALLY END;
      end
      else mLogErrors.Lines.Add(Format('Tractament no trobat a TRACTAMENTS (HC: %d DIngres: "%s" DAlta: "%s").',
                                [PMDRG.FieldByName('HC').AsInteger,FormatDateTime('dd.mm.yyyy',PMDRG.FieldByName('DINGRES').AsDateTime),
                                 FormatDateTime('dd.mm.yyyy',PMDRG.FieldByName('DALTA').AsDateTime)]));
      PMDRG.Next;
  end;
  Waitoff;
  ShowMessage(Format('Actualitzats %d PMDRG.',[i]));
end;

procedure Twmain.sbMigracioTesisClick(Sender: TObject);
var
 q,q2,q3: TQuery;
 pinta,i,conta: Integer;
 FitxerTXT: TextFile;
 linia,liniaAnt,nomFtx,Ftx,Comptabilitzada,Saldada,
 BaseIVA1,IVA1,BaseIVA2,IVA2,BaseIVA3,IVA3,
 CodiDestinatari,CodiGQE,DataFacturacio,DataEmissio,
 CodiCanalCobrament,TipusPagament,Sexe,Cognom2: String;
begin
  Panel5.visible:= True;
  mLogErrors.Lines.Clear;
  mLogFile.Lines.Clear; mLogFile.Visible := False;
  mLogICD.Lines.Clear;  mLogICD.Visible := False;

  q := TQuery.Create(Application);
  q.DatabaseName := wData.Gdb.DatabaseName;
  q2 := TQuery.Create(Application);
  q2.DatabaseName := wData.Gdb.DatabaseName;
  q3 := TQuery.Create(Application);
  q3.databaseName := wData.Gdb.DatabaseName;

  // Genera els excels de la Migració per Tesis
  // 1 - GQE
  if cbGQE.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici GQE '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='GQE.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='CODIGQE'+Separador+'NOMGQE';
      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      linia:='00'+Separador+'PRIVATS';
      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT C_CENTREFAC||C_CLIENT AS CODIGQE, N_CLIENT AS NOMGQE FROM CLIENTS WHERE C_CENTREFAC<>"04" '+
                    'ORDER BY C_CENTREFAC, C_CLIENT';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:=q.FieldByName('CODIGQE').AsString+Separador+q.FieldByName('NOMGQE').AsString;
          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final GQE '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 2 - DESTINATARIS
  if cbDestinataris.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici DESTINATARIS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='Destinataris.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='CODIGQE'+Separador+'CODIDESTINATARI'+Separador+'DESCRIPCIODESTINATARI'+Separador+'RAOSOCIAL'+Separador+
             'DOMICILI'+Separador+'CODIPOSTAL'+Separador+'NOMPOBLACIO'+Separador+'CODIPROVINCIA'+Separador+'TELEFON'+Separador+'NIF'+
             Separador+'DESCOMPTE'+Separador+'COMPTACONTABLE'+Separador+'GRUPTARIFA'+Separador+'FINANCADOR'+Separador+'CODIFINANCADORGUTTMANN'+
             Separador+'CODIDELEGACIOFINANCADORGUTTMANN'+Separador+'ACTIU'+Separador+'C_IDIOMA';
      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT D.C_CENTREFAC||D.C_CLIENT AS CODIGQE, D.C_CENTREFAC||D.C_CLIENT||D.C_DELEGACIO AS CODIDESTINATARI,     '+
                    'C.N_CLIENT||" "||D.N_DELEGACIO AS DESCRIPCIODESTINATARI,C.N_CLIENT AS RAOSOCIAL,D.NOMVIA AS DOMICILI,         '+
                    'D.CPOSTAL AS CODIPOSTAL,D.POBLACIO AS NOMPOBLACIO,F_LEFT(D.CPOSTAL,2) AS CODIPROVINCIA,D.TELEFONO AS TELEFON, '+
                    'C.NIF,D.C_CENTREFAC AS GRUPTARIFA,D.ACTIU,D.C_IDIOMA                                                          '+
                    'FROM DELEGACIONS D JOIN CLIENTS C ON D.C_CENTREFAC=C.C_CENTREFAC AND D.C_CLIENT=C.C_CLIENT                    '+
                    'WHERE (NOT D.C_CENTREFAC IN("05","10","04")) ORDER BY D.C_CENTREFAC, D.C_CLIENT, D.C_DELEGACIO                ';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:=q.FieldByName('CODIGQE'              ).AsString+Separador+
                 q.FieldByName('CODIDESTINATARI'      ).AsString+Separador+
                 q.FieldByName('DESCRIPCIODESTINATARI').AsString+Separador+
                 q.FieldByName('RAOSOCIAL'            ).AsString+Separador+
                 q.FieldByName('DOMICILI'             ).AsString+Separador+
                 q.FieldByName('CODIPOSTAL'           ).AsString+Separador+
                 q.FieldByName('NOMPOBLACIO'          ).AsString+Separador+
                 q.FieldByName('CODIPROVINCIA'        ).AsString+Separador+
                 q.FieldByName('TELEFON'              ).AsString+Separador+
                 q.FieldByName('NIF'                  ).AsString+Separador+
                 ''+Separador+                                              // DESCOPMTE
                 ''+Separador+                                              // CODICOMPTABLE
                 q.FieldByName('GRUPTARIFA'           ).AsString+Separador+
                 ''+Separador+                                              // FINANCADOR
                 ''+Separador+                                              // CODIFINANCADORGUTTMANN
                 ''+Separador+                                              // CODIDELEGACIOFINANCADORGUTTMANN
                 q.FieldByName('ACTIU'                ).AsString+Separador+
                 q.FieldByName('C_IDIOMA'             ).AsString;
          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final DESTINATARIS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 3 - CONCEPTES i altres a mà

  // 4 - CONCEPTES ORTESIS
  if cbConceptesOrtesis.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici CONCEPTES ORTESIS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='ConceptesOrtesis.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='C_ORTESIS'+Separador+'N_ORTESIS'+Separador+'IVAVENTA'+Separador+'PREUMAXIMSERVEI'+Separador+'N_ORTESIS2'+Separador+
                   'C_FAMILIA'+Separador+'CODISERVEI'+Separador+'APORTACIOSERVEI'+Separador+'ACTIU';
      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT C_ORTESIS,"O"||C_ORTESIS as ORTESI,N_ORTESIS,IVAVENTA,PREUMAXIMSERVEI,N_ORTESIS2,C_FAMILIA,'+
                    'CODISERVEI,APORTACIOSERVEI,ACTIU FROM CODIORTESIS';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:=q.FieldByName('C_ORTESIS'      ).AsString+Separador+
                 q.FieldByName('ORTESI'         ).AsString+Separador+
                 q.FieldByName('N_ORTESIS'      ).AsString+Separador+
                 q.FieldByName('IVAVENTA'       ).AsString+Separador+
                 q.FieldByName('PREUMAXIMSERVEI').AsString+Separador+
                 q.FieldByName('N_ORTESIS2'     ).AsString+Separador+
                 q.FieldByName('C_FAMILIA'      ).AsString+Separador+
                 q.FieldByName('CODISERVEI'     ).AsString+Separador+
                 q.FieldByName('APORTACIOSERVEI').AsString+Separador+
                 q.FieldByName('ACTIU'          ).AsString;

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final CONCEPTES ORTESIS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 5 - METGES
  if cbMetges.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici METGES '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='Metges.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='CODIMETGE'+Separador+'NOMMETGE'+Separador+'DOMICILI'+Separador+'NUMCOL'+Separador+'NIF'+Separador+'TELEFON'+Separador+
             'POBLACIO'+Separador+'DATANAIX'+Separador+'SEXE'+Separador+'EMAIL';
      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT CODI,NOMSENCER,SEXE FROM METGES WHERE C_GRUP="ME" AND NOT CODI LIKE "%99%" AND CODI<>"P95" ORDER BY CODI';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:=q.FieldByName('CODI'     ).AsString+Separador+
                 q.FieldByName('NOMSENCER').AsString+Separador+
                 ''+Separador+                                         // DOMICILI
                 ''+Separador+                                         // NUMCOL
                 ''+Separador+                                         // NIF
                 ''+Separador+                                         // TELEFON
                 ''+Separador+                                         // POBLACIO
                 ''+Separador+                                         // DATANAIX
                 q.FieldByName('SEXE'     ).AsString+Separador+
                 '';                                                   // EMAIL

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final METGES '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 6  - UPs
  if cbUPs.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici UPs '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='UPs.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='C_DELEGACIO'+Separador+'N_DELEGACIO'+Separador+'C_REGIO'+Separador+'ACTIU';
      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT * FROM P_DELEGACIONS_UPS';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:=q.FieldByName('C_DELEGACIO').AsString+Separador+
                 q.FieldByName('N_DELEGACIO').AsString+Separador+
                 q.FieldByName('C_REGIO'    ).AsString+Separador+
                 q.FieldByName('ACTIU'      ).AsString;

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final UPs '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 7 - LLITS
  if cbLlits.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici LLITS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='Llits.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='C_LLIT';
      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT DISTINCT C_LLIT FROM LLITS ORDER BY C_LLIT';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:=q.FieldByName('C_LLIT').AsString;
          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final LLITS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 8 - PROVEIDORS
  if cbProveidors.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici PROVEIDORS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='Proveidors.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='C_PROV'+Separador+'N_PROV'+Separador+'DIRECCIO'+Separador+'POBLACIO'+Separador+'CPOSTAL'+Separador+'CIF'+Separador+
             'CP_BANC'+Separador+'C_AGENCIA'+Separador+'DC'+Separador+'COMPTE';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT C_PROV,N_PROV,DIRECCIO,POBLACIO,CPOSTAL,CIF,CP_BANC,C_AGENCIA,DC,COMPTE FROM PROVEIDORS WHERE ORTESIS="S"';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:=q.FieldByName('C_PROV'   ).AsString+Separador+
                 q.FieldByName('N_PROV'   ).AsString+Separador+
                 q.FieldByName('DIRECCIO' ).AsString+Separador+
                 q.FieldByName('CPOSTAL'  ).AsString+Separador+
                 q.FieldByName('CIF'      ).AsString+Separador+
                 q.FieldByName('CP_BANC'  ).AsString+Separador+
                 q.FieldByName('C_AGENCIA').AsString+Separador+
                 q.FieldByName('DC'       ).AsString+Separador+
                 q.FieldByName('COMPTE'   ).AsString;

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final PROVEIDORS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 9 -  HISTORIES CLÍNIQUES
  if cbHistoriesCliniques.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici HISTORIESCLINIQUES '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='HistoriesCliniques.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='NUMHISTORIACLINICA'+Separador+'COGNOM1'+Separador+'COGNOM2'+Separador+'NOM'+Separador+'SEXE'+Separador+'DATANAIXEMENT'+Separador+
             'NIF'+Separador+'BLANC'+Separador+'DOMICILI'+Separador+'PAIS'+Separador+'MUNICIPI'+Separador+'NOMPOBLACIO'+Separador+'CODIPOSTAL'+Separador+
             'TELEFON'+Separador+'OBSERVACIONS'+Separador+'CIP'+Separador+'IDIOMA';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT F.NUM_HIST,F.APELLIDO1,F.APELLIDO2,F.NOMBRE,F.SEXO,F.FECHA_NAC,F.DNI,F.IDIOMA,'+
                    '       F_LEFT(F.ADRESA,40) as DOMICILI,P.C_ISO,F_LEFT(F.POBLACIO,30) as NOMPOBLACIO, '+
                    '       F.CODIGO,F.TELEFONO,F.TSI                                                     '+
                    'FROM FILIACIO F LEFT JOIN PAIS P ON F.PAIS=P.C_PAIS ORDER BY F.NUM_HIST              ';
      q.Open; q.First;
      while not q.Eof do
      begin
          if (q.FieldByName('SEXO').AsString='D') then Sexe:='M'
                                                  else Sexe:=q.FieldByName('SEXO').AsString;

          if q.FieldByName('FECHA_NAC').IsNull then DataFacturacio:=''
          else DataFacturacio:=FormatDateTime('yyyymmdd',q.FieldByName('FECHA_NAC').AsDateTime);

          if (q.FieldByName('APELLIDO2').IsNull) then Cognom2:=' '
                                                 else Cognom2:=q.FieldByName('APELLIDO2').AsString;

          linia:=q.FieldByName('NUM_HIST'    ).AsString+Separador+
                 q.FieldByName('APELLIDO1'   ).AsString+Separador+
                 Cognom2                               +Separador+
                 q.FieldByName('NOMBRE'      ).AsString+Separador+
                 Sexe                                  +Separador+
                 DataFacturacio                        +Separador+
                 q.FieldByName('DNI'         ).AsString+Separador+
                 ' '                                   +Separador+
                 q.FieldByName('DOMICILI'    ).AsString+Separador+
                 q.FieldByName('C_ISO'       ).AsString+Separador+
                 ''                                    +Separador+  // Municipi, no el tenim 
                 q.FieldByName('NOMPOBLACIO' ).AsString+Separador+
                 q.FieldByName('CODIGO'      ).AsString+Separador+
                 q.FieldByName('TELEFONO'    ).AsString+Separador+
                 ''                                    +Separador+
                 q.FieldByName('TSI'         ).AsString+Separador+
                 q.FieldByName('IDIOMA'      ).AsString;

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final HISTORIESCLINIQUES '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 10 - HOSPITALITZACIONS
  if cbHospitalitzacions.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici HOSPITALITZACIONS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='Hospitalitzacions.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='NUMTRACTAMENT'+Separador+'HABITACIOINGRES'+Separador+'NUMHISTORIA'+Separador+'DATAINGRES'+Separador+'DATAALTA'+Separador+
             'HORAINGRES'+Separador+'HORAALTA'+Separador+'IDGCE'+Separador+'CODISERVEI'+Separador+'NUMAUTORITZACIO'+Separador+
             'METGEASSOCIATEPISODI'+Separador+'NUMAFILIACIO'+Separador+'CODIUNITATPRODUCTIVA'+Separador+'CODIDESTINATARI'+Separador+
             'CODICLASSEALTA'+Separador+'TEXTDIAGOSTICINGRES'+Separador+'CODIDIAGNOSTICINGRES'+Separador+'CATEGORIAINGRES'+Separador+'PLANTAINGRES';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT * FROM P_TRACTAMENTS_HOSPITALITZACIONS WHERE IDGCE IS NOT NULL ';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:='T'+q.FieldByName('NUMTRACTAMENT'   ).AsString+Separador+
                 q.FieldByName('HABITACIOINGRES'     ).AsString+Separador+
                 q.FieldByName('NUMHISTORIA'         ).AsString+Separador+
                 q.FieldByName('DATAINGRES'          ).AsString+Separador+
                 q.FieldByName('DATAALTA'            ).AsString+Separador+
                 q.FieldByName('HORAINGRES'          ).AsString+Separador+
                 q.FieldByName('HORAALTA'            ).AsString+Separador+
                 q.FieldByName('IDGCE'               ).AsString+Separador+
                 q.FieldByName('CODISERVEI'          ).AsString+Separador+
                 q.FieldByName('NUMAUTORITZACIO'     ).AsString+Separador+
                 q.FieldByName('METGEASSOCIATEPISODI').AsString+Separador+
                 q.FieldByName('NUMAFILIACIO'        ).AsString+Separador+
                 q.FieldByName('CODIUNITATPRODUCTIVA').AsString+Separador+
                 q.FieldByName('CODIDESTINATARI'     ).AsString+Separador+
                 q.FieldByName('CODICLASSEALTA'      ).AsString+Separador+
                 q.FieldByName('TEXTDIAGOSTICINGRES' ).AsString+Separador+
                 q.FieldByName('CODIDIAGNOSTICINGRES').AsString+Separador+
                 q.FieldByName('CATEGORIAINGRES'     ).AsString+Separador+
                 q.FieldByName('PLANTAINGRES'        ).AsString;

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final HOSPITALITZACIONS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 11 - TRACT.REHAB
  if cbTractReahb.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici TRACT.REHAB '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='TractRehab.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='NUMTRACTAMENT'+Separador+'NUMHISTORIA'+Separador+'DATAINICITRACTAMENT'+Separador+'DATAFITRACTAMENT';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      if eTractament.AsString='' then q.SQL.Text := 'SELECT * FROM  P_TRACTAMENTS_TRACTREHAB(NULL)'
                                 else q.SQL.Text := 'SELECT * FROM  P_TRACTAMENTS_TRACTREHAB('+eTractament.AsString+')';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:='T'+q.FieldByName('NUMTRACTAMENT'  ).AsString+Separador+
                 q.FieldByName('NUMHISTORIA'        ).AsString+Separador+
                 q.FieldByName('DATAINICITRACTAMENT').AsString+Separador+
                 q.FieldByName('DATAFITRACTAMENT'   ).AsString;

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final TRACT.REHAB '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 12 - VISITES SESSIONS
  if cbVisitesSessions.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici VISITES SESSIONS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='VisitesSessions.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='CODIASSISTENCIAGUTTMANN'+Separador+'NUMHISTORIA'+Separador+'DATAVISITASESSIO'+Separador+'SERVEI'+Separador+
             'NUMTRACTAMENT'+Separador+'CODIDISPENSARI'+Separador+'IDGCE'+Separador+'CODIDESTINATARI'+Separador+'NUMAFILIACIO'+Separador+
             'CODIUNITATPRODUCTIVA';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT * FROM P_TRACTAMENTS_VISITESSESSIONS('+eHC.AsString+','+eHC2.AsString+','+eOpcio.AsString+') WHERE IDGCE IS NOT NULL';
      q.Open; q.First;
      while not q.Eof do
      begin
          if q.FieldByName('CODIASSISTENCIAGUTTMANN').IsNull or (q.FieldByName('CODIASSISTENCIAGUTTMANN').AsString='')
          then linia:=Separador+
                      q.FieldByName('NUMHISTORIA'            ).AsString+Separador+
                      q.FieldByName('DATAVISITASESSIO'       ).AsString+Separador+
                      q.FieldByName('SERVEI'                 ).AsString+Separador+
                      'T'+q.FieldByName('NUMTRACTAMENT'      ).AsString+Separador+
                      q.FieldByName('CODIDISPENSARI'         ).AsString+Separador+
                      q.FieldByName('IDGCE'                  ).AsString+Separador+
                      q.FieldByName('CODIDESTINATARI'        ).AsString+Separador+
                      q.FieldByName('NUMAFILIACIO'           ).AsString+Separador+
                      q.FieldByName('CODIUNITATPRODUCTIVA'   ).AsString
          else linia:='G'+q.FieldByName('CODIASSISTENCIAGUTTMANN').AsString+Separador+
                      q.FieldByName('NUMHISTORIA'            ).AsString+Separador+
                      q.FieldByName('DATAVISITASESSIO'       ).AsString+Separador+
                      q.FieldByName('SERVEI'                 ).AsString+Separador+
                      'T'+q.FieldByName('NUMTRACTAMENT'      ).AsString+Separador+
                      q.FieldByName('CODIDISPENSARI'         ).AsString+Separador+
                      q.FieldByName('IDGCE'                  ).AsString+Separador+
                      q.FieldByName('CODIDESTINATARI'        ).AsString+Separador+
                      q.FieldByName('NUMAFILIACIO'           ).AsString+Separador+
                      q.FieldByName('CODIUNITATPRODUCTIVA'   ).AsString;

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final VISITES SESSIONS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 13 - TARIFAPROVAESP
  if cbTarifaprovaesp.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici TARIFAPROVAESP '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='TarifaProvaEsp.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='C_PROV'+Separador+'C_PROVAESP'+Separador+'PREU';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT C_PROV, "P"||C_PROVAESP AS C_PROVAESP, PREU FROM TARIFAPROVAESP';
      q.Open; q.First;
      while not q.Eof do
      begin
          linia:=q.FieldByName('C_PROV'    ).AsString+Separador+
                 q.FieldByName('C_PROVAESP').AsString+Separador+
                 q.FieldByName('PREU'      ).AsString;

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final TARIFAPROVAESP '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 14 - FACTURES
  if cbFactures.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici FACTURES '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='Factures.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='NUMFACTURA'+Separador+'DATAFACTURACIO'+Separador+'CODIGQE'+Separador+'CODIDESTINATARI'+Separador+'IMPORTBRUT'+Separador+
             'BASEIVA1'+Separador+'BASEIVA2'+Separador+'BASEIVA3'+Separador+'IVA1'+Separador+'IVA2'+Separador+'IVA3'+Separador+
             'IMPORTDESCOMPTE'+Separador+'DATAEMISSIOFACTURA'+Separador+'COMPTABILITZADA'+Separador+'SALDADA';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);
      liniaAnt:=linia;

      q.SQL.Text := 'SELECT DISTINCT C.C_FACTURA,C.N_FACTURA,C.DATA_FACTU,C.TOTAL,C.DATA_CREA,C.CONTA,     '+
                    '       C.PENDENT,L.C_CENTREFAC,L.C_CLIENT,L.C_DELEGACIO,L.C_HISTORIA,L.ORIGEN         '+ // ,L.C_ORTESIS
                    'FROM FACCAP C                                                                         '+
                    'JOIN FACLIN L      ON C.C_FACTURA=L.C_FACTURA                                         '+
                    'JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT                                   '+
                    'left join codiortesis co on l.c_ortesis=co.c_ortesis                                  '+
                    'WHERE (C.DATA_FACTU BETWEEN "'+FormatDateTime('dd.mm.yyyy',eDesde.AsDateTime)+'" AND "'+
                    FormatDateTime('dd.mm.yyyy',eFins.AsDateTime)                                           +
                    '") AND NOT (C.N_FACTURA LIKE "%/44")                                                  '+ // 10.3.2015: els rappels no enviar-los. tenen diferents CENTREFAC a FACLIN
                    'AND NOT (C.C_FACTURA IN (46850,46851,43856,43867,41027,41028))                        '+ // 11.3.2015: aquestes factures són errònies i no les enviem (00 amb clients diferents)
                    'AND NOT (L.C_CENTREFAC IN("05","10"))                                                 '+
                    'AND ((L.C_CENTREFAC<>"04") OR (L.C_CENTREFAC="04" AND L.ORIGEN<>"R"))                 '+
                    'AND ((T.C_PRESTACIO="1004") OR (NOT T.C_ESTATFAC BETWEEN 50 AND 59))                  '+
                    'AND ((T.C_CENTREFAC="00") OR (T.C_CENTREFAC IS NOT NULL AND T.C_CLIENT IS NOT NULL AND'+
                    '                              T.C_DELEGACIO IS NOT NULL))                             '+ // Els que no tenen GQE no els enviem a tractaments
                    'and (((l.origen="O") and (l.c_ortesis is not null) and (co.n_ortesis is not null)) or '+
                    '     (l.origen<>"O")) ORDER BY C.C_FACTURA,L.C_CENTREFAC, L.C_CLIENT, L.C_DELEGACIO   ';
      q.Open; q.First;

      while not q.Eof do
      begin
          if q.FieldByName('data_factu').IsNull then DataFacturacio:=''
          else DataFacturacio:=FormatDateTime('yyyymmdd',q.FieldByName('data_factu').AsDateTime);

          if q.FieldByName('data_crea').IsNull then DataEmissio:=''
          else DataEmissio:=FormatDateTime('yyyymmdd',q.FieldByName('data_crea').AsDateTime);

          if q.FieldByName('CONTA').IsNull then Comptabilitzada:='N'
                                           else Comptabilitzada:='S';

          if q.FieldByName('PENDENT').AsInteger > 0 then Saldada:='N'
                                                    else Saldada:='S';

          if q.FieldByName('c_centrefac').AsString = '00' then
          begin
              CodiGQE:=q.FieldByName('c_centrefac').AsString;
              CodiDestinatari:=q.FieldByName('c_historia').AsString;
          end
          else if q.FieldByName('c_centrefac').AsString = '04' then
               begin
                   CodiGQE:=q.FieldByName('c_centrefac').AsString+q.FieldByName('c_client').AsString;
                   if q.FieldByName('c_client').AsString='UP' then
                   begin
                       if      q.FieldByName('origen').AsString='OT' then CodiDestinatari:='O'
                       else if q.FieldByName('origen').AsString='OI' then CodiDestinatari:='O'
                                                                     else CodiDestinatari:=q.FieldByName('origen').AsString;
                   end
                   else CodiDestinatari:=CodiGQE+q.FieldByName('c_delegacio').AsString;
               end
               else begin
                   CodiGQE:=q.FieldByName('c_centrefac').AsString;
                   CodiDestinatari:=CodiGQE+q.FieldByName('c_delegacio').AsString;
               end;

          i:=1;BaseIVA1:=''; IVA1:=''; BaseIVA2:=''; IVA2:=''; BaseIVA3:=''; IVA3:='';
          q2.SQL.Text := 'select SUM(NETO) as BASE,SUM(NETO-BRUTO) AS IMPIVA, IVA from faclin where c_factura='+
                         q.FieldByName('C_factura').AsString+' group by iva';
          q2.Open;
          while not q2.Eof do
          begin
              if      i=1 then begin BaseIVA1:=q2.FieldByName('BASE').AsString; IVA1:=q2.FieldByName('IMPIVA').AsString; end
              else if i=2 then begin BaseIVA2:=q2.FieldByName('BASE').AsString; IVA2:=q2.FieldByName('IMPIVA').AsString; end
              else if i=3 then begin BaseIVA3:=q2.FieldByName('BASE').AsString; IVA3:=q2.FieldByName('IMPIVA').AsString; end;
              q2.Next;
              i:=i+1;
          end;
          q2.Close;

          linia:=q.FieldByName('N_FACTURA').AsString+Separador+
                 DataFacturacio                     +Separador+
                 CodiGQE                            +Separador+
                 CodiDestinatari                    +Separador+
                 q.FieldByName('TOTAL').AsString    +Separador+
                 BaseIVA1                           +Separador+
                 BaseIVA2                           +Separador+
                 BaseIVA3                           +Separador+
                 IVA1                               +Separador+
                 IVA2                               +Separador+
                 IVA3                               +Separador+
                 '0'                                +Separador+   // Import descompte
                 DataEmissio                        +Separador+
                 Comptabilitzada                    +Separador+
                 Saldada;

          if (liniaAnt<>linia) then
          begin
              Append(FitxerTXT);
              Writeln(FitxerTXT,linia);
          end;
          liniaAnt:=linia;

          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final FACTURES '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 15 - LINIES DESPESES
  if cbLiniesDespeses.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici LINIES DESPESES '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='LiniesDespeses.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='NUMTRACTAMENT'+Separador+'CODICONCEPTEAFACTURAR'+Separador+'DATAIMPUTACIO'+Separador+'CODIGQE'+Separador+
             'CODIDESTINATARI'+Separador+'QUANTITAT'+Separador+'PREU'+Separador+'IMPORT'+Separador+'CODISERVEI'+Separador+
             'NUMFACTURA'+Separador+'CODIASSISTENCIAGUTTMANN';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT DISTINCT C.C_FACTURA,L.C_CENTREFAC,L.C_CLIENT,L.C_DELEGACIO,L.C_HISTORIA,L.ORIGEN   '+
                    ',L.C_LINIAFAC,T.C_TRACTAMENT,C.DATA_FACTU,L.CANTITAT,L.PREU,L.NETO,M.C_ESPECIAL,C.N_FACTURA'+
                    ' FROM FACCAP C JOIN FACLIN L      ON C.C_FACTURA=L.C_FACTURA                               '+
                    'JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT                                        '+
                    'LEFT JOIN METGES M ON T.C_COORDINADOR=M.CODI                                               '+
                    'left join codiortesis co on l.c_ortesis=co.c_ortesis                                       '+
                    'WHERE (C.DATA_FACTU BETWEEN "'+FormatDateTime('dd.mm.yyyy',eDesde.AsDateTime)+'" AND "     '+
                    FormatDateTime('dd.mm.yyyy',eFins.AsDateTime)                                                +
                    '") AND NOT (C.N_FACTURA LIKE "%/44")                                                       '+ // 10.3.2015: els rappels no enviar-los. tenen diferents CENTREFAC a FACLIN
                    'AND NOT (C.C_FACTURA IN (46850,46851,43856,43867,41027,41028))                             '+ // 11.3.2015: aquestes factures són errònies i no les enviem (00 amb clients diferents)
                    'AND NOT (L.C_CENTREFAC IN("05","10"))                                                      '+
                    'AND ((L.C_CENTREFAC<>"04") OR (L.C_CENTREFAC="04" AND L.ORIGEN<>"R"))                      '+
                    'AND ((T.C_PRESTACIO="1004") OR (NOT T.C_ESTATFAC BETWEEN 50 AND 59))                       '+
                    'AND ((T.C_CENTREFAC="00") OR (T.C_CENTREFAC IS NOT NULL AND T.C_CLIENT IS NOT NULL AND     '+
                    '                              T.C_DELEGACIO IS NOT NULL))                                  '+ // Els que no tenen GQE no els enviem a tractaments
                    'and (((l.origen="O") and (l.c_ortesis is not null) and (co.n_ortesis is not null)) or      '+
                    '     (l.origen<>"O")) ORDER BY C.C_FACTURA, L.C_LINIAFAC                                   ';

      q.Open; q.First;

      while not q.Eof do
      begin
          if q.FieldByName('c_centrefac').AsString = '00' then
          begin
              CodiGQE:=q.FieldByName('c_centrefac').AsString;
              CodiDestinatari:=q.FieldByName('c_historia').AsString;
          end
          else if q.FieldByName('c_centrefac').AsString = '04' then
               begin
                   CodiGQE:=q.FieldByName('c_centrefac').AsString+q.FieldByName('c_client').AsString;
                   if q.FieldByName('c_client').AsString='UP' then CodiDestinatari:=q.FieldByName('origen').AsString
                                                              else CodiDestinatari:=CodiGQE+q.FieldByName('c_delegacio').AsString;
               end
               else begin
                   CodiGQE:=q.FieldByName('c_centrefac').AsString;
                   CodiDestinatari:=CodiGQE+q.FieldByName('c_delegacio').AsString;
               end;

          if q.FieldByName('data_factu').IsNull
          then DataFacturacio:=''
          else DataFacturacio:=FormatDateTime('yyyymmdd',q.FieldByName('data_factu').AsDateTime);

          // T% - Prestacions
          if CopyLeft(q.FieldByName('ORIGEN').AsString,1)='T' then
          begin
              q2.SQL.Text := 'SELECT P.C_PRESTACIO,L.DATA_INICI,L.DATA_FI             '+
                             'FROM FACCAP C JOIN FACLIN L ON C.C_FACTURA=L.C_FACTURA  '+
                             'JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT     '+
                             'LEFT JOIN PRESTACION P  ON T.C_PRESTACIO=P.C_PRESTACIO  '+
                             'LEFT JOIN METGES M      ON T.C_COORDINADOR=M.CODI       '+
                             'WHERE C.C_FACTURA='+q.FieldByName('C_FACTURA').AsString+
                             ' AND L.C_LINIAFAC='+q.FieldByName('C_LINIAFAC').AsString+
                             ' ORDER BY L.C_LINIAFAC';
              q2.Open;
              while not q2.Eof do
              begin

                  conta := GutSelect('SELECT COUNT(*) FROM ASSISTENCIAGIMNAS WHERE C_TRACTAMENT=%d '+
                                     'AND DATA BETWEEN "%s" AND "%s" AND C_TIPUSASS IN(1,2,4,6)    ',
                                     [q.FieldByName('c_tractament').AsInteger,
                                      FormatDateTime('dd.mm.yyyy',q2.FieldByName('data_inici').AsDateTime),
                                      FormatDateTime('dd.mm.yyyy',q2.FieldByName('data_fi').AsDateTime)]);

                  if (conta=0) then
                  begin
                      linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                             q2.FieldByName('C_PRESTACIO').AsString    +Separador+
                             DataFacturacio                            +Separador+
                             CodiGQE                                   +Separador+
                             CodiDestinatari                           +Separador+
                             q.FieldByName('CANTITAT'    ).AsString    +Separador+
                             q.FieldByName('PREU'        ).AsString    +Separador+
                             q.FieldByName('NETO'        ).AsString    +Separador+
                             q.FieldByName('C_ESPECIAL'  ).AsString    +Separador+
                             q.FieldByName('N_FACTURA'   ).AsString    +Separador+
                             '';   // CodiAssistenciaGuttmann
                      Append(FitxerTXT);
                      Writeln(FitxerTXT,linia);
                  end
                  else begin
                      q3.SQL.Text := 'SELECT C_ASSISTENCIA FROM ASSISTENCIAGIMNAS '+
                                     'WHERE C_TRACTAMENT='+q.FieldByName('C_TRACTAMENT').AsString+
                                     ' AND DATA BETWEEN "'+FormatDateTime('dd.mm.yyyy',q2.FieldByName('data_inici').AsDateTime)+
                                     '" AND "'+FormatDateTime('dd.mm.yyyy',q2.FieldByName('data_fi').AsDateTime)+
                                     '" AND C_TIPUSASS IN(1,2,4,6) ORDER BY DATA';
                      q3.Open;
                      while not q3.Eof do
                      begin
                          linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                                 q2.FieldByName('C_PRESTACIO').AsString    +Separador+
                                 DataFacturacio                            +Separador+
                                 CodiGQE                                   +Separador+
                                 CodiDestinatari                           +Separador+
                                 q.FieldByName('CANTITAT'      ).AsString  +Separador+
                                 q.FieldByName('PREU'          ).AsString  +Separador+
                                 q.FieldByName('NETO'          ).AsString  +Separador+
                                 q.FieldByName('C_ESPECIAL'    ).AsString  +Separador+
                                 q.FieldByName('N_FACTURA'     ).AsString  +Separador+
                                 'G'+q3.FieldByName('C_ASSISTENCIA').AsString;
                          Append(FitxerTXT);
                          Writeln(FitxerTXT,linia);
                          q3.Next;
                      end;
                      q3.Close;
                  end;
                  q2.Next;
              end;
              q2.Close;
          end
          // QT - Intervencions 
          else if q.FieldByName('ORIGEN').AsString='QT' then
          begin
              linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                     'IQUIR'                                   +Separador+
                     DataFacturacio                            +Separador+
                     CodiGQE                                   +Separador+
                     CodiDestinatari                           +Separador+
                     q.FieldByName('CANTITAT'    ).AsString    +Separador+
                     q.FieldByName('PREU'        ).AsString    +Separador+
                     q.FieldByName('NETO'        ).AsString    +Separador+
                     q.FieldByName('C_ESPECIAL'  ).AsString    +Separador+
                     q.FieldByName('N_FACTURA'   ).AsString    +Separador+
                     '';   // CodiAssistenciaGuttmann
              Append(FitxerTXT);
              Writeln(FitxerTXT,linia);
          end
          else if CopyLeft(q.FieldByName('ORIGEN').AsString,1)='E' then
          begin
              q2.SQL.Text := 'SELECT "E"||E.C_ELEMENTFAC as ELEMENT                  '+
                             'FROM FACCAP C JOIN FACLIN L ON C.C_FACTURA=L.C_FACTURA '+
                             'JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT    '+
                             'JOIN ELEMENTSFAC E ON L.C_ELEMENT=E.C_ELEMENT          '+
                             'LEFT JOIN METGES M ON T.C_COORDINADOR=M.CODI           '+
                             'WHERE C.C_FACTURA='+q.FieldByName('C_FACTURA').AsString+
                             ' AND L.C_ELEMENT IS NOT NULL AND L.C_LINIAFAC='+q.FieldByName('C_LINIAFAC').AsString+
                             ' ORDER BY L.C_LINIAFAC';
              q2.Open;
              while not q2.Eof do
              begin
                  linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                         q2.FieldByName('ELEMENT'    ).AsString+Separador+
                         DataFacturacio                        +Separador+
                         CodiGQE                               +Separador+
                         CodiDestinatari                       +Separador+
                         q.FieldByName('CANTITAT'    ).AsString+Separador+
                         q.FieldByName('PREU'        ).AsString+Separador+
                         q.FieldByName('NETO'        ).AsString+Separador+
                         q.FieldByName('C_ESPECIAL'  ).AsString+Separador+
                         q.FieldByName('N_FACTURA'   ).AsString+Separador+
                         '';   // CodiAssistenciaGuttmann
                  Append(FitxerTXT);
                  Writeln(FitxerTXT,linia);

                  q2.Next;
              end;
              q2.Close;
          end
          // O% - Ortesis
          else if CopyLeft(q.FieldByName('ORIGEN').AsString,1)='O' then
          begin
              q2.SQL.Text := 'SELECT "O"||L.C_ORTESIS as ORTESI                      '+
                             'FROM FACCAP C JOIN FACLIN L ON C.C_FACTURA=L.C_FACTURA '+
                             'JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT    '+
                             'JOIN CODIORTESIS O ON L.C_ORTESIS=O.C_ORTESIS          '+
                             'LEFT JOIN METGES M ON T.C_COORDINADOR=M.CODI           '+
                             'WHERE C.C_FACTURA='+q.FieldByName('C_FACTURA').AsString+
                             ' AND L.C_LINIAFAC='+q.FieldByName('C_LINIAFAC').AsString+
                             ' AND L.C_ORTESIS IS NOT NULL ORDER BY L.C_LINIAFAC';
              q2.Open;
              while not q2.Eof do
              begin
                  linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                         q2.FieldByName('ORTESI'     ).AsString+Separador+
                         DataFacturacio                        +Separador+
                         CodiGQE                               +Separador+
                         CodiDestinatari                       +Separador+
                         q.FieldByName('CANTITAT'    ).AsString+Separador+
                         q.FieldByName('PREU'        ).AsString+Separador+
                         q.FieldByName('NETO'        ).AsString+Separador+
                         q.FieldByName('C_ESPECIAL'  ).AsString+Separador+
                         q.FieldByName('N_FACTURA'   ).AsString+Separador+
                         '';   // CodiAssistenciaGuttmann
                  Append(FitxerTXT);
                  Writeln(FitxerTXT,linia);

                  q2.Next;
              end;
              q2.Close;
          end
          // P - Proves especials
          else if CopyLeft(q.FieldByName('ORIGEN').AsString,1)='P' then
          begin
              q2.SQL.Text := 'SELECT cast(F_LRTrim("P"||L.C_PROVA) as varchar(6)) as PROVA '+
                             'FROM FACCAP C JOIN FACLIN L ON C.C_FACTURA=L.C_FACTURA       '+
                             'JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT          '+
                             'LEFT JOIN METGES M ON T.C_COORDINADOR=M.CODI                 '+
                             'WHERE C.C_FACTURA='+q.FieldByName('C_FACTURA').AsString+
                             ' AND L.C_LINIAFAC='+q.FieldByName('C_LINIAFAC').AsString+
                             ' AND L.C_PROVA IS NOT NULL ORDER BY L.C_LINIAFAC';
              q2.Open;
              while not q2.Eof do
              begin
                  linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                         q2.FieldByName('PROVA'      ).AsString+Separador+
                         DataFacturacio                        +Separador+
                         CodiGQE                               +Separador+
                         CodiDestinatari                       +Separador+
                         q.FieldByName('CANTITAT'    ).AsString+Separador+
                         q.FieldByName('PREU'        ).AsString+Separador+
                         q.FieldByName('NETO'        ).AsString+Separador+
                         q.FieldByName('C_ESPECIAL'  ).AsString+Separador+
                         q.FieldByName('N_FACTURA'   ).AsString+Separador+
                         '';   // CodiAssistenciaGuttmann
                  Append(FitxerTXT);
                  Writeln(FitxerTXT,linia);

                  q2.Next;
              end;
              q2.Close;
          end
          // S - Stoks
          else if CopyLeft(q.FieldByName('ORIGEN').AsString,1)='S' then
          begin
              q2.SQL.Text := 'SELECT "S"||DL.CODISCS as STOCK                        '+
                             'FROM FACCAP C JOIN FACLIN L ON C.C_FACTURA=L.C_FACTURA '+
                             'JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT    '+
                             'LEFT JOIN DISPCAP S  ON L.PK_STOCK=S.C_DISP            '+
                             'LEFT JOIN DISPLIN DL ON L.PK_STOCK=DL.C_DISP           '+
                             'LEFT JOIN METGES M ON T.C_COORDINADOR=M.CODI           '+
                             'WHERE C.C_FACTURA='+q.FieldByName('C_FACTURA').AsString+
                             ' AND L.C_LINIAFAC='+q.FieldByName('C_LINIAFAC').AsString+
                             ' AND L.PK_STOCK IS NOT NULL ORDER BY L.C_LINIAFAC';
              q2.Open;
              while not q2.Eof do
              begin
                  linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                         q2.FieldByName('STOCK'      ).AsString+Separador+
                         DataFacturacio                        +Separador+
                         CodiGQE                               +Separador+
                         CodiDestinatari                       +Separador+
                         q.FieldByName('CANTITAT'    ).AsString+Separador+
                         q.FieldByName('PREU'        ).AsString+Separador+
                         q.FieldByName('NETO'        ).AsString+Separador+
                         q.FieldByName('C_ESPECIAL'  ).AsString+Separador+
                         q.FieldByName('N_FACTURA'   ).AsString+Separador+
                         '';   // CodiAssistenciaGuttmann
                  Append(FitxerTXT);
                  Writeln(FitxerTXT,linia);

                  q2.Next;
              end;
              q2.Close;
          end
          // F - medicació
          else if CopyLeft(q.FieldByName('ORIGEN').AsString,1)='F' then
          begin
              q2.SQL.Text := 'SELECT "F"||L.C_PROD as CONCEPTE                       '+
                             'FROM FACCAP C JOIN FACLIN L ON C.C_FACTURA=L.C_FACTURA '+
                             'JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT    '+
                             'LEFT JOIN METGES M ON T.C_COORDINADOR=M.CODI           '+
                             'WHERE C.C_FACTURA='+q.FieldByName('C_FACTURA').AsString +
                             ' AND L.C_PROD IS NOT NULL AND L.PK_INTERF IS NOT NULL  '+
                             ' AND L.C_LINIAFAC='+q.FieldByName('C_LINIAFAC').AsString+
                             'ORDER BY L.C_LINIAFAC';
              q2.Open;
              while not q2.Eof do
              begin
                  linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                         q2.FieldByName('CONCEPTE'   ).AsString+Separador+
                         DataFacturacio                        +Separador+
                         CodiGQE                               +Separador+
                         CodiDestinatari                       +Separador+
                         q.FieldByName('CANTITAT'    ).AsString+Separador+
                         q.FieldByName('PREU'        ).AsString+Separador+
                         q.FieldByName('NETO'        ).AsString+Separador+
                         q.FieldByName('C_ESPECIAL'  ).AsString+Separador+
                         q.FieldByName('N_FACTURA'   ).AsString+Separador+
                         '';   // CodiAssistenciaGuttmann
                  Append(FitxerTXT);
                  Writeln(FitxerTXT,linia);

                  q2.Next;
              end;
              q2.Close;
          end
          // D - Pades 
          else if CopyLeft(q.FieldByName('ORIGEN').AsString,1)='D' then
          begin
              linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                     'D'                                   +Separador+
                     DataFacturacio                        +Separador+
                     CodiGQE                               +Separador+
                     CodiDestinatari                       +Separador+
                     q.FieldByName('CANTITAT'    ).AsString+Separador+
                     q.FieldByName('PREU'        ).AsString+Separador+
                     q.FieldByName('NETO'        ).AsString+Separador+
                     q.FieldByName('C_ESPECIAL'  ).AsString+Separador+
                     q.FieldByName('N_FACTURA'   ).AsString+Separador+
                     '';   // CodiAssistenciaGuttmann
              Append(FitxerTXT);
              Writeln(FitxerTXT,linia);
          end
          // La resta - IA, ...
          else begin
              linia:='T'+q.FieldByName('C_TRACTAMENT').AsString+Separador+
                     q.FieldByName('ORIGEN'      ).AsString+Separador+
                     DataFacturacio                        +Separador+
                     CodiGQE                               +Separador+
                     CodiDestinatari                       +Separador+
                     q.FieldByName('CANTITAT'    ).AsString+Separador+
                     q.FieldByName('PREU'        ).AsString+Separador+
                     q.FieldByName('NETO'        ).AsString+Separador+
                     q.FieldByName('C_ESPECIAL'  ).AsString+Separador+
                     q.FieldByName('N_FACTURA'   ).AsString+Separador+
                     '';   // CodiAssistenciaGuttmann
              Append(FitxerTXT);
              Writeln(FitxerTXT,linia);
          end;
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final LINIES DESPESES '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 16 - COBRAMENTS
  if cbCobraments.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');
      mLogErrors.Lines.Add('Inici COBRAMENTS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='Cobraments.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='NUMFACTURA'+Separador+'DATACOBRAMENT'+Separador+'IMPORT'+Separador+'CODICANALDECOBRAMENT'+Separador+'TIPUSPAGAMENT'+Separador+
             'COMPTABILITZADA'+Separador+'SALDADA';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT DISTINCT FC.N_FACTURA,C.DATACOBRAMENT,C.IMPORT,C.CONTA,C.PTELIQUIDAR,                  '+
                    '       CA.N_ACCIOCOBRO,CF.N_FORMACOBRO,CC.N_COMPTECOBRO,C.C_ACCIO,C.C_COBROPARE               '+ // FL.ORIGEN,FL.C_ORTESIS, <- fa pintar massa registres?
                    'FROM COBROS C JOIN COBROSFAC F ON C.C_COBRO=F.C_COBRO                                         '+
                    'LEFT JOIN FACCAP FC ON F.C_FACTURA =FC.C_FACTURA                                              '+
                    'LEFT JOIN FACLIN FL ON FC.C_FACTURA=FL.C_FACTURA                                              '+
                    'LEFT JOIN CODIACCIONSCOBRO CA ON C.C_ACCIO=CA.C_ACCIOCOBRO                                    '+
                    'LEFT JOIN CODIFORMACOBRO   CF ON C.C_ACCIO=CF.C_ACCIOCOBRO AND C.C_FORMACOBRO=CF.C_FORMACOBRO '+
                    'LEFT JOIN CODICOMPTECOBRO  CC ON C.C_ACCIO=CC.C_ACCIOCOBRO AND C.C_FORMACOBRO=CC.C_FORMACOBRO '+
                    '                                 AND C.C_COMPTECOBRO=CC.C_COMPTECOBRO                         '+
                    'WHERE (NOT C.C_CENTREFAC IN("05","10")) AND C.C_ACCIO IN(1,2) AND C.DATACOBRAMENT BETWEEN    "'+
                    FormatDateTime('dd.mm.yyyy',eDesde.AsDateTime)+'" AND "'+FormatDateTime('dd.mm.yyyy',eFins.AsDateTime)+
                    '" ORDER BY F.C_FACTURA';

      q.Open; q.First;
      while not q.Eof do
      begin
          if q.FieldByName('datacobrament').IsNull
          then DataFacturacio:=''
          else DataFacturacio:=FormatDateTime('yyyymmdd',q.FieldByName('datacobrament').AsDateTime);

          if q.FieldByName('CONTA').IsNull then Comptabilitzada:='N'
                                           else Comptabilitzada:='S';

          if q.FieldByName('PTELIQUIDAR').AsInteger > 0 then Saldada:='N'
                                                        else Saldada:='S';

          pinta:=1;
          // no sé pq volem això. ho trec. crec que s'ha arrossegat de les factures i aquí només fa mal.
          {if  (CopyLeft(q.FieldByName('origen').AsString,1)='O')
          and (not q.FieldByName('C_ortesis').IsNull)
          then pinta:=GutSelect('select count(*) from CODIORTESIS where C_ORTESIS="%s"',[q.FieldByName('C_ortesis').AsString]);}

          if (pinta=1) then
          begin
              // Pels assignaments de cobraments el CodiCanalDeCobrament s'ha d'agafar del dipòsit original 
              if q.FieldByName('C_ACCIO').AsInteger=2
              then CodiCanalCobrament:=GutSelect('SELECT CC.N_COMPTECOBRO FROM COBROS C                                 '+
                                                 'LEFT JOIN CODIACCIONSCOBRO CA ON C.C_ACCIO=CA.C_ACCIOCOBRO            '+
                                                 'LEFT JOIN CODIFORMACOBRO   CF ON C.C_ACCIO=CF.C_ACCIOCOBRO            '+
                                                 '                                 AND C.C_FORMACOBRO=CF.C_FORMACOBRO   '+
                                                 'LEFT JOIN CODICOMPTECOBRO  CC ON C.C_ACCIO=CC.C_ACCIOCOBRO            '+
                                                 '                                 AND C.C_FORMACOBRO=CC.C_FORMACOBRO   '+
                                                 '                                 AND C.C_COMPTECOBRO=CC.C_COMPTECOBRO '+
                                                 'WHERE C.C_COBRO = %d                                                  ',
                                                 [q.FieldByName('C_COBROPARE').AsInteger])
              else CodiCanalCobrament:='';

              if      q.FieldByName('N_FORMACOBRO').AsString='Efectiu'           then TipusPagament:='M'
              else if q.FieldByName('N_FORMACOBRO').AsString='Tarjeta de crèdit' then TipusPagament:='T'
              else if q.FieldByName('N_FORMACOBRO').AsString='Transferència'     then TipusPagament:='C'
              else if q.FieldByName('N_FORMACOBRO').AsString='Xec'               then TipusPagament:='C'
                                                                                 else TipusPagament:='A'; // Altres: Client paga a proveïdor
              linia:=q.FieldByName('N_FACTURA'         ).AsString+Separador+
                     DataFacturacio                              +Separador+
                     q.FieldByName('IMPORT'            ).AsString+Separador+
                     CodiCanalCobrament                          +Separador+
                     TipusPagament                               +Separador+
                     Comptabilitzada                             +Separador+
                     Saldada;

              Append(FitxerTXT);
              Writeln(FitxerTXT,linia);
          end;
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final COBRAMENTS '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  // 17 - DIPÒSITS A COMPTE
  if cbDiposits.Checked then
  begin
      mLogErrors.Lines.Add('----------------------------------------------------------');  
      mLogErrors.Lines.Add('Inici DIPÒSITS A COMPTE '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));

      Ftx:='DipositsACompte.txt';
      nomFtx:='G:\usr\informatica\SisInf - Facturacio\Migracio\Enviaments\Automatic\'+Ftx;
      AssignFile(FitxerTXT,nomFtx);
      Rewrite(FitxerTXT);

      linia:='NUMORDRE'+Separador+'DATACOBRAMENT'+Separador+'IMPORT'+Separador+'CODICANALDECOBRAMENT'+Separador+
             'TIPUSPAGAMENT'+Separador+'DATAEMISSIOFACTURA'+Separador+'COMPTABILITZADA'+Separador+'SALDADA'+Separador+'CODIASSISTENCIAG';

      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      q.SQL.Text := 'SELECT * FROM P_COBROS_ACOMPTE';
      q.Open; q.First;
      while not q.Eof do
      begin
          if q.FieldByName('CodiAssistenciaG').IsNull or (q.FieldByName('CodiAssistenciaG').AsString='')
          then linia:=q.FieldByName('NUMORDRE'            ).AsString+Separador+
                      q.FieldByName('DATACOBRAMENT'       ).AsString+Separador+
                      q.FieldByName('IMPORT'              ).AsString+Separador+
                      q.FieldByName('CODICANALDECOBRAMENT').AsString+Separador+
                      q.FieldByName('TIPUSPAGAMENT'       ).AsString+Separador+
                      q.FieldByName('DATAEMI    SSIOFACTURA'  ).AsString+Separador+
                      q.FieldByName('Comptabilitzada'     ).AsString+Separador+
                      q.FieldByName('SALDADA'             ).AsString+Separador
          else linia:=q.FieldByName('NUMORDRE'            ).AsString+Separador+
                      q.FieldByName('DATACOBRAMENT'       ).AsString+Separador+
                      q.FieldByName('IMPORT'              ).AsString+Separador+
                      q.FieldByName('CODICANALDECOBRAMENT').AsString+Separador+
                      q.FieldByName('TIPUSPAGAMENT'       ).AsString+Separador+
                      q.FieldByName('DATAEMISSIOFACTURA'  ).AsString+Separador+
                      q.FieldByName('Comptabilitzada'     ).AsString+Separador+
                      q.FieldByName('SALDADA'             ).AsString+Separador+
                      'G'+q.FieldByName('CodiAssistenciaG').AsString;

          Append(FitxerTXT);
          Writeln(FitxerTXT,linia);
          q.Next;
      end;
      q.Close;
      Flush(FitxerTXT);
      CloseFile(FitxerTXT);
      mLogErrors.Lines.Add('Final DIPÒSITS A COMPTE '+FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer));
  end;

  q.Close; q2.Close; q3.Close;
  q.Free;  q2.Free;  q3.Free;
end;

procedure Twmain.sbAnotaPsicoClick(Sender: TObject);
var
 llegit, insertat: Integer;
begin
  {  convertir anotacions de ANOTAPSICOLOGIA a ACTIVITATNEURO
  Motiu	                Intervenció 	                Modalitat	Nova
  2 Rehabilitació  	2 Avaluació/Psicodiagnòstic 	2 Individual	1 Sessions avaluació
  2 Rehabilitació  	2 Avaluació/Psicodiagnòstic 	3 Familiar	4 Visita Familia
  2 Rehabilitació  	2 Avaluació/Psicodiagnòstic 	4 Parella	1 Sessions avaluació
  2 Rehabilitació  	3 Counselling 	                2 Individual	2 Sessions tractament
  2 Rehabilitació  	3 Counselling 	                3 Familiar	4 Visita Familia
  2 Rehabilitació  	3 Counselling 	                4 Parella	2 Sessions tractament
  2 Rehabilitació (X02)	4 Teràpia	                5 grup	        4 Visita família
  2 Rehabilitació (X13)	4 Teràpia	                5 grup	        2 Sessions tractament
  2 Rehabilitació	4 Teràpia	                2 Individual	2 Sessions tractament
  2 Rehabilitació	4 Teràpia	                3 Familiar	2 Sessions tractament
  2 Rehabilitació	4 Teràpia	                4 Parella	2 Sessions tractament
  2 Rehabilitació	5 Control evolutiu	        2 Individual	3 Sessions seguiment
  2 Rehabilitació	5 Control evolutiu	        3 Familiar	4 Visita Familia  
  2 Rehabilitació	5 Control evolutiu	        4 Parella	3 Sessions seguiment

  3 Dolor	        2 Avaluació/Psicodiagnòstic	2 Individual	1 Sessions avaluació
  3 Dolor	        2 Avaluació/Psicodiagnòstic	4 Parella	1 Sessions avaluació
  3 Dolor	        3 Counselling	                2 Individual	2 Sessions tractament
  3 Dolor	        4 Teràpia	                2 Individual	2 Sessions tractament

  4 USRA	        2 Avaluació/Psicodiagnòstic	2 Individual	12 USRA
  4 USRA	        2 Avaluació/Psicodiagnòstic	4 Parella	12 USRA
  4 USRA	        3 Counselling 	                2 Individual	12 USRA
  4 USRA	        3 Counselling	                4 Parella	12 USRA
  4 USRA	        4 Teràpia	                Totes	        12 USRA

  5 Infantil	        4 Teràpia	                2 Individual	2 Sessions tractament
  5 Infantil	        4 Teràpia	                3 Familiar	2 Sessions tractament
  5 Infantil	        4 Teràpia	                5 Grup	        2 Sessions tractament
  5 Infantil	        2 Avaluació/Psicodiagnòstic	2 Individual	1 Sessions avaluació
  5 Infantil	        2 Avaluació/Psicodiagnòstic	3 Familiar	1 Sessions avaluació
  5 Infantil	        5 Control evolutiu	        2 Individual	3 Sessions seguiment
  5 Infantil	        5 Control evolutiu	        3 Familiar	4 Visita Familia

  6 Revisió (ingres)	2 Avaluació/Psicodiagnòstic	2 Individual	1 Sessions avaluació

  8 Parella/família	totes	                        Totes	        4 Visita Familia

  9 Psicopatologia	2 Avaluació/Psicodiagnòstic	2 Individual	1 Sessions avaluació
  9 Psicopatologia	2 Avaluació/Psicodiagnòstic	3 Familiar	1 Sessions avaluació
  9 Psicopatologia	2 Avaluació/Psicodiagnòstic	4 Parella	1 Sessions avaluació
  9 Psicopatologia	3 Counselling 	                2 Individual	2 Sessions tractament
  9 Psicopatologia	3 Counselling	                3 Familiar	4 Visita Familia
  9 Psicopatologia	3 Counselling	                4 Parella	2 Sessions tractament
  9 Psicopatologia	3 Counselling	                5 Grup	        2 Sessions tractament
  9 Psicopatologia	4 Teràpia	                2 Individual	2 Sessions tractament
  9 Psicopatologia	4 Teràpia	                3 Familiar	2 Sessions tractament
  9 Psicopatologia	4 Teràpia	                4 Parella	2 Sessions tractament
  9 Psicopatologia	4 Teràpia	                5 Grup	        2 Sessions tractament
  }

{  // 9.5.2016: noves classificacions
  1 Cap	                2 Avaluació / psicodiagnòstic	0 -- No assignat --	1 Valoració
  1 Cap	                2 Avaluació / psicodiagnòstic	1 Cap	                1 Valoració
  1 Cap	                2 Avaluació / psicodiagnòstic	2 Individual	        1 Valoració
  1 Cap	                3 Counselling	                0 -- No assignat --	2 tractament
  1 Cap	                3 Counselling	                2 Individual	        2 tractament
  1 Cap	                4 Teràpia	                0 -- No assignat --	2 tractament
  1 Cap	                4 Teràpia	                2 Individual	        2 tractament
  1 Cap	                4 Teràpia	                3 Familiar	        2 tractament
  1 Cap	                4 Teràpia	                5 Grup	                2 tractament
  1 Cap	                5 Control evolutiu	        0 -- No assignat --	3 Seguiment
  1 Cap	                5 Control evolutiu	        2 Individual	        3 Seguiment
  1 Cap	                5 Control evolutiu	        3 Familiar	        4 Visita

  2 Rehabilitació	1 Cap	                        0 -- No assignat --	3 Seguiment
  2 Rehabilitació	1 Cap	                        1 Cap	                3 Seguiment
  2 Rehabilitació	1 Cap	                        2 Individual	        3 Seguiment
  2 Rehabilitació	2 Avaluació / psicodiagnòstic	0 -- No assignat --	1 Valoració
  2 Rehabilitació	2 Avaluació / psicodiagnòstic	1 Cap	                1 Valoració
  2 Rehabilitació	2 Avaluació / psicodiagnòstic	5 Grup	                1 Valoració
  2 Rehabilitació	3 Counselling	                0 -- No assignat --	2 tractament
  2 Rehabilitació	3 Counselling	                1 Cap	                2 tractament
  2 Rehabilitació	3 Counselling	                5 Grup	                2 tractament
  2 Rehabilitació	4 Teràpia	                0 -- No assignat --	2 tractament
  2 Rehabilitació	4 Teràpia	                1 Cap	                2 tractament
  2 Rehabilitació	5 Control evolutiu	        0 -- No assignat --	3 Seguiment
  2 Rehabilitació	5 Control evolutiu	        1 Cap	                3 Seguiment
  2 Rehabilitació	5 Control evolutiu	        5 Grup	                2 Tractament
  2 Rehabilitació	6 Altres	                0 -- No assignat --	3 Seguiment
  2 Rehabilitació	6 Altres	                1 Cap	                3 Seguiment
  2 Rehabilitació	6 Altres	                2 Individual	        3 Seguiment
  2 Rehabilitació	6 Altres	                3 Familiar	        4 Visita Familia
  2 Rehabilitació	6 Altres	                4 Parella	        3 Seguiment
  2 Rehabilitació	6 Altres	                5 Grup	                2 Tractament
  2 Rehabilitació	7 Coordinació externa	        1 Cap	                3 Seguiment
  2 Rehabilitació	7 Coordinació externa	        2 Individual	        3 Seguiment
  2 Rehabilitació	7 Coordinació externa	        3 Familiar	        4 Visita Familia
  2 Rehabilitació	7 Coordinació externa	        5 Grup	                2 Tractament

  3 Dolor	        1 Cap	                        0 -- No assignat --	2 tractament
  3 Dolor	        1 Cap	                        1 Cap	                2 tractament
  3 Dolor	        1 Cap	                        2 Individual	        2 tractament
  3 Dolor	        2 Avaluació / psicodiagnòstic	0 -- No assignat --	1 Valoració
  3 Dolor	        2 Avaluació / psicodiagnòstic	1 Cap	                1 Valoració
  3 Dolor	        2 Avaluació / psicodiagnòstic	3 Familiar	        4 Visita Familia
  3 Dolor	        3 Counselling	                0 -- No assignat --	2 tractament
  3 Dolor	        3 Counselling	                3 Familiar	        4 Visita Familia
  3 Dolor	        3 Counselling	                4 Parella	        2 tractament
  3 Dolor	        4 Teràpia	                0 -- No assignat --	2 tractament
  3 Dolor	        4 Teràpia	                1 Cap	                2 tractament
  3 Dolor	        4 Teràpia	                3 Familiar	        4 Visita Familia
  3 Dolor	        4 Teràpia	                4 Parella	        2 tractament
  3 Dolor	        4 Teràpia	                5 Grup	                2 tractament
  3 Dolor	        5 Control evolutiu	        0 -- No assignat --	3 Seguiment
  3 Dolor	        5 Control evolutiu	        2 Individual	        3 Seguiment
  3 Dolor	        5 Control evolutiu	        3 Familiar	        4 Visita Familia
  3 Dolor	        5 Control evolutiu	        5 Grup	                2 tractament
  3 Dolor	        6 Altres	                0 -- No assignat --	2 tractament
  3 Dolor	        6 Altres	                2 Individual	        2 tractament

  4 USRA	        1 Cap	                        0 -- No assignat --	12 USRA
  4 USRA	        1 Cap	                        1 Cap	                12 USRA
  4 USRA	        2 Avaluació / psicodiagnòstic	0 -- No assignat --	12 USRA
  4 USRA	        2 Avaluació / psicodiagnòstic	3 Familiar	        12 USRA
  4 USRA	        3 Counselling	                0 -- No assignat --	12 USRA
  4 USRA	        3 Counselling	                3 Familiar	        12 USRA
  4 USRA	        5 Control evolutiu	        0 -- No assignat --	12 USRA
  4 USRA	        5 Control evolutiu	        2 Individual	        12 USRA
  4 USRA	        5 Control evolutiu	        3 Familiar	        12 USRA
  4 USRA	        5 Control evolutiu	        4 Parella	        12 USRA
  4 USRA	        5 Control evolutiu	        5 Grup	                12 USRA
  4 USRA	        6 Altres	                0 -- No assignat --	12 USRA
  4 USRA	        6 Altres	                2 Individual	        12 USRA
  4 USRA	        6 Altres	                5 Grup	                12 USRA

  5 Infantil	        1 Cap	                        0 -- No assignat --	2 tractament
  5 Infantil	        1 Cap	                        1 Cap	                2 tractament
  5 Infantil	        1 Cap	                        2 Individual	        2 tractament
  5 Infantil	        1 Cap	                        3 Familiar	        4 Visita Familia
  5 Infantil	        2 Avaluació / psicodiagnòstic	0 -- No assignat --	1 Valoració
  5 Infantil	        2 Avaluació / psicodiagnòstic	1 Cap	                1 Valoració
  5 Infantil	        2 Avaluació / psicodiagnòstic	5 Grup	                1 Valoració
  5 Infantil	        3 Counselling	                0 -- No assignat --	2 tractament
  5 Infantil	        3 Counselling	                2 Individual	        2 tractament
  5 Infantil	        3 Counselling	                3 Familiar	        4 Visita Familia
  5 Infantil	        3 Counselling	                5 Grup	                2 tractament
  5 Infantil	        4 Teràpia	                0 -- No assignat --	2 tractament
  5 Infantil	        5 Control evolutiu	        0 -- No assignat --	3 Seguiment
  5 Infantil	        5 Control evolutiu	        1 Cap	                3 Seguiment
  5 Infantil	        5 Control evolutiu	        5 Grup	                2 tractament
  5 Infantil	        6 Altres	                0 -- No assignat --	2 tractament
  5 Infantil	        6 Altres	                1 Cap	                2 tractament
  5 Infantil	        6 Altres	                2 Individual	        2 tractament
  5 Infantil	        6 Altres	                3 Familiar	        4 Visita Familia
  5 Infantil	        6 Altres	                5 Grup	                2 tractament
  5 Infantil	        7 Coordinació externa	        1 Cap	                2 tractament
  5 Infantil	        7 Coordinació externa	        2 Individual	        2 tractament
  5 Infantil	        7 Coordinació externa	        3 Familiar	        4 Visita Familia
  5 Infantil	        7 Coordinació externa	        5 Grup	                2 tractament
  5 Infantil	        7 Coordinació externa	        6 Intervenció a l'escola  8 Intervenció a l'escola

  6 Revisió	        1 Cap	                        0 -- No assignat --	1 revisió
  6 Revisió	        1 Cap	                        1 Cap	                1 revisió
  6 Revisió	        1 Cap	                        2 Individual	        1 revisió
  6 Revisió	        2 Avaluació / psicodiagnòstic	0 -- No assignat --	1 revisió
  6 Revisió	        2 Avaluació / psicodiagnòstic	1 Cap	                1 revisió
  6 Revisió	        2 Avaluació / psicodiagnòstic	3 Familiar	        1 revisió
  6 Revisió	        2 Avaluació / psicodiagnòstic	4 Parella	        1 revisió
  6 Revisió	        3 Counselling	                0 -- No assignat --	1 revisió
  6 Revisió	        3 Counselling	                2 Individual	        1 revisió
  6 Revisió	        4 Teràpia	                0 -- No assignat --	1 revisió
  6 Revisió	        4 Teràpia	                1 Cap	                1 revisió
  6 Revisió	        4 Teràpia	                2 Individual	        1 revisió
  6 Revisió	        4 Teràpia	                5 Grup	                1 revisió
  6 Revisió	        5 Control evolutiu	        0 -- No assignat --	1 revisió
  6 Revisió	        5 Control evolutiu	        2 Individual	        1 revisió
  6 Revisió	        5 Control evolutiu	        3 Familiar	        1 revisió
  6 Revisió	        6 Altres	                0 -- No assignat --	1 revisió
  6 Revisió	        6 Altres	                1 Cap	                1 revisió
  6 Revisió	        6 Altres	                2 Individual	        1 revisió
  6 Revisió	        6 Altres	                3 Familiar	 	1 revisió

  7 Altres	        2 Avaluació / psicodiagnòstic	0 -- No assignat --	1 Valoració
  7 Altres	        2 Avaluació / psicodiagnòstic	2 Individual	        1 Valoració
  7 Altres	        2 Avaluació / psicodiagnòstic	3 Familiar	        4 Visita Familia
  7 Altres	        2 Avaluació / psicodiagnòstic	4 Parella	        1 Valoració
  7 Altres	        2 Avaluació / psicodiagnòstic	5 Grup	                1 Valoració
  7 Altres	        3 Counselling	                0 -- No assignat --	2 tractament
  7 Altres	        3 Counselling	                2 Individual	        2 tractament
  7 Altres	        3 Counselling	                3 Familiar	        4 Visita Familia
  7 Altres	        3 Counselling	                4 Parella	        2 tractament
  7 Altres	        3 Counselling	                5 Grup	                2 tractament
  7 Altres	        4 Teràpia	                0 -- No assignat --	2 tractament
  7 Altres	        4 Teràpia	                2 Individual	        2 tractament
  7 Altres	        4 Teràpia	                3 Familiar	        4 Visita Familia
  7 Altres	        4 Teràpia	                5 Grup	                2 tractament
  7 Altres	        5 Control evolutiu	        0 -- No assignat --	3 Seguiment
  7 Altres	        5 Control evolutiu	        2 Individual	        3 Seguiment
  7 Altres	        5 Control evolutiu	        3 Familiar	        4 Visita Familia
  7 Altres	        5 Control evolutiu	        4 Parella	        3 Seguiment
  7 Altres	        5 Control evolutiu	        5 Grup	                2 tractament
  7 Altres	        6 Altres	                0 -- No assignat --	2 tractament
  7 Altres	        6 Altres	                1 Cap	                2 tractament
  7 Altres	        6 Altres	                2 Individual	        2 tractament
  7 Altres	        6 Altres	                3 Familiar	        4 Visita Familia
  7 Altres	        6 Altres	                5 Grup	                2 tractament
  7 Altres	        7 Coordinació externa	        1 Cap	                3 Seguiment
  7 Altres	        7 Coordinació externa	        2 Individual	        3 Seguiment
  7 Altres	        7 Coordinació externa	        5 Grup	                3 Seguiment
  7 Altres	        7 Coordinació externa	        6 Intervenció a l'escola  8 Intervenció a l'escola

  9 Psicopatologia	1 Cap	                        1 Cap	                2 Tractament
  9 Psicopatologia	1 Cap	                        2 Individual	        2 Tractament
  9 Psicopatologia	1 Cap	                        3 Familiar	        4 Visita Familia
  9 Psicopatologia	1 Cap	                        4 Parella	        2 Tractament
  9 Psicopatologia	2 Avaluació / psicodiagnòstic	1 Cap	                1 Valoració
  9 Psicopatologia	2 Avaluació / psicodiagnòstic	5 Grup	                1 Valoració
  9 Psicopatologia	5 Control evolutiu	        2 Individual	        2 Tractament
  9 Psicopatologia	5 Control evolutiu	        3 Familiar	        4 Visita Familia
  9 Psicopatologia	5 Control evolutiu	        4 Parella	        2 Tractament
  9 Psicopatologia	5 Control evolutiu	        5 Grup	                2 Tractament
  9 Psicopatologia	6 Altres	                1 Cap	                2 Tractament
  9 Psicopatologia	6 Altres	                2 Individual	        2 Tractament
  9 Psicopatologia	6 Altres	                3 Familiar	        4 Visita Familia
  9 Psicopatologia	6 Altres	                5 Grup	                2 Tractament
  9 Psicopatologia	7 Coordinació externa	        1 Cap	                2 Tractament
  9 Psicopatologia	7 Coordinació externa	        2 Individual	        2 Tractament
  9 Psicopatologia	7 Coordinació externa	        3 Familiar	        4 Visita Familia
  9 Psicopatologia	7 Coordinació externa	        5 Grup	                2 Tractament
}

  qAnotaPsico.Close;
  qAnotaPsico.SQL[5] := 'AND A.C_ANOTACIO>=3000000 AND A.C_ANOTACIO<4000000'; //'rows 100'; //'AND a.c_anotacio between 924180 and 924185';
  qAnotaPsico.Open;
  llegit:=0; insertat:=0;
  while not qAnotaPsico.Eof do
  begin
    // només fer l'insert si no existeix el registre a ACTIVITATNEURO
    if GutSelect('select count(*) from ACTIVITATNEURO where c_anotacio=%d',[qAnotaPsico.FieldByName('C_ANOTACIO' ).AsInteger])=0 then
    begin
      qInsActivitatNeuro.ParamByName('C_ANOTACIO' ).AsInteger  := qAnotaPsico.FieldByName('C_ANOTACIO' ).AsInteger;
      qInsActivitatNeuro.ParamByName('C_PRESTACIO').AsString   := qAnotaPsico.FieldByName('C_PRESTACIO').AsString;
      qInsActivitatNeuro.ParamByName('EDAT'       ).AsInteger  := qAnotaPsico.FieldByName('EDAT'       ).AsInteger;
      qInsActivitatNeuro.ParamByName('DATA'       ).AsDateTime := qAnotaPsico.FieldByName('DATA'       ).AsDateTime;
      qInsActivitatNeuro.ParamByName('USUARI'     ).AsString   := qAnotaPsico.FieldByName('C_USUARI'   ).AsString;

      // Inicialitzar-lo sempre perquè si no està ple no s'ha d'afegir el registre
      qInsActivitatNeuro.ParamByName('TIPUS').Clear;

      case qAnotaPsico.FieldByName('C_MOTIU').AsInteger of
       1: begin  // Cap
              case qAnotaPsico.FieldByName('C_INTERVENCIO').AsInteger of
              2: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 1;
            3,4: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
              5: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
                  0,2: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 3;
                    3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                 end;
              end;
          end;
       2: begin  // Rehabilitació
              case qAnotaPsico.FieldByName('C_INTERVENCIO').AsInteger of
              1: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 3;
              2: begin  // 2 Avaluació/Psicodiagnòstic
                     case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,1,2,4,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 1;  
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                     end;
                 end;
              3: begin // Counselling
                     case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,1,2,4,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;  
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;  
                     end;
                 end;
              4: begin // Teràpia
                     if qAnotaPsico.FieldByName('C_MODALITAT').AsInteger=5 then  // Grup
                     begin
                         if      qAnotaPsico.FieldByName('C_USUARI').AsString = 'X02'
                              then qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4
                         else if qAnotaPsico.FieldByName('C_USUARI').AsString = 'X13'
                              then qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     end
                     else if qAnotaPsico.FieldByName('C_MODALITAT').AsInteger<5
                          then qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                 end;
            5,6: begin
                     case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
               0,1,2,4: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 3;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                     5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     end;
                 end;
              7: begin
                     case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
                   1,2: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 3;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                     5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     end;
                 end;
              end;                 
          end;
       3: case qAnotaPsico.FieldByName('C_INTERVENCIO').AsInteger of
          1: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
          2: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,1,2,4: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 1;
                   3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
             end;
          3: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,2,4: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                 3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
             end;
          4: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,1,2,4,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
             end;
          5: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,2: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 3;
               3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
               5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;               
             end;
          6: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
          end;
       4: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 12;
       5: case qAnotaPsico.FieldByName('C_INTERVENCIO').AsInteger of        // Infantil
          1: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,1,2: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                 3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
             end;
          2: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,1,2,3,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 1;
             end;
          3: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,2,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                 3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;             
             end;
          4: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,2,3,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
             end;
          5: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             0,1,2: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 3;
                 3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                 5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
             end;
          6: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
           0,1,2,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                 3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
             end;
          7: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
             1,2,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                 3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                 6: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 8;                 
             end;
          end;
       6: if  (qAnotaPsico.FieldByName('C_PRESTACIO').AsString='1004')      // Revisió
          then qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 1;
       7: case qAnotaPsico.FieldByName('C_INTERVENCIO').AsInteger of
          2: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
               0,2,4,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 1;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
             end;
          3: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
               0,2,4,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
             end;
          4: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
               0,2,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                   3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
             end;
          5: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
               0,2,4: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 3;
                   3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                   5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
             end;
          6: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
               0,1,2,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
             end;
          7: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
               1,2,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 3;
                   6: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 8;
             end;
          end;
       8: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;           // Parella/família
       9: begin // Psicopatologia
              case qAnotaPsico.FieldByName('C_INTERVENCIO').AsInteger of
              1: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
                 1,2,4: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                 end;
              2: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
                   1,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                 2,3,4: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 1;
                 end;
              3: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
                 2,4,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                 end;
              4: if (qAnotaPsico.FieldByName('C_MODALITAT').AsInteger=2)
                 or (qAnotaPsico.FieldByName('C_MODALITAT').AsInteger=3)
                 or (qAnotaPsico.FieldByName('C_MODALITAT').AsInteger=4)
                 or (qAnotaPsico.FieldByName('C_MODALITAT').AsInteger=5)
                 then qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
              5: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
                 2,4,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                 end;
              6: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
                 1,2,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                 end;
              7: case qAnotaPsico.FieldByName('C_MODALITAT').AsInteger of
                 1,2,5: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 2;
                     3: qInsActivitatNeuro.ParamByName('TIPUS').AsInteger := 4;
                 end;
              end;
          end;
      end;

      TRY if qInsActivitatNeuro.ParamByName('TIPUS').AsInteger > 0 then
          begin
              qInsActivitatNeuro.ExecSQL;
              insertat:=insertat+1;
          end;
      FINALLY
      END;
    end;
    qAnotaPsico.Next;
    llegit:=llegit+1;
  end;
  ShowMessage('llegits: '+IntToStr(llegit)+' insertats: '+IntToStr(insertat));
end;

function TwMain.PosaPunt(c,t: String): String;
begin
  if len(c) <= 3 then Result := c                           // si és de 3 posicions o menys, no porta punt
  else if (t='D') or (t='E')
       then Result:=CopyLeft(c,3)+'.'+CopyRight(c,len(c)-3) // per diagnòstics i codis E el punt va a la 3ª posició
       else Result := c;                                    // per procediments no hi ha punts
end;

procedure Twmain.sbCIM10Click(Sender: TObject);
var
 i,j,opcio,read,insert,update: Integer;
 text: String;
 cicd: String;
begin
    if AvisoSN('Vols actualitzar el CIM10 (S/N)?') then
    begin
        opcio := AvisoLista('Triar ',['Consulta','Actualitza']);     // 0: consulta; 1: actualitza
        if opcio = -1 then Abort;
        i:=0; j:=0;        

        // Primer DIAGNÒSTICS
        CIM10D.Close;
        CIM10D.Open;
        CIM10D.First;
        read:=0;
        mtCIM10D.Close;
        mtCIM10D.Open;
        mLogErrors.Lines.Clear;
        // Per ordenar-ho, primer ho inserto tot a una memo table, la ordeno per C_ICD i després miro què s'ha d'insertar i què s'ha de donar de baixa
        while not CIM10D.eof do
        begin
            cicd := PosaPunt(CIM10D.FieldByName('C_ICD').AsString, CIM10D.FieldByName('TIPUS').AsString);

            with mtCIM10D do
            begin
                Append;
                FieldByName('TIPUS').AsString := CIM10D.FieldByName('TIPUS').AsString;
                FieldByName('C_ICD').AsString := cicd;
                FieldByName('N_ICD').AsString := CIM10D.FieldByName('N_ICD').AsString;
                FieldByName('R_ICD').AsString := CIM10D.FieldByName('R_ICD').AsString;
                FieldByName('INESP').AsString := CIM10D.FieldByName('INESP').AsString;
                Post;
            end;
            read:=read+1;
            CIM10D.Next;
        end;
        CIM10D.Close;

        CIE10D.Close;
        CIE10D.Open;
        mtCIM10D.SortOn('C_ICD',[]);
        mtCIM10D.First;
        qCodiicd.Close; qCodiicd.Open; qCodiicd.First;
        insert:=0; update:=0;
        while (not mtCIM10D.Eof) and (not qCodiicd.Eof) do
        begin
            // Actualitzo el literal en castellà
            // Per cada C_ICD del CatSalut, busquem al catàleg del Ministerio la descripció en castellà per guardar-la a N_CODI2
            if (opcio=1) and CIE10D.Locate('C_ICD', mtCIM10D.FieldByName('C_ICD').AsString, [])
            then GutExecute('UPDATE CODIICD SET N_ICD2 ="%s" WHERE C_ICD="%s"',[CIE10D.FieldByName('N_ICD').AsString, mtCIM10D.FieldByName('C_ICD').AsString]);

            if mtCIM10D.FieldByName('C_ICD').AsString = qCodiicd.FieldByName('C_ICD').AsString then       // ja hi és ==> no s'ha de fer res a menys que estigui de baixa, en tal cas el reactivem
            begin
                if qCodiicd.FieldByName('BAIXA').AsString = 'B' then
                begin
                    if opcio=1
                    then GutExecute('UPDATE CODIICD SET BAIXA="N" WHERE C_ICD="%s"',[qCodiicd.FieldByName('C_ICD').AsString]);
                    update:=update+1;
                    mLogErrors.Lines.Add('Codi '+qCodiicd.FieldByName('C_ICD').AsString+' reactivat');
                end;
                mtCIM10D.Next;
                qCodiicd.Next;
            end
            else if mtCIM10D.FieldByName('C_ICD').AsString > qCodiicd.FieldByName('C_ICD').AsString then  // el codi de GUTTMANN s'ha de donar de baixa si el tenim actiu
                 begin
                     if qCodiicd.FieldByName('BAIXA').AsString = 'N' then
                     begin
                         if opcio=1
                         then GutExecute('UPDATE CODIICD SET BAIXA="B" WHERE C_ICD="%s"',[qCodiicd.FieldByName('C_ICD').AsString]);
                         update:=update+1;
                         mLogErrors.Lines.Add('Codi '+qCodiicd.FieldByName('C_ICD').AsString+' donat de baixa');
                     end;
                     qCodiicd.Next;
                 end
                 else begin                                                                           // el codi del CATSALUT s'ha d'insertar
                     if opcio=1 then
                     begin
                         qInsCodiICD.ParamByName('C_ICD').AsString  := mtCIM10D.FieldByName('C_ICD').AsString;
                         qInsCodiICD.ParamByName('N_ICD').AsString  := mtCIM10D.FieldByName('N_ICD').AsString;
                         qInsCodiICD.ParamByName('R_ICD').AsString  := CopyLeft(mtCIM10D.FieldByName('R_ICD').AsString,90);
                         qInsCodiICD.ParamByName('T_ICD').AsString  := mtCIM10D.FieldByName('TIPUS').AsString;
                         qInsCodiICD.ParamByName('INESP').AsString  := mtCIM10D.FieldByName('INESP').AsString;
                         qInsCodiICD.ParamByName('N_ICD2').Clear;
                         qInsCodiICD.ExecSQL;
                     end;
                     insert:=insert+1;
                     mLogErrors.Lines.Add('Codi '+qCodiicd.FieldByName('C_ICD').AsString+' afegit');

                     mtCIM10D.Next;
                 end;
        end;

        // Després PROCEDIMENTS
  {        CIE10P.Close;    === peta, només fa 8678 registres
          CIE10P.Open;
          CIM10P.Close;
          CIM10P.Open;
          CIM10P.First;
          while not CIM10P.Eof do
          begin
              // Actualitzo el literal en castellà
              // Per cada C_ICD del CatSalut, busquem al catàleg del Ministerio la descripció en castellà per guardar-la a N_CODI2
              if (opcio=1) then
              begin
                  if CIE10P.Locate('C_ICD', CIM10P.FieldByName('CAMPO4').AsString, []) then
                  begin
                   try  GutExecute('UPDATE CODIICD SET N_ICD2 ="%s" WHERE C_ICD="%s"',[CIE10P.FieldByName('N_ICD').AsString, CIM10P.FieldByName('CAMPO4').AsString]);
                   except on e: Exception do FerError('ERROR a l''updatar C_ICD="'+CIM10P.FieldByName('CAMPO4').AsString+'" amb el literal "'+CIE10P.FieldByName('N_ICD').AsString+'"'+
                                                       e.message,True);
                   end;
              CIM10P.Next;
          end;
          Abort;  }


        ShowMessage('DIAGNOSTICS:'+NLine+' Llegits: '+IntToStr(read)+Nline+' Insertats: '+IntToStr(insert)+NLine+' Updatats: '+IntToStr(update));
     end;

  // antic! no dóna de baixa codis
  Abort;
  // opció preguntava 'CatSalut' o 'Ministerio'
  // vull que no siguin visibles encara  a real però vull fer ja el bolcatge ==> poso BAIXA = 'S'     <-- ÉS IGUAL. com que és 'N' per default posa 'N'.
  case opcio of
  0: begin
        // Primer DIAGNÒSTICS
        CIM10D.Close;
        CIM10D.Open;
        //CIM10D.Next; // EL PRIMER TÉ UN SÍMBOL ESTRANY I L'INSERTO A MÀ.
        i:=0;
        while not CIM10D.eof do
        begin
            TRY {qInsCIM10D.ParamByName('T_ICD').AsString  := CIM10D.FieldByName('CAMPO1').AsString;
                qInsCIM10D.ParamByName('ORDRE').AsInteger := CIM10D.FieldByName('CAMPO2').AsInteger;
                qInsCIM10D.ParamByName('C_ICD').AsString  := CIM10D.FieldByName('CAMPO3').AsString;
                qInsCIM10D.ParamByName('R_ICD').AsString  := CIM10D.FieldByName('CAMPO4').AsString;
                qInsCIM10D.ParamByName('N_ICD').AsString  := CIM10D.FieldByName('CAMPO5').AsString;
                qInsCIM10D.ExecSQL;}
                {qInsCodiICD10.ParamByName('C_ICD').AsString  := CIM10D.FieldByName('CAMPO3').AsString;
                qInsCodiICD10.ParamByName('N_ICD').AsString  := CIM10D.FieldByName('CAMPO5').AsString;
                qInsCodiICD10.ParamByName('R_ICD').AsString  := CIM10D.FieldByName('CAMPO4').AsString;
                qInsCodiICD10.ParamByName('T_ICD').AsString  := CIM10D.FieldByName('CAMPO1').AsString;
                qInsCodiICD10.ParamByName('N_ICD2').Clear;
                qInsCodiICD10.ExecSQL;}

                cicd := PosaPunt(CIM10D.FieldByName('CAMPO4').AsString, CIM10D.FieldByName('CAMPO3').AsString);
                if GutSelect('select count(*) from CODIICD where c_icd="%s" and versiocim=10',[cicd]) = 0 then
                begin
                    qInsCodiICD.ParamByName('C_ICD').AsString  := cicd;
                    qInsCodiICD.ParamByName('N_ICD').AsString  := CIM10D.FieldByName('CAMPO5').AsString;
                    qInsCodiICD.ParamByName('R_ICD').AsString  := CopyLeft(CIM10D.FieldByName('CAMPO6').AsString,90);
                    qInsCodiICD.ParamByName('T_ICD').AsString  := CIM10D.FieldByName('CAMPO3').AsString;
                    qInsCodiICD.ParamByName('N_ICD2').Clear;
                    qInsCodiICD.ExecSQL;
                    i:=i+1;
                end;
            FINALLY END;
            CIM10D.Next;
        end;

        // Després PROCEDIMENTS
        CIM10P.Close;
        CIM10P.Open;
        //CIM10P.Next; // EL PRIMER TÉ UN SÍMBOL ESTRANY I L'INSERTO A MÀ.
        j:=0;
        while not CIM10P.eof do
        begin
            TRY {qInsCIM10P.ParamByName('T_ICD').AsString  := CIM10P.FieldByName('CAMPO1').AsString;
                qInsCIM10P.ParamByName('ORDRE').AsInteger := CIM10P.FieldByName('CAMPO2').AsInteger;
                qInsCIM10P.ParamByName('C_ICD').AsString  := CIM10P.FieldByName('CAMPO3').AsString;
                qInsCIM10P.ParamByName('R_ICD').AsString  := CIM10P.FieldByName('CAMPO4').AsString;
                qInsCIM10P.ParamByName('N_ICD').AsString  := CIM10P.FieldByName('CAMPO5').AsString;
                qInsCIM10P.ExecSQL;}
                {qInsCodiICD10.ParamByName('C_ICD').AsString  := CIM10P.FieldByName('CAMPO3').AsString;
                qInsCodiICD10.ParamByName('N_ICD').AsString  := CIM10P.FieldByName('CAMPO5').AsString;
                qInsCodiICD10.ParamByName('R_ICD').AsString  := CIM10P.FieldByName('CAMPO4').AsString;
                qInsCodiICD10.ParamByName('T_ICD').AsString  := CIM10P.FieldByName('CAMPO1').AsString;
                qInsCodiICD10.ParamByName('N_ICD2').Clear;
                qInsCodiICD10.ExecSQL;}

                // Asho ens va dir que els procediments són TOTS de 7 dígits - el que en tinguin menys no els inserto perquè dónen problemes de duplicitat (p.e. B00)
                if Len(CIM10P.FieldByName('CAMPO4').AsString)=7 then
                begin
                    if GutSelect('select count(*) from CODIICD where c_icd="%s" and versiocim=10 and tipus="%s"',[CIM10P.FieldByName('CAMPO4').AsString,CIM10P.FieldByName('CAMPO3').AsString]) = 0 then
                    begin
                        qInsCodiICD.ParamByName('C_ICD').AsString  := CIM10P.FieldByName('CAMPO4').AsString;
                        qInsCodiICD.ParamByName('N_ICD').AsString  := CIM10P.FieldByName('CAMPO5').AsString;
                        qInsCodiICD.ParamByName('R_ICD').AsString  := CopyLeft(CIM10D.FieldByName('CAMPO6').AsString,90);
                        qInsCodiICD.ParamByName('T_ICD').AsString  := CIM10P.FieldByName('CAMPO3').AsString;
                        qInsCodiICD.ParamByName('N_ICD2').Clear;
                        qInsCodiICD.ExecSQL;
                        j:=j+1;
                    end;
                end;
            FINALLY END;
            CIM10P.Next;
        end;
     end;
  1: begin
        // Primer DIAGNÒSTICS
        CIE10D.Close;
        CIE10D.Open;
        //CIE10D.Next; // EL PRIMER TÉ UN SÍMBOL ESTRANY I L'INSERTO A MÀ.
        i:=0;
        while not CIE10D.Eof do
        begin
            TRY qInsCodiICD10.ParamByName('C_ICD' ).AsString  := CIE10D.FieldByName('C_ICD').AsString;
                qInsCodiICD10.ParamByName('N_ICD' ).AsString  := CIE10D.FieldByName('N_ICD').AsString;
                qInsCodiICD10.ParamByName('N_ICD2').AsString  := CIE10D.FieldByName('N_ICD').AsString;
                qInsCodiICD10.ParamByName('T_ICD' ).AsString  := 'D';
                qInsCodiICD10.ExecSQL;
                i:=i+1;
            FINALLY END;
            CIE10D.Next;
        end;

        // Després PROCEDIMENTS
        CIE10P.Close;
        CIE10P.Open;
        //CIE10P.Next; // EL PRIMER TÉ UN SÍMBOL ESTRANY I L'INSERTO A MÀ.
        j:=0;
        while not CIE10P.Eof do
        begin
            TRY qInsCodiICD10.ParamByName('C_ICD' ).AsString  := CIE10P.FieldByName('C_ICD').AsString;
                qInsCodiICD10.ParamByName('N_ICD' ).AsString  := CIE10P.FieldByName('N_ICD').AsString;
                qInsCodiICD10.ParamByName('N_ICD2').AsString  := CIE10P.FieldByName('N_ICD').AsString;
                qInsCodiICD10.ParamByName('T_ICD' ).AsString  := 'P';
                qInsCodiICD10.ExecSQL;
                j:=j+1;
            FINALLY END;
            CIE10P.Next;
        end;
     end;
  end;


  ShowMessage(Format('Insertats %d DIAGNÒSTICS.',[i])+#13+
              Format('Insertats %d PROCEDIIMENTS.',[j]));

end;

procedure Twmain.sbAragoClick(Sender: TObject);
var
 i,j,k: Integer;
 text,poblacio: String;
begin
  // Primer DIAGNÒSTICS
  Panel5.Visible := True;
  mLogErrors.Lines.Clear;
  Residencies.Close;
  Residencies.Open;
  i:=0; k:=0;
  while not Residencies.eof do
  begin
      poblacio := Residencies.FieldByName('NOMBRE').AsString;
      poblacio := Replace('€','Ç',poblacio);   // € = Ç
      poblacio := Replace('¥','Ñ',poblacio);   // ¥ = Ñ
      poblacio := Replace('š','Ü',poblacio);   // š = Ü
      poblacio := Replace('Ø','Ï',poblacio);   // Ø = Ï

      // 'BRUC, EL' --> 'EL BRUC'
      j:=Pos(',',poblacio);
      if j>0 then
      begin
          // si hi ha apòstrof després de la coma no afegir espai
          if Copy(poblacio,j+3,1)='''' then poblacio:=Copy(poblacio, j+2, len(poblacio))+CopyLeft(poblacio,j-1)
                                       else poblacio:=Copy(poblacio, j+2, len(poblacio))+' '+CopyLeft(poblacio,j-1);
      end;

      TRY text := GutSelect('SELECT C_RESIDENCIA FROM POBLACIO WHERE UPPER(N_POBLACIO)="%s"', [poblacio]);
          if text <> ''  then
          begin
            if text <> Residencies.FieldByName('RESIDENCIA').AsString then
            begin
              qUpdPoblacio.ParamByName('N_POBLACIO'  ).AsString := poblacio;
              qUpdPoblacio.ParamByName('C_RESIDENCIA').AsString := Residencies.FieldByName('RESIDENCIA').AsString;
              qUpdPoblacio.ExecSQL;
              mLogErrors.Lines.Add('Població: '+poblacio+'      Residènca antiga: '+text+
                                   '      Residència nova: '+Residencies.FieldByName('RESIDENCIA').AsString);
              i:=i+1;
            end;
          end
          else begin //mLogErrors.Lines.Add('Població: '+poblacio+' no trobada.');
              qInsPoblacio.ParamByName('c_provincia' ).AsString := Residencies.FieldByName('CPRO').AsString;
              qInsPoblacio.ParamByName('cpostal'     ).AsString := Residencies.FieldByName('CPRO').AsString+Residencies.FieldByName('CMUN').AsString;
              qInsPoblacio.ParamByName('n_poblacio'  ).AsString := poblacio;
              qInsPoblacio.ParamByName('n_poblacion2').AsString := poblacio;
              qInsPoblacio.ParamByName('c_residencia').AsString := Residencies.FieldByName('RESIDENCIA').AsString;
              TRY qInsPoblacio.ExecSQL;
              EXCEPT on e: Exception
              do begin
                poblacio:=replace('''','-',poblacio);
                ShowMessage(e.Message + #10#13 + 'Població: ' + poblacio+' no insertada');
                Exit;
              end;
              END;
              mLogErrors.Lines.Add('Població: '+poblacio+'      Municipi: '+Residencies.FieldByName('CMUN').AsString+
                                   '      Residència: '+Residencies.FieldByName('RESIDENCIA').AsString+'      afegida.');
              k:=k+1;
          end;
      EXCEPT END;
      Residencies.Next;
  end;
  ShowMessage(Format('Actualitzats %d codis de residència. Insertades %d poblacions',[i,k]));
end;

procedure Twmain.sbINEClick(Sender: TObject);
var
 i: Integer;
 text: String;
begin
  Panel5.Visible := True;
  mLogErrors.Lines.Clear;
  INE.Close;
  INE.Open;
  i:=0;
  while not INE.Eof do
  begin
      TRY qUpdateINE.ParamByName('C_MUNICIPI').AsString := INE.FieldByName('C_MUNICIPI').AsString;
          qUpdateINE.ParamByName('C_PROVINCI').AsString := INE.FieldByName('C_PROVINCI').AsString;
          qUpdateINE.ParamByName('CPOSTAL'   ).AsString := INE.FieldByName('CPOSTAL'   ).AsString;
          qUpdateINE.ExecSQL;
          mLogErrors.Lines.Add('Provincia '+INE.FieldByName('C_PROVINCI').AsString+
                               ' CPostal '+INE.FieldByName('CPOSTAL').AsString+
                               ' actualitzada amb C_MUNICIPI '+INE.FieldByName('C_MUNICIPI').AsString);
          i:=i+1;
      EXCEPT END;
      INE.Next;
  end;
  ShowMessage(Format('Actualitzats %d codis de municipi.',[i]));
end;

procedure Twmain.sbCIE9Click(Sender: TObject);
var
 i: Integer;
 NICD2: String;
begin
  // traspassar el descriptiu en castellà a N_ICD2 de CODIICD
  Panel5.Visible := True;
  mLogErrors.Lines.Clear;
  CIE9.Close;
  CIE9.Open;
  i:=0;
  while (not CIE9.Eof) do
  begin
      TRY if CIE9.FieldByName('N_ICD2').IsNull or (CIE9.FieldByName('N_ICD2').AsString = '')
          then NICD2 := CIE9.FieldByName('IDREL' ).AsString
          else NICD2 := CIE9.FieldByName('N_ICD2').AsString;
          NICD2 := LowerCase(NICD2);
          NICD2 := Upper1a(NICD2);

          if Pos('Ð' ,NICD2) > 0 then NICD2 := Replace('Ð' ,'ñ',NICD2); 

          qCIE9.ParamByName('C_ICD' ).AsString := CIE9.FieldByName('C_ICD' ).AsString;
          qCIE9.ParamByName('N_ICD2').AsString := NICD2;
          qCIE9.ExecSQL;
          mLogErrors.Lines.Add('C_ICD '+CIE9.FieldByName('C_ICD' ).AsString+' N_ICD2 "'+NICD2+'" actualitzat');
          i:=i+1;
      EXCEPT END;
      CIE9.Next;
  end;
  ShowMessage(Format('Actualitzats %d codis ICD-9.',[i]));
end;

procedure Twmain.sbISO2Click(Sender: TObject);
var
 i: Integer;
begin
  // omplir camp C_ISO2 de la taula PAIS per C_ISO
  ISO2.Close;
  ISO2.Open;
  i:=0;
  while not ISO2.Eof do
  begin
      qUpdISO2.ParamByName('C_ISO' ).AsString := ISO2.FieldByName('C_ISO' ).AsString;
      qUpdISO2.ParamByName('C_ISO2').AsString := ISO2.FieldByName('C_ISO2').AsString;
      qUpdISO2.ExecSQL;
      i:=i+1;
      ISO2.Next;
  end;
  ISO2.Close;
  ShowMessage(Format('Actualitzats %d regsitres',[i]));
end;

procedure Twmain.SpeedButton1Click(Sender: TObject);
var
 cim9, cim10: String;
begin
  // 1- omplir taula CIM9CIM10
  if AvisoSN('Voleu omplir la taula CIM9CIM10 (S/N)?') then
  begin
      Frequent.Close;
      Frequent.Open;

      while not Frequent.Eof do
      begin
          // FALLOS DE L'EXCEL: CIM10 codis de 3 posicions amb '.' al final
          //                    CIM10 codis amb 2 punts
          //                    CIM9  codis de 3 posicions amb '.' al final
          cim9  := Frequent.FieldByName('ICD9' ).AsString;
          cim10 := Frequent.FieldByName('ICD10').AsString;

          if CopyRight(cim9,1)='.'  then cim9 := CopyLeft(cim9,len(cim9)-1);
          cim9 := Replace('..','.',cim9);
          if CopyRight(cim10,1)='.' then cim10 := CopyLeft(cim10,len(cim10)-1);
          cim10 := Replace('..','.',cim10);

          if GutSelect('select count(*) from CIM9CIM10 where cim9="%s" and cim10="%s"', [cim9, cim10]) = 0 then
          begin
              qIns910.ParamByName('CIM9' ).AsString := cim9;
              qIns910.ParamByName('CIM10').AsString := cim10;
              qIns910.ExecSQL;
          end;

          Frequent.Next;
      end;
      Frequent.Close;
  end; 

  // 2- per cada CIM10 recuperar tots els C_FREQUENT de CODIICD dels CIM9 corresponents i composar el C_FREQUENT agafant a cada posició el màxim
  if AvisoSN('Voleu bolcar el camp C_FREQUENT (S/N)?') then
  begin
      Frequent.Close;
      Frequent.Open;

      while not Frequent.Eof do
      begin
          qFreqs.Close;
          qFreqs.SQL[3] := 'and c2.cim10="'+Frequent.FieldByName('ICD10').AsString+'"';
          qFreqs.Open;

          while not qFreqs.Eof do
          begin


          end;

          Frequent.Next;
      end;
  end;
end;

procedure Twmain.SpeedButton2Click(Sender: TObject);
var
 i: Integer;
 q: TQuery;
begin
  // omplir taula TRACT_CODIFICACIO
  GRD.Close;
  GRD.Open;
  i:=0;
  mLogErrors.Lines.Clear;
  mLogErrors.Visible := True;
  Panel5.Visible := True;
  q := TQuery.Create(Application);
  q.DatabaseName := wData.Gdb.DatabaseName;
  q.SQL.Text := 'select GRD, NIVELLSEVERITAT, PES from TRACT_CODIFICACIO where C_TRACTAMENT=:C_TRACTAMENT';
  // El primer registre és la capçalera ==> el saltem
  GRD.First;
  GRD.Next;
  while not GRD.Eof do
  begin
      // si el tractament ja està a TRACT_CODIFICACIO ho guardo al LOG
      q.ParamByName('C_TRACTAMENT').AsInteger := GRD.FieldByName('CAMPO2').AsInteger;
      q.Open;
      if not q.Eof then
      begin
          // només aviso si hi ha canvis en algun dels valors
          if (q.FieldByName('GRD'            ).AsString <> GRD.FieldByName('CAMPO4').AsString)
          or (q.FieldByName('NIVELLSEVERITAT').AsString <> GRD.FieldByName('CAMPO5').AsString)
          or (q.FieldByName('PES'            ).AsString <> GRD.FieldByName('CAMPO6').AsString)
          then begin
              mLogErrors.Lines.Add('Tractament '+GRD.FieldByName('CAMPO2').AsString+' ja existeix a TRACT_CODIFICACIO. ');
              mLogErrors.Lines.Add('  Valors existents: (GRD)'+  q.FieldByName('GRD').AsString+' (SEVERITAT):'+  q.FieldByName('NIVELLSEVERITAT').AsString+' (PES)'+  q.FieldByName('PES').AsString);
              mLogErrors.Lines.Add('  Valors nous:      (GRD)'+GRD.FieldByName('CAMPO4').AsString+' (SEVERITAT):'+GRD.FieldByName('CAMPO5').AsString+' (PES)'+GRD.FieldByName('CAMPO6').AsString);
          end;
      end
      else begin
          qInsTractCodificacio.ParamByName('C_TRACTAMENT'   ).AsInteger := GRD.FieldByName('CAMPO2').AsInteger;
          qInsTractCodificacio.ParamByName('GRD'            ).AsInteger := GRD.FieldByName('CAMPO4').AsInteger;
          qInsTractCodificacio.ParamByName('NIVELLSEVERITAT').AsInteger := GRD.FieldByName('CAMPO5').AsInteger;
          qInsTractCodificacio.ParamByName('PES'            ).AsString  := GRD.FieldByName('CAMPO6').AsString;
          qInsTractCodificacio.ExecSQL;
          i:=i+1;          
      end;
      q.Close;
      GRD.Next;
  end;
  GRD.Close;
  q.Free;
  ShowMessage(Format('Insertats %d regsitres',[i]));
end;

procedure Twmain.sbSAPProductesClick(Sender: TObject);
var
 i: Integer;
begin
  // insertar a la taula PRODUCTES (de farmàcia) els codis SAP de material corresponents
  i:=0;
  SAPPROD.Close;
  SAPPROD.Open;
  while not SAPPROD.Eof do
  begin
      qUpdProd.ParamByName('c_prod'    ).AsString := SAPPROD.fieldByNAme('c_prod'    ).AsString;
      qUpdProd.ParamByName('c_prod_sap').AsString := SAPPROD.fieldByNAme('c_prod_sap').AsString;
      qUpdProd.ExecSQL;

      SAPPROD.Next;
      i:=i+1;
  end;
  SAPPROD.Close;
  ShowMessage(Format('Actualitzats %d productes',[i]));
end;

procedure Twmain.sbConsumsClick(Sender: TObject);
var
 i: Integer;
 qDades: TQuery;
 DI, DF: TDateTime;
 resp: TConsumResposta;
 linia,nomFtx,Magatzem,DescRef,Ref,Metge: String;
 FitxerTXT: TextFile;
begin
  i:=0;
  DI := Calendario(NowServer,Catala,False,'Data inici consums a traspassar:');
  DF := Calendario(DI+1,     Catala,False,'Data final consums a traspassar:');
  if DI > DF then FerError('La data d''inici no pot ser posterior a la data final.',True);

  qDades := TQuery.Create(Application);
  qDades.DatabaseName := wData.Gdb.DatabaseName;
  qDades.SQL.Text := 'SELECT C_MOV, T_MOV, C_CENTRECOST, C_HISTORIA, C_PROD, CANTITAT, DATAMOV, C_DISP, '+
                     '       C_LINIA, C_DISPINTERF, C_ORDREMEDICA, C_PLANILLA, ALBARA_PROV              '+
                     ' FROM MOVIMENTS WHERE T_MOV IN(''EC'',''SC'')                                     '+
                     ' AND DATAMOV BETWEEN "'+FormatDateTime('dd.mm.yyyy hh:mm:ss',DI)+'" AND "'+FormatDateTime('dd.mm.yyyy hh:mm:ss',DF)+'"'+
                     ' AND C_MOV = 5700558 '+
                     ' ORDER BY C_MOV';
  qDades.Open;

  nomFtx:='G:\usr\informatica\SAP ADMISSIONS I FARMACIA\LogCarregaInicialConsums'+FormatDateTime('yyyymmddhhmmss',NowServer)+'.txt';
  AssignFile(FitxerTXT,nomFtx);
  Rewrite(FitxerTXT);

  // ANULATS: els enviem igualment perquè després s'envia el moviment contrari
  // QUÈ FEM SI DÓNA ERROR EN UN? paro i mostro el C_MOV per saber fins on hem fet

  {
Descripció referència                                               Metge                                   Magatzem
---------------------                                               -----                                   --------
Servei de medicació (C_ORDREMEDICA)                                 OM.Metge_Pautat                         0001
Medicació d''entrega única (C_ORDREMEDICA)                          OM.Metge_Pautat                         0001
Planilla (C_CENTRECOST)                                             -                                       0001
Servei estupefaents UH (C_CENTRECOST)                               -                                       0001
Devolució estupefaents UH (C_CENTRECOST)                            -                                       0001
Sortida estupefaents a CADUCATS (C_CENTRECOST)                      -                                       0001
MHDA (C_ORDREMEDICA)                                                OM.Metge_Pautat                         0001
Dispensació d''altra MHDA (C_INTERF)                                Interf.C_Metge                          0001
Armaris medicació UH (C_CENTRECOST)                                 -                                       0001
Altres moviments (C_MOV)                                            Mov.C_Metge                             (*)
Dispensació d''estocs (C_DISPCAP-C_DISPLIN)                         DispCap.C_Metge                         0013
Anul·lació de dispensació d''estocs (C_DISPCAP-C_DISPLIN)           DispCap.C_Metge                         0013
Dispensació d''estocs (C_DISPCAP-C_DISPLIN): abonament producte     DispCap.C_Metge                         0013

(*)
// Mirem contra quin magatzem ha d'anar el moviment (estocs que es facturen -> magatzem de venda; la resta, autoconsum)
if (DataSet.FieldByName('C_CentreCost').AsString = GutSelect('select CCSTOCKS from CONFIG', [])) then autoconsum := False
                                                                                                 else autoconsum := True;

Per tant,  potser ho pots fer sempre així: si el centre de cost és 71000 -> magatzem = '0013'  (però no n'estic 100% segura) 
  }

  while not qDades.Eof do
  begin
      Metge   := '';
      DescRef := '';
      Ref     := '';

      if (not qDades.FieldByName('c_disp').IsNull) and (qDades.FieldByName('c_disp').AsString <> '') then
      begin
          Magatzem := '0013';
          DescRef  := 'Carrega inicial (c_disp-c_linia)';
          Ref      := qDades.FieldByName('c_disp').AsString +'-'+qDades.FieldByName('c_linia').AsString;
          Metge    := GutSelect('SELECT C_METGE FROM DISPCAP WHERE C_DISP=%d', [qDades.FieldByName('c_disp').AsInteger]);
      end
      else begin
          Magatzem := '0001';

          if (not qDades.FieldByName('c_dispinterf').IsNull) and (qDades.FieldByName('c_dispinterf').AsString <> '') then
          begin
              DescRef  := 'Carrega inicial (c_dispinterf)';
              Ref      := qDades.FieldByName('c_dispinterf').AsString;
              Metge    := GutSelect('SELECT C_METGE FROM INTERF WHERE PK=%d', [qDades.FieldByName('c_dispinterf').AsInteger]);
              if (qDades.FieldByName('C_CentreCost').AsString = GutSelect('select CCSTOCKS from CONFIG', [])) then Magatzem := '0013'
                                                                                                              else Magatzem := '0001';
          end
          else if (not qDades.FieldByName('c_ordremedica').IsNull) and (qDades.FieldByName('c_ordremedica').AsString <> '') then
          begin
              DescRef  := 'Carrega inicial (c_ordremedica)';
              Ref      := qDades.FieldByName('c_ordremedica').AsString;
              Metge    := GutSelect('SELECT METGE_PAUTAT FROM ORDRESMEDIQUES WHERE C_ORDREMEDICA=%d', [qDades.FieldByName('c_ordremedica').AsInteger]);
          end
          else if (not qDades.FieldByName('c_planilla').IsNull) and (qDades.FieldByName('c_planilla').AsString <> '') then
          begin
              DescRef  := 'Carrega inicial (c_planilla)';
              Ref      := qDades.FieldByName('c_planilla').AsString;
          end
          else begin
              DescRef  := 'Carrega inicial (albara_prov)';
              Ref      := qDades.FieldByName('albara_prov').AsString;
          end;
      end;

      linia:='CreaConsumSAP C_MOV '+qDades.FieldByName('C_MOV').AsString+'#'+
             'Magatzem '+Magatzem+'#'+
             'TMov '+qDades.FieldByName('T_MOV').AsString+'#'+
             'C_Centrecost '+qDades.FieldByName('c_centrecost').AsString+'#'+
             'Metge '+Metge+'#'+
             'NHC '+qDades.FieldByName('C_HISTORIA').AsString+'#'+
             'C_Prod '+qDades.FieldByName('C_PROD').AsString+'#'+
             'Cantitat '+qDades.FieldByName('CANTITAT').AsString+'#'+
             'DataMov '+FormatDateTime('dd.mm.yyyy',qDades.FieldByName('DATAMOV').AsDateTime)+'#'+
             'DescRef '+DescRef+'#'+
             'Ref '+Ref;
      Append(FitxerTXT);
      Writeln(FitxerTXT,linia);

      {ShowMessage('CreaConsumSAP: Magatzem '+Magatzem+Nline+
                  'TMov '+qDades.FieldByName('T_MOV').AsString+Nline+
                  'C_Centrecost '+qDades.FieldByName('c_centrecost').AsString+Nline+
                  'Metge '+Metge+Nline+
                  'NHC '+qDades.FieldByName('C_HISTORIA').AsString+Nline+
                  'C_Prod '+qDades.FieldByName('C_PROD').AsString+Nline+
                  'Cantitat '+qDades.FieldByName('CANTITAT').AsString+Nline+
                  'DataMov '+FormatDateTime('dd.mm.yyyy',qDades.FieldByName('DATAMOV').AsDateTime)+Nline+
                  'DescRef '+DescRef+Nline+
                  'Ref '+Ref); }
      
      resp := CreaConsumSAP(Magatzem,qDades.FieldByName('T_MOV').AsString,qDades.FieldByName('C_CENTRECOST').AsString,Metge,
                            qDades.FieldByName('C_HISTORIA').AsInteger, qDades.FieldByName('C_PROD').AsInteger, qDades.FieldByName('CANTITAT').AsInteger,
                            qDades.FieldByName('DATAMOV').AsDateTime,DescRef,Ref);

      if not resp.ok then FerError('Error en WS consum: '+resp.error_msg+Nline+'Moviment: '+qDades.FieldByName('C_MOV').AsString,True);

      i:=i+1;
      qDades.Next;
  end;

  qDades.Close; qDades.Free;
  Flush(FitxerTXT);
  CloseFile(FitxerTXT);
  ShowMessage(Format('Creats %d consums',[i]));
end;

procedure Twmain.sbNReg2Click(Sender: TObject);
var
 i: Integer;
begin
  // ACTUALITZAR N_REG2 A PRODUCTES
  i:=0;
  ProdNREG2.Close;
  ProdNREG2.Open;
  while not ProdNREG2.Eof do
  begin
      qUpdProdNReg2.ParamByName('c_prod').AsString := ProdNREG2.fieldByNAme('c_prod').AsString;
      qUpdProdNReg2.ParamByName('N_REG2').AsString := ProdNREG2.fieldByNAme('N_REG2').AsString;
      qUpdProdNReg2.ExecSQL;

      ProdNREG2.Next;
      i:=i+1;
  end;
  ProdNREG2.Close;
  ShowMessage(Format('Actualitzats %d productes',[i]));
end;

procedure Twmain.sbCIM10_2021Click(Sender: TObject);
var
 opcio,read,insert,update: Integer;
 cicd: String;
begin
    opcio := AvisoLista('Triar ',['Consulta','Actualitza']);
    if opcio = -1 then Abort;

   { CIM102021D.Close;
    CIM102021D.Open;
    CIM102021D.First;
    read:=0; insert:=0; update:=0;

    WaitOn('Processant diagnòstics ...');
    // TODO: per cada registre, mirar si existeix a la BD. En cas afirmatiu, modificar-lo, altrament insertar-lo
    // Els que s'han de donar de baixa en s'ho indiquen en un Excel a part
    while (not CIM102021D.Eof) do
    begin
        cicd := PosaPunt(CIM102021D.FieldByName('CAMPO4').AsString,CIM102021D.FieldByName('CAMPO3').AsString);
        if GutSelect('select count(*) from CODIICD where C_ICD="%s" and versiocim=10',[cicd]) = 0
        then begin
            qInsCodiICD.ParamByName('C_ICD').AsString := cicd;
            qInsCodiICD.ParamByName('N_ICD').AsString := CIM102021D.FieldByName('CAMPO5').AsString;
            qInsCodiICD.ParamByName('R_ICD').AsString := CopyLeft(CIM102021D.FieldByName('CAMPO6').AsString,90);
            qInsCodiICD.ParamByName('T_ICD').AsString := CIM102021D.FieldByName('CAMPO3').AsString;
            qInsCodiICD.ParamByName('I_DIAGINES').AsString := CIM102021D.FieldByName('CAMPO7').AsString;
            qInsCodiICD.ParamByName('N_ICD2').Clear;

            TRY if opcio=1 then qInsCodiICD.ExecSQL;
                insert:=insert+1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'Insert C_ICD: ' + cicd);
                       Exit;
                   end;
            END;
        end
        else begin
          if (CIM102021D.FieldByName('CAMPO1').AsString = 'M') then   // nomes si l'accio es MODIFICACIO el modifiquem
          begin
            qUpdCodiICD.ParamByName('C_ICD').AsString := cicd;
            qUpdCodiICD.ParamByName('N_ICD').AsString := CIM102021D.FieldByName('CAMPO5').AsString;
            qUpdCodiICD.ParamByName('R_ICD').AsString := CopyLeft(CIM102021D.FieldByName('CAMPO6').AsString,90);
            qUpdCodiICD.ParamByName('T_ICD').AsString := CIM102021D.FieldByName('CAMPO3').AsString;
            qUpdCodiICD.ParamByName('versiocim').AsInteger := 10;
            qUpdCodiICD.ParamByName('I_DIAGINES').AsString := CIM102021D.FieldByName('CAMPO7').AsString;

            TRY if opcio=1 then qUpdCodiICD.ExecSQL;
                update:=update+1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'Update C_ICD: ' + cicd);
                       Exit;
                   end;
            END;
          end;
        end;
        read:=read+1;
        CIM102021D.Next;
    end;
    WaitOff;
    ShowMessage(Format('Diagnòstics i Causes externes: Llegits %d - Nous %d - Actualitzats %d',[read, insert, update]));

    CIM102021P.Close;
    CIM102021P.Open;
    CIM102021P.First;
    read:=0; insert:=0; update:=0;

    WaitOn('Processant procediments ...');
    // TODO: per cada registre, mirar si existeix a la BD. En cas afirmatiu, modificar-lo, altrament insertar-lo
    // Els que s'han de donar de baixa en s'ho indiquen en un Excel a part
    while (not CIM102021P.Eof) do
    begin
        if GutSelect('select count(*) from CODIICD where C_ICD="%s" and versiocim=10',[CIM102021P.FieldByName('CAMPO4').AsString]) = 0
        then begin
            qInsCodiICD.ParamByName('C_ICD').AsString := CIM102021P.FieldByName('CAMPO4').AsString;
            qInsCodiICD.ParamByName('N_ICD').AsString := CIM102021P.FieldByName('CAMPO5').AsString;
            qInsCodiICD.ParamByName('R_ICD').AsString := CopyLeft(CIM102021P.FieldByName('CAMPO6').AsString,90);
            qInsCodiICD.ParamByName('T_ICD').AsString := CIM102021P.FieldByName('CAMPO3').AsString;
            qInsCodiICD.ParamByName('I_DIAGINES').AsString := CIM102021P.FieldByName('CAMPO7').AsString;
            qInsCodiICD.ParamByName('N_ICD2').Clear;

            TRY if opcio=1 then qInsCodiICD.ExecSQL;
                insert:=insert+1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'Insert C_ICD: ' + CIM102021P.FieldByName('CAMPO4').AsString);
                       Exit;
                   end;
            END;
        end
        else begin
            qUpdCodiICD.ParamByName('C_ICD').AsString := CIM102021P.FieldByName('CAMPO4').AsString;
            qUpdCodiICD.ParamByName('N_ICD').AsString := CIM102021P.FieldByName('CAMPO5').AsString;
            qUpdCodiICD.ParamByName('R_ICD').AsString := CopyLeft(CIM102021P.FieldByName('CAMPO6').AsString,90);
            qUpdCodiICD.ParamByName('T_ICD').AsString := CIM102021P.FieldByName('CAMPO3').AsString;
            qUpdCodiICD.ParamByName('versiocim').AsInteger := 10;
            qUpdCodiICD.ParamByName('I_DIAGINES').AsString := CIM102021P.FieldByName('CAMPO7').AsString;

            TRY if opcio=1 then qUpdCodiICD.ExecSQL;
                update:=update+1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'Update C_ICD: ' + CIM102021P.FieldByName('CAMPO4').AsString);
                       Exit;
                   end;
            END;
        end;
        read:=read+1;
        CIM102021P.Next;
    end;
    WaitOff;
    ShowMessage(Format('Procediments: Llegits %d - Nous %d - Actualitzats %d',[read, insert, update]));

    // format fitxer: C_ICD, TIPUS
    CIM10MC_BAIXES.Close;
    CIM10MC_BAIXES.Open;
    CIM10MC_BAIXES.First;
    read:=0; insert:=0; update:=0;

    WaitOn('Processant baixes de diagnostics ...');
    while (not CIM10MC_BAIXES.Eof) do
    begin
        cicd := PosaPunt(CIM10MC_BAIXES.FieldByName('CAMPO1').AsString,CIM10MC_BAIXES.FieldByName('CAMPO2').AsString);
        if GutSelect('select count(*) from CODIICD where C_ICD="%s" and versiocim=10',[cicd]) > 0
        then begin
            qBaixaCodiICD.ParamByName('C_ICD').AsString := cicd;
            qBaixaCodiICD.ParamByName('T_ICD').AsString := CIM10MC_BAIXES.FieldByName('CAMPO2').AsString;
            qBaixaCodiICD.ParamByName('versiocim').AsInteger := 10;

            TRY if opcio=1 then qBaixaCodiICD.ExecSQL;
                update:=update+1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'Update C_ICD: ' + cicd);
                       Exit;
                   end;
            END;
        end;
        read:=read+1;
        CIM10MC_BAIXES.Next;
    end;
    WaitOff;
    ShowMessage(Format('Baixes de diagnostics: Llegits %d - Actualitzats %d',[read, update]));      }

    // format fitxer: C_ICD, TIPUS
    CIM10SCP_BAIXES.Close;
    CIM10SCP_BAIXES.Open;
    CIM10SCP_BAIXES.First;
    read:=0; insert:=0; update:=0;

    WaitOn('Processant baixes de procediments ...');
    while (not CIM10SCP_BAIXES.Eof) do
    begin
        if GutSelect('select count(*) from CODIICD where C_ICD="%s" and versiocim=10',[CIM10SCP_BAIXES.FieldByName('CAMPO1').AsString]) > 0
        then begin
            qBaixaCodiICD.ParamByName('C_ICD').AsString := CIM10SCP_BAIXES.FieldByName('CAMPO1').AsString;
            qBaixaCodiICD.ParamByName('T_ICD').AsString := 'P';
            qBaixaCodiICD.ParamByName('versiocim').AsInteger := 10;

            TRY if opcio=1 then qBaixaCodiICD.ExecSQL;
                update:=update+1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'Update C_ICD: ' + cicd);
                       Exit;
                   end;
            END;
        end;
        read:=read+1;
        CIM10SCP_BAIXES.Next;
    end;
    WaitOff;
    ShowMessage(Format('Baixes de procediments: Llegits %d - Actualitzats %d',[read, update]));
end;

procedure Twmain.sbPAOClick(Sender: TObject);
var
 read,insert,update: Integer;
begin
    hdsPAO.Close;
    hdsPAO.Open;
    hdsPAO.First;
    read:=0; insert:=0; update:=0;

    WaitOn('Processant ortesis ...');
    while not hdsPAO.Eof do
    begin
        // 1- INSERTAR a CODIGRUPORTESIS     
        if GutSelect('select count(*) from CODIGRUPORTESIS where C_GRUP="%s"',[hdsPAO.FieldByName('CORTESIS').AsString])=0 then
        begin
            qInsCodiGrupOrtesis.ParamByName('C_GRUP' ).AsString := hdsPAO.FieldByName('CORTESIS').AsString;
            qInsCodiGrupOrtesis.ParamByName('N_GRUP' ).AsString := CopyLeft(hdsPAO.FieldByName('NORTESIS').AsString,250);
            qInsCodiGrupOrtesis.ParamByName('N_GRUP2').AsString := Copy(hdsPAO.FieldByName('NORTESIS').AsString,251,len(hdsPAO.FieldByName('NORTESIS').AsString));
            qInsCodiGrupOrtesis.ParamByName('BAIXA'  ).AsString := 'N';

            TRY qInsCodiGrupOrtesis.ExecSQL;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'INSERT CODIGRUPORTESIS Codi Grup: ' + qInsCodiGrupOrtesis.FieldByName('C_ORTESIS').AsString);
                       Exit;
                   end;
            END;
        end
        else begin
            qUpdCodiGrupOrtesis.ParamByName('C_GRUP' ).AsString := hdsPAO.FieldByName('CORTESIS').AsString;
            qUpdCodiGrupOrtesis.ParamByName('N_GRUP' ).AsString := CopyLeft(hdsPAO.FieldByName('NORTESIS').AsString,250);
            qUpdCodiGrupOrtesis.ParamByName('N_GRUP2').AsString := Copy(hdsPAO.FieldByName('NORTESIS').AsString,251,len(hdsPAO.FieldByName('NORTESIS').AsString));
            qUpdCodiGrupOrtesis.ParamByName('BAIXA'  ).AsString := 'N';

            TRY qUpdCodiGrupOrtesis.ExecSQL;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'UPDATE CODIGRUPORTESIS Codi Grup: ' + qUpdCodiGrupOrtesis.FieldByName('C_ORTESIS').AsString);
                       Exit;
                   end;
            END;
        end;

        // 2- INSERTAR a CODIORTESIS         
        if GutSelect('select count(*) from CODIORTESIS where C_ORTESIS="%s"',[hdsPAO.FieldByName('CORTESIS').AsString]) = 0 then
        begin
            qInsCodiOrtesis.ParamByName('C_ORTESIS'      ).AsString  := hdsPAO.FieldByName('CORTESIS'  ).AsString; 
            qInsCodiOrtesis.ParamByName('N_ORTESIS'      ).AsString  := CopyLeft(hdsPAO.FieldByName('NORTESIS').AsString, 250);
            qInsCodiOrtesis.ParamByName('C_FAMILIA'      ).AsString  := hdsPAO.FieldByName('CFAMILIA'  ).AsString;
            qInsCodiOrtesis.ParamByName('IVAVENTA'       ).AsInteger := hdsPAO.FieldByName('IVAVENTA'  ).AsInteger;
            qInsCodiOrtesis.ParamByName('CODISERVEI'     ).AsString  := hdsPAO.FieldByName('CODISERVEI').AsString;
            qInsCodiOrtesis.ParamByName('PREUMAXIMSERVEI').AsFloat   := hdsPAO.FieldByName('PREUMAXIMS').AsFloat;
            qInsCodiOrtesis.ParamByName('APORTACIOSERVEI').AsFloat   := hdsPAO.FieldByName('APORTACIOS').AsFloat;
            qInsCodiOrtesis.ParamByName('TIPUSORTESIS'   ).AsInteger := hdsPAO.FieldByName('TIPUSORTES').AsInteger;
            qInsCodiOrtesis.ParamByName('N_ORTESIS2'     ).AsString  := Copy(hdsPAO.FieldByName('NORTESIS').AsString,251,len(hdsPAO.FieldByName('NORTESIS').AsString));
            qInsCodiOrtesis.ParamByName('TECATALEG'      ).AsString  := hdsPAO.FieldByName('TECATALEG' ).AsString;
            qInsCodiOrtesis.ParamByName('ACTIU'          ).AsString  := hdsPAO.FieldByName('ACTIU'     ).AsString;

            TRY qInsCodiOrtesis.ExecSQL;
                insert:=insert+1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'INSERT CODIORTESIS Codi Servei: ' + qInsCodiOrtesis.FieldByName('codiservei').AsString);
                       Exit;
                   end;
            END;
        end
        else begin
            qUpdCodiOrtesis.ParamByName('C_ORTESIS'      ).AsString  := hdsPAO.FieldByName('CORTESIS'  ).AsString; 
            qUpdCodiOrtesis.ParamByName('N_ORTESIS'      ).AsString  := CopyLeft(hdsPAO.FieldByName('NORTESIS').AsString, 250);
            qUpdCodiOrtesis.ParamByName('C_FAMILIA'      ).AsString  := hdsPAO.FieldByName('CFAMILIA'  ).AsString;
            qUpdCodiOrtesis.ParamByName('IVAVENTA'       ).AsInteger := hdsPAO.FieldByName('IVAVENTA'  ).AsInteger;
            qUpdCodiOrtesis.ParamByName('CODISERVEI'     ).AsString  := hdsPAO.FieldByName('CODISERVEI').AsString;
            qUpdCodiOrtesis.ParamByName('PREUMAXIMSERVEI').AsFloat   := hdsPAO.FieldByName('PREUMAXIMS').AsFloat;
            qUpdCodiOrtesis.ParamByName('APORTACIOSERVEI').AsFloat   := hdsPAO.FieldByName('APORTACIOS').AsFloat;
            qUpdCodiOrtesis.ParamByName('TIPUSORTESIS'   ).AsInteger := hdsPAO.FieldByName('TIPUSORTES').AsInteger;
            qUpdCodiOrtesis.ParamByName('N_ORTESIS2'     ).AsString  := Copy(hdsPAO.FieldByName('NORTESIS').AsString,251,len(hdsPAO.FieldByName('NORTESIS').AsString));
            qUpdCodiOrtesis.ParamByName('TECATALEG'      ).AsString  := hdsPAO.FieldByName('TECATALEG' ).AsString;
            qUpdCodiOrtesis.ParamByName('ACTIU'          ).AsString  := hdsPAO.FieldByName('ACTIU'     ).AsString;

            TRY qUpdCodiOrtesis.ExecSQL;
                update:=update+1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'Codi Servei: ' + qUpdCodiOrtesis.FieldByName('codiservei').AsString);
                       Exit;
                   end;
            END;
        end;

        // 3- INSERTAR a CODIGRUPORTESISLIN
        if GutSelect('select count(*) from CODIGRUPORTESISLIN where C_GRUP="%s"',[hdsPAO.FieldByName('CORTESIS').AsString])=0 then
        begin
            qInsCodiGrupOrtesisLin.ParamByName('C_GRUP'   ).AsString := hdsPAO.FieldByName('CORTESIS').AsString;
            qInsCodiGrupOrtesisLin.ParamByName('C_GRUPLIN').AsString := '1';
            qInsCodiGrupOrtesisLin.ParamByName('C_ORTESIS').AsString := hdsPAO.FieldByName('CORTESIS').AsString;

            TRY qInsCodiGrupOrtesisLin.ExecSQL;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'INSERT CODIGRUPORTESISLIN Codi Grup: ' + qInsCodiGrupOrtesisLin.FieldByName('C_ORTESIS').AsString);
                       Exit;
                   end;
            END;
        end
        else begin
            qUpdCodiGrupOrtesisLin.ParamByName('C_GRUP'   ).AsString := hdsPAO.FieldByName('CORTESIS').AsString;
            qUpdCodiGrupOrtesisLin.ParamByName('C_GRUPLIN').AsString := '1';
            qUpdCodiGrupOrtesisLin.ParamByName('C_ORTESIS').AsString := hdsPAO.FieldByName('CORTESIS').AsString;

            TRY qUpdCodiGrupOrtesisLin.ExecSQL;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'UPDATE CODIGRUPORTESISLIN Codi Grup: ' + qUpdCodiGrupOrtesisLin.FieldByName('C_ORTESIS').AsString);
                       Exit;
                   end;
            END;
        end;

        read:=read+1;
        hdsPAO.Next;
    end;
    hdsPAO.Close;

    WaitOff;
    ShowMessage(Format('Llegits: %d - Insertats: %d - Actualitzats: %d',[read, insert, update]));
end;

procedure Twmain.sbNovaHCEPisClick(Sender: TObject);
var
 read, error, update, filiacio_pis_integer,option: Integer;
 FitxerErrors: TextFile;
 nomFtx,linia,address_floor,filiacio_pis,address_floor_5: String;
begin
    ADDRESS.Close;
    ADDRESS.Open;
    ADDRESS.First;
    read := 0; error := 0; update := 0;

    nomFtx:='G:\usr\informatica\vicky\Projecte HCE\Jiras\HCE-532 pis erroni a Interbase\ErrorsNovaHCE.txt';
    AssignFile(FitxerErrors,nomFtx);
    Rewrite(FitxerErrors);

    option:=AvisoLista('Triar l''acció a realitzar:',['1. Llistar',
                                                      '2. Actualitzar']);
    if (option<0) then Exit
                  else option:=option+1;

    WaitOn('Comparant adreces de la novaHCE amb FILIACIO (Interbase) ...');
    while (not ADDRESS.Eof) do
    begin
        read := read + 1;

        qFiliacio.Close;
        qFiliacio.ParamByName('patient').AsInteger := ADDRESS.FieldByName('patient').AsInteger;
        qFiliacio.Open;

        if ADDRESS.FieldByName('floor').IsNull
        or ((not ADDRESS.FieldByName('floor').IsNull) and ((ADDRESS.FieldByName('floor').AsString = 'NULL') or (ADDRESS.FieldByName('floor').AsString = '')))
        then address_floor := ''
        else address_floor := UpperCase(Trim(ADDRESS.FieldByName('floor').AsString));

        if qFiliacio.FieldByName('pis').IsNull
        or (qFiliacio.FieldByName('pis').AsString = '')
        then filiacio_pis := ''
        else filiacio_pis := UpperCase(Trim(qFiliacio.FieldByName('pis').AsString));

        if IntegerOK(filiacio_pis,filiacio_pis_integer) then filiacio_pis := IntToStr(filiacio_pis_integer);

        address_floor_5 := CopyLeft(address_floor,5);
        if address_floor_5 <> filiacio_pis then    // FILIACIO.PIS es VARCHAR(5)
        begin
            linia:='Pacient '+ADDRESS.FieldByName('patient').AsString+' Floor: '+ address_floor +' Pis(IB): '+filiacio_pis;
            Append(FitxerErrors);
            Writeln(FitxerErrors,linia);

            if (option = 2) then
            begin
                qUpdFili.ParamByName('floor'  ).AsString  := address_floor_5;
                qUpdFili.ParamByName('patient').AsInteger := ADDRESS.FieldByName('patient').AsInteger;
                TRY qUpdFili.ExecSQL;
                    update := update +1;
                EXCEPT
                    on e: Exception
                    do begin
                        ShowMessage(e.Message + #10#13 + 'Registre: EscalesCAP.CLAU = ' + qEscCAP.FieldByName('CLAU').AsString);
                        Exit;
                    end;
                END;
            end;
            error := error + 1;
        end;

        ADDRESS.Next;
    end;
    linia:=Format('Comparacio finalitzada: Llegits %d - Amb ERROR %d - Actualitzats %d',[read, error, update]);
    Append(FitxerErrors);
    Writeln(FitxerErrors,linia);

    Flush(FitxerErrors);
    CloseFile(FitxerErrors);
    
    WaitOff;
    ShowMessage(linia);
end;

procedure Twmain.sbGermenClick(Sender: TObject);
var
 read,insert,update: Integer;
begin
    hdsGermen.Close;
    hdsGermen.Open;
    hdsGermen.First;
    read:=0; insert:=0; update:=0;

    WaitOn('Processant gèrmens ...');
    while not hdsGermen.Eof do
    begin
        // 1- INSERTAR a la taula GERMEN
        if GutSelect('select count(*) from GERMEN where C_GERMEN="%s"',[hdsGermen.FieldByName('C_GERMEN').AsString])=0 then
        begin
            qInsGermen.ParamByName('C_GERMEN').AsString  := hdsGermen.FieldByName('C_GERMEN').AsString;
            qInsGermen.ParamByName('N_GERMEN').AsString  := hdsGermen.FieldByName('N_GERMEN').AsString;
            qInsGermen.ParamByName('ORDRE'   ).AsInteger := insert;

            TRY qInsGermen.ExecSQL;
                insert := insert + 1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'INSERT GERMEN Codi Gèrmen: ' + hdsGermen.FieldByName('C_GERMEN').AsString);
                       Exit;
                   end;
            END;
        end
        else begin
            qUpdGermen.ParamByName('C_GERMEN').AsString := hdsGermen.FieldByName('C_GERMEN').AsString;
            qUpdGermen.ParamByName('N_GERMEN').AsString := hdsGermen.FieldByName('N_GERMEN').AsString;

            TRY qUpdGermen.ExecSQL;
                update := update + 1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'UPDATE GERMEN Codi Gèrmen: ' + hdsGermen.FieldByName('C_GERMEN').AsString);
                       Exit;
                   end;
            END;
        end;

        read := read + 1;
        hdsGermen.Next;
    end;
    hdsGermen.Close;

    WaitOff;
    ShowMessage(Format('Llegits: %d - Insertats: %d - Actualitzats: %d',[read, insert, update]));
end;

procedure Twmain.sbFactPredisClick(Sender: TObject);
var
 read,insert,c_factor: Integer;
begin
    hdsFactPredis.Close;
    hdsFactPredis.Open;
    hdsFactPredis.First;
    read:=0; insert:=0;

    WaitOn('Processant factors predisposants ...');

    // 1 - esborrem tota la taula?
    //if AvisoSN('Vols buidar la taula FACTPREDIS (S/N)?') then GutExecute('delete from FACTPREDIS',[]);

    // 1- dono de baixa els que hi ha
    if AvisoSN('Vols donar de baixa els factors predisposants antics (S/N)?') then GutExecute('UPDATE FACTPREDIS SET C_ESTAT = "B" WHERE C_ESTAT = "V"',[]);
    insert := 0; c_factor := 20;

    while not hdsFactPredis.Eof do
    begin
        // 2- INSERTAR a la taula FACTPREDIS
        qInsFactPredis.ParamByName('C_FACTOR').AsString  := IntToStr(c_factor);
        qInsFactPredis.ParamByName('N_FACTOR').AsString  := hdsFactPredis.FieldByName('FACTPRED').AsString;
        qInsFactPredis.ParamByName('ORDRE'   ).AsInteger := insert;

        TRY qInsFactPredis.ExecSQL;
            insert := insert + 1;
            c_factor := c_factor + 1;
        EXCEPT on e: Exception
               do begin
                   WaitOff;
                   ShowMessage(e.Message + #10#13 + 'INSERT FACTPREDIS Factor: ' + hdsFactPredis.FieldByName('FACTPRED').AsString);
                   Exit;
               end;
        END;

        read := read + 1;
        hdsFactPredis.Next;
    end;
    hdsFactPredis.Close;

    WaitOff;
    ShowMessage(Format('Llegits: %d - Insertats: %d',[read, insert]));
end;

procedure Twmain.SpeedButton3Click(Sender: TObject);
var
 read,insert,update: Integer;
 id: String;
begin
    // insert/update taula EMDN
    EMDN.Close;
    EMDN.Open;
    EMDN.First;
    read:=0; insert:=0; update:=0;

    WaitOn('Processant codis EMDN ...');

    while not EMDN.Eof do
    begin
        // comprovar si el registre existeix per decidir si fer INSERT o UPDATE
        if GutSelect('select count(*) from EMDN where ID="%s"',[EMDN.FieldByName('TEMDN_ID').AsString]) = 0 then
        begin
            // INSERTAR a la taula EMDN
            qInsEMDN.ParamByName('ID').AsString := EMDN.FieldByName('TEMDN_ID').AsString;
            qInsEMDN.ParamByName('DESCRIPCIO').AsString  := EMDN.FieldByName('DESC_CA').AsString;
            qInsEMDN.ParamByName('DATA_INICI').AsDate := Data(EMDN.FieldByName('DATA_INI').AsString);
            if EMDN.FieldByName('DATA_FIN').AsString = '' then qInsEMDN.ParamByName('DATA_FINAL').Clear
                                                          else qInsEMDN.ParamByName('DATA_FINAL').AsDate := Data(EMDN.FieldByName('DATA_FIN').AsString);
            qInsEMDN.ParamByName('CATEGORIA').AsString := EMDN.FieldByName('CATEGORIA').AsString;
            qInsEMDN.ParamByName('NIVELL').AsInteger := EMDN.FieldByName('NIVELL').AsInteger;
            if EMDN.FieldByName('NIVELL_INF').AsString = 'NO' then qInsEMDN.ParamByName('NIVELL_INFERIOR').AsString := 'N'
                                                              else qInsEMDN.ParamByName('NIVELL_INFERIOR').AsString := 'S';
            if EMDN.FieldByName('CODI_PARE').AsString <> ''   then qInsEMDN.ParamByName('CODI_PARE').AsString := EMDN.FieldByName('CODI_PARE').AsString
                                                              else qInsEMDN.ParamByName('CODI_PARE').Clear;

            TRY qInsEMDN.ExecSQL;
                insert := insert + 1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'INSERT EMDN ID: ' + EMDN.FieldByName('TEMDN_ID').AsString);
                       Exit;
                   end;
            END;
        end
        else begin
            // UPDATE a la taula EMDN
            qUpdEMDN.ParamByName('ID').AsString := EMDN.FieldByName('TEMDN_ID').AsString;
            qUpdEMDN.ParamByName('DESCRIPCIO').AsString  := EMDN.FieldByName('DESC_CA').AsString;
            if EMDN.FieldByName('DATA_FIN').AsString = '' then qUpdEMDN.ParamByName('DATA_FINAL').Clear
                                                          else qUpdEMDN.ParamByName('DATA_FINAL').AsDate := Data(EMDN.FieldByName('DATA_FIN').AsString);
            qUpdEMDN.ParamByName('CATEGORIA').AsString := EMDN.FieldByName('CATEGORIA').AsString;
            qUpdEMDN.ParamByName('NIVELL').AsInteger := EMDN.FieldByName('NIVELL').AsInteger;
            if EMDN.FieldByName('NIVELL_INF').AsString = 'NO' then qUpdEMDN.ParamByName('NIVELL_INFERIOR').AsString := 'N'
                                                              else qUpdEMDN.ParamByName('NIVELL_INFERIOR').AsString := 'S';
            if EMDN.FieldByName('CODI_PARE').AsString <> ''   then qUpdEMDN.ParamByName('CODI_PARE').AsString := EMDN.FieldByName('CODI_PARE').AsString
                                                              else qUpdEMDN.ParamByName('CODI_PARE').Clear;

            TRY qUpdEMDN.ExecSQL;
                update := update + 1;
            EXCEPT on e: Exception
                   do begin
                       WaitOff;
                       ShowMessage(e.Message + #10#13 + 'UPDATE EMDN ID: ' + EMDN.FieldByName('TEMDN_ID').AsString);
                       Exit;
                   end;
            END;
        end;

        read := read + 1;
        EMDN.Next;
    end;
    EMDN.Close;

    WaitOff;
    ShowMessage(Format('Llegits: %d - Insertats: %d - Actualitzats: %d',[read, insert, update]));

end;

procedure Twmain.sbPrefixClick(Sender: TObject);
var
 read,update: Integer;
 id: String;
begin
    // update taula PAIS
    prefix.Close;
    prefix.Open;
    prefix.First;
    read:=0; update:=0;

    WaitOn('Processant PREFIXOS  ...');

    while not prefix.Eof do
    begin
        // UPDATE a la taula PAIS
        qUpdPais.ParamByName('C_ISO2').AsString := prefix.FieldByName('C_ISO').AsString;
        qUpdPais.ParamByName('prefix').AsString  := '+'+prefix.FieldByName('PREFIX').AsString;

        TRY qUpdPais.ExecSQL;
            update := update + 1;
        EXCEPT on e: Exception
               do begin
                   WaitOff;
                   ShowMessage(e.Message + #10#13 + 'UPDATE PAIS C_ISO: ' + prefix.FieldByName('C_ISO').AsString);
                   Exit;
               end;
        END;

        read := read + 1;
        prefix.Next;
    end;
    prefix.Close;

    WaitOff;
    ShowMessage(Format('Llegits: %d - Actualitzats: %d',[read, update]));
end;

end.
