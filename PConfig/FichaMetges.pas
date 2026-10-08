unit FichaMetges;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, HYEdit, HYLabel, HYPanels, HYStatus, Grids, DBGrids,
  HYGrids, ExtCtrls, HYSql, Db, DBTables, Buttons, ComCtrls, HYDialogConsulta,
  IBCustomDataSet, IBQuery, JvDBImage, JclMapi,
  QRCtrls, QuickRpt, Word_TLB, Variants, kbmMemTable, jpeg, ExtDlgs, Math;

const
  destinataris  = 'Recursos Humans, Relacions Públiques, Amics i Informàtica';

type
  TwFichaMetges = class(TForm)
    Metge: THYSqlBrowse;
    dsMetge: TDataSource;
    HYBarra1: THYBarra;
    Drets: THYSqlBrowse;
    dsDret: TDataSource;
    Drets_C_Dret: TStringField;
    Drets_C_Usuari: TStringField;
    Titol: THYSqlBrowse;
    dsTitol: TDataSource;
    Titol_C_Usuari: TStringField;
    Titol_Titol: TStringField;
    Titol_Titulo: TStringField;
    Tabs: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet6: TTabSheet;
    HYArea1: THYArea;
    Eti_Metge_Grup_Descripcio: THYLabel;
    Eti_Metge_Especial_Descripcio: THYLabel;
    DBText1: TDBText;
    Ed_Metge_Metge: THYEdit ;
    Ed_Metge_Cognoms: THYEdit;
    Ed_Metge_Tracte: THYEdit;
    Ed_Metge_C_Grup: THYEdit;
    Ed_Metge_C_Especial: THYEdit;
    Ed_Metge_C_Usuari: THYEdit;
    HYBarra2: THYBarra;
    HYBarra3: THYBarra;
    HYGrid1: THYGrid;
    HYGrid2: THYGrid;
    Check_Metge_EsUserExtra: THYCheck;
    Extra: THYSqlBrowse;
    Extra_Codi: TStringField;
    Extra_C_Extra: TStringField;
    Extra_Metge: TStringField;
    Extra_Cognom: TStringField;
    Extra_Nom: TStringField;
    Extra_DigCon: TStringField;
    Extra_Grup: TStringField;
    Extra_Cespe: TStringField;
    Extra_Baixa: TStringField;
    Extra_UltimCanviClau: TDateTimeField;
    Extra_HInhabilitat: TDateTimeField;
    Extra_AInhabilitat: TIntegerField;
    PanelExtra: TPanel;
    dsExtra: TDataSource;
    HYGrid3: THYGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabSheet1: TTabSheet;
    HYArea4: THYArea;
    HYLabel3: THYLabel;
    HYLabel4: THYLabel;
    HYLabel5: THYLabel;
    bHabilita: TSpeedButton;
    HYEdit13: THYEdit;
    HYEdit15: THYEdit;
    HYEdit16: THYEdit;
    HYEdit17: THYEdit;
    Ed_Metge_NC: THYEdit;
    Panel1: TPanel;
    HYArea3: THYArea;
    Eti_Extra_Grup_Descripcio: THYLabel;
    Eti_Extra_Especial_Descripcio: THYLabel;
    Eti_Extra_Acces_Descripcio: THYLabel;
    Ed_Extra_C_Extra: THYEdit;
    Ed_Extra_Metge: THYEdit;
    Ed_Extra_Cognom: THYEdit;
    Ed_Extra_Grup: THYEdit;
    Ed_Extra_Cespe: THYEdit;
    Ed_Extra_Baixa: THYEdit;
    Ed_Extra_UltimCanviClau: THYEdit;
    Ed_Extra_HInhabilitat: THYEdit;
    Ed_Extra_AInhabilitat: THYEdit;
    HYBarra4: THYBarra;
    Ed_Extra_Codi: THYEdit;
    Eti_Extra_Acces_C_Placa: THYLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    beHabilita: TSpeedButton;
    Metge_Codi: TStringField;
    Metge_Metge: TStringField;
    Metge_Cognom: TStringField;
    Metge_NC: TStringField;
    Metge_Nom: TStringField;
    Metge_Tracte: TStringField;
    Metge_DigCon: TStringField;
    Metge_C_Grup: TStringField;
    Metge_Horari: TStringField;
    Metge_Dia1: TStringField;
    Metge_Dia2: TStringField;
    Metge_Planta: TStringField;
    Metge_Baixa: TStringField;
    Metge_UltimCanviClau: TDateTimeField;
    Metge_HInhabilitat: TDateTimeField;
    Metge_AInhabilitat: TIntegerField;
    Metge_EsUserExtra: TStringField;
    MetgeLabelBaixa: TStringField;
    Metge_C_Especial: TStringField;
    tsPrestacions: TTabSheet;
    MetgePresta: THYSqlBrowse;
    dsMetgePresta: TDataSource;
    MetgePresta_C_Prestacio: TStringField;
    MetgePresta_Codi: TStringField;
    pPrestaMetge: THYConsulta;
    BorraPresta: THYConsulta;
    Drets_C0_0: TStringField;
    Drets_C0_1: TStringField;
    Titol_C_Unitat: TSmallintField;
    Titol_C0_0: TSmallintField;
    Titol_C0_1: TStringField;
    MetgePresta_MAX_VISITES: TIntegerField;
    MetgePresta_MINUTS: TIntegerField;
    Dilluns: THYSqlBrowse;
    dsDilluns: TDataSource;
    Dilluns_C_Metge: TStringField;
    Dilluns_DIA: TIntegerField;
    tsHorarios: TTabSheet;
    Dimarts: THYSqlBrowse;
    Dimarts_C_Metge: TStringField;
    Dimarts_DIA: TIntegerField;
    dsDimarts: TDataSource;
    Dimecres: THYSqlBrowse;
    Dimecres_C_Metge: TStringField;
    Dimecres_DIA: TIntegerField;
    dsDimecres: TDataSource;
    Dijous: THYSqlBrowse;
    Dijous_C_Metge: TStringField;
    Dijous_DIA: TIntegerField;
    dsDijous: TDataSource;
    Divendres: THYSqlBrowse;
    Divendres_C_Metge: TStringField;
    Divendres_DIA: TIntegerField;
    dsDivendres: TDataSource;
    Panel2: TPanel;
    Dilluns_HDESDE: TIntegerField;
    Dilluns_MDESDE: TIntegerField;
    Dilluns_HHASTA: TIntegerField;
    Dilluns_MHASTA: TIntegerField;
    Dimarts_MDESDE: TIntegerField;
    Dimarts_HHASTA: TIntegerField;
    Dimarts_MHASTA: TIntegerField;
    Dimecres_HDESDE: TIntegerField;
    Dimecres_MDESDE: TIntegerField;
    Dimecres_HHASTA: TIntegerField;
    Dimecres_MHASTA: TIntegerField;
    Dijous_HDESDE: TIntegerField;
    Dijous_MDESDE: TIntegerField;
    Dijous_HHASTA: TIntegerField;
    Dijous_MHASTA: TIntegerField;
    Divendres_HDESDE: TIntegerField;
    Divendres_MDESDE: TIntegerField;
    Divendres_HHASTA: TIntegerField;
    Divendres_MHASTA: TIntegerField;
    tsVacances: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Vacances: THYSqlBrowse;
    dsVacances: TDataSource;
    Vacances_C_Metge: TStringField;
    Vacances_Dia: TDateTimeField;
    Vacances_Comentario: TStringField;
    Panel5: TPanel;
    Panel6: TPanel;
    bInsertar: TSpeedButton;
    Comentari: TMemo;
    Filtro: THYEditFiltro;
    Panel7: TPanel;
    BarraDilluns: THYBarra;
    BarraDimarts: THYBarra;
    BarraDimecres: THYBarra;
    BarraDijous: THYBarra;
    BarraDivendres: THYBarra;
    Lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    HorarioPresta: THYSqlBrowse;
    HorarioPresta_C_Metge: TStringField;
    HorarioPresta_DIA: TIntegerField;
    HorarioPresta_HDESDE: TIntegerField;
    HorarioPresta_MDESDE: TIntegerField;
    HorarioPresta_HHASTA: TIntegerField;
    HorarioPresta_MHASTA: TIntegerField;
    dsHorarioPresta: TDataSource;
    HorarioPresta_C_Prestacio: TStringField;
    ConsultaPresta: THYConsulta;
    Panel8: TPanel;
    HYBarra5: THYBarra;
    HYGrid6: THYGrid;
    Panel9: TPanel;
    HYBarra7: THYBarra;
    HYGrid4: THYGrid;
    Splitter3: TSplitter;
    HYGrid7: THYGrid;
    HeaderControl1: THeaderControl;
    HeaderControl2: THeaderControl;
    HYGrid8: THYGrid;
    HeaderControl3: THeaderControl;
    HeaderControl4: THeaderControl;
    HYGrid9: THYGrid;
    HeaderControl5: THeaderControl;
    HeaderControl6: THeaderControl;
    HeaderControl7: THeaderControl;
    HeaderControl8: THeaderControl;
    HYGrid10: THYGrid;
    HeaderControl9: THeaderControl;
    HeaderControl10: THeaderControl;
    HYGrid11: THYGrid;
    HYEdit1: THYEdit;
    Metge_Nomsencer: TStringField;
    Ed_Metge_C_Responsable: THYEdit;
    Eti_Metge_Responsable_Metge: THYLabel;
    Metge_C_Supervisor: TStringField;
    Dilluns_Duracio: TIntegerField;
    Dimarts_HDESDE: TIntegerField;
    Dimarts_Duracio: TIntegerField;
    Dimecres_Duracio: TIntegerField;
    Dijous_Duracio: TIntegerField;
    Divendres_Duracio: TIntegerField;
    HorarioPresta_C0_0: TStringField;
    HorarioPresta_C0_1: TStringField;
    HorarioPresta_C1_0: TStringField;
    HorarioPresta_C1_1: TIntegerField;
    HorarioPresta_C1_2: TIntegerField;
    HorarioPresta_C1_3: TIntegerField;
    HorarioPresta_C1_4: TIntegerField;
    HorarioPresta_C1_5: TIntegerField;
    HorarioPresta_C1_6: TIntegerField;
    JvDBImage1: TJvDBImage;
    dsSignatures: TDataSource;
    SpeedButton5: TSpeedButton;
    qSignatures: TIBQuery;
    Metge_DNI: TStringField;
    Ed_Metge_DNI: THYEdit;
    Metge_T_DOC: TSmallintField;
    Metge_Cognom1: TStringField;
    Ed_Metge_T_DOC: THYEdit;
    Ed_Metge_Cognom1: THYEdit;
    Eti_Metge_t_doc_N_Codi: THYLabel;
    Metge_Perfil: TStringField;
    Metge_Extensio: TStringField;
    Ed_Metge_Perfil: THYEdit;
    Memo1: TMemo;
    Metge_Nombre: TStringField;
    Ed_Metge_Nombre: THYEdit;
    pPassword: TPanel;
    Ed_Metge_DigCon: THYEdit;
    Ed_Metge_Nom: THYEdit;
    bPass: TButton;
    Metge_EMAIL: TStringField;
    Ed_Metge_EMAIL: THYEdit;
    Metge_ClauPas: TStringField;
    Metge_ClauPas_1: TStringField;
    Metge_ClauPas_2: TStringField;
    Metge_E_Incorrectes: TSmallintField;
    Metge_E_Gracia: TSmallintField;
    Metge_EMAIL_CLAU: TStringField;
    Ed_Metge_ClauPas: THYEdit;
    Ed_Metge_ClauPas_1: THYEdit;
    Ed_Metge_ClauPas_2: THYEdit;
    Ed_Metge_E_Incorrectes: THYEdit;
    Ed_Metge_E_Gracia: THYEdit;
    Ed_Metge_EMAIL_CLAU: THYEdit;
    Eti_Extra_Acces_C_Login: THYLabel;
    Extra_ClauPas: TStringField;
    Extra_ClauPas_1: TStringField;
    Extra_ClauPas_2: TStringField;
    Extra_E_Incorrectes: TSmallintField;
    Extra_E_Gracia: TSmallintField;
    Ed_Extra_ClauPas: THYEdit;
    Ed_Extra_ClauPas_1: THYEdit;
    Ed_Extra_ClauPas_2: THYEdit;
    Ed_Extra_E_Incorrectes: THYEdit;
    Ed_Extra_E_Gracia: THYEdit;
    Button1: TButton;
    pClaus: TPanel;
    CP: TEdit;
    CP1: TEdit;
    CP2: TEdit;
    DBText2: TDBText;
    ExtraLabelBaixa: TStringField;
    peClaus: TPanel;
    CPe: TEdit;
    CP1e: TEdit;
    CP2e: TEdit;
    Button2: TButton;
    pePassword: TPanel;
    Ed_Extra_DigCon: THYEdit;
    Ed_Extra_Nom: THYEdit;
    SpeedButton2: TSpeedButton;
    bDocument: TButton;
    bCorreu: TButton;
    TabClauPas: TTabSheet;
    TabCorreu: TTabSheet;
    qrClau: TQuickRep;
    QRBand1: TQRBand;
    LbTitol: TQRLabel;
    QRBand2: TQRBand;
    lbClaudePas: TQRLabel;
    QRMemo1: TQRMemo;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRMemo2: TQRMemo;
    QRLabel4: TQRLabel;
    claupas: TQRLabel;
    ScrollBox1: TScrollBox;
    qrCorreu: TQuickRep;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRMemo3: TQRMemo;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRMemo4: TQRMemo;
    QRMemo5: TQRMemo;
    qMet: TQuery;
    qMetCODI: TStringField;
    qMetMETGE: TStringField;
    qMetNOMSENCER: TStringField;
    qMetCLAUPAS: TStringField;
    qMetEMAIL: TStringField;
    qMetEMAIL_CLAU: TStringField;
    QRMemo7: TQRMemo;
    Metge_DATA_BAIXA: TDateTimeField;
    Metge_UNITAT: TSmallintField;
    Metge_Sexe: TStringField;
    HYEdit2: THYEdit;
    sbListUsers: TSpeedButton;
    mtUsers: TkbmMemTable;
    mtUsersNomSencer: TStringField;
    mtUsersEmail: TStringField;
    mtUsersClauPas: TStringField;
    mtUsersusuari: TStringField;
    qMetUserMail: TStringField;
    QRLabel1: TQRLabel;
    Metge_NMetgeRecepta: TStringField;
    Ed_Metge_NMetgeRecepta: THYEdit;
    CalendariAM: THYSqlBrowse;
    CalendariAM_C_Metge: TStringField;
    CalendariAM_Dia: TDateTimeField;
    CalendariAM_Tipus: TStringField;
    CalendariAM_Comentari: TStringField;
    dsCalendariAM: TDataSource;
    qInsLogCalAM: TQuery;
    Metge_C_Unitat: TSmallintField;
    CalendariAM_C0_0: TStringField;
    CalendariAM_C0_1: TStringField;
    CalendariAM_C0_2: TStringField;
    CalendariAM_C0_3: TStringField;
    CalendariAM_C0_4: TStringField;
    CalendariAM_C0_5: TStringField;
    CalendariAM_C0_6: TStringField;
    CalendariAM_C0_7: TIntegerField;
    CalendariAM_C0_8: TStringField;
    CalendariAM_C0_9: TStringField;
    CalendariAM_C0_10: TSmallintField;
    CalendariAM_C0_11: TStringField;
    CalendariAM_C0_12: TStringField;
    CalendariAM_C0_13: TStringField;
    CalendariAM_C0_14: TStringField;
    CalendariAM_C1_0: TStringField;
    CalendariAM_C1_1: TStringField;
    rgTipus: TRadioGroup;
    Panel10: TPanel;
    Label1: TLabel;
    HYGrid13: THYGrid;
    HYBarra9: THYBarra;
    bLogCalAM: THYSqlBrowse;
    bLogCalAM_C_METGE: TStringField;
    bLogCalAM_DIA: TDateTimeField;
    bLogCalAM_TIPUS: TStringField;
    bLogCalAM_ID: TIntegerField;
    bLogCalAM_C_USUARI: TStringField;
    bLogCalAM_DATA: TDateTimeField;
    dsLogCalAM: TDataSource;
    Panel11: TPanel;
    HYBarra6: THYBarra;
    HYGrid5: THYGrid;
    bLogCalAM_C0_0: TStringField;
    bLogCalAM_C0_1: TStringField;
    bLogCalAM_C0_2: TStringField;
    bLogCalAM_C0_3: TStringField;
    bLogCalAM_C0_4: TStringField;
    bLogCalAM_C0_5: TStringField;
    bLogCalAM_C0_6: TStringField;
    bLogCalAM_C0_7: TIntegerField;
    bLogCalAM_C0_8: TStringField;
    bLogCalAM_C0_9: TStringField;
    bLogCalAM_C0_10: TSmallintField;
    bLogCalAM_C0_11: TStringField;
    bLogCalAM_C0_12: TStringField;
    bLogCalAM_C0_13: TStringField;
    bLogCalAM_C0_14: TStringField;
    bLogCalAM_C1_0: TStringField;
    bLogCalAM_C1_1: TStringField;
    Metge_C_PROV: TStringField;
    Ed_Metge_C_PROV: THYEdit;
    Eti_Metge_Provincies_N_Provincia: THYLabel;
    sbTreurePuntsNC: TSpeedButton;
    mLog: TMemo;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    Extra_C0_0: TStringField;
    Extra_C0_1: TStringField;
    Extra_C1_0: TStringField;
    Extra_C1_1: TStringField;
    Extra_C1_2: TStringField;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    Foto: TImage;
    lFoto: TLabel;
    HYEdit9: THYEdit;
    HYEdit10: THYEdit;
    HYEdit11: THYEdit;
    HYEdit12: THYEdit;
    dsMet: TDataSource;
    HYEdit3: THYEdit;
    HYEdit4: THYEdit;
    qMetDIA: TSmallintField;
    qMetDIA_ALTA: TSmallintField;
    Label2: TLabel;
    Label3: TLabel;
    MetgePresta_Dia: TSmallintField;
    MetgePresta_C0_0: TStringField;
    MetgePresta_C0_1: TStringField;
    MetgePresta_C0_2: TStringField;
    MetgePresta_C0_3: TStringField;
    MetgePresta_C0_4: TStringField;
    MetgePresta_C0_5: TStringField;
    MetgePresta_C0_6: TStringField;
    MetgePresta_C0_7: TIntegerField;
    MetgePresta_C0_8: TStringField;
    MetgePresta_C0_9: TStringField;
    MetgePresta_C0_10: TSmallintField;
    MetgePresta_C0_11: TStringField;
    MetgePresta_C0_12: TStringField;
    MetgePresta_C0_13: TStringField;
    MetgePresta_C0_14: TStringField;
    MetgePresta_C1_0: TStringField;
    MetgePresta_C1_1: TStringField;
    MetgePresta_C1_2: TStringField;
    MetgePresta_C1_3: TStringField;
    MetgePresta_C1_4: TSmallintField;
    MetgePresta_C1_5: TStringField;
    MetgePresta_C1_6: TStringField;
    TabSheet2: TTabSheet;
    qLogclaus: TQuery;
    dsLogClaus: TDataSource;
    DBGrid1: TDBGrid;
    Memo2: TMemo;
    cbNoMail: TCheckBox;
    Metge_NHC: TIntegerField;
    Ed_Metge_NHC: THYEdit;
    sbCalculaNC: TSpeedButton;
    bSyncFotos: TSpeedButton;
    Metge_DataFoto: TDateTimeField;
    Metge_Foto: TBlobField;
    DBText3: TDBText;
    JvDBImage2: TJvDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    TabSheet5: TTabSheet;
    qrFotos: TQuickRep;
    qFotos: TIBQuery;
    QRBand4: TQRBand;
    QRDBImage1: TQRDBImage;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRImage1: TQRImage;
    qSyncFotos: TIBQuery;
    Metge_C0_0: TStringField;
    Metge_C0_1: TStringField;
    Metge_C1_0: TStringField;
    Metge_C1_1: TStringField;
    Metge_C1_2: TStringField;
    Metge_C1_3: TSmallintField;
    Metge_C2_0: TIntegerField;
    Metge_C2_1: TStringField;
    Metge_C2_2: TStringField;
    Metge_C2_3: TIntegerField;
    Metge_C2_4: TStringField;
    Metge_C2_5: TStringField;
    Metge_C3_0: TStringField;
    Metge_C3_1: TStringField;
    Metge_C3_2: TStringField;
    Metge_C3_3: TStringField;
    Metge_C3_4: TStringField;
    Metge_C3_5: TStringField;
    Metge_C3_6: TStringField;
    Metge_C3_7: TIntegerField;
    Metge_C3_8: TStringField;
    Metge_C3_9: TStringField;
    Metge_C3_10: TSmallintField;
    Metge_C3_11: TStringField;
    Metge_C3_12: TStringField;
    Metge_C3_13: TStringField;
    Metge_C3_14: TStringField;
    Metge_C3_15: TStringField;
    Metge_C3_16: TIntegerField;
    Metge_C3_17: TDateTimeField;
    Metge_C4_0: TSmallintField;
    Metge_C4_1: TStringField;
    Metge_C4_2: TSmallintField;
    Metge_C4_3: TStringField;
    Metge_C4_4: TStringField;
    Metge_C4_5: TStringField;
    Metge_C5_0: TSmallintField;
    Metge_C5_1: TStringField;
    Metge_C5_2: TSmallintField;
    Metge_C5_3: TStringField;
    Metge_C5_4: TStringField;
    Metge_C5_5: TStringField;
    Metge_C6_0: TStringField;
    Metge_C6_1: TStringField;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MetgeCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure beHabilitaClick(Sender: TObject);
    procedure pPrestaMetgeAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure HYBarra5AlInsertar(Sender: TObject);
    procedure HYBarra5AlBorrar(Sender: TObject);
    procedure TabsChange(Sender: TObject);
    procedure BorraPrestaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure DillunsBeforePost(DataSet: TDataSet);
    procedure DimartsBeforePost(DataSet: TDataSet);
    procedure DimecresBeforePost(DataSet: TDataSet);
    procedure DijousBeforePost(DataSet: TDataSet);
    procedure DivendresBeforePost(DataSet: TDataSet);
    procedure bInsertarClick(Sender: TObject);
    procedure DillunsBeforeEdit(DataSet: TDataSet);
    procedure DillunsBeforeInsert(DataSet: TDataSet);
    procedure DimartsBeforeEdit(DataSet: TDataSet);
    procedure DimartsBeforeInsert(DataSet: TDataSet);
    procedure DimecresBeforeEdit(DataSet: TDataSet);
    procedure DimecresBeforeInsert(DataSet: TDataSet);
    procedure DijousBeforeEdit(DataSet: TDataSet);
    procedure DijousBeforeInsert(DataSet: TDataSet);
    procedure DivendresBeforeEdit(DataSet: TDataSet);
    procedure DivendresBeforeInsert(DataSet: TDataSet);
    procedure DillunsAfterCancel(DataSet: TDataSet);
    procedure MetgeBeforeScroll(DataSet: TDataSet);
    procedure BarraDimartsResize(Sender: TObject);
    procedure ConsultaPrestaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure HYBarra1AlBorrar(Sender: TObject);
    procedure HYBarra4AlBorrar(Sender: TObject);
    procedure HYGrid7Enter(Sender: TObject);
    procedure HYGrid7Exit(Sender: TObject);
    procedure HYGrid8Enter(Sender: TObject);
    procedure HYGrid8Exit(Sender: TObject);
    procedure HYGrid9Enter(Sender: TObject);
    procedure HYGrid9Exit(Sender: TObject);
    procedure HYGrid10Exit(Sender: TObject);
    procedure HYGrid10Enter(Sender: TObject);
    procedure HYGrid11Enter(Sender: TObject);
    procedure HYGrid11Exit(Sender: TObject);
    procedure HYBarra1AlPost(Sender: TObject);
    procedure bPassClick(Sender: TObject);
    procedure MetgeBeforePost(DataSet: TDataSet);
    procedure ExtraBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure MetgeAfterScroll(DataSet: TDataSet);
    procedure ExtraCalcFields(DataSet: TDataSet);
    procedure ExtraAfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure MetgeAfterPost(DataSet: TDataSet);
    procedure ExtraAfterPost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bDocumentClick(Sender: TObject);
    procedure bCorreuClick(Sender: TObject);
    procedure sbListUsersClick(Sender: TObject);
    procedure qMetCalcFields(DataSet: TDataSet);
    procedure CalendariAMBeforeDelete(DataSet: TDataSet);
    procedure sbTreurePuntsNCClick(Sender: TObject);
    procedure HYBarra1AlInsertar(Sender: TObject);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure PrintOrNot(sender: TObject; var Value: String);
    procedure cbNoMailClick(Sender: TObject);
    procedure sbCalculaNCClick(Sender: TObject);
    procedure bSyncFotosClick(Sender: TObject);
    procedure JvDBImage2DblClick(Sender: TObject);
    procedure MetgeAlConsultarCampoFiltro2(Sender: TObject;
      var Personalizada: Boolean; NombreConsulta: String;
      var SubFiltro: String; CampoDb: String; ValueDb: Variant);
  private
