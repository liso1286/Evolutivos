unit FichaConfig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, HYSql, Db, DBTables, HYEdit, HYPanels, ComCtrls, StdCtrls,
  DBCtrls, Buttons, HYDialogConsulta, Menus, Grids, DBGrids, HYGrids,
  Hy_Misc, HYLabel, HYCalendari, Mask, ToolEdit, JvCsvData;

type
  TwFichaConfig = class(TForm)
    dsConfig: TDataSource;
    Config: THYSqlBrowse;
    HYBarra1: THYBarra;
    Tabs: TPageControl;
    TabDir: TTabSheet;
    TabRevi: TTabSheet;
    TabMisc: TTabSheet;
    Ed_Configura_Minuts: THYEdit;
    Splitter1: TSplitter;
    Macros: TPopupMenu;
    Insertarmacros1: TMenuItem;
    N1: TMenuItem;
    NOM1: TMenuItem;
    POBLACIO1: TMenuItem;
    DATANAIXEMENT1: TMenuItem;
    SEXE1: TMenuItem;
    IDENTIFICACIO1: TMenuItem;
    EDAT1: TMenuItem;
    DATAINFORME1: TMenuItem;
    AFECTATADA2: TMenuItem;
    DIAGNOSTIC1: TMenuItem;
    ETIOLOGIA1: TMenuItem;
    CODIE1: TMenuItem;
    DATAREVI1: TMenuItem;
    PROPERAREVI1: TMenuItem;
    ITEMS1: TMenuItem;
    SpeedButton1: TSpeedButton;
    Dialog: TFontDialog;
    METGE1: TMenuItem;
    TITOL1: TMenuItem;
    TabInfAlta: TTabSheet;
    Splitter2: TSplitter;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    MemoCas: TDBRichEdit;
    PageControl4: TPageControl;
    TabSheet6: TTabSheet;
    MemoCat: TDBRichEdit;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    MemoCas2: TDBRichEdit;
    PageControl5: TPageControl;
    TabSheet7: TTabSheet;
    MemoCat2: TDBRichEdit;
    Macros2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    HISTORIA1: TMenuItem;
    NOM2: TMenuItem;
    COGNOMS1: TMenuItem;
    DATANAIXEMENT2: TMenuItem;
    EDAT2: TMenuItem;
    POBLACIO2: TMenuItem;
    SEXE2: TMenuItem;
    DATAINGRES1: TMenuItem;
    DATAALTA1: TMenuItem;
    DATAINFORME2: TMenuItem;
    AFECTATADA1: TMenuItem;
    DIAGNOSTIC2: TMenuItem;
    ETIOLOGIA2: TMenuItem;
    CODIE2: TMenuItem;
    DATALESIO1: TMenuItem;
    CENTREPROCEDENT1: TMenuItem;
    MOTIU1: TMenuItem;
    ALERGIES1: TMenuItem;
    MEDICACIOHABITUAL1: TMenuItem;
    METGE2: TMenuItem;
    TITOLMETGE1: TMenuItem;
    LESIONS1: TMenuItem;
    TabImpressions: TTabSheet;
    HYEdit1: THYEdit;
    HYEdit2: THYEdit;
    HYEdit3: THYEdit;
    HYEdit4: THYEdit;
    HYEdit5: THYEdit;
    HYEdit6: THYEdit;
    HYEdit11: THYEdit;
    HYEdit10: THYEdit;
    IDENTIFICACIO2: TMenuItem;
    TabInfProves: TTabSheet;
    PageControl1: TPageControl;
    TabSheet8: TTabSheet;
    MemoCas3: TDBRichEdit;
    PageControl6: TPageControl;
    TabSheet9: TTabSheet;
    MemoCat3: TDBRichEdit;
    Splitter3: TSplitter;
    Macros3: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    METGE3: TMenuItem;
    TITOLMETGE2: TMenuItem;
    GroupBox1: TGroupBox;
    HYEdit13: THYEdit;
    HYEdit14: THYEdit;
    HYEdit15: THYEdit;
    HYEdit16: THYEdit;
    EditDecimals: THYTextEdit;
    bDecimals: TSpeedButton;
    GroupBox2: TGroupBox;
    Ed_Configura_Adresa: THYEdit;
    Ed_Configura_Ciutat: THYEdit;
    Ed_Configura_Adresa2: THYEdit;
    Ed_Configura_SerieRappels: THYEdit;
    Ed_Configura_Iva1: THYEdit;
    Ed_Configura_Iva2: THYEdit;
    Ed_Configura_Iva3: THYEdit;
    Ed_Configura_C_UP: THYEdit;
    Ed_Configura_N_Hospital: THYEdit;
    Ed_Configura_NIF: THYEdit;
    Ed_Configura_CCGuttmann: THYEdit;
    Ed_Configura_Resp_Factu: THYEdit;
    Ed_Configura_Resp_Farma: THYEdit;
    Ed_Configura_N_RegioSanitaria: THYEdit;
    Ed_Configura_AdresaRegioSanitaria: THYEdit;
    Ed_Configura_OrdreInternet: THYEdit;
    Eti_Configura_Series_C_Periode: THYLabel;
    Eti_Configura_Series_Contador: THYLabel;
    HYEdit18: THYEdit;
    TabOM: TTabSheet;
    HYArea1: THYArea;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Ed_tConfiguracio_IvaMedicaments: THYEdit;
    Ed_tConfiguracio_IvaParafarmacia: THYEdit;
    Ed_tConfiguracio_IvaSG: THYEdit;
    Ed_tConfiguracio_C_EntradesProv: THYEdit;
    Ed_tConfiguracio_C_DevolucionsProv: THYEdit;
    Ed_tConfiguracio_C_EntradesBoni: THYEdit;
    Ed_tConfiguracio_C_SortidaCentre: THYEdit;
    Ed_tConfiguracio_C_DevolucioCentre: THYEdit;
    Ed_tConfiguracio_C_DevolucioProvBoni: THYEdit;
    Ed_tConfiguracio_C_Altres2: THYEdit;
    Ed_tConfiguracio_DiesSeguretatStock: THYEdit;
    Ed_tConfiguracio_DiesReposicioStock: THYEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    HYMemo1: THYMemo;
    StaticText4: TStaticText;
    Ed_Configura_TancamentContable: THYEdit;
    TRACTE1: TMenuItem;
    HYEdit42: THYEdit;
    HYEdit23: THYEdit;
    Macros4: TPopupMenu;
    MenuItem14: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    METGE4: TMenuItem;
    TOLMETGE1: TMenuItem;
    NUMCOL1: TMenuItem;
    HYEdit26: THYEdit;
    TabInfSol: TTabSheet;
    PageControl7: TPageControl;
    TabSheet10: TTabSheet;
    memocat4: TDBRichEdit;
    Splitter4: TSplitter;
    PageControl8: TPageControl;
    TabSheet11: TTabSheet;
    memocas4: TDBRichEdit;
    ScrollBox1: TScrollBox;
    GroupBox3: TGroupBox;
    HYEdit41: THYEdit;
    HYEdit38: THYEdit;
    HYEdit39: THYEdit;
    HYEdit40: THYEdit;
    HYEdit43: THYEdit;
    TabInfAltaRevi: TTabSheet;
    PageControl9: TPageControl;
    TabSheet13: TTabSheet;
    DBRichEdit1: TDBRichEdit;
    Splitter5: TSplitter;
    PageControl10: TPageControl;
    TabSheet14: TTabSheet;
    DBRichEdit2: TDBRichEdit;
    bDirectoris: THYSqlBrowse;
    bDirectoris_Nom: TStringField;
    bDirectoris_Ruta1: TStringField;
    bDirectoris_Ruta2: TStringField;
    bDirectoris_Ruta: TStringField;
    dsDirectoris: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    HYEdit7: THYEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    HYEdit8: THYEdit;
    Panel2: TPanel;
    HYGrid1: THYGrid;
    TabBloquejos: TTabSheet;
    bBloqAcc: THYSqlBrowse;
    bBloqAcc_Que: TStringField;
    bBloqAcc_C_Historia: TIntegerField;
    bBloqAcc_NomID: TStringField;
    bBloqAcc_ID: TIntegerField;
    bBloqAcc_Data: TDateTimeField;
    bBloqAcc_C_Usuari: TStringField;
    bBloqAcc_NomPC: TStringField;
    dsBloqAcc: TDataSource;
    Panel3: TPanel;
    HYBarra2: THYBarra;
    HYGrid2: THYGrid;
    Panel4: TPanel;
    Label3: TLabel;
    bBloqAcc_C0_0: TStringField;
    bBloqAcc_C0_1: TStringField;
    HYBarra3: THYBarra;
    Panel5: TPanel;
    HYGrid3: THYGrid;
    HYBarra4: THYBarra;
    bHorarisFunc: THYSqlBrowse;
    dsHorarisFunc: TDataSource;
    bHorarisFunc_ID: TIntegerField;
    bHorarisFunc_Dia: TSmallintField;
    bHorarisFunc_Hora_i: TSmallintField;
    bHorarisFunc_Min_i: TSmallintField;
    bHorarisFunc_Hora_f: TSmallintField;
    bHorarisFunc_Min_f: TSmallintField;
    SpeedButton2: TSpeedButton;
    edFunc: THYTextEdit;
    cFuncionsFH: THYConsulta;
    bHorarisFunc_Funcio: TSmallintField;
    bHorarisFunc_C0_0: TSmallintField;
    bHorarisFunc_C0_1: TStringField;
    bHorarisFunc_C0_2: TSmallintField;
    bHorarisFunc_C0_3: TStringField;
    bHorarisFunc_C0_4: TStringField;
    bHorarisFunc_C1_0: TSmallintField;
    bHorarisFunc_C1_1: TStringField;
    bHorarisFunc_C1_2: TSmallintField;
    bHorarisFunc_C1_3: TStringField;
    bHorarisFunc_C1_4: TStringField;
    TabSheet1: TTabSheet;
    dsNHC: TDataSource;
    qNHC: TQuery;
    Panel22: TPanel;
    gNHC: TDBGrid;
    Panel23: TPanel;
    bNou: TButton;
    Panel25: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel24: TPanel;
    Panel21: TPanel;
    bProcessaLlista: TButton;
    bCarregaCSV: TButton;
    NomFitxer: TFilenameEdit;
    TabAvisosCorreu: TTabSheet;
    bAvisos: THYSqlBrowse;
    bAvisos_ID: TIntegerField;
    bAvisos_Avis: TStringField;
    dsAvisos: TDataSource;
    bAvisosDestinataris: THYSqlBrowse;
    bAvisosDestinataris_ID: TIntegerField;
    bAvisosDestinataris_ID_Avis: TIntegerField;
    bAvisosDestinataris_Correu_E: TStringField;
    bAvisosDestinataris_Data_inici: TDateTimeField;
    bAvisosDestinataris_Data_fi: TDateTimeField;
    bAvisosDestinataris_C0_0: TIntegerField;
    bAvisosDestinataris_C0_1: TStringField;
    bAvisosDestinataris_C1_0: TStringField;
    bAvisosDestinataris_C1_1: TStringField;
    bAvisosDestinataris_C1_2: TStringField;
    bAvisosDestinataris_C1_3: TStringField;
    bAvisosDestinataris_C1_4: TStringField;
    bAvisosDestinataris_C1_5: TStringField;
    bAvisosDestinataris_C1_6: TStringField;
    bAvisosDestinataris_C1_7: TIntegerField;
    bAvisosDestinataris_C1_8: TStringField;
    bAvisosDestinataris_C1_9: TStringField;
    bAvisosDestinataris_C1_10: TSmallintField;
    bAvisosDestinataris_C1_11: TStringField;
    bAvisosDestinataris_C1_12: TStringField;
    bAvisosDestinataris_C1_13: TStringField;
    bAvisosDestinataris_C1_14: TStringField;
    bAvisosDestinataris_C1_15: TStringField;
    dsAvisosDestinataris: TDataSource;
    Panel6: TPanel;
    HYBarra5: THYBarra;
    HYGrid4: THYGrid;
    Splitter6: TSplitter;
    HYGrid5: THYGrid;
    HYBarra6: THYBarra;
    ExcelCarregaSL: TJvCsvDataSet;
    gExcelCarrega: THYGrid;
    dsExcelCarregaSL: TDataSource;
    Ed_Config_CaducitatInfermeria: THYEdit;
    Ed_Config_CaducitatOM: THYEdit;
    Ed_Config_CaducitatOMcronica: THYEdit;
    Config_Clau: TIntegerField;
    Config_Minuts: TIntegerField;
    Config_PathEpi: TStringField;
    Config_PathFili: TStringField;
    Config_PathGestio: TStringField;
    Config_PathCurs: TStringField;
    Config_PathAnal: TStringField;
    Config_PathFarma: TStringField;
    Config_PathStocs: TStringField;
    Config_NegritaOn: TStringField;
    Config_NegritaOff: TStringField;
    Config_SubrrallayOn: TStringField;
    Config_SubrrallatOff: TStringField;
    Config_Grande: TStringField;
    Config_Normal: TStringField;
    Config_TexteRevi: TMemoField;
    Config_TextoRevi: TMemoField;
    Config_TexteInfAlta: TMemoField;
    Config_TextoInfAlta: TMemoField;
    Config_UnitatRed: TStringField;
    Config_InitPrint: TStringField;
    Config_LinPag: TIntegerField;
    Config_TexteProva: TMemoField;
    Config_TextoProva: TMemoField;
    Config_PathExe: TStringField;
    Config_MaxFinestres: TSmallintField;
    Config_MinutsAdmissions: TIntegerField;
    Config_MonedaCatCurt: TStringField;
    Config_MonedaEspCurt: TStringField;
    Config_MonedaCat: TStringField;
    Config_MonedaEsp: TStringField;
    Config_Adresa: TStringField;
    Config_Ciutat: TStringField;
    Config_Adresa2: TStringField;
    Config_SerieRappels: TStringField;
    Config_Iva1: TFloatField;
    Config_Iva2: TFloatField;
    Config_Iva3: TFloatField;
    Config_C_UP: TStringField;
    Config_N_Hospital: TStringField;
    Config_NIF: TStringField;
    Config_CCGuttmann: TStringField;
    Config_Resp_Factu: TStringField;
    Config_Resp_Farma: TStringField;
    Config_N_RegioSanitaria: TStringField;
    Config_AdresaRegioSanitaria: TStringField;
    Config_OrdreInternet: TSmallintField;
    Config_SCS_Nif: TStringField;
    Config_DataPrevisio: TDateTimeField;
    Config_IvaMedicaments: TFloatField;
    Config_IvaParafarmacia: TFloatField;
    Config_IvaSG: TFloatField;
    Config_C_EntradesProv: TStringField;
    Config_C_DevolucionsProv: TStringField;
    Config_C_EntradesBoni: TStringField;
    Config_C_SortidaCentre: TStringField;
    Config_C_DevolucioCentre: TStringField;
    Config_C_DevolucioProvBoni: TStringField;
    Config_C_Altres2: TStringField;
    Config_C_TancamentMes: TStringField;
    Config_C_RegularitzacioTancament: TStringField;
    Config_DiesSeguretatStock: TIntegerField;
    Config_DiesReposicioStock: TIntegerField;
    Config_TexteAlbarans: TMemoField;
    Config_TexteAlbarans2: TMemoField;
    Config_TancamentContable: TDateTimeField;
    Config_ComptadorComandes: TIntegerField;
    Config_AnyEnCurs: TIntegerField;
    Config_CaducitatOM: TSmallintField;
    Config_CaducitatInfermeria: TSmallintField;
    Config_HoresValidaCurs: TSmallintField;
    Config_CCRegularitzacio: TIntegerField;
    Config_CCStocks: TIntegerField;
    Config_CCMedicaments: TIntegerField;
    Config_CCFarma: TIntegerField;
    Config_CCExistencies: TIntegerField;
    Config_MetgeInterfero: TStringField;
    Config_CompteDifStocks: TStringField;
    Config_CompteFarmacia: TStringField;
    Config_AnalitRMP: TMemoField;
    Config_TelefonFarmacia: TStringField;
    Config_AnalitRMPH50: TMemoField;
    Config_FaxFarmacia: TStringField;
    Config_IvaExempt: TStringField;
    Config_IvaExempt2: TStringField;
    Config_DuracioDisp: TSmallintField;
    Config_QuantesAnotacions: TIntegerField;
    Config_AnalitRMPH50_2: TMemoField;
    Config_AnaliRMP_2: TMemoField;
    Config_CaducitatEscalesI: TIntegerField;
    Config_DiesEscalesA: TIntegerField;
    Config_CaducitatEscalesA: TIntegerField;
    Config_CaducitatEscalesR: TIntegerField;
    Config_AnalitRMP_LM: TMemoField;
    Config_AnalitRMP50_LM: TMemoField;
    Config_NUMIRFPAI: TSmallintField;
    Config_TexteInfSol: TMemoField;
    Config_TextoInfSol: TMemoField;
    Config_LinPerPag_GuiaFarma: TIntegerField;
    Config_C_UP_SS: TStringField;
    Config_SS_NIF: TStringField;
    Config_CCGuttPades: TStringField;
    Config_ADRESA_SS: TStringField;
    Config_N_FUNDACIO: TStringField;
    Config_N_RS_SS: TStringField;
    Config_ADRESARS_SS: TStringField;
    Config_CIUTAT_SS: TStringField;
    Config_SERIEPADES: TStringField;
    Config_PPAGUTS: TStringField;
    Config_PPMHDA: TStringField;
    Config_PPMINCON: TStringField;
    Config_PPMORTO: TStringField;
    Config_PPPADES: TStringField;
    Config_ConveniUnespa: TIntegerField;
    Config_TextInfAltaRevi: TMemoField;
    Config_TextoInfAltaRevi: TMemoField;
    Config_SERIENPC: TStringField;
    Config_RCA_CLAU: TStringField;
    Config_VERSIO_CIM: TStringField;
    Config_DATA_FUSIO: TDateTimeField;
    Config_DATA_ESTOCS_HL7: TDateTimeField;
    Config_NUM_DCMIH: TIntegerField;
    Config_DataConsolidatFins: TDateTimeField;
    Config_CaducitatOMcronica: TIntegerField;
    Config_DiesAvisOMCaduca: TSmallintField;
    Config_MaxPassisCdS: TSmallintField;
    Config_VAC_COVID_MESOS: TSmallintField;
    Config_VAC_PFIZER2_DIES: TSmallintField;
    Config_VAC_MODERNA2_DIES: TSmallintField;
    Config_DIESPRESTARECENTS: TIntegerField;
    ConfigDATATANCAMENTOM: TDateTimeField;
    ConfigHORA_SERVEI: TSmallintField;
    ConfigHCE_SSO_URL: TStringField;
    Config_CADUCITATESCALESA1004: TIntegerField;
    Config_C0_0: TSmallintField;
    Config_C0_1: TStringField;
    Config_C0_2: TIntegerField;
    Config_C1_0: TStringField;
    Config_C1_1: TStringField;
    Config_C1_2: TStringField;
    Config_C1_3: TStringField;
    Config_C1_4: TStringField;
    Config_C1_5: TStringField;
    Config_C1_6: TStringField;
    Config_C1_7: TStringField;
    Config_C1_8: TStringField;
    Config_C1_9: TStringField;
    Config_C1_10: TStringField;
    Config_C1_11: TStringField;
    Config_C1_12: TStringField;
    Config_C1_13: TStringField;
    Config_C1_14: TStringField;
    Config_C1_15: TStringField;
    Config_C1_16: TStringField;
    Config_C2_0: TStringField;
    Config_C2_1: TStringField;
    Config_C2_2: TStringField;
    Config_C2_3: TStringField;
    Config_C2_4: TStringField;
    Config_C2_5: TStringField;
    Config_C2_6: TStringField;
    Config_C2_7: TStringField;
    Config_C2_8: TStringField;
    Config_C2_9: TStringField;
    Config_C2_10: TStringField;
    Config_C2_11: TStringField;
    Config_C2_12: TStringField;
    Config_C2_13: TStringField;
    Config_C2_14: TStringField;
    Config_C2_15: TStringField;
    Config_C2_16: TStringField;
    Config_C3_0: TStringField;
    Config_C3_1: TStringField;
    Config_C3_2: TStringField;
    Config_C3_3: TStringField;
    Config_C3_4: TStringField;
    Config_C3_5: TStringField;
    Config_C3_6: TStringField;
    Config_C3_7: TStringField;
    Config_C3_8: TStringField;
    Config_C3_9: TStringField;
    Config_C3_10: TStringField;
    Config_C3_11: TStringField;
    Config_C3_12: TStringField;
    Config_C3_13: TStringField;
    Config_C3_14: TStringField;
    Config_C3_15: TStringField;
    Config_C3_16: TStringField;
    Config_C4_0: TStringField;
    Config_C4_1: TStringField;
    Config_C4_2: TStringField;
    Config_C4_3: TStringField;
    Config_C4_4: TStringField;
    Config_C4_5: TStringField;
    Config_C4_6: TStringField;
    Config_C4_7: TStringField;
    Config_C4_8: TStringField;
    Config_C4_9: TStringField;
    Config_C4_10: TStringField;
    Config_C4_11: TStringField;
    Config_C4_12: TStringField;
    Config_C4_13: TStringField;
    Config_C4_14: TStringField;
    Config_C4_15: TStringField;
    Config_C4_16: TStringField;
    Config_C5_0: TStringField;
    Config_C5_1: TStringField;
    Config_C5_2: TStringField;
    Config_C5_3: TStringField;
    Config_C5_4: TStringField;
    Config_C5_5: TStringField;
    Config_C5_6: TStringField;
    Config_C5_7: TStringField;
    Config_C5_8: TStringField;
    Config_C5_9: TStringField;
    Config_C5_10: TStringField;
    Config_C5_11: TStringField;
    Config_C5_12: TStringField;
    Config_C5_13: TStringField;
    Config_C5_14: TStringField;
    Config_C5_15: TStringField;
    Config_C5_16: TStringField;
    Config_C6_0: TStringField;
    Config_C6_1: TStringField;
    Config_C6_2: TStringField;
    Config_C6_3: TStringField;
    Config_C6_4: TStringField;
    Config_C6_5: TStringField;
    Config_C6_6: TStringField;
    Config_C6_7: TStringField;
    Config_C6_8: TStringField;
    Config_C6_9: TStringField;
    Config_C6_10: TStringField;
    Config_C6_11: TStringField;
    Config_C6_12: TStringField;
    Config_C6_13: TStringField;
    Config_C6_14: TStringField;
    Config_C6_15: TStringField;
    Config_C6_16: TStringField;
    Config_C7_0: TStringField;
    Config_C7_1: TStringField;
    Config_C7_2: TStringField;
    Config_C7_3: TStringField;
    Config_C7_4: TStringField;
    Config_C7_5: TStringField;
    Config_C7_6: TStringField;
    Config_C7_7: TStringField;
    Config_C7_8: TStringField;
    Config_C7_9: TStringField;
    Config_C7_10: TStringField;
    Config_C7_11: TStringField;
    Config_C7_12: TStringField;
    Config_C7_13: TStringField;
    Config_C7_14: TStringField;
    Config_C7_15: TStringField;
    Config_C7_16: TStringField;
    Config_C8_0: TStringField;
    Config_C8_1: TStringField;
    Config_C8_2: TStringField;
    Config_C8_3: TStringField;
    Config_C8_4: TStringField;
    Config_C8_5: TStringField;
    Config_C8_6: TStringField;
    Config_C8_7: TStringField;
    Config_C8_8: TStringField;
    Config_C8_9: TStringField;
    Config_C8_10: TStringField;
    Config_C8_11: TStringField;
    Config_C8_12: TStringField;
    Config_C8_13: TStringField;
    Config_C8_14: TStringField;
    Config_C8_15: TStringField;
    Config_C8_16: TStringField;
    Config_C9_0: TStringField;
    Config_C9_1: TStringField;
    Config_C9_2: TStringField;
    Config_C9_3: TStringField;
    Config_C9_4: TStringField;
    Config_C9_5: TStringField;
    Config_C9_6: TStringField;
    Config_C9_7: TStringField;
    Config_C9_8: TStringField;
    Config_C9_9: TStringField;
    Config_C9_10: TStringField;
    Config_C9_11: TStringField;
    Config_C9_12: TStringField;
    Config_C9_13: TStringField;
    Config_C9_14: TStringField;
    Config_C9_15: TStringField;
    Config_C9_16: TStringField;
    Config_C10_0: TIntegerField;
    Config_C10_1: TStringField;
    Config_C10_2: TStringField;
    Config_C10_3: TStringField;
    Config_C10_4: TStringField;
    Config_C10_5: TStringField;
    Config_C10_6: TStringField;
    Config_C11_0: TIntegerField;
    Config_C11_1: TStringField;
    Config_C11_2: TStringField;
    Config_C11_3: TStringField;
    Config_C11_4: TStringField;
    Config_C11_5: TStringField;
    Config_C11_6: TStringField;
    Config_C12_0: TIntegerField;
    Config_C12_1: TStringField;
    Config_C12_2: TStringField;
    Config_C12_3: TStringField;
    Config_C12_4: TStringField;
    Config_C12_5: TStringField;
    Config_C12_6: TStringField;
    Config_C13_0: TStringField;
    Config_C13_1: TStringField;
    Config_C13_2: TStringField;
    Config_C13_3: TStringField;
    Config_C13_4: TStringField;
    Config_C13_5: TStringField;
    Config_C13_6: TStringField;
    Config_C13_7: TIntegerField;
    Config_C13_8: TStringField;
    Config_C13_9: TStringField;
    Config_C13_10: TSmallintField;
    Config_C13_11: TStringField;
    Config_C13_12: TStringField;
    Config_C13_13: TStringField;
    Config_C13_14: TStringField;
    Config_C13_15: TStringField;
    Config_C13_16: TIntegerField;
    Config_C13_17: TDateTimeField;
    Config_C14_0: TIntegerField;
    Config_C14_1: TStringField;
    Config_C14_2: TStringField;
    Config_C14_3: TStringField;
    Config_C14_4: TStringField;
    Config_C14_5: TStringField;
    Config_C14_6: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure InsertaMacro(Sender: TObject);
    procedure CanviarFont(Sender: TObject);
    procedure MemoCatMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EditDecimalsChange(Sender: TObject);
    procedure bDecimalsClick(Sender: TObject);
    procedure bBloqAccBeforeDelete(DataSet: TDataSet);
    procedure HYBarra2AlBorrar(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure HYTextEdit1AlConsultar(Sender: TObject);
    procedure cFuncionsFHAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);

    procedure bCarregaCSVClick(Sender: TObject);
    procedure bProcessaLlistaClick(Sender: TObject);
    procedure bNouClick(Sender: TObject);
    procedure gNHCDblClick(Sender: TObject);
    procedure gExcelCarregaAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
    procedure TabsChange(Sender: TObject);
    procedure ExcelCarregaSLAfterScroll(DataSet: TDataSet);
  private
    surt: Boolean;
    qMetge: TQuery;
    function  CreaNHC: Integer;
    function  FormatDate(Date: String): String;
    procedure CreaTractament(NHC: Integer);
    procedure ActualitzaNHC(NHC: Integer);
  public
    EMAIL: String;
  end;

