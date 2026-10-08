unit DataFarmatools;

interface

uses
  SysUtils, Classes, Diccionari, EnviaSoapMsg, uLkJSON, DB,
  IBCustomDataSet, IBQuery, Windows, Registry, ShellApi, Forms, Dialogs,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  HTTPApp, HTTPProd, CompProd, PagItems, MidProd, DCPcrypt, Sha1, DateUtils;

type
  TwDataFarmatools = class(TDataModule)
    P_Fili_FT: THYSqlProc;
    P_Tract_FT: THYSqlProc;
    P_Diags_FT: THYSqlProc;
    P_Analit_FT: THYSqlProc;
    P_Alergies_FT: THYSqlProc;
    P_Anotacio_FT: THYSqlProc;
    P_CanvisOM_FT: THYSqlProc;
    P_UnitatM_FT: THYSqlProc;
    T_Fili_BU_Alrg_Tot: THYSqlTrigger;
    P_Espasticitat_FT: THYSqlProc;
    P_Sialorrea_FT: THYSqlProc;
    P_EEsofagic_FT: THYSqlProc;
    P_EAnal_FT: THYSqlProc;
    P_Insulina_FT: THYSqlProc;
    P_PROA_FT: THYSqlProc;
    P_EVA_FT: THYSqlProc;
    P_InsulinaAnulaFT: THYSqlProc;
    P_EVesical_FT: THYSqlProc;
    P_MHDA_FT: THYSqlProc;
    insPrescripcio: TIBQuery;
    ws_Prescripcions: TEnviaSoapMsg;
    FT_Prescripcio: TDic;
    FT_Producte: TDic;
    FT_Sequencia: TDic;
    FT_UnitatMesura: TDic;
    FT_ViaAdmin: TDic;
    FT_Periodicitat: TDic;
    http_BaclofenIT: TIdHTTP;
    P_Metges_FT: THYSqlProc;
    P_Antibiotic_FT: THYSqlProc;
    FT_Facturacio: TDic;
    FT_Facturacio_BI: THYSqlTrigger;
    P_FT_Facturacio_Ins: THYSqlProc;
    P_USR_Inicialitza_FT: THYSqlProc;
    P_Tract_Inicialitza_FT: THYSqlProc;
    insProd: TIBQuery;
    updProd: TIBQuery;
    P_InfDades_FT: THYSqlProc;
    P_Tract_CreaDPETIR_FT: THYSqlProc;
    T_Tract_DPE_FT_AI: THYSqlTrigger;
    T_Tract_DPE_FT_AU: THYSqlTrigger;
    P_Unitats_Cancel_FT: THYSqlProc;
    P_Unitats_Init_FT: THYSqlProc;
    P_Canvis_OM: THYSqlProc;
    P_Tract_CreaDPEBCF_FT_Eliminada: THYSqlProc;
    FT_FormaFar: TDic;
    FT_Facturacio_AI: THYSqlTrigger;
    P_PropostaFarma_FT: THYSqlProc;
    FT_Contingencia: TDic;
    AnotaContingencia: THYSqlProc;
  private
    addr_FT: String;
    function openBrowser(url: string): bool;
    function generateToken(username: String; timestamp: Int64): String;
  public
    function Usr_AD(usr: String): String;
    function ObrirPrescripcioFT(n_historia, usr: String): Boolean;
    function ObrirAdministracioFT(c_tractament: Integer; usr: String): Boolean;
    function ObrirPlanillesFT: Boolean;
    function ObrirDispensacioFT(usr: String): Boolean;
    function ConsultaPrescripcions(NHC: String; C_Tractament: Integer; Data: TDateTime; Idioma: Smallint; descripcions: Boolean=False): TStringList;
    function PrescripcioBaclofenIT(NHC: String): TStringList;    
  end;

var
  wDataFarmatools: TwDataFarmatools;

const
    key = 'PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNv';
    apl  = 'GUTTMANN';
    addr_FT_pre = 'gutfarmapre';
    addr_FT_pro = 'gutfarma';

implementation

uses DataBasics, Data, Funciones, DataCurs, DataAnalit, DataCodis, DataMHDA, DataInfermeria,
  DataOMdics;

{$R *.dfm}

{ TwDataFarmatools }


function TwDataFarmatools.Usr_AD(usr: String): String;
var
  email: String;
  i: Smallint;
