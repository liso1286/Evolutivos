unit FichaOrtesis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, HYSql, HYEdit, StdCtrls, HYPanels, Buttons, ExtCtrls,
  ComCtrls, DBCtrls, Grids, DBGrids, HYGrids, HYLabel,  Mask, QrAngLbl, Math,
  HYDialogConsulta, kbmMemTable, Spin, Variants, QRCtrls, QuickRpt, HYCalendari,
  Hy_Misc, Data;

type
  TwFichaOrtesis = class(TForm)
    qDades: THYSqlQuery;
    dsDades: TDataSource;
    HYBarra2: THYBarra;
    SpeedButton1: TSpeedButton;
    AreaCabecera: THYArea;
    Ed_InterCon_INGRES: THYEdit;
    Ed_InterCon_PRESTACIO: THYEdit;
    Ed_InterCon_DATA_S: THYEdit;
    Ed_InterCon_METGE_S: THYEdit;
    Ed_InterCon_HISTORIA: THYEdit;
    Ed_InterCon_NOM_COMPLET: THYEdit;
    Ed_InterCon_UNITAT: THYEdit;
    Ed_InterCon_PLANTA: THYEdit;
    Ed_InterCon_LLIT: THYEdit;
    Ed_InterCon_TITOLPROVA: THYEdit;
    Ed_Fili_EDAT: THYEdit;
    Ed_qDades_C_COORDINADOR: THYEdit;
    HYEdit1: THYEdit;
    edEstatOrtesi: THYEdit;
    Ortesis1: THYSqlTable;
    Ortesis1_C_Intercon: TIntegerField;
    Ortesis1_Indicacions: TMemoField;
    Ortesis1_Data_Indica: TDateTimeField;
    Ortesis1_C_MetgeIndica: TStringField;
    Ortesis1_FullSolicitud: TMemoField;
    Ortesis1_Impres: TDateTimeField;
    dsOrte1: TDataSource;
    OrtesisLin: THYSqlBrowse;
    dsOrte2: TDataSource;
    OrtesisLin_C_Intercon: TIntegerField;
    OrtesisLin_C_Ortesis: TStringField;
    OrtesisLin_Albara: TStringField;
    OrtesisLin_C_Prov: TStringField;
    OrtesisLin_Data_FacProv: TDateTimeField;
    OrtesisLin_Data_FacCli: TDateTimeField;
    OrtesisLin_C_CentreFac: TStringField;
    OrtesisLin_C_Client: TStringField;
    OrtesisLin_C_Delegacio: TStringField;
    OrtesisLin_PercentatgePacient: TFloatField;
    OrtesisLin_Referencia: TStringField;
    OrtesisLin_EstatFac: TSmallintField;
    OrtesisLin_EstatFacProv: TSmallintField;
    OrtesisLin_AportacioPacient: TStringField;
    OrtesisLin_C_CentreFac2: TStringField;
    OrtesisLin_C_Client2: TStringField;
    OrtesisLin_C_Delega2: TStringField;
    OrtesisLin_C_EstatFac2: TSmallintField;
    OrtesisLin_Referencia2: TStringField;
    OrtesisLin_Preu2: TFloatField;
    Tabs: TPageControl;
    tOrtesis: TTabSheet;
    tCatalegs: TTabSheet;
    tReport: TTabSheet;
    HYArea2: THYArea;
    Panel1: TPanel;
    HYBarra1: THYBarra;
    AreaElements: THYArea;
    qFacParams: TQuery;
    Ed_Ortesis1_C_Ortesis: THYEdit;
    OrtesisLin_IvaVenta: TFloatField;
    Ed_Ortesis2_C_Cataleg: THYEdit;
    TabSheet1: TTabSheet;
    HYGrid1: THYGrid;
    Splitter1: TSplitter;
    Panel2: TPanel;
    HYBarra3: THYBarra;
    AreaFactu: THYArea;
    HYGrid2: THYGrid;
    Ortesis1_Data_Conformitat: TDateTimeField;
    OrtesisLin_Data_CobroPacient: TDateTimeField;
    TabSheet3: TTabSheet;
    Splitter2: TSplitter;
    HYGrid4: THYGrid;
    Splitter4: TSplitter;
    Panel4: TPanel;
    HYBarra5: THYBarra;
    AreaPacient: THYArea;
    HYLabel13: THYLabel;
    HYLabel14: THYLabel;
    HYLabel17: THYLabel;
    HYCheck2: THYCheck;
    HYEdit26: THYEdit;
    HYEdit28: THYEdit;
    HYEdit29: THYEdit;
    HYEdit31: THYEdit;
    HYEdit32: THYEdit;
    Ed_Ortesis2_Data_CobroPacient: THYEdit;
    OrtesisLin_IvaCompra: TFloatField;
    ScrollBox1: TScrollBox;
    QReport: TQuickRep;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRSysData2: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
    QRDBText53: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape6: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel39: TQRLabel;
    QRShape7: TQRShape;
    QRLabel41: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText45: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText44: TQRDBText;
    QRLabel44: TQRLabel;
    QRShape8: TQRShape;
    QRLabel46: TQRLabel;
    QRDBText52: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText54: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText55: TQRDBText;
    QRDBText58: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel33: TQRLabel;
    QRShape4: TQRShape;
    QRLabel34: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText38: TQRDBText;
    ChildBand2: TQRChildBand;
    QRAngledLabel2: TQRAngledLabel;
    QRDBRichText2: TQRDBRichText;
    Ortesis1_N_DiagnosticNeurologic: TStringField;
    Nota: TDBMemo;
    Label1: TLabel;
    Ed_Ortesis1_Observacions: THYEdit;
    OrtesisLin_PreuVenta: TFloatField;
    OrtesisLin_Observacions: TStringField;
    OrtesisLin_Notes: TMemoField;
    OrtesisLin_TeNotes: TStringField;
    OrtesisLin_Data_Comanda: TDateTimeField;
    OrtesisLin_PreuCompra: TFloatField;
    HYMemo1: THYMemo;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    Label4: TLabel;
    HYMemo2: THYMemo;
    bAnula: TSpeedButton;
    OrtesisLin_AlbaraPacient: TStringField;
    Ed_Ortesis2_AlbaraPacient: THYEdit;
    qAnula: TQuery;
    QRLabel26: TQRLabel;
    QRDBText17: TQRDBText;
    ChildBand3: TQRChildBand;
    QRAngledLabel1: TQRAngledLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel27: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText31: TQRDBText;
    bGenerarAlba: TBitBtn;
    cAporta: THYConsulta;
    mtAporta: TkbmMemTable;
    mtAportaC_HISTORIA: TIntegerField;
    mtAportaC_OrtesisLin: TIntegerField;
    mtAportaN_Ortesis2: TStringField;
    mtAportaPreu2: TFloatField;
    mtAportaC_CentreFac2: TStringField;
    bPrevisualitzarAlba: TBitBtn;
    chImprimiralCrear: TCheckBox;
    mtAportaAlbaraPacient: TStringField;
    qBuscaAlba: TQuery;
    qBuscaAlbaN_Ortesis: TStringField;
    qBuscaAlbaPREU2: TFloatField;
    qBuscaAlbaC_HISTORIA: TIntegerField;
    qBuscaAlbaREFERENCIA2: TStringField;
    qBuscaAlbaALBARAPACIENT: TStringField;
    qBuscaAlbaC_CENTREFAC2: TStringField;
    mtAportaREFERENCIA2: TStringField;
    cFullSolicitud: THYConsulta;
    mtFull: TkbmMemTable;
    StringField2: TStringField;
    OrtesisLin_Data_PeticioMutua: TDateTimeField;
    OrtesisLin_Data_ConformitatMutua: TDateTimeField;
    Ed_Ortesis2_Data_PeticioMutua: THYEdit;
    Ed_Ortesis2_Data_ConformitatMutua: THYEdit;
    SpeedButton2: TSpeedButton;
    mtFullC_Intercon: TIntegerField;
    mtFullC_Ortesis: TStringField;
    mtFullC_OrtesisLin: TIntegerField;
    bImprimirAlba: TBitBtn;
    Bevel1: TBevel;
    seCopiasAlba: TSpinEdit;
    Label6: TLabel;
    bVeureFullMutua: TBitBtn;
    groupProv: TGroupBox;
    HYLabel15: THYLabel;
    HYLabel16: THYLabel;
    edFacturaProv: THYEdit;
    HYEdit38: THYEdit;
    edDataFacProv: THYEdit;
    HYEdit40: THYEdit;
    joredIvaCompra: THYEdit;
    jorEdPreuCompra: THYEdit;
    GroupBox2: TGroupBox;
    HYLabel1: THYLabel;
    HYLabel2: THYLabel;
    HYLabel3: THYLabel;
    Label2: TLabel;
    HYEdit27: THYEdit;
    HYEdit4: THYEdit;
    HYEdit7: THYEdit;
    HYEdit8: THYEdit;
    HYEdit9: THYEdit;
    HYEdit11: THYEdit;
    HYEdit12: THYEdit;
    HYEdit14: THYEdit;
    DBEdit1: TDBEdit;
    Preus: TBitBtn;
    cOrtesis: THYConsulta;
    qDadesTract: TQuery;
    OrtesisLin_C_EstatRappel: TStringField;
    Ortesis1_N_Grup: TStringField;
    Ortesis1_C_Grup: TIntegerField;
    OrtesisLin_C_OrtesisLin: TIntegerField;
    OrtesisLin_CodiServei: TStringField;
    OrtesisLin_N_Ortesis: TStringField;
    HYEdit5: THYEdit;
    qAnulaIntercon: TQuery;
    bCodificar: TButton;
    HYMemo3: THYMemo;
    Eti_OrtesisLin_Ortesis_CodiServei: THYLabel;
    cOrtesis2: THYConsulta;
    mtFullSOLICITA: TMemoField;
    qSolicita: TQuery;
    mtFullPreu: TCurrencyField;
    OrtesisLin_Data_Liqui: TDateTimeField;
    OrtesisLin_Old_Ortesis: TStringField;
    OrtesisLin_Old_ElementOrtesis: TSmallintField;
    OrtesisLin_Data_Conta: TDateTimeField;
    OrtesisLin_Antic: TStringField;
    mtAportaN_Ortesis3: TStringField;
    qBuscaAlbaN_ORTESIS2: TStringField;
    dsOrteReg: TDataSource;
    OrtesisReg: THYSqlBrowse;
    eCapClinic: THYEdit;
    eMetge: THYEdit;
    eDataValida: THYEdit;
    OrtesisReg_C_Intercon: TIntegerField;
    OrtesisReg_Ordre: TIntegerField;
    OrtesisReg_Tipus: TSmallintField;
    OrtesisReg_C_Usuari: TStringField;
    OrtesisReg_Data: TDateTimeField;
    OrtesisReg_Text: TMemoField;
    OrtesisReg_C0_0: TSmallintField;
    OrtesisReg_C0_1: TStringField;
    OrtesisReg_C1_0: TStringField;
    OrtesisReg_C1_1: TStringField;
    OrtesisReg_C1_2: TStringField;
    OrtesisReg_C1_3: TStringField;
    OrtesisReg_C1_4: TStringField;
    OrtesisReg_C1_5: TStringField;
    OrtesisReg_C1_6: TStringField;
    OrtesisReg_C1_7: TIntegerField;
    OrtesisReg_C1_8: TStringField;
    OrtesisReg_C1_9: TStringField;
    qOrteReg: TQuery;
    Ed_OrtesisLin_Data_Comanda: THYEdit;
    qDadesDATA_INGRES: TDateTimeField;
    qDadesC_PRESTACIO: TStringField;
    qDadesC_COORDINADOR: TStringField;
    qDadesC_PLANTA: TStringField;
    qDadesC_LLIT: TStringField;
    qDadesC_HISTORIA: TIntegerField;
    qDadesNOMCOMPLET: TStringField;
    qDadesUNITAT: TSmallintField;
    qDadesEDAT: TIntegerField;
    qDadesTELEFONO: TStringField;
    qDadesPOBLACIO: TStringField;
    qDadesADRESA: TStringField;
    qDadesDNI: TStringField;
    qDadesN_DIAGNOSTICNEUROLOGIC: TStringField;
    qDadesSEXO: TStringField;
    qDadesDATA1: TDateTimeField;
    qDadesC_METGE1: TStringField;
    qDadesSOLICITA: TMemoField;
    qDadesRESPOSTA: TMemoField;
    qDadesESTAT: TIntegerField;
    qDadesFET: TStringField;
    qDadesNOM_METGE: TStringField;
    qDadesTRACTE_METGE: TStringField;
    qDadesCOGNOM_METGE: TStringField;
    Ortesis1_ControlProces: TStringField;
    cbControlProces: THYCheck;
    bNoGestiona: TSpeedButton;
    lDataEntrega: TLabel;
    eDataEntrega: TEdit;
    Panel3: TPanel;
    DBMemo2: TDBMemo;
    Label5: TLabel;
    bEntregar: TSpeedButton;
    qInsInterconOrtesisReg: TQuery;
    qDadesC_INTERCON: TIntegerField;
    qDadesESTAT_ORTESI: TSmallintField;
    qDadesD_ORTO_ENVIA: TDateTimeField;
    qDadesD_ORTO_ANULA: TDateTimeField;
    qDadesN_CODI: TStringField;
    OrtesisLin_Preu_Oferta: TFloatField;
    qDadesD_ORTO_ENVIA_1: TDateTimeField;
    qDadesORTO_UPDATED: TSmallintField;
    qDadesMOTIU_DEN: TStringField;
    Shape1: TShape;
    bEnviaOrto: TSpeedButton;
    bAnulaOrto: TSpeedButton;
    bRefrescaOrto: TSpeedButton;
    bOfertaVista: TSpeedButton;
    sbPreusOK: TSpeedButton;
    sbPreusNOOK: TSpeedButton;
    HYEdit3: THYEdit;
    HYEdit6: THYEdit;
    HYEdit10: THYEdit;
    MotiuDen: THYEdit;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    mgcMotiuDen: THyMoveGroupControl;
    sbOK: TSpeedButton;
    sbCancel: TSpeedButton;
    motiuD: TMemo;
    mtFullCodiServei: TStringField;
    qDadesTSI: TStringField;
    qDadesN_UNITATM: TStringField;
    qDadesNMETGERECEPTA: TStringField;
    qDiags: TQuery;
    qDadesC_TRACTAMENT: TIntegerField;
    tGarants: ThySqlTable;
    StringField1: TStringField;
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
    tGarants_RELACIO: TStringField;
    dsGarants: TDataSource;
    OrtesisLin_Id_Garant: TIntegerField;
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
    mgcGarant: THyMoveGroupControl;
    HYArea1: THYArea;
    Eti_Garants_Pais_N_Pais: THYLabel;
    Eti_Garants_TipusDoc_N_Codi: THYLabel;
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
    Ed_Garants_CODIGO: THYEdit;
    Ed_tGarants_ADRESA: THYEdit;
    Ed_tGarants_RELACIO: THYEdit;
    HYBarra4: THYBarra;
    qDadesID_GARANT: TIntegerField;
    pGarantDades: TPanel;
    sGarant: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Eti_OrtesisLin_Garant_COGNOM1: THYLabel;
    Eti_OrtesisLin_Garant_COGNOM2: THYLabel;
    Eti_OrtesisLin_Garant_NOM: THYLabel;
    Eti_OrtesisLin_Garant_DNI: THYLabel;
    Eti_OrtesisLin_Garant_ADRESA: THYLabel;
    Eti_OrtesisLin_Garant_RELACIO: THYLabel;
    bModificarGarant: TButton;
    Ed_OrtesisLin_Id_Garant: THYEdit;
    bNouGarant: TButton;
    pGarant: TPanel;
    Shape2: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    HYLabel5: THYLabel;
    HYLabel6: THYLabel;
    HYLabel7: THYLabel;
    HYLabel8: THYLabel;
    HYLabel9: THYLabel;
    HYLabel10: THYLabel;
    Button1: TButton;
    HYEdit15: THYEdit;
    Button2: TButton;
    Label13: TLabel;
    Ortesis1_Estat_PAOS: TStringField;
    Ortesis1_N_Expedient: TStringField;
    Ortesis1_SITUACIO_EXP: TStringField;
    Shape3: TShape;
    Ed_Ortesis1_Estat_PAOS: THYEdit;
    Ed_Ortesis1_N_Expedient: THYEdit;
    Ed_Ortesis1_SITUACIO_EXP: THYEdit;
    Eti_Ortesis1_EstatPAOS_N_Codi: THYLabel;
    Eti_Ortesis1_SituacioPAOS_N_Codi: THYLabel;
    Label20: TLabel;
    sbModificaEntrega: TSpeedButton;
    bRecupera: TSpeedButton;
    Ortesis1_Reposicio: TStringField;
    Ortesis1_Validacio: TStringField;
    Ortesis1_Presencial: TStringField;
    Label21: TLabel;
    Shape4: TShape;
    Ed_Ortesis1_Reposicio: THYCheck;
    Ed_Ortesis1_Validacio: THYCheck;
    Ed_Ortesis1_Presencial: THYCheck;
    Ortesis1_C0_0: TIntegerField;
    Ortesis1_C0_1: TStringField;
    Ortesis1_C0_2: TStringField;
    Ortesis1_C1_0: TStringField;
    Ortesis1_C1_1: TStringField;
    Ortesis1_C2_0: TStringField;
    Ortesis1_C2_1: TStringField;
    Panel5: TPanel;
    HYLabel11: THYLabel;
    HYEdit2: THYEdit;
    Panel6: TPanel;
    HYEdit13: THYEdit;
    HYLabel4: THYLabel;
    qDadesINDICADOR_FARMACIA: TStringField;
    qDadesN_CODI_1: TStringField;
    edIndicadorFarmacia: THYEdit;
    HYLabel12: THYLabel;
    OrtesisLin_C0_0: TStringField;
    OrtesisLin_C0_1: TStringField;
    OrtesisLin_C0_2: TStringField;
    OrtesisLin_C0_3: TStringField;
    OrtesisLin_C0_4: TStringField;
    OrtesisLin_C0_5: TStringField;
    OrtesisLin_C0_6: TSmallintField;
    OrtesisLin_C0_7: TStringField;
    OrtesisLin_C1_0: TStringField;
    OrtesisLin_C1_1: TStringField;
    OrtesisLin_C1_2: TStringField;
    OrtesisLin_C2_0: TStringField;
    OrtesisLin_C2_1: TStringField;
    OrtesisLin_C2_2: TStringField;
    OrtesisLin_C2_3: TStringField;
    OrtesisLin_C2_4: TStringField;
    OrtesisLin_C2_5: TStringField;
    OrtesisLin_C3_0: TStringField;
    OrtesisLin_C3_1: TStringField;
    OrtesisLin_C3_2: TStringField;
    OrtesisLin_C3_3: TStringField;
    OrtesisLin_C3_4: TStringField;
    OrtesisLin_C3_5: TStringField;
    OrtesisLin_C3_6: TStringField;
    OrtesisLin_C3_7: TStringField;
    OrtesisLin_C3_8: TStringField;
    OrtesisLin_C3_9: TStringField;
    OrtesisLin_C3_10: TStringField;
    OrtesisLin_C3_11: TStringField;
    OrtesisLin_C3_12: TStringField;
    OrtesisLin_C3_13: TFloatField;
    OrtesisLin_C3_14: TIntegerField;
    OrtesisLin_C3_15: TStringField;
    OrtesisLin_C3_16: TIntegerField;
    OrtesisLin_C3_17: TStringField;
    OrtesisLin_C4_0: TSmallintField;
    OrtesisLin_C4_1: TStringField;
    OrtesisLin_C4_2: TSmallintField;
    OrtesisLin_C4_3: TStringField;
    OrtesisLin_C4_4: TStringField;
    OrtesisLin_C4_5: TStringField;
    OrtesisLin_C5_0: TSmallintField;
    OrtesisLin_C5_1: TStringField;
    OrtesisLin_C5_2: TSmallintField;
    OrtesisLin_C5_3: TStringField;
    OrtesisLin_C5_4: TStringField;
    OrtesisLin_C5_5: TStringField;
    OrtesisLin_C6_0: TStringField;
    OrtesisLin_C6_1: TStringField;
    OrtesisLin_C6_2: TStringField;
    OrtesisLin_C7_0: TStringField;
    OrtesisLin_C7_1: TStringField;
    OrtesisLin_C7_2: TStringField;
    OrtesisLin_C7_3: TStringField;
    OrtesisLin_C7_4: TStringField;
    OrtesisLin_C7_5: TStringField;
    OrtesisLin_C8_0: TStringField;
    OrtesisLin_C8_1: TStringField;
    OrtesisLin_C8_2: TStringField;
    OrtesisLin_C8_3: TStringField;
    OrtesisLin_C8_4: TStringField;
    OrtesisLin_C8_5: TStringField;
    OrtesisLin_C8_6: TStringField;
    OrtesisLin_C8_7: TStringField;
    OrtesisLin_C8_8: TStringField;
    OrtesisLin_C8_9: TStringField;
    OrtesisLin_C8_10: TStringField;
    OrtesisLin_C8_11: TStringField;
    OrtesisLin_C8_12: TStringField;
    OrtesisLin_C8_13: TFloatField;
    OrtesisLin_C8_14: TIntegerField;
    OrtesisLin_C8_15: TStringField;
    OrtesisLin_C8_16: TIntegerField;
    OrtesisLin_C8_17: TStringField;
    OrtesisLin_C9_0: TSmallintField;
    OrtesisLin_C9_1: TStringField;
    OrtesisLin_C9_2: TSmallintField;
    OrtesisLin_C9_3: TStringField;
    OrtesisLin_C9_4: TStringField;
    OrtesisLin_C9_5: TStringField;
    OrtesisLin_C10_0: TStringField;
    OrtesisLin_C10_1: TStringField;
    OrtesisLin_C10_2: TStringField;
    OrtesisLin_C10_3: TStringField;
    OrtesisLin_C10_4: TSmallintField;
    OrtesisLin_C10_5: TFloatField;
    OrtesisLin_C10_6: TFloatField;
    OrtesisLin_C11_0: TStringField;
    OrtesisLin_C11_1: TStringField;
    OrtesisLin_C11_2: TStringField;
    OrtesisLin_C11_3: TStringField;
    OrtesisLin_C12_0: TIntegerField;
    OrtesisLin_C12_1: TStringField;
    OrtesisLin_C12_2: TStringField;
    OrtesisLin_C12_3: TStringField;
    OrtesisLin_C12_4: TStringField;
    OrtesisLin_C12_5: TStringField;
    OrtesisLin_C12_6: TStringField;
    OrtesisLin_C12_7: TStringField;
    OrtesisLin_C12_8: TStringField;
    OrtesisLin_C12_9: TStringField;
    OrtesisLin_C12_10: TStringField;
    OrtesisLin_C12_11: TStringField;
    OrtesisLin_C12_12: TStringField;
    OrtesisLin_C12_13: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bRefrescaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure NotaChange(Sender: TObject);
    procedure OrtesisLinBeforePost(DataSet: TDataSet);
    procedure OrtesisLinAfterScroll(DataSet: TDataSet);
    procedure bAnulaClick(Sender: TObject);
    procedure ChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText22Print(sender: TObject; var Value: String);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bGenerarAlbaClick(Sender: TObject);
    procedure cAportaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure bPrevisualitzarAlbaClick(Sender: TObject);
    procedure cFullSolicitudAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure Ortesis1AfterScroll(DataSet: TDataSet);
    procedure bVeureFullMutuaClick(Sender: TObject);
    procedure PreusClick(Sender: TObject);
    procedure HYBarra3AlInsertar(Sender: TObject);
    procedure cOrtesisAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure Ortesis1AfterPost(DataSet: TDataSet);
    procedure OrtesisLinAfterPost(DataSet: TDataSet);
    procedure HYBarra1AlBorrar(Sender: TObject);
    procedure bCodificarClick(Sender: TObject);
    procedure cOrtesis2AlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure bEntregarClick(Sender: TObject);
    procedure Ortesis1BeforePost(DataSet: TDataSet);
    procedure Ortesis1AfterCancel(DataSet: TDataSet);
    procedure bEnviaOrtoClick(Sender: TObject);
    procedure bAnulaOrtoClick(Sender: TObject);
    procedure qDadesAfterScroll(DataSet: TDataSet);
    procedure PotEditar(DataSet: TDataSet);
    procedure bRefrescaOrtoClick(Sender: TObject);
    procedure bOfertaVistaClick(Sender: TObject);
    procedure sbPreusOKClick(Sender: TObject);
    procedure sbPreusNOOKClick(Sender: TObject);
    procedure sbOKClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure OrtesisRegAfterPost(DataSet: TDataSet);
    procedure bModificarGarantClick(Sender: TObject);
    procedure HYBarra4AlCancel(Sender: TObject);
    procedure tGarantsAfterInsert(DataSet: TDataSet);
    procedure tGarantsAfterPost(DataSet: TDataSet);
    procedure tGarantsAlConsultarCampoFiltro2(Sender: TObject;
      var Personalizada: Boolean; NombreConsulta: String;
      var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure cPoblacionsGAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure bNouGarantClick(Sender: TObject);
    procedure tGarantsBeforePost(DataSet: TDataSet);
    procedure HYEdit7Exit(Sender: TObject);
    procedure HYEdit26Exit(Sender: TObject);
    procedure sbModificaEntregaClick(Sender: TObject);
    procedure bRecuperaClick(Sender: TObject);
  private
    //--->>---->>---Variables per a la introducció de preus venta/compra ortesis
    Seguir,OrtesisFacturada: Boolean;
    iv, pv, pvi, ic, pc, pci, pMax: Currency;
    Solicituds:String;
    Canvis: String;
//VFO-I. -  PARTE 30988
    ordre : integer;
//VFO-F.
    Metge: TMetge;
    entregant: boolean;
    ModificantGarant: Boolean;
    procedure ActualizarListadoOrtesis;
    //--<<-----<<---Variables per a la introducció de preus venta/compra ortesis
    procedure CanviaEstatOrtesi(intercon,estat:integer;motiu: string=''); //PARTE 41220
  public
    Procedure Inicializa(C_Intercon: Integer; C_Ortesis:String; C_OrtesisLin:Integer = -1; SoloLectura: Boolean = False);
  end;

var
  wFichaOrtesis: TwFichaOrtesis;

implementation

uses DataInterCon, DataFactu, PrintRtfLogo, Funciones,
  DialogAvisImportant, Main, DialegFullSolicitudOrtesis,
  DialegIntroduccioPreusOrtesis, FichaListOrtesis, DataCobro, DataOrtesis;

{$R *.DFM}

procedure TwFichaOrtesis.Inicializa(C_Intercon: Integer; C_Ortesis: String; C_OrtesisLin: Integer = -1; SoloLectura: Boolean = False);
var
   dEntrega : Tdatetime;
begin
     qDades.Close;
     qDades.ParamByName('C_Intercon').AsInteger := C_Intercon;
     qDades.Open;

     Ortesis1.Open;
     Ortesis1.FindKey(VarArrayOf([C_Intercon,C_Ortesis]));

     OrtesisLin.Open;
     OrtesisLin.ParamByName('C_Intercon').AsInteger := C_Intercon;
     OrtesisLin.Refresh;

     OrtesisReg.Open;
     OrtesisReg.ParamByName('c_intercon').AsInteger := C_intercon;
     OrtesisReg.Refresh;
     OrtesisReg.Locate('TIPUS',202,[]);

     // 30-10-2015: no permetre afegir ortesis si ja està facturada
     OrtesisFacturada := GutSelect('select count(*) from INTERCONORTESISLIN where C_INTERCON=%d and ESTATFAC=80',[C_intercon]) > 0;

     qFacParams.Close;
     qFacParams.ParamByName('C_CentreFac' ).AsString := OrtesisLin.FieldByName('C_CentreFac').AsString;
     qFacParams.ParamByName('C_Client'    ).AsString := OrtesisLin.FieldByName('C_Client'   ).AsString;
     qFacParams.ParamByName('C_Delegacio' ).AsString := OrtesisLin.FieldByName('C_Delegacio').AsString;
     qFacParams.ParamByName('C_Historia'  ).AsInteger:= qDades.FieldByName('C_Historia').AsInteger;
     qFacParams.Open;

     OrtesisLin.First;
     while not ortesisLin.eof do
     begin

         if bAnula.Enabled then
         bAnula.Enabled := (    qDades.FieldByName('Estat'        ).AsInteger in [10,11]) and
                           (OrtesisLin.FieldByName('EstatFac'     ).AsInteger < 80) and
                           (OrtesisLin.FieldByName('C_EstatFac2'  ).AsInteger < 80) and
                           (OrtesisLin.FieldByName('EstatFacProv' ).AsInteger < 80) and
                           (OrtesisLin.FieldByName('C_EstatRappel').AsInteger < 80);

         bNoGestiona.Enabled := bAnula.Enabled;
         cbControlProces.Enabled := bAnula.Enabled;
         bRecupera.Enabled := (qDades.FieldByName('Estat').AsInteger in [84,85]);

         bCodificar.Enabled := (qDades.FieldByName('Estat').AsInteger in [10,11,46,213]) and
                               (OrtesisLin.FieldByName('EstatFac').AsInteger < 80 );

         OrtesisLin.Next;
     end;
     OrtesisLin.First;

     if C_OrtesisLin <> -1
     then OrtesisLin.FindKey(VarArrayOf([C_OrtesisLin]));

     Ortesis1.ReadOnly      := SoloLectura;
     OrtesisLin.ReadOnly    := SoloLectura;

     dEntrega := GUTSELECT('select data from INTERCONORTESISREG where c_intercon = %d and tipus = 206', [C_Intercon]);
     if (dEntrega = 0) then eDataEntrega.Text := ''
                       else eDataEntrega.Text := FormatDateTime('dd/mm/yyyy', dEntrega);

     bEntregar.Enabled := (qDades.FieldByName('Estat').AsInteger in [10,11,213]);    // pendent d'entregar (10: petició pendent de validar; 11: petició validada; 213: entrega denegada i demanats canvis)

     sbModificaEntrega.Visible := (not bEntregar.Enabled) and TeDretMetge(wData.UsuariActiu.Codi, [213]);

     bEnviaOrto.Enabled:= ((Ortesislin.FieldByName('c_prov').AsString = '16') or (Ortesislin.FieldByName('c_prov').AsString = '19'))
                       and (qDades.fieldbyname('estat_ortesi').AsString = '')
                       and (qDades.FieldByName('estat').AsInteger in [10,11]);

     // només es pot dir que s'estan mirant l'oferta si s'han rebut els preus
     bOfertaVista.Enabled := ((Ortesislin.FieldByName('c_prov').AsString = '16') or (Ortesislin.FieldByName('c_prov').AsString = '19'))
                          and (qDades.fieldbyname('estat_ortesi').AsInteger = 3)
                          and (qDades.FieldByName('estat').AsInteger in [10,11]);

     // només es pot acceptar/denegar una oferta si prèviament se l'ha estat mirant l'Elena.
     sbPreusOK.Enabled := ((Ortesislin.FieldByName('c_prov').AsString = '16') or (Ortesislin.FieldByName('c_prov').AsString = '19'))
                       and (qDades.fieldbyname('estat_ortesi').AsInteger = 4)
                       and (qDades.FieldByName('estat').AsInteger in [10,11]);
                         
     sbPreusNOOK.Enabled := sbPreusOK.Enabled;

     MotiuDen.Visible := (qDades.fieldbyname('estat_ortesi').AsInteger = 6);

     bAnulaOrto.Enabled:= (qDades.FieldByName('estat_ortesi').AsInteger < 50) and (qDades.FieldByName('estat').AsInteger in [10,11]);

end;

procedure TwFichaOrtesis.FormCreate(Sender: TObject);
begin
     mgcMotiuDen.Visible := False;
     Tabs.ActivePage := tOrtesis;
     Seguir := True;
     entregant:=False;

     if wData.UsuariActiu.Codi = '' then PreguntaMetge;
     if wData.UsuariActiu.Codi = '' then Close;
     wMain.StatusTraza := '';
     wMain.LastTraza := 0;



end;

procedure TwFichaOrtesis.FormCloseQuery(Sender: TObject;var CanClose: Boolean);
begin
     CanClose := Ortesis1.PuedeCerrar and OrtesisLin.PuedeCerrar;
end;

procedure TwFichaOrtesis.FormClose(Sender: TObject;var Action: TCloseAction);
var
  i: Integer;
begin
     if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);
     
     for i := 0 to Screen.FormCount - 1 do
     begin
        if Screen.Forms[i].Name = 'wFichaListOrtesis'
        then TwfichaListOrtesis(Screen.Forms[i]).Consulta.PanelGrid.Enabled := True;
     end;

     Action := caFree;