//    function HoraCorrecta(Hora, Minutos: Integer): Boolean;
    NotPrint: Boolean;
    function RangoValido(DataSet: TDataSet): Boolean;
    function NomesUser(nom:String):String;
    function SensePunts(numc: String):String;
    procedure MostrarBarras(Barra: Integer);
  public
  end;

var
  wFichaMetges: TwFichaMetges;


implementation

uses Data, utili16, Funciones, Funcions, DataBasics, DataConfig, DataCodis, DataAmics, DataAdmisio, DataCurs, Firma, DataImatges;

{$R *.DFM}

procedure TwFichaMetges.FormClose(Sender: TObject; var Action: TCloseAction);
var
    a: tbitmap;
begin
    Action := caFree;
end;


procedure TwFichaMetges.FormCreate(Sender: TObject);
var
conta: integer;
begin
    Tabs.ActivePage := TabSheet3;
    TabSheet5.TabVisible:=false;
    Metge.Open;
    qMet.Open;
    Drets.Open;
    Titol.Open;
    Extra.Open;
    MetgePresta.Open;
    HorarioPresta.Open;
    Vacances.Open;
    CalendariAM.Open;
    bLogCalAM.Open;
    qSignatures.Open;
//vfo-i.
    Dilluns.Open;
    Dimarts.Open;
    Dimecres.Open;
    Dijous.Open;
    Divendres.Open;
