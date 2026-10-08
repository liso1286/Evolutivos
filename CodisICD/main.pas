unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, HYDialogConsulta, DBGrids, Grids, DBTables, DB,
  Halcn6DB, HYGrids, HYSql, StdCtrls, Buttons, Menus, ToolWin, ComCtrls,
  TaskBar, Mask, DBCtrls;

type
  TwMain = class(TForm)
    MainMenu1: TMainMenu;
    Codis1: TMenuItem;
    Diagnstics1: TMenuItem;
    Procediments1: TMenuItem;
    CausesExternes1: TMenuItem;
    Neoplsies1: TMenuItem;
    Gesti1: TMenuItem;
    Sortir1: TMenuItem;
    OmplirTaula1: TMenuItem;
    Codisantics1: TMenuItem;
    CODISICD: THalcyonDataSet;
    dsCodisICD: TDataSource;
    qInsert: TQuery;
    TaskBar1: TTaskBar;
    ots1: TMenuItem;
    Sinonims: TMenuItem;
    OmplirIDIAGINES1: TMenuItem;
    Posarpunts1: TMenuItem;
    ActualitzarCODIICD1: TMenuItem;
    CompararICDCODISiCODIICD1: TMenuItem;
    log: TMemo;
    LiteralsCODIICD1: TMenuItem;
    CIM9MC: THalcyonDataSet;
    qLiterals: TQuery;
    Accents1: TMenuItem;
    qAfegir: TQuery;
    Passarasinnim11: TMenuItem;
    qParaules: TQuery;
    qResum: TQuery;
    OmplirResumiEtiqueta1: TMenuItem;
    lProves: TLabel;
    Literalscastell1: TMenuItem;
    ICD_E: THalcyonDataSet;
    NeuroTrauma1: TMenuItem;
    ValidaTIPUS1: TMenuItem;
    Manteniment1: TMenuItem;
    Diagnstics2: TMenuItem;
    Procediments2: TMenuItem;
    CausesExternes2: TMenuItem;
    SubcodisICD1: TMenuItem;
    UPDCIMD: THalcyonDataSet;
    N1: TMenuItem;
    ActualitzarCIMDCODIICD1: TMenuItem;
    qInsCIM: TQuery;
    qInsSINONIM: TQuery;
    AccentsCIMCODIICD1: TMenuItem;
    qUpdCIM: TQuery;
    HYGrid1: THYGrid;
    dsUPDCIMD: TDataSource;
    ActualitzarCIMPCODIICD1: TMenuItem;
    dsUPDCIMP: TDataSource;
    UPDCIMP: THalcyonDataSet;
    Corregirpuntcausesexternes1: TMenuItem;
    UPDCIMDCAMPO1: TStringField;
    UPDCIMDCAMPO4: TStringField;
    UPDCIMDCAMPO5: TStringField;
    UPDCIMDCAMPO6: TStringField;
    UPDCIMDCAMPO7: TStringField;
    UPDCIMDCAMPO8: TStringField;
    UPDCIMDCAMPO15: TStringField;
    UPDCIMPCAMPO1: TStringField;
    UPDCIMPCAMPO4: TStringField;
    UPDCIMPCAMPO5: TStringField;
    UPDCIMPCAMPO6: TStringField;
    UPDCIMPCAMPO7: TStringField;
    UPDCIMPCAMPO8: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sortir1Click(Sender: TObject);
    procedure Diagnstics1Click(Sender: TObject);
    procedure Codisantics1Click(Sender: TObject);
    procedure OmplirTaula1Click(Sender: TObject);
    procedure Procediments1Click(Sender: TObject);
    procedure CausesExternes1Click(Sender: TObject);
    procedure Neoplsies1Click(Sender: TObject);
    procedure ots1Click(Sender: TObject);
    procedure SinonimsClick(Sender: TObject);
    procedure OmplirIDIAGINES1Click(Sender: TObject);
    procedure Posarpunts1Click(Sender: TObject);
    procedure ActualitzarCODIICD1Click(Sender: TObject);
    procedure CompararICDCODISiCODIICD1Click(Sender: TObject);
    procedure LiteralsCODIICD1Click(Sender: TObject);
    procedure Accents1Click(Sender: TObject);
    function AfegirParaulesClau(clau:integer; sinonim, paraules:string): integer;
    procedure Passarasinnim11Click(Sender: TObject);
    function AcumulaParaules(cicd,sicd,paraules:String;ordre:integer):integer;
    procedure OmplirResumiEtiqueta1Click(Sender: TObject);
    procedure Literalscastell1Click(Sender: TObject);
    procedure NeuroTrauma1Click(Sender: TObject);
    procedure ValidaTIPUS1Click(Sender: TObject);
    procedure Diagnstics2Click(Sender: TObject);
    procedure Procediments2Click(Sender: TObject);
    procedure CausesExternes2Click(Sender: TObject);
    procedure SubcodisICD1Click(Sender: TObject);
    procedure ActualitzarCIMDCODIICD1Click(Sender: TObject);
    procedure AccentsCIMCODIICD1Click(Sender: TObject);
    procedure ActualitzarCIMPCODIICD1Click(Sender: TObject);
    procedure Corregirpuntcausesexternes1Click(Sender: TObject);
  private
    function TreuAccents(paraules:String):String;
    function adaptaData(data: String): String;
    function TipusNoOk(codi,tipus:string): Boolean;
    Function OnEstaElPunt(codi: string): integer;
  public
    { Public declarations }
  end;

var
  wMain: TwMain;

implementation

uses CodiICD, ICDCodis, Funciones, Datahola, Sinonims, Funcions, MantDiag, MantProc, MantCE, MantSub;

{$R *.dfm}

procedure TwMain.FormCreate(Sender: TObject);
begin
  Gesti1.Visible := TeDretAcces([100]);       // només visible per dret A100
  Manteniment1.Visible := TeDretAcces([100]);
  lProves.Visible := wDataHola.ES_PROVA;
end;

procedure TwMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TwMain.Sortir1Click(Sender: TObject);
begin
  Close;
end;

procedure TwMain.Diagnstics1Click(Sender: TObject);
begin
  log.Visible := False;
  with TwICDCodis.Create(Application) do
  begin
      Caption := 'DIAGNÒSTICS';
      pICD.SqlDic[1]:= 'where t_diag = "D"';
      pICD.SqlDicTotal[1]:= 'where t_diag = "D"';
      Iniciar;
  end;
end;

procedure TwMain.Codisantics1Click(Sender: TObject);
begin
  log.Visible := False;
  with TwCodiICD.Create(Application) do
  begin
      primer_cop_pinta_grid := True;
      Iniciar;
  end;
end;

function TwMain.adaptaData(data: String): String;
begin
    // mes/dia/any
    Result:=Copy(data,5,2)+'/'+CopyRight(data,2)+'/'+CopyLeft(data,4);
end;

procedure TwMain.OmplirTaula1Click(Sender: TObject);
var
  i: integer;
  nicdllarg,nicdllarg2: array[0..120] of char;
  nicdcurt,nicdcurt2:   array[0..60] of char;
  dagrupaci,dagrupaci2: array[0..100] of char;
  etiqueta, etiqueta2:  array[0..24] of char;
