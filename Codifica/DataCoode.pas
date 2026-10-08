unit DataCoode;

interface

uses
  SysUtils, Classes, SOAPHTTPClient, WS_COODE, Rio;

type
  TwDataCoode = class(TDataModule)
  private
    procedure PeticioBeforeExecuteCoode(const MethodName: string;var SOAPRequest: WideString);
    procedure PeticioAfterExecuteCoode(const MethodName: string; SOAPResponse: TStream);
  public
    function  CridaCoodeOld(Literal, text, versiocim: String; xml: Boolean; identificador: String): ArrayOfAshoCoodeResponse;
    function  CridaCoode(Literal, text, versiocim: String; xml: Boolean; identificador: String): ArrayOfAshoCoodeResponse;
  end;

var
  wDataCoode: TwDataCoode;

implementation

{$R *.dfm}

uses Data, Funciones, opconvert;

function TwDataCoode.CridaCoodeOld(Literal, text, versiocim: String; xml: Boolean; identificador: String): ArrayOfAshoCoodeResponse;
var
  RIO: THTTPRIO;
  ws: AshoCoodeSoap;
  CodeFamily: String;
  IdCoode: Integer;
begin
    if      versiocim = '9'  then CodeFamily := 'ICD9MC_2012_D'
    else if versiocim = '10' then CodeFamily := 'ICD10MC_2026_D' //'ICD10MC_2024_D'  //'ICD10MC_2022_D'  'ICD10MC_2020_D'   //'ICD10MC_2018_D'    //'ICD10MC_2016_D'
                             else FerError('Versió CIM incorrecta');

    RIO := THTTPRIO.Create(nil);
    if xml then
    begin
        RIO.OnBeforeExecute := PeticioBeforeExecuteCoode;
        RIO.OnAfterExecute  := PeticioAfterExecuteCoode;
    end;


    // si posen apòstrofs no peta però el WS no retorna res
    Literal := Replace('''','"',Literal);

    ws:=GetAshoCoodeSoap(False,'',RIO);
    TRY
        Result  := ws.Coode(Literal, identificador, '', CodeFamily, '', 1, 40);  // només en recuperem 1 ja que el primer és el de major confiança
    EXCEPT
        on e: Exception do // FerError('Error al recuperar codi ICD: motiu de la consulta "'+Literal+'" no trobat.', False); // FerError('Error al recuperar codi ICD: '+e.message, True);
        begin
            IdCoode := GutSelect('select max(id) from LOGWSCOODE',[])+1;
            TRY GutExecute('insert into LOGWSCOODE (ID, TOKENNAME, CODEFAMILY, ERROR, DATA, LOGIN, COMPUTER, IDENTIFICADOR) ' +
                           'values                 (%d,      "%s",       "%s",  "%s", "NOW", "%s",     "%s",          "%s")',
                           [IdCoode, Literal, CodeFamily, Copy(e.message, 1, 199), wData.ID_LOGIN, wData.ID_COMPUTER, identificador]);
            EXCEPT
              on e: Exception do FerError('LOGWSCOODE ' + e.message);
            END;
        end;
    END;
end;


procedure TwDataCoode.PeticioBeforeExecuteCoode(const MethodName: string; var SOAPRequest: WideString);
var
  tmp: TStringList;
begin
    tmp := TStringList.Create;
    TRY
      tmp.text := SOAPRequest;
      tmp.SaveToFile(C_TEMPORAL + '\ultim_generat_coode.xml');
      SOAPRequest := tmp.text;
    FINALLY
      tmp.Free;
    END;
end;


procedure TwDataCoode.PeticioAfterExecuteCoode(const MethodName: string; SOAPResponse: TStream);
var
  sl : TStringList;
begin
    sl := tstringlist.create;
    TRY
      soapresponse.position := 0;
      sl.loadfromstream(soapresponse);    // load the response into a stringlist so we can work on it.

      sl.savetofile(C_TEMPORAL + '\ultim_retornat_coode.xml');

      // now write out edits back out to the stream.
      soapresponse.position := 0;            // now overwrite the crappy response with our good one.
      soapresponse.size := length(sl.text);  // important - set new length before saving.  otherwise, the old
      sl.savetostream(soapresponse);         // leftover crud is still there, at the end, and the xml will blow up on it.
      soapresponse.position := 0;
    FINALLY
      freeandnil(sl);
    END;
end;


function TwDataCoode.CridaCoode(Literal, text, versiocim: String; xml: Boolean; identificador: String): ArrayOfAshoCoodeResponse;
var
  RIO: THTTPRIO;
  ws: AshoCoodeSoap;
  CodeFamily: String;
  IdCoode: Integer;
begin
    if      versiocim = '9'  then CodeFamily := 'ICD9MC_2012_D'
    else if versiocim = '10' then CodeFamily := 'ICD10MC_2026_D' //'ICD10MC_2024_D'   // 'ICD10MC_2022_D' 'ICD10MC_2020_D'   //'ICD10MC_2018_D'    //'ICD10MC_2016_D'
                             else FerError('Versió CIM incorrecta');

    RIO := THTTPRIO.Create(nil);
    if xml then
    begin
        RIO.OnBeforeExecute := PeticioBeforeExecuteCoode;
        RIO.OnAfterExecute  := PeticioAfterExecuteCoode;
    end;
    RIO.Converter.Options := RIO.Converter.Options + [soUTF8InHeader];
    RIO.HTTPWebNode.UseUTF8InHeader:=true;


    // si posen apòstrofs no peta però el WS no retorna res
    Literal := Replace('''','"',Literal);

    ws:=GetAshoCoodeSoap(False,'http://gutmirth:8045/',RIO);
    TRY
        Result  := ws.Coode(Literal, identificador, '', CodeFamily, '', 1, 40);  // només en recuperem 1 ja que el primer és el de major confiança
    EXCEPT
        on e: Exception do // FerError('Error al recuperar codi ICD: motiu de la consulta "'+Literal+'" no trobat.', False); // FerError('Error al recuperar codi ICD: '+e.message, True);
        begin
            IdCoode := GutSelect('select max(id) from LOGWSCOODE',[])+1;
            TRY GutExecute('insert into LOGWSCOODE (ID, TOKENNAME, CODEFAMILY, ERROR, DATA, LOGIN, COMPUTER, IDENTIFICADOR) ' +
                           'values                 (%d,      "%s",       "%s",  "%s", "NOW", "%s",     "%s",          "%s")',
                           [IdCoode, Literal, CodeFamily, Copy(e.message, 1, 199), wData.ID_LOGIN, wData.ID_COMPUTER, identificador]);
            EXCEPT
              on e: Exception do FerError('LOGWSCOODE ' + e.message);
            END;
        end;
    END;
end;





end.