var
  wFichaConfig: TwFichaConfig;

implementation

uses Data,Clipbrd, Funciones, Funcions, DataConfig, DataFactu, DataCurs, DataHCE;

{$R *.DFM}

procedure TwFichaConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TwFichaConfig.FormCreate(Sender: TObject);
begin
     Tabs.ActivePage := TabDir;
     Config.Open;
     EditDecimals.EditValue := IntToStr(GEN_ID(wData.GDB.DataBaseName, 'DECIMALSCALCUL',0));
     bDecimals.Enabled := False;
     bHorarisFunc.Open;
     bDirectoris.Open;
     bBloqAcc.Open;
end;

procedure TwFichaConfig.InsertaMacro(Sender: TObject);
var
   MiMemo: TDBRichEdit;
begin
     MiMemo := Nil;
     if ActiveControl is TDBRichEdit
     then MiMemo := ActiveControl as TDBRichEdit;

     if Assigned(MiMemo) then
     begin
          Clipboard.AsText := TMenuItem(Sender).Caption;
          MiMemo.SelLength:=0;
          MiMemo.PasteFromClipboard;
     end;
end;

procedure TwFichaConfig.CanviarFont(Sender: TObject);
var
   MiMemo: TDBRichEdit;
begin
     MiMemo := Nil;
     if ActiveControl is TDBRichEdit
     then MiMemo := ActiveControl as TDBRichEdit;
     if (Assigned(MiMemo)) and (Dialog.Execute) then
     begin
          Config.Edicion;
          MiMemo.SelAttributes.Assign(Dialog.Font);
     end;
