unit FitxaAltaClau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvButton, JvTransparentButton, ExtCtrls,
  DB, DBTables, HYSql, HYDialogConsulta, HYEdit, DBCtrls, HYLabel, HYPanels,
  QRCtrls, QuickRpt, IBCustomDataSet, IBDatabase;

type
  TwFitxaAltaClau = class(TForm)
    Panel1: TPanel;
    tbSortir: TJvTransparentButton;
    Label1: TLabel;
    cMetges: THYConsulta;
    Shape1: TShape;
    Label2: TLabel;
    Panel2: TPanel;
    Ed_tMetges_Cognom: THYEdit;
    Ed_tMetges_Cognom1: THYEdit;
    Ed_tMetges_Nombre: THYEdit;
    Panel3: TPanel;
    Label3: TLabel;
    Shape2: TShape;
    Panel4: TPanel;
    nDretsCom: THYTextEdit;
    tbCrear: TJvTransparentButton;
    Label5: TLabel;
    tbCancel: TJvTransparentButton;
    Label6: TLabel;
    Label4: TLabel;
    tMetges: THYSqlBrowse;
    tMetges_Codi: TStringField;
    tMetges_Metge: TStringField;
    tMetges_Cognom: TStringField;
    tMetges_NC: TStringField;
    tMetges_Nom: TStringField;
    tMetges_Tracte: TStringField;
    tMetges_DigCon: TStringField;
    tMetges_C_Grup: TStringField;
    tMetges_C_Especial: TStringField;
    tMetges_Horari: TStringField;
    tMetges_Dia1: TStringField;
    tMetges_Dia2: TStringField;
    tMetges_Planta: TStringField;
    tMetges_Baixa: TStringField;
    tMetges_UltimCanviClau: TDateTimeField;
    tMetges_HInhabilitat: TDateTimeField;
    tMetges_AInhabilitat: TIntegerField;
    tMetges_EsUserExtra: TStringField;
    tMetges_Nomsencer: TStringField;
    tMetges_C_Supervisor: TStringField;
    tMetges_DNI: TStringField;
    tMetges_T_DOC: TSmallintField;
    tMetges_Cognom1: TStringField;
    tMetges_Perfil: TStringField;
    tMetges_Extensio: TStringField;
    tMetges_Nombre: TStringField;
    tMetges_EMAIL: TStringField;
    tMetges_EMAIL_CLAU: TStringField;
    tMetges_ClauPas: TStringField;
    tMetges_ClauPas_1: TStringField;
    tMetges_ClauPas_2: TStringField;
    tMetges_E_Incorrectes: TSmallintField;
    tMetges_E_Gracia: TSmallintField;
    tMetges_UNITAT: TSmallintField;
    dsMetges: TDataSource;
    cGrups: THYConsulta;
    cEspecial: THYConsulta;
    cSupervisor: THYConsulta;
    qGrupsLletres: TQuery;
    qLletres: TQuery;
    Label7: TLabel;
    tMetges_DATA_BAIXA: TDateTimeField;
    tMetges_Sexe: TStringField;
    Ed_tMetges_Sexe: THYEdit;
    Label9: TLabel;
    qInsTitol: TQuery;
    tMetges_NMetgeRecepta: TStringField;
    tMetges_C_Unitat: TSmallintField;
    tMetges_C_PROV: TStringField;
    Label10: TLabel;
    pLDAP: TPanel;
    Shape3: TShape;
    cbLDAP: TCheckBox;
    eDInici: THYTextEdit;
    eDFinal: THYTextEdit;
    pDNI: TPanel;
    tT_DOC: THYEdit;
    tDNI: THYEdit;
    Label11: TLabel;
    Label12: TLabel;
    nGrup: THYTextEdit;
    nEspecial: THYTextEdit;
    eSupervisor: THYTextEdit;
    cbBecari: TCheckBox;
    eNumTreballador: THYTextEdit;
    Label13: TLabel;
    nUsuariAD: THYTextEdit;
    cbEmail: TCheckBox;
    pNC: TPanel;
    Ed_tMetges_NC: THYEdit;
    HYEdit1: THYEdit;
    pNumRE: TPanel;
    HYEdit2: THYEdit;
    tMetges_NHC: TIntegerField;
    tMetges_DataFoto: TDateTimeField;
    tMetges_Foto: TBlobField;
    tMetges_C0_0: TStringField;
    tMetges_C0_1: TStringField;
    tMetges_C1_0: TStringField;
    tMetges_C1_1: TStringField;
    tMetges_C1_2: TStringField;
    tMetges_C1_3: TSmallintField;
    tMetges_C2_0: TIntegerField;
    tMetges_C2_1: TStringField;
    tMetges_C2_2: TStringField;
    tMetges_C2_3: TIntegerField;
    tMetges_C2_4: TStringField;
    tMetges_C2_5: TStringField;
    tMetges_C3_0: TStringField;
    tMetges_C3_1: TStringField;
    tMetges_C3_2: TStringField;
    tMetges_C3_3: TStringField;
    tMetges_C3_4: TStringField;
    tMetges_C3_5: TStringField;
    tMetges_C3_6: TStringField;
    tMetges_C3_7: TIntegerField;
    tMetges_C3_8: TStringField;
    tMetges_C3_9: TStringField;
    tMetges_C3_10: TSmallintField;
    tMetges_C3_11: TStringField;
    tMetges_C3_12: TStringField;
    tMetges_C3_13: TStringField;
    tMetges_C3_14: TStringField;
    tMetges_C3_15: TStringField;
    tMetges_C3_16: TIntegerField;
    tMetges_C3_17: TDateTimeField;
    tMetges_C4_0: TSmallintField;
    tMetges_C4_1: TStringField;
    tMetges_C4_2: TSmallintField;
    tMetges_C4_3: TStringField;
    tMetges_C4_4: TStringField;
    tMetges_C4_5: TStringField;
    tMetges_C5_0: TSmallintField;
    tMetges_C5_1: TStringField;
    tMetges_C5_2: TSmallintField;
    tMetges_C5_3: TStringField;
    tMetges_C5_4: TStringField;
    tMetges_C5_5: TStringField;
    tMetges_C6_0: TStringField;
    tMetges_C6_1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbSortirClick(Sender: TObject);
    procedure cMetgesAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure tbCrearClick(Sender: TObject);
    procedure tbCancelClick(Sender: TObject);
    procedure tMetgesBeforePost(DataSet: TDataSet);
    procedure nGrupEnter(Sender: TObject);
    procedure nEspecialEnter(Sender: TObject);
    procedure cGrupsAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cEspecialAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure nDretsComEnter(Sender: TObject);
    procedure eSupervisorEnter(Sender: TObject);
    procedure cSupervisorAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tMetgesAfterPost(DataSet: TDataSet);
    procedure tMetgesAfterInsert(DataSet: TDataSet);
    procedure Ed_tMetges_NCExit(Sender: TObject);
    procedure Ed_tMetges_NCEnter(Sender: TObject);
    procedure cMetgesConsultaGetSqlField(Sender: THYConsulta;
      var SqlField: String);
    procedure cbLDAPClick(Sender: TObject);
    procedure tMetgesAlConsultarCampoFiltro2(Sender: TObject;
      var Personalizada: Boolean; NombreConsulta: String;
      var SubFiltro: String; CampoDb: String; ValueDb: Variant);
  private
    cDretsCom,gDretsCom,eDretsCom,
    emailDretsCom,codiExistent: String;
    avis: Boolean;
    function BuscaCodiMetge(grup,especial:String):String;
    function BuscaLliure(l,pos:String;fins:Integer): Integer;
    function GeneraClauPas: String;
    function ValidarMetge(nom,cognom1,cognom2: String): Boolean;
    function InicialsNom(nom:String): String;
    function TreureAccents(entra:String): String;
    function Minuscules(text: String): String;
    function TreureDomini(email: String): String;
    procedure DonarDretsCom(aqui,comqui:String);
  public
    { Public declarations }
  end;

