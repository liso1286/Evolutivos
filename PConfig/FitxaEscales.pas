unit FitxaEscales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, HYSql, ExtCtrls, HYEdit, HYPanels, ComCtrls, StdCtrls,
  DBCtrls, Grids, DBGrids, HYGrids, HYLabel, HYDialogConsulta, Buttons, Variants,
  Mask;

type
  TwFitxaEscales = class(TForm)
    EscalesCap: THYSqlBrowse;
    EscalesLin: THYSqlBrowse;
    dsC: TDataSource;
    dsL: TDataSource;
    EscalesLin_C_Item: TIntegerField;
    qryBusca: TQuery;
    dsBusca: TDataSource;
    EscalesLin_Clau: TIntegerField;
    EscalesLin_D_Item: TStringField;
    EscalesCap_Clau: TIntegerField;
    EscalesCap_C_Escala: TIntegerField;
    EscalesCap_C_Tractament: TIntegerField;
    EscalesCap_C_Historia: TIntegerField;
    EscalesCap_Data: TDateTimeField;
    EscalesCap_C_Usuari: TStringField;
    EscalesCap_C_Entrada: TIntegerField;
    EscalesCap_Anulat: TStringField;
    EscalesCap_Data_Anulat: TDateTimeField;
    EscalesCap_C_Validador: TStringField;
    EscalesCap_Data_Validat: TDateTimeField;
    PanelEsc: TPanel;
    Splitter2: TSplitter;
    PanelBusca: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    HYGrid1: THYGrid;
    HYBarra3: THYBarra;
    Panel3: TPanel;
    HYBarra1: THYBarra;
    HYArea1: THYArea;
    Label1: TLabel;
    Ed_EscalesCap_Clau: THYEdit;
    Ed_EscalesCap_C_Tractament: THYEdit;
    Ed_EscalesCap_C_Historia: THYEdit;
    Ed_EscalesCap_Data: THYEdit;
    Ed_EscalesCap_C_Usuari: THYEdit;
    Ed_EscalesCap_C_Entrada: THYEdit;
    Ed_EscalesCap_C_Escala: THYEdit;
    Eti_EscalesCap_escales_R_Escala: THYEdit;
    edAnulat: THYEdit;
    edDataAnulat: THYEdit;
    edValidador: THYEdit;
    edDataValidat: THYEdit;
    Eti_EscalesCap_Usuari_Metge: THYEdit;
    Eti_EscalesCap_validador_Metge: THYEdit;
    edNAnulat: TEdit;
    Panel4: TPanel;
    TabsFiltre: TPageControl;
    TabList: TTabSheet;
    DBGrid1: TDBGrid;
    TabFiltre: TTabSheet;
    fHistoria: THYEditFiltro;
    fEscala: THYEditFiltro;
    Panel5: TPanel;
    AplicarFiltre: TButton;
    Netejar: TButton;
    tottot: TButton;
    fClau: THYEditFiltro;
    Panel6: TPanel;
    fData: THYEditFiltro;
    fUsuari: THYEditFiltro;
    fEntrada: THYEditFiltro;
    fGrup: THYEditFiltro;
    fEstat: THYEditFiltro;
    fValidador: THYEditFiltro;
    fDataValidat: THYEditFiltro;
    fDataAnulat: THYEditFiltro;
    TabSql: TTabSheet;
    MemoSql: TMemo;
    Panel7: TPanel;
    bAplicaSql: TButton;
    Panel2: TPanel;
    Ultima: TEdit;
    EscalesCap_Tipus: TStringField;
    Ed_EscalesCap_Tipus: THYEdit;
    Label2: TLabel;
    EscalesLin_C0_0: TIntegerField;
    EscalesLin_C0_1: TStringField;
    EscalesLin_C0_2: TSmallintField;
    EscalesLin_C0_3: TIntegerField;
    EscalesLin_C0_4: TStringField;
    EscalesLin_C0_5: TSmallintField;
    EscalesCap_Data_Adm: TDateTimeField;
    EscalesCap_C0_0: TIntegerField;
    EscalesCap_C0_1: TStringField;
    EscalesCap_C0_2: TStringField;
    EscalesCap_C0_3: TSmallintField;
    EscalesCap_C0_4: TStringField;
    EscalesCap_C1_0: TIntegerField;
    EscalesCap_C1_1: TIntegerField;
    EscalesCap_C1_2: TStringField;
    EscalesCap_C1_3: TDateTimeField;
    EscalesCap_C1_4: TDateTimeField;
    EscalesCap_C1_5: TDateTimeField;
    EscalesCap_C1_6: TStringField;
    EscalesCap_C1_7: TStringField;
    EscalesCap_C1_8: TStringField;
    EscalesCap_C1_9: TFloatField;
    EscalesCap_C1_10: TStringField;
    EscalesCap_C1_11: TStringField;
    EscalesCap_C1_12: TStringField;
    EscalesCap_C1_13: TStringField;
    EscalesCap_C1_14: TSmallintField;
    EscalesCap_C1_15: TSmallintField;
    EscalesCap_C1_16: TSmallintField;
    EscalesCap_C1_17: TStringField;
    EscalesCap_C1_18: TStringField;
    EscalesCap_C1_19: TStringField;
    EscalesCap_C1_20: TIntegerField;
    EscalesCap_C1_21: TStringField;
    EscalesCap_C1_22: TStringField;
    EscalesCap_C1_23: TStringField;
    EscalesCap_C1_24: TStringField;
    EscalesCap_C1_25: TStringField;
    EscalesCap_C1_26: TStringField;
    EscalesCap_C1_27: TStringField;
    EscalesCap_C1_28: TDateTimeField;
    EscalesCap_C1_29: TIntegerField;
    EscalesCap_C2_0: TStringField;
    EscalesCap_C2_1: TStringField;
    EscalesCap_C2_2: TStringField;
    EscalesCap_C2_3: TStringField;
    EscalesCap_C2_4: TStringField;
    EscalesCap_C2_5: TStringField;
    EscalesCap_C2_6: TStringField;
    EscalesCap_C2_7: TIntegerField;
    EscalesCap_C2_8: TStringField;
    EscalesCap_C2_9: TStringField;
    EscalesCap_C2_10: TSmallintField;
    EscalesCap_C2_11: TStringField;
    EscalesCap_C2_12: TStringField;
    EscalesCap_C2_13: TStringField;
    EscalesCap_C2_14: TStringField;
    EscalesCap_C2_15: TStringField;
    EscalesCap_C2_16: TIntegerField;
    EscalesCap_C2_17: TDateTimeField;
    EscalesCap_C3_0: TStringField;
    EscalesCap_C3_1: TStringField;
    EscalesCap_C3_2: TStringField;
    EscalesCap_C3_3: TStringField;
    EscalesCap_C3_4: TStringField;
    EscalesCap_C3_5: TStringField;
    EscalesCap_C3_6: TStringField;
    EscalesCap_C3_7: TIntegerField;
    EscalesCap_C3_8: TStringField;
    EscalesCap_C3_9: TStringField;
    EscalesCap_C3_10: TSmallintField;
    EscalesCap_C3_11: TStringField;
    EscalesCap_C3_12: TStringField;
    EscalesCap_C3_13: TStringField;
    EscalesCap_C3_14: TStringField;
    EscalesCap_C3_15: TStringField;
    EscalesCap_C3_16: TIntegerField;
    EscalesCap_C3_17: TDateTimeField;
    Ed_EscalesCap_Data_Adm: THYEdit;
    procedure FormCreate(Sender: TObject);

    procedure AplicarFiltreClick(Sender: TObject);
    procedure NetejarClick(Sender: TObject);
    procedure tottotClick(Sender: TObject);
    procedure bAplicaSqlClick(Sender: TObject);
    procedure EscalesCapAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean; NombreConsulta: String; var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure EscalesCapAfterScroll(DataSet: TDataSet);
    procedure EscalesLinAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean; NombreConsulta: String; var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
  end;