end;

procedure TwFichaConfig.MemoCatMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if Sender is TDBRichEdit then
     if  Not (Sender as TDBRichEdit).Focused
     then (Sender as TDBRichEdit).SetFocus;
end;

procedure TwFichaConfig.EditDecimalsChange(Sender: TObject);
begin
  bDecimals.Enabled := True;
end;

procedure TwFichaConfig.bDecimalsClick(Sender: TObject);
var
  ID: Integer;
begin
   if EsPle(EditDecimals.EditValue) then
   begin
     ID := Gen_ID(wData.Gdb.DataBaseName, 'DECIMALSCALCUL', 0);
     ID := Gen_ID(wData.Gdb.DataBaseName, 'DECIMALSCALCUL', ((ID * -1) + StrToInt(EditDecimals.EditValue)));
     EditDecimals.EditValue := IntToStr(ID);
     Aviso(Format('El valor dels Decimals ara es %s',[EditDecimals.EditValue]) );
   end;
end;


procedure TwFichaConfig.HYBarra2AlBorrar(Sender: TObject);
begin
    if (Pos('OM', bBloqAcc.FieldByName('QUE').AsString) > 0) then
    begin
       FerError('El desbloqueig d''Ordres Mèdiques es fa des de les opcions:  ' + NLine + NLine +
                'Bàsics - Ordres Mèdiques - Desbloqueig i recuperació OM  ' + NLine +
                'o bé ' + NLine +
                'Bàsics - Ordres Mèdiques - Desbloqueig Administració  ', False);
       Abort;
    end
    else bBloqAcc.Delete;