var
  wFitxaAltaClau: TwFitxaAltaClau;

implementation

uses Data, Funcions, Funciones, DataBasics, Main;

{$R *.dfm}

procedure TwFitxaAltaClau.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TwFitxaAltaClau.tbSortirClick(Sender: TObject);
begin
  if tMetges.State = dsInsert then
  begin
      if AvisoSN('Si es tanca es perdran les dades que s''hagin introduït. Voleu continuar (S/N)?')
      then Close;
  end
  else Close;
end;

procedure TwFitxaAltaClau.cMetgesAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
  nDretsCom.EditValue := Datos.FieldByName('nomsencer').AsString;
  cDretsCom := Datos.FieldByName('codi').AsString;
  gDretsCom := Datos.FieldByName('c_grup').AsString;
  eDretsCom := Datos.FieldByName('c_especial').AsString;
  emailDretsCom := Datos.FieldByName('email').AsString;
end;

procedure TwFitxaAltaClau.FormCreate(Sender: TObject);
begin
  tMetges.Open;
  tMetges.Insert;
  if not TeDretAcces([109],False,False) then cGrups.SqlDic[3] := 'WHERE SUPERVISOR IN ("M","S","F") [AND FILTRO]'  //<> "N" [AND FILTRO]'
                                        else cGrups.SqlDic[3] := 'WHERE SUPERVISOR IN ("N","F")     [AND FILTRO]'; // = "N" [AND FILTRO]'
  cbBecari.Visible := TeDretAcces([109],False,False);  // parte 56255: només RRHH pot donar d'alta becaris
  pLDAP.Visible    := cbBecari.Visible;
  pDNI.Visible     := not cbBecari.Visible;           // parte 66399: Docència és qui ha d'omplir dades per l'HC3  
end;

procedure TwFitxaAltaClau.tbCrearClick(Sender: TObject);
var
  ParteFet: Boolean;
  textParte: TMemo;
  idAcces: Integer;
  username: String;
  c_grup: String;
