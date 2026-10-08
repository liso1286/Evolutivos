unit FitxaIngressats;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, HYDialogConsulta, ComCtrls, ToolWin, ActnList, HYEdit,
  StdCtrls, Buttons, Hy_Misc, db, Grids, dbGrids, dbTables, Variants,
  QRCtrls, QuickRpt, kbmMemTable;

type
  TwFitxaIngressats = class(TForm)
    pIngressats: HYPanelConsulta;
    Ingressats: TActionList;
    accLlitsBuits: TAction;
    accEditar: TAction;
    accCanvideLLit: TAction;
    accPreAlta: TAction;
    accAlta: TAction;
    accSortir: TAction;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    cLlitsBuits: THYConsulta;
    mgPassis: THyMoveGroupControl;
    Label2: TLabel;
    Filtro: THYEditFiltro;
    Panel4: TPanel;
    bAcceptar: TBitBtn;
    bCancelar: TBitBtn;
    panelHistoria: TPanel;
    Label1: TLabel;
    Pacient: THYTextEdit;
    NomPacient: THYTextEdit;
    consultaPlantes: THYConsulta;
    mgCanviLlit: THyMoveGroupControl;
    Panel3: TPanel;
    PacientCanvi: THYTextEdit;
    NombPacient: THYTextEdit;
    Panel2: TPanel;
    bAceptarCanvi: TBitBtn;
    bCancelarCanvi: TBitBtn;
    LlitOrigen: THYTextEdit;
    C_PlantaOrigen: THYTextEdit;
    N_PlantaOrigen: THYTextEdit;
    LlitDesti: THYTextEdit;
    C_PlantaDesti: THYTextEdit;
    N_PlantaDesti: THYTextEdit;
    qLLit: TQuery;
    dsLlit: TDataSource;
    tbEtiquetes: TToolButton;
    accImprimirEtiquetes: TAction;
    mgIntercanviLlits: THyMoveGroupControl;
    Panel10: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Image1: TImage;
    Image2: TImage;
    Panel11: TPanel;
    bAceptar2: TBitBtn;
    bCancelar2: TBitBtn;
    IntLLD2: THYTextEdit;
    IntPLD2: THYTextEdit;
    IntDESD2: THYTextEdit;
    IntLLD1: THYTextEdit;
    IntPLD1: THYTextEdit;
    IntDESD1: THYTextEdit;
    HistoriaIntercanvi1: THYTextEdit;
    HistoriaIntercanvi2: THYTextEdit;
    sbIntercanvi: TSpeedButton;
    ToolButton11: TToolButton;
    accFoto: TAction;
    qCentreFac: TQuery;
    Print: TkbmMemTable;
    Printhistoria: TStringField;
    Printplanta: TStringField;
    Printllit: TStringField;
    Printnom: TStringField;
    Printdieta: TStringField;
    PrintObs: TStringField;
    PrintModificat: TStringField;
    qDieta: TQuery;
    Panel8: TPanel;
    qrDieta: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    ToolButton12: TToolButton;
    cIngressats: THYConsulta;
    PrintHoraDinar: TStringField;
    PrintHoraCanvis: TDateTimeField;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    PrintUbicacio: TStringField;
    bEnviar: TToolButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    Panel7: TPanel;
    Label4: TLabel;
    Panel9: TPanel;
    Label5: TLabel;
    Panel12: TPanel;
    Label6: TLabel;
    Panel13: TPanel;
    Label7: TLabel;
    ToolButton4: TToolButton;
    accBQ_UH: TAction;
    procedure EnviarACuina;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure accSortirExecute(Sender: TObject);
    procedure accEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bAcceptarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure accLlitsBuitsExecute(Sender: TObject);
    procedure pIngressatsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure accCanvideLLitExecute(Sender: TObject);
    procedure bAceptarCanviClick(Sender: TObject);
    procedure bCancelarCanviClick(Sender: TObject);
    procedure accPreAltaExecute(Sender: TObject);
    procedure accAltaExecute(Sender: TObject);
    procedure pIngressatsAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure pIngressatsAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cLlitsBuitsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure consultaPlantesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure LlitDestiExit(Sender: TObject);
    procedure LlitDestiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure C_PlantaDestiChange(Sender: TObject);
    procedure accImprimirEtiquetesExecute(Sender: TObject);
    procedure bAceptar2Click(Sender: TObject);
    procedure bCancelar2Click(Sender: TObject);
    procedure sbIntercanviClick(Sender: TObject);
    procedure accFotoExecute(Sender: TObject);
    procedure pIngressatsConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
    procedure cIngressatsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure IntLLD1AlConsultar(Sender: TObject);
    procedure IntLLD2AlConsultar(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure NoPrint(sender: TObject; var Value: String);
    procedure LlitOrigenAlConsultar(Sender: TObject);
    procedure LlitDestiAlConsultar(Sender: TObject);
    procedure accBQ_UHExecute(Sender: TObject);
  private
    FechaDesde, FechaHasta :TDate;
    Tractament1, Tractament2: String;
    idlog,bloc: Integer;
    impressores: TStringList;
    elMeuTractament,laMevaHistoria,plantaTipusDesti,plantaTipusOrigen: String;
    MostrarUbicacio: Boolean;
    function NomesHistoria(text: String):String;
    procedure AutocompletarLlit;
  public
    hc1,hc2: Integer;
  end;

var
  wFitxaIngressats: TwFitxaIngressats;

implementation

uses Data, DataAdmisio, FitxaFiliacio, Funciones, Main, MostrarFoto,
     DataCodis, DataBasics, DialegSeleccioEtiquetesIngressats, utili16;

{$R *.DFM}

procedure TwFitxaIngressats.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   EnviarACuina;

   Print.Close;
   Action := caFree;
end;

procedure TwFitxaIngressats.EnviarACuina;
var
  i: integer;
  horaActual,minActual: string;
begin
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
                   If selectprinterQr(QrDieta,Impressores.Strings[i]) then
                   begin
                       qrDieta.Print;
                       // només si té dieta s'haurà imprès ==> només es marca com a imprès si té dieta (=tots els que estàn a PRINT)
                       Print.First;
                       while (not Print.Eof) do
                       begin
                           GutExecute('update LOGDIETES set PRINT_OK = "S", DATA_PRINT = "%s", LOGIN="%s" where bloc = %d and c_historia = %d',
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
    {           if NT7OK and INFORMATICA_OK then impresorapordefecto
                                           else FerError('No s''ha pogut posar la impressora per defecte.' + NLine +
                                                         'Actualitzeu-la manualment o aviseu a INFORMÀTICA');     }
               Impressores.Free;
           end;
       end;
   end
   else begin
       Print.EmptyTable;
//       Print.Close;
//       Action := caFree;
       Exit;  // imprimir de 12:30h a 7h
   end;

   Print.EmptyTable;
//   Print.Close;
//   Action := caFree;
end;

procedure TwFitxaIngressats.accSortirExecute(Sender: TObject);
begin
  Close;
end;

procedure TwFitxaIngressats.accEditarExecute(Sender: TObject);
begin
   if mgCanviLlit.Visible or mgIntercanviLlits.Visible then Exit;
   With TwFitxaFiliacio.Create(Application) do
   begin

      Caption := Format('Edició de la Filiació (%s)',
                       [pIngressats.Datos.FieldbyName('C_Historia').asString]);
      eNHCNovaHCE.Text := pIngressats.Datos.FieldbyName('C_Historia').asString;

      lPrestacio.EditValue := pIngressats.Datos.FieldbyName('C_Prestacio').asString+'-'+pIngressats.Datos.FieldbyName('N_Prestacio').asString;

      NUMESPERA := '-1';

      tFiliacio.Open;
      tFiliacio.FindKey( VarArrayof([pIngressats.Datos.FieldbyName('C_Historia').asVariant]));
      tTractaments.Open;
      tTractaments.FindKey( VarArrayof([pIngressats.Datos.FieldbyName('C_Tractament').asVariant]));
      tParent.Open;

      MostrarPaneles( pIngressats.Datos.FieldbyName('C_Prestacio').asString );

      consulta:=Self.Caption;  
   end;

end;


procedure TwFitxaIngressats.FormCreate(Sender: TObject);
begin

  if wMain.Nivell < 2 then
  begin
    accEditar.Enabled := False;
    accPreAlta.Enabled := False;
    accAlta.Enabled := False;
    pIngressats.VerExcel := False;

    pIngressats.CamposOculta.Add('N_Codi');
  end;

  If (TeDretAcces([74]) and not TeDretAcces([100])) then
  begin
      accFoto.Visible := True;
      Panel1.AutoSize := True;
      ToolBar1.AutoSize := True;
  end
  else begin
      accFoto.Visible := False;
      Panel1.AutoSize := False;
      Panel1.Width := 530;
      ToolBar1.AutoSize := False;
      ToolBar1.Width := 530;
  end;

  if TeDretAcces([79]) then pIngressats.VerExcel := True;  
  pIngressats.Execute('','');

  Print.Close;
  Print.Open;
  bloc := GutSelect('select max(bloc) from LOGDIETES',[]) + 1;

  MostrarUbicacio := False;
end;

procedure TwFitxaIngressats.bAcceptarClick(Sender: TObject);
begin
    GutExecute('Insert Into Passis (C_Historia, Inici, Fi) values ("%s","%s","%s")',
               [pIngressats.Datos.FieldbyName('C_Historia').asString,
                FechaIB(StrToDate(Filtro.Valor1)),
                FechaIB(StrToDate(Filtro.Valor2))]);

    pIngressats.RefreshSQL;
    mgPassis.visible     := False;
    Pacient.EditValue    := '';
    NomPacient.EditValue := '';
    Filtro.Valor1         := '';
    Filtro.Valor2         := '';
end;

procedure TwFitxaIngressats.bCancelarClick(Sender: TObject);
begin
  mgPassis.Visible := False;
  Pacient.EditValue := '';
  NomPacient.EditValue := '';
  Filtro.Valor1 := '';
  Filtro.Valor2 := '';
end;

procedure TwFitxaIngressats.accLlitsBuitsExecute(Sender: TObject);
begin
   if mgCanviLlit.Visible or mgIntercanviLlits.Visible then Exit;  
   cLlitsBuits.ExecuteChild;
end;

procedure TwFitxaIngressats.pIngressatsAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   if not (mgIntercanviLlits.Visible) and not (mgCanviLlit.Visible)
   then if accEditar.Enabled then accEditar.Execute;
end;


procedure TwFitxaIngressats.accCanvideLLitExecute(Sender: TObject);
var
  elMeuMetge: TMetge;
begin

   if mgIntercanviLlits.visible then bCancelar2.Click;

   if wData.UsuariActiu.Codi <> '' then elMeuMetge := wData.UsuariActiu
                                   else elMeumetge := PreguntaMetge;

   if TeDretMetge(elMeuMetge.Codi, [92])
   or (ComprovarForaHores(1) and TeDretMetge(elMeuMetge.Codi,[920])) then
   begin
      CenterinClient(mgCanviLlit);
      PacientCanvi.EditValue   := '';
      NombPacient.EditValue    := '';

      LlitOrigen.EditValue     := '';
      C_PlantaOrigen.EditValue := '';
      N_PlantaOrigen.EditValue := '';
      plantaTipusOrigen        := '';

      LlitDesti.EditValue     := '';
      C_PlantaDesti.EditValue := '';
      N_PlantaDesti.EditValue := '';
      plantaTipusDesti        := '';

      mgCanviLlit.Visible := True;

      PacientCanvi.EditValue   := pIngressats.Datos.fieldbyName('C_Historia' ).asString;
      NombPacient.EditValue    := pIngressats.Datos.fieldbyName('NomComplet').asString;

      LlitOrigen.EditValue     := pIngressats.Datos.fieldbyName('C_LLit').asString;
      C_PlantaOrigen.EditValue := pIngressats.Datos.fieldbyName('C_Planta').asString;
      N_PlantaOrigen.EditValue := pIngressats.Datos.fieldbyName('N_Planta').asString;
      plantaTipusOrigen        := pIngressats.Datos.fieldbyName('TIPUS').asString;

      elMeuTractament          := pIngressats.Datos.fieldbyName('C_Tractament').AsString;
      laMevaHistoria           := pIngressats.Datos.FieldByName('C_Historia').AsString;
   end
   else if (ElMeuMetge.Codi <> '') then FerError(Error1, True);
end;

procedure TwFitxaIngressats.bAceptarCanviClick(Sender: TObject);
var
  planta,pllit,Llit,text,LlitO,JSON : string;
  HoraCanvis: TDateTime;
begin
  if EsPle(C_PlantaDesti.EditValue) then
  begin
      if esBuit(LlitDesti.EditValue)
      then LLit := 'NULL'
      else Llit := LlitDesti.EditValue;

      try
          GutExecute('Update Tractaments set C_Llit = %s, C_Planta = "%s" where C_Tractament = "%s"',
                     [Llit, C_PlantaDesti.EditValue, elMeuTractament]);

          if wData.UsuariActiu.Codi = '' then PreguntaMetge; wMain.StatusTraza := '';
          wMain.LastTraza := wData.ObraTrazaControl(StrToInt(PacientCanvi.EditValue),Self.Caption,wMain.Aplica,StrToInt(elMeuTractament));
          wMain.AddStatusTraza('k');
          if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);

          // si un llit de planta es canvia a un llit de quiròfan, bloquejar el llit origen amb motiu "BQ-NHC"
          {if not EsBuit(LlitOrigen.EditValue) then
          begin
              LlitO := '"'+LlitOrigen.EditValue+'"';
              plantaTipusOrigen := GutSelect('select p.tipus from llits l             '+
                                             'join plantes p on l.c_planta=p.c_planta '+
                                             'where l.c_llit = %s                     ' ,[LlitO]);
          end
          else begin
              LlitO := 'NULL';
              plantaTipusOrigen := '';
          end;

          if (plantaTipusDesti = 'Q') and (plantaTipusOrigen <> 'Q') and (plantaTipusOrigen <> '')
          then GutExecute('INSERT INTO LLITBLOQUEIG(C_LLIT, DATA_INICI, MOTIU_BLOQUEIG) VALUES(%s, "NOW", "%s")',
                          [LlitO, 'BQ-'+laMevaHistoria])
          // els canvis de llit a quiròfan no els notifiquem a cuina. El menjar li hauran de portar a la seva habitació, no pas al quiròfan.
          else begin}
              qDieta.Close;
              qDieta.SQL[3] := 'WHERE F.NUM_HIST = '+PacientCanvi.EditValue;
              qDieta.Open;
              HoraCanvis := NowServer;

              if C_PlantaDesti.EditValue = '' then planta:='   ' else planta:= C_PlantaDesti.EditValue;
              if esBuit(LlitDesti.EditValue)  then pllit :='   ' else pllit := LlitDesti.EditValue;

              idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
              if LlitOrigen.EditValue = '' then text := 'Sense canvis en la dieta. Assignació de llit. '
                                           else text := 'Sense canvis en la dieta. Canvi de llit. Llit antic: '+LlitOrigen.EditValue;

              // si té dieta assignada i no hi ha llit informat no imprimim
              if (qDieta.FieldByName('c_dieta').AsInteger >= 0) then
              begin
                  with Print do
                  begin
                      Append;
                      FieldByName('historia' ).AsString := PacientCanvi.EditValue;
                      FieldByName('planta'   ).AsString := planta;
                      FieldByName('llit'     ).AsString := pllit;
                      FieldByName('nom'      ).AsString := qDieta.FieldByName('pacient').AsString;
                      FieldByName('dieta'    ).AsString := qDieta.FieldByName('c_dieta').AsString+' - '+qDieta.FieldByName('n_codi').AsString;
                      FieldByName('obs'      ).AsString := qDieta.FieldByName('obs_dieta').asstring;
                      FieldByName('Modificat').AsString := text;
                      FieldByName('HoraDinar').AsString := qDieta.FieldByName('HORA_DINAR').AsString;
                      FieldByName('HoraCanvis').AsDateTime := HoraCanvis;
                      FieldByName('Ubicacio' ).AsString := qDieta.FieldByName('Ubicacio').AsString;
                      Post;
                  end;
              end;
              idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
              if qDieta.FieldByName('C_UBICACIO_DINAR').IsNull
              then
              GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                         'VALUES(%d,"%s","%s","%s","%s","%s","%s","%s",%d,"%s","%s","%s","%s",NULL)',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                         wData.UsuariActiu.Codi,PacientCanvi.EditValue,C_PlantaDesti.EditValue,pllit,
                         qDieta.FieldByName('c_dieta').AsString,qDieta.FieldByName('obs_dieta').AsString,bloc,text,
                         wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString])
              else
              GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                         'VALUES(%d,"%s","%s","%s","%s","%s","%s","%s",%d,"%s","%s","%s","%s","%s")',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                         wData.UsuariActiu.Codi,PacientCanvi.EditValue,C_PlantaDesti.EditValue,pllit,
                         qDieta.FieldByName('c_dieta').AsString,qDieta.FieldByName('obs_dieta').AsString,bloc,text,
                         wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString,qDieta.FieldByName('C_UBICACIO_DINAR').AsString]);
          //end;

          // Farmatools - missatge canvi de llit
          if FT_ON then
          begin
              JSON := '{'+nline+
                      Format('''nhc1'':{ ''nhc'':%s, ''tractament'':%s, ''planta'':''%s'', ''llit'':%s}',
                             [laMevaHistoria,elMeuTractament,C_PlantaDesti.EditValue,Llit])+nline+
                      '}';

              GutExecute('insert into HL7_LOG(TAULA,PK_VALOR,C_MISSATGE,ACCIO,PAFECTATS,DATA,INFO)'+
                         '             VALUES("LLITS",%s,"ADT_A02","M","M","NOW","%s")', [Llit,JSON]);
          end;
      finally
           mgCanviLlit.Visible := False;
           pIngressats.RefreshSQL;
           pIngressats.datos.Locate('C_Tractament', elMeuTractament, []);
      end;
  end;
end;

procedure TwFitxaIngressats.bCancelarCanviClick(Sender: TObject);
begin
  mgCanviLlit.Visible := False;
end;

procedure TwFitxaIngressats.accPreAltaExecute(Sender: TObject);
begin
   if mgCanviLlit.Visible or mgIntercanviLlits.Visible then Exit;
   With TwFitxaFiliacio.Create(Application) do
   begin

      Caption := Format('Prealta a la Filiació (%s)',
                       [pIngressats.Datos.FieldbyName('C_Historia').asString]);
      eNHCNovaHCE.Text := pIngressats.Datos.FieldbyName('C_Historia').asString;

      EnPrealta := True;
      EnAlta    := False;
      tsPrealta.TabVisible := True;
      tsPrealta.Enabled := True;

      lPrestacio.EditValue := pIngressats.Datos.FieldbyName('C_Prestacio').asString+'-'+pIngressats.Datos.FieldbyName('N_Prestacio').asString;

      NUMESPERA := '-1';

      tFiliacio.Open;
      tFiliacio.FindKey( VarArrayof([pIngressats.Datos.FieldbyName('C_Historia').asVariant]));
      tTractaments.Open;
      tTractaments.FindKey( VarArrayof([pIngressats.Datos.FieldbyName('C_Tractament').asVariant]));
      tParent.Open;
      tTractaments.Edit;


      if tTractaments.FieldbyName('Data_PreAlta').isNull
      then tTractaments.FieldbyName('Data_PreAlta').asDateTime := DateServer
      else tTractaments.FieldbyName('Data_PreAlta').asDateTime := pIngressats.Datos.FieldbyName('Data_PreAlta').asDateTime;

      if (tTractaments.FieldbyName('C_MetgePreAlta').isNull or EsBuit(tTractaments.FieldbyName('C_MetgePreAlta').asString))
      and TeDretPresta(pIngressats.Datos.FieldbyName('C_Prestacio').asString, [95])
      then tTractaments.FieldbyName('C_MetgePreAlta').asString := tTractaments.FieldbyName('C_Coordinador').asString;

      MostrarPaneles('1004');

      PC.activePage := tsPreAlta;
      PCChange(NIL);

      Prealta.SetFocus;
      consulta:=Self.Caption;  
   end;

end;

procedure TwFitxaIngressats.accAltaExecute(Sender: TObject);
var
 hist, nom: String;
begin
   if mgCanviLlit.Visible or mgIntercanviLlits.Visible then Exit;  
   hist := pIngressats.Datos.FieldbyName('C_Historia').AsString;
   nom  := pIngressats.Datos.FieldbyName('NomComplet').AsString;

   With TwFitxaFiliacio.Create(Application) do
   begin
      DonarAlta(pIngressats.Datos.FieldbyName('C_Tractament').AsInteger)
   end;
end;

procedure TwFitxaIngressats.pIngressatsAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                                    State: TGridDrawState; Query: TQuery);
begin
    ColorFont := clBlack;
    ColorBrush := clWhite;

    if not Query.FieldbyName('C_Historia').IsNull then
    begin
        if  EsPle(Query.FieldbyName('Data_Alta').asString)       then ColorFont := clBlue;

        if (Query.FieldbyName('EsViu').asString = 'N')           then ColorFont := clRed;

        if (Query.FieldByName('C_PRESTACIO').AsString <> '1004') then ColorFont := clGreen;

        if (Query.FieldByName('Incapacitat').AsString = 'S') and (UpperCase(Column.FieldName) = 'INCAPACITAT') then
        begin
            ColorBrush := $00FF0080;
            ColorFont  := clWhite;
        end;

        if (Query.FieldbyName('CONSENTIMENT').asString = 'N') and (UpperCase(Column.FieldName) = 'CONSENTIMENT') then
        begin
            ColorBrush := $004080FF;
            ColorFont  := clWhite;
        end;

        if gdSelected in State then
        begin
            ColorFont  := ClYellow;
            ColorBrush := ClNavy;
        end;
    end;
end;


procedure TwFitxaIngressats.pIngressatsAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    accEditar.Enabled      :=  not ((Datos.Eof) and (Datos.Bof))
                           and (Datos.FieldbyName('C_EstatFac').asString <> '80')
                           and (Datos.FieldbyName('EsViu').asString  = 'S')
                           and (wMain.Nivell > 1);
    accCanvideLLit.Enabled :=  not ((Datos.Eof) and (Datos.Bof))
                           and (Datos.FieldbyName('EsViu').asString = 'S')
                           and (TeDretUsuari(wData.UsuariActiu.Codi,'M309,G250') or (Datos.FieldByName('TIPUS').AsString <> 'Q'));
    sbIntercanvi.Enabled   :=  not ((Datos.Eof) and (Datos.Bof))
                           and (Datos.FieldbyName('EsViu').asString  = 'S')
                           and (Datos.FieldByName('TIPUS').AsString <> 'Q');
    accBQ_UH.Enabled       :=  not ((Datos.Eof) and (Datos.Bof))
                           and (Datos.FieldbyName('EsViu').asString  = 'S')
                           and TeDretUsuari(wData.UsuariActiu.Codi,'M309,G250')
                           and (Datos.FieldByName('TIPUS').AsString = 'Q');
    accPreAlta.Enabled     :=  not ((Datos.Eof) and (Datos.Bof))
                           and (Datos.FieldbyName('C_EstatFac').asString <> '80')
                           and (Datos.FieldbyName('EsViu').asString  = 'S')
                           and (Datos.FieldbyName('Data_Alta').IsNull)
                           and (wMain.Nivell > 1);
    accAlta.Enabled        :=  not ((Datos.Eof) and (Datos.Bof))
                           and (Datos.FieldbyName('C_EstatFac').asString <> '80')
                           and (Datos.FieldbyName('EsViu').asString  = 'S')
                           and (   ( Datos.FieldbyName('Data_Alta').isNull )
                           //   or ( (DateServer - Datos.FieldbyName('Data_Alta').asDateTime) <= 7))
                                or (Datos.FieldbyName('Data_Alta').asDateTime > wData.QParametres.FieldByName('DataConsolidatFins').AsDateTime))
                           and (wMain.Nivell > 1);

    // 23-2-2022: afegides prestacions amb dret P54 (1008 i 2005) => nomes per 1004 mantenir tots els botons actius
    accImprimirEtiquetes.Enabled := Datos.FieldByName('C_PRESTACIO').AsString = '1004';
    accFoto.Enabled              := accImprimirEtiquetes.Enabled;

    if Datos.FieldByName('C_PRESTACIO').AsString <> '1004' then
    begin
        accEditar.Enabled  := False;
        accPreAlta.Enabled := False;
        accAlta.Enabled    := False;
    end;
end;

procedure TwFitxaIngressats.cLlitsBuitsAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   LlitDesti.EditValue     := Datos.FieldbyName('C_Llit').asString;
   C_PlantaDesti.EditValue := Datos.FieldbyName('Planta').asString;
   N_PlantaDesti.EditValue := Datos.FieldbyName('N_Planta').asString;
   plantaTipusDesti        := Datos.FieldByName('PLANTA_TIPUS').AsString;
end;

procedure TwFitxaIngressats.consultaPlantesAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   LlitDesti.EditValue     := '';
   C_PlantaDesti.EditValue := Datos.FieldbyName('C_Planta').asString;
   N_PlantaDesti.EditValue := Datos.FieldbyName('N_Planta').asString;
   plantaTipusDesti        := Datos.FieldByName('TIPUS').AsString;
end;

procedure TwFitxaIngressats.AutocompletarLlit;
var
  Encontrado : String;
begin

    if Main.ComprobarLLit(LlitDesti.EditValue) then
    begin

      Encontrado := SelectSQL(wData.Projecte.DataBaseName,'Select C_LLIT from P_ESPERA_LLITS(NULL, "S") where C_Llit = "'+LlitDesti.EditValue+'"');

      if EsPle(Encontrado) then
      begin
        qLlit.ParamByName('Llit').asString := Encontrado;
        qLLit.Open;
        C_PlantaDesti.EditValue := qLLit.FieldbyName('Planta').asString;
        N_PlantaDesti.EditValue := qLLit.FieldbyName('N_Planta').asString;
        plantaTipusDesti        := qLlit.FieldByName('PLANTA_TIPUS').AsString;
        qLLit.Close;
        bAceptarCanvi.Enabled := True;
      end
      else
      begin
         FerError('El llit introduït no Existeix o no es troba disponible');
         LlitDesti.EditValue := '';
         LlitDesti.SetFocus;
         bAceptarCanvi.Enabled := False;
      end;
    end
    else FerError('EL LLIT INTRODUÏT NO ES TROBA DISPONIBLE', TRUE);

end;

procedure TwFitxaIngressats.LlitDestiExit(Sender: TObject);
begin
  if EsPle(LlitDesti.EditValue) then AutoCompletarLlit;
end;

procedure TwFitxaIngressats.LlitDestiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if ( (key = vk_return ) and ( EsPle(LlitDesti.EditValue) ) ) then
  begin
     AutocompletarLlit;
  end;

end;

procedure TwFitxaIngressats.C_PlantaDestiChange(Sender: TObject);
begin
  bAceptarCanvi.Enabled := EsPle(C_PlantaDesti.EditValue);
  if EsBuit(C_PlantaDesti.EditValue) then begin N_PlantaDesti.EditValue := ''; plantaTipusDesti := ''; end;
end;

procedure TwFitxaIngressats.accImprimirEtiquetesExecute(Sender: TObject);
begin
  if mgCanviLlit.Visible or mgIntercanviLlits.Visible then Exit;
   // Parametritzar amb un procediment....
   //  Estats...:
   //  0: Etiquetes Filiació
   //  1: Etiquetes Ingresats
   //  2: Etiquetes Filiats
   // ImprimirEtiquetes(bIngresos.Datos, 1);
   {En aquest formulari es seleccionen els ingressats dels que volem imprimir etiquetes.
    imprimirem x (per defecte 6) per cada un d'ells}
   With TwDialegSeleccioEtiquetesIngressats.Create(Application) do pEtiquetesIngressats.Execute('','');
end;

function TwFitxaIngressats.NomesHistoria(text: String):String;
var
  i: Integer;
begin
  // entra "nhc - nomcomplet" i hem de retornar nhc (lo anterior al guió '-')
  for i:=0 to len(text)-1 do
  begin
      if copy(text,i,1)='-' then Result:=copy(text,1,i-2);
  end;
end;

procedure TwFitxaIngressats.bAceptar2Click(Sender: TObject);
var
  planta1,planta2,pllit,Llit1,Llit2,text,JSON : string;
  HoraCanvis: TDateTime;
begin

  if esBuit(IntLLD2.EditValue) then LLit2   := 'NULL'
                               else Llit2   := IntLLD2.EditValue;
  if esBuit(IntPLD2.EditValue) then Planta2 := 'NULL'
                               else Planta2 := IntPLD2.EditValue;

  try
      WaitOn('Fent Canvi de Llit...');

      GutExecute('Update Tractaments SET C_LLit = %s, C_Planta = "%s" where C_Tractament = %s',
                 [Llit2, Planta2, Tractament1]);

      if wData.UsuariActiu.Codi = '' then PreguntaMetge; wMain.StatusTraza := '';
      wMain.LastTraza := wData.ObraTrazaControl(hc1,Self.Caption,wMain.Aplica,StrToInt(Tractament1));
      wMain.AddStatusTraza('k');
      if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);

      if esBuit(IntLLD1.EditValue) then LLit1   := 'NULL'
                                   else Llit1   := IntLLD1.EditValue;
      if esBuit(IntPLD1.EditValue) then Planta1 := 'NULL'
                                   else Planta1 := IntPLD1.EditValue;

      GutExecute('Update Tractaments SET C_LLit = %s, C_Planta = "%s" where C_Tractament = %s',
                 [Llit1, Planta1, Tractament2]);

      if wData.UsuariActiu.Codi = '' then PreguntaMetge; wMain.StatusTraza := '';
      wMain.LastTraza := wData.ObraTrazaControl(hc2,Self.Caption,wMain.Aplica,StrToInt(Tractament2));
      wMain.AddStatusTraza('k');
      if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);

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
      text:='Sense canvis en la dieta. Intercanvi de llit. Llit antic: '+IntLLD1.EditValue;

      // si té dieta assignada i no hi ha llit informat no imprimim
      if (qDieta.FieldByName('c_dieta').AsInteger >= 0) then
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
              FieldByName('HORADINAR').AsString  := qDieta.FieldByName('HORA_DINAR').AsString;
              FieldByName('HoraCanvis').AsDateTime := HoraCanvis;
              FieldByName('Ubicacio' ).AsString  := qDieta.FieldByName('Ubicacio').AsString;
              Post;
          end;
      end;
      idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
      if qDieta.FieldByName('C_UBICACIO_DINAR').IsNull
      then
      GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                 'VALUES(%d,"%s","%s",%d,"%s","%s","%s","%s",%d,"%s","%s","%s","%s",NULL)',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                 wData.UsuariActiu.Codi,hc1,planta2,llit2,qDieta.FieldByName('c_dieta').AsString,qDieta.FieldByName('obs_dieta').AsString,
                 bloc,text,wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString])
      else
      GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                 'VALUES(%d,"%s","%s",%d,"%s","%s","%s","%s",%d,"%s","%s","%s","%s","%s")',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                 wData.UsuariActiu.Codi,hc1,planta2,llit2,qDieta.FieldByName('c_dieta').AsString,qDieta.FieldByName('obs_dieta').AsString,
                 bloc,text,wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString,qDieta.FieldByName('C_UBICACIO_DINAR').AsString]);

      // destí
      qDieta.Close;
      qDieta.SQL[3] := 'WHERE F.NUM_HIST = '+IntToStr(hc2);
      qDieta.Open;

      idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
      text:='Sense canvis en la dieta. Intercanvi de llit. Llit antic: '+IntLLD2.EditValue;

      // si té dieta assignada i no hi ha llit informat no imprimim
      if (qDieta.FieldByName('c_dieta').AsInteger >= 0) then
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
              FieldByName('HORADINAR').AsString  := qDieta.FieldByName('HORA_DINAR').AsString;
              FieldByName('HoraCanvis').AsDateTime := HoraCanvis;
              FieldByName('Ubicacio' ).AsString  := qDieta.FieldByName('Ubicacio').AsString;
              Post;
          end;
      end;
      idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;
      if qDieta.FieldByName('C_UBICACIO_DINAR').IsNull
      then
      GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                 'VALUES(%d,"%s","%s",%d,"%s","%s","%s","%s",%d,"%s","%s","%s","%s",NULL)',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                 wData.UsuariActiu.Codi,hc2,planta1,llit1,qDieta.FieldByName('c_dieta').AsString,qDieta.FieldByName('obs_dieta').AsString,
                 bloc,text,wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString])
      else
      GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                 'VALUES(%d,"%s","%s",%d,"%s","%s","%s","%s",%d,"%s","%s","%s","%s","%s")',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                 wData.UsuariActiu.Codi,hc2,planta1,llit1,qDieta.FieldByName('c_dieta').AsString,qDieta.FieldByName('obs_dieta').AsString,
                 bloc,text,wData.ID_COMPUTER,wData.ID_LOGIN,qDieta.FieldByName('HORA_DINAR').AsString,qDieta.FieldByName('C_UBICACIO_DINAR').AsString]);
  finally
      WaitOff;
      bCancelar2.Click;
      pIngressats.refreshSQL;
  end;

end;

procedure TwFitxaIngressats.bCancelar2Click(Sender: TObject);
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

procedure TwFitxaIngressats.sbIntercanviClick(Sender: TObject);
var
  elMeumetge: TMetge;
begin
   if mgCanviLlit.Visible then bCancelarCanvi.Click;

   if wData.UsuariActiu.Codi <> ''
   then elMeuMetge := wData.UsuariActiu
   else elMeumetge := PreguntaMetge;

   if TeDretMetge(elMeuMetge.Codi, [92])
   or (ComprovarForaHores(1) and TeDretMetge(elMeuMetge.Codi,[920])) then
   begin
        CenterInClient(mgIntercanviLlits);
        mgIntercanviLlits.Visible := sbIntercanvi.Down;
        if not sbIntercanvi.Down then bCancelar2.Click;

        if IntLLD1.tag = 0 then
        begin
           IntLLD1.Tag := 1;
           HistoriaIntercanvi1.EditValue := pIngressats.Datos.FieldbyName('C_Historia').asString +' - '+ pIngressats.Datos.FieldbyName('NomComplet').asString;
           IntLLD1.EditValue  := pIngressats.Datos.FieldbyName('C_Llit').asString;
           IntPLD1.EditValue  := pIngressats.Datos.FieldbyName('C_Planta').asString;
           IntDESD1.EditValue := pIngressats.Datos.FieldbyName('N_Planta').asString;
           Tractament1        := pIngressats.Datos.FieldbyName('C_Tractament').asString;
           hc1                := pIngressats.Datos.FieldbyName('c_historia').asInteger;
        end;
   end
   else if (ElMeuMetge.Codi <> '') then FerError(Error1, True);
end;



procedure TwFitxaIngressats.accFotoExecute(Sender: TObject);
begin
   if mgCanviLlit.Visible or mgIntercanviLlits.Visible then Exit;
   with TwMostrarFoto.Create(Self) do
   begin
       historia := pIngressats.Datos.FieldByName('C_Historia').AsInteger;
       Iniciar;
   end;
end;


procedure TwFitxaIngressats.pIngressatsConsultaGetSqlField(
  Sender: THYConsulta; var SqlField: String);
begin
  if sqlfield = 'C_HISTORIA'   THEN SQLFIELD:= 'T.C_HISTORIA';
  IF SQLFIELD = 'C_TRACTAMENT' THEN SQLFIELD:='T.C_TRACTAMENT';
  IF SQLFIELD = 'C_CENTREFAC'  THEN SQLFIELD:='T.C_CENTREFAC';
  IF SQLFIELD = 'C_ESTATFAC'   THEN SQLFIELD:='T.C_ESTATFAC';
  IF SQLFIELD = 'UNITAT'       THEN SQLFIELD:='F.UNITAT';
end;


procedure TwFitxaIngressats.cIngressatsAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin

    laMevaHistoria := Datos.FieldByName('C_Historia').AsString;
    if mgCanviLlit.Visible then
    begin
        PacientCanvi.EditValue   := laMevaHistoria;
        NombPacient.EditValue    := Datos.fieldbyName('NomComplet').asString;

        LlitOrigen.EditValue     := Datos.fieldbyName('C_LLit').asString;
        C_PlantaOrigen.EditValue := Datos.fieldbyName('C_Planta').asString;
        N_PlantaOrigen.EditValue := Datos.fieldbyName('N_Planta').asString;
        plantaTipusOrigen        := Datos.fieldbyName('TIPUS').asString;
    end
    else if mgIntercanviLlits.Visible then
    begin
        if IntLLD1.Tag = 0 then
        begin
           IntLLD1.Tag := 1;
           HistoriaIntercanvi1.EditValue := laMevaHistoria +' - '+ Datos.FieldbyName('NomComplet').asString;
           IntLLD1.EditValue  := Datos.FieldbyName('C_Llit').asString;
           IntPLD1.EditValue  := Datos.FieldbyName('C_Planta').asString;
           IntDESD1.EditValue := Datos.FieldbyName('N_Planta').asString;
           Tractament1        := Datos.FieldbyName('C_Tractament').asString;
           hc1                := StrToInt(laMevaHistoria);
        end
        else
        begin
           IntLLD2.Tag := 1;
           HistoriaIntercanvi2.EditValue := laMevaHistoria +' - '+ Datos.FieldbyName('NomComplet').asString;
           IntLLD2.EditValue  := Datos.FieldbyName('C_Llit').asString;
           IntPLD2.EditValue  := Datos.FieldbyName('C_Planta').asString;
           IntDESD2.EditValue := Datos.FieldbyName('N_Planta').asString;
           Tractament2        := Datos.FieldbyName('C_Tractament').asString;
           hc2                := StrToInt(laMevaHistoria);
           bAceptar2.Enabled  := True;
        end;
    end;

    elMeuTractament := Datos.fieldbyName('C_Tractament').AsString;
end;

procedure TwFitxaIngressats.IntLLD1AlConsultar(Sender: TObject);
begin
    IntLLD1.Tag := 0; IntLLD2.Tag := 1;
    cIngressats.SqlDic[4] := 'join PLANTES PL on T.C_PLANTA = PL.C_PLANTA AND PL.TIPUS<>"Q" ';
    cIngressats.ExecuteModal('','');
end;

procedure TwFitxaIngressats.IntLLD2AlConsultar(Sender: TObject);
begin
    IntLLD1.Tag := 1; IntLLD2.Tag := 0;
    cIngressats.SqlDic[4] := 'join PLANTES PL on T.C_PLANTA = PL.C_PLANTA AND PL.TIPUS<>"Q" ';
    cIngressats.ExecuteModal('','');
end;


procedure TwFitxaIngressats.bEnviarClick(Sender: TObject);
begin
  EnviarACuina;
end;

procedure TwFitxaIngressats.NoPrint(sender: TObject; var Value: String);
begin
  if not MostrarUbicacio then Value := '';
end;

procedure TwFitxaIngressats.LlitOrigenAlConsultar(Sender: TObject);
begin
    if TeDretUsuari(wData.UsuariActiu.Codi,'M311,G251')
    then cIngressats.SqlDic[4] := 'join PLANTES PL on T.C_PLANTA = PL.C_PLANTA '
    else cIngressats.SqlDic[4] := 'join PLANTES PL on T.C_PLANTA = PL.C_PLANTA AND PL.TIPUS<>"Q" ';

    cIngressats.ExecuteModal('','');    
end;

procedure TwFitxaIngressats.LlitDestiAlConsultar(Sender: TObject);
begin
    if  TeDretUsuari(wData.UsuariActiu.Codi,'M311,G251')
    and (not EsBuit(LlitOrigen.EditValue))
    then begin
        if GutSelect('select p.tipus from llits l             '+
                     'join plantes p on l.c_planta=p.c_planta '+
                     'where l.c_llit = %s                     ' ,[LlitOrigen.EditValue]) = 'Q'
        then begin
            cLlitsBuits.SqlDic[2] := 'WHERE S.TIPUS = "L" AND S.PLANTA_TIPUS="Q" ';
            cLlitsBuits.SqlDic[8] := 'FROM PLANTES P WHERE P.TIPUS = "Q" ';
        end
        else begin
            cLlitsBuits.SqlDic[2] := 'WHERE S.TIPUS = "L" ';
            cLlitsBuits.SqlDic[8] := 'FROM PLANTES P ';
        end;
    end
    else begin
        cLlitsBuits.SqlDic[2] := 'WHERE S.TIPUS = "L" AND S.PLANTA_TIPUS<>"Q" ';
        cLlitsBuits.SqlDic[8] := 'FROM PLANTES P WHERE P.TIPUS <> "Q" ';
    end;

    cLlitsBuits.ExecuteModal('','');
end;

procedure TwFitxaIngressats.accBQ_UHExecute(Sender: TObject);
var
  Llit,Planta,Tractament: String;
begin
  // tornar al llit on estava ingressat abans de moure'l a un llit de quiròfan i desbloqujar el llit
  Llit       := GutSelect('select c_llit from LLITBLOQUEIG where (DATA_FI IS NULL OR (DATA_FI>="TODAY")) AND MOTIU_BLOQUEIG = "%s"',
                         ['BQ-'+pIngressats.Datos.FieldByName('C_Historia').AsString]);
  Planta     := GutSelect('SELECT C_PLANTA FROM LLITS WHERE C_LLIT="%s"',[Llit]);
  Tractament := pIngressats.Datos.FieldByName('C_Tractament').AsString;

  TRY
      GutExecute('Update Tractaments set C_Llit = %s, C_Planta = "%s" where C_Tractament = "%s"',[Llit, Planta, Tractament]);
      GutExecute('Update LlitBloqueig set Data_Fi = "NOW" where C_Llit = %s AND MOTIU_BLOQUEIG = "%s"',[Llit, 'BQ-'+pIngressats.Datos.FieldByName('C_Historia').AsString]);
  FINALLY
      pIngressats.RefreshSQL;
      pIngressats.datos.Locate('C_Tractament', Tractament, []);
  END;
end;

end.
