unit DataHCE;

interface

uses
  SysUtils, Classes, Diccionari, DB, IBCustomDataSet, IBQuery, Windows,
  ExtCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, uLkJSON, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, Variants, winhttp;

const
  ACTION_OUTSIDE_BUSINESS_HOURS = 'outside-business-hours';
  ACTION_LOAD_PERSON            = 'load-person';
  ACTION_WORK_HEALTH            = 'work-health';
  ACTION_WORK_HEALTH_UPDATE     = 'work-health-update';
  ACTION_OUTSIDE_GROUPS         = 'load-patient-groups';
  WORK_HEALTH_SOURCE            = 4;
  ACTION_SET_VISIBILITY_AS_UNRESTRICTED = 'set-visibility-as-unrestricted';

type

  THttpResponse = Record
   OK: String;
   Error: String;
  end;

  TPerson = Record
   NHC: String;
   Nom: String;
   Cognom1: String;
   Cognom2: String;
   Telefon: String;
   Genere: String;
   Data_Naixement: String;
   Unitat: String;
   id: String;
  end;

  THttpResponsePerson = Record
   OK: String;
   Error: String;
   Person: TPerson;
  end;

  TwDataHCE = class(TDataModule)
    SingleSignOn: TDic;
    qInsSingleSignOn: TIBQuery;
    P_GrantHCE: THYSqlProc;
    HceLogUppCAP: TDic;
    HceLogUppLin: TDic;
    HceLogEscalesCap: TDic;
    UppCap_AU_HCE: THYSqlTrigger;
    UppCap_AD_HCE: THYSqlTrigger;
    UppLin_AU_HCE: THYSqlTrigger;
    UppLin_AD_HCE: THYSqlTrigger;
    UppLin_AI_HCE: THYSqlTrigger;
    EscalesCap_AU_HCE: THYSqlTrigger;
    EscalesCap_AD_HCE: THYSqlTrigger;
    HcePrealtes: TDic;
    P_TancaSC: THYSqlProc;
    UpdateNHC: THYSqlProc;
    ActionTokens: TDic;
    qInsActionToken: TIBQuery;
    Config: TDic;
    HceLogFili: TDic;
    Fili_AU_HCE: THYSqlTrigger;
    http: TIdHTTP;
    ssl: TIdSSLIOHandlerSocket;
    Tract_AU_HCE: THYSqlTrigger;
    HceLogTract: TDic;
    HceLogEspera: TDic;
    Espera_AU_HCE: THYSqlTrigger;
    Espera_AI_HCE: THYSqlTrigger;
    Espera_AD_HCE: THYSqlTrigger;
    HCDuplicats: THYSqlProc;
    HceLogAnota: TDic;
    Historia_AU_HCE: THYSqlTrigger;
    UpdateIDnHCE_Eliminada: THYSqlProc;
    HceLogMetges: TDic;
    Metges_AU_HCE: THYSqlTrigger;
    Centrefac_AI_HCE: THYSqlTrigger;
    HceLogCatalegFactu: TDic;
    Centrefac_AU_HCE: THYSqlTrigger;
    Centrefac_AD_HCE: THYSqlTrigger;
    Client_AI_HCE: THYSqlTrigger;
    Client_AU_HCE: THYSqlTrigger;
    Client_AD_HCE: THYSqlTrigger;
    Delega_AI_HCE: THYSqlTrigger;
    Delega_AU_HCE: THYSqlTrigger;
    Delega_AD_HCE: THYSqlTrigger;
    Params_AI_HCE: THYSqlTrigger;
    Params_AU_HCE: THYSqlTrigger;
    Params_AD_HCE: THYSqlTrigger;
    Facilita_AI: THYSqlTrigger;
    Facilita_AU: THYSqlTrigger;
    Facilita_AD: THYSqlTrigger;
    Hospi_AI: THYSqlTrigger;
    Hospi_AU: THYSqlTrigger;
    Hospi_AD: THYSqlTrigger;
    HceLogCE: TDic;
    Portes_AI: THYSqlTrigger;
    Portes_AU: THYSqlTrigger;
    Portes_AD: THYSqlTrigger;
    Consultes_AI: THYSqlTrigger;
    Consultes_AU: THYSqlTrigger;
    Consultes_AD: THYSqlTrigger;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function InsSingleSignOn(origin:string; nhc:integer=0; foreignId: string=''): string;
    function getActiveUserName(): String;
    function getExpireDate(): TDateTime;
    function getToken(): String;
    function openBrowser(url: string): bool;
    procedure InsActionToken(actionName, token: string);
    procedure JsonArrayToStrings(const JsonText: string; AStrings: TStrings);
  public
    { Public declarations }
    function getConfigValue(key: string): String;
    function ObrirPlaTerapeutic(c_historia: integer): Boolean;
    function ObrirUpHill(c_historia: integer): Boolean;
    function ObrirNovaHCE(c_historia: integer; origin: string = 'SHOW-PATIENT';c_espera: string=''): Boolean;
    function BuscaPacientAdmissions(c_espera: integer): Boolean;
    function CrearPacientAdmissions(c_espera: integer): Boolean;
    function EditarPacientAdmissions(c_historia: integer;c_espera: integer): Boolean;
    function BuscaPacient(c_historia: integer): Boolean;
    function ObreCalenariTP: Boolean;
    function EditarPersona(personId: integer): Boolean;
    function CrearPersonaSolIngres(idRegistre: integer): Boolean;
    function CrearPersonaEspera(c_espera: integer): Boolean;
    function GenerateToken(actionName: string): string;
    function CridaRestNovaHCE(Nom, Cognom1, Cognom2, Sexe: String): THttpResponse;
    function CridaRestNovaHCESalutLaboral(Nom, Cognom1, Cognom2, Sexe, tDoc, nDoc, TSI, DataNaix, Email: String): THttpResponse;
    function CridaRestUpdateHCESalutLaboral(NHC, Nom, Cognom1, Cognom2, Sexe, tDoc, nDoc, DataCaducitat, PaisPassaport, TSI, DataNaix, Email: String): THttpResponse;
    function CridaRestCarregarPersonaNovaHCE(idPerson: Integer): THttpResponsePerson;
    function ObrirInfoDerivacions: Boolean;
    function ModificarPersonaReferencia(c_historia: integer): Boolean;
    function GrupsProfEntreDates(patient_id, start_date, final_date: String; grups: TStrings): String;
    function SetVisibilityAUnrestricted(NHC: Integer): THttpResponse;
  end;