end;


procedure TwFichaOrtesis.cFullSolicitudAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  i:Integer;
  Interconsultes: String;
begin
     // Afegim les ortesis seleccionades a un memotable.
     Interconsultes := '';
     Canvis := '';
     if Sender.Grid.SelectedRows.Count > 0 then
     begin
         mtFull.Open;
         For i := 0 to Sender.Grid.SelectedRows.Count -1 do
         begin
            Datos.BookMark := Sender.Grid.SelectedRows[i];

            mtFull.Append;
            mtFull.FieldByName('C_Intercon'   ).assign(Datos.FieldByName('C_Intercon'  ));
            mtFull.FieldByName('C_OrtesisLin' ).assign(Datos.FieldByName('C_OrtesisLin'));
            mtFull.FieldByName('C_Ortesis'    ).assign(Datos.FieldByName('C_Ortesis'   ));
            mtFull.FieldByName('N_Ortesis'    ).assign(Datos.FieldByName('N_Ortesis'   ));
            mtFull.FieldByName('Preu'         ).assign(Datos.FieldByName('PreuCompra'  ));
            mtFull.FieldByName('CodiServei'   ).assign(Datos.FieldByName('CodiServei'  ));  // parte 59330
            mtFull.Post;

            Interconsultes := Interconsultes + Datos.FieldByName('C_Intercon').asString + ',';

            Canvis := Canvis + GutSelect('select TEXT from INTERCONORTESISREG where C_INTERCON = %d and TIPUS = 213 order by DATA desc',
                                         [Datos.FieldByName('C_INTERCON').AsInteger]) + #13;
         end;
         Interconsultes := copy(Interconsultes, 0, length(Interconsultes)-1);

         qSolicita.close;
         qSolicita.Sql.Text := Format('Select Data1, solicita from intercon where c_intercon in (%s)',[interconsultes]);
         qSolicita.Open;
         Solicituds := '';
         while not qSolicita.eof do
         begin
            Solicituds := Solicituds + 'Data Solicitud: ' + qSolicita.FieldbyName('Data1').asString+#13+qSolicita.FieldbyName('Solicita').asString+ #13;
            qSolicita.next;
         end;
         qSolicita.Close;

     end;
