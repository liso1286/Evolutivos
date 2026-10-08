unit FitxaLlistatDietes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, HYDialogConsulta, Hy_Misc, db, ComCtrls, ToolWin, StdCtrls,
  Buttons, HYEdit, DBGrids, Grids, dbTables, QRCtrls, QuickRpt, kbmMemTable;

type
  TwFitxaLlistadeDietes = class(TForm)
    PanelDietes: HYPanelConsulta;
    mgEdicio: THyMoveGroupControl;
    C_Dieta: THYTextEdit;
    N_Dieta: THYTextEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    consDietes: THYConsulta;
    Observacions: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    qrDieta: TQuickRep;
    qDieta: TQuery;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRSysData1: TQRSysData;
    Print: TkbmMemTable;
    Printplanta: TStringField;
    Printllit: TStringField;
    Printnom: TStringField;
    Printdieta: TStringField;
    PrintObs: TStringField;
    Printhistoria: TStringField;
    PrintModificat: TStringField;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    Panel3: TPanel;
    Label2: TLabel;
    pBotons: TPanel;
    tbEditar: TSpeedButton;
    c: TBevel;
    Bevel1: TBevel;
    Panel7: TPanel;
    Label3: TLabel;
    Shape1: TShape;
    mtEtiquetes: TkbmMemTable;
    mtEtiquetesNUM_HIST: TIntegerField;
    mtEtiquetesNomComplet: TStringField;
    mtEtiquetesFECHA_NAC: TDateTimeField;
    mtEtiquetesSexe: TStringField;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    tbSortir: TSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    PrintHoraDinar: TStringField;
    QRDBText11: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    PrintHoraCanvis: TDateTimeField;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    PrintUbicacio: TStringField;
    cUbicacionsDinar: THYConsulta;
    SpeedButton2: TSpeedButton;
    lEnviar: TLabel;
    Hora_Dinar: THYTextEdit;
    C_Ubicacio_Dinar: THYTextEdit;
    Ubicacio_Dinar: THYTextEdit;
    sbPolseres: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    mtEtiquetesPlanta: TStringField;
    procedure EnviarACuina;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PanelDietesAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure PanelDietesAlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Query: TQuery);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tbEditarClick(Sender: TObject);
    procedure tbSortirClick(Sender: TObject);
    procedure consDietesAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure PanelDietesAlChangeRegistro(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure PanelDietesAlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
// parte 53286 - i
{    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);}
// parte 53286 - f
    procedure PanelDietesAlAfterExcel(Sender: TObject);
    procedure PanelDietesAlAfterPrint(Sender: TObject);
    procedure PanelDietesAlBeforePrint(Sender: TObject);
    procedure sbPolseresClick(Sender: TObject);
    procedure cUbicacionsDinarAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure AlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure lEnviarClick(Sender: TObject);
    procedure C_Ubicacio_DinarEnter(Sender: TObject);
    procedure NoPrint(sender: TObject; var Value: String);
    procedure Label4Click(Sender: TObject);
  private
    Paso: Boolean; //Cuando el medico valida una vez, ya puede modificar siempre, hasta que cierre la ventna y vuelva a entrar no le volverá a preguntar password.
    MostrarUbicacio: Boolean;
    cdietaAnt, ndietaAnt, obsAnt, HoraDinarAnt,
    CUbicacioAnt, UbicacioAnt: string;  // parte 41859
    idlog,bloc: Integer;                   // parte 45423
    impressores: TStringList;              // parte 45423
    procedure MostrarDialegEdicio(CodiDieta, Obs_Dieta, HoraDinar, CUbi, Ubi:String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wFitxaLlistadeDietes: TwFitxaLlistadeDietes;
  Marca: Variant;
  Histi: String;

implementation

uses DataAdmisio, Data, DataCodis, funciones, DataBasics, uEquipAssistencial, Main, utili16;

{$R *.DFM}

procedure TwFitxaLlistadeDietes.FormCreate(Sender: TObject);
begin
   if (wMain.Nivell < 2)
   AND (NOT TeDretAcces([86])) then
   begin
     PanelDietes.VerExcel := False;
     PanelDietes.VerPrint := False;
   end;
   // parte 50725 - i
   if PanelDietes.VerExcel or PanelDietes.VerPrint then
   begin
       if wData.UsuariActiu.Codi = '' then PreguntaMetge; wMain.StatusTraza := '';
       if wData.UsuariActiu.Codi = '' then tbSortir.Click;
       wMain.LastTraza := 0; wMain.StatusTraza := '';
   end;
   // parte 50725 - f

   Paso := False;
   PanelDietes.Execute('','');
   Print.Close;
   Print.Open;
   bloc := GutSelect('select max(bloc) from LOGDIETES',[]) + 1;  // parte 45423
   sbPolseres.Visible := TeDretAcces([180]);

   MostrarUbicacio := False; // no ensenyar la ubicacio del dinar
end;


procedure TwFitxaLlistadeDietes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    EnviarACuina;

    Print.Close;
    if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);  // parte 50725
    Action := caFree;