var
  wDataHCE: TwDataHCE;

implementation

uses Data, DateUtils, Dialogs, ComObj, Registry, ShellApi, Forms,
  DataBasics, IdSSLOpenSSLHeaders, Funciones, DataCurs, DataAdmisio;
{$R *.dfm}

{ TwDataHCE }

function TwDataHCE.getToken: String;
var
 G: TGUID;

begin
 CreateGuid(G);
 Result:=GUIDToString(G);
 Result := Copy(result,2,36);
end;

function TwDataHCE.getActiveUserName: String;
var
  email: string;
  p: integer;
begin
    if wData.UsuariActiu.Codi='' then abort;
    email := GutSelect('SELECT EMAIL FROM metges WHERE codi = "%s"',[wData.UsuariActiu.Codi]);
    p:=pos('@',email);
    if (p=0)
    then result:=''
    else result:=copy(email,1,p-1);
end;

function TwDataHCE.getExpireDate: TDateTime;
begin
    Result := IncMinute(now,10);
end;

function TwDataHCE.openBrowser(url: string): bool;
var
    R: TRegistry;
    cmd: string;
    ret: integer;
begin
    cmd:='';
    R := TRegistry.Create;
    try
        R.RootKey := HKEY_LOCAL_MACHINE;
        try
            if R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe')
            then cmd := R.ReadString('')
            else if R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\firefox.exe')
            then cmd := R.ReadString('');
        except
        end;
    finally
        r.free;
    end;

    if (cmd='')
    then ret:=ShellExecute(Application.Handle,'open',PChar(url),'','',SW_SHOWNORMAL)
    else ret:=ShellExecute(Application.Handle,nil,PChar(cmd),PChar(url),'',SW_SHOWNORMAL);

    result:=ret>32;
end;


function TwDataHCE.InsSingleSignOn(origin: string; nhc: integer=0; foreignId: string=''): string;
var
    token: string;