end;

procedure TwFichaOrtesis.bRefrescaClick(Sender: TObject);
var
   Catala: Boolean;
   sInforme, Cli, Delega, ORTESIS_SELECCIONADES,
   Diag, DiagS: String; // PARTE 59330
   Memoria : TMemoryStream;
   Tract: Integer;      // PARTE 59330
begin
     // Regenerar full de solicitud
     if OrtesisLin.FieldbyName('C_Client').isNull
     then Cli := 'AND A.C_CLIENT IS NULL'
     else Cli := 'AND A.C_CLIENT = "'+OrtesisLin.FieldbyName('C_Client').asString+'"';

     if OrtesisLin.FieldbyName('C_Delegacio' ).isNull
     then Delega := 'AND A.C_DELEGACIO IS NULL'
     else Delega := 'AND A.C_DELEGACIO = "'+OrtesisLin.FieldbyName('C_Delegacio').asString+'"';

     cFullSolicitud.SqlDic.Text := Format(cFullSolicitud.SqlDic.Text,
                                 [ qDades.FieldbyName ('C_Historia' ).asString,   //Historia
                                   OrtesisLin.FieldbyName('C_CentreFac').asString,//CF
                                   Cli,                                           //Client
                                   Delega                                         //Delegacio
                                 ]);
     cFullSolicitud.ExecuteModal;

     if (mtFull.Eof and mtFull.Bof) then Exit; // No han seleccionat res

     mtFull.First;
     ORTESIS_SELECCIONADES := '';
     while not mtFull.Eof do
     begin
       ORTESIS_SELECCIONADES := ORTESIS_SELECCIONADES + mtFull.Fieldbyname('N_Ortesis').asString+
                                '. Preu: ( '+FormatFloat('#,##0.00;;0', mtFull.Fieldbyname('Preu').asCurrency)+' € ).'+
                                ' Codi Servei: '+mtFull.FieldByName('CodiServei').AsString+   // parte 59330
                                NLINE;
       mtFull.Next;
       if not mtFull.Eof then ORTESIS_SELECCIONADES := ORTESIS_SELECCIONADES + '- ';
     end;

     Catala := qFacParams.FieldByName('C_Idioma').AsInteger <> 2;

     if Catala
     then sInforme := BuscaInforme('ORTESIS_SOLICITUD_MUTUA',1)
     else sInforme := BuscaInforme('ORTESIS_SOLICITUD_MUTUA',2);

     sInforme := Replace ('%NOM_CLIENT%'     , OrtesisLin.FieldByName('Client_N_Client'     ).AsString,sInforme);
     sInforme := Replace ('%DIR_DELEGACIO%'  , OrtesisLin.FieldByName('Delega_NomVia'       ).AsString,sInforme);
     sInforme := Replace ('%POB_DELEGACIO%'  , OrtesisLin.FieldByName('Delega_Poblacio'     ).AsString,sInforme);
     sInforme := Replace ('%DATA_INFORME%'   , FormatDateTime('d "de" mmmm "de" yyyy',Date  )         ,sInforme);
     sInforme := Replace ('%NOM_PACIENT%'    , qDades.FieldByName('NomComplet'              ).AsString,sInforme);
     sInforme := Replace ('%CIP_PACIENT%'    , qDades.FieldByName('TSI'                     ).AsString,sInforme);
     
     sInforme := Replace ('%REF_CLIENT%'     , OrtesisLin.FieldByName('Referencia'          ).AsString,sInforme);
     sInforme := Replace ('%ORTESIS%'        , ORTESIS_SELECCIONADES                                  ,sInforme);
     sInforme := Replace ('%TRACTE_METGE%'   , qDades.FieldByName('TRACTE_METGE'            ).AsString,sInforme);
     sInforme := Replace ('%NOM_METGE%'      , qDades.FieldByName('NOM_METGE'               ).AsString + ' ' +
                                               qDades.FieldByName('COGNOM_METGE'            ).AsString+' (N.C.: '+
                                               qDades.FieldByName('NMETGERECEPTA'           ).AsString+')',sInforme);  // PARTE 59333

     qDiags.Close;
     qDiags.SQL.Text:=Format('select t.c_tractament,c.c_icd,c.n_icd from TRACTAMENTS t join diagnostics d on t.c_tractament=d.c_tractament '+
                             'and d.tipus="A" and d.classecmb="D" join codiicd c on d.c_diagnostic=c.c_icd and d.versiocim=c.versiocim '+
                             'where t.c_historia=%d and t.c_tractament<=%d order by t.data_ingres desc rows 1',
                             [qDades.FieldByName('c_historia').AsInteger, qDades.FieldByName('c_tractament').AsInteger]);
     qDiags.Open;
     Diag:=qDiags.FieldByName('c_icd').AsString;
     Tract:=qDiags.FieldByName('c_tractament').AsInteger;

     qDiags.Close;

     sInforme := Replace ('%DIAG_NEUROLOGIC%', Diag,sInforme);
     sInforme := Replace ('%CURS_CLINIC%'    , Solicituds, sInforme);

     // Afegim els canvis sol·licitats pel metge en la denegació de l'ortesi
     if (Canvis <> '') then Canvis := 'MODIFICACIONS A REALITZAR:' + #13 + Canvis;
     sInforme := Replace ('%MODIFICACIONS%', Canvis, sInforme);

     if (CompareText(qDades.FieldByName('Sexo').AsString, 'H') = 0)
     then sInforme := Replace ('%TRACTE_PACIENT%', 'Sr.',sInforme)
     else sInforme := Replace ('%TRACTE_PACIENT%', 'Sra.',sInforme);

     With TwDialegFullSolicitudOrtesis.Create(Application) do
     try
       Memo.Lines.Text := sInforme;
       ShowModal;
     finally

       //Impresió del Full
       if ModalResult = mrOk then
       begin

           with TwPrintRtfLogo.Create(Application) do
           begin
                try
                   Memoria := TMemoryStream.Create;
                   try
                      Memo.Lines.SaveToStream(Memoria);
                      Memoria.Position := 0;
                      Rtf.Lines.LoadFromStream(Memoria);
                      Ortesis1.Edicion;
                      Ortesis1.FieldByName('FullSolicitud').asString := Rtf.Lines.Text;
                      Ortesis1.Post;
                   finally
                      Memoria.Free;
                   end;
                   Informe.Preview;
                   //Informe.Print;
                finally
                   Free;
                end;
           end;

           if AvisoSN('Voleu marcar els elements com a impresos?') then
           begin
              mtFull.First;
              While not mtFull.Eof do
              begin
                  if OrtesisLin.FieldByName('C_OrtesisLin').AsInteger = mtFull.FieldByName('C_OrtesisLin').AsInteger
                  then begin
                       if OrtesisLin.EstaEditando then OrtesisLin.Post;
                       OrtesisLin.Refresh;
                  end;

                  GutExecute('Update InterConOrtesisLin set Data_PeticioMutua = "%s" where C_ORTESISLIN = %d',
                             [FechaTimeIB( NOWSERVER ),
                              mtFull.FieldByName('C_OrtesisLin').AsInteger]);
                              mtFull.Next;
              end;
           end;
       end;
       free;
       mtFull.Close;
     end;
     OrtesisLin.Refresh;
