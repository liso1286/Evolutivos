unit FichaPrestacio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, HYSql, Grids, DBGrids, HYGrids, Db, DBTables, ComCtrls,
  HYDialogConsulta, Buttons, HYDualList, StdCtrls, Hy_Misc, HYEdit, Variants;

type
  TwFichaPrestacio = class(TForm)
    Tracs: THYSqlBrowse;
    dsTracs: TDataSource;
    HYGrid4: THYGrid;
    HYBarra5: THYBarra;
    Tracs_C_Prestacio: TStringField;
    Tracs_N_Prestacio: TStringField;
    Tracs_N_Prestacio2: TStringField;
    Tracs_Resum: TStringField;
    Tracs_Facturar: TStringField;
    Tracs_Tipus: TSmallintField;
    Splitter1: TSplitter;
    PC: TPageControl;
    tsMetges: TTabSheet;
    MetgePresta: THYSqlBrowse;
    dsMetgePresta: TDataSource;
    pPrestaMetge: THYConsulta;
    BorraPresta: THYConsulta;
    HYGrid2: THYGrid;
    HYBarra2: THYBarra;
    MetgePresta_C_Prestacio: TStringField;
    MetgePresta_Codi: TStringField;
    MetgePresta_MAX_VISITES: TIntegerField;
    MetgePresta_MINUTS: TIntegerField;
    MetgePresta_C0_0: TStringField;
    MetgePresta_C0_1: TStringField;
    MetgePresta_C0_2: TStringField;
    MetgePresta_C0_3: TStringField;
    MetgePresta_C0_4: TStringField;
    MetgePresta_C0_5: TStringField;
    MetgePresta_C0_6: TStringField;
    MetgePresta_C0_7: TStringField;
    MetgePresta_C0_8: TStringField;
    MetgePresta_C0_9: TIntegerField;
    MetgePresta_C0_10: TStringField;
    MetgePresta_C1_0: TStringField;
    MetgePresta_C1_1: TStringField;
    MetgePresta_C1_2: TStringField;
    MetgePresta_C1_3: TStringField;
    MetgePresta_C1_4: TSmallintField;
    tsPrestacionsCompatibles: TTabSheet;
    tsDrets: TTabSheet;
    PanelDrets: THYSqlDualList;
    PanelComp: THYSqlDualList;
    Tracs_CodiFacturacio: TStringField;
    Tracs_DescripcioSCS: TStringField;
    tsAreesSC: TTabSheet;
    PrestaAreas: THYSqlBrowse;
    PrestaAreas_C_Area: TStringField;
    PrestaAreas_C_Prestacio: TStringField;
    dsAreas: TDataSource;
    HYBarra1: THYBarra;
    HYGrid1: THYGrid;
    PrestaAreas_C0_0: TStringField;
    PrestaAreas_C0_1: TStringField;
    PrestaAreas_C0_2: TStringField;
    PrestaAreas_C0_3: TSmallintField;
    PrestaAreas_C1_0: TStringField;
    PrestaAreas_C1_1: TStringField;
    PrestaAreas_C1_2: TStringField;
    PrestaAreas_C1_3: TStringField;
    PrestaAreas_C1_4: TSmallintField;
    Tracs_EsEase: TStringField;
    Tracs_Planta: TStringField;
    Tracs_Subgrup: TSmallintField;
    Tracs_NoSCS: TStringField;
    tsCodiCamps: TTabSheet;
    bPrestaCodiCamps: THYSqlBrowse;
    dsPrestaCodiCamps: TDataSource;
    Tracs_C_CONCEPTE_TESIS: TStringField;
    Tracs_C_Prestacio_Mare: TStringField;
    HYBarra3: THYBarra;
    HYGrid3: THYGrid;
    bPrestaCodiCamps_C_Prestacio: TStringField;
    bPrestaCodiCamps_TipusCodi: TStringField;
    bPrestaCodiCamps_C_Codi: TSmallintField;
    sbCopy: TSpeedButton;
    mgcCopy: THyMoveGroupControl;
    Label1: TLabel;
    eDescripcio: TEdit;
    eCodi: TEdit;
    eResum: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    sbCancel: TSpeedButton;
    sbDesa: TSpeedButton;
    eDescripcio2: TEdit;
    Label6: TLabel;
    cPresta: THYConsulta;
    cCodiOrigen: THYTextEdit;
    lDescripcioOrigen: TLabel;
    Tracs_Grup: TSmallintField;
    Tracs_Clinica: TSmallintField;
    cbBaixa: TCheckBox;
    Tracs_Centre: TStringField;
    CheckBox1: TCheckBox;
    Tracs_C0_0: TSmallintField;
    Tracs_C0_1: TStringField;
    Tracs_C0_2: TSmallintField;
    Tracs_C0_3: TStringField;
    Tracs_C0_4: TStringField;
    Tracs_C0_5: TStringField;
    Tracs_C1_0: TSmallintField;
    Tracs_C1_1: TStringField;
    Tracs_C1_2: TSmallintField;
    Tracs_C1_3: TStringField;
    Tracs_C1_4: TStringField;
    Tracs_C1_5: TStringField;
    Tracs_C2_0: TSmallintField;
    Tracs_C2_1: TStringField;
    Tracs_C2_2: TSmallintField;
    Tracs_C2_3: TStringField;
    Tracs_C2_4: TStringField;
    Tracs_C2_5: TStringField;
    Tracs_C3_0: TStringField;
    Tracs_C3_1: TStringField;
    bPrestaCodiCamps_C0_0: TStringField;
    bPrestaCodiCamps_C0_1: TStringField;
    bPrestaCodiCamps_C0_2: TStringField;
    bPrestaCodiCamps_C0_3: TStringField;
    bPrestaCodiCamps_C0_4: TSmallintField;
    bPrestaCodiCamps_C0_5: TStringField;
    bPrestaCodiCamps_C0_6: TStringField;
    bPrestaCodiCamps_C0_7: TSmallintField;
    bPrestaCodiCamps_C0_8: TStringField;
    bPrestaCodiCamps_C1_0: TStringField;
    bPrestaCodiCamps_C1_1: TStringField;
    bPrestaCodiCamps_C1_2: TStringField;
    bPrestaCodiCamps_C2_0: TSmallintField;
    bPrestaCodiCamps_C2_1: TStringField;
    bPrestaCodiCamps_C2_2: TSmallintField;
    bPrestaCodiCamps_C2_3: TStringField;
    bPrestaCodiCamps_C2_4: TStringField;
    bPrestaCodiCamps_C2_5: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure HYBarra2AlInsertar(Sender: TObject);
    procedure HYBarra2AlBorrar(Sender: TObject);
    procedure pPrestaMetgeAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure BorraPrestaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure TracsAfterScroll(DataSet: TDataSet);
    procedure sbCopyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbDesaClick(Sender: TObject);
    procedure cPrestaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure ObreConsultaPrestacio(Sender: TObject);
    procedure cbBaixaClick(Sender: TObject);
    procedure HYGrid4AlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Datos: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure bPrestaCodiCampsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure HYGrid3AlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Datos: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wFichaPrestacio: TwFichaPrestacio;