end;

procedure TwFitxaLlistadeDietes.EnviarACuina;
var
  i: integer;
  horaActual,minActual,login: string;
begin
    // Al tancar imprimim tots els canvis fets a dietes. Primer canviar la impresora a la de la cuina
    DateTimeToString(horaActual,'hh',TimeServer);
    DateTimeToString(minActual, 'nn',TimeServer);

{    if {(StrToInt(horaActual) >= 13) and (StrToInt(horaActual) <= 21)    // PARTE 43004: imprimir les 24hores del dia
    and} {(not Print.Eof) then } // si està buida no imprimir res

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
                // PARTE 45423 - I. si hi ha un error en aquest cas pq no recupera cap impresora ho marquem
                if Impressores.Count = 0 then
                // parte 53286 - I
                {GutExecute('update LOGDIETES set PRINT_OK = "B", DATA_PRINT = "%s" where bloc = %d and c_llit <> ""',
                                              [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),bloc]);}
                begin
                    Print.First;
                    while (not Print.Eof) do
                    begin
                        login := CopyLeft(wData.ID_LOGIN + '-' + horaActual,40);
                        GutExecute('update LOGDIETES set PRINT_OK = "B", DATA_PRINT = "%s", LOGIN = "%s" where bloc = %d and c_historia=%d',
                                   [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),login,bloc,Print.FieldByName('historia').AsInteger]);
                        Print.Next;
                    end;
                end;
                // parte 53286 - f
                // PARTE 45423 - F.
                for i:=0 to Impressores.Count - 1 do
                Begin
                    If selectPrinterQr(qrdieta,Impressores.Strings[i]) then
                    begin
                        qrDieta.Print;
                        // PARTE 45423 - I. un cop imprès, marquem com a imprès el bloc
                        // parte 53286 - i (només els que tenen dieta)
                        {GutExecute('update LOGDIETES set PRINT_OK = "S", DATA_PRINT = "%s" where bloc = %d and c_llit <> ""',
                                   [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),bloc]);}
                        // només si té dieta s'haurà imprès ==> només es marca com a imprès si té dieta (=tots els que estàn a PRINT)
                        Print.First;           
                        while (not Print.Eof) do
                        begin
                            login := CopyLeft(wData.ID_LOGIN + '-' + horaActual,40);
                            GutExecute('update LOGDIETES set PRINT_OK = "S", DATA_PRINT = "%s", LOGIN = "%s" where bloc = %d and c_historia = %d',
                                       [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),login,bloc,Print.FieldByName('historia').AsInteger]);
                            Print.Next;
                        end;
                        ShowMessage('Canvis enviats a la impresora de cuina.');
                    end
                    else begin
                        // PARTE 45423 - I.
                        // parte 53286 - i
                        {GutExecute('update LOGDIETES set PRINT_OK = "E", DATA_PRINT = "%s" where bloc = %d and c_llit <> ""',
                                   [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),bloc]);}
                        Print.First;
                        while (not Print.Eof) do
                        begin
                            login := CopyLeft(wData.ID_LOGIN + '-' + horaActual,40);
                            GutExecute('update LOGDIETES set PRINT_OK = "E", DATA_PRINT = "%s", LOGIN = "%s" where bloc = %d and c_historia = %d',
                                   [FormatDateTime('dd.mm.yyyy hh:nn:ss',NowServer),login,bloc,Print.FieldByName('historia').AsInteger]);
                            Print.Next;
                        end;
                        // parte 53286 - f
                        // PARTE 45423 - F.
                        FerError('Error en imprimir la notificació a "%s"' +#13+'Aviseu a informàtica',[Impressores.Strings[i]], False);
                    end;
                end;

 {               if NT7OK and INFORMATICA_OK then impresorapordefecto
                                            else FerError('No s''ha pogut posar la impressora per defecte.' + NLine +
                                                          'Actualitzeu-la manualment o aviseu a INFORMÀTICA');          }
                Impressores.Free;
            end;
        end;
    end
    else begin
        // ShowMessage('No s''ha imprès canvi a cuina perquè són les '+horaActual);
        if not Print.Eof then
        begin
            login := CopyLeft(wData.ID_LOGIN + '-' + horaActual,40);
            GutExecute('update LOGDIETES set LOGIN = "%s" where bloc = %d and c_historia=%d',
                       [login,bloc,Print.FieldByName('historia').AsInteger]);
        end;
        Print.EmptyTable;
//        Print.Close;
//        Action := caFree;
        Exit;  // PARTE 44679: imprimir de 13h a 7h
    end;

    Print.EmptyTable;
//    Print.Close;
end;


procedure TwFitxaLlistadeDietes.PanelDietesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   Marca := PanelDietes.Datos.FieldbyName('C_Tractament').asVariant;
   histi := PanelDietes.Datos.FieldbyName('Historia').asString;
//   tbEditar.Click;   // maig 2023: dietes a Coquus
end;


procedure TwFitxaLlistadeDietes.PanelDietesAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                                        State: TGridDrawState; Query: TQuery);
begin
  if not (Query.FieldbyName('Tipus').IsNull) then
  begin
      case Query.FieldbyName('Tipus').asString[1] of
       'L': ColorBrush := clGreen;
       'O': ColorBrush := clWhite;
       'B': ColorBrush := clSilver;
