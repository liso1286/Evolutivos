unit DataCues;

interface

uses
  SysUtils, Classes, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Dialogs, ulkjson, db, DBTables, Forms, Diccionari;

const
  NLine = #13#10;

type
  TwDataCues = class(TDataModule)
    IdHTTP1: TIdHTTP;
    qDades: TQuery;
    qDadesHORA_PREINGRES: TStringField;
    qDadesC_HISTORIA: TIntegerField;
    qDadesNOM: TStringField;
    qDadesCOGNOM1: TStringField;
    qDadesCOGNOM2: TStringField;
    qDadesButton: TQuery;
    qDadesButtonHORA_PREINGRES: TStringField;
    qDadesButtonC_HISTORIA: TIntegerField;
    qDadesButtonNOMCOMPLET: TStringField;
    qDadesButtonNOMSENCER: TStringField;
    qDadesButtonC_ESPECIAL: TStringField;
    qDadesButtonN_ESPECIAL: TStringField;
    qDadesButtonN_PRESTACIO: TStringField;
    qDadesButtonC_CONSULTA: TStringField;
    qDadesButtonC_PORTA: TIntegerField;
    IdHTTP2: TIdHTTP;
    qDadesButtonUBICACIO: TIntegerField;
    qDadesButtonCENTRE: TStringField;
    Button: THYSqlProc;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    Dev: Boolean;
  public
    { Public declarations }
    function preguntaImpressora(branchId: String) : String;
    function createVisit(branchId, entryPointId, qmatic_servicepoint, idCita, Metge: String): String;
    function callPatient(branchId, servicePointId, idCita: String): String;
    function endVisit(branchId, servicePointId, idCita: String): String;
    function recycle(branchId, servicePointId, idCita: String): String;
    function deleteVisit(branchId, idCita: String): String;
    // BUTTON
    function Retorna_ubicacio(ubicacio, consulta, porta, centre: String): String;
    function Admissio(cTractament,cImpressora: Integer; reimpressio: Boolean=False): String;
    function Actuacio(cTractament, accio: Integer): String;
//    function EsborrarCita(cTractament: Integer): String;
  end;

var
  wDataCues: TwDataCues;

implementation

uses Data, Funciones;

{$R *.dfm}


{ TwDataCues }


function TwDataCues.preguntaImpressora(branchId: String) : String;
var
 url, nom, respostaStr: String;
 opcio, i, num, f: Integer;
 listimpressores: TStrings;
 response: TMemoryStream;
 resposta: TStrings;
 json: TlkJSONobject;