//vfo-f.
    qLogclaus.Open;
//    TabCorreu.TabVisible := False;   // parte 45870
    TabClauPas.TabVisible := False;  // parte 45870

    qSyncFotos.Open;
    qSyncFotos.First;
    while not qSyncFotos.Eof do
    begin
        if (FileExists(wDataImatges.GetFileNameFotoMetge(qSyncFotos.fieldByName('email').AsString))) then
        begin
            inc(conta,1);
        end;
        qSyncFotos.Next;
    end;
    qSyncFotos.Close;
    bSyncFotos.Caption := IntToStr(conta)+ ' Fotos pendents';
    if (conta>0) then bSyncFotos.Font.Color := clRed;

end;


procedure TwFichaMetges.SpeedButton1Click(Sender: TObject);
begin
    Metge.Edicion;
    Metge.FieldByName('HInhabilitat').Clear;
    Metge.FieldByName('AInhabilitat').Clear;
    if      (Metge.FieldByName('E_Incorrectes').AsInteger >= 6) then Metge.FieldByName('E_Gracia').AsInteger := -2
    else if (Metge.FieldByName('E_Incorrectes').AsInteger >= 3) then Metge.FieldByName('E_Gracia').AsInteger := -1;
    Metge.FieldByName('E_Incorrectes').AsInteger := 0;
    Metge.Post;