//       'A': ColorBrush := $00B3D9FF;  // altes administratives actives     // 08.2011: JA NO HI HA ALTES ADMINISTRATIVES
      end;
  end;
  
  if gdSelected in State then
  begin
    ColorBrush := clNavy;
    ColorFont  := clYellow;
  end;
end;


procedure TwFitxaLlistadeDietes.BitBtn2Click(Sender: TObject);
begin
  C_Dieta.EditValue := '';
  N_Dieta.EditValue := '';
  Observacions.Text := '';
  C_Ubicacio_Dinar.EditValue := '';
  Ubicacio_Dinar.EditValue   := '';

  mgEdicio.Visible := False;
end;


procedure TwFitxaLlistadeDietes.BitBtn1Click(Sender: TObject);
var
//-  ndieta,planta,llit,text : string;
  modif: string;
//-  canvis: Boolean;
//-  HoraCanvis: TDateTime;
begin
  // només vàlids valors 00:00, 13:00 i 14:00
  if (Hora_Dinar.EditValue <> '00:00') and (Hora_Dinar.EditValue <> '13:00') and (Hora_Dinar.EditValue <> '14:00')
  then FerError('ERROR: hora no vàlida. Els dinars són a les 00:00, a les 13:00 o a les 14:00.', True);

  try
      // MAIG 2023 - COQUUS:
      //  - a IB només es modifica el torn dels ambulatoris; la resta es fa directament a Coquus.
      //  - ja no s'imprimeix cap llistat a cuina
      if (HoraDinarAnt <> Hora_Dinar.EditValue) then
      begin
          GutExecute(' Update Filiacio set Hora_Dinar="%s" where Num_Hist = %s ', [Hora_Dinar.EditValue, histi]);

          modif := 'HORA de dinar anterior: ' + HoraDinarAnt;

          idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;

          GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR) '+
                     'VALUES(%d, "NOW", "%s", %s, %d, "%s", "%s", "%s", "%s" )',
                     [idlog, wData.UsuariActiu.Codi, histi, bloc, modif, wData.ID_COMPUTER, wData.ID_LOGIN, HoraDinarAnt])
      end;
  finally
      Hora_Dinar.EditValue := '';
      mgEdicio.Visible := False;
      PanelDietes.RefreshSql;
      PanelDietes.Datos.Locate('C_Tractament', Marca, []);
  end;

  {-
  try
      if C_Ubicacio_Dinar.EditValue <> '' then
      GutExecute(' Update Filiacio set C_Dieta = "%s", Obs_Dieta = "%s", Hora_Dinar="%s", C_Ubicacio_Dinar ="%s" where Num_Hist = "%s" ',
        [ C_Dieta.EditValue,
          Observacions.Text,
          Hora_Dinar.EditValue,
          C_Ubicacio_Dinar.EditValue,
          histi])
      else
      GutExecute(' Update Filiacio set C_Dieta = "%s", Obs_Dieta = "%s", Hora_Dinar="%s", C_Ubicacio_Dinar = NULL where Num_Hist = "%s" ',
        [ C_Dieta.EditValue,
          Observacions.Text,
          Hora_Dinar.EditValue,
          histi]);

      qDieta.Close;
      qDieta.SQL[3] := 'WHERE F.NUM_HIST = '+histi;
      qDieta.Open;

      HoraCanvis:=NowServer;

      if PanelDietes.Datos.FieldbyName('Planta').IsNull or (PanelDietes.Datos.FieldbyName('Planta').asString = '')
      then planta:='   ' else planta:= PanelDietes.Datos.FieldbyName('Planta').asString;
      if PanelDietes.Datos.FieldbyName('C_Llit').IsNull or (PanelDietes.Datos.FieldbyName('C_Llit').asString = '')
      then llit:='   ' else llit:=PanelDietes.Datos.FieldbyName('C_Llit').asString;

      modif:='';
      ndieta := GutSelect('select n_codi from codicamps where tipuscodi = "DIETES" and c_codi = "%s"',[C_Dieta.EditValue]);
      if (cdietaAnt <> C_Dieta.EditValue) then modif := 'la DIETA era '+cdietaAnt+' - '+ndietaAnt;
      if (obsAnt <> Observacions.Text) then
      begin
          if modif = ''  then modif:='les OBSERVACIONS eren '+obsAnt
                         else modif:=modif+', les OBSERVACIONS eren '+obsAnt;
      end;
      if (HoraDinarAnt <> Hora_Dinar.EditValue) then
      begin
          if modif = '' then modif:='la HORA de dinar era '+HoraDinarAnt
                        else modif:=modif+' , la HORA de dinar era '+HoraDinarAnt;
      end;
      if MostrarUbicacio then
      begin
        if (CUbicacioAnt <> C_Ubicacio_Dinar.EditValue) then
        begin
          if UbicacioAnt = '' then
          begin
              if modif = '' then modif:='no tenia UBICACIÓ de dinar assignada'
                            else modif:=modif+' i no tenia UBICACIÓ de dinar assignada';
          end
          else begin
              if modif = '' then modif:='la UBICACIÓ de dinar era '+ UbicacioAnt
                            else modif:=modif+' i la UBICACIÓ de dinar era '+UbicacioAnt;
          end;
        end;
      end;

      if MostrarUbicacio
      then canvis := (cdietaAnt <> C_Dieta.EditValue) or (obsAnt <> Observacions.Text) or (HoraDinarAnt <> Hora_Dinar.EditValue) or (CUbicacioAnt <> C_Ubicacio_Dinar.EditValue)
      else canvis := (cdietaAnt <> C_Dieta.EditValue) or (obsAnt <> Observacions.Text) or (HoraDinarAnt <> Hora_Dinar.EditValue);

      // parte 45423 - si no hi ha canvis o no hi ha llit informat no imprimim
      if (StrToInt(C_Dieta.EditValue) >=0) and canvis  then
      begin
          with Print do
          begin
              Append;
              FieldByName('historia' ).AsString := histi;
              FieldByName('planta'   ).AsString := planta;
              FieldByName('llit'     ).AsString := llit;
              FieldByName('nom'      ).AsString := qDieta.FieldByName('pacient').AsString;
              FieldByName('dieta'    ).AsString := C_Dieta.EditValue + ' - '+ ndieta;
              FieldByName('obs'      ).AsString := Observacions.Text;
              FieldByName('Modificat').AsString := modif;
              FieldByName('HoraDinar').AsString := Hora_Dinar.EditValue;
              FieldByName('HoraCanvis').AsDateTime := HoraCanvis;
              FieldByName('Ubicacio' ).AsString := Ubicacio_dinar.EditValue;
              Post;
          end;
      end;
      // PARTE 45423 - I: si hi ha canvis ho guardem encara que no tingui llit. 
      if canvis then
      begin
          idlog := GutSelect('select max(id) from LOGDIETES',[]) + 1;

          if CUbicacioAnt = ''
          then
          GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                     'VALUES(%d,"%s","%s","%s","%s","%s","%s","%s",%d,"%s","%s","%s","%s",NULL)',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                     wData.UsuariActiu.Codi,histi,planta,llit,cdietaAnt,obsAnt,bloc,modif,wData.ID_COMPUTER,wData.ID_LOGIN,HoraDinarAnt])
          else
          GutExecute('insert into LOGDIETES(ID, DATA, C_USUARI, C_HISTORIA, C_PLANTA, C_LLIT, DIETA_ANT, OBS_ANT, BLOC, MODIF, NOMPC, LOGIN, HORA_DINAR, C_UBICACIO_DINAR) '+
                     'VALUES(%d,"%s","%s","%s","%s","%s","%s","%s",%d,"%s","%s","%s","%s","%s")',[idlog, FormatDateTime('dd.mm.yyyy hh:nn:ss',HoraCanvis),
                     wData.UsuariActiu.Codi,histi,planta,llit,cdietaAnt,obsAnt,bloc,modif,wData.ID_COMPUTER,wData.ID_LOGIN,HoraDinarAnt,CUbicacioAnt]);
      end;
      // PARTE 45423 - F.
  finally
      C_Dieta.EditValue := '';
      N_Dieta.EditValue := '';
      Observacions.Text := '';
      Hora_Dinar.EditValue := '';
      C_Ubicacio_Dinar.EditValue := '';
      Ubicacio_Dinar.EditValue   := '';
      mgEdicio.Visible := False;
      PanelDietes.RefreshSql;
      PanelDietes.Datos.Locate('C_Tractament', Marca, []);
  end;
  -}