var
  wFitxaEscales: TwFitxaEscales;

implementation

uses Funciones, DataCurs, Data, DataBasics, DataEscales;

{$R *.DFM}

procedure TwFitxaEscales.FormCreate(Sender: TObject);
begin
  Ultima.Text := GutSelect('select GEN_ID(G_ESCALESCAP,0) from RDB$GENERATORS where RDB$GENERATOR_NAME = "G_ESCALESCAP"', []);
  AplicarFiltre.Click;
end;


// Obro i tanco querys i browses.
procedure TwFitxaEscales.bAplicaSqlClick(Sender: TObject);
begin
  EscalesLin.Close;
  EscalesCap.Close;
  QryBusca.Close;
  QryBusca.SQL.Assign(MemoSql.Lines);
  qryBusca.DisableControls;
  EscalesCap.DisableControls;
  EscalesLin.DisableControls;
  QryBusca.Open;
  EscalesCap.Open;
  EscalesLin.Open;
  EscalesCap.EnableControls;
  EscalesLin.EnableControls;
  qryBusca.EnableControls;
  TabsFiltre.ActivePage := TabList;
end;


// Aplicar filtres: modifico el MemoSql amb els filtres entrats, i crido AplicaSql.
procedure TwFitxaEscales.AplicarFiltreClick(Sender: TObject);
begin
  MemoSql.Clear;
  MemoSql.Lines.Add('select C.CLAU as P0, E.R_ESCALA, C.C_TRACTAMENT, C.C_HISTORIA, C.DATA, T.C_PRESTACIO');
  MemoSql.Lines.Add('from ESCALESCAP C, ESCALES E, TRACTAMENTS T');
  MemoSql.Lines.Add('where C.C_ESCALA = E.C_ESCALA');
  MemoSql.Lines.Add('and C.C_TRACTAMENT = T.C_TRACTAMENT');

  if (fClau.HayFiltro) or (fEscala.HayFiltro) or (fHistoria.HayFiltro) or (fData.HayFiltro) or (fDataValidat.HayFiltro) or (fDataAnulat.HayFiltro)
  or (fGrup.HayFiltro) or (fUsuari.HayFiltro) or (fEntrada.HayFiltro)  or (fValidador.HayFiltro) or (fEstat.HayFiltro) then
  begin
    if fClau.HayFiltro        then MemoSql.Lines.Add(fClau.FiltroAnd);
    if fEscala.HayFiltro      then MemoSql.Lines.Add(fEscala.FiltroAnd);
    if fHistoria.HayFiltro    then MemoSql.Lines.Add(fHistoria.FiltroAnd);
    if fData.HayFiltro        then MemoSql.Lines.Add(fData.FiltroAnd);
    if fGrup.HayFiltro        then MemoSql.Lines.Add(fGrup.FiltroAnd);
    if fUsuari.HayFiltro      then MemoSql.Lines.Add(fUsuari.FiltroAnd);
    if fEntrada.HayFiltro     then MemoSql.Lines.Add(fEntrada.FiltroAnd);
    if fEstat.HayFiltro       then MemoSql.Lines.Add(fEstat.FiltroAnd);
    if fValidador.HayFiltro   then MemoSql.Lines.Add(fValidador.FiltroAnd);
    if fDataValidat.HayFiltro then MemoSql.Lines.Add(fDataValidat.FiltroAnd);
    if fDataAnulat.HayFiltro  then MemoSql.Lines.Add(fDataAnulat.FiltroAnd);
  end
  else MemoSql.Lines.Add('and C.CLAU >= -10 + ' + Ultima.Text);

  MemoSql.Lines.Add('ORDER BY C.DATA');
  bAplicaSql.Click;
