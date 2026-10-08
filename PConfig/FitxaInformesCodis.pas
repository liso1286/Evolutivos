unit FitxaInformesCodis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBTables, HYSql, ExtCtrls, Grids, DBGrids, HYGrids,
  IBCustomDataSet, IBQuery, StdCtrls, Provider, DBClient, IBSQL, Mask,
  FileCtrl, FlCtrlEx, Word_TLB_2010, DBCtrls, HYLabel, HYDialogConsulta,
  HYEdit, Buttons, DBGridEh, Hy_Misc, HYPanels;

type
  TwFitxaInformesCodis = class(TForm)
    pcInformes: TPageControl;
    TabTipusInf: TTabSheet;
    bInfPlantilles: THYSqlBrowse;
    dsInfPlantilles: TDataSource;
    bInfPlantilles_C_Tipus: TStringField;
    bInfTipus: THYSqlBrowse;
    bInfTipus_C_Tipus: TStringField;
    bInfTipus_N_Tipus: TStringField;
    bInfTipus_Solicitable: TStringField;
    bInfTipus_Corregir: TStringField;
    bInfTipus_Publicar_HC3: TStringField;
    bInfTipus_Ordre: TSmallintField;
    dsInfTipus: TDataSource;
    bInfPlantilles_C_Plantilla: TIntegerField;
    bInfPlantilles_Idioma: TSmallintField;
    bInfPlantilles_Arxiu: TStringField;
    bInfTags: THYSqlBrowse;
    dsInfTags: TDataSource;
    bInfTags_Tag: TStringField;
    bInfPlantilles_N_Plantilla: TStringField;
    bInfTipus_Baixa: TStringField;
    bInfTipus_Ruta_Fi: TStringField;
    bInfTipus_Data_Arxiu: TSmallintField;
    bInfTipus_Ruta_Inici: TStringField;
    bInfTags_Fase: TSmallintField;
    TabDocARtf: TTabSheet;
    Unitat: TDriveComboBoxEx;
    Filtre: TEdit;
    bInicialitza: TButton;
    bConverteix: TButton;
    LlistaFitxers: TListBox;
    bLlista: TButton;
    Carpetes: TDirectoryListBox;
    Fitxers: TFileListBoxEx;
    cbConfirma: TCheckBox;
    mErrors: TMemo;
    bInfTipus_PDFdirecte: TStringField;
    bInfTipus_Gestionat: TSmallintField;
    TabRTFaRTF: TTabSheet;
    UnitatRTF: TDriveComboBoxEx;
    FiltreRTF: TEdit;
    bInicialitzaRTF: TButton;
    bConverteixRTF: TButton;
    LlistaFitxersRTF: TListBox;
    bLlistaRTF: TButton;
    CarpetesRTF: TDirectoryListBox;
    FitxersRTF: TFileListBoxEx;
    mErrorsRTF: TMemo;
    bInfTipus_Centre: TStringField;
    bInfTipus_Conjunt: TStringField;
    bInfTipus_PlantillaFinal: TStringField;
    bInfTags_C_Tipus: TStringField;
    bInfPlantilles_Baixa: TStringField;
    TabItems: TTabSheet;
    Panel1: TPanel;
    HYBarra3: THYBarra;
    HYGrid3: THYGrid;
    Panel2: TPanel;
    HYBarra5: THYBarra;
    HYGrid4: THYGrid;
    bInfItems: THYSqlBrowse;
    dsInfItems: TDataSource;
    Splitter1: TSplitter;
    HYBarra4: TPanel;
    edCTipus: THYTextEdit;
    HYLabel2: THYLabel;
    cTipus: THYConsulta;
    HYGrid2: THYGrid;
    HYBarra2: THYBarra;
    sbCopiaTags: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dsInfLlistes: TDataSource;
    bInfLlistes: THYSqlBrowse;
    Panel4: TPanel;
    HYGrid1: THYGrid;
    HYBarra1: THYBarra;
    cbBaixa: TCheckBox;
    Label7: TLabel;
    bInfTipus_C_DretPresta: TStringField;
    bInfTipus_C_DretMotiu: TStringField;
    mgAjudaTipus: THyMoveGroupControl;
    bInfPlantilles_TipusECB: TIntegerField;
    qTipusECB: TQuery;
    dsTipusECB: TDataSource;
    pTipusECB: TPanel;
    Label11: TLabel;
    cbTipusECB: TComboBox;
    mgAjudaItems: THyMoveGroupControl;
    Splitter2: TSplitter;
    bInfTipus_Anulable: TStringField;
    bInfTipus_Bolca_IB: TStringField;
    bInfTags_ID: TIntegerField;
    bInfTipus_Bolca_Anota: TStringField;
    bHC3TipusDocument: THYSqlBrowse;
    dsHC3TipusDocument: TDataSource;
    bHC3TipusDocument_T_DOC: TStringField;
    bHC3TipusDocument_DESCRIPCIO: TStringField;
    bHC3TipusDocument_TIPUS_DOCUMENT: TStringField;
    bHC3TipusDocument_DATA_INICI: TDateTimeField;
    bHC3TipusDocument_DATA_FINAL: TDateTimeField;
    bHC3TipusDocument_C_PRESTACIO: TStringField;
    bHC3TipusDocument_C_MOTIU: TSmallintField;
    Splitter4: TSplitter;
    Panel5: TPanel;
    HYBarra6: THYBarra;
    Label20: TLabel;
    HYGrid5: THYGrid;
    bInfTipus_Publicar_APP: TStringField;
    bInfTipus_Diagnostic_Alta: TStringField;
    TabLlistes: TTabSheet;
    bInfTipus_ValidacioAuto: TStringField;
    bInfTipus_ImpressioAuto: TStringField;
    bInfTipus_Autors: TStringField;
    Panel6: TPanel;
    Label9: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label22: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel13: TPanel;
    Label21: TLabel;
    Panel14: TPanel;
    Label23: TLabel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label28: TLabel;
    Panel15: TPanel;
    Label16: TLabel;
    Panel18: TPanel;
    Label29: TLabel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label13: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Panel22: TPanel;
    Panel23: TPanel;
    Label15: TLabel;
    Label24: TLabel;
    Label25: TLabel;
	Label26: TLabel;
	Label27: TLabel;
	Label30: TLabel;
    bInfTipus_EliminaBuits: TStringField;
    bInfTags_Cos: TStringField;
    Panel24: TPanel;
    DBGridEh2: TDBGridEh;
    HYBarra8: THYBarra;
    Label31: TLabel;
    bInfItems_C_Item: TIntegerField;
    bInfItems_C_TipusInforme: TStringField;
    bInfItems_N_Item: TStringField;
    bInfItems_Obligatori: TStringField;
    bInfItems_Ordre: TSmallintField;
    bInfItems_Nivell: TSmallintField;
    bInfItems_C_TipusItem: TSmallintField;
    bInfItems_SQL_Select: TStringField;
    bInfItems_Tag: TStringField;
    bInfItems_SQL_Comprova: TStringField;
    bInfItems_SQL_Bolcatge: TStringField;
    bInfItems_TipusECB: TIntegerField;
    bInfItems_Editable: TStringField;
    bInfLlistes_ID: TIntegerField;
    bInfLlistes_C_Item: TIntegerField;
    bInfLlistes_C_Area: TStringField;
    bInfLlistes_Grups_UM: TStringField;
    bInfLlistes_Automatic: TStringField;
    bInfPlantilles_C0_0: TStringField;
    bInfPlantilles_C0_1: TStringField;
    bInfPlantilles_C0_2: TStringField;
    bInfPlantilles_C0_3: TStringField;
    bInfPlantilles_C0_4: TSmallintField;
    bInfPlantilles_C0_5: TStringField;
    bInfPlantilles_C0_6: TStringField;
    bInfPlantilles_C0_7: TStringField;
    bInfPlantilles_C0_8: TStringField;
    bInfPlantilles_C0_9: TSmallintField;
    bInfPlantilles_C0_10: TStringField;
    bInfPlantilles_C0_11: TStringField;
    bInfPlantilles_C0_12: TStringField;
    bInfPlantilles_C1_0: TSmallintField;
    bInfPlantilles_C1_1: TStringField;
    bInfPlantilles_C1_2: TSmallintField;
    bInfPlantilles_C1_3: TStringField;
    bInfPlantilles_C1_4: TStringField;
    bInfPlantilles_C1_5: TStringField;
    bInfTags_C0_0: TSmallintField;
    bInfTags_C0_1: TStringField;
    bInfTags_C0_2: TSmallintField;
    bInfTags_C0_3: TStringField;
    bInfTags_C0_4: TStringField;
    bInfTags_C0_5: TStringField;
    bInfTags_C1_0: TStringField;
    bInfTags_C1_1: TStringField;
    bInfTags_C1_2: TStringField;
    bInfTags_C1_3: TStringField;
    bInfTags_C1_4: TSmallintField;
    bInfTags_C1_5: TStringField;
    bInfTags_C1_6: TStringField;
    bInfTags_C1_7: TStringField;
    bInfTags_C1_8: TStringField;
    bInfTags_C1_9: TSmallintField;
    bInfTags_C1_10: TStringField;
    bInfTags_C1_11: TStringField;
    bInfTags_C1_12: TStringField;
    bInfLlistes_SQL: TStringField;
    bInfLlistes_Text_CA: TMemoField;
    bInfLlistes_Text_ES: TMemoField;
    bInfLlistes_Text_EN: TMemoField;
    bInfLlistes_Ordre: TIntegerField;
    bInfLlistes_Baixa: TStringField;
    Panel3: TPanel;
    HYArea1: THYArea;
    bInfItems_Indicacions: TMemoField;
    Ed_bInfItems_SQL_Select: THYMemo;
    Ed_bInfItems_SQL_Comprova: THYMemo;
    Ed_bInfItems_SQL_Bolcatge: THYMemo;
    Ed_bInfItems_Indicacions: THYMemo;
    Label17: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    bInfTipus_C0_0: TStringField;
    bInfTipus_C0_1: TStringField;
    bInfTipus_C1_0: TSmallintField;
    bInfTipus_C1_1: TStringField;
    bInfTipus_C1_2: TSmallintField;
    bInfTipus_C1_3: TStringField;
    bInfTipus_C1_4: TStringField;
    bInfTipus_C1_5: TStringField;
    bInfTipus_C2_0: TStringField;
    bInfTipus_C2_1: TStringField;
    bInfTipus_C3_0: TStringField;
    bInfTipus_C3_1: TStringField;
    bInfTipus_C4_0: TSmallintField;
    bInfTipus_C4_1: TStringField;
    bInfTipus_C4_2: TSmallintField;
    bInfTipus_C4_3: TStringField;
    bInfTipus_C4_4: TStringField;
    bInfTipus_C4_5: TStringField;
    bInfTipus_C5_0: TStringField;
    bInfTipus_C5_1: TStringField;
    bInfTipus_C6_0: TStringField;
    bInfTipus_C6_1: TStringField;
    bInfTipus_C7_0: TStringField;
    bInfTipus_C7_1: TStringField;
    bInfTipus_C8_0: TStringField;
    bInfTipus_C8_1: TStringField;
    bInfTipus_C8_2: TStringField;
    bInfTipus_C9_0: TStringField;
    bInfTipus_C9_1: TStringField;
    bInfTipus_C9_2: TStringField;
    bInfTipus_C10_0: TSmallintField;
    bInfTipus_C10_1: TStringField;
    bInfTipus_C10_2: TSmallintField;
    bInfTipus_C10_3: TStringField;
    bInfTipus_C10_4: TStringField;
    bInfTipus_C10_5: TStringField;
    bInfTipus_C11_0: TStringField;
    bInfTipus_C11_1: TStringField;
    bInfTipus_C12_0: TStringField;
    bInfTipus_C12_1: TStringField;
    bInfItems_C0_0: TStringField;
    bInfItems_C0_1: TStringField;
    bInfItems_C0_2: TStringField;
    bInfItems_C0_3: TStringField;
    bInfItems_C0_4: TSmallintField;
    bInfItems_C0_5: TStringField;
    bInfItems_C0_6: TStringField;
    bInfItems_C0_7: TStringField;
    bInfItems_C0_8: TStringField;
    bInfItems_C0_9: TSmallintField;
    bInfItems_C0_10: TStringField;
    bInfItems_C0_11: TStringField;
    bInfItems_C0_12: TStringField;
    bInfItems_C1_0: TSmallintField;
    bInfItems_C1_1: TStringField;
    bInfItems_C1_2: TSmallintField;
    bInfItems_C1_3: TStringField;
    bInfItems_C1_4: TStringField;
    bInfItems_C1_5: TStringField;
    bInfItems_C2_0: TSmallintField;
    bInfItems_C2_1: TStringField;
    bInfItems_C2_2: TSmallintField;
    bInfItems_C2_3: TStringField;
    bInfItems_C2_4: TStringField;
    bInfItems_C2_5: TStringField;
    Panel25: TPanel;
    Label35: TLabel;
    bInfLlistes_C_Tipus: TStringField;
    bInfLlistes_C0_0: TStringField;
    bInfLlistes_C0_1: TStringField;
    bInfLlistes_C0_2: TStringField;
    bInfLlistes_C0_3: TSmallintField;
    bInfLlistes_C0_4: TStringField;
    bInfLlistes_C1_0: TIntegerField;
    bInfLlistes_C1_1: TStringField;
    bInfLlistes_C1_2: TStringField;
    bInfLlistes_C1_3: TStringField;
    bInfLlistes_C1_4: TSmallintField;
    bInfLlistes_C1_5: TSmallintField;
    bInfLlistes_C1_6: TSmallintField;
    bInfLlistes_C1_7: TStringField;
    bInfLlistes_C1_8: TStringField;
    bInfLlistes_C1_9: TStringField;
    bInfLlistes_C1_10: TStringField;
    bInfLlistes_C1_11: TIntegerField;
    bInfLlistes_C1_12: TStringField;
    bHC3TipusDocument_C0_0: TStringField;
    bHC3TipusDocument_C0_1: TStringField;
    bHC3TipusDocument_C0_2: TStringField;
    bHC3TipusDocument_C0_3: TStringField;
    bHC3TipusDocument_C0_4: TSmallintField;
    bHC3TipusDocument_C0_5: TStringField;
    bHC3TipusDocument_C0_6: TStringField;
    bHC3TipusDocument_C0_7: TSmallintField;
    bHC3TipusDocument_C0_8: TStringField;
    bHC3TipusDocument_C1_0: TSmallintField;
    bHC3TipusDocument_C1_1: TStringField;
    bHC3TipusDocument_C1_2: TSmallintField;
    bHC3TipusDocument_C1_3: TStringField;
    bHC3TipusDocument_C1_4: TStringField;
    bHC3TipusDocument_C1_5: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure bInfTipusAfterScroll(DataSet: TDataSet);
    procedure cTipusConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
    procedure cTipusAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure sbCopiaTagsClick(Sender: TObject);

    procedure FiltreChange(Sender: TObject);
    procedure bInicialitzaClick(Sender: TObject);
    procedure bLlistaClick(Sender: TObject);
    procedure bConverteixClick(Sender: TObject);
    procedure CarpetesChange(Sender: TObject);
    procedure bInicialitzaRTFClick(Sender: TObject);
    procedure CarpetesRTFChange(Sender: TObject);
    procedure FiltreRTFChange(Sender: TObject);
    procedure bLlistaRTFClick(Sender: TObject);
    procedure bConverteixRTFClick(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure HYGrid1AlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Datos: TDataSet);
    procedure cbBaixaClick(Sender: TObject);
    procedure cbTipusECBChange(Sender: TObject);
    procedure bInfPlantillesAfterScroll(DataSet: TDataSet);
    procedure bInfItemsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure HYGrid5AlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Datos: TDataSet);
    procedure bHC3TipusDocumentBeforePost(DataSet: TDataSet);
    procedure bHC3TipusDocumentAfterInsert(DataSet: TDataSet);
  private
    tipusECB: Integer;
    producte: Integer;
    procedure BolcaTags(tipusorigen: String);
  public
  end;