implementation

uses Data, DataBasics, DataConfig, Funciones, DataAdmisio, DBCtrls;

{$R *.DFM}

procedure TwFichaPrestacio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TwFichaPrestacio.FormCreate(Sender: TObject);
begin
    PC.ActivePage := tsMetges;

    cbBaixa.Checked := False;
    cbBaixaClick(cbBaixa);

    MetgePresta.Open('','');

    // A Admissions només mostrarem el Tab d'Usuaris (aquesta fitxa es comparteix al PConfig i a Admissions)
    // i no deixarem editar les prestacions
    // Juny 2023: Al Sergi li ho mostrem tot però li deixem modificar només coordinadors assignats a prestació [A238]
    tsDrets.TabVisible := TeDretAcces([238]);
    tsPrestacionsCompatibles.TabVisible := TeDretAcces([238]);
    tsAreesSC.TabVisible := TeDretAcces([238]);
    tsCodiCamps.TabVisible := TeDretAcces([238]);

    Tracs.ReadOnly := not TeDretAcces([99]);
    PrestaAreas.ReadOnly := not TeDretAcces([99]);
    MetgePresta.ReadOnly := not TeDretAcces([99,238]);
    bPrestaCodiCamps.ReadOnly := not TeDretAcces([99]);

    if TeDretAcces([238]) then
    begin
        if not TeDretAcces([99]) then
        begin
            PanelDrets.SqlInsert := '';
            PanelDrets.SqlDelete := '';
            PanelComp.SqlInsert := '';
            PanelComp.SqlDelete := '';
        end;

        PC.ActivePage := tsDrets;
        PanelDrets.Active := True;
        PanelComp.Active := True;
        PrestaAreas.Open;
        bPrestaCodiCamps.Open;
    end;