begin
  cbEmail.SetFocus; // surto dels camps anteriors per a que n'"agafi" el contingut
  ParteFet:= False;

  // 1. Validem que les dades obligatòries estan informades i que l'usuari no estigui ja donat d'alta
  if      tMetges.FieldByName('nombre' ).IsNull or (tMetges.FieldByName('nombre' ).AsString='') then FerError('El nom és obligatori.',True)
  else if tMetges.FieldByName('cognom1').IsNull or (tMetges.FieldByName('cognom1').AsString='') then FerError('El primer cognom és obligatori.',True)
  else if tMetges.FieldByName('cognom' ).IsNull or (tMetges.FieldByName('cognom' ).AsString='') then FerError('El segon cognom és obligatori.',True);

  if tMetges.FieldByName('sexe').IsNull then FerError('El sexe és obligatori.',True);
  if nGrup.EditValue=''                 then FerError('Obligatori indicar el lloc de treball',True);

  tMetges.FieldByName('nombre' ).AsString := Minuscules(tMetges.FieldByName('nombre' ).AsString);
  tMetges.FieldByName('cognom1').AsString := Minuscules(tMetges.FieldByName('cognom1').AsString);
  tMetges.FieldByName('cognom' ).AsString := Minuscules(tMetges.FieldByName('cognom' ).AsString);

  tMetges.FieldByName('nomsencer').AsString := Trim(tMetges.FieldByName('Nombre').AsString)+' '+
                                               Trim(tMetges.FieldByName('Cognom1').AsString)+' '+
                                               Trim(tMetges.FieldByName('Cognom').AsString);
  tMetges.FieldByName('tracte' ).Clear;

  if (not tMetges.FieldByName('DNI').IsNull) and tMetges.FieldByName('T_DOC').IsNull then FerError('El tipus de document és obligatori si s''informa el Nº document.', True);

  if tMetges.FieldByName('NC').IsNull                       then tMetges.FieldByName('PERFIL').AsString := 'D001'     // tècnic
  else begin
      if      tMetges.FieldByName('C_Grup').AsString = 'UN' then tMetges.FieldByName('PERFIL').AsString := 'A010'     // infermeria
      else if tMetges.FieldByName('C_Grup').AsString = 'ME' then tMetges.FieldByName('PERFIL').AsString := 'A009';    // metge
  end;

  textParte := TMemo.Create(Application);
  textParte.Text:=' Lloc de treball '+nGrup.EditValue;
  if nEspecial.EditValue<>''   then textParte.Text:=textParte.Text+' Especialitat '+nEspecial.EditValue;
  if eSupervisor.EditValue<>'' then textParte.Text:=textParte.Text+' Supervisor '+eSupervisor.EditValue;

  if      tMetges.FieldByName('NC'           ).AsString<>'' then textParte.Text:=textParte.Text+' NC: '+tMetges.FieldByName('NC').AsString
  else if tMetges.FieldByName('NMetgeRecepta').AsString<>'' then textParte.Text:=textParte.Text+' NC: '+tMetges.FieldByName('NMetgeRecepta').AsString;

  if tMetges.FieldByName('C_PROV').AsString<>'' then textParte.Text:=textParte.Text+' Provincia: '+tMetges.FieldByName('C_PROV').AsString;
  if tMetges.FieldByName('SEXE'  ).AsString<>'' then textParte.Text:=textParte.Text+' Sexe: '+tMetges.FieldByName('SEXE').AsString;

  if (cDretsCom <> '') then textParte.Text:=textParte.Text+' Donar drets com ' + cDretsCom + ' ' + emailDretsCom + ' ' + nDretsCom.EditValue;
  if cbBecari.Checked  then textParte.Text:=textParte.Text+' És becari';

  if EsPle(eNumTreballador.AsString) then textParte.Text:=textParte.Text+' Número de treballador: '+eNumTreballador.AsString;
  if EsPle(nUsuariAD.AsString)       then
  begin
      nUsuariAD.AsString := LowerCase(TreureAccents(nUsuariAD.AsString));
      textPArte.Text:=textParte.Text+' Usuari AD: '+ nUsuariAD.AsString;
  end;

  if cbLDAP.Checked then
  begin
      if ValidarMetge(tMetges.FieldByName('Nombre').AsString, tMetges.FieldByName('Cognom1').AsString, tMetges.FieldByName('Cognom').AsString)
      and not AvisoNS(Format('Aquest usuari ja està enregistrat (codi "%s"). ' + NLine +
                             'Voleu donar-lo d''alta igualment?', [codiExistent]))
      then Exit;

      if eDFinal.AsDateTime=0
      then textParte.Text := Format(' Donar d''alta usuari LDAP per "%s %s %s" des del "%s" ',
                                    [tMetges.FieldByName('Nombre').AsString,tMetges.FieldByName('Cognom1').AsString,
                                     tMetges.FieldByName('Cognom').AsString,FormatDateTime('dd.mm.yyyy',eDinici.AsDateTime)])+' '+textParte.Text
      else textParte.Text := Format(' Donar d''alta usuari LDAP per "%s %s %s" del "%s" al "%s" ',
                                    [tMetges.FieldByName('Nombre').AsString,tMetges.FieldByName('Cognom1').AsString,
                                     tMetges.FieldByName('Cognom').AsString,FormatDateTime('dd.mm.yyyy',eDinici.AsDateTime),
                                     FormatDateTime('dd.mm.yyyy',eDfinal.AsDateTime)])+' '+textParte.Text;

      CrearParteInformatica(textParte);
      ParteFet := True;
      tMetges.Cancel;
  end
  else begin
      // 2.1 guardem metge
      if nEspecial.Visible and (nEspecial.EditValue ='') then FerError('Obligatori indicar l''especialitat del professional',True);

      if ValidarMetge(tMetges.FieldByName('Nombre').AsString, tMetges.FieldByName('Cognom1').AsString, tMetges.FieldByName('Cognom').AsString)
      and not AvisoNS(Format('Aquest usuari ja està enregistrat (codi "%s"). ' + NLine +
                             'És convenient reactivar aquest codi o canviar-li el rol, si cal, en comptes de crear-ne un de nou.' + NLine +
                             'Segur que voleu donar-lo d''alta igualment?', [codiExistent]))
      then Exit
      else tMetges.Post;

      // 2.2 creem acces
      if nUsuariAD.AsString <> '' then
      begin
          TRY idAcces:=GutSelect('select max(c_acces) from ACCESOS where c_acces <> 800 and c_acces <> 900 and c_acces <> 999', [])+1;
              GutExecute('INSERT INTO ACCESOS(C_ACCES, DESCRIPCIO, C_LOGIN) VALUES(%d, "%s", "%s")',
                         [idAcces, tMetges.FieldByName('NomSencer').AsString, nUsuariAD.AsString]);

              username := TreureDomini(emailDretsCom);
              if username <> '' then GutExecute('INSERT INTO DRETSACCES(C_ACCES,C_DRET) '+
                                                'SELECT %d,d.C_DRET FROM DRETSACCES d LEFT JOIN ACCESOS a ON a.C_ACCES = d.C_ACCES '+
                                                'WHERE UPPER(a.C_LOGIN) = UPPER("%s") ',[idAcces, username]);
          FINALLY END;
      end
      else textparte.Text := textparte.Text+' Crear registre a la taula ACCESOS i donar-li els permisos corresponents.';

      // 3. imprimim carta clau de pas
      wMain.ImprimirClau(tMetges.FieldByName('Codi').AsString);
      textparte.Text:= 'S''ha creat clau de pas per: '+ tMetges.FieldByName('Nombre').AsString+' '+tMetges.FieldByName('Cognom1').AsString+' '+tMetges.FieldByName('Cognom').AsString+
                       ' '+textparte.Text;

      // 4. DRETS: si té informat el 'Perfil similar a' llavors li posem els mateixos drets a DRETSMETGE, excepte per a usuaris d'infermeria
      c_grup := tMetges.FieldByName('c_grup').AsString;
      if (cDretsCom <> '') and (c_grup <> 'UN') and (c_grup <> 'AI') and (c_grup <> 'TR')
      then DonarDretsCom(tMetges.FieldByName('codi').AsString, cDretsCom);

      if cbBecari.Checked then // Si és becari li donem el dret M650
      begin
          if ((cDretsCom<>'') and (not TeDretMetge(cDretsCom,[650])))
          or (cDretsCom='') then
          begin
              if GutSelect('SELECT COUNT(*) FROM DRETSMETGES WHERE C_DRET="M650" AND C_USUARI="%s"',[tMetges.FieldByName('codi').AsString]) = 0 then
              begin
                  TRY GutExecute('INSERT INTO DRETSMETGES(C_DRET,C_USUARI) VALUES("M650","%s")',[tMetges.FieldByName('codi').AsString]);
                  FINALLY END;
              end;
          end;
      end;

    
      if (not tMetges.FieldByName('DNI').IsNull) then  // S'ha de donar el dret M105
      begin
          if GutSelect('SELECT COUNT(*) FROM DRETSMETGES WHERE C_DRET="M105" AND C_USUARI="%s"',[tMetges.FieldByName('codi').AsString]) = 0 then
          begin
              TRY GutExecute('INSERT INTO DRETSMETGES(C_DRET,C_USUARI) VALUES("M105","%s")',[tMetges.FieldByName('codi').AsString]);
              FINALLY END;
          end;
      end;

      // Si és un MEtge i l'ha creat Docència (no l'ha creat personal), és fellow (=> dret M65)
      if (tMetges.FieldByName('c_grup').AsString='ME') and (not TeDretAcces([109],False,False))
      then begin
          if GutSelect('SELECT COUNT(*) FROM DRETSMETGES WHERE C_DRET="M65" AND C_USUARI="%s"',[tMetges.FieldByName('codi').AsString]) = 0
          then GutExecute('insert into DRETSMETGES(C_DRET,C_USUARI) VALUES("M65","%s")',[tMetges.FieldByName('codi').AsString]);
      end;

      // 5. si cal email, generem un parte a informàtica per a que el crei, imprimeixi la documentació i enviï correu a rrpp i relacionslaborals
      if cbEmail.Checked then textParte.Text := textParte.Text+
                                                Format(' Donar d''alta correu per "%s" - "%s"',
                                                       [tMetges.FieldByName('codi').AsString,tMetges.FieldByName('Nomsencer').AsString]);

      if (not TeDretAcces([109],False,False)) and (TeDretGrup(tMetges.FieldByName('c_grup').AsString,[230]))
      then textParte.Text := textParte.Text + 'RESIDENTS: Crear-ne usuari a l''AD.';

      CrearParteInformatica(textParte);
      ParteFet := True;
      ShowMessage('Clau de pas creada correctament.');
  end;
  textParte.Free;

  // 7. tanquem formulari
  tbSortir.Click;
