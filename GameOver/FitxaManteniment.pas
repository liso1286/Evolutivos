unit FitxaManteniment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, HYEdit, DB, HYPanels, ExtCtrls, IBQuery, DBGrids,
  HYDialogConsulta, DBTables, HYSql, HYLabel, Buttons, Grids, DBGridEh, HYGrids,
  Mask, ShellApi, ComCtrls, ComObj, IdMessage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IBCustomDataSet;


type
  TwFitxaManteniment = class(TForm)
    dsProcessos: TDataSource;
    brwProcessos: THYSqlBrowse;
    Splitter1: TSplitter;
    areaProcessos: THYArea;
    bProcessos: THYBarra;
    Panel1: TPanel;
    cProfessionals: THYConsulta;
    Panel2: TPanel;
    Label2: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label4: TLabel;
    Shape4: TShape;
    Eti_brwProcessos_Escola_NomEscola: THYLabel;
    Eti_brwProcessos_Escola_Poblacio: THYLabel;
    Eti_brwProcessos_TipusSessio_n_codi: THYLabel;
    Eti_brwProcessos_Escola_Comarca: THYLabel;
    Ed_brwProcessos_Escola: THYEdit;
    Ed_brwProcessos_Data_Trucada: THYEdit;
    Ed_brwProcessos_DataSollicitud: THYEdit;
    Ed_brwProcessos_Horari: THYEdit;
    Ed_brwProcessos_Curs: THYEdit;
    Ed_brwProcessos_Contacte: THYEdit;
    Ed_brwProcessos_Num_alumnes: THYEdit;
    Ed_brwProcessos_Num_grup: THYEdit;
    Ed_brwProcessos_Tipus_sessio: THYEdit;
    Shape5: TShape;
    Eti_brwProcessos_Professional_Nom: THYLabel;
    Eti_brwProcessos_Professional_Cognom1: THYLabel;
    Eti_brwProcessos_Professional_Cognom2: THYLabel;
    Eti_brwProcessos_Professional_Poblacio: THYLabel;
    Eti_brwProcessos_Professional_Comarca: THYLabel;
    Ed_brwProcessos_Monitor: THYEdit;
    sbMailMonitor: TSpeedButton;
    Ed_brwProcessos_DATA_MONITOR: THYEdit;
    Shape6: TShape;
    sbMailEscola: TSpeedButton;
    sbAnulaProces: TSpeedButton;
    Eti_brwProcessos_Estat_n_codi: THYLabel;
    Label1: TLabel;
    Ed_brwProcessos_Data_Anula: THYEdit;
    Ed_brwProcessos_DATA_ESCOLA: THYEdit;
    Shape8: TShape;
    Label5: TLabel;
    Eti_brwProcessos_Escola_Observacions: THYLabel;
    cbCanvis: TDBCheckBox;
    eCanvis: TDBEdit;
    Shape9: TShape;
    Label6: TLabel;
    sbMonitor: TSpeedButton;
    cMonitor: THYConsulta;
    cEscoles: THYConsulta;
    brwProcessos_ID: TIntegerField;
    brwProcessos_Data_Trucada: TDateTimeField;
    brwProcessos_DataSollicitud: TDateTimeField;
    brwProcessos_Escola: TIntegerField;
    brwProcessos_Data_Escola: TDateTimeField;
    brwProcessos_Monitor: TIntegerField;
    brwProcessos_Data_Monitor: TDateTimeField;
    brwProcessos_Estat: TIntegerField;
    brwProcessos_Data_Anula: TDateTimeField;
    brwProcessos_Horari: TStringField;
    brwProcessos_Curs: TStringField;
    brwProcessos_Contacte: TStringField;
    brwProcessos_Num_alumnes: TIntegerField;
    brwProcessos_Num_grup: TIntegerField;
    brwProcessos_Tipus_sessio: TIntegerField;
    brwProcessos_Observacions: TMemoField;
    brwProcessos_Canvis: TStringField;
    brwProcessos_L_canvis: TStringField;
    brwProcessosComarcaP_n_codi: TStringField;
    brwProcessosComarcaE_n_codi: TStringField;
    Comarcae_n_codi: THYLabel;
    comarcaP_n_codi: THYLabel;
    Shape10: TShape;
    Label7: TLabel;
    Eti_brwProcessos_Escola_Telefon: THYLabel;
    Eti_brwProcessos_Escola_Adreca: THYLabel;
    Eti_brwProcessos_Escola_Email: THYLabel;
    Label_Observacions: TLabel;
    Memo_brwProcessos_Observacions: THYMemo;
    Eti_brwProcessos_Professional_Mobil: THYLabel;
    sbCanviMonitor: TSpeedButton;
    Eti_brwProcessos_Professional_Email: THYLabel;
    boto: TButton;
    brwProcessos_Facturat: TStringField;
    brwProcessos_Curs3erESO: TStringField;
    brwProcessos_Curs1erBAT: TStringField;
    brwProcessos_Curs2onBAT: TStringField;
    brwProcessos_CiclesFormatius: TStringField;
    brwProcessos_AltresCursos: TStringField;
    Bevel1: TBevel;
    Check_brwProcessos_Curs3erESO: THYCheck;
    Check_brwProcessos_Curs4rtESO: THYCheck;
    Check_brwProcessos_Curs1erBAT: THYCheck;
    Check_brwProcessos_Curs2onBAT: THYCheck;
    Check_brwProcessos_CiclesFormatius: THYCheck;
    Check_brwProcessos_AltresCursos: THYCheck;
    brwProcessos_Curs4rtESO: TStringField;
    Eti_brwProcessos_Professional_MAX_XERRADES_MES: THYLabel;
    Label8: TLabel;
    lTopeProcessos: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Eti_brwProcessos_Escola_ObsInternes: THYLabel;
    brwProcessos_Peticio_De: TIntegerField;
    brwProcessos_Peticio_De_Altres: TStringField;
    Eti_brwProcessos_PeticioDe_n_codi: THYLabel;
    Ed_brwProcessos_Peticio_De_Altres: THYEdit;
    Ed_brwProcessos_Peticio_De: THYEdit;
    lUserActiu: TLabel;
    pcProcessos: HYPanelConsulta;
    brwProcessos_C0_0: TIntegerField;
    brwProcessos_C0_1: TStringField;
    brwProcessos_C0_2: TStringField;
    brwProcessos_C0_3: TStringField;
    brwProcessos_C0_4: TIntegerField;
    brwProcessos_C0_5: TStringField;
    brwProcessos_C0_6: TStringField;
    brwProcessos_C0_7: TStringField;
    brwProcessos_C0_8: TStringField;
    brwProcessos_C0_9: TStringField;
    brwProcessos_C0_10: TDateTimeField;
    brwProcessos_C0_11: TStringField;
    brwProcessos_C0_12: TStringField;
    brwProcessos_C0_13: TStringField;
    brwProcessos_C0_14: TStringField;
    brwProcessos_C0_15: TStringField;
    brwProcessos_C0_16: TStringField;
    brwProcessos_C0_17: TStringField;
    brwProcessos_C0_18: TIntegerField;
    brwProcessos_C1_0: TIntegerField;
    brwProcessos_C1_1: TStringField;
    brwProcessos_C1_2: TIntegerField;
    brwProcessos_C1_3: TStringField;
    brwProcessos_C1_4: TStringField;
    brwProcessos_C1_5: TStringField;
    brwProcessos_C1_6: TStringField;
    brwProcessos_C1_7: TStringField;
    brwProcessos_C1_8: TStringField;
    brwProcessos_C1_9: TStringField;
    brwProcessos_C2_0: TStringField;
    brwProcessos_C2_1: TIntegerField;
    brwProcessos_C2_2: TStringField;
    brwProcessos_C3_0: TStringField;
    brwProcessos_C3_1: TIntegerField;
    brwProcessos_C3_2: TStringField;
    brwProcessos_C4_0: TStringField;
    brwProcessos_C4_1: TIntegerField;
    brwProcessos_C4_2: TStringField;
    cPeticioDe: THYConsulta;
    sbDuplica: TSpeedButton;
    qAux: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure brwProcessosBeforePost(DataSet: TDataSet);
    procedure sbMailEscolaClick(Sender: TObject);
    procedure sbAnulaProcesClick(Sender: TObject);
    procedure brwProcessosAfterScroll(DataSet: TDataSet);
    procedure brwProcessosAlConsultarCampoFiltro2(Sender: TObject;
      var Personalizada: Boolean; NombreConsulta: String;
      var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure brwProcessosCalcFields(DataSet: TDataSet);
    procedure cProfessionalsAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure sbMailMonitorClick(Sender: TObject);
    procedure sbMonitorClick(Sender: TObject);
    procedure cEscolesAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure brwProcessosBeforeEdit(DataSet: TDataSet);
    procedure Ed_brwProcessos_MonitorChange(Sender: TObject);
    procedure Ed_brwProcessos_EscolaChange(Sender: TObject);
    procedure sbCanviMonitorClick(Sender: TObject);
    procedure EnviarMailMonitor(Sender: TObject);
    procedure botoClick(Sender: TObject);
    procedure Check_brwProcessos_AltresCursosClick(Sender: TObject);
    procedure pcProcessosConsultaGetSqlField(Sender: THYConsulta;
      var SqlField: String);
    procedure pcProcessosAlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Query: TQuery);
    procedure pcProcessosAlChangeRegistro(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cPeticioDeAlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cPeticioDeAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cEscolesAlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cMonitorAlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cProfessionalsAlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure brwProcessosAfterPost(DataSet: TDataSet);
    procedure sbDuplicaClick(Sender: TObject);
  private
    topeProcessos: Integer;    // parte 52390
    datasolAnt: TDateTime;     // parte 52390
    Avisar,Tots: Boolean;
    lastId: Integer;
    procedure EnviarMailAnulacioM;
    procedure EnviarMailAnulacioE;
    procedure EnviarMailCanviMonitor;
    function FormatejaCurs(DataSet: TDataSet):String;
    function UTF8EncodeD6(const S: WideString): UTF8String;
    function UrlEncodeUTF8(const S: WideString): string;
    procedure EnviarMailTo(Destinatari, Assumpte, Cos, TextError: String);
  public
    { Public declarations }
  end;

var
  wFitxaManteniment: TwFitxaManteniment;

implementation

{$R *.dfm}

uses JclMapi, DataHola, Funciones;

procedure TwFitxaManteniment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TwFitxaManteniment.FormCreate(Sender: TObject);
begin
  PreguntaMetge;
  if wDataHola.UsuariActiu.Codi <> '' then lUserActiu.Caption := 'Usuari Actiu: '+wDataHola.UsuariActiu.NomSencer
                                      else lUserActiu.Caption := 'Usuari Actiu: ---------- ';

  Avisar := True;
  Tots   := False;  // només mostrem els actius al principi
  pcProcessos.Execute('','');

  topeProcessos := HolaSelect('select n_codi from codis where TIPUSCODI = "TOPEPROCESSOS" and C_CODI=0',[]);    // parte 52390
  lTopeProcessos.Caption := 'Número màxim de processos per dia: '+IntToStr(topeProcessos);
end;

procedure TwFitxaManteniment.brwProcessosBeforePost(DataSet: TDataSet);
var
  clau,quants: integer;
begin
  // parte 52390 - i
  if (DataSet.State = dsInsert) or (datasolAnt <> DataSet.FieldByName('datasollicitud').AsDateTime) then
  begin
    if HolaSelect('select count(*) from BLOQUEIG where dia = "%s"',[FormatDateTime('dd.mm.yyyy',DataSet.FieldByName('datasollicitud').AsDateTime)])
    then FerError('Dia bloquejat. No es pot afegir cap procés per aquest dia.',True);

    quants:= HolaSelect('select count(*) from PROCESSOS where DATASOLLICITUD = "%s"',[FormatDateTime('dd.mm.yyyy',DataSet.FieldByName('datasollicitud').AsDateTime)]);
    if quants >= topeProcessos then
    begin
        if not AvisoSN(Format('ATENCIÓ!! Ja existeixen %d processos el dia "%s". Vols continuar (S/N)?',
                              [quants,FormatDateTime('dd.mm.yyyy',DataSet.FieldByName('datasollicitud').AsDateTime)]))
        then Abort;
    end;
  end;
  // parte 52390 - f

  // parte 54184 - i
  if  (not DataSet.FieldByName('Peticio_De').IsNull) and (DataSet.FieldByName('Peticio_De').AsInteger = 6)
  and DataSet.FieldByName('Peticio_De_Altres').IsNull
  then FerError('Per petició de "ALTRES" cal indicar qui són aquests altres.',True);

  if  (not DataSet.FieldByName('Peticio_De').IsNull) and (DataSet.FieldByName('Peticio_De').AsInteger <> 6)
  then DataSet.FieldByName('Peticio_De_Altres').Clear;
  // parte 54184 - f

  if dataset.State = dsInsert then
  begin
    clau := HolaSelect('select max(id) from processos',[]) + 1;
    dataset.FieldByName('id').AsInteger := clau;
    dataset.FieldByName('estat').AsInteger := 1; // actiu
  end;
  lastId := brwProcessos.FieldByName('id').AsInteger;
end;

function TwFitxaManteniment.FormatejaCurs(DataSet: TDataSet):String;
begin
  Result := '';
  if DataSet.FieldByName('CURS3ERESO').AsString = 'S' then Result := Result + '3er ESO ';
  if DataSet.FieldByName('CURS4RTESO').AsString = 'S' then Result := Result + '4rt ESO ';
  if DataSet.FieldByName('CURS1ERBAT').AsString = 'S' then Result := Result + '1er BAT ';
  if DataSet.FieldByName('CURS2ONBAT').AsString = 'S' then Result := Result + '2on BAT ';
  if DataSet.FieldByName('CICLESFORMATIUS').AsString = 'S' then Result := Result + 'Cicles Formatius ';
  if DataSet.FieldByName('ALTRESCURSOS').AsString = 'S' then Result := Result + DataSet.FieldByName('CURS').AsString;
end;

function TwFitxaManteniment.UTF8EncodeD6(const S: WideString): UTF8String;
begin
  Result := UTF8Encode(S);
end;

function TwFitxaManteniment.UrlEncodeUTF8(const S: WideString): string;
const
  Hex: array[0..15] of Char = '0123456789ABCDEF';
var
  U: UTF8String;
  I: Integer;
  B: Byte;
begin
  Result := '';
  U := UTF8EncodeD6(S);

  for I := 1 to Length(U) do
  begin
    B := Ord(U[I]);

    case B of
      Ord('A')..Ord('Z'),
      Ord('a')..Ord('z'),
      Ord('0')..Ord('9'),
      Ord('-'), Ord('_'), Ord('.'), Ord('~'):
        Result := Result + Char(B);

      13:
        ; // Ignorem CR

      10:
        Result := Result + '%0D%0A';

      32:
        Result := Result + '%20';

    else
      Result := Result + '%' + Hex[B shr 4] + Hex[B and $0F];
    end;
  end;
end;

procedure TwFitxaManteniment.EnviarMailTo(Destinatari, Assumpte, Cos, TextError: String);
var
 MailTo: String;
begin
    MailTo := 'mailto:' + Destinatari +
              '?subject=' + UrlEncodeUTF8(Assumpte) +
              '&body=' + UrlEncodeUTF8(Cos);

    TRY  ShellExecute(0,
                      'open',
                      PChar(MailTo),
                      nil,
                      nil,
                      SW_SHOWNORMAL);
    EXCEPT
        on E: Exception do FerError('No s''ha pogut avisar a ' + TextError + ' per correu electrònic.' + NLine + E.Message, True);
    END;
end;

procedure TwFitxaManteniment.sbMailEscolaClick(Sender: TObject);
var
 escolaEmail, cosEmailEscola: string;
begin
  while wDataHola.UsuariActiu.Codi = '' do
  begin
      PreguntaMetge;
      if wDataHola.UsuariActiu.Codi <> '' then lUserActiu.Caption := 'Usuari Actiu: '+wDataHola.UsuariActiu.NomSencer
                                          else lUserActiu.Caption := 'Usuari Actiu: ---------- ';
  end;

  // només permetre enviar mail a l'escola si l'estat és 2-MONITOR AVISAT, FALTA AVISAR ESCOLA
  if (brwProcessos.FieldByName('estat').AsInteger <> 2 ) then
  begin
    brwProcessos.Cancel;
    FerError('En aquest estat no es permet enviar l''e-mail a l''escola.',True);
  end;

  if brwProcessos.FieldByName('escola').isnull then
  begin
    Ed_brwProcessos_Escola.SetFocus;
    FerError('Primer cal informar l''escola.',True);
  end;

  if AvisoSN('Voleu enviar e-mail a l''escola '+brwProcessos.FieldByName('Escola_nomescola').asstring+'? (S/N)')
  then begin
      // enviar e-mail a l'escola amb les dades del monitor
      cosEmailEscola := '- - - IMPORTANT! LLEGIR TOT EL CONTINGUT DEL MAIL - - -' + NLine + NLine +
                        'Bon dia/bona tarda,'+Nline+NLine+
                        brwProcessos.FieldByName('Escola_NomEscola').asstring+NLine+NLine+
                        'Aquí tens/teniu el recordatori. Truca/truqueu al monitor/a assignat/da i concreteu tot amb ell/a directament '+
                        'per a la/les nostra/es xerrada/es GAME OVER Format Presencial. Concreteu tot directament: lloc exacte on es farà '+
                        'la/es xerrada/es, arribada al centre, estada i sortida del centre.'+NLine+NLine+
                        'És imprescindible que tant l''espai, com l''accés sigui accessible pels nostres monitors/es que, en una gran majoria, '+
                        'es desplacen en cadira de rodes. '+Nline+Nline+
                        'Li poso en copia al monitor/a i així tots degudament informats. '+NLine+NLine+
                        'Formulari per omplir pel professorat, un cop acabi la xerrada:'+NLine+NLine+
                        'https://enquestes.guttmann.com/enquesta/valoracio-del-programa-de-prevencio-daccidents-game-over-professorat/'+Nline+Nline+
                        'La/les xerrada/es està/estan confirmada/es pel proper dia '+brwProcessos.FieldByName('Datasollicitud').asstring+' a les '+
                        brwProcessos.FieldByName('horari').asstring+', per als alumnes de: '+FormatejaCurs(brwProcessos)
                        {brwProcessos.FieldByName('Curs').asstring}+'.'+Nline+
                        'El/La monitor/a que us vindrà a fer la/es xerrada/es, serà en/na '+brwProcessos.FieldByName('Professional_nom').asstring+' '+
                        brwProcessos.FieldByName('Professional_cognom1').asstring+' '+brwProcessos.FieldByName('Professional_cognom2').asstring+
                        ', el seu telèfon mòbil és el '+brwProcessos.FieldByName('Professional_mobil').asstring+
                        '. Heu de trucar-lo per quedar entre vosaltres directament.'+Nline+
                        'Recordeu que heu de tenir per a la sessió un ordinador amb port USB.'+Nline+
                        'Recordeu que per facilitar l''accessibilitat del monitor a l''escola, és necessari que li faciliteu un lloc '+
                        'per aparcar el vehicle a prop de l''entrada.'+Nline+
                        'Si us plau, confirma''m la recepció d''aquest e-mail.'+Nline+
                        'Moltes gràcies per avançat.'+Nline+Nline+
                        'Una abraçada,'+Nline+NLine+
                        'Kevin Lao i Rafi Villodres'+Nline+
                        'Comunicació i RSC'+NLine+
                        'programessocials@guttmann.com'+NLine+
                        'Tel: 934977700 - Ext: 3881 o 2380'+NLine+
                        'Mob: 682428041'+NLine+
                        'www.guttmann.com'+Nline;

      escolaEmail := brwProcessos.FieldByName('Escola_email').AsString;

      WaitOn('Enviant e-mail a '+ escolaEmail);
      WaitOff(1000);

      EnviarMailTo(escolaEmail, 'Institut Guttmann confirmació Game Over i monitor', cosEmailEscola, 'l''ESCOLA/MONITOR');

      // si l'enviament ha anat ok, actualitzem les dades del procés
      ShowMessage('Mail enviat correctament a: '+ brwProcessos.FieldByName('Escola_email').asstring);
      Avisar := False;
      brwProcessos.Edit;
      if brwProcessos.FieldByName('data_monitor').IsNull then brwProcessos.FieldByName('estat').asinteger := 3 // escola avisada, falta avisar monitor
      else brwProcessos.FieldByName('estat').asinteger := 4;                                                   // escola i monitor avisats
      brwProcessos.FieldByName('data_escola').asdatetime := dateserver;
      brwProcessos.Post;
      Avisar := True;
  end;
end;

procedure TwFitxaManteniment.sbAnulaProcesClick(Sender: TObject);
var
 nouEstat: Integer;
 nomMonitor,cosEMail,linia,observa,monitor,mailMonitor: String;
 qSessions: TQuery;
// nom_FitxerTXT: String;
// FitxerTXT: TextFile;
begin
  if brwProcessos.FieldByName('estat').asinteger <> 5 then
  begin
    if AvisoSN('Voleu anul·lar el procés? (S/N)') then
    begin
      nomMonitor:= brwProcessos.FieldByName('Professional_nom').asstring+' '+brwProcessos.FieldByName('Professional_cognom1').asstring+
                   ' '+brwProcessos.FieldByName('Professional_cognom2').asstring;
      monitor := brwProcessos.FieldByName('monitor').asstring;
      mailMonitor := brwProcessos.FieldByName('Professional_email').asstring;

      if not brwProcessos.FieldByName('data_monitor').isnull then EnviarMailAnulacioM;
      if not brwProcessos.FieldByName('data_escola').isnull then EnviarMailAnulacioE;

      // només si s'han pogut enviar correctament els dos mail's canviem l'estat
      Avisar := False;
      brwProcessos.Edit;
      brwProcessos.FieldByName('estat').asinteger := 5; // anul·lar
      if brwProcessos.FieldByName('data_anula').isnull then brwProcessos.FieldByName('data_anula').asdatetime := dateserver;
      brwProcessos.Post;
      Avisar := True;
      sbAnulaProces.Caption := 'Cancel·lar anul·lació';
    end;

    // PARTE 41340: un cop feta l'anul·lació, enviem mail al monitor amb la llista de sessions actives que li han quedat després d'aquesta anul·lació
    if AvisoSN('Voleu enviar e-mail al monitor '+nomMonitor+' amb la llista de sessions actualitzada? (S/N)')
    then begin
          {if wDataHola.ES_PROVA
          then nom_FitxerTXT := format('G:\PROVES\GAME OVER\%s%s.txt',
                                [nomMonitor,FormatDateTime('ddmmyyyy_hhmm',NowServer)])
          else begin  // parte 41461: intentem posar el fitxer a la carpeta del monitor
              if DirectoryExists(format('C:\GameOver\Sessions\%s',[nomMonitor]))                              // G:\BIN\GameOver\Sessions Game Over\%s
              then nom_FitxerTXT := format('C:\GameOver\Sessions\%s\%s%s.txt',                                // G:\BIN\GameOver\Sessions Game Over\%s\%s%s.txt
                                           [nomMonitor,nomMonitor,FormatDateTime('ddmmyyyy_hhmm',NowServer)])
              else begin
                  nom_FitxerTXT := format('C:\GameOver\Sessions\%s%s.txt',                                    // G:\BIN\GameOver\Sessions Game Over
                                          [nomMonitor,FormatDateTime('ddmmyyyy_hhmm',NowServer)]);
                  ShowMEssage('No existeix carpeta pel monitor '+nomMonitor+'. El fitxer es crea a '+nom_FitxerTXT);
              end;
          end;
          AssignFile(FitxerTXT, nom_FitxerTXT);
          Rewrite(FitxerTXT); }

          // hem de comunicar les dades següents de totes les sessions actives del monitor
          qSessions := TQuery.Create(Application);
          qSessions.DatabaseName := 'internahola';
          qSessions.SQL.text := 'select p.datasollicitud, e.nomescola, e.telefon, e.adreca, e.poblacio, c.N_CODI, P.HORARI, P.CURS, P.CONTACTE, '+
                                'P.NUM_GRUP, P.NUM_ALUMNES, P.OBSERVACIONS, P.CURS3ERESO, P.CURS4RTESO, P.CURS1ERBAT, P.CURS2ONBAT, P.CICLESFORMATIUS, '+
                                'P.ALTRESCURSOS From processos p '+
                                'left join escoles e on p.escola = e.id '+
                                'left join codis c on e.comarca = c.c_codi and c.tipuscodi ="COMARCA" '+
                                'where p.monitor = '+monitor+' and p.datasollicitud >= "TODAY" and p.estat <> 5 '+
                                'ORDER BY P.DATASOLLICITUD ';
          qSessions.Open;
          cosEMail:=nomMonitor+' tens assignades les següents sessions:' + NLine;

          {linia := Justifica('Data',-11)+Justifica('Escola',-60)+Justifica('Telèfon',-30)+Justifica('Adreça',-50)+
                   Justifica('Població',-50)+Justifica('Comarca',-40)+Justifica('Hora',-40)+Justifica('Curs',-50)+
                   Justifica('Responsable Grup',-40)+Justifica('NºGrups',-10)+Justifica('NºAlumnes',-10)+Justifica('Observacions',-1009);
          Append(FitxerTXT);
          Writeln(FitxerTXT, linia);}

          while not qSessions.Eof do
          begin
              with qSessions do
              begin
                  if Fieldbyname('observacions').isnull
                  then observa := '--- sense observacions ---'
                  else observa := CopyLeft(fieldbyname('observacions').asstring,1019);

                  {linia := Justifica(Fieldbyname('datasollicitud').asstring,-11)+Justifica(Fieldbyname('nomescola').asstring,-60)+
                           Justifica(Fieldbyname('telefon').asstring,-30)+Justifica(Fieldbyname('adreca').asstring,-50)+
                           Justifica(Fieldbyname('poblacio').asstring,-50)+Justifica(Fieldbyname('n_codi').asstring,-40)+
                           Justifica(Fieldbyname('horari').asstring,-40)+Justifica(FormatejaCurs(qSessions),-50)+
                           Justifica(Fieldbyname('contacte').asstring,-40)+Justifica(Fieldbyname('num_grup').asstring,-10)+
                           Justifica(Fieldbyname('NUM_ALUMNES').asstring,-10)+Justifica(observa,-1009);}
                  linia := 'Data sol·licitud: ' + Fieldbyname('datasollicitud').AsString + ' Nom escola: ' + Fieldbyname('nomescola').AsString +
                           ' Telf.: ' + Fieldbyname('telefon').AsString + ' Adreça: ' + Fieldbyname('adreca').asstring +
                           ' Població: ' + Fieldbyname('poblacio').asstring + Fieldbyname('n_codi').asstring + ' Email: ' + Fieldbyname('email').asstring +
                           ' Horari: ' + Fieldbyname('horari').asstring + ' Sessions: ' + FormatejaCurs(qSessions) +
                           ' Contacte: ' + Fieldbyname('contacte').asstring + ' Num.grup: ' + Fieldbyname('num_grup').asstring +
                           ' Num.alumnes: ' + Fieldbyname('NUM_ALUMNES').asstring + observa;
              end;
              cosEMail := cosEMail + NLine + linia;
              // Append(FitxerTXT);
              // Writeln(FitxerTXT, linia);

              qSessions.Next;
          end;

          // Flush(FitxerTXT);
          // CloseFile(FitxerTXT);

          // enviar e-mail al monitor amb les sessions actives
          WaitOn('Enviant e-mail a '+ mailMonitor);
          WaitOff(1000);

          EnviarMailTo(mailMonitor, 'Institut Guttmann sessions programades', cosEmail, 'al MONITOR');

          ShowMessage('Mail enviat correctament a: '+mailMonitor);

          qSessions.Close;
          qSessions.Free;
    end;
  end
  else begin
    Avisar := False;
    brwProcessos.Edit;
    brwProcessos.FieldByName('estat').asinteger := 1;   // Actiu: falta enviar mail a escola i monitor
    brwProcessos.FieldByName('data_anula').clear;
    brwProcessos.Post;
    Avisar := True;
    sbAnulaProces.Caption := 'Anul·lar procés';
  end;
  bProcessos.Refresh;
  pcProcessos.Execute('',''); 
end;

procedure TwFitxaManteniment.brwProcessosAfterScroll(DataSet: TDataSet);
begin
  if (brwProcessos.state <> dsInsert) then
  begin
    if (brwProcessos.FieldByName('estat').asinteger <> 5) then sbAnulaProces.Caption := 'Anul·lar procés'
    else sbAnulaProces.Caption := 'Cancel·lar anul·lació';

    sbAnulaProces.Enabled:= true; // menys quan estem insertant, el botó d'anul·lar ha d'estar enabled
  end
  else sbAnulaProces.Enabled := False;

  sbMonitor.Enabled := not brwProcessos.FieldByName('monitor').isnull;
  sbCanviMonitor.Enabled := brwProcessos.FieldByName('estat').asinteger in [2,3,4];
end;

procedure TwFitxaManteniment.brwProcessosAlConsultarCampoFiltro2(
  Sender: TObject; var Personalizada: Boolean; NombreConsulta: String;
  var SubFiltro: String; CampoDb: String; ValueDb: Variant);
var
  opcio: integer;
begin
    Personalizada := False;
    if (CompareText(NombreConsulta, 'Professional')=0)
    then begin
        // parte 49617 - i.
        if brwProcessos.FieldByName('datasollicitud').IsNull then cProfessionals.SqlDic[2] := '0'
                                                             else cProfessionals.SqlDic[2] := FormatDateTime('mm',brwProcessos.FieldByName('datasollicitud').AsDateTime)+
                                                                                              ' and f_year(x.datasollicitud)= '+
                                                                                              FormatDateTime('yyyy',brwProcessos.FieldByName('datasollicitud').AsDateTime);
        // parte 49617 - f.
        if brwProcessos.FieldByName('escola').IsNull then cProfessionals.SqlDic[3] := '[FILTRO]'
        else begin
          opcio:=AvisoLista('Triar una de les dues opcions següents: ',
                            ['1. Llistar els monitors de la mateixa comarca de l''escola ',
                             '2. Llistar tots els monitors']);

          if (opcio = 0) and brwProcessos.FieldByName('escola_comarca').isnull then
          begin
            opcio := 1;
            ShowMessage('Comarca no informada. Llistem tots els monitors.');
          end;

          case opcio of
          0: cProfessionals.SqlDic[3] := 'where comarca = '+ brwProcessos.FieldByName('escola_comarca').AsString +
                                         ' and P.BAIXA="N" [AND FILTRO]';
          1: cProfessionals.Sqldic[3] := 'where P.BAIXA="N" [AND FILTRO]';
          end;
        end;

        cProfessionals.ExecuteModal('','');
        Personalizada := True;
    end;
    if (CompareText(NombreConsulta, 'Escola')=0)
    then begin
       cEscoles.ExecuteModal('','');
       Personalizada := True;
    end;
    if (CompareText(NombreConsulta, 'PeticioDe')=0)
    then begin
       cPeticioDe.ExecuteModal('','');
       Personalizada := True;
    end;
end;

procedure TwFitxaManteniment.brwProcessosCalcFields(DataSet: TDataSet);
begin
  // brwProcessos té 2 camps calculats: comarcaP_n_codi i comarcaE_n_codi
  dataset.FieldByName('comarcaP_n_codi').asstring := HolaSelect('select n_codi from codis where tipuscodi = "COMARCA" and c_codi = %d',
                                                                [dataset.FieldByName('professional_comarca').asinteger]);
  dataset.FieldByName('comarcaE_n_codi').asstring := HolaSelect('select n_codi from codis where tipuscodi = "COMARCA" and c_codi = %d',
                                                                [dataset.FieldByName('escola_comarca').asinteger]);
end;

procedure TwFitxaManteniment.cProfessionalsAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  mes,anyo: Integer;
begin
  if not (brwProcessos.State in [dsEdit, dsInsert]) then brwProcessos.Edicion;
  mes:=StrToInt(FormatDateTime('mm',brwProcessos.FieldByName('datasollicitud').AsDateTime));
  anyo:=StrToInt(FormatDateTime('yyyy',brwProcessos.FieldByName('datasollicitud').AsDateTime));
  //parte 49348-i: si el monitor que volen assignar ja té assignades tantes xerrades (=grups) aquest mes com el màxim establert, avisar
  if (HolaSelect('select sum(num_grup) from processos where monitor=%d and f_month(datasollicitud) = %d '+
                'AND F_YEAR(DATASOLLICITUD) = %d AND ESTAT <> 5',[Datos.FieldByName('id').AsInteger,mes,anyo]) >
      Datos.FieldByName('max_xerrades_mes').AsInteger)
  then begin
      if AvisoSN(' --- ATENCIÓ !!! --- '+NLine+Format('Aquest monitor té %d xerrades màximes al mes. Pel mes %d no pot fer %d xerrades més.'+Nline+
                 'Voleu continuar (S/N)?',[Datos.FieldByName('max_xerrades_mes').AsInteger,mes,brwProcessos.FieldByName('num_grup').AsInteger]))
      then brwProcessos.FieldByName('Monitor').AsInteger := Datos.FieldByName('id').AsInteger;
  end
  else
  //parte 49348-f.
  brwProcessos.FieldByName('Monitor').AsInteger := Datos.FieldByName('id').AsInteger;
end;

procedure TwFitxaManteniment.sbMailMonitorClick(Sender: TObject);
var
 cosEmailMonitor : string;
begin
  // si no estem en estat 1 ó 2, no permetre enviar mail a monitor
  if (brwProcessos.FieldByName('estat').AsInteger > 2) then
  begin
    brwProcessos.Cancel;
    FerError('En aquest estat no es permet enviar l''e-mail al monitor.',True);
  end;

  if brwProcessos.FieldByName('monitor').isnull then
  begin
    Ed_brwProcessos_Monitor.SetFocus;
    FerError('Primer cal informar el monitor.',True);
  end;

  // enviar mail al monitor, canviar l'estat del procés a 2 i guardar-nos la data en que s'ha fet
  if AvisoSN('Voleu enviar e-mail al monitor '+brwProcessos.FieldByName('Professional_nom').asstring+' '+
             brwProcessos.FieldByName('Professional_cognom1').asstring+' '+brwProcessos.FieldByName('Professional_cognom2').asstring+'? (S/N)')
  then begin
        // enviar e-mail al monitor amb les dades de l'escola
        cosEmailMonitor := ' Se li ha assignat la següent sessió informativa: '+NLine+
                           ' Escola: '+brwProcessos.FieldByName('Escola_nomescola').asstring+NLine+
                           ' Telèfon: '+brwProcessos.FieldByName('Escola_telefon').asstring+NLine+
                           ' Adreça: '+brwProcessos.FieldByName('Escola_Adreca').asstring+NLine+
                           ' Població: '+brwProcessos.FieldByName('EScola_Poblacio').asstring+NLine+
                           ' E-mail: '+brwProcessos.FieldByName('Escola_email').asstring+NLine+
                           ' Data sessió: '+brwProcessos.FieldByName('Datasollicitud').asstring+NLine+
                           ' Horari: '+brwProcessos.FieldByName('horari').asstring+NLine+
                           ' Curs: '+FormatejaCurs(brwProcessos){brwProcessos.FieldByName('Curs').asstring+NLine}+
                           ' Persona de contacte: '+brwProcessos.FieldByName('contacte').asstring+NLine+
                           ' Número d''alumnes: '+brwProcessos.FieldByName('Num_alumnes').asstring+NLine+
                           ' Número de grup: '+brwProcessos.FieldByName('Num_grup').asstring+NLine+
                           ' Observacions: '+brwProcessos.FieldByName('Observacions').asstring;
        WaitOn('Enviant e-mail a '+ brwProcessos.FieldByName('Professional_email').asstring);
        WaitOff(1000);

        EnviarMailTo(brwProcessos.FieldByName('Professional_email').AsString, 'Institut Guttmann sessions programades', cosEmailMonitor, 'al MONITOR');

        // SI L'ENVIAMENT HA ANAT CORRECTAMENT POSEM L'ESTAT CORRECTE
        ShowMessage('Mail enviat correctament a: '+ brwProcessos.FieldByName('Professional_email').asstring);
        Avisar := False;
        brwProcessos.Edit;
        if brwProcessos.fieldbyname('data_escola').isnull then brwProcessos.FieldByName('estat').asinteger := 2 // avisat monitor, falta avisar escola
        else brwProcessos.FieldByName('estat').asinteger := 4;                                                  // escola i monitor avisats
        brwProcessos.FieldByName('data_monitor').asdatetime := dateserver;
        brwProcessos.Post;
        Avisar := True;
  end;
end;

procedure TwFitxaManteniment.sbMonitorClick(Sender: TObject);
begin
  cMonitor.SqlDic[4] := 'where p.monitor = '+ brwProcessos.FieldByName('monitor').asstring;
  cMonitor.SqlDicTotal[4] := 'where p.monitor = '+ brwProcessos.FieldByName('monitor').asstring;
  cMonitor.ExecuteModal('','');
end;

procedure TwFitxaManteniment.cEscolesAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if not (brwProcessos.State in [dsEdit, dsInsert]) then brwProcessos.Edicion;
  brwProcessos.FieldByName('escola').AsInteger := datos.fieldbyname('id').asinteger;
end;

procedure TwFitxaManteniment.brwProcessosBeforeEdit(DataSet: TDataSet);
begin
    if not Avisar then Exit;  // només avisem per accions manuals
    if (not AvisoSN('Esteu segurs de que voleu modificar aquest procés?')) then Abort;
    datasolAnt := DataSet.FieldByName('datasollicitud').AsDateTime;   // parte 52390     
end;

procedure TwFitxaManteniment.EnviarMailAnulacioM;
var
 cosEmailAnulMonitor : string;
begin
  // enviar e-mail al monitor amb les dades de l'escola
  cosEmailAnulMonitor := ' **********************  ANUL·LACIÓ DE LA SESSIÓ SEGÜENT *********************'+Nline+
                     ' Escola: '+brwProcessos.FieldByName('Escola_nomescola').asstring+NLine+
                     ' Telèfon: '+brwProcessos.FieldByName('Escola_telefon').asstring+NLine+
                     ' Adreça: '+brwProcessos.FieldByName('Escola_Adreca').asstring+NLine+
                     ' Població: '+brwProcessos.FieldByName('EScola_Poblacio').asstring+NLine+
                     ' E-mail: '+brwProcessos.FieldByName('Escola_email').asstring+NLine+
                     ' Data sessió: '+brwProcessos.FieldByName('Datasollicitud').asstring+NLine+
                     ' Horari: '+brwProcessos.FieldByName('horari').asstring+NLine+
                     ' Curs: '+FormatejaCurs(brwProcessos){brwProcessos.FieldByName('Curs').asstring}+NLine+
                     ' Persona de contacte: '+brwProcessos.FieldByName('contacte').asstring+NLine+
                     ' Número d''alumnes: '+brwProcessos.FieldByName('Num_alumnes').asstring+NLine+
                     ' Número de grup: '+brwProcessos.FieldByName('Num_grup').asstring+NLine+
                     ' Observacions: '+brwProcessos.FieldByName('Observacions').asstring;
  WaitOn('Enviant e-mail a '+ brwProcessos.FieldByName('Professional_email').asstring);
  WaitOff(1000);

  EnviarMailTo(brwProcessos.FieldByName('Professional_email').AsString, 'Institut Guttmann sessions programades', cosEmailAnulMonitor, 'al MONITOR');

  // SI L'ENVIAMENT HA ANAT CORRECTAMENT ESBORREM LA DATA D'ENVIAMENT AL MONITOR
  ShowMessage('Mail enviat correctament a: '+ brwProcessos.FieldByName('Professional_email').asstring);
  Avisar := False;
  brwProcessos.Edit;
  // esborrem data d'enviament del mail al monitor
  brwProcessos.FieldByName('data_monitor').Clear;
  brwProcessos.Post;
  Avisar := True;
end;

procedure TwFitxaManteniment.EnviarMailAnulacioE;
var
 MailTo, cosEmailAnulEscola : string;
begin
  // enviar e-mail a l'escola amb les dades de la sessió
  cosEmailAnulEscola := ' **********************  ANUL·LACIÓ DE LA SESSIÓ SEGÜENT *********************'+Nline+
                        'Benvolgut/da,'+Nline+
                        'La xerrada del proper dia '+brwProcessos.FieldByName('Datasollicitud').asstring+' a les '+
                        brwProcessos.FieldByName('horari').asstring+', per als alumnes de '+FormatejaCurs(brwProcessos)
                        {brwProcessos.FieldByName('Curs').asstring}+' ha estat ANUL·LADA.'+Nline+
                        'Si us plau, confirma''m la recepció d''aquest e-mail.'+Nline+
                        'Gràcies per endavant, atentament,'+Nline+Nline+
                        'Kevin Lao i Rafi Villodres'+Nline+Nline+
                        'Comunicació i RSC'+NLine+
                        'programessocials@guttmann.com'+NLine+
                        'Tel: 934977700 - Ext: 3881 o 2380'+NLine+
                        'Mob: 682428041'+NLine+
                        'www.guttmann.com'+Nline;

  WaitOn('Enviant e-mail a '+ brwProcessos.FieldByName('Escola_email').asstring);
  WaitOff(1000);

  MailTo := 'mailto:' + brwProcessos.FieldByName('Escola_email').AsString +
            '?subject=' + UrlEncodeUTF8('Institut Guttmann sessions programades') +
            '&body=' + UrlEncodeUTF8(cosEmailAnulEscola);

  TRY  ShellExecute(0,
                    'open',
                    PChar(MailTo),
                    nil,
                    nil,
                    SW_SHOWNORMAL);
  EXCEPT
      on E: Exception do FerError('No s''ha pogut avisar a l''ESCOLA per correu electrònic.' + NLine + E.Message, True);
  END;

  // si l'enviament ha anat ok, actualitzem la data d'enviament a l'escola
  ShowMessage('Mail enviat correctament a: '+ brwProcessos.FieldByName('Escola_email').asstring);
  Avisar := False;
  brwProcessos.Edit;
  // esborrem data d'enviament del mail a l'escola
  brwProcessos.FieldByName('data_escola').Clear;
  brwProcessos.Post;
  Avisar := True;
end;

procedure TwFitxaManteniment.Ed_brwProcessos_MonitorChange(
  Sender: TObject);
begin
  // només permetre assignar/modificar monitor mentre estiguem en estat 1-ACTIU
  if (brwProcessos.State = dsEdit)
  and (brwProcessos.FieldByName('estat').AsInteger > 1) then
  begin
    brwProcessos.Cancel;
    FerError('En aquest estat no es permet modificar el monitor.',True);
  end;
end;

procedure TwFitxaManteniment.Ed_brwProcessos_EscolaChange(Sender: TObject);
begin
  // només permetre canviar l'escola mentre estem en estat 1-ACTIU
  if (brwProcessos.State = dsEdit)
  and (brwProcessos.FieldByName('estat').AsInteger > 1 ) then
  begin
    brwProcessos.Cancel;
    FerError('En aquest estat no es permet modificar l''escola.',True);
  end;
end;

procedure TwFitxaManteniment.sbCanviMonitorClick(Sender: TObject);
begin
    if AvisoSN('Al canviar el monitor s''enviaran mail''s d''anul·lació al monitor i a l''escola. Voleu continuar? (S/N)') then
    begin
      // enviem mail d'anul·lació al monitor i a l'escola
      if not brwProcessos.FieldByName('data_monitor').isnull then EnviarMailAnulacioM;
      if not brwProcessos.FieldByName('data_escola').isnull then EnviarMailCanviMonitor;

      // només si s'han pogut enviar correctament els dos mail's canviem l'estat
      Avisar := False;
      brwProcessos.Edit;
      brwProcessos.FieldByName('estat').AsInteger := 1; // caldrà tornar a enviar mail al monitor nou i a l'escola
      brwProcessos.FieldByName('monitor').Clear;
      brwProcessos.Post;
      Avisar := True;
    end;
end;

procedure TwFitxaManteniment.EnviarMailCanviMonitor;
var
 MailTo, cosEmailCanvi : string;
begin
  // enviar e-mail a l'escola amb les dades de la sessió
  cosEmailCanvi := ' **********************  ANUL·LACIÓ DE LA SESSIÓ SEGÜENT *********************'+Nline+
                   'Benvolgut/da,'+Nline+
                   'Hem canviat el monitor per la xerrada del proper dia '+brwProcessos.FieldByName('Datasollicitud').asstring+' a les '+
                   brwProcessos.FieldByName('horari').asstring+', per als alumnes de '+FormatejaCurs(brwProcessos)
                   {brwProcessos.FieldByName('Curs').asstring}+'.'+Nline+Nline+
                   'En breu us farem arribar les dades d''aquest nou monitor.'+Nline+Nline+
                   'Disculpeu les molèsties, atentament,'+Nline+
                   'Kevin Lao i Rafi Villodres'+Nline+Nline+
                   'Comunicació i RSC'+NLine+
                   'programessocials@guttmann.com'+NLine+
                   'Tel: 934977700 - Ext: 3881 o 2380'+NLine+
                   'Mob: 682428041'+NLine+
                   'www.guttmann.com'+Nline;

  WaitOn('Enviant e-mail a '+ brwProcessos.FieldByName('Escola_email').asstring);
  WaitOff(1000);

  MailTo := 'mailto:' + brwProcessos.FieldByName('Escola_email').AsString +
            '?subject=' + UrlEncodeUTF8('Institut Guttmann: canvi de monitor en sessió Game Over') +
            '&body=' + UrlEncodeUTF8(cosEmailCanvi);

  TRY  ShellExecute(0,
                    'open',
                    PChar(MailTo),
                    nil,
                    nil,
                    SW_SHOWNORMAL);
  EXCEPT
      on E: Exception do FerError('No s''ha pogut avisar a l''ESCOLA per correu electrònic.' + NLine + E.Message, True);
  END;

  // si l'enviament ha anat ok
  ShowMessage('Mail enviat correctament a: '+ brwProcessos.FieldByName('Escola_email').asstring);
  Avisar := False;
  brwProcessos.Edit;
  // esborrem data d'enviament del mail a l'escola pq s'haurà d'enviar un nou mail amb el nou monitor
  brwProcessos.FieldByName('data_escola').Clear;
  brwProcessos.Post;
  Avisar := True;
end;

procedure TwFitxaManteniment.EnviarMailMonitor(Sender: TObject);
var
 qSessions: TQuery;
 observa: string;
// FitxerTXT: TextFile;
// nom_FitxerTXT: String;
 linia: String;
 cosEMail: String;
 MailTo, nomMonitor: string;
 i: Integer;
begin
  // si no estem en estat 1 ó 2, no permetre enviar mail a monitor
  if (brwProcessos.FieldByName('estat').AsInteger > 2) then
  begin
    brwProcessos.Cancel;
    FerError('En aquest estat no es permet enviar l''e-mail al monitor.',True);
  end;

  if brwProcessos.FieldByName('monitor').isnull then
  begin
    Ed_brwProcessos_Monitor.SetFocus;
    FerError('Primer cal informar el monitor.',True);
  end;

  // enviar mail al monitor, canviar l'estat del procés a 2 i guardar-nos la data en que s'ha fet
  if AvisoSN('Voleu enviar e-mail al monitor '+brwProcessos.FieldByName('Professional_nom').asstring+' '+
             brwProcessos.FieldByName('Professional_cognom1').asstring+' '+brwProcessos.FieldByName('Professional_cognom2').asstring+'? (S/N)')
  then begin
        nomMonitor:= brwProcessos.FieldByName('Professional_nom').asstring+' '+brwProcessos.FieldByName('Professional_cognom1').asstring+
                     ' '+brwProcessos.FieldByName('Professional_cognom2').asstring;

        // primer creem el fitxer amb les sessions programades
        {if wDataHola.ES_PROVA
        then nom_FitxerTXT := format('G:\PROVES\GAME OVER\%s%s.txt',
                              [nomMonitor,FormatDateTime('ddmmyyyy_hhmm',NowServer)])
        else begin  // parte 41461: intentem posar el fitxer a la carpeta del monitor
            if DirectoryExists(format('C:\GameOver\Sessions\%s',[nomMonitor]))                                     // G:\BIN\GameOver\Sessions Game Over\%s
            then nom_FitxerTXT := format('C:\GameOver\Sessions\%s\%s%s.txt',                                       // G:\BIN\GameOver\Sessions Game Over\%s\%s%s.txt
                                         [nomMonitor,nomMonitor,FormatDateTime('ddmmyyyy_hhmm',NowServer)])
            else begin
                nom_FitxerTXT := format('C:\GameOver\Sessions\%s%s.txt',                                           // G:\BIN\GameOver\Sessions Game Over\%s%s.txt
                                         [nomMonitor,FormatDateTime('ddmmyyyy_hhmm',NowServer)]);
                ShowMEssage('No existeix carpeta pel monitor '+nomMonitor+'. El fitxer es crea a '+nom_FitxerTXT);
            end;
        end;
        AssignFile(FitxerTXT, nom_FitxerTXT);
        Rewrite(FitxerTXT);  }

        // hem de comunicar les dades següents de totes les sessions actives del monitor
        qSessions := TQuery.Create(Application);
        qSessions.DatabaseName := 'internahola';
        qSessions.SQL.text := 'select p.datasollicitud, e.nomescola, e.telefon, e.adreca, e.poblacio, e.email, c.N_CODI, P.HORARI, P.CURS, P.CONTACTE, '+
                              'P.NUM_GRUP, P.NUM_ALUMNES, P.OBSERVACIONS, P.CURS3ERESO, P.CURS4RTESO, P.CURS1ERBAT, P.CURS2ONBAT, P.CICLESFORMATIUS,   '+
                              'P.ALTRESCURSOS From processos p left join escoles e on p.escola = e.id                                                  '+
                              'left join codis c on e.comarca = c.c_codi and c.tipuscodi ="COMARCA"                                                    '+
                              'where p.monitor = '+brwProcessos.FieldByName('monitor').asstring+' and p.datasollicitud >= "TODAY" '+
                              'and p.estat <> 5                                                                                                        '+  // no anul·lades
                              'ORDER BY P.DATASOLLICITUD ';
        qSessions.Open;
        cosEMail:=nomMonitor+' tens assignades les següents sessions:' + NLine;

        {linia := Justifica('Data',-11)+Justifica('Escola',-60)+Justifica('Telèfon',-30)+Justifica('Adreça',-50)+
                 Justifica('Població',-50)+Justifica('Email',-50)+Justifica('Comarca',-40)+Justifica('Hora',-40)+Justifica('Curs',-50)+
                 Justifica('Responsable Grup',-40)+Justifica('NºGrups',-10)+Justifica('NºAlumnes',-10)+Justifica('Observacions',-1009);}
        // Append(FitxerTXT);
        // Writeln(FitxerTXT, linia);

        while not qSessions.Eof do
        begin
            with qSessions do
            begin
                if Fieldbyname('observacions').isnull then observa := '--- sense observacions ---'
                else observa := CopyLeft(fieldbyname('observacions').asstring,1019);

                {linia := Justifica(Fieldbyname('datasollicitud').asstring,-11)+Justifica(Fieldbyname('nomescola').asstring,-60)+
                         Justifica(Fieldbyname('telefon').asstring,-30)+Justifica(Fieldbyname('adreca').asstring,-50)+
                         Justifica(Fieldbyname('poblacio').asstring,-50)+Justifica(Fieldbyname('email').asstring,-50)+
                         Justifica(Fieldbyname('n_codi').asstring,-40)+Justifica(Fieldbyname('horari').asstring,-40)+
                         Justifica(FormatejaCurs(qSessions),-50)+
                         Justifica(Fieldbyname('contacte').asstring,-40)+Justifica(Fieldbyname('num_grup').asstring,-10)+
                         Justifica(Fieldbyname('NUM_ALUMNES').asstring,-10)+Justifica(observa,-1009);}
                linia := 'Data sol·licitud: ' + Fieldbyname('datasollicitud').AsString + ' Nom escola: ' + Fieldbyname('nomescola').AsString +
                         ' Telf.: ' + Fieldbyname('telefon').AsString + ' Adreça: ' + Fieldbyname('adreca').asstring +
                         ' Població: ' + Fieldbyname('poblacio').asstring + Fieldbyname('n_codi').asstring + ' Email: ' + Fieldbyname('email').asstring +
                         ' Horari: ' + Fieldbyname('horari').asstring + ' Sessions: ' + FormatejaCurs(qSessions) +
                         ' Contacte: ' + Fieldbyname('contacte').asstring + ' Num.grup: ' + Fieldbyname('num_grup').asstring +
                         ' Num.alumnes: ' + Fieldbyname('NUM_ALUMNES').asstring + observa;
            end;
            cosEmail := cosEmail + NLine + linia;
            // Append(FitxerTXT);
            // Writeln(FitxerTXT, linia);

            qSessions.Next;
        end;
        qSessions.Close;
        qSessions.Free;

        // Flush(FitxerTXT);
        // CloseFile(FitxerTXT);

        // enviar e-mail al monitor amb les dades de l'escola
        WaitOn('Enviant e-mail a '+ brwProcessos.FieldByName('Professional_email').asstring);
        WaitOff(1000);

        MailTo := 'mailto:' + brwProcessos.FieldByName('Professional_email').AsString +
                  '?subject=' + UrlEncodeUTF8('Institut Guttmann sessions programades') +
                  '&body=' + UrlEncodeUTF8(CosEmail);

        TRY  ShellExecute(0,
                          'open',
                          'olk.exe',
                          PChar(MailTo),
                          nil,
                          SW_SHOWNORMAL);
        EXCEPT
            on E: Exception do FerError('No s''ha pogut avisar al MONITOR per correu electrònic.' + NLine + E.Message, True);
        END;

        // SI L'ENVIAMENT HA ANAT CORRECTAMENT POSEM L'ESTAT CORRECTE
        ShowMessage('Mail enviat correctament a: '+ brwProcessos.FieldByName('Professional_email').asstring);
        Avisar := False;
        brwProcessos.Edit;
        if brwProcessos.fieldbyname('data_escola').isnull then brwProcessos.FieldByName('estat').asinteger := 2 // avisat monitor, falta avisar escola
        else brwProcessos.FieldByName('estat').asinteger := 4;                                                  // escola i monitor avisats
        brwProcessos.FieldByName('data_monitor').asdatetime := dateserver;
        brwProcessos.Post;
        Avisar := True;
  end;
end;


procedure TwFitxaManteniment.botoClick(Sender: TObject);
begin
    if tots then // estem mostrant tots els processos i volem només els actuals
    begin
        tots := False;
        pcProcessos.SqlDic[5] := 'where (p.datasollicitud is null or p.datasollicitud >= "TODAY")';
        pcProcessos.SqlDic[6] := '[AND FILTRO]';
        boto.Caption := 'TOTS';
        boto.Hint := 'Clicar aquí per a veure TOTS els processos.';
    end
    else begin  // estem mostrant només els actuals i volem tots els processos
        tots := True;
        pcProcessos.SqlDic[5] := '[FILTRO]';
        pcProcessos.SqlDic[6] := '';
        boto.Caption := 'ACTIUS';
        boto.Hint := 'Clicar aquí per a veure només els processos ACTUALS.';
    end;
    pcProcessos.SqlDic[7] := '[ORDEN]';
    pcProcessos.Execute('','');
end;

procedure TwFitxaManteniment.Check_brwProcessos_AltresCursosClick(
  Sender: TObject);
begin
  Ed_brwProcessos_Curs.Enabled := Check_brwProcessos_AltresCursos.Checked;
end;


procedure TwFitxaManteniment.pcProcessosConsultaGetSqlField(
  Sender: THYConsulta; var SqlField: String);
begin
  if      UpperCase(SqlField) = 'COMARCA_ESCOLA'  then SqlField := 'C.N_CODI'
  else if UpperCase(SqlField) = 'NOMMONITOR'      then SqlField := 'M.NOM'
  else if UpperCase(SqlField) = 'POBLACIO_ESCOLA' then SqlField := 'E.POBLACIO';
end;

procedure TwFitxaManteniment.pcProcessosAlPintarGrid(var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Query: TQuery);
begin
    CASE Query.FieldByName('Estat').AsInteger OF
      1: ColorBrush := $006CB6FF;  // actiu - carbassa
      2: ColorBrush := clAqua;  // monitor avisat, falta avisar escola - blau
      3: ColorBrush := $0080FF80;  // escola avisada, falta avisar monitor - verd
      4: ColorBrush := $00FF17FF;  // escola i monitor avisats - fucsia
      5: ColorBrush := $00E2E2E2;  // anul·lats - gris
    END;

    if Query.FieldByName('canvis').AsString = 'S' then ColorBrush := clRed;  // amb canvis - vermell
end;

procedure TwFitxaManteniment.pcProcessosAlChangeRegistro(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  brwProcessos.Close;
  brwProcessos.Filtro.Clear;
  brwProcessos.Filtro.Add('id = '+Datos.FieldByName('id').AsString);
  if (not tots) then brwProcessos.Filtro.Add('and (datasollicitud is null or datasollicitud >= "TODAY")');
  brwProcessos.Open;
end;

procedure TwFitxaManteniment.cPeticioDeAlDespuesOpen(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    (Sender as TxHYDialogConsulta).Height := 400;
    (Sender as TxHYDialogConsulta).Top := areaProcessos.Top +10;
end;

procedure TwFitxaManteniment.cPeticioDeAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if not (brwProcessos.State in [dsEdit, dsInsert]) then brwProcessos.Edicion;
  brwProcessos.FieldByName('Peticio_De').AsInteger := datos.fieldbyname('c_codi').asinteger;
end;

procedure TwFitxaManteniment.cEscolesAlDespuesOpen(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    (Sender as TxHYDialogConsulta).Height := 600;
    (Sender as TxHYDialogConsulta).Top := areaProcessos.Top +10;
end;

procedure TwFitxaManteniment.cMonitorAlDespuesOpen(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    (Sender as TxHYDialogConsulta).Height := 600;
    (Sender as TxHYDialogConsulta).Top := areaProcessos.Top +10;
end;

procedure TwFitxaManteniment.cProfessionalsAlDespuesOpen(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    (Sender as TxHYDialogConsulta).Height := 600;
    (Sender as TxHYDialogConsulta).Top := areaProcessos.Top +10;
end;

procedure TwFitxaManteniment.brwProcessosAfterPost(DataSet: TDataSet);
begin
  pcProcessos.Execute('','');
  pcProcessos.DataSource.DataSet.Locate('id', lastId, []);
end;

procedure TwFitxaManteniment.sbDuplicaClick(Sender: TObject);
begin
  // copiar el registre seleccionat
  pcProcessos.DataSource.DataSet.DisableControls;
  qAux.Close;
  qAux.ParamByName('id').AsInteger := pcProcessos.DataSource.DataSet.FieldByName('ID').AsInteger;
  qAux.Open;
  pcProcessos.DataSource.DataSet.EnableControls;

  with brwProcessos do
  begin
      Append;
      FieldByName('DATA_TRUCADA').AsDateTime := qAux.FieldByName('DATA_TRUCADA').AsDateTime;
      FieldByName('DATASOLLICITUD').AsDateTime := qAux.FieldByName('DATASOLLICITUD').AsDateTime;
      FieldByName('ESCOLA').AsInteger := qAux.FieldByName('ESCOLA').AsInteger;
      FieldByName('DATA_ESCOLA').Clear;
      FieldByName('MONITOR').Clear;
      FieldByName('DATA_MONITOR').Clear;
      FieldByName('ESTAT').AsInteger := 1;
      FieldByName('DATA_ANULA').Clear;
      FieldByName('HORARI').AsString := qAux.FieldByName('HORARI').AsString;
      FieldByName('CURS').AsString := qAux.FieldByName('CURS').AsString;
      FieldByName('CONTACTE').AsString := qAux.FieldByName('CONTACTE').AsString;
      FieldByName('NUM_ALUMNES').AsInteger := qAux.FieldByName('NUM_ALUMNES').AsInteger;
      FieldByName('NUM_GRUP').AsInteger := qAux.FieldByName('NUM_GRUP').AsInteger;
      FieldByName('TIPUS_SESSIO').AsInteger := qAux.FieldByName('TIPUS_SESSIO').AsInteger;
      FieldByName('OBSERVACIONS').AsString := qAux.FieldByName('OBSERVACIONS').AsString;
      FieldByName('CURS3ERESO').AsString := qAux.FieldByName('CURS3ERESO').AsString;
      FieldByName('CURS4RTESO').AsString := qAux.FieldByName('CURS4RTESO').AsString;
      FieldByName('CURS1ERBAT').AsString := qAux.FieldByName('CURS1ERBAT').AsString;
      FieldByName('CURS2ONBAT').AsString := qAux.FieldByName('CURS2ONBAT').AsString;
      FieldByName('CICLESFORMATIUS').AsString := qAux.FieldByName('CICLESFORMATIUS').AsString;
      FieldByName('ALTRESCURSOS').AsString := qAux.FieldByName('ALTRESCURSOS').AsString;
      FieldByName('PETICIO_DE').AsInteger := qAux.FieldByName('PETICIO_DE').AsInteger;
      FieldByName('PETICIO_DE_ALTRES').AsString := qAux.FieldByName('PETICIO_DE_ALTRES').AsString;
      qAux.Close;
  end;
end;

end.