var
  wFitxaInformesCodis: TwFitxaInformesCodis;

implementation

uses DataInformes, Data, utili16, Funciones;

{$R *.dfm}

procedure TwFitxaInformesCodis.FormCreate(Sender: TObject);
begin
    pcInformes.ActivePage := TabTipusInf;
    bInfTipus.Open;
    bInfItems.Open;
    bInfTags.Open;
    bInfPlantilles.Open;
    bInfLlistes.Open;

    mgAjudaTipus.Expanded := False;
    mgAjudaItems.Expanded := False;

    cTipus.Indicacio := 'Es mostren els tipus d''informe amb plantilla estructurada.  ' + NLine +
                        'F3 per mostrar-los tots.  ';
    cTipus.Tag := 0;

    qTipusECB.Close;
    qTipusECB.Open;
    qTipusECB.First;
    producte := 1;
    while not qTipusECB.Eof do
    begin
        cbTipusECB.Items.Add(qTipusECB.FieldByName('N_Codi').AsString);
        if (qTipusECB.FieldByName('C_Codi').AsInteger > 1) then producte := producte * qTipusECB.FieldByName('C_Codi').AsInteger;
        qTipusECB.Next;
    end;
end;


procedure TwFitxaInformesCodis.bInfPlantillesAfterScroll(DataSet: TDataSet);
begin
    if not qTipusECB.Active then Exit;

    qTipusECB.Locate('C_Codi', bInfPlantilles.FieldByName('TipusECB').AsInteger, []);
    cbTipusECB.Text := qTipusECB.FieldByName('N_Codi').AsString;
    cbTipusECBChange(cbTipusECB);