end;


procedure TwFichaConfig.bBloqAccBeforeDelete(DataSet: TDataSet);
begin
    if (Pos('OM', DataSet.FieldByName('QUE').AsString) > 0) then Abort;
end;

procedure TwFichaConfig.SpeedButton2Click(Sender: TObject);
var
  datahora: TDateTime;
begin
    datahora := Calendario(DateServer, Catala, True, 'Dia i hora');

    if ComprovarForaHores(edFunc.Tag, datahora) then ShowMessage('FORA HORES!')
                                                else ShowMessage('HORARI LABORAL');
end;

procedure TwFichaConfig.HYTextEdit1AlConsultar(Sender: TObject);
begin
    cFuncionsFH.ExecuteModal;
end;

procedure TwFichaConfig.cFuncionsFHAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    edFunc.Tag := Datos.FieldByName('C_Codi').AsInteger;
    edFunc.EditValue := Datos.FieldByName('N_Codi').AsString;
end;



// Generem prestacions "0000" a partir d'un excel. Creem NHC si no en té

// Obrim excel en format CSV
procedure TwFichaConfig.bCarregaCSVClick(Sender: TObject);
begin
    qNHC.Close;
    ExcelCarregaSL.Close;
    ExcelCarregaSL.FileName := NomFitxer.FileName;
    ExcelCarregaSL.Open;
    qNHC.Open;
