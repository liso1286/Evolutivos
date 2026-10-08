unit FitxaGestioCuesWB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, HYDialogConsulta, Buttons, Grids, DB, DBTables, HYSql,
  StdCtrls, DBCtrls, dbcgrids, HYEdit, JvExControls, JvButton,
  JvTransparentButton, kbmMemTable, BaseGrid, AdvGrid, DBGridEh;

type
  TwFitxaGestioCuesWB = class(TForm)
    Panel2: TPanel;
    qCua: THYSqlQuery;
    bSortir: TJvTransparentButton;
    dsCua: TDataSource;
    Panel1: TPanel;
    lOrdre: TLabel;
    cMetge: THYConsulta;
    Timer: TTimer;
    lActualitzacio: TLabel;
    bRefresh: TPanel;
    Panel4: TPanel;
    pCanviMetge: TPanel;
    bCrida: TJvTransparentButton;
    bInici: TJvTransparentButton;
    bFinalitza: TJvTransparentButton;
    Panel5: TPanel;
    Panel6: TPanel;
    lNomProfessional: TLabel;
    Panel3: TPanel;
    bAnulaCrida: TJvTransparentButton;
    qCuaC_TRACTAMENT: TIntegerField;
    qCuaC_HISTORIA: TIntegerField;
    qCuaNOMCOMPLET: TStringField;
    qCuaDATA_INGRES: TDateTimeField;
    qCuaPROGRAMAT: TStringField;
    qCuaARRIBADA: TStringField;
    qCuaACCIO: TStringField;
    qCuaIMPRESSORA: TStringField;
    qCuaDATA: TDateTimeField;
    qCuaLOCALITZADOR: TStringField;
    qCuaUBICACIO: TStringField;
    qCuaC_RESPOSTA: TStringField;
    qCuaN_RESPOSTA: TStringField;
    qCuaC_USUARI: TStringField;
    gCua: TDBGridEh;
    qCuaC_ACCIO: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bSortirClick(Sender: TObject);
    procedure qCuaAfterScroll(DataSet: TDataSet);
    procedure gCuaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure gCuaTitleClick(Column: TColumnEh);
    procedure cMetgeAlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cMetgeAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure TimerTimer(Sender: TObject);
    procedure bRefreshClick(Sender: TObject);
    procedure pCanviMetgeClick(Sender: TObject);
    procedure bActuacioClick(Sender: TObject);
    procedure qCuaAfterOpen(DataSet: TDataSet);
  private
    MetgeList: String;
    procedure RefrescaCua;
  public
  end;

var
  wFitxaGestioCuesWB: TwFitxaGestioCuesWB;

implementation

uses Data, FuncionsCues, Funciones;

{$R *.dfm}

procedure TwFitxaGestioCuesWB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TwFitxaGestioCuesWB.RefrescaCua;
begin
  qCua.Close;
  qCua.Open;
  lActualitzacio.Caption := 'Última actualització: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', NowServer);
end;

procedure TwFitxaGestioCuesWB.FormCreate(Sender: TObject);
begin
  qCua.Close;
  cMetge.ExecuteModal;
  gCua.Columns[8].Visible  := TeDretAcces([99]);
  gCua.Columns[9].Visible  := gCua.Columns[8].Visible;
  gCua.Columns[10].Visible := gCua.Columns[8].Visible;
  gCua.Columns[11].Visible := gCua.Columns[8].Visible;
  gCua.Columns[12].Visible := gCua.Columns[8].Visible;
end;

procedure TwFitxaGestioCuesWB.bSortirClick(Sender: TObject);
begin
  Close;
end;

procedure TwFitxaGestioCuesWB.qCuaAfterScroll(DataSet: TDataSet);
var
 Accio: Integer;
begin
  if TeDretAcces([156],False,False)
  or TeDretUsuari(wData.UsuariActiu.Codi,'M145,G145') then
  begin
      Accio := DataSet.FieldByName('C_ACCIO').AsInteger;
      bCrida.Enabled      := (Accio = 1) or (Accio = 9);  // només es podrà clicar si el pacient no ha estat cridat o la crida s'ha anul·lat
      bInici.Enabled      := (Accio = 2);                 // només es podrà clicar després d'haver cridat el pacient i no s'ha anul·lat la crida
      bFinalitza.Enabled  := (Accio = 2) or (Accio = 3);  // només es podrà clicar després d'haver cridat el pacient i no s'ha anul·lat la crida o si s'ha iniciat la visita
      bAnulaCrida.Enabled := bFinalitza.Enabled;          // es podrà cridar sempre que no s'hagi finalitzat la visita
  end
  else begin
      bCrida.Enabled      := False;
      bInici.Enabled      := False;
      bFinalitza.Enabled  := False;
      bAnulaCrida.Enabled := False;
  end;
end;