end;

function TwFitxaAltaClau.BuscaLliure(l,pos:String;fins:Integer): Integer;
var
  qAux: TQuery;
  conta,int: Integer;
begin
    qAux := TQuery.Create(Application);
    qAux.DatabaseName := wData.Gdb.DatabaseName;
    Result:=-1;

    // busca si de la lletra 'l' hi ha algún codi lliure en la posició 'pos'
    if pos='I' then       // inici lxx
    begin
        qAux.SQL.Text := 'select F_RIGHT(codi,2) as numcodi from metges where codi like "'+AnsiUpperCase(l)+'%" order by codi';
        qAUx.Open;
        conta := 0;
        while (not qAux.Eof) and (Result=-1) do
        begin
            if IntegerOK(qAux.FieldByName('numcodi').AsString, int)
            then begin
                if (conta < int) then Result:= conta;
                conta:=conta+1;
            end;
            qAux.Next;
        end;
        if qAux.Eof and (Result=-1) then Result:=fins;  // parte 55035
    end
    else if pos='F' then  // final xxl
    begin
        qAux.SQL.Text := 'select F_LEFT(codi,2) as numcodi from metges where codi like "%'+AnsiUpperCase(l)+'" order by codi';
        qAUx.Open;
        conta := 0;
        while (not qAux.Eof) and (Result=-1) do
        begin
            if IntegerOK(qAux.FieldByName('numcodi').AsString, int)
            then begin
                if (conta < int) then Result:= conta;
                conta:=conta+1;
            end;
            qAux.Next;
        end;
        if qAux.Eof and (Result=-1) then Result:=fins;  // parte 55035
    end;

    qAux.Close;
    qAux.Free;
end;

function TwFitxaAltaClau.BuscaCodiMetge(grup,especial:String):String;
var
  lletra: String;
  num,lliure: Integer;
  textParte: TMemo;