end;


// Netejar filtres.
procedure TwFitxaEscales.NetejarClick(Sender: TObject);
begin
  fClau.Valor1 := '';
  fClau.Valor2 := '';
  fEscala.Valor1 := '';
  fEscala.Valor2 := '';
  fHistoria.Valor1 := '';
  fHistoria.Valor2 := '';
  fData.Valor1 := '';
  fData.Valor2 := '';
  fGrup.Valor1 := '';
  fGrup.Valor2 := '';
  fUsuari.Valor1 := '';
  fUsuari.Valor2 := '';
  fEntrada.Valor1 := '';
  fEntrada.Valor2 := '';
  fEstat.Valor1 := '';
  fEstat.Valor2 := '';
  fValidador.Valor1 := '';
  fValidador.Valor2 := '';
  fDataAnulat.Valor1 := '';
  fDataAnulat.Valor2 := '';
  fDataValidat.Valor1 := '';
  fDataValidat.Valor2 := '';
end;

// Llistar totes les escales (modifico el MemoSql i crido AplicaSql).
procedure TwFitxaEscales.tottotClick(Sender: TObject);
begin
  with MemoSql.Lines do
  begin
    Clear;
    Add('select C.CLAU as P0, E.R_ESCALA, C.C_TRACTAMENT, C.C_HISTORIA, C.DATA, T.C_PRESTACIO');
    Add('from ESCALESCAP C, ESCALES E, TRACTAMENTS T');
    Add('where C.C_ESCALA = E.C_ESCALA');
    Add('and C.C_TRACTAMENT = T.C_TRACTAMENT');
    Add('order by C.DATA');
  end;
  bAplicaSql.Click;