begin
  log.Visible := False;
  if AvisoSN('Estàs segur de buidar la taula i tornar-la a omplir (S/N)?') then
  begin
    // primer esborrem la taula actual per a no repetir registres (petaria per índex)
    HolaExecute('delete from icdcodis',[]);

    Waiton('Omplint la taula.');

    i:=0;
    CODISICD.Close;
    CODISICD.Open;
    while not CODISICD.eof do
    begin
        with qInsert do
        begin
            parambyname('c_tipus').asstring := CODISICD.Fieldbyname('c_tipus').AsString;

            if CODISICD.Fieldbyname('dataini').IsNull then parambyname('dataini').Clear
            else parambyname('dataini').AsString := adaptaData(CODISICD.Fieldbyname('dataini').AsString);

            parambyname('c_icd').asstring := CODISICD.Fieldbyname('c_icd').AsString;
            parambyname('c_icd2').asstring := PosarPunt(CODISICD.Fieldbyname('c_icd').AsString,CODISICD.Fieldbyname('t_diag').AsString);

            if CODISICD.Fieldbyname('datafi').IsNull then parambyname('datafi').Clear
            else parambyname('datafi').AsString := adaptaData(CODISICD.Fieldbyname('datafi').AsString);

            parambyname('t_diag').asstring := CODISICD.Fieldbyname('t_diag').AsString;

//            parambyname('n_icd_llarg').asstring := CODISICD.Fieldbyname('n_icd_llar').AsString;
            StrPCopy(nicdllarg,CODISICD.Fieldbyname('n_icd_llar').AsString);
            OemToAnsi(nicdllarg,nicdllarg2);
            parambyname('n_icd_llarg').asstring := nicdllarg2;

            parambyname('i_diagsec').asstring := CODISICD.Fieldbyname('i_diagsec').AsString;
            parambyname('i_diagines').asstring := CODISICD.Fieldbyname('i_diagines').AsString;
            parambyname('i_cexg').asstring := CODISICD.Fieldbyname('i_cexg').AsString;
            parambyname('i_cex').asstring := CODISICD.Fieldbyname('i_cex').AsString;
            parambyname('i_cin').asstring := CODISICD.Fieldbyname('i_cin').AsString;
            parambyname('i_diagadd').asstring := CODISICD.Fieldbyname('i_diagadd').AsString;
            parambyname('i_subadd').asstring := CODISICD.Fieldbyname('i_subadd').AsString;
            parambyname('i_perinata').asstring := CODISICD.Fieldbyname('i_perinata').AsString;

            if CODISICD.Fieldbyname('dataalta').IsNull then parambyname('dataalta').Clear
            else parambyname('dataalta').asstring := adaptaData(CODISICD.Fieldbyname('dataalta').AsString);

//            parambyname('n_icd_curt').asstring := CODISICD.Fieldbyname('n_icd_curt').AsString;
            StrPCopy(nicdcurt,CODISICD.Fieldbyname('n_icd_curt').AsString);
            OemToAnsi(nicdcurt,nicdcurt2);
            parambyname('n_icd_curt').asstring := nicdcurt2;

            parambyname('gg_diag').asstring := CODISICD.Fieldbyname('gg_diag').AsString;
            parambyname('gg_proc').asstring := CODISICD.Fieldbyname('gg_proc').AsString;
            parambyname('causa_ex').asstring := CODISICD.Fieldbyname('causa_ex').AsString;
            parambyname('edat_incon').asstring := CODISICD.Fieldbyname('edat_incon').AsString;
            parambyname('lim_edat_s').asstring := CODISICD.Fieldbyname('lim_edat_s').AsString;
            parambyname('lim_edat_i').asstring := CODISICD.Fieldbyname('lim_edat_i').AsString;
            parambyname('sexe').asstring := CODISICD.Fieldbyname('sexe').AsString;
            parambyname('proc_mq').asstring := CODISICD.Fieldbyname('proc_mq').AsString;
            parambyname('proc_rell').asstring := CODISICD.Fieldbyname('proc_rell').AsString;

            if CODISICD.Fieldbyname('datarevi').IsNull then parambyname('datarevi').Clear
            else parambyname('datarevi').asstring := adaptaData(CODISICD.Fieldbyname('datarevi').AsString);

//            parambyname('etiqueta').asstring := CODISICD.Fieldbyname('etiqueta').AsString;
            StrPCopy(etiqueta,CODISICD.Fieldbyname('etiqueta').AsString);
            OemToAnsi(etiqueta,etiqueta2);
            parambyname('etiqueta').asstring := etiqueta2;

            parambyname('a_diag').asstring := CODISICD.Fieldbyname('a_diag').AsString;
//            parambyname('d_agrupaci').asstring := CODISICD.Fieldbyname('d_agrupaci').AsString;
            StrPCopy(dagrupaci,CODISICD.Fieldbyname('d_agrupaci').AsString);
            OemToAnsi(dagrupaci,dagrupaci2);
            parambyname('d_agrupaci').asstring := dagrupaci2;

            parambyname('t_agr').asstring := CODISICD.Fieldbyname('t_agr').AsString;
            parambyname('d_t_agr').asstring := CODISICD.Fieldbyname('d_t_agr').AsString;
            parambyname('lliure').asstring := CODISICD.Fieldbyname('lliure').AsString;
            ExecSQL;
            i:=i+1;
        end;
        CODISICD.Next;
    end;
    CODISICD.Close;
    WaitOff;
    ShowMessage(Format('Traspassats %d codis ICD.',[i]));
  end;
end;

procedure TwMain.Procediments1Click(Sender: TObject);
begin
  log.Visible := False;
  with TwICDCodis.Create(Application) do
  begin
      Caption := 'PROCEDIMENTS';
      pICD.SqlDic[1]:= 'where t_diag = "P"';
      pICD.SqlDicTotal[1]:= 'where t_diag = "P"';
      Iniciar;
  end;
end;

procedure TwMain.CausesExternes1Click(Sender: TObject);
begin
  log.Visible := False;
  with TwICDCodis.Create(Application) do
  begin
      Caption := 'CAUSES EXTERNES';
      pICD.SqlDic[1]:= 'where t_diag = "E"';
      pICD.SqlDicTotal[1]:= 'where t_diag = "E"';
      Iniciar;
  end;
end;

procedure TwMain.Neoplsies1Click(Sender: TObject);
begin
  log.Visible := False;
  with TwICDCodis.Create(Application) do
  begin
      Caption := 'NEOPLÀSIES';
      pICD.SqlDic[1]:= 'where t_diag = "M"';
      pICD.SqlDicTotal[1]:= 'where t_diag = "M"';
      Iniciar;
  end;
end;

procedure TwMain.ots1Click(Sender: TObject);
begin
  log.Visible := False;
  with TwICDCodis.Create(Application) do
  begin
      Caption := 'TOTS';
      pICD.SqlDic[1]:= ''; pICD.SqlDic[2] := '[FILTRO]';
      pICD.SqlDicTotal[1]:= ''; pICD.SqlDicTotal[2] := '[FILTRO]';
      Iniciar;
  end;
end;

procedure TwMain.SinonimsClick(Sender: TObject);
begin
  log.Visible := False;
  with TwSinonims.Create(Application) do Show;
end;

procedure TwMain.OmplirIDIAGINES1Click(Sender: TObject);
var
  qHola: TQuery;
  i: integer;
begin
  log.Visible := False;
  i:=0;
  WaitOn('Traspassant indicadors de diagnòstic inespecífic ...');

  qHola := TQuery.Create(Application);
  qHola.DatabaseName := 'InternaHola';
  qHola.SQL.Text := 'select c_icd2 from icdcodis where i_diagines ="S"';
  qHola.Open;

  while not qHola.Eof do
  begin
      GutExecute('update codiicd set i_diagines = "S" where c_icd = "%s"',[qHola.FieldByName('c_icd2').asstring]);
      qHola.Next;
      i:=i+1;
  end;

  qHola.Close;
  qHola.Free;
  WaitOff;
  ShowMessage(Format('Traspassats %d indicadors "S".',[i]));
end;