begin
    email := GutSelect('select EMAIL from METGES where CODI = "%s"', [usr]);
    if (email = '') then FerError('Credencials no vàlides', True);

    Result := '';
    for i := 1 to length(email) do
    begin
        if (email[i] = '@') then break;
        Result := Result + email[i];
    end;
end;


function TwDataFarmatools.openBrowser(url: string): bool;
var
  R: TRegistry;
  cmd: string;
  ret: integer;
begin
    cmd := '';
    R := TRegistry.Create;
    try
      R.RootKey := HKEY_LOCAL_MACHINE;
      try
          if      R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe')  then cmd := R.ReadString('')
          else if R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\firefox.exe') then cmd := R.ReadString('')
          else if R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe')  then cmd := R.ReadString('');
      except
      end;
    finally
      r.free;
    end;

    if (cmd = '') then ret := ShellExecute(Application.Handle, 'open', PChar(url), '', '', SW_SHOWNORMAL)
                  else ret := ShellExecute(Application.Handle, nil, PChar(cmd), PChar(url), '', SW_SHOWNORMAL);

    Result := (ret > 32);
end;


function TwDataFarmatools.generateToken(username: String; timestamp: Int64): String;
var
  Hash: TDCP_sha1;
  Digest: Array[0..31] of Byte;
  i: Integer;
  tmp: String;
begin
    tmp := key + apl + username + addr_FT + IntToStr(timestamp); 

    Hash := TDCP_sha1.Create(nil);
    TRY
      Hash.Init;
      Hash.HashSize := 32;
      Hash.UpdateStr(tmp);
      Hash.Final(Digest);
    FINALLY
      Hash.Free;
    END;

    Result := '';
    for i := 0 to 31 do Result := Result + IntToHex(Digest[i], 2);
    Result := LowerCase(CopyLeft(Result, 40));
end;


function TwDataFarmatools.ObrirPrescripcioFT(n_historia, usr: String): Boolean;
var
  FT_PRO: Boolean;
  url: string;
  caduca: int64;
  usuariAD: String;
  token: string;
begin
    // si encara no henm posat en marxa FT, cridem url de PRE encara que estiguem a REAL
    // Quan activem FT_Prescripcio_ON (uns dies abans de la posada en marxa), podran accedir a FT-PRO per inicialitzar les prescripcions a real
    if wData.ES_PROVA                 then FT_PRO := False
    else if (FT_ON or FT_Prescrip_ON) then FT_PRO := True
    else                                   FT_PRO := False;

    if (not wData.ES_PROVA) and TeDretMetge(usr, [320]) then
    begin
          if AvisoSN('Voleu entrar a l''entorn de PROVES de Farmatools?') then FT_PRO := False
                                                                          else FT_PRO := True;
    end;

    if FT_PRO then begin url := 'http://gutfarma.guttmann.com:8181/pressalud/pressaludE'; addr_FT := addr_FT_pro; end
              else begin url := 'http://gutfarmapre:8080/pressalud/pressaludE';           addr_FT := addr_FT_pre; end;


    if not FT_PRO then ShowMessage('Entrareu a l''entorn de PROVES de FARMATOOLS');

    usuariAD := Usr_AD(usr);
    caduca := DateTimeToUnix(NowServer) + 60;
    token := generateToken(usuariAD, caduca);

    openBrowser(url + Format('?APL=%s' +
                             '&USR=%s' +
                             '&ADDR=%s' +
                             '&TIME=%d' +
                             '&TKN=%s' +
                             '&PAC=%s',
                             [apl, usuariAD, addr_FT, caduca, token, n_historia]));

end;


function TwDataFarmatools.ObrirAdministracioFT(c_tractament: Integer;  usr: String): Boolean;
var
  url: string;
  caduca: int64;
  usuariAD: String;
  token: string;
begin
    // si encara no henm posat en marxa FT, cridem url de PRE encara que estiguem a REAL
    if wData.ES_PROVA or (not FT_ON) then begin url := 'http://gutfarmapre:8080/AdministracionUnidosis/validacion/EntradaAplicacion.action'; addr_FT := addr_FT_pre; end
                                     else begin url := 'http://gutfarma.guttmann.com:8181/AdministracionUnidosis/validacion/EntradaAplicacion.action'; addr_FT := addr_FT_pro; end;

    usuariAD := Usr_AD(usr);
    caduca := DateTimeToUnix(NowServer) + 60;
    token := generateToken(usuariAD, caduca);

    openBrowser(url + Format('?apl=%s' +
                             '&usr=%s' +
                             '&addr=%s' +
                             '&time=%d' +
                             '&tkn=%s' +
                             '&pac=%d',
                             [apl, usuariAD, addr_FT, caduca, token, c_tractament]));