end;

procedure TwFichaPrestacio.cbBaixaClick(Sender: TObject);
begin
    if cbBaixa.Checked then begin Tracs.Filtro.Text := ''; cPresta.Filtros[0].Valor1 := ''; end
                       else begin Tracs.Filtro.Text := 'tipus > -1'; cPresta.Filtros[0].Valor1 := '-1'; end;
    Tracs.Close;
    Tracs.Open('','');
end;


procedure TwFichaPrestacio.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     CanClose := Tracs.PuedeCerrar and MetgePresta.PuedeCerrar and PrestaAreas.PuedeCerrar and bPrestaCodiCamps.PuedeCerrar;
end;

procedure TwFichaPrestacio.HYBarra2AlInsertar(Sender: TObject);
begin
    pPrestaMetge.Titulo         := ' Inserció d''usuaris assignables com a coordinadors de la prestació ['+Tracs.fieldbyName('C_Prestacio').AsString+']';
    pPrestaMetge.SqlDic     [5] := ' where C_PRESTACIO = "'+Tracs.fieldbyName('C_Prestacio').AsString+'" )';
    pPrestaMetge.SqlDicTotal[5] := ' where C_PRESTACIO = "'+Tracs.fieldbyName('C_Prestacio').AsString+'" )';
    pPrestaMetge.ExecuteModal('','');
end;

procedure TwFichaPrestacio.HYBarra2AlBorrar(Sender: TObject);
begin
    BorraPresta.Titulo         := ' Supressió d''usuaris assignables com a coordinadors de la prestació ['+Tracs.fieldbyName('C_Prestacio').AsString+']';
    BorraPresta.SqlDic     [2] := ' where C_PRESTACIO = "'+Tracs.fieldbyName('C_Prestacio').AsString+'" ';
    BorraPresta.SqlDicTotal[2] := ' where C_PRESTACIO = "'+Tracs.fieldbyName('C_Prestacio').AsString+'" ';
    BorraPresta.ExecuteModal('','');
end;

procedure TwFichaPrestacio.pPrestaMetgeAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  i: Integer;
begin
   // trec el multiselect
//-   For i := 0 to Sender.Grid.SelectedRows.Count -1 do
//-   begin

//-       Sender.DS.Dataset.BookMark := Sender.Grid.SelectedRows[i];

       MetgePresta.Insert;

       MetgePresta.FieldbyName('C_Prestacio').AsString := Tracs.FieldByName('C_Prestacio').asString;
       MetgePresta.FieldbyName('Codi'       ).AsString := Datos.FieldByName('Codi').asString;

       MetgePresta.Post;

//-   end;

end;

procedure TwFichaPrestacio.BorraPrestaAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  i: Integer;
begin

   For i := 0 to Sender.Grid.SelectedRows.Count -1 do
   begin

       Sender.DS.Dataset.BookMark:=Sender.Grid.SelectedRows[i];

       try
         WaitOn('Suprimint prestacions de l''usuari...');
         EjecutaSQL(wData.Projecte.DataBaseName,
               ' delete from METGEPRESTA where C_PRESTACIO = "'+
                Tracs.FieldByName('C_Prestacio').asString +
               '" and CODI = "' + Datos.FieldByName('Codi').asString+'"');
       finally
         WaitOff;
       end;

   end;
   MetgePresta.Refresh;
end;

procedure TwFichaPrestacio.TracsAfterScroll(DataSet: TDataSet);
begin
     PanelDrets.Refresh;
     PanelComp.Refresh;
end;

procedure TwFichaPrestacio.sbCopyClick(Sender: TObject);
begin
  CenterInClient(mgcCopy);
  mgcCopy.Show;
end;

procedure TwFichaPrestacio.sbCancelClick(Sender: TObject);
begin
  mgcCopy.Hide;