end;


// Comencem el procés
procedure TwFichaConfig.bProcessaLlistaClick(Sender: TObject);
var
  NHC: Integer;
begin
    surt := False;
    ExcelCarregaSL.First;
    while not ExcelCarregaSL.Eof do
    begin
        // Ens saltem els ja traspassats i els que ja tenien prestació 0000 activa
        if (ExcelCarregaSL.FieldByName('TRASPASSAT').AsString = 'T')
        or (ExcelCarregaSL.FieldByName('TRASPASSAT').AsString = 'X')
        then begin
            ExcelCarregaSL.Next;
            Continue;
        end;

        NHC := 0;

        // Si té NHC (l'hem identificat a Filiació amb CIP/DNI coincident en el pas anterior), generem directament el tractament
        if IntegerOK(ExcelCarregaSL.FieldByName('NHC').AsString, NHC) and (NHC > 0) then
        begin
            ActualitzaNHC(NHC);
            CreaTractament(NHC);
        end

        // Si trobem algun pacient filiat amb el mateix CIP o DNI, marquem el registre pendent de confirmar
        else if (qNHC.FieldByName('NUM_HIST').AsInteger > 0) then
        begin
            ExcelCarregaSL.Edit;
            ExcelCarregaSL.FieldByName('TRASPASSAT').AsString := 'P';
            ExcelCarregaSL.Post;
        end

        // altrament, generem NHC i tractament
        else CreaTractament(CreaNHC);

        if surt then Break;

        ExcelCarregaSL.Next;
    end;
