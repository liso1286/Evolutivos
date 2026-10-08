unit FitxaInformesAM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, HYDialogConsulta, Buttons, Grids, DBGrids, HYGrids,
  StdCtrls, DB, DBTables, HYSql, HYPanels, Hy_Misc, DBCtrls, HYLabel,
  HYEdit, Word_TLB, Data, HYDialogBusca, QuickRpt, QRCtrls, jpeg, DBGridEh,
  ActnList, DBGridEhImpExp, ComCtrls, OleCtrls, VSPDFViewerX_TLB,
  Diccionari, ShellApi, IBQuery;

type
  TwFitxaInformesAM = class(TForm)
    Panel1: TPanel;
    Panel: TPanel;
    HYGrid1: THYGrid;
    sbSolicita: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    sbEnCurs: TSpeedButton;
    cFili: THYConsulta;
    sbSortir: TSpeedButton;
    qDades: TQuery;
    dsDades: TDataSource;
    sbAnula: TSpeedButton;
    pEnCurs: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    pHistoric: TPanel;
    Shape5: TShape;
    Shape6: TShape;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Shape8: TShape;
    Label8: TLabel;
    sbFinal: TSpeedButton;
    lUserActiu: TLabel;
    cMetges: THYConsulta;
    sbEntregat: TSpeedButton;
    sbList: TSpeedButton;
    ActionList1: TActionList;
    Sortir: TAction;
    Llistar: TAction;
    SaveDialog1: TSaveDialog;
    dsList: TDataSource;
    qList: TQuery;
    gridEh: TDBGridEh;
    sbHistoricTot: TSpeedButton;
    sbModif: TSpeedButton;
    Panel6: TPanel;
    visorPDF: TVSPDFViewer;
    cInformesTipus: THYConsulta;
    tInformes: ThySqlTable;
    dsInformes: TDataSource;
    Splitter1: TSplitter;
    HYGrid2: THYGrid;
    mgcSolicitud: THyMoveGroupControl;
    HYArea1: THYArea;
    Eti_tInfomres_hist_NomComplet: THYLabel;
    Eti_tInfomres_tipus_N_Tipus: THYLabel;
    Eti_tInfomres_usuari_Nomsencer: THYLabel;
    Eti_tInfomres_tdoc_N_Codi: THYLabel;
    Eti_tInfomres_entrega_N_Codi: THYLabel;
    Ed_tInfomres_C_Historia: THYEdit;
    Ed_tInfomres_C_Tipus: THYEdit;
    Ed_tInfomres_C_Usuari: THYEdit;
    Ed_tInfomres_Solicitant: THYEdit;
    Ed_tInfomres_Parentiu: THYEdit;
    Ed_tInfomres_T_DOC: THYEdit;
    Ed_tInfomres_NUM_DOC: THYEdit;
    Ed_tInfomres_C_Entrega: THYEdit;
    Ed_tInfomres_Contacte: THYEdit;
    Check_tInfomres_Urgent: THYCheck;
    Ed_tInfomres_Comentari: THYEdit;
    pIncapacitat: TPanel;
    Label9: TLabel;
    lbDadesIncapacitat: TLabel;
    HYBarra1: THYBarra;
    lIdioma: TLabel;
    Panel5: TPanel;
    mgcPrint: THyMoveGroupControl;
    PageControl1: TPageControl;
    TabING: TTabSheet;
    ScrollBox2: TScrollBox;
    qrSol: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    qrlNumHist: TQRLabel;
    qrlMetge: TQRLabel;
    QRBand2: TQRBand;
    qrlNom: TQRLabel;
    qrlSol: TQRLabel;
    qrlParent: TQRLabel;
    qrlMotiu: TQRLabel;
    qrlFirma: TQRLabel;
    qrlDNI: TQRLabel;
    qrmComent: TQRMemo;
    QRBand3: TQRBand;
    qrlPeriode: TQRLabel;
    qrlEntrega: TQRLabel;
    qrmLOPD: TQRMemo;
    TabNPC: TTabSheet;
    ScrollBox1: TScrollBox;
    qrSolNPC: TQuickRep;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRImage2: TQRImage;
    qrlNumHistNPC: TQRLabel;
    qrlMetgeNPC: TQRLabel;
    QRBand5: TQRBand;
    qrlNomNPC: TQRLabel;
    qrlSolNPC: TQRLabel;
    qrlParentNPC: TQRLabel;
    qrlMotiuNPC: TQRLabel;
    qrlFirmaNPC: TQRLabel;
    qrlDNINPC: TQRLabel;
    qrmComentNPC: TQRMemo;
    QRBand6: TQRBand;
    qrlPeriodeNPC: TQRLabel;
    qrlEntregaNPc: TQRLabel;
    QRLabel1: TQRLabel;
    qrmLOPDNPC: TQRMemo;
    mgcMotiuA: THyMoveGroupControl;
    sbOK: TSpeedButton;
    sbCancel: TSpeedButton;
    motiuA: TMemo;
    mgcPeriode: THyMoveGroupControl;
    eDesde: THYTextEdit;
    eFins: THYTextEdit;
    Button1: TButton;
    qDadesReg: TQuery;
    dsDadesReg: TDataSource;
    Shape10: TShape;
    Label11: TLabel;
    qDadesRegACCIO: TSmallintField;
    qDadesRegN_CODI: TStringField;
    qDadesRegC_USUARI: TStringField;
    qDadesRegMETGE: TStringField;
    qDadesRegDATA: TDateTimeField;
    qDadesRegCOMENTARI: TStringField;
    tInformes_ID_Informe: TIntegerField;
    tInformes_C_Historia: TIntegerField;
    tInformes_C_Tractament: TIntegerField;
    tInformes_C_Tipus: TStringField;
    tInformes_C_Usuari: TStringField;
    tInformes_Solicitant: TStringField;
    tInformes_Parentiu: TStringField;
    tInformes_T_DOC: TStringField;
    tInformes_NUM_DOC: TStringField;
    tInformes_C_Entrega: TSmallintField;
    tInformes_Contacte: TStringField;
    tInformes_Urgent: TStringField;
    tInformes_Comentari: TStringField;
    tInformes_C_Estat: TSmallintField;
    tInformes_Arxiu: TStringField;
    tInformes_C_Plantilla: TIntegerField;
    lFiltre: TLabel;
    lOrdre: TLabel;
    sbArees: TSpeedButton;
    tInformes_Gestionat: TSmallintField;
    Ed_tInformes_Gestionat: THYEdit;
    Eti_tInformes_gestionat_N_Codi: THYLabel;
    cArees: THYConsulta;
    cEntrega: THYConsulta;
    sbArxivar: TSpeedButton;
    Shape7: TShape;
    Label7: TLabel;
    sbConsulta: TSpeedButton;
    cAccions: THYConsulta;
    mgcAccions: THyMoveGroupControl;
    HYGrid3: THYGrid;
    HYMemo1: THYMemo;
    sbTanca: TSpeedButton;
    qAccions: TQuery;
    dsAccions: TDataSource;
    qAccionsN_CODI: TStringField;
    qAccionsLINIA: TIntegerField;
    qAccionsDATA: TDateTimeField;
    qAccionsC_USUARI: TStringField;
    qAccionsMETGE: TStringField;
    qAccionsANOTACIO: TMemoField;
    tInformes_C_Anotacio: TIntegerField;
    tInformes_Publicar_HC3: TStringField;
    sbPublicarHC3: TSpeedButton;
    tInformes_Versio: TSmallintField;
    cbPublicarHC3: THYCheck;
    tInformes_C0_0: TIntegerField;
    tInformes_C0_1: TStringField;
    tInformes_C0_2: TStringField;
    tInformes_C0_3: TIntegerField;
    tInformes_C0_4: TStringField;
    tInformes_C0_5: TStringField;
    tInformes_C0_6: TStringField;
    tInformes_C0_7: TStringField;
    tInformes_C0_8: TSmallintField;
    tInformes_C0_9: TSmallintField;
    tInformes_C0_10: TStringField;
    tInformes_C0_11: TStringField;
    tInformes_C0_12: TDateTimeField;
    tInformes_C0_13: TStringField;
    tInformes_C0_14: TStringField;
    tInformes_C0_15: TStringField;
    tInformes_C0_16: TStringField;
    tInformes_C0_17: TSmallintField;
    tInformes_C0_18: TSmallintField;
    tInformes_C0_19: TStringField;
    tInformes_C0_20: TStringField;
    tInformes_C0_21: TStringField;
    tInformes_C0_22: TStringField;
    tInformes_C0_23: TStringField;
    tInformes_C0_24: TSmallintField;
    tInformes_C0_25: TStringField;
    tInformes_C0_26: TSmallintField;
    tInformes_C0_27: TStringField;
    tInformes_C0_28: TStringField;
    tInformes_C0_29: TStringField;
    tInformes_C0_30: TIntegerField;
    tInformes_C1_0: TStringField;
    tInformes_C1_1: TStringField;
    tInformes_C1_2: TStringField;
    tInformes_C1_3: TStringField;
    tInformes_C1_4: TSmallintField;
    tInformes_C1_5: TStringField;
    tInformes_C1_6: TStringField;
    tInformes_C1_7: TStringField;
    tInformes_C1_8: TStringField;
    tInformes_C1_9: TSmallintField;
    tInformes_C1_10: TStringField;
    tInformes_C2_0: TStringField;
    tInformes_C2_1: TStringField;
    tInformes_C2_2: TStringField;
    tInformes_C2_3: TStringField;
    tInformes_C2_4: TStringField;
    tInformes_C2_5: TStringField;
    tInformes_C2_6: TStringField;
    tInformes_C2_7: TIntegerField;
    tInformes_C2_8: TStringField;
    tInformes_C2_9: TStringField;
    tInformes_C2_10: TSmallintField;
    tInformes_C2_11: TStringField;
    tInformes_C2_12: TStringField;
    tInformes_C2_13: TStringField;
    tInformes_C2_14: TStringField;
    tInformes_C2_15: TStringField;
    tInformes_C2_16: TIntegerField;
    tInformes_C2_17: TDateTimeField;
    tInformes_C3_0: TStringField;
    tInformes_C3_1: TStringField;
    tInformes_C4_0: TSmallintField;
    tInformes_C4_1: TStringField;
    tInformes_C4_2: TSmallintField;
    tInformes_C4_3: TStringField;
    tInformes_C4_4: TStringField;
    tInformes_C4_5: TStringField;
    tInformes_C5_0: TSmallintField;
    tInformes_C5_1: TStringField;
    tInformes_C5_2: TSmallintField;
    tInformes_C5_3: TStringField;
    tInformes_C5_4: TStringField;
    tInformes_C5_5: TStringField;
    tInformes_C6_0: TIntegerField;
    tInformes_C6_1: TIntegerField;
    tInformes_C6_2: TStringField;
    tInformes_C6_3: TDateTimeField;
    tInformes_C6_4: TDateTimeField;
    tInformes_C6_5: TDateTimeField;
    tInformes_C6_6: TStringField;
    tInformes_C6_7: TStringField;
    tInformes_C6_8: TStringField;
    tInformes_C6_9: TFloatField;
    tInformes_C6_10: TStringField;
    tInformes_C6_11: TStringField;
    tInformes_C6_12: TStringField;
    tInformes_C6_13: TStringField;
    tInformes_C6_14: TSmallintField;
    tInformes_C6_15: TSmallintField;
    tInformes_C6_16: TSmallintField;
    tInformes_C6_17: TStringField;
    tInformes_C6_18: TStringField;
    tInformes_C6_19: TStringField;
    tInformes_C6_20: TIntegerField;
    tInformes_C6_21: TStringField;
    tInformes_C6_22: TStringField;
    tInformes_C6_23: TStringField;
    tInformes_C6_24: TStringField;
    tInformes_C6_25: TStringField;
    tInformes_C6_26: TStringField;
    tInformes_C6_27: TStringField;
    tInformes_C6_28: TDateTimeField;
    tInformes_C6_29: TIntegerField;
    tInformes_C7_0: TIntegerField;
    tInformes_C7_1: TStringField;
    tInformes_C7_2: TStringField;
    tInformes_C7_3: TSmallintField;
    tInformes_C7_4: TStringField;
    tInformes_C7_5: TIntegerField;
    tInformes_C8_0: TSmallintField;
    tInformes_C8_1: TStringField;
    tInformes_C8_2: TSmallintField;
    tInformes_C8_3: TStringField;
    tInformes_C8_4: TStringField;
    tInformes_C8_5: TStringField;
    tInformes_C9_0: TIntegerField;
    tInformes_C9_1: TDateTimeField;
    tInformes_C9_2: TStringField;
    tInformes_C9_3: TIntegerField;
    tInformes_C9_4: TIntegerField;
    tInformes_C9_5: TStringField;
    tInformes_C9_6: TStringField;
    qDadesID_INFORME: TIntegerField;
    qDadesC_HISTORIA: TIntegerField;
    qDadesC_TRACTAMENT: TIntegerField;
    qDadesC_TIPUS: TStringField;
    qDadesC_USUARI: TStringField;
    qDadesSOLICITANT: TStringField;
    qDadesPARENTIU: TStringField;
    qDadesT_DOC: TStringField;
    qDadesNUM_DOC: TStringField;
    qDadesC_ENTREGA: TSmallintField;
    qDadesCONTACTE: TStringField;
    qDadesURGENT: TStringField;
    qDadesCOMENTARI: TStringField;
    qDadesC_ESTAT: TSmallintField;
    qDadesARXIU: TStringField;
    qDadesC_PLANTILLA: TIntegerField;
    qDadesGESTIONAT: TSmallintField;
    qDadesC_ANOTACIO: TIntegerField;
    qDadesPUBLICAR_HC3: TStringField;
    qDadesVERSIO: TSmallintField;
    qDadesIDIOMA: TSmallintField;
    qDadesTIPUS_PLANTILLA: TIntegerField;
    qDadesDATA: TDateTimeField;
    qDadesNOMCOMPLET: TStringField;
    qDadesC_UNITATMEDICA: TSmallintField;
    qDadesN_UNITATM: TStringField;
    qDadesN_CODI: TStringField;
    qDadesN_CODI_1: TStringField;
    qDadesIDIOMA_1: TSmallintField;
    qDadesNOMSENCER: TStringField;
    qDadesC_USUARI_1: TStringField;
    qDadesN_CODI_2: TStringField;
    qDadesPUBLICAR_HC3_TIPUS: TStringField;
    qDadesPUBLICAR_APP: TStringField;
    qDadesC_CENTREFAC: TStringField;
    qDadesC_CLIENT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbSolicitaClick(Sender: TObject);
    procedure cFiliAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure sbSortirClick(Sender: TObject);
    procedure Filtre(Sender: TObject);
    procedure HYGrid1AlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Datos: TDataSet);
    procedure HYGrid1DblClick(Sender: TObject);
    procedure sbAnulaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qDadesAfterScroll(DataSet: TDataSet);
    procedure HYGrid1TitleClick(Column: TColumn);
    procedure HYGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure sbCancelClick(Sender: TObject);
    procedure sbOKClick(Sender: TObject);
    procedure sbFinalClick(Sender: TObject);
    procedure lUserActiuClick(Sender: TObject);
    procedure cMetgesAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure sbEntregatClick(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure SortirExecute(Sender: TObject);
    procedure LlistarExecute(Sender: TObject);
    procedure sbModifClick(Sender: TObject);
    procedure cInformesTipusAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tInformesAlConsultarCampoFiltro2(Sender: TObject;
      var Personalizada: Boolean; NombreConsulta: String;
      var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure tInformesAfterCancel(DataSet: TDataSet);
    procedure tInformesBeforePost(DataSet: TDataSet);
    procedure tInformesAfterPost(DataSet: TDataSet);
    procedure Ed_tInfomres_C_TipusEnter(Sender: TObject);
    procedure Ed_tInfomres_C_UsuariEnter(Sender: TObject);
    procedure AlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cAreesAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure Ed_tInformes_GestionatEnter(Sender: TObject);
    procedure tInformesAfterInsert(DataSet: TDataSet);
    procedure cEntregaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure Ed_tInfomres_C_EntregaEnter(Sender: TObject);
    procedure sbArxivarClick(Sender: TObject);
    procedure sbConsultaClick(Sender: TObject);
    procedure sbTancaClick(Sender: TObject);
    procedure sbPublicarHC3Click(Sender: TObject);
  private
    estat,area: Integer;
    Metge,MetgeAnul: TMetge;
    Idioma, RutaAnulats, RutaInici, RutaFi, RutaEntregats: String;
    insertant,preguntatTract: Boolean;
    function  ForaIntros(const S: string): string;
    function  IdentificaDirectori(DirectoriDocs, H: String):String;
    procedure AnularArxiu(ID_Informe: Integer; estat: Integer; Comentari: String);
    procedure DesAnularArxiu(ID_Informe: Integer);
    procedure ValidarDadesPacient;
  public
    MiFormEdit: TCustomForm;
    function ValidarNIE(Texto: String):String;
  end;

var
  wFitxaInformesAM: TwFitxaInformesAM;

implementation

uses DataAdmisio, Funciones, HYCalendari, DataInformes, DataInformesQ;

{$R *.dfm}

procedure TwFitxaInformesAM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TwFitxaInformesAM.sbSolicitaClick(Sender: TObject);
begin
  if wData.UsuariActiu.Codi <> '' then Metge := wData.UsuariActiu
                                  else Metge := PreguntaMetge;
  if Metge.codi ='' then Exit
  else begin
      lUserActiu.Visible := True;
      lUserActiu.Caption := 'Usuari Actiu: '+Metge.NomSencer;
  end;
  TeDretUsuari(Metge.Codi, 'G222,G223,M270,M271', '', True);
  cFili.ExecuteModal;
end;

procedure TwFitxaInformesAM.cFiliAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
    CenterInClient(mgcSolicitud);
    mgcSolicitud.Show;
    preguntatTract:=False;
    with tInformes do
    begin
        Insert;
        insertant:=True; 
        FieldByName('C_HISTORIA'  ).AsInteger := Datos.FieldByName('num_hist').AsInteger;
        FieldByName('C_ESTAT'     ).AsInteger := 0;
        FieldByName('T_DOC'       ).AsString  := Datos.FieldByName('T_DOC'   ).AsString;
        FieldByName('NUM_DOC'     ).AsString  := Datos.FieldByName('DNI'     ).AsString;
        FieldByName('PUBLICAR_HC3').AsString  := 'N';

        pIncapacitat.Visible := (Datos.FieldByName('Incapacitat').AsString = 'S');
        if pIncapacitat.Visible then
        begin
            lbDadesIncapacitat.Caption := Format('TUTOR: %s, TELÈFON: %s', [Datos.FieldByName('Incapacitat_Tutor').AsString,
                                                                            Datos.FieldByName('Incapacitat_Telefon').AsString]);
        end;

        // segons el grup del metge mostrarem unes o altres dades
        if Metge.Grup ='ME' then  // Metges
        begin
            FieldByName('C_USUARI'  ).AsString := Metge.Codi;
            FieldByName('SOLICITANT').AsString := Metge.NomSencer;
            if (Metge.Especial='07') then FieldByName('C_TIPUS').AsString := 'PSI';
        end;

        Ed_tInfomres_C_Usuari.ReadOnly  := (Metge.Grup = 'ME');
        Ed_tInfomres_Parentiu.Visible   := TeDretAcces([70]);
    end;
    Ed_tInfomres_C_Tipus.SetFocus;
end;

procedure TwFitxaInformesAM.cInformesTipusAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  preguntatTract := False;
  tInformes.FieldByName('C_TIPUS').AsString := Datos.fieldByName('C_TIPUS').AsString;
  if not Datos.FieldByName('GESTIONAT').IsNull then tInformes.FieldByName('GESTIONAT').AsInteger := Datos.FieldByName('GESTIONAT').AsInteger;

  cbPublicarHC3.Visible := (Datos.FieldByName('Publicar_HC3').AsString = 'N');  // poden marcar per publicar a l'HC3 si el tipus no ho porta predeterminat
end;

procedure TwFitxaInformesAM.sbSortirClick(Sender: TObject);
begin
  Close;
end;

function TwFitxaInformesAM.ValidarNIE(Texto: String):String;
var
  DNI: String;
begin
{ Letra inicial, siete dígitos y un carácter de verificación alfabético.
    La letra inicial es una X para NIEs asignados antes de julio de 2008 y una Y para NIEs asignados a partir de dicha fecha.
    Una vez agotada la serie numérica de la Y la norma prevé que se utilice la Z.

    Para calcular la letra final de este número, se sustitulle la primera letra por los siguientes valores X=0, Y=1, y Z=2 y
    con esta sustitución hecha se hace el mismo proceso que para calcular la letra del DNI
}
  if (Texto[1] <> 'X') and (Texto[1] = 'Y') and (Texto[1] = 'Z') then
  begin
      Result := '0';
      Exit;
  end
  else begin
      if      (Texto[1] <> 'X') then DNI:='0'+Copy(texto,2,len(texto))
      else if (Texto[1] <> 'Y') then DNI:='1'+Copy(texto,2,len(texto))
      else if (Texto[1] <> 'Z') then DNI:='2'+Copy(texto,2,len(texto));
      Result := ValidarDNI(DNI);      
  end;
end;

procedure TwFitxaInformesAM.ValidarDadesPacient;
var
  textError: String;
begin
  if tInformes.fieldByName('hist_NOMBRE').IsNull or (tInformes.fieldByName('hist_NOMBRE').AsString = '')
  then textError:= 'Falta el NOM del pacient. Completeu la fitxa del pacient abans de fer la sol·licitud.';

  if tInformes.fieldByName('hist_APELLIDO1').IsNull or (tInformes.fieldByName('hist_APELLIDO1').AsString = '')
  then textError:='Falta el PRIMER COGNOM del pacient. Completeu la fitxa del pacient abans de fer la sol·licitud.';

  if tInformes.fieldByName('hist_FECHA_NAC').IsNull or (tInformes.fieldByName('hist_FECHA_NAC').AsString = '')
  then textError:='Falta la DATA DE NAIXEMENT del pacient. Completeu la fitxa del pacient abans de fer la sol·licitud.';

  if tInformes.fieldByName('hist_TSI').IsNull or (tInformes.fieldByName('hist_TSI').AsString = '')
  then textError:='Falta el TSI del pacient. Completeu la fitxa del pacient abans de fer la sol·licitud.';

  if tInformes.fieldByName('hist_DNI').IsNull or (tInformes.fieldByName('hist_DNI').AsString = '')
  or ((ValidarDNI(tInformes.fieldByName('hist_DNI').AsString) = '0') and
      (ValidarNIE(tInformes.fieldByName('hist_DNI').AsString) = '0')) // el pacient ha de tenir NIF o NIE.
  then textError:='Falta el DNI/NIE del pacient o és incorrecte. Completeu la fitxa del pacient abans de fer la sol·licitud.';

  if tInformes.fieldByName('hist_ADRESA').IsNull or (tInformes.fieldByName('hist_ADRESA').AsString = '')
  then textError:='Falta l''ADREÇA del pacient. Completeu la fitxa del pacient abans de fer la sol·licitud.';

  if tInformes.fieldByName('hist_CODIGO').IsNull or (tInformes.fieldByName('hist_CODIGO').AsString = '')
  then textError:='Falta el CODI POSTAL del pacient. Completeu la fitxa del pacient abans de fer la sol·licitud.';

  if tInformes.fieldByName('hist_POBLACIO').IsNull or (tInformes.fieldByName('hist_POBLACIO').AsString = '')
  then textError:='Falta la POBLACIO del pacient. Completeu la fitxa del pacient abans de fer la sol·licitud.';

  if tInformes.fieldByName('hist_SEXO').IsNull or (tInformes.fieldByName('hist_SEXO').AsString = '')
  then textError:='Falta el SEXE del pacient. Completeu la fitxa del pacient abans de fer la sol·licitud.';

  if (textError <> '') then FerError(textError,True);
end;

procedure TwFitxaInformesAM.Filtre(Sender: TObject);
begin
  qDades.Close;
  case (Sender as TSpeedButton).Tag of
  1: begin  // netejar filtres
         qDades.SQL[13]   := '';
         lFiltre.Caption := '';
     end;
  2: begin  // Totes les àrees / La meva àrea
         if sbArees.Caption = 'Totes les àrees' then
         begin
             qDades.SQL[14]  := 'and i.gestionat is not null';
             sbArees.Caption := 'La meva àrea';
             sbArees.Hint    := 'Veure les sol·licituds de la meva àrea';
         end
         else begin
             if Metge.Codi = '' then lUserActiuClick(lUserActiu);
             if      TeDretUsuari(Metge.Codi, 'G190,M240') then area := 0
             else if TeDretUsuari(Metge.Codi, 'G191,M241') then area := 1
             else if TeDretUsuari(Metge.Codi, 'G192,M242') then area := 2
             else if TeDretUsuari(Metge.Codi, 'G193,M243') then area := 3
             else if TeDretUsuari(Metge.Codi, 'G194,M244') then area := 4
                                                           else area := 0;
             qDades.SQL[14]  := 'and i.gestionat = ' +IntToStr(area);
             sbArees.Caption := 'Totes les àrees';
             sbArees.Hint    := 'Veure les sol·licituds de totes les àrees';
         end;
     end;
  4: begin  // en curs
         qDades.SQL[12]     := 'where C1.R_CODI = ''EN_CURS''';
         pEnCurs.Visible   := True;
         pHistoric.Visible := False;
     end;
  6: begin  // històric (impresos, anul·lats i que no procedeixen)
         qDades.SQL[12]     := 'where C1.R_CODI = ''HISTORIC'' ';
         pEnCurs.Visible   := False;
         pHistoric.Visible := True;
     end;
  end;
  qDades.SQL[15] := 'ORDER BY IR.DATA DESC, I.C_HISTORIA';
  lOrdre.Caption := 'Ordenat per data de sol·litud descendent i NHC';
  qDades.Open;
  qDadesReg.Close;
  qDadesReg.Open;
end;

procedure TwFitxaInformesAM.HYGrid1AlPintarGrid(var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Datos: TDataSet);
begin
  case Datos.FieldByName('c_estat').AsInteger of
  0,14: ColorFont := clBlue;
  1,2:  ColorFont := clGreen;
  3:    ColorFont := $004080FF;
  4,5:  ColorFont := clMoneyGreen;
  6,51: ColorFont := clFuchsia;
  8:    ColorFont := clRed;
  9,99: ColorFont := $00AEAEFF;
  10:   ColorFont := clGray;
  11:   ColorFont := $00C08000;
  end;

  if (gdSelected in State) then
  begin
      ColorBrush := clNavy;
      ColorFont  := clWhite;
  end;

  if (CompareText(Column.Field.FieldName, 'Urgent') = 0) and (Column.Field.AsString = 'S') then
  begin
      ColorBrush := clRed;
      ColorFont  := clWhite;
  end;
end;

procedure TwFitxaInformesAM.FormCreate(Sender: TObject);
begin
  lUserActiuClick(lUserActiu);
  sbEnCurs.Click;
  sbArees.Click;
  mgcSolicitud.Hide;
  preguntatTract:=False;
  mgcMotiuA.Hide;
  mgcAccions.Hide;
  tInformes.Open;
  lUserActiu.Visible:=False;
  sbList.Visible := TeDretAcces([70,107]); // només per admissions i Secres mèdiques
//  visorPDF.setActivationCode('7afdd0fc93bc3e6c2cb7ef97bc1f9361dbe7393e', 'informatica@guttmann.com');
  RutaAnulats   := GutSelect('select ruta from directoris where nom="INFORMES_ANULATS"' ,[]);
  RutaEntregats := GutSelect('select ruta from directoris where nom="INFORMES_ENTREGAR"',[]);
  lFiltre.Caption := '';
end;

procedure TwFitxaInformesAM.qDadesAfterScroll(DataSet: TDataSet);
begin
  if mgcAccions.Showing then sbTanca.Click;

  estat := qDades.FieldByName('c_estat').AsInteger;

  // si el registre esta anulat, canviem boto pq sigui "des-anular" (=recuperar)
  if (estat = 9) or (estat = 99) then
  begin
      sbAnula.Caption := 'Recupera';
      sbAnula.Hint    := 'Recupera registre anul·lat';
  end
  else begin
      sbAnula.Caption := 'Anul·la';
      sbAnula.Hint    := 'Anul·la registre';
  end;
  sbAnula.Enabled := ((estat<=10) or (estat=99)) and (DataSet.FieldByName('C_TIPUS').AsString <> 'CEX');

  sbFinal.Enabled := (estat=6) or (estat=11);
  if estat=11 then sbFinal.Caption := 'Desarxiva'
              else sbFinal.Caption := 'Finalitza';
              
  sbPublicarHC3.Enabled := ((estat=6) or (estat=10)) and (DataSet.FieldByName('PUBLICAR_HC3_TIPUS').AsString = 'N') and
                           (DataSet.FieldByName('C_Centrefac').AsString = '04') and (DataSet.FieldByName('C_Client').AsString = 'UP');
  sbArxivar.Enabled     := (((DataSet.FieldByName('C_TIPUS').AsString = 'CEX') or (DataSet.FieldByName('C_TIPUS').AsString = 'CmA')) and (estat=6)) or
                            ((DataSet.FieldByName('C_TIPUS').AsString = 'CEB') and (estat>=3) and (estat<=6));
  sbModif.Enabled       := (estat<8);                   // només modificable si no està anul·lat ni finalitzat
  sbEntregat.Visible    := TeDretAcces([70]);           // només el pot entregar admissions
  sbEntregat.Enabled    := (DataSet.FieldByName('c_entrega').AsInteger<>9) and (estat=10) and (not qDadesReg.Locate('accio','7',[]));  // només es pot entregar si no s'ha entregat encara i ja està imprès
end;

procedure TwFitxaInformesAM.HYGrid1TitleClick(Column: TColumn);
var
  camp: String;
  ordre: String;
begin
  if (qDades.FieldByName(Column.FieldName).Tag mod 2 = 0) then ordre := ' ASC' else ordre := ' DESC';

  // Busco l'índex del camp perquè ara tinc un "union" i no puc ordenar amb el nom del camp:
  if      (UpperCase(Column.FieldName) = 'C_HISTORIA'    ) then camp := 'I.C_HISTORIA'
  else if (UpperCase(Column.FieldName) = 'NOMSENCER'     ) then camp := 'M.NOMSENCER'
  else if (UpperCase(Column.FieldName) = 'SOLICITANT'    ) then camp := 'I.SOLICITANT'
  else if (UpperCase(Column.FieldName) = 'PARENTIU'      ) then camp := 'I.PARENTIU'
  else if (UpperCase(Column.FieldName) = 'NUM_DOC'       ) then camp := 'I.NUM_DOC'
  else if (UpperCase(Column.FieldName) = 'C_TIPUS'       ) then camp := 'I.C_TIPUS'
  else if (UpperCase(Column.FieldName) = 'N_CODI_1'      ) then camp := 'C2.N_CODI'
  else if (UpperCase(Column.FieldName) = 'URGENT'        ) then camp := 'I.URGENT'
  else if (UpperCase(Column.FieldName) = 'C_USUARI'      ) then camp := 'I.C_USUARI'
  else if (UpperCase(Column.FieldName) = 'COMENTARI'     ) then camp := 'I.COMENTARI'
  else if (UpperCase(Column.FieldName) = 'N_CODI'        ) then camp := 'I.C_ESTAT'
  else if (UpperCase(Column.FieldName) = 'NOMCOMPLET'    ) then camp := 'F.NOMCOMPLET'
  else if (UpperCase(Column.FieldName) = 'CONTACTE'      ) then camp := 'I.CONTACTE'
  else if (UpperCase(Column.FieldName) = 'C_UNITATMEDICA') then camp := 'F.C_UNITATMEDICA'
  else if (UpperCase(Column.FieldName) = 'N_UNITATM'     ) then camp := 'U.N_UNITATM'
  else if (UpperCase(Column.FieldName) = 'DATA'          ) then camp := 'IR.DATA'
  else if (UpperCase(Column.FieldName) = 'COMENTARI_1'   ) then camp := 'IRAP.COMENTARI'
  else if (UpperCase(Column.FieldName) = 'COMENTARI_2'   ) then camp := 'IRA.COMENTARI'
  else if (UpperCase(Column.FieldName) = 'METGE'         ) then camp := 'MIR.METGE'
  else if (UpperCase(Column.FieldName) = 'DATA_1'        ) then camp := 'IRE.DATA'
  else if (UpperCase(Column.FieldName) = 'N_CODI_2'      ) then camp := 'CC.N_CODI';

  if      ordre = 'ASC'  then lOrdre.Caption := 'Ordenat per '+ Column.Title.Caption + ' ascendent'
  else if ordre = 'DESC' then lOrdre.Caption := 'Ordenat per '+ Column.Title.Caption + ' descendent'
                         else lOrdre.Caption := 'Ordenat per '+ Column.Title.Caption;

  qDades.Close;
  qDades.SQL[15] := 'ORDER BY ' + camp + ordre;
  qDades.Open;
  qDadesReg.Close;
  qDadesReg.Open;

  qDades.FieldByName(Column.FieldName).Tag := qDades.FieldByName(Column.FieldName).Tag + 1;
end;

procedure TwFitxaInformesAM.HYGrid1KeyPress(Sender: TObject;
  var Key: Char);
var
  Tecla: String;
  CampoBusca: String;
  Fecha: TDate;
  Comodin, filtre: String;
begin
  if (Key >= ' ') then
  begin
    Tecla := AnsiUpperCase(Key);
    Key := #0;

    CampoBusca := HYGrid1.SelectedField.FieldName;
    if      CampoBusca = 'NOMSENCER'   then CampoBusca := 'M.NOMSENCER'
    else if CampoBusca = 'N_CODI'      then CampoBusca := 'C1.N_CODI'
    else if CampoBusca = 'N_CODI_1'    then CampoBusca := 'C2.N_CODI'
    else if CampoBusca = 'COMENTARI_1' then CampoBusca := 'IRAP.COMENTARI'
    else if CampoBusca = 'COMENTARI_2' then CampoBusca := 'IRA.COMENTARI'
    else if CampoBusca = 'METGE'       then CampoBusca := 'MIR.METGE'
    else if CampoBusca = 'DATA_1'      then CampoBusca := 'IRE.DATA'
    else if CampoBusca = 'N_CODI_2'    then CampoBusca := 'CC.N_CODI'
    else if CampoBusca = 'C_USUARI'    then CampoBusca := 'I.C_USUARI'
    else if CampoBusca = 'C_USUARI_1'  then CampoBusca := 'IR.C_USUARI'
    else if CampoBusca = 'N_CODI_3'    then CampoBusca := 'CC.N_CODI'
    else if CampoBusca = 'C_HISTORIA'  then CampoBusca := 'I.C_HISTORIA';

    wDialogBusca := TwDialogBusca.Create(Self);
    wDialogBusca.Caption := 'Buscar';
    wDialogBusca.lblCampo.Caption := HYGrid1.Columns[HYGrid1.SelectedIndex].Title.Caption;
    wDialogBusca.bFiltro.Visible := False;  // no permetre fer filtres que no siguin 'igual'
    if (Tecla <> ' ') then wDialogBusca.Edit.Text := Tecla;
    if HYGrid1.SelectedField is TDateTimeField then wDialogBusca.Edit.Text := DateToStr(Date);

    if (wDialogBusca.ShowModal = mrOk) then
    begin
      filtre := ' AND ';

      if HYGrid1.SelectedField is TDateTimeField then // condició "Igual"
      begin
          Fecha := StrToDate(wDialogBusca.Edit.Text);
          filtre := filtre + '(' + CampoBusca + ' >= "' + FechaIB(Fecha)+ ' 00:00:00" AND ' +
                                   CampoBusca + ' <= "' + FechaIb(Fecha)+ ' 23:59:59")';
      end
      else begin
        Comodin := wData.Projecte.GetComodin(CampoBusca);

        if Pos(Comodin, wDialogBusca.Edit.Text) = 0
        then filtre := filtre + '(Upper('+CampoBusca+')' + ' LIKE UPPER("%'+wDialogBusca.Edit.Text+'%"))'
        else begin
          wDialogBusca.Edit.Text := Replace(Comodin, '%', wDialogBusca.Edit.Text);
          filtre := filtre + '(Upper(f_RTrim('+CampoBusca+'))' + ' LIKE UPPER("'+wDialogBusca.Edit.Text+'"))';
        end;
      end;
    end;
    lFiltre.Caption := lFiltre.Caption + 'Filtrat per "'+ wDialogBusca.Edit.Text + '" ('+HYGrid1.Columns[HYGrid1.SelectedIndex].Title.Caption+')';
    wDialogBusca.Free;

    qDades.Close;
    qDades.SQL[13] := qDades.SQL[13] + filtre;
    qDades.Open;
    qDadesReg.Close;
    qDadesReg.Open;
    HYGrid1.SetFocus;
  end;
end;

procedure TwFitxaInformesAM.sbCancelClick(Sender: TObject);
begin
  motiuA.Lines.Clear;
  mgcMotiuA.Hide;
  HYGrid1.DataSource.DataSet.EnableControls;
end;

function TwFitxaInformesAM.ForaIntros(const S: string): string;
var
  I, L: Integer;
  Source: Pchar;
begin
  Source := Pointer(S);
  L := Length(S);
  I := 1;
  Result:= '';

  while (I<=L) do
  begin
      if (Source^ = #10) or (Copy(S,I,1)='''') or (Copy(S,I,1)='"') then Result := Result + ' '
      else if (Source^ <> #13) then Result := Result + Copy(S,I,1);
      Inc(I);
      Inc(Source);
  end;
end;

procedure TwFitxaInformesAM.lUserActiuClick(Sender: TObject);
begin
  if wData.UsuariActiu.Codi <> '' then Metge := wData.UsuariActiu
                                  else Metge := PreguntaMetge;
  if Metge.Codi = '' then Exit
  else begin
    lUserActiu.Visible:=True;
    lUserActiu.Caption := 'Usuari Actiu: '+Metge.NomSencer;
    // 23.3.2021 - eliminat valor B de CORREGIR. Es pot diferenciar pel camp CENTRE però ho deixem lliure
    {if TeDretUsuari(Metge.Codi,'G191,M241') then cInformesTipus.SqlDic[4]:='AND CORREGIR="B" [AND FILTRO]'
                                            else cInformesTipus.SqlDic[4]:='[AND FILTRO]';}

    if      TeDretUsuari(Metge.codi, 'G222,M270') and TeDretUsuari(Metge.codi, 'G223,M271') then cInformesTipus.SqlDic[4] := 'AND CENTRE in ("H","B") [AND FILTRO]'
    else if TeDretUsuari(Metge.codi, 'G222,M270')                                           then cInformesTipus.SqlDic[4] := 'AND CENTRE="H" [AND FILTRO]'
    else if TeDretUsuari(Metge.codi, 'G223,M271')                                           then cInformesTipus.SqlDic[4] := 'AND CENTRE="B" [AND FILTRO]'
                                                                                            else cInformesTipus.SqlDic[4] := '[AND FILTRO]';
  end;
end;

procedure TwFitxaInformesAM.cMetgesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tInformes.FieldByName('C_USUARI').AsString := Datos.fieldbyname('codi').Asstring;
end;

procedure TwFitxaInformesAM.SortirExecute(Sender: TObject);
begin
  if mgcPeriode.Visible then mgcPeriode.Visible := False;
end;

procedure TwFitxaInformesAM.tInformesBeforePost(DataSet: TDataSet);
var
 f_centre, f_CE, f_tipus, f_dates: String;
 qTract: TIBQuery;
 tract, opcio: Integer;
 cf, client: String;
begin
    // 15-7-2020: permetre modificar sol·licitud encara que el tipus no sigui sol·licitable si no s'esta insertant (per poder modificar altres dades de la peticio que no siguin el tipus)
    if insertant and (GutSelect('SELECT COUNT(*) FROM INFORMES_TIPUS WHERE SOLICITABLE="S" AND BAIXA="N" AND C_TIPUS="%s"', [DataSet.FieldByName('C_TIPUS').AsString])=0)
    then FerError('El tipus és incorrecte.',True);

    // validar que no existeix cap altra sol·licitud pel mateix pacient amb igual motiu i data_informe nul·la o AVUI
    // permetre informes del mateix pacient, el mateix dia i mateix motiu però metges diferents
    // 10.2019: Si ja existeix una sol·licitud d'informe del mateix pacient, metge i tipus, avisem però deixem continuar
    if insertant and (0 < GutSelect('select count(*) from informes i              '+
                                    'where i.c_historia = %d and i.c_tipus = "%s" '+
                                    'and i.c_usuari = "%s" and i.c_estat < 8      ',
                                    [DataSet.FieldByName('C_HISTORIA').AsInteger,
                                     DataSet.FieldByName('C_TIPUS').AsString,
                                     DataSet.FieldByName('C_USUARI').AsString]))
    and not AvisoNS(Format('Ja hi ha un informe en curs d''aquest pacient (%d), tipus %s i sol·licitat a %s.' + NLine +
                           'Voleu fer una nova sol·licitud amb les mateixes dades?',
                           [DataSet.FieldByName('C_HISTORIA').AsInteger,
                            DataSet.FieldByName('C_TIPUS').AsString,
                            DataSet.FieldByName('C_USUARI').AsString]))
    then Abort;

    // Busquem el tractament al qual associar la sol·licitud
    f_centre := '';
    f_CE := '';
    f_tipus := '';
    f_dates := '';
    // filtre per centre
    if      (tInformes.FieldByName('tipus_Centre').AsString = 'B') then f_centre := ' and P.CENTRE = "B" '
    else if (tInformes.FieldByName('tipus_Centre').AsString = 'H') then f_centre := ' and P.CENTRE = "H" and P.ESEASE = "N" '
    else if (tInformes.FieldByName('tipus_Centre').AsString = 'E') then f_centre := ' and P.CENTRE = "H" and P.ESEASE = "S" ';
    // filtre per tipus de prestació
    // si és un informe de CE s'ha d'associar a una prestació de CE activa o no
    if (tInformes.FieldByName('tipus_Ordre').AsInteger = 5) then
    begin
        f_CE := ' and P.TIPUS = 2 ';
        f_dates := '';
    end
    else begin
        f_tipus := ' and P.TIPUS in (1, 3) '; // primer buscarem prestació activa llarga
        f_dates := ' and (T.DATA_ALTA is Null or T.DATA_ALTA >= "TODAY") ';
    end;

    if not preguntatTract then
    begin
        tract := -1;

        qTract := TIBQuery.Create(Application);
        TRY
          qTract.Database := wData.IBGuttmann;
          qTract.SQL.Text := Format('select cast(P.N_PRESTACIO||" "||T.DATA_INGRES||" - "||M.METGE as VarChar(80)), T.C_TRACTAMENT ' +
                                    'from TRACTAMENTS T ' +
                                    'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO ' + f_centre + f_CE + f_tipus +
                                    'join METGES M on T.C_COORDINADOR = M.CODI ' +
                                    'join DRETSPRESTA DP on P.C_PRESTACIO = DP.C_PRESTACIO AND DP.C_DRET = "P259" '+
                                    'where T.C_HISTORIA  = %d ' + f_dates +
                                    'order by T.DATA_INGRES desc ' +
                                    'rows 5 ',
                                    [DataSet.FieldByName('C_HISTORIA').AsInteger]);

          qTract.Open;
          qTract.FetchAll;
          if (qTract.RecordCount = 1) then tract := qTract.FieldByName('C_Tractament').AsInteger
          // si no trobem prestació
          else if (qTract.RecordCount = 0) then
          begin
              // Si és CE, ja no mirem res més (estàvem mirant prestacions de CE actives i recents)
              if (f_CE <> '') then FerError('No s''ha trobat cap prestació per demanar un informe de consulta externa', True)
              // Altrament, filtre per qualsevol prestació activa (havíem filtrat per prestació activa llarga)
              else begin
                  qTract.Close;
                  qTract.SQL.Text := Format('select cast(P.N_PRESTACIO||" "||T.DATA_INGRES||" - "||M.METGE as VarChar(80)), T.C_TRACTAMENT ' +
                                            'from TRACTAMENTS T ' +
                                            'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO ' + f_centre +
                                            'join METGES M on T.C_COORDINADOR = M.CODI ' +
                                            'join DRETSPRESTA DP on P.C_PRESTACIO = DP.C_PRESTACIO AND DP.C_DRET = "P259" '+                                            
                                            'where T.C_HISTORIA  = %d ' + f_dates +
                                            'order by T.DATA_INGRES desc ',
                                            [DataSet.FieldByName('C_HISTORIA').AsInteger]);
                  qTract.Open;
                  qTract.FetchAll;
                  if (qTract.RecordCount = 1) then tract := qTract.FieldByName('C_Tractament').AsInteger
                  // Si no trobem cap prestació activa, busquem prestacions antigues
                  else if (qTract.RecordCount = 0) then
                  begin
                      qTract.Close;
                      qTract.SQL.Text := Format('select cast(P.N_PRESTACIO||" "||T.DATA_INGRES||" - "||M.METGE as VarChar(80)), T.C_TRACTAMENT, 2 ' +
                                                'from TRACTAMENTS T ' +
                                                'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO ' + f_centre +
                                                'join METGES M on T.C_COORDINADOR = M.CODI ' +
                                                'join DRETSPRESTA DP on P.C_PRESTACIO = DP.C_PRESTACIO AND DP.C_DRET = "P259" '+                                                
                                                'where T.C_HISTORIA  = %d ' +
                                                'union ' +
                                                'select Cast("No associar-lo a cap episodi" as VarChar(80)), 0, 1 ' +
                                                'from CONFIG ' +
                                                'order by 3, 2 desc ' +
                                                'rows 5 ',
                                                [DataSet.FieldByName('C_HISTORIA').AsInteger]);
                      qTract.Open;
                      qTract.FetchAll;
                      // si no hi ha cap prestació recent, no l'associem a cap episodi
                      if (qTract.RecordCount = 1) then tract := 0;
                  end;
              end;
          end;

          if (tract = -1) then
          begin
              opcio := -1;
              while (opcio < 0) do opcio := AvisoListaBdSinCancel('Escolliu l''episodi al que voleu associar l''informe', qTract, 1, 1);
              tract := qTract.FieldByName('c_tractament').AsInteger;
          end;

          qTract.Close;
        FINALLY
          qTract.Free;
        END;

        if (tract = 0) then DataSet.FieldByName('c_tractament').Clear
                       else DataSet.FieldByName('c_tractament').AsInteger := tract;

        preguntatTract := True;
    end;

    {-
    // si hi ha un tractament llarg actiu, associem aquest
    tract := GutSelect('select t.c_tractament from tractaments t                                  '+
                       'join prestacion p on t.c_prestacio=p.c_prestacio and p.tipus in(1,3)      '+
                       'where t.c_historia=%d and (t.data_alta is null or t.data_alta >= "TODAY") '+
                       'order by t.data_ingres desc rows 1                                        ',[DataSet.FieldByName('C_HISTORIA').AsInteger]);
    if tract > 0 then DataSet.FieldByName('c_tractament').AsInteger := tract

    // altrament, si hi ha un tractament curt actiu li associem aquest
    else begin
        tract := GutSelect('select t.c_tractament from tractaments t                                  '+
                           'join prestacion p on t.c_prestacio=p.c_prestacio and p.tipus=2            '+
                           'where t.c_historia=%d and (t.data_alta is null or t.data_alta >= "TODAY") '+
                           'order by t.data_ingres desc rows 1                                        ',[DataSet.FieldByName('C_HISTORIA').AsInteger]);
        if tract > 0 then DataSet.FieldByName('c_tractament').AsInteger := tract
                     // altrament, no associem cap tractament (no és obligatori) -- DataSet.FieldByName('c_tractament').Clear;
                     else begin // fer triar a l'usuari un episodi antic o que indiqui explícitament que no el vol associar a cap episodi
                         if not preguntatTract then
                         begin
                             q.SQL.Text := 'select cast(p.n_prestacio||" "||t.data_ingres||" Coord. "||m.metge as varchar(80)), t.c_tractament, 1 '+
                                           'from tractaments t                                                                                    '+
                                           'join prestacion p on t.c_prestacio = p.c_prestacio and not (p.c_prestacio in("2003","8888"))          '+
                                           'join metges m on t.c_coordinador=m.codi                                                               '+
                                           'where t.c_historia = '+DataSet.FieldByName('C_HISTORIA').AsString                                      +
                                           'union select cast("No està associat a cap episodi" as varchar(80)), 0, 2                              '+
                                           'from config where 1=1 order by 3 desc, 2 desc rows 4                                                  ';
                             q.Open;
                             if q.RecordCount = 1 then DataSet.FieldByName('c_tractament').Clear
                             else begin
                                 opcio := -1;
                                 while opcio < 0 do opcio := AvisoListaBdSinCancel('Escolliu l''episodi al que està associat l''informe',q, 0, 1);
                                 if q.FieldByName('c_tractament').AsInteger = 0 then DataSet.FieldByName('c_tractament').Clear
                                                                                else DataSet.FieldByName('c_tractament').AsInteger := q.FieldByName('c_tractament').AsInteger;
                             end;
                             q.Close;
                             q.Free;
                             preguntatTract := True;
                         end;
                     end;
    end;
    -}

    // si el tractament no és 04-UP i han marcat cbPublicarHC3, avisar que no es publicarà a l'HC3 i desmarcar-lo
    if  (DataSet.FieldByName('Publicar_HC3').AsString = 'S')
    and (GutSelect('select count(*) from tractaments where c_tractament=%d and c_centrefac="04" and c_client="UP"',
                  [DataSet.FieldByName('c_tractament').AsInteger])=0)
    then begin
        DataSet.FieldByName('Publicar_HC3').AsString := 'N';
        ShowMessage('El tractament no és SCS 04-UP. No es publicarà a l''HCCC.');
    end;

    if      DataSet.FieldByName('C_USUARI').IsNull or (DataSet.FieldByName('C_USUARI').AsString = '') then FerError('És obligatori informar l''usuari',True)
    else if DataSet.FieldByName('C_TIPUS' ).IsNull or (DataSet.FieldByName('C_TIPUS' ).AsString = '') then FerError('És obligatori informar el tipus',True);

    // el fax només és obligatori si la forma d'entrega és 3-fax
    if (DataSet.FieldByName('C_ENTREGA').AsInteger = 3)
    and (DataSet.FieldByName('CONTACTE').IsNull or (DataSet.FieldByName('CONTACTE').AsString = ''))
    then FerError('És obligatori informar el contacte per la forma d''entrega FAX',True);

    //si és admissions, validar que les dades del pacient estan totes informades
    if ((DataSet.FieldByName('C_TIPUS').AsString = 'DEP') or (DataSet.FieldByName('C_TIPUS').AsString = 'DER'))
    then begin
        if ( TeDretAcces([70,107],False,False) or TeDretEspecial(Metge.Especial, [49]) )
        then ValidarDadesPacient
        else FerError('Tipus d''informe no permès.' , True);
    end;

    // si demanen un PLT - PreAlt, hi ha d'haver un 1004 actiu
    if (DataSet.FieldByName('C_TIPUS').AsString = 'PLT') then
    begin
        if GutSelect('select count(*) from TRACTAMENTS where C_PRESTACIO="1004" and (DATA_ALTA is null or DATA_ALTA>="TODAY") and C_HISTORIA=%d',
                     [DataSet.FieldByName('C_HISTORIA').AsInteger])=0
        then FerError('El pacient ha d''estar ingressat per a poder-li demanar un informa PreAlt.',True);
    end;

    if insertant then DataSet.FieldByName('id_informe').AsInteger := SelectGenId(wData.Gdb.DatabaseName, 'G_INFORMES');
    if DataSet.FieldByName('GESTIONAT').IsNull or (DataSet.FieldByName('GESTIONAT').AsString = '') then FerError('El camp "Gestionat per" és obligatori.', True);

    if (DataSet.FieldByName('PUBLICAR_HC3').AsString = 'N') then DataSet.FieldByName('PUBLICAR_HC3').Clear;
end;

procedure TwFitxaInformesAM.tInformesAfterPost(DataSet: TDataSet);
var
 ID: Integer;
 hc,motiu: String;
begin
    mgcSolicitud.Hide;
    preguntatTract:=False;
    ID    := tInformes.FieldByName('ID_INFORME').AsInteger;
    hc    := tInformes.fieldByName('C_Historia').AsString;
    motiu := tInformes.fieldByName('C_Tipus'   ).AsString;

    // Registrem l'acció
    GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA) values (%d, 1, "%s", "NOW")',
               [ID, Metge.Codi]);

    // refresquem per a que mostri l'últim registre
    qDadesReg.Close; qDadesReg.Open;

    {- Juliol 2020: Ja no imprimim el justificant de la petició

    // IMPRIMIR SOL·LICITUD només a admissions
    if TeDretAcces([70]) then
    begin
      if motiu='NPC' then
      begin
        with qrSolNPC do
        begin

            Idioma := intToStr(AvisoListaSinCancel('Elecció idioma de l''imprès:',['Català', 'Castellà']));
            if Idioma = '1' then Idioma := '2';
            if Idioma = '0' then Idioma := '1';


            qrlNumHistNPC.Caption := 'NUM. HIST.: '+hc;

            if (Idioma='2') then // castellà
            begin
                qrlMetgeNPC.Caption := 'MEDICO: '+tInformes.fieldByName('usuari_Nomsencer').AsString;
                qrlNomNPC.Caption := 'Nombre del paciente: '+tInformes.FieldByName('hist_NOMBRE').AsString+' '+
                                                             tInformes.fieldByName('hist_APELLIDO1').AsString+' '+
                                                             tInformes.fieldByName('hist_APELLIDO2').AsString;
                qrlSolNPC.Caption := 'Persona que lo solicita: '+tInformes.fieldByName('Solicitant').AsString;
                qrlParentNPC.Caption := 'Parentesco: '+tInformes.fieldByName('Parentiu').AsString;
                qrlMotiuNPC.Caption := 'Solicita informe clínico para: '+tInformes.fieldByName('Tipus_N_Tipus').AsString;
                qrlFirmaNPC.Caption := 'Firma';
                qrlPeriodeNPC.Caption := '(Periodo aprox. recogida a partir de 10 días)';
                qrlEntregaNPC.Caption := tInformes.fieldByName('Entrega_N_Codi2').AsString;
                qrmLOPDNPC.Lines.Text := 'En cumplimiento de lo establecido en la Ley 15/1999, de 13 de diciembre, '+
                                         'de protección de datos de carácter personal y al RD 1720/2007, de 21 de diciembre, '+
                                         'por lo cual se aprueba el Reglamiento de Medidas de Seguridad de los ficheros automatitzados '+
                                         'que contienen datos de carácter personal, le informamos que este documento contiene datos personales';

                qrlEntregaNPC.Caption := qrlEntrega.Caption +'  '+tInformes.fieldByName('CONTACTE').AsString;
            end
            else begin         // català
                qrlMetgeNPC.Caption := 'METGE: '+tInformes.fieldByName('USUARI_Nomsencer').AsString;
                qrlNomNPC.Caption := 'Nom del pacient: '+tInformes.fieldByName('hist_NOMBRE').AsString+' '+
                                                     tInformes.fieldByName('hist_APELLIDO1').AsString+' '+
                                                     tInformes.fieldByName('hist_APELLIDO2').AsString;
                qrlSolNPC.Caption := 'Persona que el sol·licita: '+tInformes.fieldByName('Solicitant').AsString;
                qrlParentNPC.Caption := 'Parentiu: '+tInformes.fieldByName('Parentiu').AsString;
                qrlMotiuNPC.Caption := 'Sol·licita informe clínic per a:'+tInformes.fieldByName('Tipus_N_Tipus').AsString;
                qrlFirmaNPC.Caption := 'Signatura';
                qrlPeriodeNPC.Caption := '(Període aprox. recollida a partir de 10 dies)';
                qrlEntregaNPC.Caption := tInformes.fieldByName('Entrega_N_Codi').AsString;
                qrmLOPDNPC.Lines.Text := 'En compliment de l''establert a la Llei 15/1999, de 13 de desembre, '+
                                         'de protecció de dades de caràcter personal i al RD 1720/2007, de 21 de desembre, '+
                                         'pel qual s''aprova al Reglament de Mesures de Seguretat dels fitxers automatitzats '+
                                         'que contenen dades de caràcter personal, l''informem que aquest document conté dades personals';

                qrlEntregaNPC.Caption := qrlEntrega.Caption +'  '+tInformes.fieldByName('contacte').AsString;
            end;
            qrlDNINPC.Caption := 'DNI: '+tInformes.fieldByName('num_doc').AsString;
            qrmComentNPC.Lines.Text := tInformes.fieldByName('COMENTARI').AsString;

            if wdata.ES_PROVA or AvisoSN('Vols imprimir la sol·licitud (S/N)?')
            then qrSolNPC.Preview
            else qrSolNPC.Print;
        end;
      end
      else begin
        if motiu<>'MUT' then // parte 73098 - per MUT no imprimir full de la sol·licitud
        begin
          with qrSol do
          begin
            Idioma := intToStr(AvisoListaSinCancel('Elecció idioma de l''imprès:',['Català', 'Castellà']));
            if Idioma = '1' then Idioma := '2';
            if Idioma = '0' then Idioma := '1';

            qrlNumHist.Caption := 'NUM. HIST.: '+hc;

            if (Idioma='2') then // castellà
            begin
                qrlMetge.Caption := 'MEDICO: '+tInformes.fieldByName('usuari_Nomsencer').AsString;
                qrlNom.Caption := 'Nombre del paciente: '+tInformes.fieldByName('hist_NOMBRE').AsString+' '+
                                                         tInformes.fieldByName('hist_APELLIDO1').AsString+' '+
                                                         tInformes.fieldByName('hist_APELLIDO2').AsString;
                qrlSol.Caption := 'Persona que lo solicita: '+tInformes.fieldByName('Solicitant').AsString;
                qrlParent.Caption := 'Parentesco: '+tInformes.fieldByName('Parentiu').AsString;
                qrlMotiu.Caption := 'Solicita informe clínico para: '+tInformes.fieldByName('Tipus_N_Tipus').AsString;
                qrlFirma.Caption := 'Firma';
                qrlPeriode.Caption := '(Periodo aprox. recogida a partir de 10 días)';
                qrlEntrega.Caption := tInformes.fieldByName('Entrega_N_Codi2').AsString;
                qrmLOPD.Lines.Text := 'En cumplimiento de lo establecido en la Ley 15/1999, de 13 de diciembre, '+
                                      'de protección de datos de carácter personal y al RD 1720/2007, de 21 de diciembre, '+
                                      'por lo cual se aprueba el Reglamiento de Medidas de Seguridad de los ficheros automatitzados '+
                                      'que contienen datos de carácter personal, le informamos que este documento contiene datos personales';

                qrlEntrega.Caption := qrlEntrega.Caption +'  '+tInformes.fieldByName('contacte').AsString;
            end
            else begin         // català
                qrlMetge.Caption := 'METGE: '+tInformes.fieldByName('usuari_Nomsencer').AsString;
                qrlNom.Caption := 'Nom del pacient: '+tInformes.fieldByName('hist_NOMBRE').AsString+' '+
                                                     tInformes.fieldByName('hist_APELLIDO1').AsString+' '+
                                                     tInformes.fieldByName('hist_APELLIDO2').AsString;
                qrlSol.Caption := 'Persona que el sol·licita: '+tInformes.fieldByName('Solicitant').AsString;
                qrlParent.Caption := 'Parentiu: '+tInformes.fieldByName('Parentiu').AsString;
                qrlMotiu.Caption := 'Sol·licita informe clínic per a:'+tInformes.fieldByName('Tipus_N_Tipus').AsString;
                qrlFirma.Caption := 'Signatura';
                qrlPeriode.Caption := '(Període aprox. recollida a partir de 10 dies)';
                qrlEntrega.Caption := tInformes.fieldByName('Entrega_N_Codi').AsString;
                qrmLOPD.Lines.Text := 'En compliment de l''establert a la Llei 15/1999, de 13 de desembre, '+
                                      'de protecció de dades de caràcter personal i al RD 1720/2007, de 21 de desembre, '+
                                      'pel qual s''aprova al Reglament de Mesures de Seguretat dels fitxers automatitzats '+
                                      'que contenen dades de caràcter personal, l''informem que aquest document conté dades personals';

                qrlEntrega.Caption := qrlEntrega.Caption +'  '+tInformes.fieldByName('contacte').AsString;
            end;
            qrlDNI.Caption := 'DNI: '+tInformes.fieldByName('num_doc').AsString;
            qrmComent.Lines.Text := tInformes.fieldByName('COMENTARI').AsString;

            if wdata.ES_PROVA or AvisoSN('Vols imprimir la sol·licitud (S/N)?')
            then qrSol.Preview
            else qrSol.Print;
          end;
        end;
      end;
    end;
    -}

    Filtre(SpeedButton1); // primer netegem filtres
    Filtre(sbEnCurs);
    qDades.Locate('ID_INFORME',IntToStr(ID),[]);

    // només per admissions
    if insertant and TeDretAcces([70]) and AvisoSN('Voleu fer una altra sol·licitud d''informe amb les mateixes dades?') then
    begin
        CenterInClient(mgcSolicitud);
        mgcSolicitud.Show;
        preguntatTract:=False;
        with tInformes do
        begin
            Insert;
            FieldByName('C_HISTORIA').AsInteger := qDades.FieldByName('C_HISTORIA').AsInteger;
            FieldByName('SOLICITANT').AsString  := qDades.FieldByName('SOLICITANT').AsString;
            FieldByName('PARENTIU'  ).AsString  := qDades.FieldByName('PARENTIU'  ).AsString;
            FieldByName('C_USUARI'  ).AsString  := Metge.Codi;
            FieldByName('C_ESTAT'   ).AsInteger := 0;  // pendent de fer informe
            FieldByName('NUM_DOC'   ).AsString  := qDades.FieldByName('NUM_DOC'   ).AsString;
            FieldByName('C_ENTREGA' ).AsString  := qDades.FieldByName('C_ENTREGA' ).AsString;
            FieldByName('CONTACTE'  ).AsString  := qDades.FieldByName('CONTACTE'  ).AsString;
            FieldByName('URGENT'    ).AsString  := qDades.FieldByName('URGENT'    ).AsString;
            FieldByName('COMENTARI' ).AsString  := qDades.FieldByName('COMENTARI' ).AsString;

            // segons el grup del metge mostrarem unes o altres dades
            if Metge.Grup ='ME' then  // Metges
            begin
                FieldByName('C_USUARI'  ).AsString := Metge.Codi;
                FieldByName('SOLICITANT').AsString := Metge.NomSencer;
                if (Metge.Especial='07') then tInformes.FieldByName('C_TIPUS').AsString := 'PSI';
            end;

            Ed_tInfomres_C_Usuari.ReadOnly       := (Metge.Grup = 'ME');
            Ed_tInfomres_Parentiu.Visible        := TeDretAcces([70]);
            Ed_tInfomres_NUM_DOC.Visible         := Ed_tInfomres_T_DOC.Visible;
        end;
        Ed_tInfomres_C_Tipus.SetFocus;
    end
    else insertant:=False;
end;

procedure TwFitxaInformesAM.sbModifClick(Sender: TObject);
begin
  if wData.UsuariActiu.Codi <> '' then Metge := wData.UsuariActiu
                                  else Metge := PreguntaMetge;
  if Metge.codi ='' then Exit
  else begin
      lUserActiu.Visible:=True;
      lUserActiu.Caption := 'Usuari Actiu: '+Metge.NomSencer;
  end;

  if  (qDades.FieldByName('c_estat').AsInteger >= 8) then Exit;

  tInformes.Open;
  if tInformes.FindKey(VarArrayOf([qDades.FieldByName('id_informe').Value]))
  then begin                                                                                   
      insertant:=False;

      // Si l'informe ja està començat, no poden modificar certes dades:
      Ed_tInfomres_C_Historia.ReadOnly := (qDades.FieldByName('c_estat').AsInteger <> 0);
      Ed_tInfomres_C_Tipus.ReadOnly    := Ed_tInfomres_C_Historia.ReadOnly;
      Ed_tInfomres_C_Usuari.ReadOnly   := Ed_tInfomres_C_Historia.ReadOnly;
      Ed_tInfomres_C_Historia.Ctl3D := not Ed_tInfomres_C_Historia.ReadOnly;
      Ed_tInfomres_C_Tipus.Ctl3D    := not Ed_tInfomres_C_Historia.ReadOnly;
      Ed_tInfomres_C_Usuari.Ctl3D   := not Ed_tInfomres_C_Historia.ReadOnly;

      cbPublicarHC3.Visible := (tInformes.FieldByName('tipus_Publicar_HC3').AsString = 'N');  // poden marcar per publicar a l'HC3 si el tipus no ho porta predeterminat

      CenterInClient(mgcSolicitud);
      mgcSolicitud.Show;
      preguntatTract:=True; // modificant la sol·licitud no s'ha de tornar a demanar el tractament
      pIncapacitat.Hide;
      tInformes.Edit;
      if tInformes.FieldByName('PUBLICAR_HC3').IsNull then tInformes.FieldByName('PUBLICAR_HC3').AsString := 'N';
  end
  else FerError('ERROR: no s''ha trobat la sol·licitud que es vol modificar.',True);
end;

procedure TwFitxaInformesAM.HYGrid1DblClick(Sender: TObject);
begin
  sbFinal.Click;
end;

procedure TwFitxaInformesAM.sbAnulaClick(Sender: TObject);
begin
  // si l'informe està arxivat o anul·lat no es pot anul·ar
  if (estat>10) and (estat<>99) then Exit;
  if (estat=10) then if not AvisoSN('Aquest informe ja s''ha publicat. Esteu segur que voleu anul·lar-lo? (S/N)') then Exit; 

  if wData.UsuariActiu.Codi <> '' then MetgeAnul := wData.UsuariActiu
                                  else MetgeAnul := PreguntaMetge;
  if MetgeAnul.Codi='' then Exit
  else begin
      lUserActiu.Visible:=True;
      lUserActiu.Caption := 'Usuari Actiu: '+MetgeAnul.NomSencer;
  end;

  // tothom que pot sol·licitar informes els pot anul·lar (i recuperar anul·lats) però ha d'indicar-ne el motiu (a menys que vingui d'una petició d'anul·lació del curs clínic
  // que ja van informar-ne el motiu)
  TeDretUsuari(MetgeAnul.Codi, 'G222,G223,M270,M271', '', True);

  if (estat=9) or (estat=99) then
  begin
      if AvisoSN('Voleu recuperar la sol·licitud anul·lada de la història '+HYGrid1.DataSource.DataSet.FieldByName('c_historia').AsString+'?')
      then DesAnularArxiu(HYGrid1.DataSource.DataSet.FieldByName('id_informe').Asinteger);
  end
  else begin
      if (estat=10) or AvisoSN('Voleu anul·lar la sol·licitud de la història '+HYGrid1.DataSource.DataSet.FieldByName('c_historia').AsString+'?')
      then begin
          if estat = 8 then // no demanar motiu pq ja l'ha escrit el metge al fer la petició d'anul·lació
          begin
              AnularArxiu(HYGrid1.DataSource.DataSet.FieldByName('id_informe').Asinteger, estat, '');
          end
          else begin
              HYGrid1.DataSource.DataSet.DisableControls;
              CenterInClient(mgcMotiuA);
              mgcMotiuA.Show;
              motiuA.SetFocus;
          end;
      end;
  end;
end;

procedure TwFitxaInformesAM.AnularArxiu(ID_Informe: Integer; estat: Integer; Comentari: String);
var
  nouEstat: Integer;
begin
  if (estat = 10) then nouEstat := 99
                  else nouEstat := 9;

  wDataInformesQ.AnulaInforme(ID_Informe, estat, nouEstat, MetgeAnul.Codi, comentari);

  // refresquem per a que mostri l'últim registre
  Filtre(SpeedButton1);  // primer netegem filtres
  Filtre(sbHistoricTot);
  // ens situem al registre anul·lat
  qDades.Locate('ID_INFORME',IntToStr(ID_Informe),[]);
end;


procedure TwFitxaInformesAM.DesAnularArxiu(ID_Informe: Integer);
var
  estat: Smallint;
begin
  estat := wDataInformesQ.DesAnulaInforme(ID_Informe, MetgeAnul.Codi);

  // refresquem per a que mostri l'últim registre
  Filtre(SpeedButton1);  // primer netegem filtres
  if (estat=10) then Filtre(sbHistoricTot)
                else Filtre(sbEnCurs);
  // ens situem al registre anul·lat
  qDades.Locate('ID_INFORME',IntToStr(ID_Informe),[]);
end;

procedure TwFitxaInformesAM.sbOKClick(Sender: TObject);
var
  motiu: String;
begin
  if motiuA.Lines.text = '' then FerError('És obligatori informar el motiu d''anul·lació.',True)
  else begin
      motiu := ForaIntros(motiuA.Lines.text);
      AnularArxiu(HYGrid1.DataSource.DataSet.FieldByName('id_informe').AsInteger, estat, motiu);
  end;
  motiuA.Lines.Clear;
  mgcMotiuA.Hide;
  HYGrid1.DataSource.DataSet.EnableControls;
end;

Function TwFitxaInformesAM.IdentificaDirectori(DirectoriDocs, H: String):String;
var
  Dir:String;
  passos: Integer;
begin
    passos := Trunc(StrToInt(H) div 500);
    Dir := IntToStr(passos * 500) + '-' + IntToStr(((passos + 1) * 500) - 1);

    if DirectoryExists(DirectoriDocs + '\' + Dir) then Result := DirectoriDocs + '\' + Dir
                                                  else Result := ''
end;

procedure TwFitxaInformesAM.sbFinalClick(Sender: TObject);
var
  WordApp: _Application;
  WordDoc: _Document;
  pNomDoc: OleVariant;
  pNomesLectura: OleVariant;
  pCopies: OleVariant;
  error: Boolean;
  NomDesti: String;
  pGuardarCanvis: OleVariant;
  pNomDesti: OleVariant;
  impressions, id: Integer;
  Fitxer: String;
begin
  // Podran imprimir l'informe si està pendent de finalitzar, finalitzat o arxivat. Que quedarà finalitzat si l'estat era 6 (pendent de finalitzar) o 11 (arxivat)
  if (estat<>6) and (estat <> 10) and (estat <> 11) then Exit;

  if wData.UsuariActiu.Codi <> '' then Metge := wData.UsuariActiu
                                  else Metge := PreguntaMetge;
  if Metge.codi ='' then Exit
  else begin
      lUserActiu.Visible:=True;
      lUserActiu.Caption := 'Usuari Actiu: '+Metge.NomSencer;
  end;
  TeDretUsuari(Metge.Codi,'M237,G179','',True);
  id := HYGrid1.DataSource.DataSet.FieldByName('ID_INFORME').AsInteger;

  // finalitzem l'informe - aquesta funció ja permet imprimir-lo si es vol (ho pregunta)
  if (estat = 6) then  // pendent de finalitzar/publicar a l'HCE
  begin
      // si no hi ha informe, sortir
      if (HYGrid1.DataSource.DataSet.FieldByName('arxiu').AsString = '')
      then FerError('No existeix informe', True);

      RutaInici := GutSelect('SELECT D.RUTA FROM DIRECTORIS D                 '+
                             'JOIN INFORMES_TIPUS IT ON D.NOM = IT.RUTA_INICI '+
                             'WHERE IT.C_TIPUS = "%s"                         ', [HYGrid1.DataSource.DataSet.FieldByName('c_tipus').AsString]);

      pNomDoc := ConcatFilePath(RutaInici, HYGrid1.DataSource.DataSet.FieldByName('arxiu').AsString);
      if not FileExists(pNomDoc) then FerError('Informe no trobat: '+ pNomDoc, True);

      wDataInformesQ.FinalitzaInforme(HYGrid1.DataSource.DataSet.FieldByName('id_informe').AsInteger, Metge.Codi);
  end
  else if (estat = 10) then  // finalitzat -> poden imprimir
  begin
      // Demanem si volen imprimir l'informe
      if AvisoNS('Voleu imprimir ara l''informe? '   + NLine +
                 'La forma d''entrega indicada és: ' + HYGrid1.DataSource.DataSet.FieldByName('N_CODI_1').AsString)
      then begin
          // Imprimim l'informe
          RutaFi := GutSelect('SELECT D.RUTA FROM DIRECTORIS D              '+
                              'JOIN INFORMES_TIPUS IT ON D.NOM = IT.RUTA_FI '+
                              'WHERE IT.C_TIPUS = "%s"                      ', [HYGrid1.DataSource.DataSet.FieldByName('c_tipus').AsString]);

          pNomDoc := IdentificaDirectori(RutaFi, HYGrid1.DataSource.DataSet.FieldByName('c_historia').AsString);
          pNomDoc := ConcatFilePath(pNomDoc, HYGrid1.DataSource.DataSet.FieldByName('arxiu').AsString);
          // 09.2019: Si no el trobem, el busquem entre els pendents de processar (SolicitudsF2) (Per als informes automàtics - CEX)
          if not FileExists(pNomDoc) then
          begin
              pNomDoc := ConcatFilePath(GutSelect('select RUTA from DIRECTORIS where NOM = "INFORMES_F2"', []),
                                        HYGrid1.DataSource.DataSet.FieldByName('arxiu').AsString);
              if not FileExists(pNomDoc) then FerError('Informe no trobat: ' + HYGrid1.DataSource.DataSet.FieldByName('arxiu').AsString, True);
          end;

          Fitxer := pNomDoc;
          if TeDretAcces([99]) and AvisoSN('Vols PREvisualitzar l''informe (S/N)?')
          then ShellExecute(0, 'preview', PChar(Fitxer), '', '', 0)      // no fa res
          else begin
              ShellExecute(0, 'print'  , PChar(Fitxer), '', '', 0);

              // Registrem l'acció (impressió)
              impressions := GutSelect('select count(*) from informes_reg where id_informe=%d and accio=11', [HYGrid1.DataSource.DataSet.FieldByName('id_informe').Asinteger]) + 1;
              GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA, COMENTARI) values (%d, 11, "%s", "NOW", "%s")',
                         [HYGrid1.DataSource.DataSet.FieldByName('id_informe').AsInteger, Metge.Codi, 'Reimpressions: '+ IntToStr(impressions)]);
          end;
      end;
  end
  else if (estat = 11) then  // arxivat
       begin
           // primer el desarxivem i després el finalitzem
           wDataInformesQ.DesArxivaInforme(HYGrid1.DataSource.DataSet.FieldByName('id_informe').AsInteger, Metge.Codi);

           // 28.1.2026 NO EL FINALITZEM
           {if GutSelect('SELECT C_ESTAT FROM INFORMES WHERE ID_INFORME=%d',[HYGrid1.DataSource.DataSet.FieldByName('id_informe').AsInteger]) = 6 then
           wDataInformesQ.FinalitzaInforme(HYGrid1.DataSource.DataSet.FieldByName('id_informe').AsInteger, Metge.Codi);}
       end;

  // refresquem per a que mostri l'últim registre
  Filtre(SpeedButton1);  // primer netegem filtres
  Filtre(sbHistoricTot);

  qDades.Locate('ID_INFORME',IntToStr(id),[]);
end;


procedure TwFitxaInformesAM.sbEntregatClick(Sender: TObject);
var
  DataEntrega, DataFinal: TDateTime;
  id: Integer;
  arxiu: String;
begin
  if wData.UsuariActiu.Codi <> '' then Metge := wData.UsuariActiu
                                  else Metge := PreguntaMetge;
  if Metge.codi ='' then Exit
  else begin
      lUserActiu.Visible := True;
      lUserActiu.Caption := 'Usuari Actiu: '+Metge.NomSencer;
  end;

  DataEntrega := Calendario(NowServer, Catala, False, 'Data d''entrega');

  if DataEntrega = 0 then Exit;
  id:=HYGrid1.DataSource.DataSet.FieldByName('id_informe').AsInteger;
                                                                       // no futura i no anterior a la finalització
  DataFinal := GutSelect('select data from INFORMES_REG where id_informe=%d and accio=6',[id]);
  if      (DataEntrega > NowServer) then FerError('La data d''entrega no pot ser futura.',True)
  else if (DataEntrega < DataFinal) then FerError(Format('La data d''entrega no pot ser anterior a la data de finalització de l''informe (%s)',[FormatDateTime('dd.mm.yyyy hh:mm:ss',DataFinal)]),True);

  // Registrem l'acció
  GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA) values (%d, 7, "%s", "%s")',
            [id, Metge.Codi, FormatDateTime('dd.mm.yyyy',DataEntrega)]);

  // eliminem l'arxiu de la carpeta ENTREGATS
  arxiu:=ConcatFilePath(RutaEntregats, HYGrid1.DataSource.DataSet.FieldByName('arxiu').AsString);
  if FileExists(arxiu) then DeleteFile(arxiu);

  // refresquem per a que mostri l'últim registre
  Filtre(SpeedButton1);  // primer netegem filtres
  Filtre(sbHistoricTot);
  // ens situem al registre anul·lat
  qDades.Locate('ID_INFORME',IntToStr(id),[]);