end;


procedure TwFichaMetges.MetgeCalcFields(DataSet: TDataSet);
begin
    if (Metge.FieldByName('Baixa').AsString = 'B') then Metge.FieldByName('LabelBaixa').AsString := 'USUARI DE BAIXA'
                                                   else Metge.FieldByName('LabelBaixa').AsString := '';

    if not Metge.FieldByName('HInhabilitat').IsNull then
    begin
        if (Metge.FieldByName('E_Incorrectes').AsInteger < 6) then Metge.FieldByName('LabelBaixa').AsString := 'USUARI INHABILITAT'
                                                              else Metge.FieldByName('LabelBaixa').AsString := 'USUARI BLOQUEJAT';
    end;

    PanelExtra.Visible := (Metge.FieldByName('EsUserExtra').AsString = 'S');
end;


procedure TwFichaMetges.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    CanClose := Metge.PuedeCerrar and Drets.PuedeCerrar and Titol.PuedeCerrar and Extra.PuedeCerrar and  MetgePresta.PuedeCerrar and HorarioPresta.PuedeCerrar;
end;


procedure TwFichaMetges.SpeedButton3Click(Sender: TObject);
var
  Tmp: TMetge;
  Linea: String;
  Flag: Boolean;
begin
    Flag := (TSpeedButton(Sender).Tag = 1);
    Tmp := PreguntaMetge(Flag);
    if (Tmp.Codi <> '') then
    begin
        Linea := '** Usuari trobat **' + NLine + NLine;
        Linea := Linea + 'Codi   : '+ Tmp.Codi + NLine;
        if (Tmp.Extra <> '') then  Linea := Linea + 'Extra  : ' + Tmp.Extra + NLine;
        Linea := Linea + 'Metge  : '+Tmp.Desc + NLine;
        Linea := Linea + 'Cognoms: '+Tmp.COGNOMS + NLine;
        Linea := Linea + 'Grup   : '+Tmp.Grup + ' ' + Tmp.DescGrup + NLine;
        Linea := Linea + 'Espe   : '+Tmp.Especial + ' '+ Tmp.DescEspecial + NLine;
        ShowMensaje(Linea);
    end;
end;


procedure TwFichaMetges.beHabilitaClick(Sender: TObject);
begin
    Extra.Edicion;
    Extra.FieldByName('HInhabilitat').Clear;
    Extra.FieldByName('AInhabilitat').Clear;
    if      (Extra.FieldByName('E_Incorrectes').AsInteger >= 6) then Extra.FieldByName('E_Gracia').AsInteger := -2
    else if (Extra.FieldByName('E_Incorrectes').AsInteger >= 3) then Extra.FieldByName('E_Gracia').AsInteger := -1;
    Extra.FieldByName('E_Incorrectes').AsInteger := 0;
    Extra.Post;
end;


procedure TwFichaMetges.HYBarra5AlInsertar(Sender: TObject);
begin
    pPrestaMetge.Titulo := ' Inserció de prestacions assignades al metge';
    pPrestaMetge.SqlDic     [5] := ' where CODI = "' + Metge.fieldbyName('Codi').AsString + '" )';
    pPrestaMetge.SqlDicTotal[5] := ' where CODI = "' + Metge.fieldbyName('Codi').AsString + '" )';
    pPrestaMetge.ExecuteModal('','');
end;


procedure TwFichaMetges.HYBarra5AlBorrar(Sender: TObject);
begin
    BorraPresta.Titulo         := ' Supressió de prestacions assignades al metge';
    BorraPresta.SqlDic[2]      := ' where CODI = "' + Metge.fieldbyName('Codi').AsString + '"';
    BorraPresta.SqlDicTotal[2] := ' where CODI = "' + Metge.fieldbyName('Codi').AsString + '"';
    BorraPresta.ExecuteModal('','');
end;


procedure TwFichaMetges.TabsChange(Sender: TObject);
begin

    if (Tabs.ActivePage = tsPrestacions) then if not MetgePresta.Active then MetgePresta.Open;

    if (Tabs.ActivePage = tsHorarios) then
    begin
        TRY
          WaitOn('Obrint Horaris...');

          Dilluns.Close;
          Dimarts.Close;
          Dimecres.Close;
          Dijous.Close;
          Divendres.Close;

          Dilluns.Open;
          Dimarts.Open;
          Dimecres.Open;
          Dijous.Open;
          Divendres.Open;
        FINALLY
          WaitOff;
        END;
    end
    else begin
        if Dilluns.Active then
        begin
            Dilluns.Close;
            Dimarts.Close;
            Dimecres.Close;
            Dijous.Close;
            Divendres.Close;
        end;
    end;
end;


procedure TwFichaMetges.pPrestaMetgeAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var i: Integer;
begin
    for i := 0 to Sender.Grid.SelectedRows.Count -1 do
    begin
        Sender.DS.Dataset.BookMark := Sender.Grid.SelectedRows[i];

        MetgePresta.Insert;
        MetgePresta.FieldbyName('C_Prestacio').AsString := Datos.FieldByName('C_Prestacio').asString;
        MetgePresta.FieldbyName('Codi'       ).AsString := Metge.FieldByName('Codi').asString;
        MetgePresta.Post;
    end;
end;


procedure TwFichaMetges.BorraPrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var i: Integer;
begin
    for i := 0 to Sender.Grid.SelectedRows.Count -1 do
    begin

        Sender.DS.Dataset.BookMark := Sender.Grid.SelectedRows[i];

        TRY
          WaitOn('Suprimint prestacions del metge...');
          GutExecute('delete from METGEPRESTA where CODI = "%s" and C_PRESTACIO = "%s"',
                     [Metge.FieldByName('Codi').AsString,
                      Datos.FieldByName('C_Prestacio').AsString]);
        FINALLY
          WaitOff;
        END;

    end;
    MetgePresta.Refresh;
end;


procedure TwFichaMetges.DillunsBeforePost(DataSet: TDataSet);
begin
    MostrarBarras(1);

    DataSet.FieldbyName('Dia').AsInteger := 1;

    if not RangoValido(DataSet) then FerError('L''hora d''inici ha de ser inferior a l''hora de fi.', True);

//    MostrarBarras(0); vfo
    MostrarBarras(1);
end;


procedure TwFichaMetges.DimartsBeforePost(DataSet: TDataSet);
begin
//    MostrarBarras(1);  vfo
    MostrarBarras(2);

    DataSet.FieldbyName('Dia').AsInteger := 2;

    if not RangoValido(DataSet) then FerError('L''hora d''inici ha de ser inferior a l''hora de fi.', True);

//    MostrarBarras(0); vfo
    MostrarBarras(2);
end;


procedure TwFichaMetges.DimecresBeforePost(DataSet: TDataSet);
begin
    MostrarBarras(3);

    DataSet.FieldbyName('Dia').AsInteger := 3;

    if not RangoValido(DataSet) then FerError('L''hora d''inici ha de ser inferior a l''hora de fi.', True);

//    MostrarBarras(0); vfo
    MostrarBarras(3);
end;