end;


procedure TwFichaConfig.bNouClick(Sender: TObject);
begin
   CreaTractament(CreaNHC);
end;


function TwFichaConfig.FormatDate(Date: String): String;
var
 d,m,y,separator: String;
begin
  // entra DD.MM.YYYY i surt YYYY.MM.DD
  separator := '-';
  d := CopyLeft(Date,2);
  m := Copy(Date,4,2);
  y := CopyRight(Date,4);
  Result := y + separator + m + separator + d;
end;

function TwFichaConfig.CreaNHC: Integer;
var
  tDoc: Integer;
  resp: THttpResponse;
begin
    if nHCE_ON then
    begin
       wData.UsuariActiu.Codi := 'P06';

       resp := wDataHCE.CridaRestNovaHCESalutLaboral(TreuAccents(ExcelCarregaSL.FieldByName('NOM'    ).AsString),
                                                     TreuAccents(ExcelCarregaSL.FieldByName('COGNOM1').AsString),
                                                     TreuAccents(ExcelCarregaSL.FieldByName('COGNOM2').AsString),
                                                     ExcelCarregaSL.FieldByName('SEXE'     ).AsString,
                                                     ExcelCarregaSL.FieldByName('T_DOC'    ).AsString,
                                                     ExcelCarregaSL.FieldByName('NUM_DOC'  ).AsString,
                                                     ExcelCarregaSL.FieldByName('CIP'      ).AsString,
                                                     FormatDate(ExcelCarregaSL.FieldByName('DATA_NAIX').AsString),
                                                     EMAIL);
       wData.UsuariActiu.Codi := '';
       if resp.Error = '' then Result := StrToInt(resp.Ok)
       else FerError(resp.Error,True);
    end
    else begin
        TRY
          // Generem filiació amb un nou NHC
          Result := GutGen_ID('CONTANUMHIST', 1);

          // amb les dades proporcionades a l'excel
          GutExecute('insert into FILIACIO (NUM_HIST, NOMBRE, APELLIDO1, APELLIDO2, SEXO, FECHA_NAC, TSI, T_DOC, DNI, PAIS) ' +
                     'values (%d, "%s", "%s", "%s", "%s", "%s", "%s", "%s", "%s", "%s")',
                     [Result,
                      TreuAccents(ExcelCarregaSL.FieldByName('NOM'      ).AsString),
                      TreuAccents(ExcelCarregaSL.FieldByName('COGNOM1'  ).AsString),
                      TreuAccents(ExcelCarregaSL.FieldByName('COGNOM2'  ).AsString),
                      ExcelCarregaSL.FieldByName('SEXE'     ).AsString,
                      ExcelCarregaSL.FieldByName('DATA_NAIX').AsString,
                      ExcelCarregaSL.FieldByName('CIP'      ).AsString,
                      ExcelCarregaSL.FieldByName('T_DOC'    ).AsString,
                      ExcelCarregaSL.FieldByName('NUM_DOC'  ).AsString,
                      ExcelCarregaSL.FieldByName('PAIS'     ).AsString],
                     False);                               // encara no fem commit, per si peta la inserció del tractament

        EXCEPT
          on e: Exception do
          begin
              FerError('Error en crear el registre a FILIACIO. HAUREU DE REUTILITZAR L''NHC %d ' + NLine + NLine + e.Message, [Result]);
              Result := -1;
              surt := True;
          end;
        END;
    end;

    TRY if   ExcelCarregaSL.FieldByName('T_DOC').AsString = 'D' then tDoc := 1
                                                                else tDoc := 0;

        qMetge := TQuery.Create(Application);
        qMetge.DatabaseName := wData.Gdb.DatabaseName;
        qMetge.SQL.Text := Format('SELECT CODI, EMAIL, NHC FROM METGES '+
                                  'WHERE ((NOMBRE = "%s" AND COGNOM1 = "%s" AND COGNOM = "%s") OR '+
                                  '       (T_DOC=%d AND DNI="%s")                              OR '+
                                  '       (UPPER(EMAIL)=UPPER("%s"))                             '+
                                  '      )',
                                  [TreuAccents(ExcelCarregaSL.FieldByName('NOM'      ).AsString),
                                   TreuAccents(ExcelCarregaSL.FieldByName('COGNOM1'  ).AsString),
                                   TreuAccents(ExcelCarregaSL.FieldByName('COGNOM2'  ).AsString),
                                   tDoc,
                                   ExcelCarregaSL.FieldByName('NUM_DOC').AsString,
                                   EMAIL]);
        qMetge.Open;

        if (not qMetge.FieldByName('CODI').IsNull) and (qMetge.FieldByName('CODI').AsString <> '')
        then GutExecute('update METGES set NHC = %d WHERE CODI = "%s" AND NHC is null', [Result, qMetge.FieldByName('CODI').AsString], false);

    EXCEPT
      on e: Exception do
      begin
          FerError('Error en actualitzar el NHC %d a METGES' + NLine + NLine + e.Message, [Result]);
          Result := -1;
          surt := True;
      end;
    END;

    // Bloquegem parcialment la història per salut laboral (no serveix fer-ho directament a l'insert perquè hi ha un trigger que el posa a NULL)
    // Bloquegem parcialment els familiars (noves HCE) i hi donem accés únicament als ususaris autoritzats
    TRY
      if ExcelCarregaSL.FieldByName('NUM_DOC').AsString = 'I'
      then GutExecute('update FILIACIO set BLOQUEIG = "L" where NUM_HIST = %d', [Result], False)
      else begin
          GutExecute('update FILIACIO set BLOQUEIG = "P" where NUM_HIST = %d', [Result], False);
          GutExecute('insert into BLOQUEJOS (C_HISTORIA, C_USUARI) ' +
                     'select %d, C_USUARI from DRETSMETGES where C_DRET = "M262"',
                     [Result], False);
      end;
    EXCEPT
      on e: Exception do
      begin
          FerError('Error en actualitzar el bloqueig a FILIACIO NHC %d ' + NLine + NLine + e.Message, [Result]);
          Result := -1;
          surt := True;
      end;
    END;