begin
    token := getToken();
    with qInsSingleSignOn do
    begin
        ParamByName('token').AsString := token;
        ParamByName('username').Asstring := getActiveUserName();
        ParamByName('origin').AsString := origin;
        if nhc=0
        then ParamByName('nhc').Clear
        else ParamByName('nhc').AsInteger := nhc;
        ParamByName('expire').AsDateTime := getExpireDate();
        if foreignId=''
        then ParamByName('foreign_id').Clear
        else ParamByName('foreign_id').AsString := foreignId;
        ExecSQL;
        Transaction.CommitRetaining;
    end;
    result:= token;

end;


function TwDataHCE.ObrirPlaTerapeutic(c_historia: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('TP',c_historia);
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;

function TwDataHCE.ObrirInfoDerivacions: Boolean;
var
 url: String;
begin
    url := GutSelect('select valor from HCE_CONFIG where id = "derivation-information"',[]);
    result := openBrowser(url);
end;


function TwDataHCE.CrearPacientAdmissions(c_espera: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('ADM-CREATE',0,IntToStr(c_espera));
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;


function TwDataHCE.EditarPacientAdmissions(c_historia, c_espera: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('ADM-EDIT',c_historia,IntToStr(c_espera));
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;

function TwDataHCE.BuscaPacientAdmissions(c_espera: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('ADM-SEARCH',0,IntToStr(c_espera));
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;

function TwDataHCE.BuscaPacient(c_historia: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('ADM-SEARCH',c_historia);
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;

function TwDataHCE.ObreCalenariTP: Boolean;
var
    token : String;
begin
    token := InsSingleSignOn('TP-CALENDAR');
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;


function TwDataHCE.GenerateToken(actionName: string): string;
var
    token: string;
begin
    token := getToken();
    InsActionToken(actionName, token);
    result:= token;
end;

procedure TwDataHCE.InsActionToken(actionName, token: string);
begin
    with qInsActionToken do
    begin
        ParamByName('token'      ).AsString   := token;
        ParamByName('username'   ).Asstring   := getActiveUserName();
        ParamByName('action_name').AsString   := actionName;
        ParamByName('expire'     ).AsDateTime := getExpireDate();
        ExecSQL;
        Transaction.CommitRetaining;
    end;
end;


function TwDataHCE.CridaRestNovaHCE(Nom, Cognom1, Cognom2, Sexe: String): THttpResponse;
var
 url, token, gender, actionName: String;
 payload: TStringList;
 response: TMemoryStream;
 resposta: TStrings;
 json: TlkJSONobject;
 respostaStr: String;
 f: integer;
 jsonok: bool;

begin

    actionName := ACTION_OUTSIDE_BUSINESS_HOURS;

    TRY
      token := wDataHCE.GenerateToken(actionName);
    FINALLY
      Sleep(1000);
    END;

    payload  := TStringList.Create();
    response := TMemoryStream.Create();
    resposta := TStringList.Create();

    url := GutSelect('select VALOR from HCE_CONFIG where ID="%s"',[actionName]);

    Result.Error := '';
    Result.OK := '';

    TRY
        if sexe = 'H' then gender := 'm'
                      else gender := 'f';

        payload.text := Format('{ "name": "%s", "surname_1": "%s","surname_2": "%s", "gender": "%s", "token": "%s" }',[Nom,Cognom1,Cognom2,gender,token]);
     
        response.Seek(1,soFromBeginning);
        http.Request.ContentType := 'application/json';
        try
          http.Post(trim(url), payload, response);
        finally
          response.Position := 0;
          resposta.LoadFromStream(response);
        end;
      
        if (http.ResponseCode <> 200) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE:' + IntToStr(http.ResponseCode) + ' ' + resposta.text;
        end;

        if (resposta.Count=0) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE: Resposta buida';
        end;


        respostaStr := '';
        jsonok:=false;
        for f:=1 to Length(resposta.Text) do
        begin
              if resposta.Text[f]='{' then jsonok:=true;
              if jsonok then respostaStr := respostaStr +  resposta.Text[f];
        end;


        if (jsonok=false) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE: Json no valid';
        end
        else begin
          TRY
              json := TlkJSONobject(TlkJSON.ParseText(respostaStr));
              Result.Ok    := json['id'].Value;
          EXCEPT
              Result.Ok    := '-1';
              Result.Error := 'Error en petició REST nova HCE:' + 'No es pot formatar el missatge de sortida (JSON).';

          END;
        end;

    FINALLY
      payload.Free;
      response.Free;
      resposta.Free;
    END;
end;


function TwDataHCE.CridaRestNovaHCESalutLaboral(Nom, Cognom1, Cognom2, Sexe, tDoc, nDoc, TSI, DataNaix, Email: String): THttpResponse;
var
  url, token, gender, actionName, documents, address, birth: String;
  documentType: Integer;
  payload: TStringList;
  response: TMemoryStream;
  resposta: TStrings;
  json: TlkJSONobject;
  respostaStr: String;
  f: integer;
  jsonok: bool;
begin

    actionName := ACTION_WORK_HEALTH;

    TRY
      token := wDataHCE.GenerateToken(actionName);
    FINALLY
      Sleep(1000);
    END;

    payload  := TStringList.Create();
    response := TMemoryStream.Create();
    resposta := TStringList.Create();

    url := GutSelect('select VALOR from HCE_CONFIG where ID="%s"',[actionName]);

    Result.Error := '';
    Result.OK := '';

    TRY
        if sexe = 'H' then gender := 'm'
                      else gender := 'f';

        // convertir tDoc a docment_type
        if      tDoc = 'D' then documentType := 10
        else if tDoc = 'N' then documentType := 11
        else if tDoc = 'P' then documentType := 12
        else if tDoc = 'R' then documentType := 13
                           else FerError('Tipus de document identificatiu no vàlid.', True);

        documents := Format('[{"type": %d, "number": "%s"},'+
                             '{"type": 20, "number": "%s", "params": {"2":1}}]',
                            [documentType, nDoc, TSI]);
        if Email <> '' then address := Format('[{"address": "%s"}]',[Email])
                       else address := '[]';
        if DataNaix <> '' then birth := Format('{"birthday": "%s", "country": null}', [DataNaix])
                          else birth := '';

        payload.text := Format('{ "name": "%s", "surname_1": "%s","surname_2": "%s", "gender": "%s",'+
                               '  "documents": %s, "birth": %s, "email": %s, "source": %d, "token": "%s" }',
                               [Nom,Cognom1,Cognom2,gender,documents,birth,address,WORK_HEALTH_SOURCE,token]);

  //      payload.SaveToFile('G:\proves\payload_work_health.txt');
        response.Seek(1,soFromBeginning);
        http.Request.ContentType := 'application/json';
        http.Post(trim(url), payload, response);
        response.Position := 0;
        resposta.LoadFromStream(response);

        if (http.ResponseCode <> 200) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE:' + IntToStr(http.ResponseCode);
        end;

        if (resposta.Count=0) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE: Resposta buida';
        end;

        respostaStr := '';
        jsonok:=false;
        for f:=1 to Length(resposta.Text) do
        begin
              if resposta.Text[f]='{' then jsonok:=true;
              if jsonok then respostaStr := respostaStr +  resposta.Text[f];
        end;

        if (jsonok=false) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE: Json no valid';
        end
        else begin
          TRY
  //            resposta.Text := respostaStr;
  //            resposta.SaveToFile('G:\proves\respostaStr_work_health.txt');
              json := TlkJSONobject(TlkJSON.ParseText(respostaStr));
              Result.Ok    := VarToStr(json['id'].Value);
          EXCEPT
              Result.Ok    := '-1';
              Result.Error := 'Error en petició REST nova HCE: No es pot formatar el missatge de sortida (JSON).';
          END;
        end;

    FINALLY
      payload.Free;
      response.Free;
      resposta.Free;
    END;
end;

function TwDataHCE.CridaRestUpdateHCESalutLaboral(NHC, Nom, Cognom1, Cognom2, Sexe, tDoc, nDoc, DataCaducitat, PaisPassaport, TSI, DataNaix, Email: String): THttpResponse;
var
  url, token, gender, actionName, documents, address, birth: String;
  documentType: Integer;
  payload: TStringList;
  response: TMemoryStream;
  resposta: TStrings;
  json: TlkJSONobject;
  respostaStr: String;
  f: integer;
  jsonok: bool;
begin

    actionName := ACTION_WORK_HEALTH_UPDATE;

    TRY
      token := wDataHCE.GenerateToken(actionName);
    FINALLY
      Sleep(1000);
    END;

    payload  := TStringList.Create();
    response := TMemoryStream.Create();
    resposta := TStringList.Create();

    url := GutSelect('select VALOR from HCE_CONFIG where ID="%s"',[actionName]);
    url := Replace('patient_id',NHC,url);

    Result.Error := '';
    Result.OK := '';

    TRY
        if sexe = 'H' then gender := 'm'
                      else gender := 'f';

        // todo: convertir tDoc a docment_type
        if      tDoc = 'D' then documentType := 10
        else if tDoc = 'N' then documentType := 11
        else if tDoc = 'P' then documentType := 12
        else if tDoc = 'R' then documentType := 13
                           else FerError('Tipus de document identificatiu no vàlid.', True);

        if documentType = 12
        then documents := Format('[{"type": %d, "number": "%s", "due": "%s", "params": {"1":%s}},'+
                                 '{"type": 20, "number": "%s", "params": {"2":1}}]',
                                 [documentType, nDoc, DataCaducitat, PaisPassaport, TSI])
        else documents := Format('[{"type": %d, "number": "%s"},'+
                                 '{"type": 20, "number": "%s", "params": {"2":1}}]',
                                 [documentType, nDoc, TSI]);
        if Email <> '' then address := Format('[{"address": "%s"}]',[Email])
                       else address := '[]';
        if DataNaix <> '' then birth := Format('{"birthday": "%s", "country": null}', [DataNaix])
                          else birth := '';

        payload.text := Format('{ "name": "%s", "surname_1": "%s","surname_2": "%s", "gender": "%s",'+
                               '  "documents": %s, "birth": %s, "email": %s, "source": %d, "token": "%s" }',
                               [Nom,Cognom1,Cognom2,gender,documents,birth,address,WORK_HEALTH_SOURCE,token]);

        // payload.SaveToFile('G:\proves\payload_work_health.txt');
        response.Seek(1,soFromBeginning);
        http.Request.ContentType := 'application/json';
        http.Post(trim(url), payload, response);
        response.Position := 0;
        resposta.LoadFromStream(response);

        if (http.ResponseCode <> 200) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST update HCE:' + IntToStr(http.ResponseCode);
        end;

        if (resposta.Count=0) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST update HCE: Resposta buida';
        end;

        respostaStr := '';
        jsonok:=false;
        for f:=1 to Length(resposta.Text) do
        begin
              if resposta.Text[f]='{' then jsonok:=true;
              if jsonok then respostaStr := respostaStr +  resposta.Text[f];
        end;

        if (jsonok=false) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST update HCE: Json no valid';
        end
        else begin
          TRY
  //            resposta.Text := respostaStr;
  //            resposta.SaveToFile('G:\proves\respostaStr_work_health.txt');
              json := TlkJSONobject(TlkJSON.ParseText(respostaStr));
              Result.Ok    := VarToStr(json['id'].Value);
          EXCEPT
              Result.Ok    := '-1';
              Result.Error := 'Error en petició REST update HCE: No es pot formatar el missatge de sortida (JSON).';
          END;
        end;

    FINALLY
      payload.Free;
      response.Free;
      resposta.Free;
    END;
end;


function TwDataHCE.CridaRestCarregarPersonaNovaHCE(idPerson: Integer): THttpResponsePerson;
var
  url, token, gender, actionName, err: String;
  payload: TStringList;
  response: TMemoryStream;
  resposta: TStrings;
  json: TlkJSONobject;
  respostaStr: String;
  i,f: integer;
  jsonok: bool;
begin

    actionName := ACTION_LOAD_PERSON;

    TRY
      token := wDataHCE.GenerateToken(actionName);
    FINALLY
      Sleep(1000);
    END;

    payload  := TStringList.Create();
    response := TMemoryStream.Create();
    resposta := TStringList.Create();

    url := GutSelect('select VALOR from HCE_CONFIG where ID="%s"',[actionName]);

    Result.Error  := '';
    Result.OK     := '';
    with Result.Person do
    begin
        NHC     := '';
        Nom     := '';
        Cognom1 := '';
        Cognom2 := '';
        Telefon := '';
        Genere  := '';
        Data_Naixement := '';
    end;

    TRY payload.text := Format('{ "person": %d, "token": "%s" }',[idPerson,token]);
        response.Seek(1,soFromBeginning);
        http.Request.ContentType := 'application/json';
        http.Post(trim(url), payload, response);
        response.Position := 0;            // es posa al principi de response
        resposta.LoadFromStream(response);

        if (http.ResponseCode <> 200) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE:' + IntToStr(http.ResponseCode);
        end;

        if (resposta.Count=0) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE: Resposta buida';
        end;

        respostaStr := '';
        jsonok:=false;
        for f:=1 to Length(resposta.Text) do
        begin
            if resposta.Text[f]='{' then jsonok:=true;
            if jsonok then respostaStr := respostaStr +  resposta.Text[f];
        end;
      
        if (jsonok=false) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE: Json no valid';
        end
        else begin
          TRY
              json := TlkJSONobject(TlkJSON.ParseText(respostaStr));

              if (Pos('"err":', respostaStr) > 0) then
              begin
                  if json['err'].Value = Null then err := ''
                                              else err := json['err'].Value;
              end
              else err := '';

              if (err = '') then
              begin
                  Result.Ok := '0';
                  if json['patient'].Value = Null then Result.Person.NHC := ''
                                                  else Result.Person.NHC := VarToStr(json['patient'].Value);

                  Result.Person.Nom     := VarToStr(json['name'].Value);
                  Result.Person.Cognom1 := VarToStr(json['surname_1'].Value);

                  if json['surname_2'].Value = Null then Result.Person.Cognom2 := ''
                                                    else Result.Person.Cognom2 := VarToStr(json['surname_2'].Value);

                  if      json['gender'].Value = 'm' then Result.Person.Genere := 'H'
                  else if json['gender'].Value = 'f' then Result.Person.Genere := 'D';

                  Result.Person.Data_Naixement := VarToStr(json['birth'].Field['birthday'].Value);
                  i := 0;
                  while (Result.Person.Telefon = '') and (i <= json['phone'].Count - 1) do
                  begin
                      if json['phone'].Child[i].Field['valid_until'].Value = Null then Result.Person.Telefon := VarToStr(json['phone'].Child[i].Field['number'].Value);
                      i:=i+1;
                  end;
              end
              else begin
                  Result.OK := '-2';
                  Result.Error := 'Error en petició REST "'+actionName+'": ' + err;
              end;
          EXCEPT
              Result.Ok    := '-1';
              Result.Error := 'Error en petició REST "'+actionName+'": ' + 'No es pot formatar el missatge de sortida (JSON).';
              Result.Error := Result.Error + #10#13 + respostaStr; 
          END;
        end;

    FINALLY
      payload.Free;  
      response.Free;
      resposta.Free;
    END;
end;

function TwDataHCE.SetVisibilityAUnrestricted(NHC: Integer): THttpResponse;
var
 url, token, actionName: String;
 payload: TStringList;
 response: TMemoryStream;
 resposta: TStrings;
 requestStream: TStringStream;
 json: TlkJSONobject;
 respostaStr: String;
 f: integer;
 jsonok: bool;
begin

    actionName := ACTION_SET_VISIBILITY_AS_UNRESTRICTED;

    TRY
      token := wDataHCE.GenerateToken(actionName);
    FINALLY
      Sleep(1000);
    END;

    payload  := TStringList.Create();
    response := TMemoryStream.Create();
    resposta := TStringList.Create();

    url := GutSelect('select VALOR from HCE_CONFIG where ID="%s"',[actionName]);

    Result.Error := '';
    Result.OK := '';

    TRY
        payload.text := Format('{ "token": "%s", "patient_id": %d }',[token, NHC]);

        response.Seek(1,soFromBeginning);
        http.Request.ContentType := 'application/json';

        try
          requestStream := TStringStream.Create(payload.Text);
          http.DoRequest(
            hmPatch,
            Trim(url),
            requestStream,
            response
          );
        finally
          requestStream.Free;        
          response.Position := 0;
          resposta.LoadFromStream(response);
        end;
      
        if not (http.ResponseCode in [200, 201, 202, 204]) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE:' + IntToStr(http.ResponseCode) + ' ' + resposta.text;
        end;

        if (resposta.Count=0) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE: Resposta buida';
        end;


        respostaStr := '';
        jsonok:=false;
        for f:=1 to Length(resposta.Text) do
        begin
              if resposta.Text[f]='{' then jsonok:=true;
              if jsonok then respostaStr := respostaStr +  resposta.Text[f];
        end;


        if (jsonok=false) then
        begin
            Result.Ok    := '-1';
            Result.Error := 'Error en petició REST nova HCE: Json no valid';
        end
        else begin
          TRY
              json := TlkJSONobject(TlkJSON.ParseText(respostaStr));
              Result.Ok    := json['id'].Value;
          EXCEPT
              Result.Ok    := '-1';
              Result.Error := 'Error en petició REST nova HCE:' + 'No es pot formatar el missatge de sortida (JSON).';

          END;
        end;

    FINALLY
      payload.Free;
      response.Free;
      resposta.Free;
    END;
end;

procedure TwDataHCE.DataModuleCreate(Sender: TObject);
begin
    IdSSLOpenSSLHeaders.Load;
end;

function TwDataHCE.EditarPersona(personId: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('ADM-PERSON-EDIT',0,IntToStr(personId));
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;


function TwDataHCE.CrearPersonaEspera(c_espera: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('ADM-PERSON-CREATE-WAITING',0,IntToStr(c_espera));
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;


function TwDataHCE.CrearPersonaSolIngres(idRegistre: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('ADM-PERSON-CREATE-APPLICATION',0,IntToStr(idRegistre));
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;

function TwDataHCE.ObrirUpHill(c_historia: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('UP-HILL',c_historia);
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;

function TwDataHCE.ObrirNovaHCE(c_historia: integer; origin: string = 'SHOW-PATIENT'; c_espera: string=''): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn(origin,c_historia,c_espera);
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;

function TwDataHCE.ModificarPersonaReferencia(c_historia: integer): Boolean;
var
    token: String;
begin
    token := InsSingleSignOn('UPDATE-RELATED-REFERENCE-PERSON',c_historia);
    Sleep(1000);
    result := openBrowser(getConfigValue('sso')+token);
end;

function TwDataHCE.getConfigValue(key: string): String;
begin
    result := GutSelect('SELECT VALOR FROM HCE_CONFIG WHERE ID = "%s" ',[key]);
end;


function TwDataHCE.GrupsProfEntreDates(patient_id, start_date, final_date: String; grups: TStrings): String;
var
  url, token, actionName: String;
  payload: string;
  resposta: String;
  code: integer;
  jsonStrings: TStrings;
  i, f: integer;
  jsonarrayok: bool;
begin

    actionName := ACTION_OUTSIDE_GROUPS;

    TRY token := wDataHCE.GenerateToken(actionName);
    FINALLY Sleep(1000);
    END;


    url := GutSelect('select VALOR from HCE_CONFIG where ID="%s"', [actionName]);

    Result := '';

    payload := Format('{"patient_id": %s, "start_date": "%s", "final_date": "%s", "token": "%s"}', [patient_id, start_date, final_date, token]);
    resposta := winhttp.HttpPostJsonWinHTTP(trim(url),payload,code);

    if (code <> -1) and (code <> 200) then begin Result := 'Error en petició REST nova HCE:' + IntToStr(code) + ' ' + resposta; Exit; end;
    if (resposta = '') then begin Result := 'Error en petició REST nova HCE: Resposta buida'; Exit; end;

    jsonarrayok := false;
    if copy(resposta,0,1)='[' then jsonarrayok := true;

    if (jsonarrayok = false) then begin Result := 'Error en petició REST nova HCE: Json no vàlid'; Exit; end;

    TRY    JsonArrayToStrings(resposta, grups);
    EXCEPT Result := 'Error en petició REST nova HCE: no es pot formatar el missatge de sortida (JSON).'; Exit;
    END;

    Result := 'OK';

end;


procedure TwDataHCE.JsonArrayToStrings(const JsonText: string; AStrings: TStrings);
var
  JSONBase: TlkJSONbase;
  JSONArray: TlkJSONlist;
  I: Integer;
begin
    AStrings.Clear;

    // Parseja el text JSON
    JSONBase := TlkJSON.ParseText(JsonText);
    try
      // Comprova si és una llista JSON
      if Assigned(JSONBase) and (JSONBase is TlkJSONlist) then
      begin
        JSONArray := TlkJSONlist(JSONBase);
        for I := 0 to JSONArray.Count - 1 do
          AStrings.Add(JSONArray.getString(I));
      end
      else
        raise Exception.Create('El JSON no és un array vàlid.');
    finally
      JSONBase.Free;
    end;
end;

end.