end;


Procedure TwFitxaLlistadeDietes.MostrarDialegEdicio(CodiDieta, Obs_Dieta, HoraDinar, CUbi, Ubi:String);
begin
   CenterInClient(mgEdicio);
   mgEdicio.Visible       := True;
   
{-
   C_Dieta.EditValue      := CodiDieta;

   if EsPle(CodiDieta) then
   N_Dieta.EditValue      := SelectSQL(wData.Projecte.DataBaseName,
                            'Select N_Codi from CodiCamps where TipusCodi = "DIETES" and C_Codi ="'+CodiDieta+'"');

   Observacions.Text := Obs_Dieta;
   Hora_Dinar.EditValue := HoraDinar;
   C_Ubicacio_Dinar.EditValue := CUbi;
   Ubicacio_Dinar.EditValue   := Ubi;

   C_Dieta.SetFocus;

   // parte 41859 - i.
   cdietaAnt := CodiDieta;
   ndietaAnt := N_Dieta.EditValue;
   obsAnt    := Obs_Dieta;
   HoraDinarAnt := HoraDinar;
   CUbicacioAnt := C_Ubicacio_Dinar.EditValue;
   UbicacioAnt  := Ubicacio_Dinar.EditValue;
   // parte 41859 - f.
-}

   Hora_Dinar.EditValue := HoraDinar;
   Hora_Dinar.SetFocus;
   HoraDinarAnt := HoraDinar;