end;


function TwDataFarmatools.ObrirPlanillesFT: Boolean;
var
  url: string;
begin
    // si encara no hem posat en marxa FT, cridem url de PRE encara que estiguem a REAL
    if wData.ES_PROVA or (not FT_ON) then url := 'http://gutfarmapre:8080/BotiquinesPB/botiquinesPB/src/'
                                     else url := 'http://gutfarma.guttmann.com:8181/BotiquinesPB/botiquinesPB/src/';
    openBrowser(url);
end;


function TwDataFarmatools.ObrirDispensacioFT(usr: String): Boolean;
var
  exe: String;
  params: String;
begin
    exe := 'dpe.exe';
    params := Format('usuario=%s&centro=1', [Usr_AD(usr)]);
//    exe := 'E:\Program Files (x86)\Dominion\Farmatools\DPE\dpe.exe ?usuario=GLINTT&numerohc=1&centro=1';  // no es pot passar el numeroHC

    ShellExecute(Application.Handle, 'open', PChar(exe), PChar(params), '', SW_NORMAL);
end;


function TwDataFarmatools.ConsultaPrescripcions(NHC: String; C_Tractament: Integer; Data: TDateTime; Idioma: Smallint; descripcions: Boolean=False): TStringList; // Result = [Miisatge, Medicació]
var
  json_e, json_s: TlkJSONobject;
  jsonStr: string;
  row: TlkJSONbase;
  i: integer;
  titol: String;
  Medicacio: TStrings;
  c_prod, n_prod, dosi, c_um, c_via, n_via, c_perio, n_perio, c_seque, n_seque, SP, n_SP, obs_SP, obs, c_freq, n_freq, c_irr, observacions, data_i, metg_p, data_p: String;