end;

procedure TwFitxaInformesCodis.cbTipusECBChange(Sender: TObject);
begin
    if not qTipusECB.Active then Exit;

    qTipusECB.Locate('N_Codi', cbTipusECB.Text, []);

    tipusECB := qTipusECB.FieldByName('C_Codi').AsInteger;
    if (tipusECB = 0) then tipusECB := producte;    // ítems comuns a tots els ECB (pq no divideixi entre 0)

    bInfItems.Filtered := True;
end;

procedure TwFitxaInformesCodis.bInfItemsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
    Accept := (bInfItems.FieldByName('TipusECB').AsInteger mod tipusECB = 0);
end;


procedure TwFitxaInformesCodis.cbBaixaClick(Sender: TObject);
begin
    bInfTipus.Filtered := not cbBaixa.Checked;
end;

procedure TwFitxaInformesCodis.HYGrid1AlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
begin
    if (Datos.FieldByName('BAIXA').AsString = 'B') then ColorFont := clRed;
end;


procedure TwFitxaInformesCodis.bInfTipusAfterScroll(DataSet: TDataSet);
begin
    edCTipus.EditValue := bInfTipus.FieldByName('C_Tipus').AsString;
    cbTipusECB.Text := '';
    bHC3TipusDocument.Close;
    bHC3TipusDocument.Filter := Format('T_DOC = ''%s''', [bInfTipus.FieldByName('C_Tipus').AsString]);
    bHC3TipusDocument.Open;