end;


procedure TwFichaConfig.CreaTractament(NHC: Integer);
var
  c_prestacio, c_coord, data_alta: String;
  c_motiu: Integer;
begin
    if (NHC <= 0) then Exit;

    // GLPI 23496 - canvi de criteris: si te email @guttmann.com, crear 0000 si no en te cap d'activa, altrament crear 0001 si no en te cap d'activa
    // GLPI 36028 - canvi de criteris: en funció del valor de la nova columna TIPUS_PERSONA:
    //              R resident                             0001
    //              E (professional) extern                0000 (neteja, ...)
    //              F familiar (de pacient o professional) 0001
    //              I (professional) intern                0000

    if (ExcelCarregaSL.FieldByName('TIPUS_PERSONA').AsString = 'E')
    or (ExcelCarregaSL.FieldByName('TIPUS_PERSONA').AsString = 'I') then
    begin
        c_prestacio := '0000';
        c_coord     := 'P06';
        data_alta   := 'NULL';
        c_motiu     := 31;
    end
    else begin
        c_prestacio := '0001';
        c_coord     := 'I36';
        data_alta   := '"TODAY"';
        c_motiu     := 0;
    end;

    // Comprovem que no tingui ja una prestació de salut laboral activa
    if (0 < GutSelect('select COUNT(*) from TRACTAMENTS ' +
                      'where C_HISTORIA = %d ' +
                      'and C_PRESTACIO = "%s" ' +
                      'and (DATA_ALTA is NULL or DATA_ALTA >= "TODAY")',
                      [NHC, c_prestacio],
                      False))
    then begin
        ExcelCarregaSL.Edit;
        ExcelCarregaSL.FieldByName('TRASPASSAT').AsString := 'X';
        ExcelCarregaSL.Post;
        Exit;
    end;

    TRY
      // Generem tractament
      GutExecute('insert into TRACTAMENTS (C_TRACTAMENT, C_HISTORIA, C_PRESTACIO, C_COORDINADOR, DATA_INGRES, DATA_ALTA, C_MOTIU, C_CENTREFAC, C_CLIENT, C_DELEGACIO) ' +
                 'values (%d, %d, "%s", "%s", "TODAY", %s, %d, "04", "UP", "786")',
                 [GutGen_ID('CONTATRACTAMENT', 1), NHC, c_prestacio, c_coord, data_alta, c_motiu],
                 True);

    EXCEPT
      on e: Exception
      do begin
          FerError('Error en crear el registre a TRACTAMENTS. REUTILITZAR NHC %d ' + NLine + NLine + e.Message, [NHC]);
          wData.IBTransGutt.RollbackRetaining;
          surt := True;
      end;
    END;

    if surt then Exit;

    // Marquem el registre com a traspassat
    ExcelCarregaSL.Edit;
    ExcelCarregaSL.FieldByName('TRASPASSAT').AsString := 'T';
    ExcelCarregaSL.Post;