procedure TwFichaMetges.DijousBeforePost(DataSet: TDataSet);
begin
  MostrarBarras(4);

  DataSet.FieldbyName('Dia').AsInteger := 4;

  if not RangoValido(DataSet) then FerError('L''hora d''inici ha de ser inferior a l''hora de fi.', True);

//    MostrarBarras(0); vfo
    MostrarBarras(4);
end;


procedure TwFichaMetges.DivendresBeforePost(DataSet: TDataSet);
begin
  MostrarBarras(5);

  DataSet.FieldbyName('Dia').AsInteger := 5;

  if not RangoValido(DataSet) then FerError('L''hora d''inici ha de ser inferior a l''hora de fi.', True);

//    MostrarBarras(0); vfo
    MostrarBarras(5);
end;


Function TwFichaMetges.RangoValido(DataSet: TDataSet):Boolean;

    Function HoraCorrecta(Hora, Minutos: Integer):Boolean;
    begin

      if ((Hora in [0..23]) and (Minutos in [0..59])) then Result := True
                                                      else Result := False;
    end;

var
  Hora1, Hora2: TTime;
begin

    if not HoraCorrecta(DataSet.fieldbyName('HDesde').AsInteger, DataSet.FieldByName('MDesde').AsInteger)
    then FerError('Rang Hora Inici incorrecte', True);

    if not HoraCorrecta(DataSet.fieldbyName('HHasta').AsInteger, DataSet.FieldByName('MHasta').AsInteger)
    then FerError('Rang Hora Fi incorrecte', True);


    Hora1 := EncodeTime(DAtaset.FieldbyName('HDesde').AsInteger, Dataset.FieldByName('MDesde').AsInteger, 0, 0);
    Hora2 := EncodeTime(DAtaset.FieldbyName('HHasta').AsInteger, Dataset.FieldByName('MHasta').AsInteger, 0, 0);

    if (Hora1 < Hora2) then Result := True
                       else Result := False;
end;


procedure TwFichaMetges.bInsertarClick(Sender: TObject);

    function RangoFechasenDias(Fecha1,Fecha2:TDate):Integer;
    var
      Temp: Double;
      HorasIn, MinIn, HorasFin, MinFin, Sec, MSec: Word;
    begin
      DecodeTime (Fecha1,HorasIn , MinIn , sec, msec);
      DecodeTime (Fecha2,HorasFin, MinFin, sec, msec);
      Temp     := Fecha2 - Fecha1;
      Result   := Trunc(Temp);
    end;

var
  Fecha: TDate;
  i: Integer;
  tipus: String;
begin
    if EsPle(Filtro.Valor1) and EsPle(Filtro.Valor2) and EsPle(Comentari.Text) and (rgTipus.ItemIndex>=0) then
    begin
        Fecha := StrToDate(Filtro.Valor1);
        for i:= 1 to RangoFechasenDias(StrToDate(Filtro.Valor1), StrToDate(Filtro.Valor2)) do
        begin
            {Vacances.Insert;
            Vacances.FieldbyName('Dia').asDateTime := Fecha;
            Vacances.FieldbyName('Comentario').asString := Comentari.text;
            Vacances.Post;}

            // primer comprovem que no hi ha res introduït aquell dia
            tipus:=GutSelect('select a.n_codi from calendari_am c join codicampsalfa a on c.tipus=a.c_codi and a.tipuscodi="CALENDARIAM.TIPUS" '+
                             'where c.c_metge="%s" and c.dia="%s"',
                             [CalendariAM.FieldByName('c_metge').AsString,FormatDateTime('dd.mm.yyyy',Fecha)]);

            if (tipus <> '') then
            begin
                CalendariAM.Cancel;
                FerError('A data '+FormatDateTime('dd.mm.yyyy',Fecha)+' el metge té '+tipus,True);
            end;
            CalendariAM.Insert;
            CalendariAM.FieldByName('dia').AsDateTime := Fecha;
            CalendariAM.FieldbyName('Comentari').asString := Comentari.text;
            case rgTipus.ItemIndex of
            0: CalendariAM.FieldByName('tipus').AsString := 'V';
            1: CalendariAM.FieldByName('tipus').AsString := 'C';
            2: CalendariAM.FieldByName('tipus').AsString := 'G';
            3: CalendariAM.FieldByName('tipus').AsString := 'A';
            end;
            TRY CalendariAM.Post; FINALLY END;

            Fecha := Fecha + 1;
        end;
        rgTipus.ItemIndex := -1;
    end
    else FerError('El comentari o el rang d''inserció o el tipus de vacances no estan introduïts');
end;


procedure TwFichaMetges.DillunsBeforeEdit(DataSet: TDataSet);
begin
    MostrarBarras(1);
end;


procedure TwFichaMetges.DillunsBeforeInsert(DataSet: TDataSet);
begin
    MostrarBarras(1);
end;

procedure TwFichaMetges.MostrarBarras(Barra:Integer);
begin

    BarraDilluns.Visible   := False;
    BarraDimarts.Visible   := False;
    BarraDimecres.Visible  := False;
    BarraDijous.Visible    := False;
    BarraDivendres.Visible := False;

    CASE Barra OF
       1: BarraDilluns.Visible   := True;
       2: BarraDimarts.Visible   := True;
       3: BarraDimecres.Visible  := True;
       4: BarraDijous.Visible    := True;
       5: BarraDivendres.Visible := True;
    END;
end;


procedure TwFichaMetges.DimartsBeforeEdit(DataSet: TDataSet);
begin
    MostrarBarras(2);
end;


procedure TwFichaMetges.DimartsBeforeInsert(DataSet: TDataSet);
begin
    MostrarBarras(2);
end;


procedure TwFichaMetges.DimecresBeforeEdit(DataSet: TDataSet);
begin
    MostrarBarras(3);
end;


procedure TwFichaMetges.DimecresBeforeInsert(DataSet: TDataSet);
begin
    MostrarBarras(3);
end;


procedure TwFichaMetges.DijousBeforeEdit(DataSet: TDataSet);
begin
    MostrarBarras(4);
end;


procedure TwFichaMetges.DijousBeforeInsert(DataSet: TDataSet);
begin
    MostrarBarras(4);
end;


procedure TwFichaMetges.DivendresBeforeEdit(DataSet: TDataSet);
begin
    MostrarBarras(5);
end;


procedure TwFichaMetges.DivendresBeforeInsert(DataSet: TDataSet);
begin
    MostrarBarras(5);
end;


procedure TwFichaMetges.DillunsAfterCancel(DataSet: TDataSet);
begin
    MostrarBarras(0);
end;


procedure TwFichaMetges.MetgeBeforeScroll(DataSet: TDataSet);
begin
    Filtro.Valor1 := '';
    Filtro.Valor2 := '';
    Comentari.Text := '';
end;


procedure TwFichaMetges.BarraDimartsResize(Sender: TObject);
begin
    CenterInClient(lbl1);
    CenterInClient(lbl2);
    CenterInClient(lbl3);
    CenterInClient(lbl4);
    CenterInClient(lbl5);
end;


procedure TwFichaMetges.ConsultaPrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
{
    Dilluns.Post;
    HorariPresta.fieldbyName('C_Prestacio').asString := Datos.Fieldbyname('C_Prestacio').asString;
    HorariPresta.post;
}
end;


procedure TwFichaMetges.SpeedButton5Click(Sender: TObject);
begin
    if wDataImatges.ExistSignatura(Metge_Codi.AsString) then
    begin
        if not AvisoNS('Voleu esborrar la signatura actual per posar-ne una altra?') then Exit
        else begin
            wDataImatges.DelSignatura(Metge_Codi.AsString);

            qSignatures.Close;
            qSignatures.Open;
        end;
    end;

    with TwFirma.Create(Self) do
    begin
        Width := 630;
        Height := 425;
        donvinc := Self;
        c_metge := Metge_Codi.AsString;
        ShowModal;
    end;
end;


procedure TwFichaMetges.HYBarra1AlBorrar(Sender: TObject);
begin
    if AvisoSN('En esborrar aquest usuari és possible que es perdin dades del TRAZACONTROL. Voleu continuar?')
    then HYBarra1.DataSource.DataSet.Delete;
end;


procedure TwFichaMetges.HYBarra4AlBorrar(Sender: TObject);
begin
    if AvisoSN('En esborrar aquest usuari extra és possible que es perdin dades del TRAZACONTROL. Voleu continuar?')
    then HYBarra4.DataSource.DataSet.Delete;
end;


procedure TwFichaMetges.HYGrid7Enter(Sender: TObject);
begin
    BarraDilluns.visible := True;
end;


procedure TwFichaMetges.HYGrid7Exit(Sender: TObject);
begin
    BarraDilluns.visible := False;
end;


procedure TwFichaMetges.HYGrid8Enter(Sender: TObject);
begin
    BarraDimarts.Visible := True;
end;