procedure TwMain.Posarpunts1Click(Sender: TObject);
var
  qHola: TQuery;
  aux: string;
  i: integer;
begin
  log.Visible := False;
  i:=0;
  WaitOn('Posant punts als codis de diagnòstic ...');

  qHola := TQuery.Create(Application);
  qHola.DatabaseName := 'InternaHola';
  qHola.SQL.Text := 'select c_icd, t_diag from icdcodis order by c_icd, t_diag';
  qHola.Open;

  while not qHola.eof do
  begin
      aux:=PosarPunt(qHola.FieldByName('c_icd').asstring,qHola.FieldByName('t_diag').asstring);
      HolaExecute('update icdcodis set c_icd2 = "%s" where c_icd = "%S" and t_diag = "%S"',
                  [aux,qHola.FieldByName('c_icd').asstring,qHola.FieldByName('t_diag').asstring]);
      qHola.Next;
      i:=i+1;
  end;

  WaitOff;
  ShowMessage(format('Actualitzats %d codis.',[i]));
  qHola.Free;
end;

procedure TwMain.ActualitzarCODIICD1Click(Sender: TObject);
var
  qHola: TQuery;
  i: integer;
begin
  log.Visible := False;
  i:=0;
  WaitOn('Actualitzant CODIICD a partir de ICDCODIS ...');

  // les neoplàsies no les traspassem
  qHola := TQuery.Create(Application);
  qHola.DatabaseName := 'InternaHola';
  qHola.SQL.Text := 'select c_icd2, n_icd_llarg, i_diagines from icdcodis where t_diag <> "M" order by c_icd';
  qHola.Open;

  while not qHola.eof do
  begin
      // els que no tenim, els afegim
      if (GutSelect('select count(*) from codiicd where c_icd = "%s"',[qHola.FieldByName('c_icd2').asstring]) = 0)
      then begin
          GutExecute('insert into codiicd (c_icd,n_icd,baixa,i_diagines) values("%s","%s","N","%s")',
                     [qHola.FieldByName('c_icd2').asstring,qHola.FieldByName('n_icd_llarg').asstring,qHola.FieldByName('i_diagines').asstring]);
          i:=i+1;
      end;
      qHola.Next;
  end;

  WaitOff;
  ShowMessage(format('Actualitzats %d codis.',[i]));
  qHola.Free;
end;

procedure TwMain.CompararICDCODISiCODIICD1Click(Sender: TObject);
var
  qHola, qGutt: TQuery;
begin
  WaitOn('Comparant ICDCODIS amb CODIICD ...');
  log.Lines.Clear;
  log.Visible := True;

  qHola := TQuery.Create(Application);
  qHola.DatabaseName := 'InternaHola';
  qHola.SQL.Text := 'select c_icd2 from icdcodis where t_diag <> "M" order by c_icd2';
  qHola.Open;

  qGutt := TQuery.Create(Application);
  qGutt.DatabaseName := 'Interna';
  qGutt.SQL.Text := 'select c_icd from codiicd where baixa = "N" order by c_icd';
  qGutt.Open;

  while ((not qHola.Eof) and (not qGutt.Eof)) do
  begin
      if (qHola.FieldByName('c_icd2').AsString < qGutt.FieldByName('c_icd').AsString)
      then begin
          log.lines.Add('ERROR 1: Codi: '+qHola.FieldByName('c_icd2').AsString+' està a Hola i no a Gutt.');
          qHola.Next;
      end
      else if (qHola.FieldByName('c_icd2').AsString > qGutt.FieldByName('c_icd').AsString)
           then begin
               log.lines.Add('ERROR 2: Codi: '+qGutt.FieldByName('c_icd').AsString+' està a Gutt i no a Hola.');
               qGutt.Next;
           end
           else begin
               qHola.Next;
               qGutt.Next;
           end;
  end;

  if qHola.eof then
  begin
      while not qGutt.Eof do
      begin
          log.lines.Add('ERROR 2: Codi: '+qGutt.FieldByName('c_icd').AsString+' està a Gutt i no a Hola.');
          qGutt.Next;
      end;
  end
  else begin
      while not qHola.Eof do
      begin
          log.lines.Add('ERROR 1: Codi: '+qHola.FieldByName('c_icd2').AsString+' està a Hola i no a Gutt.');
          qHola.Next;
      end;
  end;

  qHola.Free;
  qGutt.Free;
  WaitOff;
end;

procedure TwMain.LiteralsCODIICD1Click(Sender: TObject);
var
  i: integer;
  icd: string;
  nicdllarg,nicdllarg2: array[0..255] of char;
begin
  // actualitzem tots els literals N_ICD a partir de N_ICD_LLAR
  log.Visible := False;
  WaitOn('Actualitzant literals CODIICD a partir del fitxer CIM-9-MC ...');

  i:=0;
  CIM9MC.Close;
  CIM9MC.Open;
  while not CIM9MC.eof do
  begin
      icd:=PosarPunt(CIM9MC.FieldByName('CAMPO4').AsString,CIM9MC.FieldByName('CAMPO5').AsString);

      if (GutSelect('select count(*) from CODIICD where c_icd = "%s" and BAIXA ="N"',[icd]) > 0) then
      begin
          StrPCopy(nicdllarg,CIM9MC.FieldByName('CAMPO6').AsString);
          OemToAnsi(nicdllarg,nicdllarg2);
          qLiterals.parambyname('c_icd').asstring := icd;
          qLiterals.parambyname('n_icd').asstring := nicdllarg2;

          TRY qLiterals.ExecSQL;
              i:=i+1;
          FINALLY
          END;
      end;

      CIM9MC.Next;
  end;
  CIM9MC.Close;
  WaitOff;
  ShowMessage(format('Actualitzats %d literals.',[i]));
end;

procedure TwMain.Accents1Click(Sender: TObject);
var
  qSinonims: TQuery;
  i,j,k: integer;