end;

procedure TwFitxaInformesAM.sbListClick(Sender: TObject);
begin
  eDesde.EditValue := FormatDateTime('01/01/yyyy',DateServer);
  eFins.EditValue  := FormatDateTime('31/12/yyyy',DateServer);
  centerInclient(mgcPeriode);
  mgcPeriode.Visible := True;
end;

procedure TwFitxaInformesAM.LlistarExecute(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  qList.Close;
  qList.sql[1] := '("'+FormatDateTime('dd.mm.yyyy', eDesde.AsDateTime)+'","'+FormatDateTime('dd.mm.yyyy', eFins.AsDateTime)+'",';
  if sbArees.Caption = 'Totes les àrees'
  then qList.sql[1] := qList.sql[1] + 'NULL)'
  else qList.sql[1] := qList.sql[1] + IntToStr(area)+')';
  qList.open;

  SaveDialog1.FileName := 'Llistat d''Informes Interns de '+FormatDateTime('dd.mm.yyyy', eDesde.AsDateTime)+' a '+FormatDateTime('dd.mm.yyyy', eFins.AsDateTime);
  gridEh.Selection.SelectAll;

  if SaveDialog1.Execute then
  begin
    ExpClass := TDBGridEhExportAsCSV; Ext := 'csv';
    if ExpClass <> nil then
    begin
      if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext)
      then SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;

      SaveDBGridEhToExportFile(ExpClass,gridEh,SaveDialog1.FileName,False);
      ShowMessage('Fitxer guardat correctament.');
    end;
   end;
   mgcPeriode.Visible := False;