procedure TwFichaMetges.HYGrid8Exit(Sender: TObject);
begin
    BarraDimarts.Visible := False;
end;


procedure TwFichaMetges.HYGrid9Enter(Sender: TObject);
begin
    BarraDimecres.Visible := True;
end;


procedure TwFichaMetges.HYGrid9Exit(Sender: TObject);
begin
    BarraDimecres.Visible := False;
end;


procedure TwFichaMetges.HYGrid10Exit(Sender: TObject);
begin
    BarraDijous.Visible := False;
end;


procedure TwFichaMetges.HYGrid10Enter(Sender: TObject);
begin
    BarraDijous.Visible := True;
end;


procedure TwFichaMetges.HYGrid11Enter(Sender: TObject);
begin
    BarraDivendres.Visible := True;
end;


procedure TwFichaMetges.HYGrid11Exit(Sender: TObject);
begin
    BarraDivendres.Visible := False;
end;


procedure TwFichaMetges.HYBarra1AlPost(Sender: TObject);
begin
    if (Metge.State in [dsInsert]) then ShowMessage('Recordeu donar el permís M75: "No pot entrar al Curs Clínic" si cal');
    Metge.Post;
end;


procedure TwFichaMetges.bPassClick(Sender: TObject);
begin
    TeDretAcces([99], True, False);  //només permès per dret A99
    pPassword.Visible := not pPassword.Visible;
    pePassword.Visible := pPassword.Visible;
end;


procedure TwFichaMetges.MetgeBeforePost(DataSet: TDataSet);
begin
    // si hem resetejat la clau de pas, actualitzem la curta, xifrem la llarga i posem E_GRACIA = -3 i resetegem les E_INCORRECTES
    if (Metge.FieldByName('ClauPas').AsString <> GutSelect('select CLAUPAS from METGES where CODI = "%s"',
                                                           [Metge.FieldByName('Codi').AsString]))
    then begin
        Metge.FieldByName('DigCon'       ).AsString  := AnsiUpperCase(Copy(Metge.FieldByName('ClauPas').AsString, 1, 2));
        Metge.FieldByName('Nom'          ).AsString  := AnsiUpperCase(Copy(Metge.FieldByName('ClauPas').AsString, 3, 3));
        Metge.FieldByName('ClauPas'      ).AsString  := XifraBF(Metge.FieldByName('ClauPas').AsString);
        Metge.FieldByName('E_Gracia'     ).AsInteger := -3;
        Metge.FieldByName('E_Incorrectes').AsInteger := 0;
        Metge.FieldByName('HInhabilitat' ).Clear;
        Metge.FieldByName('AInhabilitat' ).Clear;
    end;

    // si hem habilitat, desbloquejat o resetejat l'usuari, ho registrem:
    if (Metge.FieldByName('E_Gracia').AsInteger < 0) then GutExecute('execute PROCEDURE P_LOGINHABILITATS_REGISTRA("%s", NULL, "R")',
                                                                     [Metge.FieldByName('Codi').AsString]);

    // Validem NC si l'han entrat
    if (Metge.FieldByName('NC').AsString <> '') then
    begin
        if (Length(Trim(Metge.FieldByName('NC').AsString))      > 6) then FerError('Número de col·legiat incorrecte; ha de tenir màxim 6 dígits (0 davant si cal)', True);
        if (Length(Trim(Metge.FieldByName('C_Prov').AsString)) <> 2) and AvisoSN('Voleu entrar ara la provínicia on s''ha col·legiat?') then Exit;
    end;

    // Calculem el número de recepta si cal
    if (Length(Trim(Metge.FieldByName('NMetgeRecepta').AsString)) < 9) then sbCalculaNCClick(sbCalculaNC);

    // per ME i UN només es poden posar tipus de documents amb CODICAMPS.R_CODI informat
    if ((Metge.FieldByName('c_grup').AsString = 'ME') or (Metge.FieldByName('c_grup').AsString = 'UN'))
    and (not Metge.FieldByName('DNI').IsNull) and (Metge.FieldByName('DNI').AsString <> '')
    and (Metge.FieldByName('t_doc').AsInteger <> 1) and (Metge.FieldByName('t_doc').AsInteger <> 3)
    then begin
        Tabs.ActivePage := TabSheet1;
        TabsChange(Tabs);
        Ed_Metge_T_DOC.SetFocus;
        FerError('Tipus de document erroni per aquest lloc de treball',True);
    end;
end;


procedure TwFichaMetges.ExtraBeforePost(DataSet: TDataSet);
begin
    // si hem resetejat la clau de pas, actualitzem la curta, xifrem la llarga, posem E_GRACIA = -3 i resetegem les E_INCORRECTES
    if (Extra.FieldByName('ClauPas').AsString <> GutSelect('select CLAUPAS from METGEEXTRA where CODI = "%s" and C_EXTRA = "%s"',
                                                           [Extra.FieldByName('Codi').AsString, Extra.FieldByName('C_Extra').AsString]))
    then begin
        Extra.FieldByName('DigCon'       ).AsString  := AnsiUpperCase(Copy(Extra.FieldByName('ClauPas').AsString, 1, 2));
        Extra.FieldByName('Nom'          ).AsString  := AnsiUpperCase(Copy(Extra.FieldByName('ClauPas').AsString, 3, 3));
        Extra.FieldByName('ClauPas'      ).AsString  := XifraBF(Extra.FieldByName('ClauPas').AsString);
        Extra.FieldByName('E_Gracia'     ).AsInteger := -3;
        Extra.FieldByName('E_Incorrectes').AsInteger := 0;
        Extra.FieldByName('HInhabilitat' ).Clear;
        Extra.FieldByName('AInhabilitat' ).Clear;
    end;

    // si hem habilitat, desbloquejat o resetejat l'usuari, ho registrem:
    if (Extra.FieldByName('E_Gracia').AsInteger < 0) then GutExecute('EXECUTE PROCEDURE P_LOGINHABILITATS_REGISTRA("%s", "%s", "R")',
                                                                     [Extra.FieldByName('Codi').AsString,
                                                                      Extra.FieldByName('C_Extra').AsString]);
end;


procedure TwFichaMetges.Button1Click(Sender: TObject);
begin
    TeDretAcces([99], True, False);  //només permès per dret A99
    if pClaus.Visible then pClaus.Hide
    else begin
        CP.Text  := DesxifraBF(Metge.FieldByName('ClauPas').AsString);
        CP1.Text := DesxifraBF(Metge.FieldByName('ClauPas_1').AsString);
        CP2.Text := DesxifraBF(Metge.FieldByName('ClauPas_2').AsString);
        pClaus.Show;
    end;
end;


procedure TwFichaMetges.MetgeAfterScroll(DataSet: TDataSet);
var
 i: Integer;
 usuariAD: String;
 filename: String;
begin
    if      (Metge.FieldByName('LabelBaixa').AsString = 'USUARI INHABILITAT') then bHabilita.Caption := 'Habilita'
    else if (Metge.FieldByName('LabelBaixa').AsString = 'USUARI BLOQUEJAT'  ) then bHabilita.Caption := 'Desbloqueja';

    bHabilita.Visible := not Metge.FieldByName('HInhabilitat').IsNull;

    pPassword.Hide;
    pClaus.Hide;
    pePassword.Hide;
    peClaus.Hide;


    filename := wDataImatges.GetFileNameFotoMetge(Metge.FieldByName('email').AsString);
    if FileExists(filename) then
    begin
      lFoto.Caption:=filename;
      Foto.Picture.LoadFromFile(filename);
    end
    else begin
      lFoto.Caption:=filename + NLine + 'NO TROBADA';
      Foto.Picture := Nil;
    end;

//    bCorreu.Enabled := Pos('@fake.com',Metge.FieldByName('email').AsString) = 0;
end;

procedure TwFichaMetges.ExtraCalcFields(DataSet: TDataSet);
begin
    if (Extra.FieldByName('Baixa').AsString = 'B') then Extra.FieldByName('LabelBaixa').AsString := 'USUARI DE BAIXA'
                                                   else Extra.FieldByName('LabelBaixa').AsString := '';

    if not Extra.FieldByName('HInhabilitat').IsNull then
    begin
        if (Extra.FieldByName('E_Incorrectes').AsInteger < 6) then Extra.FieldByName('LabelBaixa').AsString := 'USUARI INHABILITAT'
                                                              else Extra.FieldByName('LabelBaixa').AsString := 'USUARI BLOQUEJAT';
    end;
end;

procedure TwFichaMetges.ExtraAfterScroll(DataSet: TDataSet);
begin
    if      (Extra.FieldByName('LabelBaixa').AsString = 'USUARI INHABILITAT') then beHabilita.Caption := 'Habilita'
    else if (Extra.FieldByName('LabelBaixa').AsString = 'USUARI BLOQUEJAT'  ) then beHabilita.Caption := 'Desbloqueja';

    beHabilita.Visible := not Extra.FieldByName('HInhabilitat').IsNull;

    pePassword.Hide;
    peClaus.Hide;