end;

procedure TwFichaConfig.ActualitzaNHC(NHC: Integer);
var
  tDoc: Integer;
  resp: THttpResponse;
begin
    TRY  if nHCE_ON then
         begin
             wData.UsuariActiu.Codi := 'P06';
             resp := wDataHCE.CridaRestUpdateHCESalutLaboral(IntToStr(NHC),
                                                             TreuAccents(ExcelCarregaSL.FieldByName('NOM'    ).AsString),
                                                             TreuAccents(ExcelCarregaSL.FieldByName('COGNOM1').AsString),
                                                             TreuAccents(ExcelCarregaSL.FieldByName('COGNOM2').AsString),
                                                             ExcelCarregaSL.FieldByName('SEXE'     ).AsString,
                                                             ExcelCarregaSL.FieldByName('T_DOC'    ).AsString,
                                                             ExcelCarregaSL.FieldByName('NUM_DOC'  ).AsString,
                                                             FormatDate(ExcelCarregaSL.FieldByName('DATA_DUE').AsString),
                                                             ExcelCarregaSL.FieldByName('PAIS_PASS').AsString,
                                                             ExcelCarregaSL.FieldByName('CIP'      ).AsString,
                                                             FormatDate(ExcelCarregaSL.FieldByName('DATA_NAIX').AsString),
                                                             EMAIL);
             if resp.Error = '' then ShowMessage('Resposta crida Update HCE: '+resp.Ok)
             else FerError(resp.Error,True);
         end
         else GutExecute('update FILIACIO set NOMBRE = "%s", APELLIDO1 = "%s", APELLIDO2 = "%s",    '+
                         '       FECHA_NAC = "%s", TSI = "%s", T_DOC = "%s", DNI ="%s", SEXO = "%s" '+
                         'WHERE NHC = %d ',
                         [TreuAccents(ExcelCarregaSL.FieldByName('NOM'    ).AsString),
                          TreuAccents(ExcelCarregaSL.FieldByName('COGNOM1').AsString),
                          TreuAccents(ExcelCarregaSL.FieldByName('COGNOM2').AsString),
                          FormatDate(ExcelCarregaSL.FieldByName('DATA_NAIX').AsString),
                          ExcelCarregaSL.FieldByName('CIP'      ).AsString,
                          ExcelCarregaSL.FieldByName('T_DOC'    ).AsString,
                          ExcelCarregaSL.FieldByName('NUM_DOC'  ).AsString,
                          ExcelCarregaSL.FieldByName('SEXE'     ).AsString,
                          NHC], false);

    EXCEPT
      on e: Exception do FerError(Format('Error en actualitzar dades de NHC %d a FILIACIO' + NLine + NLine + e.Message, [NHC]), True);
    END;
end;


procedure TwFichaConfig.gNHCDblClick(Sender: TObject);
begin
    if (ExcelCarregaSL.FieldByName('TRASPASSAT').AsString = 'P') then
    begin
        ExcelCarregaSL.Edit;
        ExcelCarregaSL.FieldByName('NHC').AsString := qNHC.FieldByName('NUM_HIST').AsString;
        ExcelCarregaSL.FieldByName('TRASPASSAT').AsString := '';
        ExcelCarregaSL.Post;
    end;
end;


procedure TwFichaConfig.gExcelCarregaAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                                       State: TGridDrawState; Datos: TDataSet);
begin

    ColorFont := clBlack;

    if      (Datos.FieldByName('TRASPASSAT').AsString = 'T') then ColorBrush := $00C5F5DA  // traspassats
    else if (Datos.FieldByName('TRASPASSAT').AsString = 'P') then ColorBrush := $00A6D2FF  // pendents de confirmar NHC o indicar que és nou
    else if (Datos.FieldByName('TRASPASSAT').AsString = 'X') then ColorBrush := $00FFECC6  // no procedeix (ja tenia prestació de salut laboral activa)
                                                             else ColorBrush := clWhite;
    
    if (gdSelected in State) then
    begin
        ColorBrush := clGray;
        ColorFont := clWhite;
    end;
end;

procedure TwFichaConfig.TabsChange(Sender: TObject);
begin
    if tabs.ActivePage = TabAvisosCorreu then
    begin
        bAvisos.Abierta := True;
        bAvisosDestinataris.Abierta := True;
    end;
end;

procedure TwFichaConfig.ExcelCarregaSLAfterScroll(DataSet: TDataSet);
begin
  if      Trim(DataSet.FieldByName('TIPUS_PERSONA').AsString) = 'R' then EMAIL := DataSet.FieldByName('USUARI_AD').AsString+'@fake.com'
  else if Trim(DataSet.FieldByName('TIPUS_PERSONA').AsString) = 'I' then EMAIL := DataSet.FieldByName('USUARI_AD').AsString+'@guttmann.com'
                                                                    else EMAIL := '';
end;

end.