begin

    if wData.ES_PROVA then ws_Prescripcions.url := 'http://mirth-pre.guttmann.com:9650/services/prescripciones'
                      else ws_Prescripcions.url := 'http://mirth-pro.guttmann.com:9650/services/prescripciones';

    Result := TStringList.Create;
    json_e := TlkJSONobject.Create;
    TRY
      json_e.Add('nhc', NHC);
      json_e.Add('episodio', IntToStr(C_Tractament));
      json_e.Add('fecha', FormatDateTime('dd/mm/yyyy', Data));

      ws_Prescripcions.Prepare;
      ws_Prescripcions.SetParam('json', TlkJSON.GenerateText(json_e));
      ws_Prescripcions.Send;

    FINALLY
      json_e.Free;
    END;

    if (ws_Prescripcions.ErrorCode <> 0) then
    begin
        Result.Add('ERROR: no s''ha pogut recuperar la medicació de Farmatools.' + ws_Prescripcions.ErrorMessage);  // Resutl[0]
        Result.Add('');                                                                                             // Resutl[1]
    end
    else begin
        TRY
          jsonStr := UTF8Encode(ws_Prescripcions.GetValue('return'));
          json_s := TlkJSON.ParseText(jsonStr) as TlkJSONobject;

          if (CopyLeft(UpperCase(json_s.Field['respuesta'].Value), 5) <> 'OK') then
          begin
              Result.Add('ERROR: no s''ha pogut recuperar la medicació de Farmatools.' + ws_Prescripcions.ErrorMessage); // Resutl[0]
              Result.Add('');                                                                                            // Resutl[1]
              Exit;  // si passa això, haurien de retornar errorcode <> 0, però per si un cas
          end;

          titol := Justifica('Medicament ', -41) +
                   Justifica('Dosi '      ,   9) +
                   Justifica('UM '        ,  -6) +
                   Justifica('Via'        ,  -6) +
                   Justifica('Freqüència' , -18) +
                   'Observacions';

          Medicacio := TStringList.Create;
          TRY
            Medicacio.Text := '';

            // Eliminem la medicació a data x i la tornarem a inserir per si hi ha hagut canvis
            GutExecute('delete from FT_PRESCRIPCIO where C_TRACTAMENT = %d and DATA = "%s" and ORIGEN = 2' ,
                       [C_Tractament, FormatDateTime('dd.mm.yyyy', Data)], False);

            for i:=0 to json_s.Field['resultados'].Count-1 do
            begin
                row := json_s.Field['resultados'].Child[i];

                c_prod := row.Field['codigo'].Value;
                n_prod := CopyLeft(Trim(row.Field['denominaci'].Value), 40);
                dosi   := Trim(CopyLeft(Trim(row.Field['dosis_pa'].Value), 9));
                c_um   := CopyLeft(Trim(row.Field['unidad_med'].Value), 6);
                if (c_um = '') and (dosi = '0') then dosi := '';

                c_via  := CopyLeft(Trim(row.Field['cod_via'].Value), 6);
                n_via  := CopyLeft(Trim(row.Field['descripcio'].Value), 20);
                c_perio := CopyLeft(Trim(row.Field['cod_pauta'].Value), 6);     // periodicitat  (8)
                n_perio := Trim(row.Field['texto_pauta'].Value);                //     "         (30)
                c_seque := CopyLeft(Trim(row.Field['cod_variante'].Value), 8);  // seqüència horària (8)
                n_seque := Trim(row.Field['texto_variante'].Value);             //    "              (30) - hi anirà el text de la pauta irregular en cas de "IRR"
                SP      := Trim(row.Field['Si_precisa'].Value);                 // check "si precisa"
                obs_SP  := Trim(row.Field['obs_sp'].Value);                     // observacions de pautes Si precisa (250)

                data_i := Trim(row.Field['fecha_inicio'].Value);
                metg_p := Trim(row.Field['login_usu'].Value);
                data_p := Trim(row.Field['fecha_pres'].Value);
                {+
                atc    := Trim(row.Field['codigo_atc'].Value);
                n_atc  := Trim(row.Field['desc_atc'].Value);
                +}
                obs    := Trim(row.Field['observaciones'].Value);

                // No mostrem informació innecessària (diari sempre porta una seqüència horària)
                if (AnsiLowerCase(c_perio) = 'diari') then c_perio := '';

                // No mostrem informació redundant
                if (AnsiLowerCase(n_perio) = 'administració única') or (AnsiLowerCase(n_perio) = 'diari') then n_perio := '';

                // Composem la freqüència a partir de la pauta, seqüència, SP, info irregular, etc.
                if (SP = 'S') then
                begin
                    if (AnsiLowerCase(c_perio) = 'si cal') then begin c_perio := ''; n_perio := ''; end;
                    if (AnsiLowerCase(c_seque) = 'si cal') then begin c_seque := ''; n_seque := ''; end;
                end;

                if (c_perio = 'IRG') then
                begin
                    c_irr   := n_seque + '. ';
                    c_seque := '';
                end
                else c_irr := '';

                c_freq := Trim(c_perio + ' ' + c_seque) + ' ';
                if      (n_perio = '') then n_freq := Trim(n_seque)
                else if (n_seque = '') then n_freq := Trim(n_perio)
                                       else n_freq := Trim(n_perio + ', ' + n_seque);
                if (n_freq <> '') then n_freq := n_freq + '. ';


                if (SP = 'S') then begin SP := 'SP '; n_SP := 'Si precisa. ' end
                              else begin SP := '';    n_SP := ''; end;

                // Composem les observacions
                if   (obs_sp = '') then observacions := obs
                else if (obs = '') then observacions := obs_sp
                                   else observacions := obs_sp + ', ' + obs;
                if (observacions <> '') then observacions := observacions + '.';


                // Mentre no hàgim desenvolupat estructura per muntar-ho estructuradament, només retornem el text tal qual
                {+
                // Inserim registres a una taula per poder muntar el text parametritzat i incorporar-hi les traduccions segons l'idioma

                // Inserim o actualitzem el producte
                if (0 = GutSelect('select Count(*) from FT_PRODUCTES where C_PRODUCTE = %s', [c_prod])) then
                begin
                    insProd.ParamByName('c_prod').AsString := c_prod;
                    insProd.ParamByName('n_prod').AsString := n_prod;
                    insProd.ExecSQL;
                end
                else begin
                    updProd.ParamByName('c_prod').AsString := c_prod;
                    updProd.ParamByName('n_prod').AsString := n_prod;
                    updProd.ExecSQL;
                end;

                // Inserim la prescripció
                insPrescripcio.ParamByName('c_prescripcio').AsInteger := id_prescripcio;
                insPrescripcio.ParamByName('c_historia').AsString := NHC;
                insPrescripcio.ParamByName('c_tractament').AsInteger := C_Tractament;
                insPrescripcio.ParamByName('c_prod').AsString := c_prod;
                insPrescripcio.ParamByName('dosi').AsFloat := row.Field['dosis_pa'].Value;
                insPrescripcio.ParamByName('c_um').AsString := row.Field['unidad_med'].Value;
                insPrescripcio.ParamByName('c_via').AsString := row.Field['cod_via'].Value;
                insPrescripcio.ParamByName('c_periodicitat').AsString := row.Field['cod_pauta'].Value;
                insPrescripcio.ParamByName('c_sequencia').AsString := row.Field['cod_variante'].Value;
//-                insPrescripcio.ParamByName('data_inici').AsDate := row.Field['fecha_inicio'].Value;      // no ens cal per als bolcats de medicació (sí per als antibiòtics)
                insPrescripcio.ParamByName('origen').AsInteger := 2;    // 2 = consulta medicació a data x
                insPrescripcio.ParamByName('data').AsDateTime := Data;  // data de la consulta 'Medicació a "Data" x'

                insPrescripcio.ExecSQL;
                +}

                if not descripcions and (titol <> '') then
                begin
                    Medicacio.Add(titol);
                    Medicacio.Add(FillChar('-', 100));
                    titol := '';
                end;

                if descripcions then Medicacio.Add(Upper1a(Trim(AnsiLowerCase(n_prod)) + ', ' + dosi + ' ' + c_um + '. ' +
                                                   n_via + '. ' + n_SP + n_freq + Upper1a(observacions)))
                                else Medicacio.Add(Justifica(Format('%s ', [AnsiLowerCase(n_prod)]), -41) +
                                                   Justifica(Format('%s ', [dosi]),     9) +
                                                   Justifica(Format('%s ', [c_um]),    -6) +
                                                   Justifica(Format('%s ', [c_via]),   -6) +
                                                   Justifica(Format('%s ', [SP]),      -4) +
                                                   Justifica(Format('%s ', [c_freq]), -14) +
                                                   c_irr + Upper1a(observacions));
            end;

            if (i = 0) then Result.Add('Pacient sense ordres mèdiques')  // Resutl[0]
                       else Result.Add('');                              // Resutl[0]

            Result.Add(Medicacio.Text); // Resutl[1]

          FINALLY
            Medicacio.Free;
          END;

        FINALLY
          json_s.Free;
        END;
    end;