end;

procedure TwFitxaInformesCodis.cTipusConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
begin
    if (UpperCase(SqlField) = 'C_TIPUS') then SqlField := 'T.C_TIPUS';
end;

procedure TwFitxaInformesCodis.cTipusAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    CASE cTipus.Tag OF
      0: bInfTipus.Locate('C_TIPUS', Datos.FieldByName('C_Tipus').AsString, []);
      1: BolcaTags(Datos.FieldByName('C_Tipus').AsString);
    END;
end;

procedure TwFitxaInformesCodis.sbCopiaTagsClick(Sender: TObject);
begin
    cTipus.Tag := 1;
    cTipus.ExecuteModal;
    cTipus.Tag := 0;
end;

procedure TwFitxaInformesCodis.BolcaTags(tipusorigen: String);
begin
    GutExecute('insert into INFORMES_TAGS(C_TIPUS, TAG, FASE) ' +
               'select "%s", TAG, FASE from INFORMES_TAGS where C_TIPUS = "%s"',
               [edCTipus.EditValue, tipusorigen]);
               
    bInfTags.Refresh;
end;


// DOC a RTF      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure TwFitxaInformesCodis.bInicialitzaClick(Sender: TObject);
begin
    Unitat.Drive := 'G';
    if wData.ES_PROVA then Carpetes.Directory := 'G:\proves\infmet'
                      else Carpetes.Directory := 'G:\usr\infmet';

    Filtre.Text := '*.doc';