end;

procedure TwFichaMetges.Button2Click(Sender: TObject);
begin
    TeDretAcces([99], True, False);  //només permès per dret A99
    if peClaus.Visible then peClaus.Hide
    else begin
        CPe.Text  := DesxifraBF(Extra.FieldByName('ClauPas').AsString);
        CP1e.Text := DesxifraBF(Extra.FieldByName('ClauPas_1').AsString);
        CP2e.Text := DesxifraBF(Extra.FieldByName('ClauPas_2').AsString);
        peClaus.Show;
    end;
end;

procedure TwFichaMetges.MetgeAfterPost(DataSet: TDataSet);
var
  correu: String;
begin
    if pClaus.Visible then
    begin
        pClaus.Hide;
        Button1.Click;
    end;

    // parte 45427: quan es dóna de baixa un usuari, si té correu, enviar correu a relacionslaborals, rrpp, amics i informatica

    correu := Trim(DataSet.FieldByName('email').AsString); 

    if  (DataSet.FieldByName('Baixa').AsString = 'B') and (correu <> '') then
    begin
        if AvisoSN(Format('Vols enviar el correu per comunicar la baixa a "%s"?', [destinataris]))
        then JclSimpleSendMail('avisoscorreu@guttmann.com', '', 'Baixa compte de correu', correu + ' ha estat donat de baixa');
    end;
end;

procedure TwFichaMetges.ExtraAfterPost(DataSet: TDataSet);
begin
    if peClaus.Visible then
    begin
        peClaus.Hide;
        Button2.Click;
    end;
end;

procedure TwFichaMetges.SpeedButton2Click(Sender: TObject);
var
  qMetges: TQuery;
  uMetges: TQuery;
begin
    qMetges := TQuery.Create(Self);
    uMetges := Tquery.Create(Self);
    TRY
      qMetges.DatabaseName := 'interna';
      uMetges.DatabaseName := 'interna';

      qMetges.SQL.Text := 'select CODI, DIGCON, NOM, EXTENSIO from METGES';
      uMetges.SQL.Text := 'update METGES set CLAUPAS = :clau where CODI = :codi';

      qMetges.Open;
      qMetges.First;
      while not qMetges.Eof do
      begin
          uMetges.ParamByName('clau').AsString := XifraBF(AnsiLowerCase(qMetges.FieldByName('DigCon'  ).AsString) +
                                                          AnsiLowerCase(qMetges.FieldByName('Nom'     ).AsString) +
                                                          AnsiLowerCase(qMetges.FieldByName('Extensio').AsString));
                                                        
          uMetges.ParamByName('codi').AsString := qMetges.FieldByName('Codi').AsString;
          uMetges.ExecSQL;

          qMetges.Next;
      end;
      qMetges.Close;

      qMetges.SQL.Text := 'select CODI, C_EXTRA, DIGCON, NOM from METGEEXTRA';
      uMetges.SQL.Text := 'update METGEEXTRA set CLAUPAS = :clau where CODI = :codi and C_EXTRA = :extra';

      qMetges.Open;
      qMetges.First;
      while not qMetges.Eof do
      begin
          uMetges.ParamByName('clau').AsString := XifraBF(AnsiLowerCase(qMetges.FieldByName('DigCon'  ).AsString) +
                                                          AnsiLowerCase(qMetges.FieldByName('Nom'     ).AsString) +
                                                          '.00');

          uMetges.ParamByName('codi' ).AsString := qMetges.FieldByName('Codi'   ).AsString;
          uMetges.ParamByName('extra').AsString := qMetges.FieldByName('C_Extra').AsString;
          uMetges.ExecSQL;

          qMetges.Next;
      end;
      qMetges.Close;

    FINALLY
      qMetges.Free;
      uMetges. Free;
    END;
end;


procedure TwFichaMetges.bDocumentClick(Sender: TObject);
var
 claucurta: String;
begin
  lbTitol.Caption := 'CLAU DE PAS DE '+ qMet.FieldByName('NOMSENCER').AsString;

  claucurta := DesxifraBF(qMet.FieldByName('ClauPas').AsString);
  claupas.Caption := claucurta;

  claucurta := copy(claucurta,1,5);

  lbClaudePas.Caption := qMet.fieldbyname('codi').AsString+claucurta;

  qrClau.Preview;
end;

procedure TwFichaMetges.bCorreuClick(Sender: TObject);
var
  WordApp: _Application;
  WordDoc: _Document;
  pNomDoc: OleVariant;
  pCopies: OleVariant;
  pNomesLectura: OleVariant;
  correu: String;