end;

procedure TwFichaPrestacio.sbDesaClick(Sender: TObject);
begin
  if eCodi.Text = '' then FerError('És obligatori indicar el codi de prestació. ',True)
  else begin
      // primer comprovem que no existeix la prestació
      if GutSelect('select count(*) from PRESTACION where c_prestacio=%s', [eCodi.Text]) > 0 then FerError(Format('La prestació %s ja existeix',[eCodi.Text]),True);

      // insert a PRESTACION
      TRY    GutExecute('INSERT INTO PRESTACION(C_PRESTACIO, N_PRESTACIO, N_PRESTACIO2, RESUM, FACTURAR, TIPUS, CODIFACTURACIO, DESCRIPCIOSCS, ESEASE, PLANTA, SUBGRUP, NOSCS, CENTRE) '+
                        'SELECT "%s", "%s", "%s", "%s", FACTURAR, TIPUS, CODIFACTURACIO, DESCRIPCIOSCS, ESEASE, PLANTA, SUBGRUP, NOSCS, CENTRE FROM PRESTACION WHERE C_PRESTACIO="%s"  ',
                        [eCodi.Text, eDescripcio.Text, eDescripcio2.Text, eResum.Text, cCodiOrigen.AsString]);
      EXCEPT on e:Exception
             do ShowMessage('Error al insertar PRESTACION: ' + e.Message);
      END;

      // insert a DRETSPRESTA
      TRY GutExecute('INSERT INTO DRETSPRESTA (C_DRET, C_PRESTACIO) '+
                     'SELECT C_DRET, "%s" FROM DRETSPRESTA WHERE C_PRESTACIO = %s',
                     [eCodi.Text, cCodiOrigen.AsString]);

      EXCEPT on e:Exception
             do ShowMessage('Error al insertar DRETSPRESTA: ' + e.Message);
      END;

      // insert a PRESTACODICAMPS
      TRY GutExecute('INSERT INTO PRESTACODICAMPS(C_PRESTACIO, TIPUSCODI, C_CODI)                '+
                     'SELECT "%s", TIPUSCODI, C_CODI FROM PRESTACODICAMPS WHERE C_PRESTACIO="%s" ',
                     [eCodi.Text, cCodiOrigen.AsString]);
      EXCEPT on e:Exception
             do ShowMessage('Error al insertar PRESTACODICAMPS: ' + e.Message);
      END;

  end;

  ShowMessage(Format('Prestació "%s" creada correctament.', [eDescripcio.Text]));
  mgcCopy.Hide;
end;

procedure TwFichaPrestacio.cPrestaAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
  cCodiOrigen.AsString := Datos.FieldbyName('C_PRESTACIO').AsString;
  lDescripcioOrigen.Caption := Datos.FieldbyName('N_PRESTACIO').AsString;
end;

procedure TwFichaPrestacio.ObreConsultaPrestacio(Sender: TObject);
begin
  cPresta.ExecuteModal('','');
end;


procedure TwFichaPrestacio.HYGrid4AlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
begin
    ColorFont := clBlack;
    ColorBrush := clWhite;

    if (Tracs.FieldByName('Tipus').AsInteger < 0) then ColorFont := clRed;
    if (gdSelected in State) then ColorBrush := clYellow;
end;

procedure TwFichaPrestacio.CheckBox1Click(Sender: TObject);
begin
    bPrestaCodiCamps.Filtered := False;
    bPrestaCodiCamps.Filtered := True;
end;

procedure TwFichaPrestacio.bPrestaCodiCampsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
var
    ordre: variant;
begin
    Accept := True;
    if (assigned(checkbox1) and CheckBox1.Checked) then
    begin
        ordre := GutSelect('SELECT ordre FROM codicamps WHERE TIPUSCODI = "%s" AND C_CODI = %s',[bPrestaCodiCamps_TipusCodi.AsString,bPrestaCodiCamps_C_Codi.AsString]);
        if VarIsNull(ordre) or VarIsEmpty(ordre) then ordre := 0;
        Accept := ordre >= 0;
    end;
end;

procedure TwFichaPrestacio.HYGrid3AlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
begin
    if datos.fieldbyname('Codi_Ordre').AsInteger < 0 then ColorFont := clSilver;
end;

end.



