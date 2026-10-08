{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
unit FitxaGestioLlits;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  HYDialogConsulta, ExtCtrls, HYEdit, StdCtrls, Buttons, Db, DBTables, Grids, DBGrids,
  HYSql, Hy_Misc, HYGrids, ComCtrls, ToolWin, Data, kbmMemTable, QRCtrls,
  QuickRpt;

type
  TwFitxaGestioLlits = class(TForm)
    Panel1: TPanel;
    consultaLlits: THYConsulta;
    consultaPlantes: THYConsulta;
    pc: TPageControl;
    tsLlits: TTabSheet;
    tsBloqueig: TTabSheet;
    panelLlits: HYPanelConsulta;
    mgCanviLlit: THyMoveGroupControl;
    Panel3: TPanel;
    Pacient: THYTextEdit;
    NombPacient: THYTextEdit;
    Panel4: TPanel;
    bAcceptar: TBitBtn;
    bCancelar: TBitBtn;
    LlitOrigen: THYTextEdit;
    C_PlantaOrigen: THYTextEdit;
    N_PlantaOrigen: THYTextEdit;
    LlitDesti: THYTextEdit;
    C_PlantaDesti: THYTextEdit;
    N_PlantaDesti: THYTextEdit;
    Panel6: TPanel;
    qLlitsBloqueig: THYSqlQuery;
    dsLLitsBloqueig: TDataSource;
    Panel7: TPanel;
    HYGrid2: THYGrid;
    HYBarra1: THYBarra;
    bBloqueigs: THYSqlBrowse;
    dsBloqueigs: TDataSource;
    bLlits: THYSqlBrowse;
    dsPlantes: TDataSource;
    dsLlits: TDataSource;
    bLlits_C_LLit: TStringField;
    bLlits_C_Planta: TStringField;
    bPlantes: THYSqlBrowse;
    bPlantes_C_Planta: TStringField;
    bPlantes_N_Planta: TStringField;
    mgIntercanviLlits: THyMoveGroupControl;
    Panel10: TPanel;
    Panel11: TPanel;
    bAceptar2: TBitBtn;
    bCancelar2: TBitBtn;
    IntLLD2: THYTextEdit;
    IntPLD2: THYTextEdit;
    IntDESD2: THYTextEdit;
    IntLLD1: THYTextEdit;
    IntDESD1: THYTextEdit;
    IntPLD1: THYTextEdit;
    Panel12: TPanel;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    bCanviLlit: TToolButton;
    bSortir: TToolButton;
    sbIntercanvi: TSpeedButton;
    HistoriaIntercanvi1: THYTextEdit;
    HistoriaIntercanvi2: THYTextEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Image1: TImage;
    Image2: TImage;
    Splitter2: TSplitter;
    bLlits_C_Estat: TStringField;
    bTancaments: THYSqlBrowse;
    bTancaments_C_Llit: TStringField;
    bTancaments_Data_Inici: TDateTimeField;
    bTancaments_Data_Fi: TDateTimeField;
    dsTancaments: TDataSource;
    bPlantes_CentreCost: TStringField;
    bPlantes_Dia: TSmallintField;
    bPlantes_Unitat: TSmallintField;
    tsPlantesiLlits: TTabSheet;
    pTancament: TPanel;
    HYBarra5: THYBarra;
    Label3: TLabel;
    FiltreTancament: THYEditFiltro;
    bAfegirTancament: TBitBtn;
    HYGrid6: THYGrid;
    Panel13: TPanel;
    HYBarra2: THYBarra;
    Label1: TLabel;
    FiltreBloqueig: THYEditFiltro;
    MotiuAltres: TEdit;
    bAfegirBloqueig: TBitBtn;
    HYGrid1: THYGrid;
    Panel8: TPanel;
    HYGrid7: THYGrid;
    HYBarra6: THYBarra;
    Splitter3: TSplitter;
    SpeedButton1: TSpeedButton;
    Panel14: TPanel;
    gLlits: THYGrid;
    HYBarra7: THYBarra;
    cTancaments: THYConsulta;
    bLlits_C0_0: TStringField;
    bLlits_C0_1: TStringField;
    bLlits_C0_2: TSmallintField;
    bLlits_C0_3: TSmallintField;
    qDieta: TQuery;
    Panel5: TPanel;
    qrDieta: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    qrlPlantaLlit: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    cIngressats: THYConsulta;
    bLlitsTancament: TIntegerField;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    Print: TkbmMemTable;
    Printhistoria: TStringField;
    Printplanta: TStringField;
    Printllit: TStringField;
    Printnom: TStringField;
    Printdieta: TStringField;
    PrintObs: TStringField;
    PrintModificat: TStringField;
    PrintHoraDinar: TStringField;
    PrintHoraCanvis: TDateTimeField;
    QRLabel4: TQRLabel;
    QRDBText8: TQRDBText;
    PrintUbicacio: TStringField;
    bEnviar: TToolButton;
    bFinalitzarTancament: TBitBtn;
    tbBQaUH: TToolButton;
    Label2: TLabel;
    cMotius: THYConsulta;
    lMotiu: TLabel;
    cMotiu: THYTextEdit;
    bBloqueigs_C_Llit: TStringField;
    bBloqueigs_Data_Inici: TDateTimeField;
    bBloqueigs_Data_Fi: TDateTimeField;
    bBloqueigs_Motiu_Bloqueig: TStringField;
    bBloqueigs_C_Motiu: TSmallintField;
    bBloqueigs_C0_0: TSmallintField;
    bBloqueigs_C0_1: TStringField;
    bBloqueigs_C0_2: TSmallintField;
    bBloqueigs_C0_3: TStringField;
    bBloqueigs_C0_4: TStringField;
    bBloqueigs_C0_5: TStringField;
    Label4: TLabel;
    procedure EnviarACuina;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure consultaLlitsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure bCancelarClick(Sender: TObject);
    procedure bAcceptarClick(Sender: TObject);
    procedure panelLlitsAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure panelLlitsAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure consultaPlantesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure C_PlantaDestiChange(Sender: TObject);
    procedure LlitDestiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pcChange(Sender: TObject);
    procedure bAfegirBloqueigClick(Sender: TObject);
    procedure qLlitsBloqueigAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bCanviLlitClick(Sender: TObject);
    procedure bSortirClick(Sender: TObject);
    procedure panelLlitsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure LlitDestiExit(Sender: TObject);
    procedure bCancelar2Click(Sender: TObject);
    procedure sbIntercanviClick(Sender: TObject);
    procedure bAceptar2Click(Sender: TObject);
    procedure LlitDestiAlConsultar(Sender: TObject);
    procedure HYGrid2AlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
    procedure gLlitsAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
    procedure bLlitsBeforePost(DataSet: TDataSet);
    procedure bLlitsAfterScroll(DataSet: TDataSet);
    procedure panelLlitsAlAfterExcel(Sender: TObject);
    procedure panelLlitsAlAfterPrint(Sender: TObject);
    procedure panelLlitsAlBeforePrint(Sender: TObject);
    procedure bAfegirTancamentClick(Sender: TObject);
    procedure FiltreTancamentChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cIngressatsAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure IntLLD1AlConsultar(Sender: TObject);
    procedure IntLLD2AlConsultar(Sender: TObject);
    procedure bLlitsCalcFields(DataSet: TDataSet);
    procedure bTancamentsAfterScroll(DataSet: TDataSet);
    procedure bEnviarClick(Sender: TObject);
    procedure NoPrint(sender: TObject; var Value: String);
    procedure bFinalitzarTancamentClick(Sender: TObject);
    procedure LlitOrigenAlConsultar(Sender: TObject);
    procedure tbBQaUHClick(Sender: TObject);
    procedure cMotiusAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure bBloqueigsBeforePost(DataSet: TDataSet);
  private
    insertatllit: Boolean;
    MostrarUbicacio: Boolean;
    elMeuTractament,laMevaHistoria,plantaTipusDesti,plantaTipusOrigen: String;
    idlog,bloc: Integer;
    impressores: TStringList;
    function NomesHistoria(text: String):String;
    procedure AutocompletarLlit;
  public
    PotFerCanviLlit: Boolean;
    Tractament1, Tractament2 : String;
    hc1,hc2: Integer; 
  end;

var
  wFitxaGestioLlits: TwFitxaGestioLlits;

implementation

uses DataAdmisio, Funciones, Main, utili16;

{$R *.DFM}

function TwFitxaGestioLlits.NomesHistoria(text: String):String;
var
  i: Integer;
begin
  // entra "nhc - nomcomplet" i hem de retornar nhc (lo anterior al guió '-')
  for i:=0 to len(text)-1 do
  begin
      if copy(text,i,1)='-' then Result:=copy(text,1,i-2);
  end;
end;

procedure TwFitxaGestioLlits.bSortirClick(Sender: TObject);
begin
    Close;
end;

procedure TwFitxaGestioLlits.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    CanClose := bBloqueigs.PuedeCerrar and bLlits.PuedeCerrar and bPlantes.PuedeCerrar and bTancaments.PuedeCerrar;
end;

procedure TwFitxaGestioLlits.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EnviarACuina;

  Print.Close;
  Action := caFree;
end;

procedure TWFitxaGestioLlits.EnviarACuina;
var
  i: integer;
  horaActual,minActual: string;
begin
   if (wMain.LastTraza <> 0) then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);  

   DateTimeToString(horaActual,'hh',TimeServer);
   DateTimeToString(minActual, 'nn',TimeServer);

   if  (StrToInt(horaActual)<7)
   or ((StrToInt(horaActual)=12) and (StrToInt(minActual)>=30))
   or  (StrToInt(horaActual)>=13) then
   begin
       Print.First;
       if (not Print.Eof) then  // si està buida no imprimir res
       begin
           if TeDretAcces([99]) {wData.ES_PROVA} then qrDieta.Preview
           else begin
               Impressores := TStringList.Create;
               impresorasplanta('CUINA', 'DIETES', Impressores);
               if Impressores.Count = 0 then
               begin
                   Print.First;
                   while (not Print.Eof) do
                   begin
                       GutExecute('update LOGDIETES set PRINT_OK = "B", DATA_PRINT = "%s", LOGIN="%s" where bloc = %d and c_historia=%d',
                                  [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),CopyLeft(wData.ID_LOGIN+'-'+horaActual,40),bloc,Print.FieldByName('historia').AsInteger]);
                       Print.Next;
                   end;
               end;

               for i:=0 to Impressores.Count - 1 do
               Begin
                   If selectPrinterQr(qrDieta,Impressores.Strings[i]) then
                   begin
                       qrDieta.Print;
                       // només si té dieta s'haurà imprès ==> només es marca com a imprès si té dieta (=tots els que estàn a PRINT)
                       Print.First;
                       while (not Print.Eof) do
                       begin
                           GutExecute('update LOGDIETES set PRINT_OK = "S", DATA_PRINT = "%s" where bloc = %d, LOGIN="%s" and c_historia = %d',
                                      [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),CopyLeft(wData.ID_LOGIN+'-'+horaActual,40),bloc,Print.FieldByName('historia').AsInteger]);
                           Print.next;
                       end;
                       ShowMessage('Canvis enviats a la impresora de cuina.');
                   end
                   else begin
                       Print.First;
                       while (not Print.Eof) do
                       begin
                           GutExecute('update LOGDIETES set PRINT_OK = "E", DATA_PRINT = "%s", LOGIN="%s" where bloc = %d and c_historia = %d',
                                      [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),CopyLeft(wData.ID_LOGIN+'-'+horaActual,40),bloc,Print.FieldByName('historia').AsInteger]);
                           Print.Next;
                       end;
                       FerError('Error en imprimir la notificació a "%s"' +#13+'Aviseu a informàtica',[Impressores.Strings[i]], False);
                   end;
               end;
 {              if NT7OK and INFORMATICA_OK then impresorapordefecto
                                           else FerError('No s''ha pogut posar la impressora per defecte.' + NLine +
                                                         'Actualitzeu-la manualment o aviseu a INFORMÀTICA');         }
               Impressores.Free;
           end;
       end
   end
   else begin
       Print.EmptyTable;
//       Print.Close;
//       Action := caFree;
       Exit;  // imprimir de 12:30h a 7h -- fins gener 2020 era de 13h a 7h
   end;
   Print.EmptyTable;
//   Print.Close;

//   Action := caFree;
end;

procedure TwFitxaGestioLlits.FormCreate(Sender: TObject);
begin
    pc.ActivePage := tsLlits;
    PanelLlits.Execute('','');
    insertatllit := False;

    if wData.UsuariActiu.Codi = '' then PreguntaMetge;
    if wData.UsuariActiu.Codi = '' then Close;
    wMain.LastTraza := 0;
    wMain.StatusTraza := '';
    Print.Close;
    Print.Open;
    bloc := GutSelect('select max(bloc) from LOGDIETES',[]) + 1;

    MostrarUbicacio := False;
end;

procedure TwFitxaGestioLlits.consultaLlitsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    LlitDesti.EditValue     := Datos.FieldbyName('C_Llit').asString;
    C_PlantaDesti.EditValue := Datos.FieldbyName('Planta').asString;
    N_PlantaDesti.EditValue := Datos.FieldbyName('N_Planta').asString;
    plantaTipusDesti        := Datos.FieldbyName('PLANTA_TIPUS').asString;
end;

procedure TwFitxaGestioLlits.bCancelarClick(Sender: TObject);
begin
    mgCanviLlit.Visible := False;
end;


procedure TwFitxaGestioLlits.bAcceptarClick(Sender: TObject);
var
  Llit,text,LlitO,JSON: String;
  planta,pllit : string;
  HoraCanvis: TDateTime;  
begin
    if EsPle(C_PlantaDesti.EditValue) then
    begin
        if EsBuit(LlitDesti.EditValue)
        then Llit := 'NULL'
        else Llit := LlitDesti.EditValue; //'"'+LlitDesti.EditValue+'"';

        TRY GutExecute('update TRACTAMENTS set C_LLIT = %s, C_PLANTA = "%s" where C_TRACTAMENT = "%s"',
                       [Llit, C_PlantaDesti.EditValue, elmeuTractament{panelLlits.Datos.FieldByName('C_Tractament').AsString}]);
        FINALLY
          mgCanviLlit.Visible := False;

          if (wData.UsuariActiu.Codi = '') then PreguntaMetge;
          wMain.StatusTraza := '';
          wMain.LastTraza := wData.ObraTrazaControl(StrToInt(Pacient.EditValue){panelLlits.Datos.fieldbyName('Historia').AsInteger}, Self.Caption,wMain.Aplica, StrToInt(elmeutractament){panelLlits.Datos.fieldbyName('C_Tractament').asInteger});
          wMain.AddStatusTraza('k');
          if (wMain.LastTraza <> 0) then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);

          // si es canvia a un llit de quiròfan (PLANTES.TIPUS='Q'), bloquejar el llit origen amb motiu "BQ-NHC"
          if EsBuit(LlitOrigen.EditValue)
          then begin
              LlitO := 'NULL';
              plantaTipusOrigen := '';
          end
          else begin
              LlitO := '"'+LlitOrigen.EditValue+'"';

              plantaTipusOrigen := GutSelect('select p.tipus from llits l             '+
                                             'join plantes p on l.c_planta=p.c_planta '+
                                             'where l.c_llit = %s                     ' ,[LlitO]);
          end;

          if (plantaTipusDesti = 'Q') and (plantaTipusOrigen <> 'Q')
          then GutExecute('INSERT INTO LLITBLOQUEIG(C_LLIT, DATA_INICI, MOTIU_BLOQUEIG) VALUES(%s, "NOW", "%s")',
                          [LlitO, 'BQ-'+laMevaHistoria]);

          // Farmatools - missatge canvi de llit
          if FT_ON and (Llit <> 'NULL') then
          begin
              JSON := '{'+nline+
                      Format('''nhc1'':{ ''nhc'':%s, ''tractament'':%s, ''planta'':''%s'', ''llit'':%s}',
                             [Pacient.EditValue,elMeuTractament,C_PlantaDesti.EditValue,Llit])+nline+
                      '}';

              GutExecute('insert into HL7_LOG(TAULA,PK_VALOR,C_MISSATGE,ACCIO,PAFECTATS,DATA,INFO)'+
                         '             VALUES("LLITS",%s,"ADT_A02","M","M","NOW","%s")', [Llit,JSON]);
          end;

          qDieta.Close;
          qDieta.SQL[3] := 'WHERE F.NUM_HIST = '+Pacient.EditValue;
          qDieta.Open;

          if C_PlantaDesti.EditValue = '' then planta:='   ' else planta:= C_PlantaDesti.EditValue;
          if esBuit(LlitDesti.EditValue)  then pllit :='   ' else pllit := LlitDesti.EditValue;
          HoraCanvis:=NowServer;

          idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;

          if LlitOrigen.EditValue = '' then text := 'Sense canvis en la dieta. Assignació de llit.'
                                       else text := 'Sense canvis en la dieta. Canvi de llit. Llit antic: '+LlitOrigen.EditValue;

          // si té dieta assignada i no hi ha llit informat no imprimim                              
          if (qDieta.FieldByName('c_dieta').AsInteger >= 0) {and (pllit <> '   ')} then
          begin
              with Print do
              begin
                  Append;
                  FieldByName('historia' ).AsString := Pacient.EditValue;
                  FieldByName('planta'   ).AsString := planta;
                  FieldByName('llit'     ).AsString := pllit;
                  FieldByName('nom'      ).AsString := qDieta.FieldByName('pacient').AsString;
                  FieldByName('dieta'    ).AsString := qDieta.FieldByName('c_dieta').AsString+' - '+qDieta.FieldByName('n_codi').AsString;
                  FieldByName('obs'      ).AsString := qDieta.FieldByName('obs_dieta').asstring;
                  FieldByName('Modificat').AsString := text;
                  FieldByName('HoraDinar').AsString := qDieta.FieldByName('HORA_DINAR').AsString;
                  FieldByName('HoraCanvis').AsDateTime := HoraCanvis;
                  FieldByName('Ubicacio' ).AsString := qDieta.FieldByName('UBICACIO').AsString; 
                  Post;
              end;
          end;
          idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
          if qDieta.FieldByName('C_UBICACIO_DINAR').IsNull
          then
          GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                     'VALUES(%d,"%s","%s","%s","%s","%s",%d,"%s",%d,"%s","%s","%s","%s",NULL)',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                     wData.UsuariActiu.Codi,Pacient.EditValue,C_PlantaDesti.EditValue,pllit,
                     qDieta.FieldByName('c_dieta').AsInteger,qDieta.FieldByName('obs_dieta').AsString,bloc,text,
                     wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString])
          else
          GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                     'VALUES(%d,"%s","%s","%s","%s","%s",%d,"%s",%d,"%s","%s","%s","%s","%s")',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                     wData.UsuariActiu.Codi,Pacient.EditValue,C_PlantaDesti.EditValue,pllit,
                     qDieta.FieldByName('c_dieta').AsInteger,qDieta.FieldByName('obs_dieta').AsString,bloc,text,
                     wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString,qDieta.FieldByName('C_UBICACIO_DINAR').AsString]);

          panelLlits.RefreshSQL;
        END;
    end;
end;


procedure TwFitxaGestioLlits.panelLlitsAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
begin

    if not (Query.FieldbyName('Tipus').IsNull) then
    begin
        CASE Query.FieldbyName('Tipus').asString[1] OF
         'L': ColorBrush := clGreen;
         'O': ColorBrush := clWhite;
         'B': ColorBrush := clSilver;
         'T': ColorBrush := clAqua;
         'P': ColorBrush := $008080FF;  // ingressos provisionals
        END;

        if gdSelected in State then
        begin
          ColorBrush := clNavy;
          ColorFont  := clYellow;
        end;
    end;
end;


procedure TwFitxaGestioLlits.panelLlitsAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    bCanviLlit.Enabled   := (TeDretUsuari(wData.UsuariActiu.Codi,'M309,G250') or (Datos.FieldByName('PLANTA_TIPUS').AsString <> 'Q'))
                            and   (Datos.fieldbyname('Tipus').asString = 'O') or (Datos.fieldbyname('Tipus').asString = 'P');
    sbInterCanvi.Enabled := bCanviLlit.Enabled and (Datos.FieldByName('PLANTA_TIPUS').AsString <> 'Q');
    tbBQaUH.Enabled      := TeDretUsuari(wData.UsuariActiu.Codi,'M309,G250') and (Datos.FieldByName('PLANTA_TIPUS').AsString = 'Q') and (Datos.fieldbyname('Tipus').asString = 'O');
end;


procedure TwFitxaGestioLlits.consultaPlantesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    LlitDesti.EditValue     := '';
    C_PlantaDesti.EditValue := Datos.FieldbyName('C_Planta').asString;
    N_PlantaDesti.EditValue := Datos.FieldbyName('N_Planta').asString;
end;


procedure TwFitxaGestioLlits.C_PlantaDestiChange(Sender: TObject);
begin
    bAcceptar.Enabled := EsPle(C_PlantaDesti.EditValue);
    if EsBuit(C_PlantaDesti.EditValue) then N_PlantaDesti.EditValue := '';
end;


procedure TwFitxaGestioLlits.LlitDestiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if ((Key = VK_RETURN ) and  EsPle(LlitDesti.EditValue)) then AutocompletarLlit;
end;


procedure TwFitxaGestioLlits.pcChange(Sender: TObject);
begin
    if (PC.ActivePage = tsLlits) then panelLlits.RefreshSQL

    else if (PC.ActivePage = tsBloqueig) then
    begin
        qLlitsBloqueig.Open;
        bBloqueigs.Open;
    end

    else if (PC.ActivePage = tsPlantesiLlits) then
    begin
        bPlantes.Open;
        bLlits.Open;
        bTancaments.Open;
    end
end;


procedure TwFitxaGestioLlits.bAfegirBloqueigClick(Sender: TObject);
var
  condicio: String;
  DesDe, Fins: TDateTime;
  tancat: Boolean;
  hist: Integer;
  JaBloquejat: Boolean;
begin

    if EsBuit(FiltreBloqueig.Valor1) then
    begin
      FerError('* * CAL QUE INDIQUEU LA DATA D''INICI DE BLOQUEIG * *');
      Exit;
    end
    else DesDe := StrToDate(FiltreBloqueig.Valor1);

    if EsBuit(cMotiu.EditValue) then
    begin
      FerError(' * *  CAL QUE INDIQUEU EL MOTIU DE BLOQUEIG * * ');
      Exit;
    end;

    if (cMotiu.EditValue = '9') and EsBuit(MotiuAltres.Text) then
    begin
      FerError(' * *  CAL QUE ESPECIFIQUEU EL MOTIU "ALTRES"  * * ');
      Exit;
    end;

    condicio := '';
    if not EsBuit(FiltreBloqueig.Valor2)
    then begin
        Fins := StrToDate(FiltreBloqueig.Valor2);
        condicio := 'and %s <= "' + FormatDateTime('dd.mm.yyyy', Fins) + '" ';   // %s = DATA_INGRES o DATA_INICI
    end;


    // Si el llit té un tancament que coincideix amb les dates introduïdes, no deixem bloquejar-lo:
    tancat := (0 < GutSelect('select COUNT(*) from LLITTANCAMENT ' +
                             'where C_LLIT = "%s" ' +
                              Format(condicio, ['DATA_INICI']) +
                              'and (DATA_FI >= "%s" or DATA_FI is NULL)',
                              [qLlitsBloqueig.FieldByName('c_llit').AsString, FormatDateTime('dd.mm.yyyy', DesDe)]));

    if tancat then
    begin
        FerError('El llit %s estava tancat en aquestes dates.', [qLlitsBloqueig.FieldByName('c_llit').AsString]);
        Exit;
    end;


    // Si el llit està associat a algun tractament actiu durant les dates del bloqueig, no el deixem bloquejar
    hist := GutSelect('select C_HISTORIA from TRACTAMENTS ' +
                      'where C_LLIT = "%s" ' +
                       Format(condicio, ['DATA_INGRES']) +
                      'and (DATA_ALTA >= "%s" or DATA_ALTA is NULL)',
                      [qLlitsBloqueig.FieldByName('c_llit').AsString, FormatDateTime('dd.mm.yyyy', DesDe)]);

    if (hist > 0) then
    begin
        FerError('No es pot bloquejar un llit ocupat durant les dates de bloqueig (història %d)', [hist]);
        Exit;
    end;


    // Si el llit ja té un tancament per aquestes dates, tampoc deixem:
    JaBloquejat := (0 < GutSelect('select COUNT(*) from LLITBLOQUEIG ' +
                                  'where C_LLIT = "%s" ' +
                                   Format(condicio, ['DATA_INICI']) +
                                  'and (DATA_FI >= "%s" or DATA_FI is NULL)',
                                   [qLlitsBloqueig.FieldByName('c_llit').AsString, FormatDateTime('dd.mm.yyyy', DesDe)]));

    if JaBloquejat then
    begin
        FerError('El llit %s ja té un bloqueig que se solapa amb aquestes dates', [qLlitsBloqueig.FieldByName('c_llit').AsString]);
        Exit;
    end;

    // Si no han entrat data final de bloqueig o aquesta és futura, aviso que el llit quedarà bloquejat
    if (condicio = '') or (Fins >= DateServer)
    then if not AvisoSN(Format('El llit %s quedarà bloquejat. Voleu continuar?', [qLlitsBloqueig.FieldByName('c_llit').AsString])) then Exit;

    bBloqueigs.Insert;
    bBloqueigs.FieldbyName('Data_Inici').AsDateTime := DesDe;

    if (condicio = '') then bBloqueigs.FieldbyName('Data_fi').Clear
                       else bBloqueigs.FieldbyName('Data_Fi').AsDateTime := Fins;
    bBloqueigs.FieldbyName('C_Motiu').AsString := cMotiu.EditValue;
    bBloqueigs.FieldbyName('Motiu_Bloqueig').AsString := MotiuAltres.Text;
    bBloqueigs.Post;

    FiltreBloqueig.Valor1 := '';
    FiltreBloqueig.Valor2 := '';
    cMotiu.EditValue      := '';
    MotiuAltres.Text      := '';
    lMotiu.Caption        := '';
end;


procedure TwFitxaGestioLlits.qLlitsBloqueigAfterScroll(DataSet: TDataSet);
begin
    FiltreBloqueig.Valor1 := '';
    FiltreBloqueig.Valor2 := '';
    cMotiu.EditValue      := '';
    MotiuAltres.Text      := '';
    lMotiu.Caption        := '';
end;

procedure TwFitxaGestioLlits.bCanviLlitClick(Sender: TObject);
begin
    if PotFerCanviLlit then
    begin
        CenterinClient(mgCanviLlit);
        Pacient.EditValue        := '';
        NombPacient.EditValue    := '';

        LlitOrigen.EditValue     := '';
        C_PlantaOrigen.EditValue := '';
        N_PlantaOrigen.EditValue := '';

        LlitDesti.EditValue     := '';
        C_PlantaDesti.EditValue := '';
        N_PlantaDesti.EditValue := '';

        mgCanviLlit.Visible := True;

        Pacient.EditValue        := PanelLlits.Datos.fieldbyName('Historia' ).asString;
        NombPacient.EditValue    := PanelLlits.Datos.fieldbyName('Pacient').asString;

        LlitOrigen.EditValue     := PanelLlits.Datos.fieldbyName('C_LLit').asString;
        C_PlantaOrigen.EditValue := PanelLlits.Datos.fieldbyName('Planta').asString;
        N_PlantaOrigen.EditValue := PanelLlits.Datos.fieldbyName('N_Planta').asString;
        elMeuTractament          := PanelLlits.Datos.FieldByName('C_Tractament').AsString;
        laMevaHistoria           := PanelLlits.Datos.FieldByName('Historia').AsString;
    end
    else begin
        FerError(Error1);
        Exit;
    end;
end;


procedure TwFitxaGestioLlits.panelLlitsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    {if mgIntercanviLlits.Visible then
    begin
        if IntLLD1.Tag = 0 then
        begin
           IntLLD1.Tag := 1;
           HistoriaIntercanvi1.EditValue := panelLlits.Datos.FieldbyName('Historia').asString +' - '+ panelLlits.Datos.FieldbyName('Pacient').asString;
           IntLLD1.EditValue  := panelLlits.Datos.FieldbyName('C_Llit').asString;
           IntPLD1.EditValue  := panelLlits.Datos.FieldbyName('Planta').asString;
           IntDESD1.EditValue := panelLlits.Datos.FieldbyName('N_Planta').asString;
           Tractament1        := panelLlits.Datos.FieldbyName('C_Tractament').asString;
           hc1                := panelLlits.Datos.FieldbyName('historia').asInteger;
        end
        else
        begin
           IntLLD2.Tag := 1;
           HistoriaIntercanvi2.EditValue := panelLlits.Datos.FieldbyName('Historia').asString +' - '+ panelLlits.Datos.FieldbyName('Pacient').asString;
           IntLLD2.EditValue  := panelLlits.Datos.FieldbyName('C_Llit').asString;
           IntPLD2.EditValue  := panelLlits.Datos.FieldbyName('Planta').asString;
           IntDESD2.EditValue := panelLlits.Datos.FieldbyName('N_Planta').asString;
           Tractament2        := panelLlits.Datos.FieldbyName('C_Tractament').asString;
           hc2                := panelLlits.Datos.FieldbyName('historia').asInteger;
           bAceptar2.Enabled  := True;
        end;
    end;

    if not (mgIntercanviLlits.Visible) then if bCanviLlit.Enabled then bCanviLlit.Click;  }
end;


procedure TwFitxaGestioLlits.AutocompletarLlit;
var
  Encontrado : String;
  qLlit: TQuery;
begin

    if Main.ComprobarLLit(LlitDesti.EditValue) then
    begin

        Encontrado := GutSelect('select C_LLIT from P_ESPERA_LLITS(NULL, "S") where C_LLIT = "%s"', [LlitDesti.EditValue]);

        if EsPle(Encontrado) then
        begin
            qllit := TQuery.Create(Self);
            TRY
              qLLit.DatabaseName := 'interna';
              qLLit.SQL.Text := 'select C_LLIT, PLANTA, N_PLANTA from P_ESPERA_LLITS(NULL, "S") where C_LLIT = :llit';
              qLLit.ParamByName('llit').ParamType := ptInput;
              qLLit.ParamByName('llit').DataType := ftString;
              qLlit.ParamByName('llit').AsString := Encontrado;
              qLLit.Open;
              C_PlantaDesti.EditValue := qLLit.FieldbyName('Planta').AsString;
              N_PlantaDesti.EditValue := qLLit.FieldbyName('N_Planta').AsString;
              qLLit.Close;
            FINALLY
              qLLit.Free;
            END;
            bAcceptar.Enabled := True;
        end
        else begin
            FerError(' El llit introduït no existeix o no està disponible');
            LlitDesti.EditValue := '';
            LlitDesti.SetFocus;
            bAcceptar.Enabled := False;
        end;
    end
    else begin
        FerError('* * EL LLIT INTRODUÏT NO ESTÀ DISPONIBLE * *');
        Exit;
    end;

end;


procedure TwFitxaGestioLlits.LlitDestiExit(Sender: TObject);
begin
    if EsPle(LlitDesti.EditValue) then AutoCompletarLlit;
end;


procedure TwFitxaGestioLlits.bCancelar2Click(Sender: TObject);
begin

    mgIntercanviLlits.Visible := False;

    IntLLD1.Tag := 0;
    IntLLD1.EditValue  := '';
    IntPLD1.EditValue  := '';
    IntDESD1.EditValue := '';
    HistoriaIntercanvi1.EditValue  := '';

    IntLLD2.Tag := 0;
    IntLLD2.EditValue  := '';
    IntPLD2.EditValue  := '';
    IntDESD2.EditValue := '';
    HistoriaIntercanvi2.EditValue  := '';

    sbInterCanvi.Down := False;
    bAceptar2.Enabled := False;

end;

procedure TwFitxaGestioLlits.sbIntercanviClick(Sender: TObject);
begin
    if PotFerCanviLlit then
    begin
        CenterInClient(mgIntercanviLlits);
        mgIntercanviLlits.Visible := sbIntercanvi.Down;
        if not sbIntercanvi.Down then bCancelar2.Click;

        if IntLLD1.tag = 0 then
        begin
            IntLLD1.Tag := 1;
            HistoriaIntercanvi1.EditValue := panelLlits.Datos.FieldbyName('Historia').asString +' - '+ panelLlits.Datos.FieldbyName('Pacient').asString;
            IntLLD1.EditValue  := panelLlits.Datos.FieldbyName('C_Llit').asString;
            IntPLD1.EditValue  := panelLlits.Datos.FieldbyName('Planta').asString;
            IntDESD1.EditValue := panelLlits.Datos.FieldbyName('N_Planta').asString;
            Tractament1        := panelLlits.Datos.FieldbyName('C_Tractament').asString;
            hc1                := panelLlits.Datos.FieldbyName('historia').asInteger;   
        end;
    end
    else begin
        FerError(Error1);
        Exit;
    end;
end;


procedure TwFitxaGestioLlits.bAceptar2Click(Sender: TObject);
var
  planta1,planta2,Llit1,llit2,text,JSON : string;
  HoraCanvis: TDateTime;
begin
    // Si el llit està tancat no permetre fer l'intercanvi de llits
//    if (GutSelect('select C_ESTAT from LLITS where C_LLIT = "%s"', [IntLLD2.EditValue]) = 'T') then
    if (GutSelect('SELECT COUNT(*) FROM LLITTANCAMENT WHERE (C_LLIT = %s) AND (DATA_INICI<="TODAY" AND '+
                  '(DATA_FI>"TODAY" OR DATA_FI IS NULL))',[IntLLD2.EditValue])<>0) then
    begin
        FerError('No es pot fer un intercanvi de llits si el destí està tancat');
        Exit;
    end;

    TRY
       WaitOn('Fent canvi de llit...');

       if esBuit(Tractament1)       then FerError('Origen sense prestació. Fer canvi de llit.',True);
       if esBuit(Tractament2)       then FerError('Destí sense prestació. Fer canvi de llit.',True);

       if esBuit(IntLLD2.EditValue) then LLit2   := 'NULL'
                                    else Llit2   := IntLLD2.EditValue;
       if esBuit(IntPLD2.EditValue) then Planta2 := 'NULL'
                                    else Planta2 := IntPLD2.EditValue;

       GutExecute('update TRACTAMENTS set C_LLIT = %s, C_PLANTA = "%s" where C_TRACTAMENT = %s',
                  [Llit2 {IntLLD2.EditValue}, Planta2 {IntPLD2.EditValue}, Tractament1]);

       if esBuit(IntLLD1.EditValue) then LLit1   := 'NULL'
                                    else Llit1   := IntLLD1.EditValue;
       if esBuit(IntPLD1.EditValue) then Planta1 := 'NULL'
                                    else Planta1 := IntPLD1.EditValue;

       GutExecute('update TRACTAMENTS set C_LLIT = %s, C_PLANTA = "%s" where C_TRACTAMENT = %s',
                  [Llit1 {IntLLD1.EditValue}, Planta1 {IntPLD1.EditValue}, Tractament2]);

      // Farmatools - missatge intercanvi de llits
      if FT_ON then
      begin
          JSON := '{'+nline+
                  Format('''nhc1'':{ ''nhc'':%d, ''tractament'':%s, ''planta'':''%s'', ''llit'':%s},',[hc1,tractament1,planta2,llit2])+nline+
                  Format('''nhc2'':{ ''nhc'':%d, ''tractament'':%s, ''planta'':''%s'', ''llit'':%s} ',[hc2,tractament2,planta1,llit1])+nline+
                  '}';

          GutExecute('insert into HL7_LOG(TAULA,PK_VALOR,C_MISSATGE,ACCIO,PAFECTATS,DATA,INFO)'+
                     '             VALUES("LLITS",%s,"ADT_A17","M","M","NOW","%s")', [Llit2,JSON]);
      end;

      // origen
      qDieta.Close;
      qDieta.SQL[3] := 'WHERE F.NUM_HIST = '+IntToStr(hc1);
      qDieta.Open;

      HoraCanvis:=NowServer;

      idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
      text := 'Sense canvis en la dieta. Intercanvi de llit. Llit antic: '+IntLLD1.EditValue;

      // si té dieta assignada i no hi ha llit informat no imprimim
      if (qDieta.FieldByName('c_dieta').AsInteger >= 0) {and (pllit <> '   ')} then
      begin
          with Print do
          begin
              Append;
              FieldByName('historia' ).AsInteger := hc1;
              FieldByName('planta'   ).AsString  := planta2;
              FieldByName('llit'     ).AsString  := llit2;
              FieldByName('nom'      ).AsString  := qDieta.FieldByName('pacient').AsString;
              FieldByName('dieta'    ).AsString  := qDieta.FieldByName('c_dieta').AsString+' - '+qDieta.FieldByName('n_codi').AsString;
              FieldByName('obs'      ).AsString  := qDieta.FieldByName('obs_dieta').asstring;
              FieldByName('Modificat').AsString  := text;
              FieldByName('HoraDinar').AsString  := qDieta.FieldByName('HORA_DINAR').AsString;
              FieldByName('HoraCanvis').AsDateTime := HoraCanvis;
              FieldByName('Ubicacio' ).AsString  := qDieta.FieldByName('UBICACIO').AsString;
              Post;
          end;
      end;
      idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
      if qDieta.FieldByName('C_UBICACIO_DINAR').IsNull
      then
      GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                 'VALUES(%d,"%s","%s",%d,"%s","%s",%d,"%s",%d,"%s","%s","%s","%s",NULL)',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                 wData.UsuariActiu.Codi,hc1,planta2,llit2,qDieta.FieldByName('c_dieta').AsInteger,qDieta.FieldByName('obs_dieta').AsString,
                 bloc,text,wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString])
      else
      GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                 'VALUES(%d,"%s","%s",%d,"%s","%s",%d,"%s",%d,"%s","%s","%s","%s","%s")',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                 wData.UsuariActiu.Codi,hc1,planta2,llit2,qDieta.FieldByName('c_dieta').AsInteger,qDieta.FieldByName('obs_dieta').AsString,
                 bloc,text,wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString,qDieta.FieldByName('C_UBICACIO_DINAR').AsString]);

      // destí
      qDieta.Close;
      qDieta.SQL[3] := 'WHERE F.NUM_HIST = '+IntToStr(hc2);
      qDieta.Open;

      idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
      text := 'Sense canvis en la dieta. Intercanvi de llit. Llit antic: '+IntLLD2.EditValue;

      // si té dieta assignada i no hi ha llit informat no imprimim
      if (qDieta.FieldByName('c_dieta').AsInteger >= 0) {and (pllit <> '   ')} then
      begin
          with Print do
          begin
              Append;
              FieldByName('historia' ).AsInteger := hc2;
              FieldByName('planta'   ).AsString  := planta1;
              FieldByName('llit'     ).AsString  := llit1;
              FieldByName('nom'      ).AsString  := qDieta.FieldByName('pacient').AsString;
              FieldByName('dieta'    ).AsString  := qDieta.FieldByName('c_dieta').AsString+' - '+qDieta.FieldByName('n_codi').AsString;
              FieldByName('obs'      ).AsString  := qDieta.FieldByName('obs_dieta').asstring;
              FieldByName('Modificat').AsString  := text;
              FieldByName('Horadinar').AsString := qDieta.FieldByName('HORA_DINAR').AsString;
              FieldByName('HoraCanvis').AsDateTime := HoraCanvis;
              FieldByName('Ubicacio' ).AsString  := qDieta.FieldByName('UBICACIO').AsString;
              Post;
          end;
      end;
      idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
      if qDieta.FieldByName('C_UBICACIO_DINAR').IsNull
      then
      GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                 'VALUES(%d,"%s","%s",%d,"%s","%s",%d,"%s",%d,"%s","%s","%s","%s",NULL)',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                 wData.UsuariActiu.Codi,hc2,planta1,llit1,qDieta.FieldByName('c_dieta').AsInteger,qDieta.FieldByName('obs_dieta').AsString,
                 bloc,text,wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString])
      else
      GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                 'VALUES(%d,"%s","%s",%d,"%s","%s",%d,"%s",%d,"%s","%s","%s","%s","%s")',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                 wData.UsuariActiu.Codi,hc2,planta1,llit1,qDieta.FieldByName('c_dieta').AsInteger,qDieta.FieldByName('obs_dieta').AsString,
                 bloc,text,wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString,qDieta.FieldByName('C_UBICACIO_DINAR').AsString]);
    FINALLY
       WaitOff;
       if wData.UsuariActiu.Codi = '' then PreguntaMetge;
       wMain.StatusTraza := '';
       wMain.LastTraza := wData.ObraTrazaControl(hc1,Self.Caption,wMain.Aplica,StrToInt(Tractament1));
       wMain.AddStatusTraza('k');
       if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);
       wMain.StatusTraza := '';
       wMain.LastTraza := wData.ObraTrazaControl(hc2,Self.Caption,wMain.Aplica,StrToInt(Tractament2));
       wMain.AddStatusTraza('k');
       if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);
       bCancelar2.Click;
       panelLlits.refreshSQL;
    END;
end;


procedure TwFitxaGestioLlits.LlitDestiAlConsultar(Sender: TObject);
begin
    if TeDretUsuari(wData.UsuariActiu.Codi,'M311,G251')
    then begin
        if GutSelect('select p.tipus from llits l             '+
                     'join plantes p on l.c_planta=p.c_planta '+
                     'where l.c_llit = %s                     ' ,[LlitOrigen.EditValue]) = 'Q'
        then begin
            ConsultaLlits.SqlDic[2]  := 'WHERE (TIPUS = "L" ';
            ConsultaLlits.SqlDic[3]  := 'OR NOT DATA_ALTA IS NULL) AND (PLANTA_TIPUS="Q") ';
            ConsultaLlits.SqlDic[11] := 'FROM PLANTES P WHERE P.TIPUS="Q" ';
        end
        else begin
            ConsultaLlits.SqlDic[2]  := 'WHERE (TIPUS = "L" ';
            ConsultaLlits.SqlDic[3]  := 'OR NOT DATA_ALTA IS NULL) ';
            ConsultaLlits.SqlDic[11] := 'FROM PLANTES P ';
        end;
    end
    else begin
        ConsultaLlits.SqlDic[2]  := 'WHERE (TIPUS = "L" ';
        ConsultaLlits.SqlDic[3]  := 'OR NOT DATA_ALTA IS NULL) AND (PLANTA_TIPUS<>"Q") ';
        ConsultaLlits.SqlDic[11] := 'FROM PLANTES P WHERE P.TIPUS<>"Q" ';
    end;

    ConsultaLlits.ExecuteModal('','');
end;


procedure TwFitxaGestioLlits.HYGrid2AlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
begin
    ColorFont := clBlack;
    CASE Datos.FieldbyName('Tipus').asString[1] OF
       'L': ColorBrush := clGreen;
       'O': ColorBrush := clWhite;
       'B': ColorBrush := clGray;
       'T': ColorBrush := clAqua;
    END;

    if gdSelected in State then
    begin
        ColorFont  := clYellow;
        ColorBrush := ClNavy;
    end;
end;


procedure TwFitxaGestioLlits.gLlitsAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
begin
    {if (Datos.FieldByName('c_estat').asstring = 'T') then ColorBrush := clAqua
                                                     else ColorBrush := clWhite;}
    if (Datos.FieldByName('Tancament').AsInteger = 0) then ColorBrush := clWhite
                                                      else ColorBrush := clAqua;
    ColorFont := clBlack;
end;


procedure TwFitxaGestioLlits.bLlitsBeforePost(DataSet: TDataSet);
begin
    insertatllit := (bLlits.State = dsInsert);
end;


procedure TwFitxaGestioLlits.bLlitsAfterScroll(DataSet: TDataSet);
begin
    bAfegirTancament.Enabled     := False;
    bFinalitzarTancament.Enabled := False;
end;


procedure TwFitxaGestioLlits.panelLlitsAlAfterExcel(Sender: TObject);
begin
    if wMain.LastTraza=0 then wMain.LastTraza := wData.ObraTrazaControl(0,Self.Name,wMain.Aplica);
    wMain.AddStatusTraza('x');
end;


procedure TwFitxaGestioLlits.panelLlitsAlAfterPrint(Sender: TObject);
begin
    if wMain.LastTraza=0 then wMain.LastTraza := wData.ObraTrazaControl(0,Self.Name,wMain.Aplica);
    wMain.AddStatusTraza('P');
end;


procedure TwFitxaGestioLlits.panelLlitsAlBeforePrint(Sender: TObject);
begin
    if wData.UsuariActiu.Codi = '' then PreguntaMetge;
    if wData.UsuariActiu.Codi = '' then Abort;
end;

procedure TwFitxaGestioLlits.FiltreTancamentChange(Sender: TObject);
begin
    bAfegirTancament.Enabled     := EsPle(FiltreTancament.Valor1);
    bFinalitzarTancament.Enabled := EsPle(FiltreTancament.Valor2);
end;

procedure TwFitxaGestioLlits.bAfegirTancamentClick(Sender: TObject);
var
  condicio: String;
  DesDe, Fins: TDateTime;
  hist: Integer;
  JaTancat: Boolean;
begin

    if EsBuit(FiltreTancament.Valor1) then
    begin
      FerError('* * CAL QUE INDIQUEU LA DATA D''INICI DE TANCAMENT * *');
      Exit;
    end
    else DesDe := StrToDate(FiltreTancament.Valor1);

    // no es poden tancar llits amb data inici anterior a una setmana
    if (DesDe < DateServer - 7) then    // juliol 2020 - EAraujo demana treure aquesta restriccio
    begin
        // FerError('No es pot tancar el llit %s amb data inici anterior a 7 dies', [bLlits.FieldByName('c_llit').AsString]);
        if not AvisoSN('Data inici anterior a 7 dies. Si continueu amb els canvis assumiu la responsabilitat dels possibles efectes en la memoria institucional i les estadistiques. Voleu continuar (S/N)?') then
        Exit;
    end;

    condicio := '';
    if not EsBuit(FiltreTancament.Valor2)
    then begin
        Fins := StrToDate(FiltreTancament.Valor2);
        condicio := 'and %s <= "' + FormatDateTime('dd.mm.yyyy', Fins) + '" ';   // %s = DATA_INGRES o DATA_INICI
        if (Desde > Fins) then
        begin
            FerError('La data fi del tancament no pot ser anterior a la data inici.', []);
            Exit;
        end;
    end;

    // Si el llit està associat a algun tractament actiu durant les dates del tancament, no el deixem tancar
    hist := GutSelect('select C_HISTORIA from TRACTAMENTS ' +
                      'where C_LLIT = "%s" ' +
                       Format(condicio, ['DATA_INGRES']) +
                      'and (DATA_ALTA >= "%s" or DATA_ALTA is NULL)',
                      [bLlits.FieldByName('c_llit').AsString, FormatDateTime('dd.mm.yyyy', DesDe)]);

    if (hist > 0) then
    begin
        FerError('No es pot tancar un llit ocupat durant les dates de tancament (història %d)', [hist]);
        Exit;
    end;


    // Si el llit ja té un tancament per aquestes dates, tampoc deixem:
    JaTancat := (0 < GutSelect('select COUNT(*) from LLITTANCAMENT ' +
                               'where C_LLIT = "%s" ' +
                                Format(condicio, ['DATA_INICI']) +
                               'and (DATA_FI >= "%s" or DATA_FI is NULL)',
                               [bLlits.FieldByName('c_llit').AsString, FormatDateTime('dd.mm.yyyy', DesDe)]));

    if JaTancat then
    begin
        FerError('El llit %s ja té un tancament que se solapa amb aquestes dates', [bLlits.FieldByName('c_llit').AsString]);
        Exit;
    end;

    // Si no han entrat data final de tancament o aquesta és futura, aviso que el llit quedarà tancat
    if (condicio = '') or (Fins >= DateServer)
    then if not AvisoSN(Format('El llit %s quedarà tancat. Voleu continuar?', [bLlits.FieldByName('c_llit').AsString])) then Exit;

    bTancaments.Insert;
    bTancaments.FieldByName('Data_Inici').AsDateTime := DesDe;

    if (condicio = '') then bTancaments.FieldbyName('Data_fi').Clear
                       else bTancaments.FieldbyName('Data_Fi').AsDateTime := Fins;
    bTancaments.Post;

    bAfegirTancament.Enabled := False;
    FiltreTancament.Valor1 := '';
    FiltreTancament.Valor2 := '';
end;


procedure TwFitxaGestioLlits.SpeedButton1Click(Sender: TObject);
begin
    cTancaments.ExecuteModal;
end;


procedure TwFitxaGestioLlits.cIngressatsAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    if mgCanviLlit.Visible then
    begin
        Pacient.EditValue        := Datos.fieldbyName('Historia' ).asString;
        NombPacient.EditValue    := Datos.fieldbyName('Pacient').asString;

        LlitOrigen.EditValue     := Datos.fieldbyName('C_LLit').asString;
        C_PlantaOrigen.EditValue := Datos.fieldbyName('Planta').asString;
        N_PlantaOrigen.EditValue := Datos.fieldbyName('N_Planta').asString;

        elMeuTractament          := Datos.FieldByName('C_Tractament').AsString;
        laMevaHistoria           := Datos.FieldByName('Historia').AsString;
    end
    else if mgIntercanviLlits.Visible then
    begin
        if IntLLD1.Tag = 0 then
        begin
           IntLLD1.Tag := 1;
           HistoriaIntercanvi1.EditValue := Datos.FieldbyName('Historia').asString +' - '+ Datos.FieldbyName('Pacient').asString;
           IntLLD1.EditValue  := Datos.FieldbyName('C_Llit').asString;
           IntPLD1.EditValue  := Datos.FieldbyName('Planta').asString;
           IntDESD1.EditValue := Datos.FieldbyName('N_Planta').asString;
           Tractament1        := Datos.FieldbyName('C_Tractament').asString;
           hc1                := Datos.FieldbyName('historia').asInteger;
        end
        else begin
           IntLLD2.Tag := 1;
           HistoriaIntercanvi2.EditValue := Datos.FieldbyName('Historia').asString +' - '+ Datos.FieldbyName('Pacient').asString;
           IntLLD2.EditValue  := Datos.FieldbyName('C_Llit').asString;
           IntPLD2.EditValue  := Datos.FieldbyName('Planta').asString;
           IntDESD2.EditValue := Datos.FieldbyName('N_Planta').asString;
           Tractament2        := Datos.FieldbyName('C_Tractament').asString;
           hc2                := Datos.FieldbyName('historia').asInteger;
           bAceptar2.Enabled  := True;
        end;
    end;
end;


procedure TwFitxaGestioLlits.IntLLD1AlConsultar(Sender: TObject);
begin
    IntLLD1.Tag := 0; IntLLD2.Tag := 1;
    cIngressats.SqlDic[2] := 'AND PLANTA_TIPUS<>"Q" ';
    cIngressats.ExecuteModal('','');
end;

procedure TwFitxaGestioLlits.IntLLD2AlConsultar(Sender: TObject);
begin
    IntLLD1.Tag := 1; IntLLD2.Tag := 0;
    cIngressats.SqlDic[2] := 'AND PLANTA_TIPUS<>"Q" ';
    cIngressats.ExecuteModal('','');
end;


procedure TwFitxaGestioLlits.bLlitsCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('Tancament').AsInteger := GutSelect('SELECT COUNT(*) FROM LLITTANCAMENT WHERE (C_LLIT = %s) '+
                                                          'AND (DATA_INICI<="TODAY" AND (DATA_FI>"TODAY" OR DATA_FI IS NULL))',
                                                          [DataSet.FieldByName('c_llit').AsString]);
end;

procedure TwFitxaGestioLlits.bTancamentsAfterScroll(DataSet: TDataSet);
begin
  HYGrid6.ReadOnly             := (not bTancaments.FieldByName('data_fi').IsNull) and (bTancaments.FieldByName('Data_Fi').AsDateTime < DateServer);
  HYGrid6.Columns[0].ReadOnly  := True;
  HYGrid6.Columns[1].ReadOnly  := True;
  bAfegirTancament.Enabled     := HYGrid6.ReadOnly;
  bFinalitzarTancament.Enabled := not HYGrid6.ReadOnly;
end;

procedure TwFitxaGestioLlits.bEnviarClick(Sender: TObject);
begin
  EnviarACuina;
end;

procedure TwFitxaGestioLlits.NoPrint(sender: TObject; var Value: String);
begin
  if not MostrarUbicacio then Value := '';
end;

procedure TwFitxaGestioLlits.bFinalitzarTancamentClick(Sender: TObject);
var
  hist: Integer;
  condicio: String;
  Fins: TDateTime;
begin
    if EsBuit(FiltreTancament.Valor2) then
    begin
      FerError('* * CAL QUE INDIQUEU LA DATA FINAL DE TANCAMENT * *');
      Exit;
    end
    else Fins := StrToDate(FiltreTancament.Valor2);

    if (bTancaments.FieldByName('DATA_inici').AsDateTime > Fins) then
    begin
        FerError('La data fi del tancament no pot ser anterior a la data inici.', []);
        Exit;
    end;

    condicio := 'and %s <= "' + FormatDateTime('dd.mm.yyyy', Fins) + '" ';   // %s = DATA_INGRES o DATA_INICI

    // Si el llit està associat a algun tractament actiu durant les dates del tancament, no el deixem tancar
    hist := GutSelect('select C_HISTORIA from TRACTAMENTS ' +
                      'where C_LLIT = "%s" ' +
                       Format(condicio, ['DATA_INGRES']) +
                      'and (DATA_ALTA >= "%s" or DATA_ALTA is NULL)',
                      [bLlits.FieldByName('c_llit').AsString, FormatDateTime('dd.mm.yyyy', bTancaments.FieldByName('DATA_inici').AsDateTime)]);

    if (hist > 0) then
    begin
        FerError('No es pot tancar un llit ocupat durant les dates de tancament (història %d)', [hist]);
        Exit;
    end;

    // només es pot finalitzar un tacament si està actiu
    if  (Fins >= DateServer-1)
    and AvisoSN(Format('Voleu finalitzar el tancament del llit "%s" (S/N)?',[bLlits.FieldByName('c_llit').AsString])) then
    begin
        bTancaments.Edit;
        bTancaments.FieldByName('Data_Fi').AsDateTime := Fins;
        bTancaments.Post;
        bFinalitzarTancament.Enabled := False;
        FiltreTancament.Valor1 := '';
        FiltreTancament.Valor2 := '';
    end
    else FerError('La data de tancament no pot ser anterior a AHIR (per les estadístiques de tancaments).'+NLine+
                  'Si ha de ser diferent, contacteu amb Sistemes d''Informació i Qualitat.',True);
end;

procedure TwFitxaGestioLlits.LlitOrigenAlConsultar(Sender: TObject);
begin
    if TeDretUsuari(wData.UsuariActiu.Codi,'M311,G251')
    then cIngressats.SqlDic[2] := ' '
    else cIngressats.SqlDic[2] := 'AND PLANTA_TIPUS<>"Q" ';

    cIngressats.ExecuteModal('','');
end;

procedure TwFitxaGestioLlits.tbBQaUHClick(Sender: TObject);
var
  Llit,Planta,Tractament: String;
begin                              
  // tornar al llit on estava ingressat abans de moure'l a un llit de quiròfan i desbloqujar el llit
  Llit       := GutSelect('select c_llit from LLITBLOQUEIG where (DATA_FI IS NULL OR (DATA_FI>="TODAY")) AND MOTIU_BLOQUEIG = "%s"',
                         ['BQ-'+panelLlits.Datos.FieldByName('Historia').AsString]);
  Planta     := GutSelect('SELECT C_PLANTA FROM LLITS WHERE C_LLIT="%s"',[Llit]);
  Tractament := panelLlits.Datos.FieldByName('C_Tractament').AsString;

  TRY
      GutExecute('Update Tractaments set C_Llit = %s, C_Planta = "%s" where C_Tractament = "%s"',[Llit, Planta, Tractament]);
      GutExecute('Update LlitBloqueig set Data_Fi = "NOW" where C_Llit = %s AND MOTIU_BLOQUEIG = "%s"',[Llit, 'BQ-'+panelLlits.Datos.FieldByName('Historia').AsString]);
  FINALLY
      panelLlits.RefreshSQL;
      panelLlits.datos.Locate('C_Tractament', Tractament, []);
  END;
end;

procedure TwFitxaGestioLlits.cMotiusAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    cMotiu.EditValue := Datos.FieldByName('C_Codi').AsString;
    lMotiu.Caption   := Datos.FieldByName('N_Codi').AsString;
    if Datos.FieldByName('R_Codi').AsString = 'S' then MotiuAltres.SetFocus;
end;

procedure TwFitxaGestioLlits.bBloqueigsBeforePost(DataSet: TDataSet);
begin
    if (not DataSet.FieldByName('Data_Fi').IsNull) and (DataSet.FieldByName('Data_Fi').AsDateTime < DataSet.FieldByName('Data_Inici').AsDateTime)
    then FerError('La data final del bloqueig no pot ser anterior a la data d''inici d''aquest',True);

    if DataSet.FieldByName('Motiu_Bloqueig').IsNull and (DataSet.FieldByName('MotiuBloqueig_R_Codi').AsString <> 'S')
    then DataSet.FieldByName('Motiu_Bloqueig').AsString := ' ';
end;

end.