end;


procedure TwFitxaInformesCodis.FiltreChange(Sender: TObject);
begin
    Fitxers.Mask := Filtre.Text;
    LlistaFitxers.Clear;
end;


procedure TwFitxaInformesCodis.CarpetesChange(Sender: TObject);
begin
    LlistaFitxers.Clear;
end;


procedure TwFitxaInformesCodis.bLlistaClick(Sender: TObject);
var
  Llista: TStringList;
  i, j: Integer;
begin
    LlistaFitxers.Clear;
    Llista := TStringList.Create;
    TRY
      BuscaFicheros(Carpetes.Directory, Filtre.Text, Llista, True);
      for i := 0 to Llista.Count-1 do
      begin
          // Excloem els RMP, perquè es llegeixen d'Interbase. També excloem els arxius corresponents a bloquejos o còpies de seguretat.
          if (Pos('RMP', Llista[i]) = 0) and (Pos('~', Llista[i]) = 0) then LlistaFitxers.Items.Add(Llista[i]);
      end;
    FINALLY
      Llista.Free;
    END;

    bLlista.Caption := 'Llista (' + IntToStr(LlistaFitxers.Count) + ' documents)';
end;


procedure TwFitxaInformesCodis.bConverteixClick(Sender: TObject);
var
  i: Integer;
  WordApp: _Application;
  WordDoc: _Document;
  NomInforme, NomRTF: String;
  pNomDoc, pNomesLectura, pNomRTF, pFileFormat, pGuardaCanvis: OleVariant;