end;

procedure TwFitxaInformesAM.tInformesAlConsultarCampoFiltro2(
  Sender: TObject; var Personalizada: Boolean; NombreConsulta: String;
  var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
  Personalizada := False;
  if (CompareText(NombreConsulta,'usuari')=0) then
  begin
      Personalizada := True;
      cMetges.ExecuteModal('','');
      Exit;
  end;
  Personalizada := False;
  if (CompareText(NombreConsulta,'tipus')=0) then
  begin
      Personalizada := True;
      cInformesTipus.ExecuteModal('','');
      Exit;
  end;
  Personalizada := False;
  if (CompareText(NombreConsulta,'gestionat')=0) then
  begin
      Personalizada := True;
      cArees.ExecuteModal('','');
      Exit;
  end;
  Personalizada := False;
  if (CompareText(NombreConsulta,'entrega')=0) then
  begin
      Personalizada := True;
      cEntrega.ExecuteModal('','');
      Exit;
  end;
end;

procedure TwFitxaInformesAM.tInformesAfterCancel(DataSet: TDataSet);
begin
  Ed_tInfomres_C_Tipus.SetFocus;  // surto del C_METGE pq faci el C_METGEExit
  mgcSolicitud.Hide;
  insertant:=False; preguntatTract:=False;
end;


procedure TwFitxaInformesAM.Ed_tInfomres_C_TipusEnter(Sender: TObject);
begin
  if Ed_tInfomres_C_Tipus.EditInterno.EditText = ''  then cInformesTipus.ExecuteModal('','');
end;

procedure TwFitxaInformesAM.Ed_tInfomres_C_UsuariEnter(Sender: TObject);
begin
  if Ed_tInfomres_C_Usuari.EditInterno.EditText = '' then cMetges.ExecuteModal('','');
end;

procedure TwFitxaInformesAM.AlDespuesOpen(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
 (Sender as TxHYDialogConsulta).Left   := mgcSolicitud.Left + 100;
 (Sender as TxHYDialogConsulta).Top    := mgcSolicitud.Top  - 100;
 (Sender as TxHYDialogConsulta).Height := 500;
 (Sender as TxHYDialogConsulta).Width  := 600;
end;

{-
procedure TwFitxaInformesAM.OmpleFormDEP;
var
  WordApp: _Application;
  WordDoc: _Document;
  pNomDoc,pNomesLectura,pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,
  pMatchSoundsLike,pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace,cella: OleVariant;
begin
    WaitON('Obrint Formulari de la Llei de dependència . . .');
    // Obrim el document word:
    WordApp := CoApplication_.Create;

    // obrim el formulari DEP
    pNomesLectura := False;
    if wData.ES_PROVA then pNomDoc := 'G:\PROVES\DEP.rtf'
                      else pNomDoc := 'G:\BIN\Admissions\DEP.rtf';
    WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    // creem còpia del fomulari DEP a Solicitds1
    pNomDoc := ConcatFilePath(RutaInici,
                              tInformes.fieldByName('C_Historia').AsString+'_DEP_'+tInformes.FieldByName('c_usuari').AsString+'.rtf');
    WordDoc.SaveAs(pNomDoc, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    // omplo el formulari amb les dades de FILIACIO i METGES
    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(2,1).Range;
    pFindText          := 'CSOE';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_SOE').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(2,2).Range;
    pFindText          := 'NOMBRE';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_NOMBRE').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(2,3).Range;
    pFindText          := 'APELLIDO1';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_APELLIDO1').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(2,4).Range;
    pFindText          := 'APELLIDO2';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_APELLIDO2').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(3,1).Range;
    pFindText          := 'TDNI';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    if tInformes.FieldByName('hist_T_DOC').AsString='D' then pReplaceWith := 'X' else pReplaceWith := ' ';
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    pFindText          := 'TNIE';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    if tInformes.FieldByName('hist_T_DOC').AsString='N' then pReplaceWith := 'X' else pReplaceWith := ' ';
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(3,2).Range;
    pFindText          := 'CDNI';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_DNI').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(3,3).Range;
    pFindText          := 'CCIP';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_TSI').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    // dades del metge
    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(6,1).Range;
    pFindText          := 'NOMMETGE';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('usuari_NOMBRE').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(6,2).Range;
    pFindText          := 'COGNOM1';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('usuari_COGNOM1').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(6,3).Range;
    pFindText          := 'COGNOM2';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('usuari_COGNOM').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(7,1).Range;
    pFindText          := 'NUMCOL';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('usuari_NC').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(7,1).Range;
    pFindText          := 'DATA_EMISSIO';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := FormatDateTime('DD-MM-YYYY',DateServer);
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    // desem els canvis
    WordDoc.SaveAs(pNomDoc, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    // mostrem el formulari DEP per a la sol·licitud actual
    WordApp.Visible := True;
    WaitOff;
end;


procedure TwFitxaInformesAM.OmpleFormDER;
var
  WordApp: _Application;
  WordDoc: _Document;
  pNomDoc,pNomesLectura,pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,
  pMatchSoundsLike,pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace,cella: OleVariant;
begin
    WaitON('Obrint Formulari grau i nivell de dependència . . .');
    // Obrim el document word:
    WordApp := CoApplication_.Create;

    // obrim el formulari DER
    pNomesLectura := False;
    if wData.ES_PROVA then pNomDoc := 'G:\PROVES\DER.rtf'
                      else pNomDoc := 'G:\BIN\Admissions\DER.rtf';
    WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    // creem còpia del fomulari DER a Solicitds1
    pNomDoc := ConcatFilePath(RutaInici,
                              tInformes.fieldByName('C_Historia').AsString+'_DER_'+tInformes.FieldByName('c_usuari').AsString+'.rtf');
    WordDoc.SaveAs(pNomDoc, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    // omplo el formulari amb les dades de FILIACIO i METGES
    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(2,2).Range;
    pFindText          := 'NOMBRE';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_NOMBRE').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(2,3).Range;
    pFindText          := 'APELLIDO1';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_APELLIDO1').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(2,4).Range;
    pFindText          := 'APELLIDO2';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_APELLIDO2').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(3,1).Range;
    pFindText          := 'XNIF';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    if tInformes.fieldByName('hist_PAIS').AsString = '34' then pReplaceWith := 'X' else pReplaceWith := ' ';
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(3,1).Range;
    pFindText          := 'XNIE';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    if tInformes.fieldByName('hist_PAIS').AsString = '34' then pReplaceWith := ' ' else pReplaceWith := 'X';
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(3,3).Range;
    pFindText          := 'CCIP';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_TSI').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(4,1).Range;
    pFindText          := 'SEXH';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    if tInformes.fieldByName('hist_SEXO').AsString = 'H' then pReplaceWith := 'X' else pReplaceWith := ' ';
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(4,1).Range;
    pFindText          := 'SEXD';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    if tInformes.fieldByName('hist_SEXO').AsString = 'D' then pReplaceWith := 'X' else pReplaceWith := ' ';
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(4,2).Range;
    pFindText          := 'ESTATCIVIL';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_ESTADO_CIV').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(5,1).Range;
    pFindText          := 'FECHANAC';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_FECHA_NAC').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(5,2).Range;
    pFindText          := 'LLOCNAC';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('hist_LUGAR_NAC').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(5,3).Range;
    pFindText          := 'NACIONAL';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := GutSelect('select n_pais from pais where c_pais = "%s"',[tInformes.fieldByName('hist_PAIS').AsString]);
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(8,1).Range;
    pFindText          := 'NOMMETGE';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('usuari_NOMBRE').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(8,2).Range;
    pFindText          := 'COGNOM1';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('usuari_COGNOM1').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(8,3).Range;
    pFindText          := 'COGNOM2';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('usuari_COGNOM').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    cella:=WordApp.ActiveDocument.Tables.Item(1).Cell(9,1).Range;
    pFindText          := 'NUMCOL';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := tInformes.fieldByName('usuari_NC').AsString;
    pReplace           := wdReplaceAll;
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);


    pFindText          := 'DATA_EMISSIO';
    pMatchCase         := False;
    pMatchWholeWord    := False;
    pMatchWildcards    := True;
    pMatchSoundsLike   := False;
    pMatchAllWordForms := False;
    pForward           := True;
    pWrap              := wdFindContinue;
    pFormat            := False;
    pReplaceWith       := FormatDateTime('DD-MM-YYYY',DateServer);
    cella.Find.Execute(pFindText,pMatchCase,pMatchWholeWord,pMatchWildcards,pMatchSoundsLike,
                       pMatchAllWordForms,pForward,pWrap,pFormat,pReplaceWith,pReplace);

    // desem els canvis
    WordDoc.SaveAs(pNomDoc, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
                       
    // mostrem el formulari DER per a la sol·licitud actual
    WordApp.Visible := True;
    WaitOff;
end;
-}

procedure TwFitxaInformesAM.cAreesAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
  tInformes.FieldByName('GESTIONAT').AsInteger := Datos.fieldByName('C_CODI').AsInteger;
end;

procedure TwFitxaInformesAM.Ed_tInformes_GestionatEnter(Sender: TObject);
begin
  if Ed_tInformes_Gestionat.EditInterno.EditText = '' then cArees.ExecuteModal('','');
end;

procedure TwFitxaInformesAM.tInformesAfterInsert(DataSet: TDataSet);
begin
  if DataSet.FieldByName('GESTIONAT').IsNull then DataSet.FieldByName('GESTIONAT').AsInteger := area;
end;

procedure TwFitxaInformesAM.cEntregaAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tInformes.FieldByName('C_ENTREGA').AsInteger := Datos.fieldByName('C_CODI').AsInteger;
end;

procedure TwFitxaInformesAM.Ed_tInfomres_C_EntregaEnter(Sender: TObject);
begin
  if Ed_tInfomres_C_Entrega.EditInterno.EditText = '' then cEntrega.ExecuteModal('','');
end;


procedure TwFitxaInformesAM.sbArxivarClick(Sender: TObject);
var
  FitxerOrigen: String;
begin
  if wData.UsuariActiu.Codi <> '' then Metge := wData.UsuariActiu
                                  else Metge := PreguntaMetge;
  if Metge.codi ='' then Exit
  else begin
      lUserActiu.Visible:=True;
      lUserActiu.Caption := 'Usuari Actiu: '+Metge.NomSencer;
  end;
  TeDretUsuari(Metge.Codi,'M264,G213','',True);

  wDataInformesQ.ArxivaInforme(HYGrid1.DataSource.DataSet.FieldByName('id_informe').AsInteger, Metge.Codi);

  // refresquem per a que mostri l'últim registre
  Filtre(sbEnCurs);
end;

procedure TwFitxaInformesAM.sbConsultaClick(Sender: TObject);
begin
  qAccions.Close;
  qAccions.ParamByName('id_informe').AsInteger := HYGrid1.DataSource.DataSet.FieldByName('ID_INFORME').AsInteger;
  qAccions.Open;

  mgcAccions.Caption :='Llistat d''accions realitzades amb l''informe de tipus '+  HYGrid1.DataSource.DataSet.FieldByName('C_TIPUS').AsString +
                     ' del pacient '+HYGrid1.DataSource.DataSet.FieldByName('NOMCOMPLET').AsString;
  CenterInClient(mgcAccions);
  mgcAccions.Show;
end;

procedure TwFitxaInformesAM.sbTancaClick(Sender: TObject);
begin
  mgcAccions.Hide;
end;

procedure TwFitxaInformesAM.sbPublicarHC3Click(Sender: TObject);
var
 id,linia: Integer;
 publicarAPP: String;
begin
  // insertar registre a INFORMES_HCCC si no hi és ja
  id := HYGrid1.DataSource.DataSet.FieldByName('ID_INFORME').AsInteger;
  if GutSelect('SELECT MAX(LINIA) FROM INFORMES_HCCC WHERE ID_INFORME = %d AND PUBLICAR_HC3="S"',[id]) > 0
  then FerError('L''informe ja s''ha publicat a l''HC3 o està pendent de fer-se.',True);

  linia := GutSelect('select max(linia) from INFORMES_HCCC where id_informe = %d',[id]);

  if (linia = 0) then publicarAPP := HYGrid1.DataSource.DataSet.FieldByName('PUBLICAR_APP').AsString
                 else publicarAPP := 'N';

  GutExecute('INSERT INTO INFORMES_HCCC (ID_INFORME, LINIA, PUBLICAR_HC3, PUBLICAR_APP) VALUES(%d, %d, "S", "%s")',[id,linia+1,publicarAPP]);

  ShowMessage('Informe enviat a publicar a l''HC3. En màxim 1 hora es podrà visualitzar si totes les dades del pacient, tractament i metge són correctes.');
end;

end.