begin
  textParte := TMemo.Create(Application);
  lletra := GutSelect('select lletra from grupslletres where c_grup = "%s" and activa =''S'' and c_especial = "%s"',
                      [grup, especial]);
  lletra := Trim(lletra);

  qLletres.Close;
  qLletres.SQL[2] := 'lletra = '''+lletra+'''';
  qLletres.Open;

  if Len(lletra) = 1 then
  begin
      if qLletres.FieldByName('ult_inici').AsInteger < 98 then
      begin
          num    := qLletres.FieldByName('ult_inici').AsInteger+1;
          lliure := BuscaLliure(lletra,'I',num);
          if (lliure < num) then
          begin
              Result := lletra+FormatFloat('00',lliure);
          end
          else begin
              GutExecute('update lletres set ult_inici = %d where lletra = "%s"',[num,lletra]);
              Result := lletra+FormatFloat('00',num);
          end;
      end
      else if qLletres.FieldByName('ult_final').AsInteger < 98 then
      begin
          textParte.Text := Format('La lletra "%s" està acabant els números.',[lletra]);

          num := qLletres.FieldByName('ult_final').AsInteger+1;
          lliure := BuscaLliure(lletra,'F',num);
          if num=98 then CrearParteInformatica(textParte);
          if (lliure < num) then
          begin
              Result :=FormatFloat('00',lliure)+lletra;
          end
          else begin
              GutExecute('update lletres set ult_final = %d where lletra = "%s"',[num,lletra]);
              Result :=FormatFloat('00',num)+lletra;
          end;
      end
      // farem 0A0,0A1,...0A9,1A0,1A1,...1A9,....,9A0,9A1,...9A9: aquests van al diferent: el número que hi ha a la taula és el proper
      // a fer servir. Els ult_final i ult_inici tenen el valor últim utilitzat!!!!
      else if  (qLletres.FieldByName('ult_mig_final').AsInteger <= 9) and (qLletres.FieldByName('ult_mig_davant').AsInteger <= 9) then
      begin
          if (qLletres.FieldByName('ult_mig_final').AsInteger = 9) then
          begin
              num:= qLletres.FieldByName('ult_mig_davant').AsInteger;

              if (qLletres.FieldByName('ult_mig_davant').AsInteger < 9)
              then GutExecute('update lletres set ult_mig_davant = ult_mig_davant+1, ult_mig_final=0 where lletra = "%s"',[lletra])
              else begin
                  GutExecute('update lletres set ult_mig_davant = ult_mig_davant+1                  where lletra = "%s"',[lletra]);
                  // avisar a informàtica de que s'han acabat números per la lletra LLETRA
                  textParte.Text := Format('La lletra "%s" ha acabat els números. Activar una altra lletra per aquest grup.',[lletra]);
                  CrearParteInformatica(textParte);
              end;

              Result := inttostr(num)+lletra+qLletres.FieldByName('ult_mig_final').AsString;
          end
          else begin
              num:= qLletres.FieldByName('ult_mig_final').AsInteger;
              GutExecute('update lletres set ult_mig_final = %d where lletra = "%s"',[num+1,lletra]);
              Result := qLletres.FieldByName('ult_mig_davant').AsString+lletra+inttostr(num);
          end;
      end
      else FerError(' NO  ES  POT  ASSIGNAR  CODI.  AVISEU  A  INFORMÀTICA  !!!',True);
  end
  else begin {només pot ser len(lletra)=2}
      if qLletres.FieldByName('ult_inici').AsInteger < 9 then
      begin
          num := qLletres.FieldByName('ult_inici').AsInteger+1;
          GutExecute('update lletres set ult_inici = %d where lletra = "%s"',[num,lletra]);
          Result :=lletra+inttostr(num);
      end
      else if qLletres.FieldByName('ult_final').AsInteger < 9 then
      begin
          textParte.Text := Format('La lletra "%s" està acabant els números.',[lletra]);

          num := qLletres.FieldByName('ult_final').AsInteger+1;
          if num=3 then CrearParteInformatica(textParte);  // aviso amb una mica d'antel·lació pq no hi ha lletres pel mig aquí
                    
          GutExecute('update lletres set ult_final = %d where lletra = "%s"',[num,lletra]);
          Result :=inttostr(num)+lletra;
      end
  end;
end;

function TwFitxaAltaClau.GeneraClauPas: String;
begin
  Randomize;
  Result := FormatFloat('0000',random(9999));
end;

function TwFitxaAltaClau.InicialsNom(nom: String): String;
var
 i: Integer;
 compost: Boolean;
begin
  compost := False;
  Result:=Copy(nom,1,1);
  for i:=2 to len(nom) do
  begin
      if compost then Result:=Result+Copy(nom,i,1);
      // si hi ha un espai, la propera lletra és inici de nom compost
      if copy(nom,i,1) = ' ' then compost := True else compost := False;
  end;
end;

// retorna el text que entra en majúscules i sense accents
function TwFitxaAltaClau.TreureAccents(entra:String): String;
var
 bucle: Integer;
 surt: String;
begin
  surt := '';
  entra:=AnsiUpperCase(Trim(entra));
  for bucle:=1 to Length(entra) do
  begin
       //traiem els accents, dieresis, etc.
      case entra[bucle] of
          'À','Á','Â','Ã','Ä':  surt:=surt+'A';
          'È','É','Ê','Ë':      surt:=surt+'E';
          'Ì','Í','Î','Ï':      surt:=surt+'I';
          'Ò','Ó','Ô','Õ','Ö':  surt:=surt+'O';
          'Ù','Ú','Û','Ü':      surt:=surt+'U';
          else surt:=surt+entra[bucle];
      end;
  end;
  Result := surt;
end;

function TwFitxaAltaClau.ValidarMetge(nom,cognom1,cognom2: String): Boolean;
begin
  codiExistent := GutSelect('select codi from metges where NOMSENCER = "%s"', [tMetges.FieldByName('NomSencer').AsString]);
  Result := (codiExistent <> '');
end;

procedure TwFitxaAltaClau.DonarDretsCom(aqui,comqui:String);
var
  qSelDrets,qInsDrets: TQuery;
begin
  qSelDrets := TQuery.Create(Application);
  with qSelDrets do
  begin
      DatabaseName := wData.Gdb.DatabaseName;
      SQL.Text := Format('select c_dret from DRETSMETGES where c_usuari = "%s" order by c_dret',[comqui]);
      Open;
  end;

  qInsDrets := TQuery.Create(Application);
  with qInsDrets do
  begin
      DatabaseName := wData.Gdb.DatabaseName;
      SQL.Text := Format('insert into DRETSMETGES(C_DRET,C_USUARI) VALUES(:dret,"%s")',[aqui]);
  end;

  while not qSelDrets.Eof do
  begin
      qInsDrets.ParamByName('dret').AsString := qSelDrets.FieldByName('c_dret').AsString;
      TRY qInsDrets.ExecSQL; FINALLY END;

      qSelDrets.Next;
  end;

  qSelDrets.Free;
  qInsDrets.Free;
end;

procedure TwFitxaAltaClau.tbCancelClick(Sender: TObject);
begin
  if AvisoSN('Esteu segurs de que voleu cancel·lar i perdre totes les dades (S/N)?')
  then begin
      tMetges.Cancel;
      tbSortir.Click;
  end;
end;

procedure TwFitxaAltaClau.tMetgesBeforePost(DataSet: TDataSet);
var
  quants,DC: Integer;
  lletra: String;
begin
  tMetges.FieldByName('Nombre' ).AsString := TreureAccents(tMetges.FieldByName('Nombre' ).AsString);
  tMetges.FieldByName('Cognom1').AsString := TreureAccents(tMetges.FieldByName('Cognom1').AsString);
  tMetges.FieldByName('Cognom' ).AsString := TreureAccents(tMetges.FieldByName('Cognom' ).AsString);
  tMetges.FieldByName('METGE'  ).AsString := AnsiUpperCase(InicialsNom(tMetges.FieldByName('Nombre').AsString)+' '+tMetges.FieldByName('Cognom1').AsString);

  // parte 57549
  if (UpperCase(CopyRight(Trim(tMetges.FieldByName('Cognom1').AsString),1))='O')
  then lletra := 'U'
  else lletra := CopyRight(Trim(tMetges.FieldByName('Cognom1').AsString),1);
  tMetges.FieldByName('ClauPas').AsString := AnsiUpperCase(lletra)+GeneraClauPas+'.00';
  tMetges.FieldByName('extensio'     ).AsString := '.00';

  tMetges.FieldByName('DigCon'       ).AsString  := AnsiUpperCase(Copy(tMetges.FieldByName('ClauPas').AsString, 1, 2));
  tMetges.FieldByName('Nom'          ).AsString  := AnsiUpperCase(Copy(tMetges.FieldByName('ClauPas').AsString, 3, 3));
  tMetges.FieldByName('ClauPas'      ).AsString  := XifraBF(tMetges.FieldByName('ClauPas').AsString);
  tMetges.FieldByName('E_Gracia'     ).AsInteger := -3;
  tMetges.FieldByName('E_Incorrectes').AsInteger := 0;
  tMetges.FieldByName('HInhabilitat' ).Clear;
  tMetges.FieldByName('AInhabilitat' ).Clear;

  tMetges.FieldByName('ultimcanviclau').AsDateTime := DateServer;

  // parte 52044-i  si és ME/RE posar Dr./Dra. altrament posar Sr./Sra.
  if (tMetges.FieldByName('c_grup').AsString = 'ME') or (tMetges.FieldByName('c_grup').AsString = 'RE')
  then begin
      if tMetges.FieldByName('sexe').AsString = 'D' then tMetges.FieldByName('tracte').AsString := 'Dra.'
                                                    else tMetges.FieldByName('tracte').AsString := 'Dr.';
  end
  else begin
      if tMetges.FieldByName('sexe').AsString = 'D' then tMetges.FieldByName('tracte').AsString := 'Sra.'
                                                    else tMetges.FieldByName('tracte').AsString := 'Sr.';
  end;
  // parte 52044-f

  // per ME i UN només es poden posar tipus de documents amb CODICAMPS.R_CODI informat
  if ((tMetges.FieldByName('c_grup').AsString = 'ME') or (tMetges.FieldByName('c_grup').AsString = 'UN'))
  and (not tMetges.FieldByName('DNI').IsNull) and (tMetges.FieldByName('DNI').AsString <> '')
  and (tMetges.FieldByName('t_doc').AsInteger <> 1) and (tMetges.FieldByName('t_doc').AsInteger <> 3)
  then begin
      tT_DOC.SetFocus;
      FerError('Tipus de document erroni per aquest lloc de treball',True);
  end;

  // busquem quin codi li correspon segon el grup i l'especialitat indicats
  tMetges.FieldByName('codi').AsString := BuscaCodiMetge(tMetges.FieldByName('c_grup').AsString,tMetges.FieldByName('c_especial').AsString);

  // comprovo que no hi ha cap usuari amb aquest codi, altrament passem al següent
  quants:=GutSelect('select count(*) from metges where codi = "%s"',[tMetges.FieldByName('codi').AsString]);
  while quants>0 do
  begin
      tMetges.FieldByName('codi').AsString := BuscaCodiMetge(tMetges.FieldByName('c_grup').AsString,tMetges.FieldByName('c_especial').AsString);
      quants:=GutSelect('select count(*) from metges where codi = "%s"',[tMetges.FieldByName('codi').AsString]);
  end;

  // Número de col·legiat ha de ser un número i de màxim 6 dígits
  if  (not tMetges.FieldByName('NC').IsNull)
  and (not IntegerOK(tMetges.FieldByName('NC').AsString,quants))
  and (tMetges.fieldByName('NC').AsInteger <= 999999)
  then tMetges.FieldByName('NC').Clear;

  // parte 56255 - i obligatori supervisor si és Resident
  if eSupervisor.Visible and (tMetges.FieldByName('c_supervisor').IsNull or (tMetges.FieldByName('c_supervisor').AsString=''))
  then FerError('Obligatori informar el supervisor.',True);

  // si tenim les dades i no està informat ja, informem el número de recepta del metge
  if tMetges.FieldByName('NMetgeRecepta').IsNull or (tMetges.FieldByName('NMetgeRecepta').AsString='') then
  begin
      if (Length(Trim(tMetges.FieldByName('NC').AsString)) = 5)
      and (Length(tMetges.FieldByName('C_Prov').AsString) = 2)
      and not tMetges.FieldByName('Especial_Digit_NC_SCS').IsNull
      then begin
          if not (tMetges.State in [dsEdit, dsInsert]) then tMetges.Edicion;
          DC := StrToInt(tMetges.FieldByName('C_Prov').AsString + Trim(tMetges.FieldByName('NC').AsString)) mod 9;
          tMetges.FieldByName('NMetgeRecepta').AsString := tMetges.FieldByName('Especial_Digit_NC_SCS').AsString +
                                                           tMetges.FieldByName('C_Prov').AsString +
                                                           Trim(tMetges.FieldByName('NC').AsString) +
                                                           IntToStr(DC);
    end;
  end;
end;

procedure TwFitxaAltaClau.nGrupEnter(Sender: TObject);
begin
  if (nGrup.EditValue = '') then cGrups.ExecuteModal('','');
end;

procedure TwFitxaAltaClau.nEspecialEnter(Sender: TObject);
begin
  if nEspecial.EditValue = '' then cEspecial.ExecuteModal('','');
end;

function TwFitxaAltaClau.Minuscules(text: String): String;
var
 bucle: Integer;
 entra,surt: String;
begin
  surt  := AnsiUpperCase(Copy(text,1,1));
  entra := AnsiLowerCase(Copy(text,2,len(text)));
  bucle:=1;
  while bucle <= Length(entra) do
  begin
      if entra[bucle]=' ' then
      begin
          bucle:=bucle+1;
          surt:=surt+' '+AnsiUpperCase(entra[bucle]);
      end
      else surt:=surt+entra[bucle];
      bucle:=bucle+1;
  end;
  Result := surt;
end;

procedure TwFitxaAltaClau.cGrupsAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
var
  filtre, especialitats: String;
  Resident: String;
  textGLPI: TMemo;
begin
  pDNI.Visible := (not cbBecari.Visible) or (Datos.FieldByName('c_grup').AsString = 'UN') or (Datos.FieldByName('c_grup').AsString = 'ME') or (Datos.FieldByName('c_grup').AsString = 'RE');
  tMetges.FieldByName('c_grup').AsString := Datos.FieldByName('c_grup').AsString;
  nGrup.EditValue := Datos.FieldByName('n_grup').AsString;

  cMetges.SqlDic[2] := 'WHERE M.C_GRUP = '''+tMetges.fieldbyname('c_grup').AsString+'''';
  cMetges.SqlDic[3] := '';

  nEspecial.EditValue := '';
  eSupervisor.EditValue := '';
  nDretsCom.EditValue := '';

  pNumRE.Visible := Datos.FieldByName('c_grup').AsString = 'TO';
  pNC.Visible := not pNumRE.Visible;

  // especialitat
  qGrupsLletres.Close;
  qGrupsLletres.SQL[1] := 'where c_grup = '''+tMetges.fieldbyname('c_grup').AsString+'''';
  qGrupsLletres.Open;

  nEspecial.Visible := (qGrupsLletres.RecordCount > 1); // només visible si hi ha més d'una especialitat per aquell grup
  if nEspecial.Visible then
  begin
      especialitats := '('''+ qGrupsLletres.fieldByName('c_especial').AsString + '''';
      qGrupsLletres.Next;
      while not qGrupsLletres.Eof do
      begin
          especialitats := especialitats + ',''' + qGrupsLletres.fieldByName('c_especial').AsString + '''';
          qGrupsLletres.Next;
      end;
      especialitats := especialitats + ')';
      cMetges.SqlDic[3] := 'AND M.C_ESPECIAL in'+especialitats;
      cEspecial.SqlDic[3] := 'AND C_ESPECIAL in'+especialitats;
  end
  else begin
      tMetges.FieldByName('c_especial').AsString := qGrupsLletres.fieldByName('c_especial').AsString;
      cMetges.SqlDic[3] := 'AND M.C_ESPECIAL = '''+tMetges.fieldbyname('C_ESPECIAL').AsString+'''';
  end;

  // supervisor
  eSupervisor.Visible := (qGrupsLletres.FieldByName('supervisor').AsString = 'S');
  {if eSupervisor.Visible then} cSupervisor.SqlDic[2] := 'where C_GRUP = '''+qGrupsLletres.fieldbyname('c_grup_sup').AsString+'''';


  // si creen un MEtge, mirar si ja ha estat REsident per aprofitar la mateixa clau de pas
  if Datos.FieldByName('c_grup').AsString = 'ME' then
  begin
      filtre := 'UPPER(NOMBRE) LIKE "%'+ UpperCase(Ed_tMetges_Nombre.EditInterno.Field.AsString) +'%" '+
                'AND UPPER(COGNOM1) LIKE "%'+ UpperCase(Ed_tMetges_Cognom1.EditInterno.Field.AsString) +'%" '+
                'AND UPPER(COGNOM) LIKE "%'+ UpperCase(Ed_tMetges_Cognom.EditInterno.Field.AsString) +'%" ';
      Resident := GutSelect('select NOMSENCER||" ("||CODI||")" from METGES where %s AND C_GRUP="RE" ORDER BY CODI ROWS 1', [filtre]);
      if Resident <> ''
      then if AvisoSN(Format('Existeix el REsident "%s". És el mateix professional (S/N)? En cas afirmatiu, no cal crear nova clau de pas.', [Resident])) then
           begin
               textGLPI := TMemo.Create(Application);
               textGLPI.Text := Format('Canviar grup de REsident a MEtge a %s. Reactivar-lo si està de baixa.',[Resident]);
               CrearParteInformatica(textGLPI);
               ShowMessage(Format('S''ha creat petició a S.I. perque es canviï el grup REsident a MEtge a %s', [Resident]));
           end;
      textGLPI.Free;
  end;
end;

procedure TwFitxaAltaClau.cEspecialAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tMetges.FieldByName('c_especial').AsString := Datos.FieldByName('c_especial').AsString;
  nEspecial.EditValue := Datos.FieldByName('n_especial').AsString;
  cMetges.SqlDic[3] :='AND M.C_ESPECIAL = '''+tMetges.fieldbyname('c_ESPECIAL').AsString+'''';
  cSupervisor.SqlDic[3] := 'and C_ESPECIAL = '''+tMetges.fieldbyname('C_ESPECIAL').AsString+'''';
end;

procedure TwFitxaAltaClau.nDretsComEnter(Sender: TObject);
begin
  cDretsCom := ''; gDretsCom := ''; eDretsCom := '';   // netejo dades
  if nDretsCom.EditValue = '' then cMetges.ExecuteModal('','');
end;

procedure TwFitxaAltaClau.eSupervisorEnter(Sender: TObject);
begin
  {if (eSupervisor.EditValue = '') then} cSupervisor.ExecuteModal('','');
end;

procedure TwFitxaAltaClau.cSupervisorAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  tMetges.FieldByName('c_supervisor').AsString := Datos.FieldByName('codi').AsString;
  eSupervisor.EditValue := Datos.FieldByName('nomsencer').AsString;
end;

procedure TwFitxaAltaClau.tMetgesAfterPost(DataSet: TDataSet);
var
  id,i: Integer;
begin
  // parte 52044-i: afegir títols a TITULACIONS
  if (tMetges.FieldByName('c_grup').AsString = 'AS')
  then begin
      qInsTitol.ParamByName('codi').AsString       := tMetges.FieldByName('codi').AsString;
      if tMetges.FieldByName('sexe').AsString = 'D' then
      begin
          qInsTitol.ParamByName('titol').AsString  := 'Treballadora social';
          qInsTitol.ParamByName('titulo').AsString := 'Trabajadora social';
      end
      else begin
          qInsTitol.ParamByName('titol').AsString  := 'Treballador social';
          qInsTitol.ParamByName('titulo').AsString := 'Trabajador social';
      end;

      for i:=0 to 5 do
      begin
          qInsTitol.ParamByName('unitat').AsInteger := i;
          qInsTitol.ExecSQL;
      end;
  end
  else if (tMetges.FieldByName('c_grup').AsString = 'ME')
  then begin
      qInsTitol.ParamByName('codi').AsString           := tMetges.FieldByName('codi').AsString;
      if (tMetges.FieldByName('c_especial').AsString = '02') then
      begin
          if tMetges.FieldByName('sexe').AsString = 'D' then
          begin
              qInsTitol.ParamByName('titol').AsString  := 'Neuròloga';
              qInsTitol.ParamByName('titulo').AsString := 'Neuróloga';
          end
          else begin
              qInsTitol.ParamByName('titol').AsString  := 'Neuròleg';
              qInsTitol.ParamByName('titulo').AsString := 'Neurólogo';
          end;
      end
      else if (tMetges.FieldByName('c_especial').AsString = '03') then
      begin
          if tMetges.FieldByName('sexe').AsString = 'D' then
          begin
              qInsTitol.ParamByName('titol').AsString  := 'Uròloga';
              qInsTitol.ParamByName('titulo').AsString := 'Uróloga';
          end
          else begin
              qInsTitol.ParamByName('titol').AsString  := 'Uròleg';
              qInsTitol.ParamByName('titulo').AsString := 'Urólogo';
          end;
      end
      else if (tMetges.FieldByName('c_especial').AsString = '05') then
      begin
          if tMetges.FieldByName('sexe').AsString = 'D' then
          begin
              qInsTitol.ParamByName('titol').AsString  := 'Traumatòloga';
              qInsTitol.ParamByName('titulo').AsString := 'Traumatóloga';
          end
          else begin
              qInsTitol.ParamByName('titol').AsString  := 'Traumatòleg';
              qInsTitol.ParamByName('titulo').AsString := 'Traumatólogo';
          end;
      end
      else if (tMetges.FieldByName('c_especial').AsString = '07') then
      begin
          qInsTitol.ParamByName('titol').AsString   := 'Psiquiatra';
          qInsTitol.ParamByName('titulo').AsString  := 'Psiquiatra';
      end
      else begin
          if tMetges.FieldByName('sexe').AsString = 'D' then
          begin
              qInsTitol.ParamByName('titol').AsString  := 'Metgessa adjunta';
              qInsTitol.ParamByName('titulo').AsString := 'Médico adjunta';
          end
          else begin
              qInsTitol.ParamByName('titol').AsString  := 'Metge adjunt';
              qInsTitol.ParamByName('titulo').AsString := 'Médico adjunto';
          end;
      end;

      for i:=0 to 5 do
      begin
          qInsTitol.ParamByName('unitat').AsInteger := i;
          qInsTitol.ExecSQL;
      end;
  end
  else if (tMetges.FieldByName('c_grup').AsString = 'PS')
  then begin
      qInsTitol.ParamByName('codi').AsString           := tMetges.FieldByName('codi').AsString;
      if (tMetges.FieldByName('c_especial').AsString = '14') then
      begin
          qInsTitol.ParamByName('titol').AsString      := 'Logopeda';
          qInsTitol.ParamByName('titulo').AsString     := 'Logopeda';
      end
      else if (tMetges.FieldByName('c_especial').AsString = '15') then
      begin
          if tMetges.FieldByName('sexe').AsString = 'D' then
          begin
              qInsTitol.ParamByName('titol').AsString  := 'Neuropsicòloga';
              qInsTitol.ParamByName('titulo').AsString := 'Neuropsicóloga';
          end
          else begin
              qInsTitol.ParamByName('titol').AsString  := 'Neuropsicòleg';
              qInsTitol.ParamByName('titulo').AsString := 'Neuropsicólogo';
          end;
      end
      else if (tMetges.FieldByName('c_especial').AsString = '08') then
      begin
          if tMetges.FieldByName('sexe').AsString = 'D' then
          begin
              qInsTitol.ParamByName('titol').AsString  := 'Psicòloga clínica';
              qInsTitol.ParamByName('titulo').AsString := 'Psicóloga clínica';
          end
          else begin
              qInsTitol.ParamByName('titol').AsString  := 'Psicòleg clínic';
              qInsTitol.ParamByName('titulo').AsString := 'Psicólogo clínico';
          end;
      end;

      for i:=0 to 5 do
      begin
          qInsTitol.ParamByName('unitat').AsInteger := i;
          qInsTitol.ExecSQL;
      end;
  end
  else if (tMetges.FieldByName('c_grup').AsString = 'UN')
  then begin
      qInsTitol.ParamByName('codi').AsString           := tMetges.FieldByName('codi').AsString;
      if tMetges.FieldByName('sexe').AsString = 'D' then
      begin
          qInsTitol.ParamByName('titol').AsString  := 'Diplomada en Infermeria';
          qInsTitol.ParamByName('titulo').AsString := 'Diplomada en Enfermería';
      end
      else begin
          qInsTitol.ParamByName('titol').AsString  := 'Diplomat en Infermeria';
          qInsTitol.ParamByName('titulo').AsString := 'Diplomado en Enfermería';
      end;

      for i:=0 to 3 do
      begin
          qInsTitol.ParamByName('unitat').AsInteger := i;
          qInsTitol.ExecSQL;
      end;
  end;
  // parte 52044-f.

  tbCrear.Enabled := False;
  tbCancel.Enabled := False;

  // guardem registre al log
  id := GutSelect('select max(id) from LOGCLAUS',[]) + 1;
  GutExecute('insert into LOGCLAUS(id,data,c_usuari,clau,accio,perfil,login) values(%d,"%s","%s","%s","A","%s","%s")',
             [id,FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer),wData.UsuariActiu.Codi,DataSet.FieldByName('codi').AsString,cDretsCom,nUsuariAD.AsString]);
end;

procedure TwFitxaAltaClau.tMetgesAfterInsert(DataSet: TDataSet);
begin
  tbCrear.Enabled := True;
  tbCancel.Enabled := True;
end;

procedure TwFitxaAltaClau.Ed_tMetges_NCExit(Sender: TObject);
var
 int: Integer;
begin
  if (not tMetges.fieldByName('NC').IsNull) and (tMetges.fieldByName('NC').AsString <> '') and avis then
  begin
      avis := False;
      if (not IntegerOK(tMetges.fieldByName('NC').AsString,int))
      then begin
          ShowMessage('El número de col·legiat no pot contenir lletres.');
          Ed_tMetges_NC.SetFocus;
      end
      else if (tMetges.fieldByName('NC').AsInteger > 999999)
      then begin
          ShowMessage('El número de col·legiat ha de ser <= 999.999.');
          Ed_tMetges_NC.SetFocus;
      end;
  end;
end;

procedure TwFitxaAltaClau.Ed_tMetges_NCEnter(Sender: TObject);
begin
  avis := True;
end;

procedure TwFitxaAltaClau.cMetgesConsultaGetSqlField(Sender: THYConsulta;
  var SqlField: String);
begin
  if SqlField = 'METGE'      then SqlField := 'M.METGE';
  if SqlField = 'NOMSENCER'  then SqlField := 'M.NOMSENCER';
  if SqlField = 'BAIXA'      then SqlField := 'M.BAIXA';
  if SqlField = 'COGNOM2'    then SqlField := 'M.Cognom';
  if SqlField = 'SUPERVISOR' then SqlField := 'S.METGE';
end;

procedure TwFitxaAltaClau.cbLDAPClick(Sender: TObject);
begin
  if eDInici.AsDate=0 then eDInici.AsDate:=DateServer;
end;

function TwFitxaAltaClau.TreureDomini(email: String): String;
var
 p: Integer;
begin
  p := Pos('@', email);
  if p>0 then Result:=Copy(email,1,p-1)
         else Result:='';
end;

procedure TwFitxaAltaClau.tMetgesAlConsultarCampoFiltro2(Sender: TObject;
  var Personalizada: Boolean; NombreConsulta: String;
  var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
  Personalizada := False;

  if  (NombreConsulta = 't_doc')
  and ((tMetges.FieldByName('C_GRUP').AsString = 'ME') or (tMetges.FieldByName('C_GRUP').AsString = 'UN'))
  then SubFiltro := '(r_codi is not null OR (r_codi <> ""))';
end;

end.