begin
  mErrors.Text := 'Log errors:' + NLine;
  TRY
    WaitON('Processant informes . . .');

    WordApp := CoWordApplication.Create;
    WordApp.Visible := False;
    for i := 0 to LlistaFitxers.Count-1 do
    begin
        if LlistaFitxers.Selected[i] then
        begin
          TRY
            // Obrim l'informe internament
            NomInforme := LlistaFitxers.Items[i];
            pNomDoc := NomInforme;
            pNomesLectura := True;
            WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                              EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

            // Guardem el Word com a RTF i li canviem l'extensió
            NomRTF      := ChangeFileExt(NomInforme, '.rtf');
            pNomRTF     := NomRTF;
            pFileFormat := wdFormatRTF;
            WordDoc.SaveAs2(pNomRTF, pFileFormat, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
            Sleep(500);

            // Tanquem el Word original (.doc)
            pGuardaCanvis := False;
            WordDoc.Close(pGuardaCanvis, EmptyParam, EmptyParam);

            // Eliminem el Word original (.doc)
            if (not cbConfirma.Checked) or AvisoNS('Eliminar fitxer .doc?') then DeleteFile(NomInforme);
          EXCEPT
            on e: Exception do mErrors.Text := mErrors.Text + NLine + NomInforme + ': ' + e.Message;
          END;
        end;
    end;
  FINALLY
    pGuardaCanvis := False;
    WordApp.Quit(pGuardaCanvis, EmptyParam, EmptyParam);
    WaitOff;
  END;
end;


// RTF a RTF REAL /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure TwFitxaInformesCodis.bInicialitzaRTFClick(Sender: TObject);
begin
    UnitatRTF.Drive := 'G';
    if wData.ES_PROVA then CarpetesRTF.Directory := 'G:\proves\infmet'
                      else CarpetesRTF.Directory := 'G:\usr\infmet';

    FiltreRTF.Text := '*CEX*.rtf';
end;


procedure TwFitxaInformesCodis.CarpetesRTFChange(Sender: TObject);
begin
    LlistaFitxersRTF.Clear;
end;


procedure TwFitxaInformesCodis.FiltreRTFChange(Sender: TObject);
begin
    FitxersRTF.Mask := FiltreRTF.Text;
    LlistaFitxersRTF.Clear;
end;


procedure TwFitxaInformesCodis.bLlistaRTFClick(Sender: TObject);
var
  LlistaRTF: TStringList;
  i, j: Integer;
begin
    LlistaFitxersRTF.Clear;
    LlistaRTF := TStringList.Create;
    TRY
      BuscaFicheros(CarpetesRTF.Directory, FiltreRTF.Text, LlistaRTF, True);
      for i := 0 to LlistaRTF.Count-1 do
      begin
          // Excloem els arxius corresponents a bloquejos o còpies de seguretat.
          if (Pos('~', LlistaRTF[i]) = 0) then LlistaFitxersRTF.Items.Add(LlistaRTF[i]);
      end;
    FINALLY
      LlistaRTF.Free;
    END;

    bLlistaRTF.Caption := 'Llista (' + IntToStr(LlistaFitxersRTF.Count) + ' documents)';
end;


procedure TwFitxaInformesCodis.bConverteixRTFClick(Sender: TObject);
var
  i: Integer;
  datainforme: TDateTime;
  WordApp: _Application;
  WordDoc: _Document;
  NomRTF: String;
  pNomDoc, pNomesLectura, pFalse, pNomRTF, pFileFormat, pGuardaCanvis: OleVariant;
begin
  mErrorsRTF.Text := 'Log errors:' + NLine;
  TRY
    WaitON('Processant informes . . .');

    WordApp := CoWordApplication.Create;
    WordApp.Visible := False;
    for i := 0 to LlistaFitxersRTF.Count-1 do
    begin
        if LlistaFitxersRTF.Selected[i] then
        begin
          TRY
            datainforme := StrToDate(Copy(ExtractFileName(LlistaFitxersRTF.Items[i]), 15, 2) + '/' +
                                     Copy(ExtractFileName(LlistaFitxersRTF.Items[i]), 13, 2) + '/' +
                                     Copy(ExtractFileName(LlistaFitxersRTF.Items[i]), 9, 4));

            if (datainforme < StrToDate('11/02/2020')) then Continue;

            // Obrim l'informe internament
            NomRTF := LlistaFitxersRTF.Items[i];
            pNomDoc := NomRTF;
            pNomesLectura := False;
            WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                              EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

            // Guardem el Word com a RTF
            pNomRTF     := NomRTF;
            pFileFormat := wdFormatRTF;
            WordDoc.SaveAs2(pNomRTF, pFileFormat, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
            Sleep(500);

            // Tanquem l'arxiu (ja hem guardat)
            pGuardaCanvis := False;
            WordDoc.Close(pGuardaCanvis, EmptyParam, EmptyParam);

          EXCEPT
            on e: Exception do mErrorsRTF.Text := mErrorsRTF.Text + NLine + NomRTF + ': ' + e.Message;
          END;
        end;
    end;
  FINALLY
    pGuardaCanvis := False;
    WordApp.Quit(pGuardaCanvis, EmptyParam, EmptyParam);
    WaitOff;
  END;
end;


// TANCAMENT      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure TwFitxaInformesCodis.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     CanClose := bInfTipus.PuedeCerrar and bInfItems.PuedeCerrar and bInfTags.PuedeCerrar and bInfPlantilles.PuedeCerrar and bInfLlistes.PuedeCerrar and bHC3TipusDocument.PuedeCerrar;
end;

procedure TwFitxaInformesCodis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TwFitxaInformesCodis.HYGrid5AlPintarGrid(var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Datos: TDataSet);
begin
  if not Datos.FieldByName('DATA_FINAL').IsNull then ColorFont := clRed;
end;

procedure TwFitxaInformesCodis.bHC3TipusDocumentBeforePost(
  DataSet: TDataSet);
begin
  // TODO si ja hi ha un registre amb igual tipus i data_final nul·la, avisar de que donarem de baixa el registre actiu
  if GutSelect('select count(*) from HC3TIPUSDOCUMENT where T_DOC = "%s" AND DATA_FINAL IS NULL AND DATA_INICI < "%s"',
               [DataSet.FieldByName('T_DOC').AsString,
                FormatDateTime('dd.mm.yyyy', DataSet.FieldByName('DATA_INICI').AsDateTime)]) > 0
  then begin
      if AvisoSN('Hi ha altres registres pel mateix tipus de document actiu. En continuar, es finalitzaran a data d''ahir. Vols continuar (S/N)?')
      then GutExecute('UPDATE HC3TIPUSDOCUMENT SET DATA_FINAL = "%s" WHERE T_DOC = "%s" and DATA_INICI < "%s"',
                      [FormatDateTime('dd.mm.yyyy', DataSet.FieldByName('DATA_INICI').AsDateTime-1),
                       DataSet.FieldByName('T_DOC').AsString,
                       FormatDateTime('dd.mm.yyyy', DataSet.FieldByName('DATA_INICI').AsDateTime)])
      else Abort;
  end;
end;

procedure TwFitxaInformesCodis.bHC3TipusDocumentAfterInsert(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('T_DOC').AsString := HYGrid1.DataSource.DataSet.FieldByName('C_Tipus').AsString;
end;

end.