procedure TwFitxaGestioCuesWB.gCuaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  R: TRect;
begin
    R := Rect;

    gCua.Canvas.Font.Style := [];
    gCua.Canvas.Font.Color := clBlack;
    gCua.Canvas.Brush.Color := clWindow;

    case qCua.FieldByName('C_ACCIO').AsInteger of
    1: gCua.Canvas.Font.Color := clBlack;      // font blanc
    2: gCua.Canvas.Font.Color := clGreen;      // font verd
    3: gCua.Canvas.Font.Color := $0000DDDD;    // font groc      //clGreen      // font verd: --> l'inici es fa automàtic
    4: gCua.Canvas.Font.Color := clRed;        // font vermell
    9: gCua.Canvas.Font.Color := clGray;       // font gris
    end;

    if (gdSelected in State) then
    begin
        gCua.Canvas.Font.Style := [fsBold];
        gCua.Canvas.Font.Color := clWhite;
        gCua.Canvas.Brush.Color := $00917255;
    end;

    gCua.Canvas.FillRect(R);
    gCua.DefaultDrawColumnCell(R, DataCol, Column, State);
end;

procedure TwFitxaGestioCuesWB.gCuaTitleClick(Column: TColumnEh);
var
  ordre: String;
begin
  ordre := 'order by ' + Column.FieldName;
  lOrdre.Caption := 'Ordenat per ' + Column.Title.Caption;
  qCua.Close;
  qCua.SqlDic[2] := ordre;
  qCua.Open;
end;

procedure TwFitxaGestioCuesWB.cMetgeAlDespuesOpen(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
  (Sender as TxHYDialogConsulta).Left   := gCua.Left+100;
  (Sender as TxHYDialogConsulta).Top    := gCua.Top;
  (Sender as TxHYDialogConsulta).Height := gCua.Height;
  (Sender as TxHYDialogConsulta).Width  := gCua.Width-100;    
end;

procedure TwFitxaGestioCuesWB.cMetgeAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
  if Datos.FieldByName('c_coordinador').IsNull then bSortir.Click;

  MetgeList := Datos.FieldByName('c_coordinador').AsString;
  lNomProfessional.Caption := Datos.FieldByName('Nomsencer').AsString;
  qCua.Close;
  qCua.SqlDic[1] := Format('("%s")', [MetgeList]);
  qCua.Open;
  lOrdre.Caption := 'Ordenat per hora';
  lActualitzacio.Caption := 'Última actualització: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', NowServer);
end;

procedure TwFitxaGestioCuesWB.TimerTimer(Sender: TObject);
begin
  // com que les infermeres poden modificar la cua del metge al mateix temps que el metge, refresquem les dades
  RefrescaCua;
end;

procedure TwFitxaGestioCuesWB.bRefreshClick(Sender: TObject);
begin
  // per si es vol refrescar la cua de forma manual
  RefrescaCua;
end;

procedure TwFitxaGestioCuesWB.pCanviMetgeClick(Sender: TObject);
begin
  cMetge.ExecuteModal();
end;

procedure TwFitxaGestioCuesWB.bActuacioClick(Sender: TObject);
var
  cTractament: Integer;
  descripcio: String;
begin
  gCua.DataSource.DataSet.DisableControls;
  cTractament := gCua.DataSource.DataSet.FieldByName('C_TRACTAMENT').AsInteger;
  TRY
      descripcio := Actuacio(cTractament, (Sender as TJvTransparentButton).Tag);
//+      WaitON(desripcio);
//+      Sleep(1000);
  FINALLY
      RefrescaCua;
      qCua.Locate('c_tractament', cTractament, []);
      WaitOff;             // De quin WaitOn ve aquest WaitOff? (he afegit jo el waitOn de sobre //+)
      gCua.DataSource.DataSet.EnableControls;
  END;

  bCrida.Enabled      := (Sender as TJvTransparentButton).Tag = 2;      // es pot cridar si encara no s'ha cridat (o bé si s'ha anul·lat la crida)
  bInici.Enabled      := (Sender as TJvTransparentButton).Tag = 2;      // es pot iniciar si ja s'ha cridat (i no s'ha anul·lat la crida)
  bFinalitza.Enabled  := ((Sender as TJvTransparentButton).Tag = 2) or  // es pot finalitzar si s'ha cridat ("), tant si s'ha iniciat la visita com si no
                         ((Sender as TJvTransparentButton).Tag = 3);
  bAnulaCrida.Enabled := bFinalitza.Enabled;                            // es pot anul·lar sempre que no s'hagi finalitzat la visita

  // if (Sender as TJvTransparentButton).Tag = 2 then bInici.Click; // fem l'inici de forma automàtica
end;

procedure TwFitxaGestioCuesWB.qCuaAfterOpen(DataSet: TDataSet);
begin
  if (qCua.RecordCount = 0) then
  begin
      bCrida.Enabled := False;
      bInici.Enabled := False;
      bFinalitza.Enabled := False;
  end;
end;

end.