begin
  ShowMessage('OBSOLET');
  Exit; // 21/7/2014 ICDSINONIMS DESAPAREIX

  // insertar sense accent al camp PARAULES de ICDSINONIMS les paraules que a S_ICD tenen accent
  qSinonims := TQuery.Create(Application);
  qSinonims.DatabaseName := 'Interna';
  qSinonims.SQL.Text := 'select CLAU, S_ICD, PARAULES FROM icdsinonims where ESTAT = "A" and '+
                        '((s_icd like "%à%") or (s_icd like "%è%") or (s_icd like "%é%") or (s_icd like "%í%") or (s_icd like "%ò%") or '+
                        ' (s_icd like "%ó%") or (s_icd like "%ú%") or (s_icd like "%À%") or (s_icd like "%È%") or (s_icd like "%É%") or '+
                        ' (s_icd like "%Í%") or (s_icd like "%Ò%") or (s_icd like "%Ó%") or (s_icd like "%Ú%")) order by clau';
  qSinonims.Open;
  i:=0;k:=0;

  while not qSinonims.Eof do
  begin
      j:=AfegirParaulesClau(qSinonims.FieldByName('CLAU').AsInteger,qSinonims.FieldByName('S_ICD').AsString,qSinonims.FieldByName('PARAULES').AsString);
      k:=k+j;

      i:=i+1;
      qSinonims.Next;
  end;

  qSinonims.Free;
  ShowMessage('Analitzats '+inttostr(i)+' sinònims.'+#13+'Actualitzades '+inttostr(k)+' paraules');
end;

// inserta les paraules clau trobades amb accent, sense accent. Retorna el nombre de paraules amb accent insertades
function TwMain.AfegirParaulesClau(clau:integer; sinonim, paraules:string): integer;
var
 i: integer;
 c,mot,mot2,mots: String;
 accent,NoHiEs: boolean;
begin
  ShowMessage('OBSOLET');
  Exit; // 21/7/2014 ICDSINONIMS DESAPAREIX

  Result := 0;
  c:=''; mot:=''; i:=1; mots := ''; accent := False;

  while (i<=len(sinonim)) do
  begin
      c:=copy(sinonim,i,1);
      if (c<>' ') then
      begin
          // si té accent li trec
          if (c='à') or (c='À')                            then begin mot:=mot+'A'; accent:=true; end
          else if (c='è') or (c='é') or (c='È') or (c='É') then begin mot:=mot+'E'; accent:=true; end
          else if (c='í') or (c='Í')                       then begin mot:=mot+'I'; accent:=true; end
          else if (c='ò') or (c='ó') or (c='Ò') or (c='Ó') then begin mot:=mot+'O'; accent:=true; end
          else if (c='ú') or (c='Ú')                       then begin mot:=mot+'U'; accent:=true; end
          else mot:=mot+c;
      end
      else begin
          // gravem la paraula si té accent i inicialitzem 'mot'
          if accent then
          begin
              // mirem que la paraula no estigui ja en PARAULES
              mot2:='%'+mot+'%';
              NoHiEs:= GutSelect('select count(*) from ICDSINONIMS where PARAULES like "%s" and clau = %d',[mot2,clau]) = 0;
              if NoHiEs then
              begin
                  mots:=mots+','+mot;
                  Result:=Result+1;
              end;
          end;
          mot:=''; accent:=false;
      end;
      i:=i+1;
  end;
  // gravem la última paraula si té accent
  if accent then
  begin
      // mirem que la parula no estigui ja en PARAULES
      mot2:='%'+mot+'%';
      NoHiEs:= GutSelect('select count(*) from ICDSINONIMS where PARAULES like "%s" and clau = %d',[mot2,clau]) = 0;
      if NoHiEs then
      begin
          mots:=mots+','+mot;
          Result:=Result+1;
      end;
  end;

  // al final de tot afegim les paraules sense accent
  if (paraules<>mots) then
  begin
      qAfegir.ParamByName('clau').AsInteger := clau;
      qAfegir.ParamByName('paraules').Clear;
      qAfegir.ParamByName('paraules').Text := paraules+mots;
      TRY qAfegir.ExecSQL;
      EXCEPT ShowMessage(Format('Error a l''afegir sinònim "%S", clau %d',[SINONIM,CLAU]));
             Abort;
      END;
  end;
end;

procedure TwMain.Passarasinnim11Click(Sender: TObject);
var
  qSinonims,qHiEs: TQuery;
  i,j: integer;
  paraules,mots: string;
begin
  ShowMessage('OBSOLET');
  Exit; // 21/7/2014 ICDSINONIMS DESAPAREIX

  qSinonims := TQuery.Create(Application);
  qSinonims.DatabaseName := 'Interna';

// --------- passar els sinònims (paraules de S_ICD i de PARAULES) amb ordre >= 2 a paraules clau del sinònim 1 --------------------------------
{  qSinonims.SQL.Text := 'select C_ICD, ORDRE, S_ICD, PARAULES FROM icdsinonims where ESTAT = "A" and ORDRE >=2 '+
                        'order by C_ICD, ORDRE ';
  qSinonims.Open;
  i:=0; j:=0;

  while not qSinonims.Eof do
  begin
    // per cada sinònim, acumulem les paraules de S_ICD i PARAULES que no estan a S_ICD ni a PARAULES del sinònim amb ordre 1 i les grabem
    j:=j+AcumulaParaules(qSinonims.FieldByName('C_ICD').AsString,qSinonims.FieldByName('S_ICD').AsString,qSinonims.FieldByName('PARAULES').AsString,qSinonims.FieldByName('ORDRE').AsInteger);

    i:=i+1;
    qSinonims.Next;
  end;

  ShowMessage('Analitzats '+inttostr(i)+' sinònims.'+#13+'Mots afegits al sinònim d''ordre 1: '+inttostr(j));  }
// --------- passar els sinònims (paraules de S_ICD i de PARAULES) amb ordre >= 2 a paraules clau del sinònim 1 --------------------------------

// --------- passar les paraules de s_icd i de n_icd del sinònim 1 a paraules clau del sinònim 1 -----------------------------------------------
{  qSinonims.SQL.Text := 'select I.C_ICD, I.S_ICD, I.PARAULES, upper(C.N_ICD) as N_ICD FROM icdsinonims I '+
                        'JOIN CODIICD C ON I.C_ICD = C.C_ICD where I.ESTAT = "A" and I.ORDRE =1 '+
                        'order by I.C_ICD';
  qSinonims.Open;
  i:=0; j:=0;

  while not qSinonims.Eof do
  begin
    // per cada sinònim, acumulem les paraules de S_ICD i PARAULES que no estan a S_ICD ni a PARAULES del sinònim amb ordre 1 i les grabem
    j:=j+AcumulaParaules(qSinonims.FieldByName('C_ICD').AsString,qSinonims.FieldByName('S_ICD').AsString,qSinonims.FieldByName('PARAULES').AsString,1);
    j:=j+AcumulaParaules(qSinonims.FieldByName('C_ICD').AsString,qSinonims.FieldByName('N_ICD').AsString,'',1);

    i:=i+1;
    qSinonims.Next;
  end;

  qSinonims.Free;
  ShowMessage('Analitzats '+inttostr(i)+' sinònims d''ordre 1.'+#13+'Mots afegits: '+inttostr(j));}
// --------- passar les paraules de s_icd i de n_icd del sinònim 1 a paraules clau del sinònim 1 -----------------------------------------------

// --------- passar S_ICD i N_ICD del sinònim 1 a paraules clau del sinònim 1 ------------------------------------------------------------------
  qSinonims.SQL.Text := 'select I.C_ICD, I.S_ICD, I.PARAULES, UPPER(C.N_ICD) as N_ICD FROM icdsinonims I '+
                        'JOIN CODIICD C ON I.C_ICD = C.C_ICD where I.ESTAT = "A" and I.ORDRE =1 '+
                        'order by I.C_ICD';
  qSinonims.Open;
  i:=0; j:=0;

  qHiEs := TQuery.Create(Application);
  qHiEs.DatabaseName := 'Interna';
  qHiEs.SQL.Text := 'select count(*) as CONTA from icdsinonims where C_ICD = :cicd and ORDRE=1 and ESTAT="A" and PARAULES like :paraules';

  while not qSinonims.Eof do
  begin
    // per cada sinònim, afegim S_ICD i C_ICD a PARAULES del sinònim amb ordre 1
    qParaules.ParamByName('C_ICD').AsString := qSinonims.FieldByName('C_ICD').AsString;
    qParaules.ParamByName('paraules').Clear;
    paraules := GutSelect('select PARAULES from ICDSINONIMS where C_ICD = "%s" and ORDRE=1 and ESTAT="A"',[qSinonims.FieldByName('C_ICD').AsString]);
    mots := '';

    // no afegir si ja hi són
    qHiEs.ParamByName('cicd').AsString := qSinonims.FieldByName('C_ICD').AsString;
    qHiEs.ParamByName('paraules').AsString := '%'+qSinonims.FieldByName('S_ICD').AsString+'%';
    qHiEs.Open;

    if (qHiEs.FieldByName('conta').asinteger = 0) then mots:=qSinonims.FieldByName('S_ICD').AsString;
    qHiEs.Close;

    // mirem si S_ICD i N_ICD són diferents
    if (qSinonims.FieldByName('S_ICD').AsString <> qSinonims.FieldByName('N_ICD').AsString) then
    begin
      qHiEs.ParamByName('paraules').AsString := '%'+qSinonims.FieldByName('N_ICD').AsString+'%';
      qHiEs.Open;
      if (qHiEs.FieldByName('conta').asinteger = 0) then mots:=mots+','+qSinonims.FieldByName('N_ICD').AsString;
      qHiEs.Close;
    end;

    if (mots<>'') then
    begin
      qParaules.ParamByName('paraules').AsString := PARAULES+','+mots;

      TRY qParaules.ExecSQL; j:=j+1;
      EXCEPT ShowMessage(Format('Error a l''afegir S_ICD i N_ICD al sinònim "%s", codi "%s"',
                                [qSinonims.FieldByName('S_ICD').AsString,qSinonims.FieldByName('C_ICD').AsString]));
             Abort;
      END;
    end;

    i:=i+1;
    qSinonims.Next;
  end;
  qHiEs.Free;

  qSinonims.Free;
  ShowMessage('Tractats '+inttostr(i)+' sinònims d''ordre 1.'+#13+'Afegits: '+inttostr(j));
// --------- passar S_ICD i N_ICD del sinònim 1 a paraules clau del sinònim 1 ------------------------------------------------------------------

end;

function TwMain.AcumulaParaules(cicd,sicd,paraules:String;ordre:integer):integer;
var
  c,mot,mot2,mots,Paraules1:string;
  k:integer;
  NoHiEs: boolean;
begin
  ShowMessage('OBSOLET');
  Exit; // 21/7/2014 ICDSINONIMS DESAPAREIX

  // per un c_icd, retornem totes les paraules de s_icd i paraules que no estan al sinònim 1
  Result:=0;
  // primer analitzem el S_ICD
  k:=1;c:=copy(sicd,k,1);mot:='';mots:='';

  while k<=len(sicd) do
  begin
    if (c<>' ') then if (c=':') or (c='''') or (c='"') then mot:=mot+' ' else mot:=mot+c
    else begin
        // mirem que la paraula no estigui ja en PARAULES
        mot2:='%'+mot+'%';
        if (ordre=1) then
        begin
          TRY NoHiEs := GutSelect('select count(*) from ICDSINONIMS where (PARAULES like "%s") and C_ICD = "%s" and ordre =1',[mot2,cicd]) = 0;
          EXCEPT ShowMessage(Format('Error en mirar si NoHiEs. c_icd = "%s". Mot: "%s"',[cicd,mot2]));
          END;
        end
        else begin
            TRY NoHiEs:= GutSelect('select count(*) from ICDSINONIMS where ((S_ICD like "%s") or (PARAULES like "%s")) and C_ICD = "%s" and ordre=1',
                                   [mot2,mot2,cicd]) = 0;
            EXCEPT ShowMessage(Format('Error en mirar si NoHiEs. c_icd = "%s". Mot: "%s"',[cicd,mot2]));
            END;
        end;

        if NoHiEs then
        begin
          mots:=mots+','+mot;
          Result:=Result+1;
        end;
        mot:='';
    end;

    k:=k+1;
    c:=copy(sicd,k,1);
  end;
  // mirem que la paraula no estigui ja en PARAULES
  mot2:='%'+mot+'%';
  if (ordre=1) then
  begin
      TRY NoHiEs := GutSelect('select count(*) from ICDSINONIMS where (PARAULES like "%s") and C_ICD = "%s" and ordre =1',[mot2,cicd]) = 0;
      EXCEPT ShowMessage(Format('Error en mirar si NoHiEs. c_icd = "%s". Mot: "%s"',[cicd,mot2]));
      END;
  end
  else begin
      TRY NoHiEs:= GutSelect('select count(*) from ICDSINONIMS where ((S_ICD like "%s") or (PARAULES like "%s")) and C_ICD = "%s" AND ORDRE=1',
                             [mot2,mot2,cicd]) = 0;
      EXCEPT ShowMessage(Format('Error en mirar si NoHiEs. c_icd = "%s". Mot: "%s"',[cicd,mot2]));
      END;
  end;
  
  if NoHiEs then
  begin
    mots:=mots+','+mot;
    Result:=Result+1;
  end;

  paraules1:=GutSelect('select PARAULES from ICDSINONIMS where C_ICD = "%s" and ORDRE=1',[cicd]);
  // al final de tot afegim les paraules que no estan al sinònim 1
  if (Paraules1<>mots) and (mots<>'') then
  begin
      qParaules.ParamByName('C_ICD').AsString := cicd;
      qParaules.ParamByName('paraules').Clear;
      qParaules.ParamByName('paraules').Text := paraules1+mots;
      TRY qParaules.ExecSQL;
      EXCEPT ShowMessage(Format('Error a l''afegir paraules al sinònim "%s", codi "%s"',[sicd,cicd]));
             Abort;
      END;
  end;

  // i després analitzem el PARAULES
  k:=1;c:=copy(paraules,k,1);mot:='';mots:='';

  while k<=len(paraules) do
  begin
    // les paraules dins de PARAULES estan separades per comes
    if (c<>',') then if (c=':') or (c='''') or (c='"') then mot:=mot+' ' else mot:=mot+c
    else begin
        // mirem que la paraula no estigui ja en PARAULES
        mot2:='%'+mot+'%';
        if (ordre=1) then
        begin
            TRY NoHiEs := GutSelect('select count(*) from ICDSINONIMS where (PARAULES like "%s") and C_ICD = "%s" and ordre =1',[mot2,cicd]) = 0;
            EXCEPT ShowMessage(Format('Error en mirar si NoHiEs. c_icd = "%s". Mot: "%s"',[cicd,mot2]));
            END;
        end
        else begin
            TRY NoHiEs:= GutSelect('select count(*) from ICDSINONIMS where ((S_ICD like "%s") or (PARAULES like "%s")) and C_ICD = "%s" AND ORDRE=1',
                                   [mot2,mot2,cicd]) = 0;
            EXCEPT ShowMessage(Format('Error en mirar si NoHiEs. c_icd = "%s". Mot: "%s"',[cicd,mot2]));
            END;
        end;

        if NoHiEs then
        begin
          mots:=mots+','+mot;
          Result:=Result+1;
        end;
        mot:='';
    end;

    k:=k+1;
    c:=copy(paraules,k,1);
  end;
  // mirem que la paraula no estigui ja en PARAULES
  mot2:='%'+mot+'%';
  if (ordre=1) then
  begin
      TRY NoHiEs := GutSelect('select count(*) from ICDSINONIMS where (PARAULES like "%s") and C_ICD = "%s" and ordre =1',[mot2,cicd]) = 0;
      EXCEPT ShowMessage(Format('Error en mirar si NoHiEs. c_icd = "%s". Mot: "%s"',[cicd,mot2]));
      END;
  end
  else begin
      TRY NoHiEs:= GutSelect('select count(*) from ICDSINONIMS where ((S_ICD like "%s") or (PARAULES like "%s")) and C_ICD = "%s" AND ORDRE=1',
                             [mot2,mot2,cicd]) = 0;
      EXCEPT ShowMessage(Format('Error en mirar si NoHiEs. c_icd = "%s". Mot: "%s"',[cicd,mot2]));
      END;
  end;
  
  if NoHiEs then
  begin
    mots:=mots+','+mot;
    Result:=Result+1;
  end;

  paraules1:=GutSelect('select PARAULES from ICDSINONIMS where C_ICD = "%s" and ORDRE=1',[cicd]);
  // al final de tot afegim les paraules que no estan al sinònim 1
  if (Paraules1<>mots) and (mots<>'') then
  begin
      qParaules.ParamByName('C_ICD').AsString := cicd;
      qParaules.ParamByName('paraules').Clear;
      qParaules.ParamByName('paraules').Text := paraules1+mots;
      TRY qParaules.ExecSQL;
      EXCEPT ShowMessage(Format('Error a l''afegir paraules al sinònim "%s", codi "%s"',[sicd,cicd]));
             Abort;
      END;
  end;
end;

procedure TwMain.OmplirResumiEtiqueta1Click(Sender: TObject);
var
  i: integer;
  icd: string;
  icd_curt, icd_curt2: array[0..60] of char;
begin
  // actualitzem els literals curts i les etiquetes
  log.Visible := False;
  WaitOn('Traspassant descripció curta i etiqueta ...');

  i:=0;
  CIM9MC.Close;
  CIM9MC.Open;
  while not CIM9MC.Eof do
  begin
      icd := PosarPunt(CIM9MC.FieldByName('CAMPO4').AsString, CIM9MC.FieldByName('CAMPO5').AsString);

      if (GutSelect('select COUNT(*) from CODIICD where C_ICD = "%s" and BAIXA ="N"', [icd]) > 0) then
      begin
          StrPCopy(icd_curt, CIM9MC.FieldByName('CAMPO7').AsString);
          OemToAnsi(icd_curt, icd_curt2);

          qResum.parambyname('c_icd').asstring := icd;
          qResum.parambyname('r_icd').asstring := icd_curt2;

          TRY qResum.ExecSQL;
              i:=i+1;
          FINALLY END;
      end;

      CIM9MC.Next;
  end;
  CIM9MC.Close;
  WaitOff;
  ShowMessage(format('Actualitzats %d literals.', [i]));
end;

procedure TwMain.Literalscastell1Click(Sender: TObject);
var
  i: integer;
  paraules1: string;
  nicdcast,nicdcast2: array[0..120] of char;  
begin
  ShowMessage('OBSOLET');
  Exit; // 21/7/2014 ICDSINONIMS DESAPAREIX

  // actualitzem els literals curts i les etiquetes
  log.Visible := False;
  WaitOn('Traspassant descripció en castellà ...');

  i:=0;
  ICD_E.Close;
  ICD_E.Open;
  while (not ICD_E.Eof) do
  begin
      paraules1:=GutSelect('select PARAULES from ICDSINONIMS where C_ICD = "%s" and ORDRE = 1',[ICD_E.FieldByName('CODIPUNT').asstring]);

      if (paraules1 <> '') and (paraules1 <> ICD_E.FieldByName('TITOLCAS_B').asstring) then
      begin
          StrPCopy(nicdcast, ICD_E.FieldByName('TITOLCAS_B').AsString);
          OemToAnsi(nicdcast, nicdcast2);

          qParaules.parambyname('c_icd').asstring := ICD_E.FieldByName('CODIPUNT').asstring;
          qParaules.parambyname('PARAULES').asstring := paraules1+','+nicdcast2;

          TRY qParaules.ExecSQL;
              i:=i+1;
          EXCEPT ShowMessage(Format('Error a l''afegir paraules al sinònim 1 codi "%s"',[ICD_E.FieldByName('CODIPUNT').asstring]));
                 Abort;
          END;
      end;

      ICD_E.Next;
  end;
  ICD_E.Close;
  WaitOff;
  ShowMessage(format('Afegits %d literals.', [i]));
end;

procedure TwMain.NeuroTrauma1Click(Sender: TObject);
var
  qTrauma: TQuery;
  i: integer;
  paraules1,text: string;
  NoHiEs: boolean;
begin
  ShowMessage('OBSOLET');
  Exit; // 21/7/2014 ICDSINONIMS DESAPAREIX

  // passem a PARAULES els texts de ICDNEUROTRAUMA corresponents
  qTrauma := TQuery.Create(Application);
  qTrauma.DatabaseName := 'Interna';
  qTrauma.SQL.Text := 'select G_ICD, TEXT, TIPUS from ICDNEUROTRAUMA where ESTAT="A" and g_icd is not null and g_icd <> "" order by G_ICD';
  qTrauma.Open;
  i:=0;

  while not qTrauma.Eof do
  begin
      text:='%'+UpperCase(qTrauma.FieldByName('text').asString)+'%';
      NoHiEs:=GutSelect('select count(*) from ICDSINONIMS where c_icd = "%s" and paraules like "%s"',[qTrauma.FieldByName('g_icd').asString,text])=0;

      // al final de tot afegim les paraules que no estan al sinònim 1
      if NoHiEs then
      begin
          paraules1:=GutSelect('select paraules from icdsinonims where c_icd ="%s"',[qTrauma.FieldByName('g_icd').asString]);
          qParaules.ParamByName('C_ICD').AsString := qTrauma.FieldByName('g_icd').asString;
          qParaules.ParamByName('paraules').Clear;
          qParaules.ParamByName('paraules').Text := paraules1+#13+UpperCase(qTrauma.FieldByName('text').asString);
          TRY qParaules.ExecSQL;
          EXCEPT ShowMessage(Format('Error a l''afegir paraules del neurotrauma "%s", codi "%s"',
                                   [qTrauma.FieldByName('text').asString,qTrauma.FieldByName('g_icd').asString]));
                 Abort;
          END;
      end;

      i:=i+1;
      qTrauma.Next;
  end;

  qTrauma.Free;
  ShowMessage(Format('Analitzats %d sinònims de neurotrauma.',[i]));
end;

procedure TwMain.ValidaTIPUS1Click(Sender: TObject);
var
  qSinonims: TQuery;
  i,j: integer;
begin
  ShowMessage('OBSOLET');
  Exit; // 21/7/2014 ICDSINONIMS DESAPAREIX

  // Validar que els diagnòstics tenen tipus 'D' i els procediments tenen tipus 'P' a ICDSINONIMS
  WaitOn('Validant TIPUS de ICDSINONIMS ...');
  log.Lines.Clear;
  log.Visible := True;

  qSinonims := TQuery.Create(Application);
  qSinonims.DatabaseName := 'Interna';
  qSinonims.SQL.Text := 'select C_ICD, TIPUS FROM icdsinonims ORDER BY C_ICD';
  qSinonims.Open;
  i:=0; j:=0;

  while not qSinonims.Eof do
  begin
      if TipusNoOk(qSinonims.FieldByName('c_icd').AsString,qSinonims.FieldByName('tipus').AsString) then
      begin
          log.Lines.Add('Codi: '+qSinonims.FieldByName('c_icd').AsString+' amb tipus '+qSinonims.FieldByName('tipus').AsString+' erroni.');
          j:=j+1;
      end;

      i:=i+1;
      qSinonims.Next;
  end;

  qSinonims.Free;
  ShowMessage('Analitzats '+inttostr(i)+' sinònims.'+#13+'Detectats '+inttostr(j)+' tipus erronis.');

  WaitOff;
end;

function TwMain.TipusNoOk(codi,tipus:string): Boolean;
begin
  Result := False;
  
  if tipus = 'D'
  then begin
      if (OnEstaElPunt(codi) <> 4) and (len(codi) <> 3)
      then Result := True;
  end
  else if tipus = 'P' then
       begin
           if (OnEstaElPunt(codi) <> 3) and (len(codi) <> 2)
           then Result:=True;
       end;
end;

Function TwMain.OnEstaElPunt(codi: string): integer;
var
 i: integer;
begin
    // 'D' _ _ _._ _ o V_ _._ _
    // 'P' _ _._ _ _
    // 'E' E_ _ _._ _
    // les neoplàsies les deixem sense punts

    i:=1;
    while i <= len(codi) do
    begin
        if copy(codi,i,1) = '.' then
        begin
            Result := i;
            i:=100;  // per sortir del for
        end;
        i:=i+1;
    end;
end;


procedure TwMain.Diagnstics2Click(Sender: TObject);
begin
  PreguntaMetge;
  TeDretMetge(wDataHola.UsuariActiu.Codi,[71],True);  // dret M71- permet gestionar ICD.

  if not HiEs('wMantDiag',Application.MainForm)
  then CrearForm(TwMantDiag)
  else begin
    ShowMessage('NO ES POT OBRIR DUES VEGADES EL MATEIX FORMULARI.');
    Abort;
  end;
end;

procedure TwMain.Procediments2Click(Sender: TObject);
begin
  PreguntaMetge;
  TeDretMetge(wDataHola.UsuariActiu.Codi,[71],True);  // dret M71- permet gestionar ICD.

  if not HiEs('wMantProc',Application.MainForm)
  then CrearForm(TwMantProc)
  else begin
    ShowMessage('NO ES POT OBRIR DUES VEGADES EL MATEIX FORMULARI.');
    Abort;
  end;
end;

procedure TwMain.CausesExternes2Click(Sender: TObject);
begin
  PreguntaMetge;
  TeDretMetge(wDataHola.UsuariActiu.Codi,[71],True);  // dret M71- permet gestionar ICD.

  if not HiEs('wMantCE',Application.MainForm)
  then CrearForm(TwMantCE)
  else begin
    ShowMessage('NO ES POT OBRIR DUES VEGADES EL MATEIX FORMULARI.');
    Abort;
  end;
end;

procedure TwMain.SubcodisICD1Click(Sender: TObject);
begin
  PreguntaMetge;
  TeDretMetge(wDataHola.UsuariActiu.Codi,[71],True);  // dret M71- permet gestionar ICD.

  if not HiEs('wMantSub',Application.MainForm)
  then CrearForm(TwMantSub)
  else begin
    ShowMessage('NO ES POT OBRIR DUES VEGADES EL MATEIX FORMULARI.');
    Abort;
  end;
end;

procedure TwMain.ActualitzarCIMDCODIICD1Click(Sender: TObject);
var
  ia,ib,im: integer;
  icd: string;
  qICD: TQuery;
begin
  log.Visible := True;
  log.Lines.Clear;
  WaitOn('Actualitzant DIAGNÒSTICS a CODIICD a partir del fitxer del Catsalut ...');

  ia:=0;ib:=0;im:=0;
  UPDCIMD.Close;
  UPDCIMD.Open;

  qICD := TQuery.Create(Application);
  qICD.DatabaseName := wDataHola.baseGut.DatabaseName;

  while not UPDCIMD.eof do
  begin
      icd:=PosarPunt(UPDCIMD.FieldByName('CAMPO5').AsString,UPDCIMD.FieldByName('CAMPO4').AsString);
      // segons l'acció farem una cosa o altra: A-alta; B-baixa; M-modificació
      if UPDCIMD.FieldByName('CAMPO1').AsString = 'A' then
      begin
          if (GutSelect('select count(*) from CODIICD where c_icd = "%s" ',[icd]) > 0)
          then log.Lines.Add(Format('Codi "%s" es d''alta però ja existeix a CODIICD.',[icd]))
          else begin
              with qInsCIM do
              begin
                  ParamByName('C_ICD').AsString      := icd;
                  ParamByName('TIPUS').AsString      := UPDCIMD.FieldByName('CAMPO4').AsString;
                  ParamByName('N_ICD').AsString      := UPDCIMD.FieldByName('CAMPO6').AsString;
                  ParamByName('PARAULES').AsString   := UpperCase(UPDCIMD.FieldByName('CAMPO6').AsString);
                  ParamByName('R_ICD').AsString      := CopyLeft(UPDCIMD.FieldByName('CAMPO7').AsString,90);
                  ParamByName('I_DIAGINES').AsString := UPDCIMD.FieldByName('CAMPO8').AsString;
                  ParamByName('VERSIOCIM').AsInteger := 10;

                  TRY ExecSQL;
                  FINALLY log.Lines.Add(Format('Codi "%s" afegit a CODIICD.',[icd]));
                          ia := ia + 1;
                  END;
              end;
          end;
      end
      else if UPDCIMD.FieldByName('CAMPO1').AsString = 'B' then
      begin
          if (GutSelect('select BAIXA from CODIICD where c_icd = "%s" and versiocim=%d',[icd,10]) = 'B')
          then log.Lines.Add(Format('Codi "%s" es de baixa però ja està de baixa a CODIICD.',[icd]))
          else begin
              TRY GutExecute('update CODIICD set BAIXA = "B" where c_icd = "%s" and versiocim=%d',[icd,10]);
              FINALLY log.Lines.Add(Format('Codi "%s" donat de baixa a CODIICD.',[icd]));
                      ib := ib + 1;
              END;
          end;
      end
      else if UPDCIMD.FieldByName('CAMPO1').AsString = 'M' then
      begin
          if (GutSelect('select count(*) from CODIICD where c_icd = "%s" ',[icd]) = 0)
          then log.Lines.Add(Format('Codi "%s" es de modificació però no existeix a CODIICD.',[icd]))
          else begin
              // comparem per veure si hi ha diferències
              qICD.Close;
              qICD.SQL.Text := 'select n_icd, r_icd, i_diagines from CODIICD where c_icd = "'+icd+'" and versiocim=10';
              qICD.Open;
              if (qICD.FieldByName('n_icd').AsString <> UPDCIMD.FieldByName('CAMPO6').AsString)
              or (qICD.FieldByName('r_icd').AsString <> CopyLeft(UPDCIMD.FieldByName('CAMPO7').AsString,90))
              or (qICD.FieldByName('i_diagines').AsString <> UPDCIMD.FieldByName('CAMPO8').AsString)
              then begin
                  TRY GutExecute('update CODIICD set n_icd = "%s", r_icd = "%s", i_diagines = "%s" where c_icd = "%s" and versiocim=%d',
                                 [UPDCIMD.FieldByName('CAMPO6').AsString,CopyLeft(UPDCIMD.FieldByName('CAMPO7').AsString,90),
                                  UPDCIMD.FieldByName('CAMPO8').AsString,icd,10]);
                  FINALLY log.Lines.Add(Format('Codi "%s" modificat.',[icd]));
                          im := im + 1;
                  END;
              end;
          end;
      end;

      UPDCIMD.Next;
  end;
  UPDCIMD.Close;
  qICD.Free;
  WaitOff;
  ShowMessage(format('CODIICD: Insertats %d codis.'+#13+'Donats de baixa %d codis.'+#13+'Modificats %d codis.',[ia,ib,im]));
end;

function TwMain.TreuAccents(paraules:String):String;
var
 i: integer;
 c,mots: String;
begin
  Result := ''; c:=''; mots:=''; i:=1;

  while (i<=len(paraules)) do
  begin
      c:=copy(paraules,i,1);
      // si té accent li trec
      if (c='à') or (c='À')                            then mots:=mots+'A'
      else if (c='è') or (c='é') or (c='È') or (c='É') then mots:=mots+'E'
      else if (c='í') or (c='Í')                       then mots:=mots+'I'
      else if (c='ò') or (c='ó') or (c='Ò') or (c='Ó') then mots:=mots+'O'
      else if (c='ú') or (c='Ú')                       then mots:=mots+'U'
      else mots:=mots+c;

      i:=i+1;
  end;
  Result:=mots;
end;

procedure TwMain.AccentsCIMCODIICD1Click(Sender: TObject);
var
  ia: integer;
  icd: string;
  qAux: TQuery;
begin
{  FerError('Ja no es traspassen PARAULES.',True);

  // actualitzem CODIICD a partir del fitxer del catsalut CIM
  log.Visible := True;
  log.Lines.Clear;
  WaitOn('Actualitzant "PARAULES" de CODIICD a partir del fitxer CIM-9 del Catsalut ...');

  ia:=0;
  UPDCIM.Close;
  UPDCIM.Open;
  qAux := TQuery.Create(Application);
  qAux.DatabaseName := 'Interna';

  while not UPDCIM.eof do
  begin
      icd:=PosarPunt(UPDCIM.FieldByName('C_ICD').AsString,UPDCIM.FieldByName('TIPUS').AsString);
      // Només hem d'actualitzar els que eren alta
      if UPDCIM.FieldByName('ACCIO').AsString = 'A' then
      begin
          qAux.SQL.Text := 'select paraules from CODIICD where (c_icd= "'+icd+'") and '+
                           '((paraules like "%à%") or (paraules like "%è%") or (paraules like "%é%") or (paraules like "%í%")'+
                           ' or (paraules like "%ò%") or (paraules like "%ó%") or (paraules like "%ú%")) ';
          qAux.Open;
          if not qAux.Eof then
          begin
              with qUpdCIM do
              begin
                  ParamByName('C_ICD').AsString   :=icd;
                  ParamByName('PARAULES').AsString:=qAux.FieldbyName('paraules').AsString+' '+TreuAccents(qAux.FieldbyName('paraules').AsString);

                  TRY ExecSQL;
                  FINALLY log.Lines.Add(Format('Actualitzat PARAULES del codi "%s" a CODIICD.',[icd]));
                          ia := ia + 1;
                  END;
              end;
          end;
      end;
      UPDCIM.Next;
  end;
  UPDCIM.Close;
  qAux.Close; qAux.Free;
  WaitOff;
  ShowMessage(format('CODIICD: Modificats %d codis.',[ia]));    }
end;

procedure TwMain.ActualitzarCIMPCODIICD1Click(Sender: TObject);
var
  ia,ib,im: integer;
  icd: string;
  qICD: TQuery;
begin
  log.Visible := True;
  log.Lines.Clear;
  WaitOn('Actualitzant PROCEDIMENTS a CODIICD a partir del fitxer del Catsalut ...');

  ia:=0;ib:=0;im:=0;
  UPDCIMP.Close;
  UPDCIMP.Open;

  qICD := TQuery.Create(Application);
  qICD.DatabaseName := wDataHola.baseGut.DatabaseName;

  while not UPDCIMP.eof do
  begin
      icd:=UPDCIMP.FieldByName('CAMPO5').AsString;  // els procediments cim10 no porten punt
      // segons l'acció farem una cosa o altra: A-alta; B-baixa; M-modificació
      if UPDCIMP.FieldByName('CAMPO1').AsString = 'A' then
      begin
          if (GutSelect('select count(*) from CODIICD where c_icd = "%s" ',[icd]) > 0)
          then log.Lines.Add(Format('Codi "%s" es d''alta però ja existeix a CODIICD.',[icd]))
          else begin
              with qInsCIM do
              begin
                  ParamByName('C_ICD').AsString      := icd;
                  ParamByName('TIPUS').AsString      := UPDCIMP.FieldByName('CAMPO4').AsString;
                  ParamByName('N_ICD').AsString      := UPDCIMP.FieldByName('CAMPO6').AsString;
                  ParamByName('PARAULES').AsString   := UpperCase(UPDCIMP.FieldByName('CAMPO6').AsString);
                  ParamByName('R_ICD').AsString      := CopyLeft(UPDCIMP.FieldByName('CAMPO7').AsString,90);
                  ParamByName('I_DIAGINES').AsString := UPDCIMP.FieldByName('CAMPO8').AsString;
                  ParamByName('VERSIOCIM').AsInteger := 10;

                  TRY ExecSQL;
                  FINALLY log.Lines.Add(Format('Codi "%s" afegit a CODIICD.',[icd]));
                          ia := ia + 1;
                  END;
              end;
          end;
      end
      else if UPDCIMP.FieldByName('CAMPO1').AsString = 'B' then
      begin
          if (GutSelect('select BAIXA from CODIICD where c_icd = "%s" and versiocim=%d',[icd,10]) = 'B')
          then log.Lines.Add(Format('Codi "%s" es de baixa però ja està de baixa a CODIICD.',[icd]))
          else begin
              TRY GutExecute('update CODIICD set BAIXA = "B" where c_icd = "%s" and versiocim=%d',[icd,10]);
              FINALLY log.Lines.Add(Format('Codi "%s" donat de baixa a CODIICD.',[icd]));
                      ib := ib + 1;
              END;
          end;
      end
      else if UPDCIMP.FieldByName('CAMPO1').AsString = 'M' then
      begin
          if (GutSelect('select count(*) from CODIICD where c_icd = "%s" ',[icd]) = 0)
          then log.Lines.Add(Format('Codi "%s" es de modificació però no existeix a CODIICD.',[icd]))
          else begin
              // comparem per veure si hi ha diferències
              qICD.Close;
              qICD.SQL.Text := 'select n_icd, r_icd, i_diagines from CODIICD where c_icd = "'+icd+'" and versiocim=10';
              qICD.Open;
              if (qICD.FieldByName('n_icd').AsString <> UPDCIMP.FieldByName('CAMPO6').AsString)
              or (qICD.FieldByName('r_icd').AsString <> CopyLeft(UPDCIMP.FieldByName('CAMPO7').AsString,90))
              or (qICD.FieldByName('i_diagines').AsString <> UPDCIMP.FieldByName('CAMPO8').AsString)
              then begin
                  TRY GutExecute('update CODIICD set n_icd = "%s", r_icd = "%s", i_diagines = "%s" where c_icd = "%s" and versiocim=%d',
                                 [UPDCIMP.FieldByName('CAMPO6').AsString,CopyLeft(UPDCIMP.FieldByName('CAMPO7').AsString,90),
                                  UPDCIMP.FieldByName('CAMPO8').AsString,icd,10]);
                  FINALLY log.Lines.Add(Format('Codi "%s" modificat.',[icd]));
                          im := im + 1;
                  END;
              end;
          end;
      end;

      UPDCIMP.Next;
  end;
  UPDCIMP.Close;
  qICD.Free;
  WaitOff;
  ShowMessage(format('CODIICD: Insertats %d codis.'+#13+'Donats de baixa %d codis.'+#13+'Modificats %d codis.',[ia,ib,im]));
end;

procedure TwMain.Corregirpuntcausesexternes1Click(Sender: TObject);
var
  i: Integer;
  cIcd: String;
  qCodisE: TQuery;
begin
  qCodisE := TQuery.Create(Application);
  qCodisE.DatabaseName := wDataHola.baseGut.DatabaseName;
  qCodisE.SQL.Text := 'SELECT C_ICD FROM CODIICD WHERE VERSIOCIM=10 AND TIPUS="E" AND F_SUBSTR(".",C_ICD)=5';
  qCodisE.Open;

  i:=0;
  while not qCodisE.Eof do
  begin
      i:=i+1;
      cIcd := qCodisE.FieldByName('C_ICD').AsString;
      cIcd := CopyLeft(cIcd,3)+'.'+Copy(cIcd,4,1)+Copy(cIcd,6,Len(cIcd));
      GutExecute('UPDATE CODIICD SET C_ICD="%s" WHERE VERSIOCIM=10 AND TIPUS="E" AND C_ICD="%s"',[cIcd,qCodisE.FieldByName('C_ICD').AsString]);
      qCodisE.Next;
  end;

  qCodisE.Close;
  qCodisE.Free;
end;

end.