end;


function TwDataFarmatools.PrescripcioBaclofenIT(NHC: String): TStringList;
var
  entrada: TStrings;
  resposta: String;
  json: TlkJSONobject;
  row: TlkJSONbase;
  concentracio, ampolles: Integer;
  metge: String;
begin
    Result  := TStringList.Create;
    entrada := TStringList.Create;

    TRY
      entrada.Add(Format('{"nhc": "%s"}', [NHC]));
      // si encara no henm posat en marxa FT, cridem url de PRE encara que estiguem a REAL
      if wData.ES_PROVA or (not FT_ON) then resposta := http_BaclofenIT.Post('http://mirth-pre.guttmann.com:9602/baclofeno', entrada)
                                       else resposta := http_BaclofenIT.Post('http://mirth-pro.guttmann.com:9602/baclofeno', entrada);
    FINALLY
      entrada.Free;
    END;

    TRY
      json := TlkJSON.ParseText(resposta) as TlkJSONobject;
      TRY
        if      (json.Field['respuesta'].Value <> 'OK') then Result.Add('ERROR: no s''ha pogut recuperar la prescripció de Farmatools.')  // Result[0]
        else if (json.Field['resultados'].Count = 0)    then Result.Add('No hi ha cap prescripció de Baclofèn intratecal vigent.')        // Result[0]
        else begin
            concentracio := json.Field['resultados'].Child[0].Field['concentracio'].Value;
            ampolles     := json.Field['resultados'].Child[0].Field['quantitat'].Value;
            metge        := json.Field['resultados'].Child[0].Field['metge'].Value;

            Result.Add('');                      // Result[0]
            Result.Add(IntToStr(concentracio));  // Result[1]
            Result.Add(IntToStr(ampolles));      // Result[2]
            Result.Add(metge);                   // Result[3]
        end;
      FINALLY
        json.Free;
      END;
    EXCEPT
      on e: Exception do
      begin
        Result.Add('ERROR: no s''ha pogut recuperar la prescripció de Farmatools.' + NLine + e.Message);  // Resutl[0]
      end;
    END;
end;


end.