end;

procedure TwFichaOrtesis.bVeureFullMutuaClick(Sender: TObject);
var
   Memoria : TMemoryStream;
begin

     With TwDialegFullSolicitudOrtesis.Create(Application) do
     try
       Memo.Lines.Text := Ortesis1.FieldbyName('FullSolicitud').asString;
       ShowModal;
     finally

       //Impresió del Full
       if ModalResult = mrOk then
       begin
           With TwPrintRtfLogo.Create(Application) do
           begin
                try
                   Memoria := TMemoryStream.Create;
                   try
                      Memo.Lines.SaveToStream(Memoria);
                      Memoria.Position := 0;
                      Rtf.Lines.LoadFromStream(Memoria);
                   finally
                      Memoria.Free;
                   end;
                   Informe.Preview;
                   //Informe.Print;  parte 73241 6-10-2016
                finally
                   Free;
                end;
           end;
       end;
       free;
     end;
end;


procedure TwFichaOrtesis.SpeedButton1Click(Sender: TObject);
begin
     QReport.Preview;
end;

procedure TwFichaOrtesis.NotaChange(Sender: TObject);
begin
     if Nota.Lines.Count<>0
     then Nota.Color := $00D9FFFF
     else Nota.Color := clWhite;
end;

procedure TwFichaOrtesis.OrtesisLinBeforePost(DataSet: TDataSet);
var
   DF: TDadesFac;
   Error: String;
//VFO-I. - PARTE 30988
   data1 : TDateTime;
   proveidor : string;
   proveidor2 : Tstrings;
//VFO-F.
//VFO-I. - PARTE 31690
   qAux : Tquery;
//VFO-F.
begin
     // Si estaven modificant dades de la capçalera, les gravem primer (potser han entrat data d'entrega per entrar dades factura proveïdor)
     if Ortesis1.EstaEditando then Ortesis1.Post;

     // Comprovem les dades de facturacio venta.
     DF.C_CentreFac := OrtesisLin.FieldByName('C_CentreFac' ).AsString;
     DF.C_Client    := OrtesisLin.FieldByName('C_Client'    ).AsString;
     DF.C_Delegacio := OrtesisLin.FieldByName('C_Delegacio' ).AsString;
     if not CheckDadesFac(DF) then FerError(Error24,True);

     // Comprovem les dades de facturacio venta.
     if OrtesisLin.FieldByName('AportacioPAcient').AsString = 'S' then
     begin
          DF.C_CentreFac := OrtesisLin.FieldByName('C_CentreFac2').AsString;
          DF.C_Client    := OrtesisLin.FieldByName('C_Client2'   ).AsString;
          DF.C_Delegacio := OrtesisLin.FieldByName('C_Delega2'   ).AsString;
          if not CheckDadesFac(DF) then FerError(Error24+' Aportacio',True);
     end;

     if  (OrtesisLin.FieldByName('C_CENTREFAC').AsString <> '00') and (OrtesisLin.FieldByName('C_CENTREFAC2').AsString <> '00')
     and (OrtesisLin.FieldByName('C_CENTREFAC').AsString <> '50') and (OrtesisLin.FieldByName('C_CENTREFAC2').AsString <> '50')
     and (not OrtesisLin.FieldByName('id_garant').IsNull)
     then OrtesisLin.FieldByName('id_garant').Clear;

     // No es poden entrar les dades de facturació de proveïdor si l'ortesi no està entregada i validada (o bé entregada i no necessita validació):
     // 18.01.2023: deixem facturar a proveïdor perquè ells no tenen la culpa que el metge no validi
     if (OrtesisLin.FieldByName('Albara').AsString <> '') and not (qDades.FieldByName('Estat').AsInteger in [46,48]) then  // 18.01.2023: Afegeixo 48
     begin
         {- 18.01.2023: ja no passarà aqt if
         if (qDades.FieldByName('Estat').AsInteger = 48)  // 18.01. 2023 ja no entrarà aquí
         then FerError('No es pot pagar l''ortesi a proveïdor fins que el metge l''hagi validada.' , True)
         else if (Estado <> 48)
         then -} FerError('No es pot pagar l''ortesi a proveïdor si encara no s''ha entregat.' , True);
     end;

     // Data de factura proveïdor obligatòria si entren número de factura proveïdor
     if (OrtesisLin.FieldByName('Albara').AsString <> '') and (OrtesisLin.FieldByName('Data_FacProv').IsNull)
     then FerError('Heu d''introduir la data de la factura de proveïdor', True);

