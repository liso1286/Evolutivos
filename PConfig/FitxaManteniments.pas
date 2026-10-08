unit FitxaManteniments;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, HYSql, DBTables, Grids, DBGrids, HYGrids, HYStatus, ExtCtrls,
  HYPanels, HYDialogConsulta, ComCtrls, StdCtrls, Variants;

type
  TwFitxaManteniments = class(TForm)
    bGrupCodiCamps: THYSqlBrowse;
    dsCodiCamps: TDataSource;
    dsGrupCodiCamps: TDataSource;
    bGrupCodiCamps_TipusCodi: TStringField;
    bGrupCodiCamps_N_Tipus: TStringField;
    bCodiCamps: THYSqlBrowse;
    bCodiCamps_TipusCodi: TStringField;
    bCodiCamps_C_Codi: TSmallintField;
    bCodiCamps_N_Codi: TStringField;
    bCodiCamps_N_Codi2: TStringField;
    bCodiCamps_R_Codi: TStringField;
    bPrestaCodiCamps: THYSqlBrowse;
    bPrestaCodiCamps_TipusCodi: TStringField;
    bPrestaCodiCamps_C_Codi: TSmallintField;
    dsPrestaCodiCamps: TDataSource;
    bPrestaCodiCamps_C_Prestacio: TStringField;
    Splitter3: TSplitter;
    HYArea4: TPanel;
    HYArea2: TPanel;
    HYGrid2: THYGrid;
    HYBarra2: THYBarra;
    HYArea1: TPanel;
    HYGrid1: THYGrid;
    HYBarra1: THYBarra;
    Splitter1: TSplitter;
    cInsertaPresta: THYConsulta;
    bCodiCamps_Params: TStringField;
    bCodiCamps_Ordre: TSmallintField;
    bGrupCodiCamps_G_Tipus: TStringField;
    bGrupCodiCamps_Ordre: TIntegerField;
    bGrupsCodiCamps: THYSqlBrowse;
    bGrupsCodiCamps_TipusCodi: TStringField;
    bGrupsCodiCamps_C_Codi: TSmallintField;
    dsGrupsCodiCamps: TDataSource;
    bGrupsCodiCamps_C_Grup: TStringField;
    bEspecialCodiCamps: THYSqlBrowse;
    dsEspecialCodiCamps: TDataSource;
    bEspecialCodiCamps_C_Especial: TStringField;
    bEspecialCodiCamps_TipusCodi: TStringField;
    bEspecialCodiCamps_C_Codi: TSmallintField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabICDMotiu: TTabSheet;
    HYArea3: TPanel;
    HYBarra3: THYBarra;
    HYGrid3: THYGrid;
    Panel1: TPanel;
    HYBarra4: THYBarra;
    HYGrid4: THYGrid;
    Panel2: TPanel;
    HYBarra5: THYBarra;
    HYGrid5: THYGrid;
    Panel3: TPanel;
    HYBarra6: THYBarra;
    HYGrid6: THYGrid;
    bICDCodiCamps: THYSqlBrowse;
    bICDCodiCamps_TipusCodi: TStringField;
    bICDCodiCamps_C_Codi: TSmallintField;
    dsICDCodiCamps: TDataSource;
    bICDCodiCamps_C_ICD: TStringField;
    bICDCodiCamps_TipusICD: TStringField;
    bGrupsCodiCamps_C0_0: TStringField;
    bGrupsCodiCamps_C0_1: TStringField;
    bGrupsCodiCamps_C1_0: TStringField;
    bGrupsCodiCamps_C1_1: TStringField;
    bGrupsCodiCamps_C1_2: TStringField;
    bGrupsCodiCamps_C2_0: TSmallintField;
    bGrupsCodiCamps_C2_1: TStringField;
    bGrupsCodiCamps_C2_2: TSmallintField;
    bGrupsCodiCamps_C2_3: TStringField;
    bEspecialCodiCamps_C0_0: TStringField;
    bEspecialCodiCamps_C0_1: TStringField;
    bEspecialCodiCamps_C0_2: TStringField;
    bEspecialCodiCamps_C1_0: TStringField;
    bEspecialCodiCamps_C1_1: TStringField;
    bEspecialCodiCamps_C1_2: TStringField;
    bEspecialCodiCamps_C2_0: TSmallintField;
    bEspecialCodiCamps_C2_1: TStringField;
    bEspecialCodiCamps_C2_2: TSmallintField;
    bEspecialCodiCamps_C2_3: TStringField;
    bICDCodiCamps_VersioCIM: TIntegerField;
    bICDCodiCamps_Ordre: TSmallintField;
    TabDretsMotiu: TTabSheet;
    Panel4: TPanel;
    HYBarra7: THYBarra;
    HYGrid7: THYGrid;
    bDretsMotiu: THYSqlBrowse;
    dsDretsMotiu: TDataSource;
    bCodiCamps_C0_0: TStringField;
    bCodiCamps_C0_1: TStringField;
    bCodiCamps_C0_2: TStringField;
    bPrestaCodiCamps_C0_0: TStringField;
    bPrestaCodiCamps_C0_1: TStringField;
    bPrestaCodiCamps_C0_2: TStringField;
    bPrestaCodiCamps_C0_3: TStringField;
    bPrestaCodiCamps_C0_4: TSmallintField;
    bPrestaCodiCamps_C0_5: TStringField;
    bPrestaCodiCamps_C0_6: TStringField;
    bPrestaCodiCamps_C1_0: TStringField;
    bPrestaCodiCamps_C1_1: TStringField;
    bPrestaCodiCamps_C1_2: TStringField;
    bPrestaCodiCamps_C2_0: TSmallintField;
    bPrestaCodiCamps_C2_1: TStringField;
    bPrestaCodiCamps_C2_2: TSmallintField;
    bPrestaCodiCamps_C2_3: TStringField;
    bPrestaCodiCamps_C2_4: TStringField;
    bPrestaCodiCamps_C2_5: TStringField;
    bICDCodiCamps_C0_0: TStringField;
    bICDCodiCamps_C0_1: TStringField;
    bICDCodiCamps_C0_2: TStringField;
    bICDCodiCamps_C1_0: TSmallintField;
    bICDCodiCamps_C1_1: TStringField;
    bICDCodiCamps_C1_2: TSmallintField;
    bICDCodiCamps_C1_3: TStringField;
    bICDCodiCamps_C1_4: TStringField;
    bICDCodiCamps_C1_5: TStringField;
    bICDCodiCamps_C2_0: TStringField;
    bICDCodiCamps_C2_1: TStringField;
    bICDCodiCamps_C2_2: TStringField;
    bICDCodiCamps_C2_3: TStringField;
    bICDCodiCamps_C2_4: TStringField;
    bICDCodiCamps_C2_5: TStringField;
    bICDCodiCamps_C2_6: TStringField;
    bICDCodiCamps_C2_7: TStringField;
    bICDCodiCamps_C2_8: TStringField;
    bICDCodiCamps_C2_9: TStringField;
    bICDCodiCamps_C2_10: TSmallintField;
    bICDCodiCamps_C2_11: TStringField;
    bICDCodiCamps_C2_12: TStringField;
    bICDCodiCamps_C2_13: TStringField;
    bICDCodiCamps_C2_14: TStringField;
    bICDCodiCamps_C2_15: TStringField;
    bICDCodiCamps_C2_16: TStringField;
    bICDCodiCamps_C2_17: TIntegerField;
    bDretsMotiu_C_Dret: TStringField;
    bDretsMotiu_C_Motiu: TSmallintField;
    bDretsMotiu_C0_0: TStringField;
    bDretsMotiu_C0_1: TStringField;
    bDretsMotiu_C0_2: TStringField;
    bDretsMotiu_C1_0: TSmallintField;
    bDretsMotiu_C1_1: TStringField;
    bDretsMotiu_C1_2: TSmallintField;
    bDretsMotiu_C1_3: TStringField;
    bDretsMotiu_C1_4: TStringField;
    bDretsMotiu_C1_5: TStringField;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HYBarra3AlInsertar(Sender: TObject);
    procedure cInsertaPrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure bGrupCodiCampsAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure bPrestaCodiCampsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure HYGrid3AlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Datos: TDataSet);
  private
  public
  end;