begin
  response := TMemoryStream.Create();
  resposta := TStringList.Create();

  url := 'http://10.168.102.156:8080/apiWsPfmOas7/rest/workstation/entryPoints/'+branchId;  // GET

  TRY response.Seek(1,soFromBeginning);
      IdHTTP1.Get(url, response);
      response.Position := 0;            // es posa al principi de response
      resposta.LoadFromStream(response);

      f := Pos('{',resposta.Text);
      respostaStr := Copy(resposta.Text,f,Length(resposta.Text));

      TRY json := TlkJSONobject(TlkJSON.ParseText(respostaStr));
      EXCEPT
        ShowMessage('Error API Qmatic "GetEntryPoints":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
        resposta.Text := 'ERROR';
        Exit;
      END;

      if (json.Field['status'].Value <> 'OK') then
      begin
          ShowMessage('Error del WebService "getEntryPoints":' + NLine + json.Field['error'].Value);
          resposta.Text := 'ERROR';
          Exit;
      end;

      // Muntem un stringlist de les impressores per demanar que en seleccionin una
      listimpressores := TStringList.Create;
      TRY
          for i := 0 to json.Field['info'].Count -1 do
          begin
              nom := json.Field['info'].Child[i].Field['name'].Value;
              nom := CopyLeft(nom, Length(nom)-1);
              num := json.Field['info'].Child[i].Field['id'].Value;

              listimpressores.Add(IntToStr(num) + '=' + nom);
          end;

          Opcio := AvisoListaTStrings('Seleccioneu la impressora', listimpressores);

          if (Opcio = -1) then resposta.Text := ''
                          else resposta.Text := listimpressores.Names[Opcio];
                          
          Result := resposta.text;
      FINALLY
        listimpressores.Free;
      END;

  FINALLY
    response.Free;
    resposta.Free;
  END;
end;


function TwDataCues.createVisit(branchId, entryPointId, qmatic_servicepoint, idCita, Metge: String): String;
var
 url, text, respostaStr: String;
 f: Integer;
 payload: TStrings;
 response: TMemoryStream;
 resposta: TStrings;
 json: TlkJSONobject;
begin
  payload  := TStringList.Create();
  response := TMemoryStream.Create();
  resposta := TStringList.Create();

  if Dev then url := 'http://vicky-999:3001/apiWsPfmOas7/rest/arrival/branches/'+branchId+'/entryPoints/'+entryPointId+'/visits/'+idCita+'/createVisit'
         else url := 'http://10.168.102.156:8080/apiWsPfmOas7/rest/arrival/branches/'+branchId+'/entryPoints/'+entryPointId+'/visits/'+idCita+'/createVisit';  // POST

  TRY qDades.Close;
      qDades.ParamByName('tractament').AsString := idCita;
      qDades.Open;

      // nomes cal enviar branchid, entrypointId (el retorna el getentrypoints), idCita i idCitaHospital (q son iguals), mapeo1 (entrigypointid), horaCita, aux1 (metge q fa la visita),
      // nombre-apellido1-apellido2 (del pacient) i numHistoria
      payload.Text := Format('{ "idCitaHospital": "%s",', [idCita])+                                     // idCitaHospital = idCita
                      Format(' "horaCita": "%s",',[qDades.FieldByName('hora_preingres').AsString])+
                      Format('    "aux1": "%s",',[Metge]) +
                      Format('    "mapeo1": "%s",',[qmatic_servicepoint])+                               // es la consulta on es visita el pacient - taula PORTES camp QMATIC_SERVICEPOINT
                      ' "servicePoint": {'+
                      Format('    "branchId": "%s"',[branchId])+
                      '  },'+
                      '  "paciente": {'+
                      Format('    "numHistoria": "%s",',[qDades.FieldByName('c_historia').AsString])+
                      Format('    "nombre": "%s",',[qDades.FieldByName('nom').AsString])+                // "Nombre" [String], si vacio = null
                      Format('    "apellido1": "%s",',[qDades.FieldByName('cognom1').AsString])+         // "Apellido1" [String], si vacio = null
                      Format('    "apellido2": "%s"',[qDades.FieldByName('cognom2').AsString])+          // "apellido2" [String], si vacio = null
                      '  }'+
                      '}';

      text := payload.Text;
      //payload.SaveToFile('c:/tempexes/payload.txt');

      response.Seek(1,soFromBeginning);
      IdHTTP1.Request.ContentType := 'application/json';
      IdHTTP1.Post(url, payload, response);
      response.Position := 0;    // es posa al principi de response
      resposta.LoadFromStream(response);

      f := Pos('{',resposta.Text);
      respostaStr := Copy(resposta.Text,f,Length(resposta.Text));

      TRY
        json := TlkJSONobject(TlkJSON.ParseText(respostaStr));
      EXCEPT
        ShowMessage('Error del WebService "createVisit":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
        Exit;
      END;

      if (json['status'].Value <> 'OK') then
      begin
         ShowMessage('Error API Qmatic "createVisit":' + NLine + json['error'].Value);
         Exit;
      end;

      //resposta.SaveToFile('c:/tempexes/resposta.txt');
      Result := json['info'].Field['ticketId'].Value;

  FINALLY
    payload.Free;
    response.Free;
    resposta.Free;

    qDades.Close;
  END;
end;

function TwDataCues.callPatient(branchId, servicePointId, idCita: String): String;
var
 url, respostaStr: String;
 f: Integer;
 payload: TStrings;
 response: TMemoryStream;
 resposta: TStrings;
 json: TlkJSONobject;
begin
  payload  := TStringList.Create();
  response := TMemoryStream.Create();
  resposta := TStringList.Create();
  Result   := '';

  if Dev then url := 'http://vicky-999:3001/apiWsPfmOas7/rest/workstation/branches/'+branchId+'/servicePoint/'+servicePointId+'/call/'+idCita  // POST
         else url := 'http://10.168.102.156:8080/apiWsPfmOas7/rest/workstation/branches/'+branchId+'/servicePoint/'+servicePointId+'/call/'+idCita;

  TRY payload.Add('');  // el payload es buit

      response.Seek(1,soFromBeginning);
      IdHTTP1.Request.ContentType := 'application/json';
      IdHTTP1.Post(url, payload, response);
      response.Position := 0;    // es posa al principi de response
      resposta.LoadFromStream(response);

      f := Pos('{',resposta.Text);
      respostaStr := Copy(resposta.Text,f,Length(resposta.Text));

      TRY
        json := TlkJSONobject(TlkJSON.ParseText(respostaStr));
      EXCEPT
        Result := 'Error del WebService "callPatient":' + NLine + 'No es pot formatar el missatge de sortida (JSON).';
        Exit;
      END;

      if (json['status'].Value <> 'OK') then
      begin
         Result := 'Error API Qmatic "callPatient":' + NLine + json['error'].Value;
         Exit;
      end;
  FINALLY
    payload.Free;
    response.Free;
    resposta.Free;
  END;
end;


function TwDataCues.endVisit(branchId, servicePointId, idCita: String): String;
var
 url, respostaStr: String;
 f: Integer;
 response: TMemoryStream;
 resposta: String;
 json: TlkJSONobject;
begin
  response := TMemoryStream.Create();
  Result   := '';

  if Dev then url := 'http://vicky-999:3001/apiWsPfmOas7/rest/workstation/branches/'+branchId+'/servicePoint/'+servicePointId+'/end/'+idCita
         else url := 'http://10.168.102.156:8080/apiWsPfmOas7/rest/workstation/branches/'+branchId+'/servicePoint/'+servicePointId+'/end/'+idCita;  // PUT

  TRY IdHTTP1.Request.ContentType := 'application/json';
      resposta := IdHTTP1.Put(url, response);

      TRY
        json := TlkJSONobject(TlkJSON.ParseText(resposta));
      EXCEPT
        Result := 'Error del WebService "endVisit":' + NLine + 'No es pot formatar el missatge de sortida (JSON).';
        Exit;
      END;

      if (json['status'].Value <> 'OK') then
      begin
         Result := 'Error API Qmatic "endVisit":' + NLine + json['error'].Value;
         Exit;
      end;
  FINALLY
    response.Free;
  END;
end;


function TwDataCues.recycle(branchId, servicePointId, idCita: String): String;
var
 url: String;
 response: TMemoryStream;
 resposta: String;
 json: TlkJSONobject;
begin
  response := TMemoryStream.Create();
  Result   := '';

  if Dev then url := 'http://vicky-999:3001/apiWsPfmOas7/rest/workstation/branches/'+branchId+'/servicePoint/'+servicePointId+'/recycle/'+idCita
         else url := 'http://10.168.102.156:8080/apiWsPfmOas7/rest/workstation/branches/'+branchId+'/servicePoint/'+servicePointId+'/recycle/'+idCita;  // PUT

  TRY IdHTTP1.Request.ContentType := 'application/json';
      resposta := IdHTTP1.Put(url, response);

      TRY
        json := TlkJSONobject(TlkJSON.ParseText(resposta));
      EXCEPT
        Result := 'Error del WebService "recycle":' + NLine + 'No es pot formatar el missatge de sortida (JSON).';
        Exit;
      END;

      if (json['status'].Value <> 'OK') then
      begin
         Result := 'Error API Qmatic "recycle":' + NLine + json.Field['error'].Value;
         Exit;
      end;
  FINALLY
    response.Free;
  END;
end;

function TwDataCues.deleteVisit(branchId, idCita: String): String;
var
 url: String;
 response: TMemoryStream;
 resposta: TStrings;
 json: TlkJSONobject;

 request: TStringList;
 resp: string;
 tcp: TIdTCPClient;
begin
    Result := '';

    tcp := TIdTCPClient.Create(nil);
    TRY if Dev then
        begin
            tcp.Host := 'VICKY-999';
            tcp.Port := 3001;
        end
        else begin
            tcp.Host := '10.168.102.156';
            tcp.Port := 8080;
        end;
        tcp.Connect(5000);
        TRY request := TStringList.Create();
          TRY url := 'http://10.168.102.156:8080/apiWsPfmOas7/rest/arrival/branches/'+branchId+'/visits/'+idCita+'/deleteVisit';
              request.Add('DELETE '+url+' HTTP/1.1');
              request.Add('Host: '+tcp.Host);
              tcp.WriteHeader(request);
              resp := tcp.ReadLn();
              if (resp <> 'HTTP/1.1 200 OK') then Result:= 'Error: ' + resp;
           FINALLY
              request.Free;
           END;
         FINALLY
           tcp.Disconnect;
         END;
    FINALLY
     tcp.Free;
    END;
end;

procedure TwDataCues.DataModuleCreate(Sender: TObject);
begin
  Dev := GutSelect('select estat from configbloq where camp="QMATIC_LOCAL"',[]) = 1;
end;

function TwDataCues.Retorna_ubicacio(ubicacio, consulta, porta, centre: String): String;
var
  qPortes: TQuery;
begin
    if ubicacio     <> '' then Result := ubicacio
    else begin
        if consulta <> '' then Result := consulta;
        if porta    <> '' then Result := Result + ' porta ' + porta;
    end;

    if Result = '' then
    begin
        TRY
            qPortes := TQuery.Create(Application);
            qPortes.DatabaseName := wData.Gdb.DatabaseName;
            qPortes.SQL.Text := 'select P.C_CONSULTA, P.C_PORTA, P.QMATIC_SERVICEPOINT, C.C_PLANTA   '+
                                'from PORTES P                                                       '+
                                'join CONSULTES C on P.C_CONSULTA = C.C_CONSULTA                     '+
                                'where P.C_ESTAT = 1 and C.C_ESTAT = 1 AND C.CENTRE = "'+ centre +'" '+
                                'order by 1, 2';
            qPortes.Open;

            // Si no seleccionen cap consulta+porta, no imprimirem el tiquet
            if (AvisoListaBd('Seleccioneu la consulta i porta', qPortes, 0, 2) = -1) then
            begin
                Result := '';
                Exit;
            end;

            Result := qPortes.FieldByName('QMatic_ServicePoint').AsString;
        FINALLY
            qPortes.Close;
            qPortes.Free;
        END;
    end;
end;

function TwDataCues.Admissio(cTractament,cImpressora: Integer; reimpressio: Boolean=False): String;
var
 url, ubicacio, imp: String;
 payload: TStrings;
 json: TlkJSONobject;
 JsonStr: string;
 JsonUtf8: UTF8String;
 JsonStream: TStringStream;
 ResponseStream: TStringStream;
 accio: Smallint;
begin
    payload  := TStringList.Create();

    TRY

      if Dev then url := 'http://localhost:3002/API_HIS/admissio'
             else begin
                 if wData.ES_PROVA then url := 'http://hccues-pre.guttmann.com/API_HIS/admissio'  // POST
                                   else url := 'http://hccues.guttmann.com/API_HIS/admissio';
             end;

      imp := GutSelect('select N_CODI from CODICAMPS where TIPUSCODI = "CUES.IMPRESSORA" and C_CODI = %d', [cImpressora]);

      qDadesButton.Close;
      qDadesButton.ParamByName('c_tractament').AsInteger := cTractament;
      qDadesButton.Open;

      while ubicacio = '' do
      ubicacio := Retorna_ubicacio(qDadesButton.FieldByName('UBICACIO').AsString,qDadesButton.FieldByName('C_CONSULTA').AsString,qDadesButton.FieldByName('C_PORTA').AsString,
                                   qDadesButton.FieldByName('centre').AsString);

      if ubicacio = '' then FerError('La UBICACIÓ es obligatòria.',True);

      payload.Add(Format('{ "numHistoria": "%s",', [qDadesButton.FieldByName('c_historia').AsString]));
      payload.Add(Format('  "nomPacient": "%s",', [qDadesButton.FieldByName('nomcomplet').AsString]));
      payload.Add(Format('  "codiDispositiu": "%s",', [wData.ID_COMPUTER]));
      payload.Add(Format('  "codiImpressora": "%s",', [Trim(imp)]));
      payload.Add('  "imprimir": true,');
      payload.Add('  "citaEspecificada": {');
      payload.Add(Format('   "codiCita": "%s",', [IntToStr(cTractament)]));
      payload.Add(Format('   "servei": "%s",', [qDadesButton.FieldByName('c_especial').AsString]));
      payload.Add(Format('   "descripcioCita": "%s",', [qDadesButton.FieldByName('n_prestacio').AsString]));
      payload.Add(Format('   "ubicacio": "%s",', [ubicacio]));
      payload.Add(Format('   "hora": "%s",', [qDadesButton.FieldByName('hora_preingres').AsString]));
      payload.Add(Format('   "nomMetge": "%s"}', [qDadesButton.FieldByName('nomsencer').AsString]));
      payload.Add('}');

      payload.SaveToFile('c:/tempexes/payload.txt');

      JsonStr := payload.Text;
      JsonUtf8 := UTF8Encode(JsonStr); // Codificar manualment a UTF-8
      JsonStream := TStringStream.Create(string(JsonUtf8)); // Cast perquè TStringStream només accepta string ANSI
      ResponseStream := TStringStream.Create('');
      try
        try
          IdHTTP2.Request.ContentType := 'application/json; charset=utf-8';
          IdHTTP2.Request.Accept := 'application/json';
          IdHTTP2.Request.CustomHeaders.Clear;
          if wData.ES_PROVA then IdHTTP2.Request.CustomHeaders.Add('Authorization: Bearer 6w0ZoExCDPdBSgtgDHdaJVpVLEkR90cJ')
                            else IdHTTP2.Request.CustomHeaders.Add('Authorization: Bearer saWd7cGO8X4gTZhoilcbEXJ2ZolT8b5w');

          IdHTTP2.Post(url, JsonStream, ResponseStream);

          TRY
            json := TlkJSONobject(TlkJSON.ParseText(ResponseStream.DataString));
          EXCEPT
            Result := 'Error crida API "admissio":' + NLine + 'No es pot formatar el missatge de sortida (JSON).';
            Exit;
          END;

          if (json['codi'].Value <> 'OK') then
          begin
             Result := 'Error crida API "admissio":' + NLine + json['codi'].Value + Nline + json.Field['descripcio'].Value;
             Exit;
          end;

          Result := json['codiCrida'].Value;

        except
          on E: EIdHTTPProtocolException do ShowMessage('Error ' + E.Message + sLineBreak + E.ErrorMessage);
          on E: Exception do ShowMessage('Error: ' + E.Message);
        end;
      finally
        JsonStream.Free;
        ResponseStream.Free;
      end;
    FINALLY
      payload.Free;
    END;

    if reimpressio then accio := 11
                   else accio := 1;
                   
    GutExecute('insert into CUES (C_TRACTAMENT, ACCIO, IMPRESSORA,  DATA, LOCALITZADOR, C_RESPOSTA, N_RESPOSTA, C_USUARI, UBICACIO) ' +
               '          values (          %d,    %d,         %d, "NOW",         "%s",       "%s",       "%s",     "%s",     "%s") ',
               [cTractament, accio, cImpressora, json['codiCrida'].Value, json['codi'].Value, json['descripcio'].Value, wData.UsuariActiu.Codi, ubicacio]);

    qDadesButton.Close;
end;

function TwDataCues.Actuacio(cTractament,accio: Integer): String;
var
 url,actuacio: String;
 payload,response: TStrings;
 json: TlkJSONobject;
 JsonStr: string;
 JsonUtf8: UTF8String;
 JsonStream: TStringStream;
 ResponseStream: TStringStream;
begin
  payload  := TStringList.Create();
  response := TStringList.Create();

  if Dev then url := 'http://localhost:3002/API_HIS/actuacio'
         else begin
             if wData.ES_PROVA then url := 'http://hccues-pre.guttmann.com/API_HIS/actuacio'  // POST
                               else url := 'http://hccues.guttmann.com/API_HIS/actuacio';
         end;

  TRY qDadesButton.Close;
      qDadesButton.ParamByName('c_tractament').AsInteger := cTractament;
      qDadesButton.Open;

      actuacio := GutSelect('SELECT N_CODI FROM CODICAMPS WHERE TIPUSCODI="CUES.ACCIO" AND C_CODI=%d',[accio]);
      
      payload.Add(Format('{ "codiCita": "%s",', [IntToStr(cTractament)]));
      if accio = 9 then payload.Add('  "tipusActuacio":"FI",')
                   else payload.Add(Format('  "tipusActuacio": "%s",', [actuacio]));
      payload.Add('  "codiUbicacio": null');
      payload.Add('}');

      payload.SaveToFile('c:/tempexes/payload.txt');

      JsonStr := payload.Text;

      // Codificar manualment a UTF-8
      JsonUtf8 := UTF8Encode(JsonStr);
      JsonStream := TStringStream.Create(string(JsonUtf8)); // Cast perquè TStringStream només accepta string ANSI
      ResponseStream := TStringStream.Create('');

      TRY
        IdHTTP2.Request.ContentType := 'application/json; charset=utf-8';
        IdHTTP2.Request.Accept := 'application/json';
        IdHTTP2.Request.CustomHeaders.Clear;
        if wData.ES_PROVA then IdHTTP2.Request.CustomHeaders.Add('Authorization: Bearer 6w0ZoExCDPdBSgtgDHdaJVpVLEkR90cJ')
                          else IdHTTP2.Request.CustomHeaders.Add('Authorization: Bearer saWd7cGO8X4gTZhoilcbEXJ2ZolT8b5w');
        

        IdHTTP2.Post(url, JsonStream, ResponseStream);

        TRY
          json := TlkJSONobject(TlkJSON.ParseText(ResponseStream.DataString));
        EXCEPT
          Result := 'Error crida API "actuacio":' + NLine + 'No es pot formatar el missatge de sortida (JSON).';
          Exit;
        END;

        if (json['codi'].Value <> 'OK') then
        begin
           Result := 'Error crida API "actuacio":' + NLine + json.Field['codi'].Value+ NLine + json.Field['descripcio'].Value;
           Exit;
        end;
        Result := json['descripcio'].Value;

      EXCEPT
        on E: EIdHTTPProtocolException do
        begin
            response.Add('Error ' + E.Message + sLineBreak + E.ErrorMessage);
            response.SaveToFile('c:/response.txt');
            ShowMessage('Error ' + E.Message + sLineBreak + E.ErrorMessage);
        end;
        on E: Exception do
        begin
            response.Add('Error: ' + E.Message);
            response.SaveToFile('c:/response.txt');
            ShowMessage('Error: ' + E.Message);
        end;
      END;

  FINALLY
    payload.Free;
    response.Free;
    JsonStream.Free;
    ResponseStream.Free;

    TRY GutExecute('insert into CUES (C_TRACTAMENT, ACCIO,  DATA, C_RESPOSTA, N_RESPOSTA, C_USUARI, UBICACIO) ' +
                   '          values (          %d,    %d, "NOW",       "%s",       "%s",     "%s",     NULL) ',
                   [cTractament, accio, json['codi'].Value, json['descripcio'].Value, wData.UsuariActiu.Codi]);
    FINALLY END;

    qDadesButton.Close;
  END;
end;


end.