//VFO-I. - PARTE 30988 - si no hi ha registre de comanda(tipus 206) a INTERCONORTESISREG, l'insertem. Altrament, no fem res.
     if (OrtesisLin.FieldByName('Data_comanda').AsString <> '') then
     begin
       if (OrtesisLin.FieldByName('Data_comanda').AsDateTime > DateServer) then
       begin
            ShowMessage('La data comanda no pot ser posterior a avui.');
            Abort;
       end
       else begin
           data1 := GutSelect('select DATA1 from INTERCON where c_intercon = %d',[OrtesisLin.FieldByName('C_Intercon').AsInteger]);
           if (Trunc(OrtesisLin.FieldByName('Data_comanda').AsDateTime) < Trunc(data1)) then
           begin
               ShowMessage('La data comanda no pot ser anterior a la data sol·licitud');
               Abort;
           end;
       end;

       if (GutSelect('select count(*) from INTERCONORTESISREG where c_intercon = %d and tipus = 203',[OrtesisLin.FieldByName('C_Intercon').AsInteger]) = 0)
       then begin
         if OrtesisLin.FieldByName('c_prov').AsString = '' then
         begin
             ShowMessage('Obligatori informar el Proveïdor');
             Abort;
         end;

         proveidor2 := Tstringlist.Create;
         proveidor := 'Proveïdor: ' + OrtesisLin.FieldByName('Prov_n_prov').AsString;
         ordre := GutSelect('select max(ordre) from INTERCONORTESISREG where c_intercon = %d',[OrtesisLin.FieldByName('C_Intercon').AsInteger]) + 1;
         try
             proveidor2.text := proveidor;
             with qOrteReg do
             begin
                 ParamByName('C_Intercon').AsInteger := OrtesisLin.FieldByName('C_Intercon').AsInteger;
                 ParamByName('Ordre').AsInteger := ordre;
                 ParamByName('Tipus').AsInteger := 203;
                 ParamByName('c_usuari').Clear;
                 ParamByName('Data').AsDateTime := OrtesisLin.FieldByName('Data_comanda').AsDateTime;
                 ParamByName('Text').Assign(proveidor2);
                 ExecSql;
             end;
         finally
             Proveidor2.free;
         end;
       end
//VFO-I. - PARTE 31690
       else begin
         proveidor2 := Tstringlist.Create;
         proveidor := 'Proveïdor: ' + OrtesisLin.FieldByName('Prov_n_prov').AsString;
         if (GutSelect('select TEXT from INTERCONORTESISREG where c_intercon = %d and tipus = 203',[OrtesisLin.FieldByName('C_Intercon').AsInteger])
             <> proveidor) then
         begin
           try
             proveidor2.text := proveidor;
             qAux := Tquery.Create(wFichaOrtesis);
             qAux.DatabaseName := 'interna';
             qAux.SQL.Text := Format('update INTERCONORTESISREG SET TEXT = :TEXT WHERE C_INTERCON = %D AND TIPUS = 203',
                              [OrtesisLin.FieldByName('C_Intercon').AsInteger]);
             qAux.ParamByName('text').Assign(proveidor2);
             qAux.ExecSQL;
           finally
             Proveidor2.free;
             qAux.Free;
           end;
         end;
       end;
//VFO-F.
     // parte 62403 - i Si han tret data_comanda i hi havia registre 203 l'eliminem
     end
     else begin
         if (GutSelect('select count(*) from INTERCONORTESISREG where c_intercon = %d and tipus = 203',
             [OrtesisLin.FieldByName('C_Intercon').AsInteger]) > 0)
         then begin
             GutExecute('delete from INTERCONORTESISREG where c_intercon = %d and tipus = 203',
                         [OrtesisLin.FieldByName('C_Intercon').AsInteger]);
         end;
     // parte 62403 - f
     end;
//VFO-F.

end;

procedure TwFichaOrtesis.OrtesisLinAfterScroll(DataSet: TDataSet);
begin

//   Desactivem les areas de facturacio si ja esta facturat.
     AreaFactu.Enabled           := OrtesisLin.FieldByName('EstatFac'   ).AsInteger < 80;
     AreaElements.Enabled        := OrtesisLin.FieldByName('EstatFac'   ).AsInteger < 80;
     AreaPacient.Enabled         := OrtesisLin.FieldByName('C_EstatFac2').AsInteger < 80;
//   AreaProv.Enabled            := Ortesis2.FieldByName('EstatFacProv').AsInteger < 80;
     bGenerarAlba.Enabled        := EsBuit(OrtesisLin.FieldByName('AlbaraPacient').AsString);
     bImprimirAlba.Enabled       := EsPle(OrtesisLin.FieldByName('AlbaraPacient').AsString);
     bPrevisualitzarAlba.Enabled := EsPle(OrtesisLin.FieldByName('AlbaraPacient').AsString);

     pGarant.Visible      := (OrtesisLin.FieldByName('C_CENTREFAC' ).AsString = '00') or (OrtesisLin.FieldByName('C_CENTREFAC' ).AsString = '50');
     pGarantDades.Visible := (OrtesisLin.FieldByName('C_CENTREFAC2').AsString = '00') or (OrtesisLin.FieldByName('C_CENTREFAC2').AsString = '50');

     // arrosseguem el Garant del tractament si en té i si toca (té CentreFac = '00' i/o Aportació Pacient)
     if  (pGarant.Visible or pGarantDades.Visible)
     and (OrtesisLin.FieldByName('ID_Garant').IsNull or (OrtesisLin.FieldByName('ID_Garant').AsInteger=0)) then
     begin
         if not OrtesisLin.EstaEditando then OrtesisLin.Edit;
         OrtesisLin.FieldbyName('ID_Garant').AsInteger := qDades.FieldbyName('ID_Garant').AsInteger;
     end;
end;

procedure TwFichaOrtesis.bAnulaClick(Sender: TObject);
var
   MetgeAnula: TMetge;
   Ok: Boolean;
   Motiu: String;
   Motiu2: TStrings;