var
  wFitxaManteniments: TwFitxaManteniments;

implementation

uses DataCodis, DataAdmisio, DataCurs, DataBasics, Funciones, Data,
  DataConfig;

{$R *.DFM}

procedure TwFitxaManteniments.FormCreate(Sender: TObject);
begin
    if StartingWith(UpperCase(ExtractFileName(Application.ExeName)), 'PCONFIG') then bGrupCodiCamps.Filtro.Clear

    else begin
      bGrupCodiCamps.Filtro.Text :=  '    TIPUSCODI = "CARACTER"       '+
                                     ' OR TIPUSCODI = "COMPLICACIONS"  '+
                                     ' OR TIPUSCODI = "DESTINACIO"     '+
                                     ' OR TIPUSCODI = "MOTIU"          '+
                                     ' OR TIPUSCODI = "ORIGEN"         '+
                                     ' OR TIPUSCODI = "PROCESORIGEN"   '+
                                     ' OR TIPUSCODI = "SOLICITUD"      '+
                                     ' OR TIPUSCODI = "TIPUSPRESTA"    '+
                                     ' OR TIPUSCODI = "VEGADAAMBULATO" '+
                                     ' OR TIPUSCODI = "PRESTACARTES" ';
      HYGrid1.Columns[1].Visible := False;
      HYGrid1.Columns[3].Visible := False;
      HYArea1.Width := 250;

    end;

    bGrupCodiCamps.Open;
    bCodiCamps.Open;
    bPrestaCodiCamps.Open;
    bGrupsCodiCamps.Open;
    bEspecialCodiCamps.Open;
    bICDCodiCamps.Open;

    TabDretsMotiu.TabVisible := False;