end;

// A EscalesCap, si consulten el camp "c_tractament", filtro només els tractaments de la història.
procedure TwFitxaEscales.EscalesCapAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean;
  NombreConsulta: String; var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
  Personalizada := False;
  if (UpperCase(NombreConsulta) = 'TRACTAMENTS') then
  begin
    SubFiltro := 'c_historia = ' + EscalesCap.FieldByName('C_HISTORIA').AsString;
  end;
end;



// Si l'escala és 21 (enquesta de psicologia), mostrem el panel dels ítems d'EscalesLin2 (observacions)
procedure TwFitxaEscales.EscalesCapAfterScroll(DataSet: TDataSet);
begin
  if (EscalesCap.FieldByName('ANULAT').AsString = 'S') then
  begin
    edAnulat.Eti      := 'Anul·lat';
    edNAnulat.Text    := 'Anul·lat';
    edValidador.Eti   := 'Metge valida';
    edDataValidat.Eti := 'Data validat';
  end

  else if (EscalesCap.FieldByName('ANULAT').AsString = 'N') then
  begin
    if EscalesCap.FieldByName('C_VALIDADOR').IsNull then
    begin
      edAnulat.Eti      := 'Anul·lat';
      edNAnulat.Text    := 'Vigent';
      edValidador.Eti   := 'Metge valida';
      edDataValidat.Eti := 'Data validat';
    end
    else begin
      edAnulat.Eti      := 'Estat';
      edNAnulat.Text    := 'Validat';
      edValidador.Eti   := 'Metge valida';
      edDataValidat.Eti := 'Data validat';
    end;
  end

  else if (EscalesCap.FieldByName('ANULAT').AsString = 'D') then
  begin
    edAnulat.Eti      := 'Estat';
    edNAnulat.Text    := 'Denegat';
    edValidador.Eti   := 'Metge denega';
    edDataValidat.Eti := 'Data denegat';
  end

  else if (EscalesCap.FieldByName('ANULAT').AsString = 'R') then
  begin
    edAnulat.Eti      := 'Estat';
    edNAnulat.Text    := 'Pendent de validar';
    edValidador.Eti   := 'Metge valida';
    edDataValidat.Eti := 'Data validat';
  end

  else if (EscalesCap.FieldByName('ANULAT').AsString = 'V') then
  begin
    edAnulat.Eti      := 'Estat';
    edNAnulat.Text    := 'No valorable';
    edValidador.Eti   := 'Metge valida';
    edDataValidat.Eti := 'Data validat';
  end;

end;


// A EscalesCap, filtro la consulta d'items, mostro només els ítems (no títols ni totals) de l'escala en curs.
procedure TwFitxaEscales.EscalesLinAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean;
  NombreConsulta: String; var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
   Personalizada := False;
   SubFiltro := 'c_escala = ' + EscalesCap.FieldByName('C_ESCALA').AsString + ' and tipus = 1';
end;