begin

     // Anulem inerconsulta de ortesis:
     // Demanem un motiu, i posem estat de intercon a 80, i tots els estats de facturacio a no facturables.

     if wData.UsuariActiu.Codi <> ''
     then MetgeAnula := wData.UsuariActiu
     else MetgeAnula := PreguntaMetge;

     if MetgeAnula.Codi = '' then Exit;

     with TwDialogAvisImportant.Create(Application) do
     begin
          try
           Avis.Caption := ' ANUL·LAR ORTESIS '+  NLine + NLine+
                           ' REALITZADA EL ' + qDades.FieldByName('Data1').AsString;
           ok := ShowModal = mrOk;
          finally
           Free;
          end;
     end;

    if ok then
    begin
        Motiu:='';
        while EsVuit(Motiu) do DialogEdit('Motiu de la denegació: ',Motiu,100,False);
        Motiu := Replace('"','''',Motiu);

        bAnula.Enabled := False;
        bNoGestiona.Enabled := False;
        bRecupera.Enabled := True;

        // Només cal modificar l'estat a INTERCON.
        qAnulaIntercon.ParamByName('estat').AsInteger := TSpeedButton(Sender).Tag;
        qAnulaIntercon.ParamByName('C_Intercon').AsInteger := OrtesisLin.FieldByName('C_Intercon').AsInteger;
        qAnulaIntercon.ExecSQL;

        // Insertar registre "ortesis anul·lada administrativament" o de "ortesis no gestionada per admissions" a INTERCONORTESISREG
        Motiu2 := TStringList.Create;
        TRY
          ordre := GutSelect('select max(ordre) from INTERCONORTESISREG where c_intercon = %d',[OrtesisLin.FieldByName('C_Intercon').AsInteger]) + 1;
          Motiu2.Text := Motiu;
          with qOrteReg do
          begin
               ParamByName('C_Intercon').AsInteger := OrtesisLin.FieldByName('C_Intercon').AsInteger;
               ParamByName('Ordre').AsInteger := ordre;
               CASE TSpeedButton(Sender).Tag OF
                 84: ParamByName('Tipus').AsInteger := 210;
                 85: ParamByName('Tipus').AsInteger := 211;
               END;
               ParamByName('c_usuari').AsString := MetgeAnula.Codi;
               ParamByName('Data').AsDateTime := NowServer;
               ParamByName('Text').Assign(motiu2);
               ExecSql;
          end;
        FINALLY
          Motiu2.Free;
        END;

        // Al curs clínic només modifiquem l'estat de la sol·licitud de la interconsulta
        GutExecute('update HISTORIA set ESTAT_INTERCON = %d  where C_HISTORIA =  %s and C_INTERCON = %s and (ESTAT_INTERCON = 10 or ESTAT_INTERCON = 11)',
                   [(Sender as TControl).Tag,
                    qDades.FieldByName('C_Historia').AsString,
                    OrtesisLin.FieldByName('C_Intercon').AsString]);

        qDades.Close;
        qDades.Open;  
    end;
end;

procedure TwFichaOrtesis.ChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   PrintBand := EsPle(OrtesisLin.FieldbyName('Notes').asString);
end;

procedure TwFichaOrtesis.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  Value := '                                         '+Value;
end;

procedure TwFichaOrtesis.QRDBText22Print(sender: TObject;
  var Value: String);
begin
  Value := '                          '+Value;
end;

procedure TwFichaOrtesis.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   PrintBand := EsPle(qDades.FieldbyName('SOLICITA').asString);
end;

procedure TwFichaOrtesis.bGenerarAlbaClick(Sender: TObject);
var
  Cli, Delega:String;
begin

  if OrtesisLin.FieldbyName('C_CentreFac2').isNull
  then FerError(' * *  EL CENTRE DE FACTURACIÓ NO POT ESTAR BUIT  * * ', True);

  if OrtesisLin.FieldbyName('C_Client2').isNull
  then Cli := 'AND C_CLIENT2 IS NULL'
  else Cli := 'AND C_CLIENT2 = "'+OrtesisLin.FieldbyName('C_Client2').asString+'"';

  if OrtesisLin.FieldbyName('C_Delega2' ).isNull
  then Delega := 'AND C_DELEGA2 IS NULL'
  else Delega := 'AND C_DELEGA2 = '+OrtesisLin.FieldbyName('C_Delega2').asString;

  cAporta.SqlDic.Text := Format(cAporta.SqlDic.Text,
                         [ qDades.FieldbyName('C_Historia'    ).asString, //Historia
                           OrtesisLin.FieldbyName('C_CentreFac2').asString, //CF
                           cli,                                           //Client
                           Delega                                         //Delegacio
                         ]);

  cAporta.SqlDicTotal.Text := Format(cAporta.SqlDicTotal.Text,
                            [ qDades.FieldbyName('C_Historia'    ).asString, //Historia
                              OrtesisLin.FieldbyName('C_CentreFac2').asString, //CF
                              cli,                                           //Client
                              Delega                                         //Delegacio
                            ]);

  cAporta.ExecuteModal;

end;

procedure TwFichaOrtesis.cAportaAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
var
  i: Integer;
  NouAlbara:String;
begin
   if Sender.Grid.SelectedRows.Count > 0 then
   begin
       try
           mtAporta.Open;
           //NouAlbara := wDataFactu.GetContador(Datos.FieldbyName('C_CentreFac2').asString, DateServer, 'OA', 2).N_Factura;
           NouAlbara := wDataFactu.GetContador(Datos.FieldbyName('C_CentreFac2').asString, DateServer, 'OA', 2);

           //NouAlbara := NuevoAlbaran(Datos.FieldbyName('C_CentreFac2').asString, 'OA');
           For i := 0 to Sender.Grid.SelectedRows.Count -1 do
           begin
              Datos.BookMark := Sender.Grid.SelectedRows[i];
              mtAporta.Append;
                mtAporta.FieldbyName('C_HISTORIA'   ).Clear;
                mtAporta.FieldbyName('N_Ortesis'    ).Clear;
                mtAporta.FieldbyName('PREU2'        ).Clear;
                mtAporta.FieldbyName('C_CentreFac2' ).Clear;
                mtAporta.FieldbyName('AlbaraPacient').Clear;
                mtAporta.FieldbyName('REFERENCIA2'  ).Clear;
                mtAporta.FieldbyName('C_OrtesisLin'  ).Clear;
                mtAporta.FieldbyName('REFERENCIA2'  ).Assign(Datos.FieldbyName('REFERENCIA2' ));
                mtAporta.FieldbyName('C_HISTORIA'   ).Assign(Datos.FieldbyName('C_HISTORIA'  ));
                mtAporta.FieldbyName('N_Ortesis'    ).Assign(Datos.FieldbyName('N_Ortesis'   ));
                mtAporta.FieldbyName('N_Ortesis2'   ).Assign(Datos.FieldbyName('N_Ortesis2'  ));
                mtAporta.FieldbyName('PREU2'        ).Assign(Datos.FieldbyName('PREU2'       ));
                mtAporta.FieldbyName('C_CentreFac2' ).Assign(Datos.FieldbyName('C_CentreFac2'));
                mtAporta.FieldbyName('C_OrtesisLin' ).Assign(Datos.FieldbyName('C_OrtesisLin'));
                mtAporta.FieldbyName('AlbaraPacient').asString := NouAlbara;
              mtAporta.Post;


              if OrtesisLin.FieldByName('C_OrtesisLin').AsInteger = mtAporta.FieldByName('C_OrtesisLin').AsInteger
              then begin
                   if OrtesisLin.EstaEditando then OrtesisLin.Post;
                   OrtesisLin.Refresh;
              end;


              GutExecute('Update InterConOrtesisLin set AlbaraPacient = "%s" where C_ORTESISLin = %d ',
                         [NouAlbara, Datos.fieldbyName('C_OrtesisLin').AsInteger]);

           end;

           if chImprimiralCrear.Checked then ImprimirAlbaranAportaOrtesis( mtAporta, False, seCopiasAlba.Value);
       finally
         mtAporta.Close;
         OrtesisLin.Refresh;
       end;
   end;
end;

procedure TwFichaOrtesis.bPrevisualitzarAlbaClick(Sender: TObject);
begin
   qBuscaAlba.Close;
   qBuscaAlba.parambyName('Alba').asString := OrtesisLin.FieldbyName('AlbaraPacient').asString;
   qBuscaAlba.Open;
   ImprimirAlbaranAportaOrtesis( qBuscaAlba, ((Sender as TBitBtn).Tag = 1), seCopiasAlba.Value);
end;


procedure TwFichaOrtesis.Ortesis1AfterScroll(DataSet: TDataSet);
begin
    bVeureFullMutua.Enabled := not DataSet.FieldbyName('FullSolicitud').isNull;
end;

procedure TwFichaOrtesis.PreusClick(Sender: TObject);
var
  Mascara:String;
  iva_c, preu_c, iva_v, preu_v, aPac: Double;
begin

    Mascara := '####.##;;0';
    Seguir := True;
    with TwDialegIntroduccioPreusOrtesis.Create(Application) do
    try

      // Omplim valors de Compra
      iva_c := OrtesisLin.FieldbyName('IvaCompra' ).asCurrency;
      preu_c := OrtesisLin.FieldbyName('PreuCompra').asCurrency;

      if ((OrtesisLin.FieldbyName('IvaCompra').asCurrency = 0)
       or (OrtesisLin.FieldbyName('IvaCompra').isNull)
       or EsBuit(OrtesisLin.FieldbyName('IvaCompra').asString))
      then edIvaCompra.EditValue := '4'
      else edIvaCompra.EditValue := FormatFloat(Mascara, iva_c);

      if ((OrtesisLin.FieldbyName('PreuCompra').asCurrency = 0)
       or (OrtesisLin.FieldbyName('PreuCompra').isNull))
      then edPreuCompra.EditValue  :=  '0'
      else edPreuCompra.EditValue  := FormatFloat(Mascara, preu_c/(1 + iva_c/100));


      // Omplim valors de Venda
      iva_v := OrtesisLin.FieldbyName('IvaVenta' ).asCurrency;
      preu_v := OrtesisLin.FieldbyName('PreuVenta').asCurrency;

      if ((OrtesisLin.FieldbyName('IvaVenta').asCurrency = 0)
       or (OrtesisLin.FieldbyName('IvaVenta').isNull)
       or EsBuit(OrtesisLin.FieldbyName('IvaVenta').asString))
      then edIvaVenta.EditValue  :=  '4'
      else edIvaVenta.EditValue  :=  FormatFloat(Mascara, iva_v);

      if ((OrtesisLin.FieldbyName('PreuVenta').asCurrency = 0)
       or (OrtesisLin.FieldbyName('PreuVenta').isNull))
      then edPreuVenta.EditValue  :=  '0'
      else edPreuVenta.EditValue  :=  FormatFloat(Mascara, preu_v/(1 + iva_v/100));

      edPreuMaxim.EditValue  :=  FormatFloat(Mascara, OrtesisLin.FieldbyName('Ortesis_PreuMaximServei').asCurrency);
      edAportacioServei.EditValue := FormatFloat(Mascara, OrtesisLin.FieldbyName('Ortesis_AportacioServei').asCurrency );

      aportacio := OrtesisLin.FieldbyName('Preu2').AsCurrency;
      masc      := Mascara;
      indicador_farmacia := qDades.FieldByName('INDICADOR_FARMACIA').AsString;

      ShowModal;
    finally

      if ModalResult = mrOk then
      begin

        iv      := Divisa( NumeroOk(edIvaVenta .EditValue ), 2);
        pv      := Divisa( NumeroOk(edPreuVenta.EditValue ), 2);
        pvi     := Divisa( SumaPorcentaje( pv, iv, 2 )     , 2);
        pMax    := Divisa( NumeroOk(edPreuMaxim.EditValue ), 2);       // IVA inclòs
        aPac    := Divisa( NumeroOk(edAportacioServei.EditValue), 2);  // IVA inclòs

        // Maig 2022: sempre guardarem el preu de compra (no només si l'IVA introduït és diferent del de venda)
        //            potser es pot automatitzar a partir del preu de venda (restant-li l'aportació pacient)   
        {
        if ((Divisa( NumeroOk(edIvaCompra.EditValue), 2) <> Divisa( NumeroOk(edIvaVenta.EditValue ), 2))
        and (Divisa( NumeroOk(edIvaCompra .EditValue ), 2) <> 0)) then
        begin
        }
           ic      := Divisa( NumeroOk(edIvaCompra.EditValue ), 2);
           pc      := Divisa( NumeroOk(edPreuCompra.EditValue), 2);
           pci     := Divisa( SumaPorcentaje( pc, ic, 2 )     , 2);
        {
        end
        else
        begin
           ic      := Divisa( NumeroOk(edIvaVenta.EditValue ), 2);
           pc      := Divisa( NumeroOk(edPreuVenta.EditValue), 2);
           pci     := Divisa( SumaPorcentaje( pv, iv, 2 )    , 2);
        end;
        }

        if  (pMax <> 0)
        and (((pvi > pMax)         and (qDades.FieldByName('INDICADOR_FARMACIA').AsString <> 'TSI 001')) or
              ((pvi > pMax + aPac) and (qDades.FieldByName('INDICADOR_FARMACIA').AsString =  'TSI 001')))
        and (OrtesisLin.FieldByName('C_CentreFac').AsString='04') then
        begin
            if not AvisoSN(Format('El preu de venda amb IVA (%s) sobrepassa el preu màxim (%s).'+
                                   #13'Voleu seguir amb la validació?',
                           [FormatFloat(Mascara, pvi),
                            FormatFloat(Mascara, pmax)])) then Seguir := False
            else
            begin
              iv      := Divisa( NumeroOk(edIvaVenta.EditValue ), 2);
              pvi     := pMax;
            end; // else continuar
        end; // if preu màxim sobrepassat

        if Seguir then
        begin
           OrtesisLin.Edicion;
           seguir := True;

           OrtesisLin.FieldbyName('IvaVenta'  ).asCurrency := iv;
           OrtesisLin.FieldbyName('PreuVenta' ).asCurrency := pvi;
           OrtesisLin.FieldbyName('IvaCompra' ).asCurrency := ic;
           OrtesisLin.FieldbyName('PreuCompra').asCurrency := pci;
        end;
      end;//ModalResult
      Free;

      if OrtesisLin.estaEditando then
      begin
        OrtesisLin.Post;
        OrtesisLin.Refresh;
      end;

    end;//Finally
    if not seguir then Preus.Click;

end;

procedure TwFichaOrtesis.HYBarra3AlInsertar(Sender: TObject);
begin
// Agost 2023: tornem a permetre modificar, eliminar i afegir elements.
//   // Juny 2023: no permetem modificar, eliminar ni afegir elements. El que diu el metge va a missa
//   ShowMessage('No es pot afegir cap element');
//   Exit;

   // 30-10-2015: no permetre afegir ortesis si ja està facturada
   if OrtesisFacturada then FerError('ORTESIS FACTURADA. No es poden afegir elements.',True);

   cOrtesis.ExecuteModal;
end;


procedure TwFichaOrtesis.cOrtesisAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
     GutExecute( ' EXECUTE PROCEDURE P_INTERCONORTESISLIN_OMPLE(%d, "%s")',
                 [ Ortesis1.FieldByName('C_Intercon').AsInteger,
                   Datos.FieldByName('C_Ortesis').AsString]);
     OrtesisLin.Refresh;
end;

procedure TwFichaOrtesis.Ortesis1AfterPost(DataSet: TDataSet);
begin
   if wMain.LastTraza = 0 then wMain.LastTraza := wData.ObraTrazaControl(qDades.FieldByName('c_historia').AsInteger, Self.Caption, wMain.Aplica,DataSet.FieldByName('c_intercon').AsInteger);
   wMain.AddStatusTraza('h');

   ActualizarListadoOrtesis;
end;

procedure TwFichaOrtesis.OrtesisLinAfterPost(DataSet: TDataSet);
begin
   if wMain.LastTraza = 0 then wMain.LastTraza := wData.ObraTrazaControl(qDades.FieldByName('c_historia').AsInteger, Self.Caption, wMain.Aplica,DataSet.FieldByName('c_intercon').AsInteger);
   wMain.AddStatusTraza('h');

   ActualizarListadoOrtesis;
end;

procedure TwFichaOrtesis.ActualizarListadoOrtesis;
begin
   qDades.Close;
   qDades.Open;
end;

procedure TwFichaOrtesis.HYBarra1AlBorrar(Sender: TObject);
begin
// Agost 2023: tornem a permetre modificar, eliminar i afegir elements.
//     // Juny 2023: no permetem modificar, eliminar ni afegir elements. El que diu el metge va a missa
//     ShowMessage('No es pot eliminar cap element');
//     Exit;

     // Nomes podrem borrar una ortesis si no esta facturada ni entregada.
//     if (OrtesisLin.FieldByName('Data_Entrega').AsDateTime<>0)
     if (Gutselect('select count(*) from interconortesisreg where tipus = "206" and c_intercon = %d',[OrtesisLin.FieldByName('c_intercon').AsInteger])>0)
     or (OrtesisLin.FieldByName('EstatFac').AsInteger>=80)
     or (OrtesisLin.FieldByName('EstatFacProv').AsInteger>=80)
     or (OrtesisLin.FieldByName('C_EstatFac2').AsInteger>=80)
     then FerError(Error46,True);

     // No permetre eliminar tots els elements 26-04-2017
     if GutSelect('SELECT COUNT(*) FROM INTERCONORTESISLIN WHERE C_INTERCON = %d',[OrtesisLin.FieldByName('c_intercon').AsInteger])<=1
     then FerError('La ortesis ha de tenir com a mínim 1 element. No es pot eliminar.',True);

     if (AvisoNS(Format('ATENCIO ! EL ELEMENT DE ORTESIS %S SERA ESBORRAT, ESTA SEGUR?',[OrtesisLin.FieldByName('C_Ortesis').AsString])))
     then OrtesisLin.Delete;
end;

procedure TwFichaOrtesis.bCodificarClick(Sender: TObject);
begin
// Agost 2023: tornem a permetre modificar, eliminar i afegir elements.
//     // Juny 2023: no permetem modificar, eliminar ni afegir elements. El que diu el metge va a missa
//     ShowMessage('No es pot modificar cap element');
//     Exit;

     if  (OrtesisLin.FieldByName('AportacioPacient').AsString='S')
     and (OrtesisLin.FieldByName('C_EstatFac2').AsInteger >= 80)
     then cOrtesis2.SqlDic[3] := ' AND AportacioServei = '+NumeroIb(OrtesisLin.FieldByName('Preu2').AsFloat)
     else cOrtesis2.SqlDic[3] := '';
     cOrtesis2.ExecuteModal;
end;

procedure TwFichaOrtesis.cOrtesis2AlSeleccionar(Sender: TxHYDialogConsulta;Datos: TDataSet);
var
   FactuActual: Boolean;
   FactuNova  : Boolean;
begin

     FactuActual := (GutSelect('Select Facturable From CodiOrtesisFam where C_Familia = "%s"',
                    [OrtesisLin.FieldbyName('Ortesis_C_Familia').asString]) = 'S');

     FactuNova := (GutSelect('Select Facturable From CodiOrtesisFam where C_Familia = "%s"',
                    [Datos.FieldbyName('C_Familia').asString]) = 'S');

     if ((FactuNova <> FactuActual) and (OrtesisLin.FieldbyName('C_CentreFac').AsString <> '04')) then
     begin
        if not FactuNova
        then FerError('La familia de l''Ortesi a substituïr es Facturable, la familia de l''Ortesi escollida no ho es', True)
        else FerError('La familia de l''Ortesi a substituïr no es Facturable, la familia de l''Ortesi escollida si que ho es', True);
     end;

     OrtesisLin.Edicion;
     OrtesisLin.FieldByName('C_Ortesis').AsString := Datos.FieldByName('C_Ortesis').AsString;
     OrtesisLin.FieldByName('CodiServei').AsString  := Datos.FieldByName('CodiServei').AsString;

     if Datos.FieldByName('AportacioServei').AsCurrency <> 0
     then begin
          OrtesisLin.FieldByName('AportacioPacient').AsString := 'S';
          OrtesisLin.FieldByName('Preu2').AsCurrency := Datos.FieldByName('AportacioServei').AsCurrency;
          if OrtesisLin.FieldByName('C_EstatFac2').AsInteger in [0..9,50..59]
          then OrtesisLin.FieldByName('C_EstatFac2').AsInteger:= 10;
          OrtesisLin.FieldByName('C_CentreFac2').AsString := GutSelect ('Select Min(C_CentreFac) from CentreFac where EsPrivat="S"',[]);
     end
     else begin
          OrtesisLin.FieldByName('AportacioPacient').AsString := 'N';
          OrtesisLin.FieldByName('Preu2').AsCurrency := 0;
          OrtesisLin.FieldByName('C_EstatFac2').AsInteger:= 50;
     end;
end;



//BVG-i Elena vol entregar des d'Admissions
procedure TwFichaOrtesis.bEntregarClick(Sender: TObject);
var
  data_entrega, data_comanda: TDateTime;
begin
    entregant:=True;  // parte 41220

    // Comprovem que les comandes dels diferents elements de l'ortesi estiguin fetes:
    data_comanda := 0;
    OrtesisLin.First;
    while not OrtesisLin.Eof do
    begin
        if OrtesisLin.FieldByName('Data_Comanda').IsNull then
        begin
            entregant:=False;
            FerError('Falta introduir alguna data de comanda');
            Exit;
        end;
        data_comanda := max(data_comanda, OrtesisLin.FieldByName('Data_Comanda').AsDateTime);
        OrtesisLin.Next;
    end;

    // Demanem la data d'entrega:
    data_entrega := Calendario(DateServer, Catala, False, 'Indiqueu la data d''entrega');
    if (data_entrega = 0) then begin entregant:=False; Exit; end;

    // Comprovem que la data d'entrega sigui posterior a la de comanda:
    if (data_entrega < data_comanda) then
    begin
        entregant:=False;
        FerError('La data d''entrega no pot ser anterior a la de la comanda (%s)', [FormatDateTime('dd/mm/yyyy', data_comanda)]);
        Exit;
    end;

    if (data_entrega > DateServer) then begin entregant:=False; FerError('La data d''entrega no pot ser futura'); Exit; end;

    // si és gracare/grau soler i no s'han acceptat preus, no permetre entregar
    if (not qDades.FieldByName('estat_ortesi').IsNull) and (qDades.FieldByName('estat_ortesi').AsInteger <> 5)
    then begin
        entregant:=False;
        FerError('No es pot entregar sense acceptar l''oferta de l''ortopèdia.');
        Exit;
    end;

    // posem la taula Ortesi en mode edició pq després gravin les dades.
    Ortesis1.Edicion;

    eDataEntrega.Text := FormatDateTime('dd/mm/yyyy', data_entrega);
end;


procedure TwFichaOrtesis.Ortesis1BeforePost(DataSet: TDataSet);
var
  estat, num: Integer;
begin
    if bEntregar.Enabled and (eDataEntrega.Text <> '') then
    begin
        // Posem el nou estat (ortesi entregada) a la interconsulta:
        if (Ortesis1.FieldByName('Validacio').AsString = 'S') then estat := 48   // cal validar => entregada + pendent de validar
                                                              else estat := 46;  // altrament   => entregada + pendent de tancar procés
        GutExecute('update INTERCON set ESTAT = %d where C_INTERCON = %d', [estat, Ortesis1.FieldByName('C_Intercon').AsInteger]);

        // Gravem registre a INTERCONORTESISREG
        num := 1 + GutSelect('select MAX(ORDRE) from INTERCONORTESISREG where C_INTERCON = %d', [Ortesis1.FieldByName('C_Intercon').AsInteger]);
        with qInsInterconOrtesisReg do
        begin
            ParamByName('C_Intercon').AsInteger  := Ortesis1.FieldByName('C_Intercon').AsInteger;
            ParamByName('Ordre'     ).AsInteger  := num;
            ParamByName('Tipus').AsInteger  := 206;           // ortesi entregada
            ParamByName('Data' ).AsDateTime := StrToDate(eDataEntrega.Text);
            ExecSql;
        end;
        bEntregar.Enabled := False;
    end;
end;


procedure TwFichaOrtesis.Ortesis1AfterCancel(DataSet: TDataSet);
begin
    if bEntregar.Enabled and (eDataEntrega.Text <> '') then eDataEntrega.Text := '';
end;


procedure TwFichaOrtesis.bEnviaOrtoClick(Sender: TObject);
var
  qProvs: TQuery;
  provAnt: string;
  ok: boolean;
begin
  if wData.UsuariActiu.Codi <> ''
  then Metge := wData.UsuariActiu
  else Metge := PreguntaMetge;

  if Metge.Codi = '' then Exit;

  if TeDretMetge(Metge.Codi,[80]) then
  begin
      // revisar que totes les línies de la interconsulta tenen el proveedor informat, que és el mateix i que és 16 ó 19
      qProvs := TQuery.Create(Application);
      qProvs.DatabaseName := wData.Gdb.DatabaseName;
      qProvs.SQL.Text := 'select C_PROV from INTERCONORTESISLIN where c_intercon = '+qDades.FieldByName('c_intercon').AsString+
                         ' order by c_ortesislin';
      qProvs.Open;
      qProvs.First;
      provAnt := qProvs.FieldByNAme('C_PROV').AsString;
      ok := (not qProvs.FieldByNAme('C_PROV').IsNull) and (qProvs.FieldByNAme('C_PROV').AsString<>'') and
            (provAnt = qProvs.FieldByNAme('C_PROV').AsString) and
            ((qProvs.FieldByNAme('C_PROV').AsInteger = 16) or (qProvs.FieldByNAme('C_PROV').AsInteger = 19));

      while (not qProvs.Eof) and ok do
      begin
          provAnt := qProvs.FieldByNAme('C_PROV').AsString;
          qProvs.Next;
          ok := (not qProvs.FieldByNAme('C_PROV').IsNull) and (qProvs.FieldByNAme('C_PROV').AsString<>'') and
                (provAnt = qProvs.FieldByNAme('C_PROV').AsString) and
                ((qProvs.FieldByNAme('C_PROV').AsInteger = 16) or (qProvs.FieldByNAme('C_PROV').AsInteger = 19));
      end;
      qProvs.Free;

      if not ok then FerError('ERROR: tots els elements han de tenir el mateix proveedor informat i aquest ha de ser GRAU SOLER o GRACARE.',True)
      else CanviaEstatOrtesi(qDades.FieldByName('c_intercon').AsInteger,101);
  end
  else FerError(Error1,True);
end;

procedure TwFichaOrtesis.CanviaEstatOrtesi(intercon,estat:integer;motiu: string='');
begin
  // Per ESTAT = 101, inicialitzem també les dates d'enviament i d'anul·lació pq comencem procés nou amb ortopèdia
  // Per ESTAT = 0, inicialitzem ESTAT_ORTESI, D_ORTO_ENVIA i D_ORTO_ANULA
  // Per ESTAT = 6, cal actualitzar al motiu de denegació de l'oferta
  TRY CASE estat OF
      0: GutExecute('update INTERCON set ESTAT_ORTESI=NULL,D_ORTO_ENVIA=NULL,D_ORTO_ANULA=NULL,D_ORTO_ESTAT="NOW",ORTO_UPDATED=1 where c_intercon = %d',[intercon]);
      101: GutExecute('update INTERCON set ESTAT_ORTESI=%d,D_ORTO_ENVIA=NULL,D_ORTO_ANULA=NULL,D_ORTO_ESTAT="NOW",ORTO_UPDATED=1 where c_intercon = %d',[estat,intercon]);
      6: GutExecute('update INTERCON set ESTAT_ORTESI=%d,D_ORTO_ESTAT="NOW",MOTIU_DEN="%s",ORTO_UPDATED=1 where c_intercon = %d',[estat,motiu,intercon]);
      else GutExecute('update INTERCON set ESTAT_ORTESI=%d,D_ORTO_ESTAT="NOW",ORTO_UPDATED=1 where c_intercon = %d',[estat,intercon]);
      END;
  EXCEPT on E : Exception do FerError(E.Message, TRUE);
  END;

  qDades.Close;
  qDades.Open;
end;

procedure TwFichaOrtesis.bAnulaOrtoClick(Sender: TObject);
begin
  // parte 52244 - i
  if wData.UsuariActiu.Codi <> ''
  then Metge := wData.UsuariActiu
  else Metge := PreguntaMetge;

  if MEtge.Codi = '' then Exit;
  
  if TeDretMetge(Metge.Codi,[80]) then
  CanviaEstatOrtesi(qDades.FieldByName('c_intercon').AsInteger,102)
  else FerError(Error1,True);
end;

procedure TwFichaOrtesis.qDadesAfterScroll(DataSet: TDataSet);
begin
   bEnviaOrto.Enabled:=(not Ortesislin.FieldByName('c_prov').IsNull) and
                       ((Ortesislin.FieldByName('c_prov').AsString = '16') or (Ortesislin.FieldByName('c_prov').AsString = '19'))
                        and (qDades.fieldbyname('estat_ortesi').IsNull or (qDades.fieldbyname('estat_ortesi').AsString = ''))
                        and (qDades.FieldByName('estat').AsInteger in [10,11]);
   // només es pot dir que s'estan mirant l'oferta si s'han rebut els preus
   bOfertaVista.Enabled :=(not Ortesislin.FieldByName('c_prov').IsNull) and
                       ((Ortesislin.FieldByName('c_prov').AsString = '16') or (Ortesislin.FieldByName('c_prov').AsString = '19'))
                       and (not qDades.fieldbyname('estat_ortesi').IsNull and (qDades.fieldbyname('estat_ortesi').AsInteger = 3))
                       and (qDades.FieldByName('estat').AsInteger in [10,11]);

   // només es pot acceptar/denegar una oferta si prèviament se l'ha estat mirant l'Elena.
   sbPreusOK.Enabled :=(not Ortesislin.FieldByName('c_prov').IsNull) and
                       ((Ortesislin.FieldByName('c_prov').AsString = '16') or (Ortesislin.FieldByName('c_prov').AsString = '19'))
                       and (not qDades.fieldbyname('estat_ortesi').IsNull and (qDades.fieldbyname('estat_ortesi').AsInteger = 4))
                       and (qDades.FieldByName('estat').AsInteger in [10,11]);
   sbPreusNOOK.Enabled := sbPreusOK.Enabled;

   bAnulaOrto.Enabled:=(not qDades.fieldbyname('estat_ortesi').IsNull)    and
                       (qDades.FieldByName('estat_ortesi').AsInteger < 50) and
                       (qDades.FieldByName('estat').AsInteger in [10,11]);
end;

procedure TwFichaOrtesis.PotEditar(DataSet: TDataSet);
begin
  // si estan posant la data_entrega i l'estat és 2 hem de deixar-ho
  // Si ESTAT_ORTESI in[101,0,102] no es permet modificar dades de la interconsulta
{  if (not qDades.fieldbyname('estat_ortesi').IsNull) then
  begin
      CASE qDades.FieldByName('estat_ortesi').AsInteger OF
      101,102: FerError('ERROR: processant enviament a l''ortopèdia. És necessari esperar fins que s''hagi efectuat l''enviament.',True);
//        0..49: if not entregant then FerError('ERROR: abans de modificar qualsevol dada de la interconsulta és necessari anul·lar l''enviament ',True);      END;
  end;     <-- 18.7.2011 ho asterisco per poder pujar el codi font al SVN}
end;

procedure TwFichaOrtesis.bRefrescaOrtoClick(Sender: TObject);
begin
 qDades.Close;
 qDades.Open;
 OrtesisLin.Refresh;
end;
//VFO-F.

procedure TwFichaOrtesis.bOfertaVistaClick(Sender: TObject);
begin
  if wData.UsuariActiu.Codi <> ''
  then Metge := wData.UsuariActiu
  else Metge := PreguntaMetge;

  if Metge.Codi = '' then Exit;

  if TeDretMetge(Metge.Codi,[80]) then
  CanviaEstatOrtesi(qDades.FieldByName('c_intercon').AsInteger,4)
  else FerError(Error1,True);
end;

procedure TwFichaOrtesis.sbPreusOKClick(Sender: TObject);
begin
  if wData.UsuariActiu.Codi <> ''
  then Metge := wData.UsuariActiu
  else Metge := PreguntaMetge;

  if Metge.Codi = '' then Exit;

  if TeDretMetge(Metge.Codi,[80]) then
  CanviaEstatOrtesi(qDades.FieldByName('c_intercon').AsInteger,5)
  else FerError(Error1,True);
end;

procedure TwFichaOrtesis.sbPreusNOOKClick(Sender: TObject);
begin
  if wData.UsuariActiu.Codi <> ''
  then Metge := wData.UsuariActiu
  else Metge := PreguntaMetge;

  if Metge.Codi = '' then Exit;

  if TeDretMetge(Metge.Codi,[80]) then
  begin
      motiuD.Lines.Clear;
      CenterInClient(mgcMotiuDen);
      mgcMotiuDen.Visible := True;
      motiuD.setfocus;      
  end
  else FerError(Error1,True);
end;

procedure TwFichaOrtesis.sbOKClick(Sender: TObject);
begin
  if motiuD.Lines.Text = '' then FerError('És obligatori informar-ne el motiu.',True)
  else begin
      CanviaEstatOrtesi(qDades.FieldByName('c_intercon').AsInteger,6,motiuD.Lines.Text);
      MotiuDen.visible := True;
      mgcMotiuDen.Visible := False;
  end;
end;

procedure TwFichaOrtesis.sbCancelClick(Sender: TObject);
begin
  mgcMotiuDen.Visible := False;
end;

// parte 52244 - i
procedure TwFichaOrtesis.OrtesisRegAfterPost(DataSet: TDataSet);
begin
   if wMain.LastTraza = 0 then wMain.LastTraza := wData.ObraTrazaControl(qDades.FieldByName('c_historia').AsInteger, Self.Caption, wMain.Aplica,DataSet.FieldByName('c_intercon').AsInteger);
   wMain.AddStatusTraza('h');
end;
// parte 52244 - f

procedure TwFichaOrtesis.bModificarGarantClick(Sender: TObject);
begin
  tGarants.Close;
  tGarants.Open;
  tGarants.FindKey( VarArrayof([OrtesisLin.FieldByName('id_garant').AsInteger]));
  if tGarants.Eof then tGarants.Insert
                  else tGarants.Edit;
  CenterInclient(mgcGarant);
  mgcGarant.Show;
end;

procedure TwFichaOrtesis.HYBarra4AlCancel(Sender: TObject);
begin
  if tGarants.EstaEditando and AvisoSN('Voleu cancel·lar les modificacions?') then
  begin
      tGarants.Close;
      mgcGarant.Hide;
  end;
end;

procedure TwFichaOrtesis.tGarantsAfterInsert(DataSet: TDataSet);
var
 id: Integer;
begin
  id := GutSelect('select max(id_garant) from GARANTS',[]);
  DataSet.FieldByName('id_garant').AsInteger := id + 1;
end;

procedure TwFichaOrtesis.tGarantsAfterPost(DataSet: TDataSet);
begin
  if (not OrtesisLin.EstaEditando) and (not OrtesisLin.EstabaInsertando) then OrtesisLin.Edit;
  ModificantGarant := True;
  OrtesisLin.FieldByName('id_garant').AsInteger := tGarants.FieldByName('id_garant').AsInteger;
  OrtesisLin.Post; // per refrescar les dades del garant que es mostren per pantalla
  OrtesisLin.Refresh;
  ModificantGarant := False;
  mgcGarant.Hide;
end;

procedure TwFichaOrtesis.tGarantsAlConsultarCampoFiltro2(Sender: TObject;
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

procedure TwFichaOrtesis.cPoblacionsGAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if (not tGarants.EstaEditando) then tGarants.Edicion;
  tGarants.FieldByName('Codigo'    ).AsString := Datos.FieldByName('CPostal'     ).AsString;
  tGarants.FieldByName('Poblacio'  ).AsString := Datos.FieldByName('N_Poblacio'  ).AsString;
  tGarants.FieldByName('Provincia' ).AsString := Datos.FieldByName('N_Provincia' ).AsString;
end;

procedure TwFichaOrtesis.bNouGarantClick(Sender: TObject);
begin
  tGarants.Close;
  tGarants.Open;
  tGarants.FindKey( VarArrayof([OrtesisLin.FieldByName('id_garant').AsInteger]));
  tGarants.Insert;
  CenterInclient(mgcGarant);
  mgcGarant.Show;
end;

procedure TwFichaOrtesis.tGarantsBeforePost(DataSet: TDataSet);
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

procedure TwFichaOrtesis.HYEdit7Exit(Sender: TObject);
begin
  pGarant.Visible := (OrtesisLin.FieldByName('C_CENTREFAC').AsString = '00') or (OrtesisLin.FieldByName('C_CENTREFAC').AsString = '50');
end;

procedure TwFichaOrtesis.HYEdit26Exit(Sender: TObject);
begin
  pGarantDades.Visible := (OrtesisLin.FieldByName('C_CENTREFAC2').AsString = '00') or (OrtesisLin.FieldByName('C_CENTREFAC2').AsString = '50');
end;                                                                                                                                       

procedure TwFichaOrtesis.sbModificaEntregaClick(Sender: TObject);
var
 DE: TDateTime;
begin
  // demanar una nova data
  DE := Calendario(DateServer, wData.Projecte.Idioma, False, 'Nova data d''entrega');
  eDataEntrega.Text := FormatDateTime('dd/mm/yyyy', DE);

  // Gravem registre a INTERCONORTESISREG
  GutExecute('update INTERCONORTESISREG set DATA = "%s" where C_INTERCON = %d and TIPUS = 206', [FormatDateTime('dd.mm.yyyy',StrToDate(eDataEntrega.Text)), Ortesis1.FieldByName('C_Intercon').AsInteger]);

  // Guardem registre de la modificació a trazacontrol
  if wMain.LastTraza = 0 then wMain.LastTraza := wData.ObraTrazaControl(qDades.FieldByName('c_historia').AsInteger, Self.Caption, wMain.Aplica, Ortesis1.FieldByName('c_intercon').AsInteger);
  wMain.AddStatusTraza('y');

  ShowMessage('Data d''entrega modificada');
end;

procedure TwFichaOrtesis.bRecuperaClick(Sender: TObject);
begin
    if not AvisoNS('Voleu recuperar la gestió d''aquesta ortesi? ' + NLine +
                   'Els diferents elements no apareixeran a SAP pendents de facturar ' + NLine +
                   'sinó que caldrà afegir noves línies')
    then Exit;

    // Només modifiquem l'estat a INTERCON

    if (eDataEntrega.Text = '') then qAnulaIntercon.ParamByName('estat').AsInteger := 11
                                else qAnulaIntercon.ParamByName('estat').AsInteger := 46;

    qAnulaIntercon.ParamByName('C_Intercon').AsInteger := OrtesisLin.FieldByName('C_Intercon').AsInteger;
    qAnulaIntercon.ExecSQL;

    bAnula.Enabled := True;
    bNoGestiona.Enabled := True;
    bRecupera.Enabled := False;
    bEntregar.Enabled := True;

    qDades.Close;
    qDades.Open;
end;


end.