end;

procedure TwFitxaManteniments.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    CanClose := bGrupCodiCamps.PuedeCerrar and bCodiCamps.PuedeCerrar and bPrestaCodiCamps.PuedeCerrar and bGrupsCodiCamps.PuedeCerrar and
                bEspecialCodiCamps.PuedeCerrar and bICDCodiCamps.PuedeCerrar and bDretsMotiu.PuedeCerrar;
end;

procedure TwFitxaManteniments.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TwFitxaManteniments.HYBarra3AlInsertar(Sender: TObject);
begin
    cInsertaPresta.SqlDic.Text := 'select * from [DIC1] where not (C_PRESTACIO in (select C_PRESTACIO from [DIC2] where TipusCodi = "'+bGrupCodiCamps.FieldbyName('TipusCodi').AsString+'" AND C_Codi = "'+bCodiCamps.FieldbyName('C_Codi').AsString+'") [AND FILTRO] [ORDEN]';
    cInsertaPresta.ExecuteModal;
end;

procedure TwFitxaManteniments.cInsertaPrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  Bucle: Integer;
begin
    for Bucle:= 0 to Sender.Grid.SelectedRows.Count - 1  do
    begin
       Sender.DS.Dataset.BookMark := Sender.Grid.SelectedRows[Bucle];
       EjecutaSQL(wData.Projecte.DataBaseName,
       'insert into '+ bPrestaCodiCamps.Diccionario.NombreFisico('','') +
        ' (C_Prestacio, TipusCodi, C_Codi)'+
        '  values '+
        ' ("'+ Datos.FieldbyName('C_Prestacio').asString +'", "'+ bCodiCamps.FieldbyName('TipusCodi').asString +'", '+ bCodiCamps.FieldbyName('C_Codi').asString +' )');
    end;

    bPrestaCodiCamps.Refresh;
end;

procedure TwFitxaManteniments.bGrupCodiCampsAfterScroll(DataSet: TDataSet);
begin
    TabDretsMotiu.TabVisible := (bGrupCodiCamps.FieldByName('TipusCodi').AsString = 'MOTIU');

    if TabDretsMotiu.TabVisible and not bDretsMotiu.Active then bDretsMotiu.Open;
end;

procedure TwFitxaManteniments.CheckBox1Click(Sender: TObject);
begin
    bPrestaCodiCamps.Filtered := False;
    bPrestaCodiCamps.Filtered := True;
end;

procedure TwFitxaManteniments.bPrestaCodiCampsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
var
    tipus: variant;
begin
    Accept := True;
    if (assigned(checkbox1) and CheckBox1.Checked) then
    begin
        tipus := GutSelect('SELECT tipus FROM prestacion WHERE c_prestacio = "%s" ',[bPrestaCodiCamps.FieldByName('C_Prestacio').AsString]);
        if VarIsNull(tipus) or VarIsEmpty(tipus) then tipus := 0;
        Accept := tipus >= 0;
    end;

end;

procedure TwFitxaManteniments.HYGrid3AlPintarGrid(var ColorFont,  ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
begin
    if datos.fieldbyname('Prestacions_Tipus').AsInteger < 0 then ColorFont := clSilver;
end;

end.