begin
   if TeDretGrup(Metge.FieldByName('c_grup').AsString,[49])  // residents
   then QRMemo3.Lines.Text := 'Podeu accedir a la intranet, a la formació interna, a les ordres '+
                              'a informàtica, de manteniment i de neteja des de qualsevol navegador convencional (tot i que '+
                              'recomanem l''Internet Explorer) accedint a les següents adreces:'
   else QRMemo3.Lines.Text := 'Podeu accedir al vostre correu personal, a la intranet, a la formació interna, a les ordres '+
                              'a informàtica, de manteniment i de neteja des de qualsevol navegador convencional (tot i que '+
                              'recomanem l''Internet Explorer) accedint a les següents adreces:';

  // residents
  NotPrint := TeDretGrup(Metge.FieldByName('c_grup').AsString, [49]) or cbNoMail.Checked;
  if NotPrint then
  begin
      QRMemo4.Lines.Text := '';
      QRMemo5.Lines.Text := '';
      QRImage1.Picture.LoadFromFile('G:\bin\pconfig\imatgebuida.jpg');
  end
  else begin
      QRMemo4.Lines.Text := 'És necessari fer login a la Nova HCE ABANS de fer-lo al Medxat (mhce).' + NLine + NLine + NLine + 
                            'A l''aplicació "Gestió Clau de pas" us haureu de registrar per posteriorment poder-vos canviar la vostra clau de pas identificant-vos '+
                            'i seguint les instruccions del programa.';
      QRMemo5.Lines.Text := 'IMPORTANT: ÉS OBLIGATORI CANVIAR PERIÒDICAMENT LA CONTRASENYA PER QÜESTIONS DE SEGURETAT';
      QRImage1.Picture.LoadFromFile('G:\bin\pconfig\CanviContrasenya.jpg');
  end;

  // imprimir la documentació a donar per l'alta del compte de correu
  if (not qMet.FieldByName('email').IsNull) and (qMet.FieldByName('email').AsString <> '') then qrCorreu.Preview
                                                                                           else FerError('Aquest usuari no té compte de correu.',True);

  Exit;
  // Imprimir també: G:\usr\informatica\Documents Intranet-WEB\Protocols\Configurar Outlook.doc
  if AvisoSN('Voleu imprimir el document de Configuració Outlook (S/N)?') then
  begin
      WordApp := CoApplication_.Create;
      pNomDoc := 'G:\usr\informatica\Documents Intranet-WEB\Protocols\Configurar Outlook.doc';
      pNomesLectura := True;
      TRY WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      EXCEPT
          on E : Exception do
          begin
               FerError(E.Message, TRUE);
          end;
      END;
      WordApp.Visible := False;
      WaitOff;

      WaitOn('Imprimint "Configurar Outlook" . . .');
      pCopies := 1;
      WordDoc.PrintOut(EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,pCopies,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
      WordDoc.Close(EmptyParam,EmptyParam,EmptyParam);
      WaitOff;
      WordApp.Quit(EmptyParam,EmptyParam,EmptyParam);
  end;

  if AvisoSN(Format('Vols enviar el correu a "%s"?', [destinataris])) then
  begin
      correu := qMet.FieldByName('email').AsString;
      JclSimpleSendMail('avisoscorreu@guttmann.com', '', 'Nou compte de correu', 'S''ha creat un compte de correu: ' + correu);
  end;
end;

procedure TwFichaMetges.sbListUsersClick(Sender: TObject);
var
 q: TQuery;
begin
  // llistar nomsencer, email (només fins l'arroba, i.e. usuari de xarxa) i claudepas (desencriptada)
  WaitOn(' Generant fitxer . . . ');
  q := TQuery.Create(Application);
  q.DatabaseName := wData.Gdb.DatabaseName;
  q.SQL.Text := 'select nomsencer, email, claupas from metges where (email is not null) and (baixa ="N") order by nomsencer ';
  q.Open;
  mtUsers.Open;

  while not q.Eof do
  begin
    TRY
      mtUsers.Append;
      mtUsers.FieldByName('NomSencer').Value := q.FieldByName('NomSencer').AsString;
      mtUsers.FieldByName('Email').Value := q.FieldByName('Email').AsString;
      mtUsers.FieldByName('usuari').Value := NomesUser(q.FieldByName('Email').AsString);
      mtUsers.FieldByName('ClauPas').Value := DesxifraBF(q.FieldByName('ClauPas').AsString);
      mtUsers.Post;
      q.Next;
    FINALLY
    END;
  end;

  WaitOff();
  SendToExcel(mtUsers,'Usuaris Guttmann','','','Usuaris Guttmann');
  q.Free;
end;

function TwFichaMetges.NomesUser(nom:String):String;
var
 c: String;
 i,j: Integer;
begin
  i:=1; j:=len(nom);
  c := Copy(nom,i,1); Result := c;
  while (c<>'@') and (i<=j) do
  begin
      i:=i+1;
      c := Copy(nom,i,1);
      if (c<>'@') then Result := Result + c;
  end;
  if i>j then Result := '';
end;

procedure TwFichaMetges.qMetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('UserMail').AsString := DataSet.FieldByName('email').AsString; //NomesUser(DataSet.FieldByName('email').AsString);
end;

// parte 55179 - i
procedure TwFichaMetges.CalendariAMBeforeDelete(DataSet: TDataSet);
begin
    qInsLogCalAM.ParamByName('c_metge' ).AsString := DataSet.FieldByName('c_metge').AsString;
    qInsLogCalAM.ParamByName('dia'   ).AsDateTime := DataSet.FieldByName('dia').AsDateTime;
    qInsLogCalAM.ParamByName('tipus'   ).AsString := DataSet.FieldByName('tipus').AsString;
    qInsLogCalAM.ParamByName('C_USUARI').AsString := 'P99';

    TRY qInsLogCalAM.ExecSQL;
    EXCEPT on E : Exception do FerError(E.Message, TRUE);
    END;
    bLogCalAM.Refresh;
end;
// parte 55179 - f

function TwFichaMetges.SensePunts(numc: String):String;
var
 i: Integer;
 c: String;
begin
  i:=1; Result:='';
  while (i<=len(numc)) do
  begin
      c:=Copy(numc,i,1);
      if c<>'.' then Result:=Result+c;
      i:=i+1;
  end;
end;

procedure TwFichaMetges.sbTreurePuntsNCClick(Sender: TObject);
var
  opcio,i: Integer;
  ncSP: String;
  qMetge: TQuery;
begin
  // traiem els punts dels NC
  opcio:=AvisoLista('Tria''n l''opció:',['1.Visualitza''n el resultat','2.Actualitza els NC']);
  if opcio=-1 then Exit;

  WaitOn(' Processant dades . . . ');
  qMetge := TQuery.Create(Application);
  qMetge.DatabaseName := wData.Gdb.DatabaseName;
  qMetge.SQL.Text := 'select codi,nc from metges where (nc is not null) and (nc like "%.%") order by codi';
  qMetge.Open;
  qMetge.First; mLog.Lines.Clear; ncSP:=''; i:=0;
  while not qMetge.Eof do
  begin
     ncSP:=SensePunts(qMetge.FieldByName('nc').AsString);
     mLog.Lines.Add('Codi: '+qMetge.FieldByName('codi').AsString+' NC antic: '+qMetge.FieldByName('nc').AsString+' NC nou: '+ncSP);
     if opcio=1 then
     begin
         TRY GutExecute('update metges set nc="%s" where codi="%s"',[ncSP,qMetge.FieldByName('codi').AsString]);
             i:=i+1;
         FINALLY END;
     end;
     qMetge.Next;
  end;
  qMetge.Close;
  qMetge.Free;
  WaitOff;
  if (i>0) then mLog.Lines.Add(Format('Modificats %d NC''s.',[i]));
  mLog.Lines.SaveToFile('C:\Treure punts a NC.txt');
  ShowMessage('Generat fitxer de LOG "C:\Treure punts a NC.txt"');
end;

procedure TwFichaMetges.HYBarra1AlInsertar(Sender: TObject);
begin
    ShowMessage('Recordeu que els nous usuaris s''han de crear des del programa CLAUS DE PAS.');
    HYBarra1.DataSource.DataSet.Insert;    
end;

procedure TwFichaMetges.QRDBText3Print(sender: TObject; var Value: String);
var
 i: Integer;
begin
//  Value:=Value+'@guttmann.com';
 i:=Pos('@',Value);
 Value:=Copy(Value,1,i-1);
end;

procedure TwFichaMetges.PrintOrNot(sender: TObject; var Value: String);
begin
  if NotPrint then Value := '';
end;

procedure TwFichaMetges.cbNoMailClick(Sender: TObject);
begin
    Metge.Edicion;

    // podríem fer una funció per inicialitzar el mail amb inicial+cognom i comprovar que no el tingui ningú altre
    //...//

    if cbNoMail.Checked then Metge.FieldByName('Email').AsString := '@fake.com'
                        else Metge.FieldByName('Email').AsString := '@guttmann.com';
end;

procedure TwFichaMetges.sbCalculaNCClick(Sender: TObject);
var
  DC: Integer;
begin
    if (Length(Trim(Metge.FieldByName('NC').AsString)) = 5)
    and (Length(Metge.FieldByName('C_Prov').AsString) = 2)
    and not Metge.FieldByName('Especial_Digit_NC_SCS').IsNull
    then begin
        if not (Metge.State in [dsEdit, dsInsert]) then Metge.Edicion;

        DC := StrToInt(Metge.FieldByName('C_Prov').AsString + Trim(Metge.FieldByName('NC').AsString)) mod 9;

        Metge.FieldByName('NMetgeRecepta').AsString := Metge.FieldByName('Especial_Digit_NC_SCS').AsString +
                                                       Metge.FieldByName('C_Prov').AsString +
                                                       Trim(Metge.FieldByName('NC').AsString) +
                                                       IntToStr(DC);
    end;
end;

procedure TwFichaMetges.bSyncFotosClick(Sender: TObject);
var
    filename: string;
    memo: TStrings;
    conta: integer;
begin
      memo := TStringList.Create;
      try
        qSyncFotos.Open;
        qSyncFotos.First;
        conta:=0;
        memo.Add(' ');
        while not qSyncFotos.Eof do
        begin
            filename := wDataImatges.GetFileNameFotoMetge(qSyncFotos.fieldByName('email').AsString);
            if (FileExists(filename)) then
            begin
                memo.Add(qSyncFotos.fieldbyname('NOMSENCER').AsString + '   (' + ExtractFileName(filename) + ')');
                inc(conta,1);
            end;
            qSyncFotos.Next;
        end;
        memo.Insert(0,IntToStr(conta)+' noves fotos trovades en :'+RUTA_FOTOS_EMPLEATS_INTRANET_PASSAR);
        ShowMensaje(memo.Text,500,false);

        if (conta>0) and (AvisoSN('Es sincronitzaran totes les fotos amb la carpeta '+RUTA_FOTOS_EMPLEATS_INTRANET_PASSAR+NLine+'Continuar?')) then
        begin

          WaitON('sincronitzant fotos');
          memo.Clear;
          try
            qSyncFotos.First;
            while not qSyncFotos.Eof do
            begin
                filename := wDataImatges.GetFileNameFotoMetge(qSyncFotos.fieldByName('email').AsString);
                if (FileExists(filename)) then
                begin
                    try
                      wDataImatges.SaveFotoMetge(filename,qSyncFotos.fieldbyname('codi').asstring);
                      memo.Add(' '+ExtractFileName(filename)+' [ok]');
                    except on E : Exception do
                      memo.Add('*'+ExtractFileName(filename)+' ['+E.Message+']');
                    end;
                end;
                qSyncFotos.Next;
            end;
          finally
           WaitOff();
           ShowMensaje(memo.Text,500,false);
          end;
        end;

      finally
       memo.Free;
      end;
      qSyncFotos.Close;

//      qFotos.Close;
//      qFotos.Open;
//      qrFotos.Preview;

end;

procedure TwFichaMetges.JvDBImage2DblClick(Sender: TObject);
begin
    if Metge.EstaEditando then
    begin
        Aviso('No es pot posar la foto amb la fitxa de metge editant');
        Exit;
    end;

    OpenPictureDialog1.InitialDir := RUTA_FOTOS_EMPLEATS_INTRANET_PASSAR;
    if OpenPictureDialog1.Execute then
    begin
        wDataImatges.SaveFotoMetge(OpenPictureDialog1.FileName,Metge.FieldByName('codi').AsString);
        Metge.Refresh;
    end;
end;

procedure TwFichaMetges.MetgeAlConsultarCampoFiltro2(Sender: TObject;
  var Personalizada: Boolean; NombreConsulta: String;
  var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
  Personalizada := False;

  if  (NombreConsulta = 't_doc')
  and ((Metge.FieldByName('C_GRUP').AsString = 'ME') or (Metge.FieldByName('C_GRUP').AsString = 'UN'))
  then SubFiltro := '(r_codi is not null OR (r_codi <> ""))';
end;

end.