end;


procedure TwFitxaLlistadeDietes.tbEditarClick(Sender: TObject);
var
  elMeuMetge: TMetge;
begin
   Marca := PanelDietes.Datos.FieldbyName('C_Tractament').asVariant;
   histi := PanelDietes.Datos.FieldbyName('Historia').asString;

   if Paso then MostrarDialegEdicio(PanelDietes.Datos.FieldbyName('CODI_Dieta').asString, PanelDietes.Datos.FieldbyName('Obs_Dieta').asString,
                                    PanelDietes.Datos.FieldByName('HORA_DINAR').AsString, PanelDietes.Datos.FieldByName('C_Ubicacio_Dinar').AsString,
                                    PanelDietes.Datos.FieldByName('Ubicacio_Dinar').AsString)

   else if TeDretAcces([90], True, True) then
   begin
      // parte 52244 - i
      if wData.UsuariActiu.Codi <> '' then elMeuMetge := wData.UsuariActiu else
      // parte 52244 - f
      elMeumetge := PreguntaMetge;
      if (elMeuMetge.Codi = '') then Exit;
      if TeDretGrup(elMeuMetge.Grup, [47], False) or TeDretMetge(elMeuMetge.Codi, [90], True) then
      begin
         Paso :=  True;
         MostrarDialegEdicio(PanelDietes.Datos.FieldbyName('CODI_Dieta').asString, PanelDietes.Datos.FieldbyName('Obs_Dieta').asString,
                             PanelDietes.Datos.FieldByName('HORA_DINAR').AsString, PanelDietes.Datos.FieldByName('C_Ubicacio_Dinar').AsString,
                             PanelDietes.Datos.FieldByName('Ubicacio_Dinar').AsString);
      end;
   end;