{-// Treiem una escala d'"escales pendents" i la posem com a "no procedeix".
procedure TwFitxaEscales.sbNoProcedClick(Sender: TObject);
begin
  if not AvisoNS('Segur que voleu treure l''escala de pendents?') then Exit;

  // Si no existerix a EscalesCap, l'insertem
  if (GutSelect('select count(*) from ESCALESCAP C join METGES M on C.C_USUARI= M.CODI ' +
                'join ESPECIAL E on M.C_ESPECIAL = E.C_ESPECIAL ' +
                'where C.C_ESCALA = %d and C.C_TRACTAMENT = %d and C.C_ENTRADA < 0 and E.C_AREA = "%s" ',
                [EscalesPendents.FieldByName('C_ESCALA').AsInteger,
                 EscalesPendents.FieldByName('C_TRACTAMENT').AsInteger,
                 EscalesPendents.FieldByName('C_AREA').AsString]) = 0)
  then
  begin
    EjecutaSQLFmt('Interna', 'insert into ESCALESCAP(C_ESCALA, C_TRACTAMENT, C_HISTORIA, DATA, C_USUARI, C_ENTRADA) ' +
                                'values (%d, %d, %d, "%s", "%s", %d)',
                                [EscalesPendents.FieldByName('C_ESCALA').AsInteger,
                                 EscalesPendents.FieldByName('C_TRACTAMENT').AsInteger,
                                 QryBusca1.FieldByName('C_HISTORIA').AsInteger,
                                 FormatDateTime('dd.mm.yyyy', Now),
                                 wData.UsuariActiu.Codi,
                                 -1]);
    end;
  // L'esborrem de pendents
  EscalesPendents.Delete;
  bAplicaSql1.Click;
end;


// Esborrem una escala. Si era "no procedeix", preguntem si es vol posar a "escales pendents".
procedure TwFitxaEscales.HYBarra1AlBorrar(Sender: TObject);
var
  area: String;
begin
  if (EscalesCap.FieldByName('C_ENTRADA').AsInteger < 0) then
  begin
    if AvisoSN('Voleu posar aquesta escala com a pendent d''entrar?') then
    begin
      TRY
        area := VarToStr(GutSelect('select E.C_AREA from ESPECIAL E join METGES M on E.C_ESPECIAL = M.C_ESPECIAL ' +
                                   'where M.CODI = "%s"', [EscalesCap.FieldByName('C_USUARI').AsString]));
      EXCEPT FerError(' * * AREA NO TROBADA * *' + #10#13 + '     AVISAR INFORMÀTICA!', True);
      END;
      if AvisoSN('Pendent a l''ingrés?') then   // -> pendent a l'ingrés
      begin
        TRY EjecutaSQLFmt('Interna',
                          'insert into ESCALESPENDENTS(C_TRACTAMENT, C_ESCALA, C_AREA, TIPUS) values(%d, %d, "%s", "%s")',
                          [EscalesCap.FieldByName('C_TRACTAMENT').AsInteger,
                           EscalesCap.FieldByName('C_ESCALA').AsInteger,
                           area,
                           'INGRÉS']);
        EXCEPT FerError(' * * NO S''HA POGUT INSERTAR A PENDENTS A L''INGRÉS * *' + #10#13 + '     AVISAR INFORMÀTICA!', True);
        END;
      end;
      if AvisoSN('Pendent a l''alta?') then     // -> pendent a l'alta
      begin
        TRY EjecutaSQLFmt('Interna',
                          'insert into ESCALESPENDENTS(C_TRACTAMENT, C_ESCALA, C_AREA, TIPUS) values(%d, %d, "%s", "%s")',
                          [EscalesCap.FieldByName('C_TRACTAMENT').AsInteger,
                           EscalesCap.FieldByName('C_ESCALA').AsInteger,
                           area,
                           'ALTA']);
        EXCEPT FerError(' * * NO S''HA POGUT INSERTAR A PENDENTS A L''ALTA * *' + #10#13 + '     AVISAR INFORMÀTICA!', True);
        END;
      end;
    end;
  end;

  EscalesCap.Delete;
  bAplicaSql.Click;
end;}


procedure TwFitxaEscales.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := EscalesCap.PuedeCerrar and EscalesLin.PuedeCerrar;
end;

procedure TwFitxaEscales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