end;


procedure TwFitxaLlistadeDietes.tbSortirClick(Sender: TObject);
begin
  close;
end;


procedure TwFitxaLlistadeDietes.consDietesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  c_dieta.EditValue := Datos.FieldbyName('C_Codi').asString;
  N_dieta.EditValue := Datos.FieldbyName('N_Codi').asString;
end;


procedure TwFitxaLlistadeDietes.PanelDietesAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tbEditar.Enabled :=  Datos.fieldbyname('Tipus').asString = 'O';  // obert
end;


procedure TwFitxaLlistadeDietes.PanelDietesAlDespuesOpen(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   pBotons.left :=  PanelDietes.LastLeftButton;
end;

// parte 53286 - i
{procedure TwFitxaLlistadeDietes.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := (not Print.FieldByName('llit').IsNull) and (Print.FieldByName('llit').AsString <> '');
end;}
// parte 53286 - f

// parte 50725 - i
procedure TwFitxaLlistadeDietes.PanelDietesAlAfterExcel(Sender: TObject);
begin
    if wMain.LastTraza=0 then wMain.LastTraza := wData.ObraTrazaControl(0,Self.Name,wMain.Aplica);
    wMain.AddStatusTraza('x');
end;

procedure TwFitxaLlistadeDietes.PanelDietesAlAfterPrint(Sender: TObject);
begin
    if wMain.LastTraza=0 then wMain.LastTraza := wData.ObraTrazaControl(0,Self.Name,wMain.Aplica);
    wMain.AddStatusTraza('P');
end;

procedure TwFitxaLlistadeDietes.PanelDietesAlBeforePrint(Sender: TObject);
begin
    if wData.UsuariActiu.Codi = '' then PreguntaMetge;
    if wData.UsuariActiu.Codi = '' then Abort;
end;
// parte 50725 - f


procedure TwFitxaLlistadeDietes.sbPolseresClick(Sender: TObject);
{var
   i:Integer; }
begin
  mtEtiquetes.Close;
  mtEtiquetes.Open;

{  For i := 0 to PanelDietes.PanelGrid.SelectedRows.Count -1 do
  begin
      PanelDietes.Datos.BookMark := PanelDietes.PanelGrid.SelectedRows[i];

      if not PanelDietes.Datos.FieldbyName('Historia').IsNull then
      begin
          mtEtiquetes.Insert;
          mtEtiquetes.FieldByName('Num_Hist'  ).Value := PanelDietes.Datos.FieldbyName('Historia' ).Value;
          mtEtiquetes.FieldByName('NomComplet').Value := PanelDietes.Datos.FieldbyName('Pacient'  ).Value;
          mtEtiquetes.FieldByName('Fecha_Nac' ).Value := PanelDietes.Datos.FieldbyName('Fecha_Nac').Value;
          mtEtiquetes.FieldByName('Sexe'      ).Value := PanelDietes.Datos.FieldbyName('Sexo'     ).Value;
      end;
  end; }
  with mtEtiquetes do
  begin
      Insert;
      FieldByName('Num_Hist'  ).Value := PanelDietes.Datos.FieldbyName('Historia' ).Value;
      FieldByName('NomComplet').Value := PanelDietes.Datos.FieldbyName('Pacient'  ).Value;
      FieldByName('Fecha_Nac' ).Value := PanelDietes.Datos.FieldbyName('Fecha_Nac').Value;
      FieldByName('Sexe'      ).Value := PanelDietes.Datos.FieldbyName('Sexo'     ).Value;
      if PanelDietes.Datos.FieldbyName('Planta').IsNull then FieldByName('PLANTA').Value := ''
                                                        else FieldByName('PLANTA').Value := PanelDietes.Datos.FieldbyName('Planta').Value;
  end;

  ImprimirEtiquetes(mtEtiquetes, 4);
end;

procedure TwFitxaLlistadeDietes.cUbicacionsDinarAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  C_Ubicacio_Dinar.EditValue := Datos.FieldbyName('C_Codi').asString;
  Ubicacio_Dinar.EditValue := Datos.FieldbyName('N_Codi').asString;
end;

procedure TwFitxaLlistadeDietes.AlDespuesOpen(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
 Datos.Last;
 (Sender as TxHYDialogConsulta).Top    := mgEdicio.Top;
 (Sender as TxHYDialogConsulta).Height := mgEdicio.Height + 20 * Datos.FieldByName('c_codi').AsInteger;  // (Sender as TxHYDialogConsulta).Tag * 50;    NO FUNCIONA - POSA TAG=0 PER TOTS DOS
 (Sender as TxHYDialogConsulta).Left   := mgEdicio.Left  + 50;
 (Sender as TxHYDialogConsulta).Width  := mgEdicio.Width + 50;
 Datos.First;
end;

procedure TwFitxaLlistadeDietes.lEnviarClick(Sender: TObject);
begin
  EnviarACuina;
end;

procedure TwFitxaLlistadeDietes.C_Ubicacio_DinarEnter(Sender: TObject);
begin
  cUbicacionsDinar.ExecuteModal;
end;

procedure TwFitxaLlistadeDietes.NoPrint(sender: TObject;
  var Value: String);
begin
  if not MostrarUbicacio then Value := '';
end;

procedure TwFitxaLlistadeDietes.Label4Click(Sender: TObject);
begin
    PreguntaMetge;
    if wData.UsuariActiu.Codi <> '' then PanelDietes.SqlDic[1] := '"'+wData.UsuariActiu.Codi+'")'
                                    else PanelDietes.SqlDic[1] := 'NULL)';
    PanelDietes.SqlDicTotal[1] := PanelDietes.SqlDic[1];
    PanelDietes.Execute('','');
end;

end.
