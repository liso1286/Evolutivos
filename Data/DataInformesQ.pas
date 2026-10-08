unit DataInformesQ;

interface

uses
  Windows, ShellApi, Dialogs, SysUtils, Classes, Controls, DB, IBCustomDataSet, IBQuery, Word_TLB_2010, Variants,
  Data, HYCalendari, Clipbrd, ActiveX, DateUtils, DBTables, IdIOHandler, 
  IdIOHandlerSocket, IdSSLOpenSSL, IdBaseComponent, IdComponent, IdMultipartFormData,
  IdTCPConnection, IdTCPClient, IdHTTP, ExtCtrls, uLkJSON, winhttp, Forms, EncdDecd;

const
  HOST_VIDSIGNER_PRE = 'https://pre-vidsignercloud.validatedid.com/api/v2.2';
  HOST_VIDSIGNER_PRO = 'https://vidsignercloud.validatedid.com/api/v2.2';

type
  TwDataInformesQ = class(TDataModule)
    qInforme: TIBQuery;
    qPlantilles: TIBQuery;
    qTags: TIBQuery;
    qValidacio: TIBQuery;
    qTitol: TIBQuery;
    qAutors: TIBQuery;
    dsInforme: TDataSource;
    updInfAlta: TIBQuery;
    qBolcatge: TIBQuery;
    updInformesLin: TIBQuery;
    qTractAlta: TIBQuery;
    updTractAlta: TIBQuery;
    insInformesLin: TIBQuery;
    qUltimaPublicacioHC3: TIBQuery;
    qUltimaPublicacioAPP: TIBQuery;
    http: TIdHTTP;
    ssl: TIdSSLIOHandlerSocket;
    qDades: TQuery;
    qDadesHORA_PREINGRES: TStringField;
    qDadesC_HISTORIA: TIntegerField;
    qDadesNOM: TStringField;
    qDadesCOGNOM1: TStringField;
    qDadesCOGNOM2: TStringField;
    qDocID: TIBQuery;
  private
    t_informe_p, nom_fitxer: String;
    MetgeValidador: String;
    function  DemanaIdioma(t_informe: String; t_plantilla: Integer): Smallint;
    procedure EliminaLogoGenCat;
    procedure OmpleTags(fase: Smallint; C_Plantilla: Integer; C_Usuari: String; data_i: TDateTime=0; data_f: TDateTime=0);
    function  ReplaceEverywhere(const SearchText, ReplaceWith: String; insereix: Boolean): Boolean;
    function  ReplaceTags(Range: OleVariant; const SearchText, ReplaceWith: String; insereix: Boolean=False; EliminaApartatSiBuit: Boolean=False): Boolean;
    procedure NetejaEspaisInicials(Range: OleVariant);  // en desar, posa un espai després de cada salt de línia
    procedure BolcaAPlantillaFinal(ID_Informe: Integer);
    procedure ProcessarRejected(DocID, PathDocuments, NomDoc: String; Id_Informe: Integer);
  public
    WordApp: _Application;
    WordDoc: _Document;
    WordDocD: _Document;
    CurrentRange: Range;

    ARA: TDateTime;
    AVUI: TDate;

    procedure LocalitzaInforme(ID_Informe: Integer);
    function  TeItemsInforme(Tipus: String): Boolean;
    {$IFDEF CURS}
    procedure ObreItemsInforme(ID_Informe: Integer);
    {$ENDIF}
    function  DeterminaTipusPlantillaInforme: Integer;

    function  InformePath(ID_Informe: Integer; AmbNom: Boolean=True; AmbSubcarpetaFi: Boolean=True): String;

    function  CreaInforme(ID_Informe: Integer; C_Usuari: String; Mostra: Boolean=True; dia: TDateTime=0; NoValidisAuto: Boolean=False): Boolean;
    function  ObreInforme(Arxiu: String; NomesLectura, Mostra: Boolean; ID_Informe: Integer=0; C_Usuari: String=''; fase: Smallint=0): Boolean;

    procedure InsereixRealitzacio(ID_Informe: Integer; Usr: TMetge);

    {$IFDEF INFORMES}
    procedure ValidaInforme(ID_Informe: Integer; Usr: TMetge);
    procedure InsereixSignatura(ID_Informe: Integer; Versio: Smallint; Definitiva: Boolean; Validador: TMetge);
    procedure BolcaAInterbase(arxiu: String; Usr: TMetge; estat_infalta: Smallint);
    {$ENDIF}
    {$IFDEF CURS}
    procedure PosaDiagnosticAlta(c_tractament: Integer);
    function  ContinuaProces(AltaActiva: TTractament; Usr: TMetge): Smallint;
    function  PreguntaDispositiu(Id_Informe: Integer; Automatic: Boolean=True): String;    
    {$ENDIF}

    function  GetToken: String;
    procedure SaveBase64ToPDF(const Base64Data, FilePath: string);
    function  EncodeStringBase64(const S: string): string;
    function  DecodeStringBase64(const S: string): string;
    function  FileToBase64(const FileName: string): string;
    function  FileFromBase64(const FileName: string): string;
    function  GetVIDSignerToken(const ClientID, ClientSecret, UserName, Password: string): string;
    function  GetDispositiusfromVIDSigner(Token: String): String;
    procedure SendDocumentToVIDSigner(const Token, FilePath, Id_Informe: String; Signant: TSignant);
    procedure SignaDocument(Id_Informe, DocumentPdf: String; Signant: TSignant);
    function  GetDocumentFromVIDSigner(Token, DocID, Historia, DesDe: String; Id_Informe: Integer): Boolean;
    function  GetDocumentReportFromVIDSigner(Token, DocID, Historia: String; Id_Informe: Integer): Boolean;
    procedure DeleteDocumentFromVIDSigner(Token, DocID, Accio: String; Id_Informe: Integer);
    function  DescarregaPdf(DocID, Historia, DesDe: String; Id_Informe: Integer): Boolean;
    function  DescarregaReportEvidencies(DocID, Historia: String; Id_Informe: Integer): Boolean;
    function  DesarPdfBase64(Path, DocContent, Historia, FileName: String): String;
    procedure EsborraPdf(DocID, Accio: String; Id_Informe: Integer);
    function  GetDocumentsList(Token, Option: String): TlkJSONlist;
    procedure FinalitzaList(DesDe: String; DocumentsList: TlkJSONlist);
    procedure FinalitzaInforme(ID_Informe: Integer; C_Usuari: String);
    procedure AnulaInforme(ID_Informe: Integer; estatAnterior, nouestat: Smallint; Usr: String; Comentari: String);
    function  DesAnulaInforme(ID_Informe: Integer; Usr: String): Smallint;
    procedure EliminaInforme(ID_Informe: Integer; solicitud: Boolean);

    procedure ArxivaInforme(ID_Informe: Integer; C_Usuari: String);
    procedure DesArxivaInforme(ID_Informe: Integer; C_Usuari: String);
    procedure TancaWord(GuardaCanvis: Boolean);
  end;

var
  wDataInformesQ: TwDataInformesQ;

implementation

uses Funciones, DataImatges, utili16, {$IFDEF CURS} DataVerHis, FichaVerHis, FuncionsCurs, DialegConfirmaProces, DataPerfilsNRQ, InputBoxBVG, {$ENDIF} Funcions;

{$R *.dfm}

{ TwDataInformesQ }

procedure TwDataInformesQ.LocalitzaInforme(ID_Informe: Integer);
begin
    qInforme.Close;
    qInforme.ParamByName('id_informe').AsInteger := ID_Informe;
    qInforme.Open;
end;


function TwDataInformesQ.TeItemsInforme(Tipus: String): Boolean;
begin
    Result := (0 < GutSelect('select count(*) from INFORMES_ITEMS where C_TIPUSINFORME = "%s"', [Tipus]));
end;

{$IFDEF CURS}
procedure TwDataInformesQ.ObreItemsInforme(ID_Informe: Integer);
begin
    LocalitzaInforme(ID_Informe);  // Això obre la qInforme

    // AHO: cal que l'ECB estigui introduït per poder determina el tipus de plantilla a utilizar (= tipusECB):
    if (qInforme.FieldByName('C_Tipus').AsString = 'AHO') and (qInforme.FieldByName('TipusECB').AsInteger = 0)
    then begin
        FerError('PER PODER FER AQUEST INFORME HEU DE COMPLIMENTAR PRIMER L''ECB');
        wDataVerHis.F.Estado := 71;
    end
    else wDataVerHis.F.Estado := 190;

    Refrescar;
end;
{$ENDIF}


function TwDataInformesQ.DeterminaTipusPlantillaInforme: Integer;
var
  tipus: String;
  Tract: TTractament;
  qTipusPlantilla: TIBQuery;
  p_tipus: String;
begin
    // Tipus de plantilla diferents en alguns casos

    // Potser ja el tenim determinat d'alguna edició anterior o del formulari d'ítems
    if not qInforme.FieldByName('Tipus_Plantilla').IsNull then 
    begin
        Result := qInforme.FieldByName('Tipus_Plantilla').AsInteger;
        Exit;
    end;

    tipus := qInforme.FieldByName('C_Tipus').AsString;

    // Si no, ho fem ara
    if (Result = 0) then
    begin
        // Per a informe d'alta hospitalària, el tipus de plantilla ve determinat pel tipus d'ECB
        if (tipus = 'AHO') then Result := qInforme.FieldByName('TipusECB').AsInteger

        // Per a informes de Consula Externa de GBCN, tenim una plantilla diferent si és 1a visita de metge a pacient internacional
        else if (tipus = 'CEB') then
        begin
            Tract := OmpleTractament(qInforme.FieldByName('C_Tractament').AsInteger);

            if TeDretPresta(Tract.C_Prestacio, [246]) and (Tract.C_CentreFac = '50') then Result := 3
                                                                                     else Result := 2;
        end

        // Per a informes de Consula Externa de l'hospital, tenim una plantilla diferent si és 1a visita o successiva
        else if (tipus = 'CEX') then
        begin
            Tract := OmpleTractament(qInforme.FieldByName('C_Tractament').AsInteger);

            if TeDretPresta(Tract.C_Prestacio, [258]) then Result := 3
                                                      else Result := 2;
        end

        // Si hi ha diferents tipus de plantilla (tipusECB), les mostrem perquè seleccionin
        else begin
            qTipusPlantilla := TIBQuery.Create(Application);
            TRY
              qTipusPlantilla.Database := wData.IBGuttmann;
              qTipusPlantilla.Transaction := wData.IBTransGutt;
              qTipusPlantilla.SQL.Add('select distinct N_PLANTILLA, TIPUSECB');
              qTipusPlantilla.SQL.Add('from INFORMES_PLANTILLES');
              qTipusPlantilla.SQL.Add(Format('where C_TIPUS = "%s" and BAIXA = "N"', [tipus]));
              qTipusPlantilla.Open;
              qTipusPlantilla.Fetchall;
              qTipusPlantilla.First;

              if (tipus = 'CNI') then p_tipus := 'de consentiment informat'
                                 else p_tipus := 'd''informe';

              if (qTipusPlantilla.RecordCount > 1)
              then AvisoListaBdSinCancel(Format('Escolliu el tipus %s que voleu fer', [p_tipus]), qTipusPlantilla, -1, 1);


              {$IFDEF CURS}
              // CNI: Per fer el de Contencions físiques, hi ha d'haver una Ordre a Infermeria on el metge hagi indicat que s'ha informat el pacient
              // (CONTENCIO "S": informat; "s": no s'ha pogut informar)
              if  (tipus = 'CNI')
              and (qTipusPlantilla.FieldByName('TipusECB').AsInteger = 5)
              and (0 = GutSelect('select Count(*) from ORDRESINFERMERIA where C_TRACTAMENT = %d and C_ESTAT = "V" and CONTENCIO = "S"',
                                 [qInforme.FieldByName('C_Tractament').AsInteger]))
              then begin
                   FerError('No hi ha PRESCRIPCIÓ MÈDICA DE CONTENCIÓ FÍSICA on s''indiqui que el pacient (familiar/representant legal) ha estat informat.' + NLine + NLine +
                            'Aviseu el metge perquè la registri.');
                   EliminaInforme(qInforme.FieldByName('ID_Informe').AsInteger, True);
                   wDataVerHis.F.NoPreguntar := True;
                   wDataVerHis.F.TancarExecute(Self);
                   Abort;  // (si fem "exit" sortirà de la funció però seguirà amb la funció d'on venia) 
              end;
              {$ENDIF}

              Result := qTipusPlantilla.FieldByName('TipusECB').AsInteger;  // si no hi ha cap plantilla o tipusECB és null, això retorna 0
              qTipusPlantilla.Close;
            FINALLY
              qTipusPlantilla.Free;
            END;
        end;
    end;
end;


function TwDataInformesQ.InformePath(ID_Informe: Integer; AmbNom: Boolean=True; AmbSubcarpetaFi: Boolean=True): String;
var
  ruta: String;
begin
    LocalitzaInforme(ID_Informe);

    CASE qInforme.FieldByName('C_Estat').AsInteger OF
      // anul·lats
      9: ruta := GutSelect('select RUTA from DIRECTORIS where NOM = "INFORMES_ANULATS"', []);
      // finalitzats
      10: if AmbSubcarpetaFi then ruta := IdentificaDirectori(qInforme.FieldByName('Ruta_Fi').AsString, qInforme.FieldByName('C_Historia').AsString)
                             else ruta := qInforme.FieldByName('Ruta_Fi').AsString;
      // en curs
      else ruta := qInforme.FieldByName('Ruta_Inici').AsString;
    END;

    if ambNom then
    begin
        if (qInforme.FieldByName('Arxiu').AsString = '') then Result := ''
                                                         else Result := ConcatFilePath(ruta, qInforme.FieldByName('Arxiu').AsString);
    end
    else Result := ruta;
end;


function TwDataInformesQ.CreaInforme(ID_Informe: Integer; C_Usuari: String; Mostra: Boolean=True; dia: TDateTime=0; NoValidisAuto: Boolean=False): Boolean;
var
  t_plantilla: Integer;
  idioma, i: Smallint;
  usuari_nom, n_historia: String;
  nou_estat: Smallint;
  RutaPlantilla, NomPlantilla, DocPlantilla, RutaInforme, NomInforme, DocInforme: String;
  pNomDoc, pFileFormat, pCompMode, pFalse, pGuardarCanvis, pPassword: OleVariant;
  data_inf, data_i, data_f: TDateTime;
begin
    Result := False;

    TeDretAcces([-196], True);  // si té el dret A196, vol dir que no té accés a Word -> donem error

    LocalitzaInforme(ID_Informe);

    // Determinem (o demanem, si no podem concretar) el tipus de plantilla que s'ha d'utilitzar
    t_plantilla := DeterminaTipusPlantillaInforme;

    // Demanem idioma, en funció del tipus de plantilla seleccionat (a no ser que ja el tinguem del formulari d'ítems previ)
    idioma := qInforme.FieldByName('Idioma').AsInteger;
    if (idioma = 0)  then idioma := DemanaIdioma(qInforme.FieldByName('C_Tipus').AsString, t_plantilla)
                     else t_informe_p := qInforme.FieldByName('C_Tipus').AsString;
    if (idioma = -1) then Exit;

    // Amb tot això, ja tenim la plantilla determinada
    qPlantilles.Close;
    qPlantilles.ParamByName('c_tipus' ).AsString  := t_informe_p;
    qPlantilles.ParamByName('idioma'  ).AsInteger := idioma;
    qPlantilles.ParamByName('tipusecb').AsInteger := t_plantilla;
    qPlantilles.Open;
    qPlantilles.FetchAll;                  // Només hi hauria d'haver un registre!
    if (qPlantilles.RecordCount <> 1) then begin FerError('NO S''HA POGUT DETERMINAR LA PLANTILLA' + NLine + 'AVISEU INFORMÀTICA', False); Exit; end;

    RutaPlantilla := GutSelect('select RUTA from DIRECTORIS where NOM = "INFORMES_PLANTILLES"', []);
    NomPlantilla  := qPlantilles.FieldByName('Arxiu').AsString;
    DocPlantilla  := ConcatFilePath(RutaPlantilla, NomPlantilla);

    if (NomPlantilla = '') then FerError('Nom de la plantilla no trobat. Aviseu Informàtica.', True);

    WaitON('Generant informe . . .');

    TRY
      // Obrim la plantilla
      ObreInforme(DocPlantilla, True, wData.ES_PROVA);

      // Si el pacient no és SCS, eliminarem el logo de GenCat
      if (qInforme.FieldByName('C_CentreFac').AsString <> '04') then EliminaLogoGencat;

      // Omplim els TAGS de la fase 1
      // Per als EMB passem interval de dates en el qual cal buscar la informació (del dia 10 del mes de treball al dia 10 del mes següent - no inclòs)
      if (qInforme.FieldByName('C_Tipus').AsString = 'EMB') then
      begin
          data_i := dia;
          data_f := SumarMes(dia, 1);
      end
      else begin data_i := 0; data_f := 0; end;

      OmpleTags(1, qPlantilles.FieldByName('C_Plantilla').AsInteger, C_Usuari, data_i, data_f);

      // Busquem la carpeta on s'ha de guardar l'informe generat:
      RutaInforme := qInforme.FieldByName('Ruta_Inici').AsString;

      // Composem el nom de l'informe
      // (En funció del paràmetre Data_Arxiu, agafem la data del tractament o la de creació de l'informe)
      if (qInforme.FieldByName('Data_Arxiu').AsInteger = 2)
      then data_inf := GutSelect('select DATA_INGRES from TRACTAMENTS where C_TRACTAMENT = %d', [qInforme.FieldByName('C_Tractament').AsInteger])
      else data_inf := DateServer;

      // Afegim al nom de l'arxiu el codi de l'usuari a qui se sol·licita l'informe, si n'hi ha (per als conjunts, no se sol·licita a ningú en concret).
      if (qInforme.FieldByName('C_Usuari').AsString = '') then usuari_nom := ''
                                                          else usuari_nom := '_' + Trim(qInforme.FieldByName('C_Usuari').AsString);

      n_historia := '00000';
      for i := 5 - Length(qInforme.FieldByName('C_Historia').AsString) + 1 to 5
      do n_historia[i] := qInforme.FieldByName('C_Historia').AsString[Length(qInforme.FieldByName('C_Historia').AsString) - 5 + i];

      NomInforme  := n_historia +
                     '_' + FormatDateTime('dd-mm-yyyy', data_inf) +
                     '_' + qInforme.FieldByName('C_Tipus').AsString +
                     usuari_nom +
                     '-' + IntToStr(ID_Informe) + '.docx';

      // Guardem l'informe generat
      DocInforme  := ConcatFilePath(RutaInforme, NomInforme);
      pNomDoc     := DocInforme;
      pFileFormat := wdFormatXMLDocument;   // .docx

      pCompMode   := 15;

      WordDoc.SaveAs2(pNomDoc, pFileFormat, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, pCompMode);

      // Tanquem el document obert amb la plantilla (sense guardar els canvis)
      WordDoc.Close(pFalse, EmptyParam, EmptyParam);
      pGuardarCanvis := False;
      WordApp.Quit(pGuardarCanvis, EmptyParam, EmptyParam);

      TRY
        // Guardem el codi de plantilla i el nom de l'arxiu (sense la ruta)
        // Si l'informe encara no s'havia iniciat o estaven omplint ítems, també li canviem l'estat a "en edició"
        if (qInforme.FieldByName('C_Estat').AsInteger < 2)
        then GutExecute('update INFORMES set C_ESTAT = %d, ARXIU = "%s", C_PLANTILLA = %d where ID_INFORME = %d',
                        [2, NomInforme, qPlantilles.FieldByName('C_Plantilla').AsInteger, ID_Informe])
        // Altrament, el deixem com està (vol dir que l'havien marcat com a fet des del formulari d'ítems,
        // i pot ser que estigui en estat 3-pendent de corregir o 4-pendent de validar -en cas que no s'hagi de corregir).
        else GutExecute('update INFORMES set ARXIU = "%s", C_PLANTILLA = %d where ID_INFORME = %d',
                        [NomInforme, qPlantilles.FieldByName('C_Plantilla').AsInteger, ID_Informe]);
      EXCEPT
        // Si no hem pogut actualitzar l'estat i el nom de l'informe, no l'obrim (que ens avisin i l'eliminarem perquè es torni a generar)
        on e: Exception do
        begin
            FerError('Hi ha hagut un error en actualitzar les dades de la sol·licitud: ' + NLine +
                     e.Message + NLine + 'AVISEU A INFORMÀTICA');
            wData.IBTransGutt.RollbackRetaining;
            WaitOff;
            Exit;
        end;
      END;

      {$IFDEF INFORMES}
      // TODO no m'agrada fer-ho així
      // Si el metge validador és diferent del creador, el passem a ValidaInforme
      if (qInforme.FieldByName('C_TIPUS').AsString = 'CNI') and (qInforme.FieldByName('TIPUS_PLANTILLA').AsInteger = 5) and (MetgeValidador <> '')
      then C_Usuari := MetgeValidador;

      // Si l'informe s'ha de validar automàticament i no estem forçant que no ho faci (per als EMB manuals!), ho fem.
      // Altrament, obrim el nou document que hem guardat i el mostrem si cal
      if (qInforme.FieldByName('ValidacioAuto').AsString = 'S') and (not NoValidisAuto) then
      begin
          ValidaInforme(ID_Informe, BuscaMetge(C_Usuari));
          Result := True;
          {$IFDEF CURS}
          // Si estem al Curs Clínic i tenim el FichaVerHis obert, cal cridar Refrescar (per si ha canviat l'Estado)
          if Assigned(wDataVerHis.F) then Refrescar;
          {$ENDIF}
      end
      else Result := ObreInforme(DocInforme, False, Mostra, ID_Informe, C_Usuari);
      {$ENDIF}

      qTags.Close;
      qPlantilles.Close;
      qInforme.Close;
      qInforme.Open;
    FINALLY
      WaitOff;
    END;
end;


function TwDataInformesQ.DemanaIdioma(t_informe: String; t_plantilla: Integer): Smallint;
var
  qIdiomes: TIBQuery;
begin
    Result := -1;

    // Demanem idioma, en funció de les plantilles possibles:
    qIdiomes := TIBQuery.Create(wDataInformesQ);
    TRY
      qIdiomes.Database := wData.IBGuttmann;
      qIdiomes.Transaction := wData.IBTransGutt;
      t_informe_p := t_informe;
      qIdiomes.SQL.Add('select distinct I.IDIOMA, C.N_CODI');
      qIdiomes.SQL.Add('from INFORMES_PLANTILLES I');
      qIdiomes.SQL.Add('join CODICAMPS C on C.TIPUSCODI = "IDIOMA" and C.C_CODI = I.IDIOMA');
      qIdiomes.SQL.Add(Format('where I.C_TIPUS = "%s" and (I.TIPUSECB = %d or I.TIPUSECB is Null) and I.BAIXA = "N"', [t_informe, t_plantilla]));
      qIdiomes.SQL.Add('order by C.C_CODI');
      qIdiomes.Open;
      qIdiomes.FetchAll;

      // Si no trobem plantilla, agafarem la genèrica
      if (qIdiomes.RecordCount = 0) then
      begin
         qIdiomes.Close;
         t_informe_p := '---';
         qIdiomes.SQL[3] := 'where I.C_TIPUS = "---" and I.BAIXA = "N"';
         qIdiomes.Open;
         qIdiomes.Last;
      end;

      qIdiomes.First;
      if (qIdiomes.RecordCount > 1)
      and (-1 = AvisoListaBd('Escolliu l''idioma en què s''ha de fer l''informe', qIdiomes, -1, 2)) then Exit;

      Result := qIdiomes.FieldByName('Idioma').AsInteger;

      qIdiomes.Close;
    FINALLY
      qIdiomes.Free;
    END;
end;


function TwDataInformesQ.ObreInforme(Arxiu: String; NomesLectura, Mostra: Boolean; ID_Informe: Integer=0; C_Usuari: String=''; fase: Smallint=0): Boolean;
var
  pNomDoc: OleVariant;
  pNomesLectura: OleVariant;
begin
    Result := False;

    // Si s'ha marcat com a FET des del formulari d'ítems, encara no existeix => el creem
    if (Arxiu = '') then
    begin
        CreaInforme(ID_Informe, C_Usuari, Mostra);
        Exit;
    end;
    
    TeDretAcces([-196], True);  // si té el dret A196, vol dir que no té accés a Word -> donem error

    TRY
      WaitON('Obrint informe . . .');
      WordApp := CoWordApplication.Create;
      pNomDoc := arxiu;
      pNomesLectura := nomeslectura;
      WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                        EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

      if (WordDoc = Nil) then FerError('No s''ha trobat l''arxiu' + NLine + arxiu, True);

      Result := True;

      // Omplim els TAGS de la fase 3 si n'hi ha a la plantilla
      if  (fase = 3)
      and (0 < GutSelect('select COUNT(*) from INFORMES_TAGS where C_TIPUS = "%s" and FASE = %d',
                         [qInforme.FieldByName('C_Tipus').AsString, fase]))
      then OmpleTags(fase, qInforme.FieldByName('C_Plantilla').AsInteger, C_Usuari);

      WordApp.Visible := mostra;

      // Si obrim l'informe en mode edició, ho registrem
      if mostra and (not NomesLectura) and (ID_Informe <> 0)
      then GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA) ' +
                      'values (%d, 12, "%s", "NOW")',
                      [ID_Informe, C_Usuari]);

    FINALLY
      WaitOff;
    END;
end;


procedure TwDataInformesQ.EliminaLogoGenCat;
var
  t_proteccio: TOleEnum;
  pType, pFalse, pPassword,  
  Sections, Section, Header, Shapes, Shape: OleVariant;
  Headers: array[1..3] of Integer;
  i, j, k: Integer;
begin
    // Desprotegim el document per poder eliminar logos (si estava protegit)
    t_proteccio := WordDoc.ProtectionType;
    if (t_proteccio <> wdNoProtection) then
    begin
        pPassword := 'asincrono';
        WordDoc.Unprotect(pPassword);
    end;

    // Accedeix a les seccions
    Sections := WordDoc.Sections;

    for i := 1 to Sections.Count do
    begin
        Section := Sections.Item(i);

        Headers[1] := wdHeaderFooterPrimary;
        Headers[2] := wdHeaderFooterFirstPage;
        Headers[3] := wdHeaderFooterEvenPages;

        // Recorre les capçaleres
        for k := 1 to Length(Headers) do
        begin
            Header := Sections.Item(i).Headers.Item(Headers[k]);
            Shapes := Header.Shapes;

            // Recorre les formes
            for j := Shapes.Count downto 1 do
            begin
                Shape := Shapes.Item(j);

                // Comprova si és una imatge i té text alternatiu indicat (per saber si cal eliminar aquest logo)
                if (Shape.Type = 13) and (VarToStr(Shape.AlternativeText) = 'logo_gencat') then    // 13 = msoPicture
                begin
                    Shape.Delete;
                end;
            end;
        end;
    end;
    
    // Protegim el document altre cop, si estava protegit:
    if (t_proteccio <> wdNoProtection) then
    begin
        pType := t_proteccio;
        pFalse := False;
        WordDoc.Protect(pType, pFalse, pPassword, pFalse, pFalse);
    end;
end;


procedure TwDataInformesQ.OmpleTags(fase: Smallint; C_Plantilla: Integer; C_Usuari: String; data_i: TDateTime=0; data_f: TDateTime=0);
var
  t_proteccio: TOleEnum;
  missatge: String;
  data_alta: TDateTime;
  i: integer;
  SearchText, ReplaceWith: String;
  PageSetup, pIndex, pPassword, pTrue, pFalse, pReplace, pUnit, pType: OleVariant;
  insereix, TagTrobat: Boolean;
  Medicacio: TStrings;
begin
    ARA := NowServer;
    AVUI := DateOf(ARA);

    // Recorrem els TAGS de la plantilla per anar-los omplint
    qTags.Close;
    qTags.ParamByName('c_plantilla').AsInteger := C_Plantilla;
    qTags.ParamByName('c_historia').Assign(qInforme.FieldByName('C_Historia'));
    qTags.ParamByName('c_tractament').Assign(qInforme.FieldByName('C_Tractament'));
    qTags.ParamByName('fase').AsInteger := fase;
    qTags.ParamByName('c_usuari').AsString := C_Usuari;
    qTags.ParamByName('id_informe').AsInteger := qInforme.FieldByName('ID_Informe').AsInteger;
    qTags.ParamByName('data_i').AsDateTime := data_i;
    qTags.ParamByName('data_f').AsDateTime := data_f;
    qTags.Open;

    WordDoc.Activate;

    // Desprotegim el document per poder informar totes les variables (si estava protegit)
    t_proteccio := WordDoc.ProtectionType;
    if (t_proteccio <> wdNoProtection) then
    begin
        pPassword := 'asincrono';
        WordDoc.Unprotect(pPassword);
    end;

    PageSetup := WordDoc.Sections.Item(1).PageSetup;
    MetgeValidador := '';

    while not qTags.Eof do
    begin
        // Cerquem i substituïm l'etiqueta en curs
        pTrue        := True;
        pFalse       := False;
        SearchText   := qTags.FieldByName('Tag').AsString;

        if SearchText = '%METGE_VALIDA%' then MetgeValidador := qTags.FieldByName('Valor').AsStrinG;

        // Medicació: si la procedure retorna la paraula "FARMATOOLS", cridem el WS de medicació perquè ens retorni totes les prescripcions actives.
        // (Un cop implementat el bolcat de medicació de forma estructurada, haurem de cridar igualment el WS però la procedure retornarà el text formatat segons l'idioma)
        if (qTags.FieldByName('Valor').AsString = 'WS_FARMATOOLS') then
        begin
            {$IFDEF CURS}
            Medicacio := TStringList.Create;
            TRY
              TRY
                data_alta := OmpleTractament(qInforme.FieldByName('C_Tractament').AsInteger).Data_Alta;
                if (data_alta > 0) and (data_alta < AVUI)
                then Medicacio := BuscaMedicacio(qInforme.FieldByName('C_Tractament').AsInteger, False, True)  // medicació a l'alta (tractament és alta)
                else Medicacio := BuscaMedicacio(qInforme.FieldByName('C_Tractament').AsInteger, True, True);  // medicació avui (tractament actiu)
              EXCEPT on e: Exception do Medicacio.Add('Error en buscar la medicació a FT' + NLine + e.Message);
              END;

              // Si no trobem medicació (perquè no n'hi ha o perquè el WS ha retornat error),
              // avisem i preguntem si volen que es torni a intentar el bolcat més endavant.
              if (Medicacio[0] <> '')
              and AvisoSN(Medicacio[0] + NLine + NLine +
                          'Voldreu que el sistema torni a intentar el bolcat de medicació en una propera edició de l''informe? ')
              then ReplaceWith := qTags.FieldByName('Tag').AsString
              // Altrament, substituïm el TAG per la medicació que hagi retornat el WS (pot estar buida)
              else begin
                  ReplaceWith := Medicacio[1];

                  // La bolquem també a l'ítem perquè no torni a avisar (l'inserim perquè, en no sortir al formulari, no s'ha creat)
                  insInformesLin.Prepare;
                  insInformesLin.ParambyName('id_informe').AsInteger := qInforme.FieldByName('ID_Informe').AsInteger;
                  insInformesLin.ParambyName('c_item'    ).AsInteger := qTags.FieldByName('C_Item').AsInteger;
                  insInformesLin.ParambyName('anotacio'  ).AsString  := Medicacio[1] + '.'; // hi afegim un punt per si estava buida
                  insInformesLin.ParambyName('c_usuari'  ).AsString  := C_Usuari;
                  insInformesLin.ExecSQL;
              end;
            FINALLY
              Medicacio.Free;
            END;
            {$ENDIF}
        end

        // Si el valor a inserir està buit i l'ítem té SQL de comprovació, cal tornar a cercar la informació ara, amb l'SQL de Bolcatge:
        else if (qTags.FieldByName('Valor').AsString = '') and (qTags.FieldByName('SQL_Comprova').AsString <> '') then
        begin
            // Primer comprovem si està tot ple
            qBolcatge.Close;
            qBolcatge.SQL.Text := qTags.FieldByName('SQL_Comprova').AsString;
            qBolcatge.Prepare;
            for i := 0 to qBolcatge.ParamCount-1 do
            begin
                if (qBolcatge.Params[i].Name = 'c_historia')   then qBolcatge.Params[i].AsInteger := qInforme.FieldByName('C_Historia').AsInteger;
                if (qBolcatge.Params[i].Name = 'c_tractament') then qBolcatge.Params[i].AsInteger := qInforme.FieldByName('C_Tractament').AsInteger;
                if (qBolcatge.Params[i].Name = 'idioma')       then qBolcatge.Params[i].AsInteger := qTags.FieldByName('Idioma').AsInteger;
                if (qBolcatge.Params[i].Name = 'c_usuari')     then qBolcatge.Params[i].AsString  := C_Usuari;
            end;
            qBolcatge.Open;
            missatge := Trim(qBolcatge.FieldByName('Resposta').AsString);

            // Si la comprovació retorna un missatge, fem la pregunta "Bolcar igualment la informació?"
            // Bolquem la informació si està completa o si volen bolcar-la igualment.
            if (missatge = '') or AvisoNS(missatge) then
            begin
                qBolcatge.Close;
                qBolcatge.SQL.Text := qTags.FieldByName('SQL_Bolcatge').AsString;
                qBolcatge.Prepare;
                for i := 0 to qBolcatge.ParamCount-1 do
                begin
                    if (qBolcatge.Params[i].Name = 'c_historia')   then qBolcatge.Params[i].AsInteger := qInforme.FieldByName('C_Historia').AsInteger;
                    if (qBolcatge.Params[i].Name = 'c_tractament') then qBolcatge.Params[i].AsInteger := qInforme.FieldByName('C_Tractament').AsInteger;
                    if (qBolcatge.Params[i].Name = 'idioma')       then qBolcatge.Params[i].AsInteger := qTags.FieldByName('Idioma').AsInteger;
                    if (qBolcatge.Params[i].Name = 'c_usuari')     then qBolcatge.Params[i].AsString  := C_Usuari;
                end;
                qBolcatge.Open;

                ReplaceWith := Trim(qBolcatge.FieldByName('Anotacio').AsString);

                // La bolquem també a l'ítem perquè no torni a avisar
                updInformesLin.Prepare;
                updInformesLin.ParambyName('id_informe').AsInteger := qInforme.FieldByName('ID_Informe').AsInteger;
                updInformesLin.ParambyName('c_item'    ).AsInteger := qTags.FieldByName('C_Item').AsInteger;
                updInformesLin.ParambyName('anotacio'  ).AsString  := Trim(qBolcatge.FieldByName('Anotacio').AsString) + '.'; // hi afegim un punt per si estava buida
                updInformesLin.ParambyName('c_usuari'  ).AsString  := C_Usuari;
                updInformesLin.ExecSQL;
            end
            // Si diuen que no, no la bolquem i mantenim el TAG per bolcar en futures ocasions
            else ReplaceWith := qTags.FieldByName('Tag').AsString;
        end

        else ReplaceWith :=  qTags.FieldByName('Valor').AsString;

        CurrentRange := WordDoc.Content;

        if (SearchText <> ReplaceWith) then
        begin
            // Per a textos llargs, en comptes de Replace directe, substituim per '' i inserim el text (no hi caben en el ReplaceWith)
            // Només n'hi haurà al cos del document (CurrentRange)
            insereix := (qTags.FieldByName('Ordre').AsInteger <> 0);
            TagTrobat := ReplaceEverywhere(SearchText, ReplaceWith, insereix);
        end;

        qTags.Next;

        // Si tenim més línies del mateix TAG, les inserim ara
        while (not qTags.Eof) and (SearchText = qTags.FieldByName('Tag').AsString) and TagTrobat do
        begin
            CurrentRange.InsertParagraphAfter;
            CurrentRange.InsertAfter(qTags.FieldByName('Valor').AsString);
            qTags.Next;
        end;
    end;

    pUnit := wdStory;
    WordApp.Selection.HomeKey(pUnit, EmptyParam);  // anem al principi del document

    // Protegim el document altre cop, si estava protegit:
    if (t_proteccio <> wdNoProtection) then
    begin
        pType := t_proteccio;
        pFalse := False;
        WordDoc.Protect(pType, pFalse, pPassword, pFalse, pFalse);
    end;
end;


function TwDataInformesQ.ReplaceEverywhere(const SearchText, ReplaceWith: String; insereix: Boolean): Boolean;
var
  i: Integer;
  Section: OleVariant;
  Shapes, ShapeRange: OleVariant;
begin

    // Les cadenes llargues (ordre <> 0 => insereix = True) només són al cos del document => ens podem estalviar buscar-les a les capçaleres
    if not insereix then
    begin
        // Capçaleres i peus de totes les seccions
        for i := 1 to WordDoc.Sections.Count do
        begin
            section := WordDoc.Sections.Item(i);

            // Capçaleres
            if section.PageSetup.DifferentFirstPageHeaderFooter
            then ReplaceTags(section.Headers.Item(wdHeaderFooterFirstPage).Range, SearchText, ReplaceWith);
            ReplaceTags(section.Headers.Item(wdHeaderFooterPrimary).Range, SearchText, ReplaceWith);
            ReplaceTags(section.Headers.Item(wdHeaderFooterEvenPages).Range, SearchText, ReplaceWith);
        end;

        // Quadres de text
        for i := 1 to WordDoc.Shapes.Count do
        begin
            Shapes := WordDoc.Shapes;
            if (Shapes.Item(i).TextFrame.HasText = True) then
            begin
                ShapeRange := Shapes.Item(i).TextFrame.TextRange;
                ReplaceTags(ShapeRange, SearchText, ReplaceWith);
            end;
        end;
    end;

    // Cos del document.
    // Ho fem al final per si ens hi hem de quedar ubicats per seguir inserint text del mateix TAG (cas d'ordre > 0; p.ex diagnòstics)
    // Indiquem si cal eliminar l'apartat quan queda buit (p.ex. CEX, CEB)
    Result := ReplaceTags(CurrentRange, SearchText, ReplaceWith, insereix, (qInforme.FieldByName('EliminaBuits').AsString = 'S'));
end;


function TwDataInformesQ.ReplaceTags(Range: OleVariant; const SearchText, ReplaceWith: String; insereix: Boolean=False; EliminaApartatSiBuit: Boolean=False): Boolean;
var
  pUnit, pTrue, pFalse, pFindText, pReplaceWith, pReplace, Paragrafs, Paragraf, ParagrafAnt, RangExtra: OleVariant;
  StartPos, EndPos: Integer;
  text: String;
  i: Integer;
begin
    Result := False;

    pTrue := True;
    pFalse := False;
    pFindText := SearchText;
    if insereix then
    begin
        pReplaceWith := '';
        pReplace := wdReplaceOne;
    end
    else begin
        pReplaceWith := ReplaceWith;
        pReplace := wdReplaceAll;
    end;

    StartPos := Range.Start;
    EndPos   := Range.Start + Range.StoryLength-1;
    Range.SetRange(StartPos, EndPos);

    Range.Find.ClearFormatting;
    Range.Find.Replacement.ClearFormatting;

    Result := Range.Find.Execute(pFindText, pTrue, pTrue, pFalse, pFalse, pFalse, pTrue, EmptyParam, pFalse, pReplaceWith, pReplace, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    // Si trobem el TAG i no estem fent "Replace" (estem ubicats al lloc del TAG)
    if Result and insereix then
    begin
        // Si el text queda buit i hem d'eliminar l'apartat, ho fem ara:
        if (ReplaceWith = '') and EliminaApartatSiBuit then
        begin
            // Elimina el paràgraf de l'etiqueta
            Paragrafs := Range.Paragraphs;
            Paragraf := Paragrafs.Item(1);
            Paragraf.Range.Delete;

            // Eliminem un salt de línia extra; equival a eliminar el caràcter següent si és ^p (=#13)
            RangExtra := Range.Duplicate;
            RangExtra.SetRange(Range.Start, Range.Start + 1);
            if (RangExtra.Text = #13) then RangExtra.Delete;

            // Elimina el paràgraf immediatament anterior (corresponent al títol)
            ParagrafAnt := Paragraf.Previous;
            TRY ParagrafAnt.Range.Delete; EXCEPT END;
        end;

        // Si el text està ple, l'inserim ara:
        if (ReplaceWith <> '') then Range.InsertAfter(ReplaceWith);
    end;
end;


procedure TwDataInformesQ.NetejaEspaisInicials(Range: OleVariant);
var
  pTrue, pFalse, pFindText, pReplaceWith, pReplace: OleVariant;
begin
    Range.Find.ClearFormatting;
    Range.Find.Replacement.ClearFormatting;

    pTrue := True;
    pFalse := False;
    pFindText := '^p ';
    pReplaceWith := '^p';
    pReplace := wdReplaceAll;
    Range.Find.Execute(pFindText, pTrue, pTrue, pFalse, pFalse, pFalse, pTrue, EmptyParam, pFalse, pReplaceWith, pReplace, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;


procedure TwDataInformesQ.InsereixRealitzacio(ID_Informe: Integer; Usr: TMetge);
var
  rslt: Integer;
  NomInforme: String;
  t_proteccio: TOleEnum;
  pPassword, pUnit, pType, pFalse, pGuardaCanvis: OleVariant;
  idioma: Integer;
  frase, fetper, titulacio: String;
begin

    LocalitzaInforme(ID_Informe);

    // Si tenen algun document de Word obert, avisem que el tanquin perquè no interfereixi amb el control de l'informe
    if siestaexe('winword.exe', 0, False) then
    begin
        rslt := mrOk;
        while siestaexe('winword.exe', 0, False) and (rslt = mrOk)
        do rslt := MessageDlg('ABANS DE CONTINUAR GUARDEU ELS CANVIS I TANQUEU TOTS ELS ' + NLine +
                              'DOCUMENTS DE "WORD" QUE TINGUEU OBERTS. DESPRÉS CLIQUEU "OK".' + NLine +
                              'Si els heu tancat tots i segueix sortint aquest missatge, cliqueu "RETRY". ',
                              mtWarning, [Dialogs.mbRetry, Dialogs.mbCancel, Dialogs.mbOK], 0);  // he d'apuntar a Dialogs pq a MessageBox hi ha una constant que es diu mbCancel!!
        if (rslt = mrCancel) then Exit;
        if (rslt = mrRetry ) then KillTask('winword.exe');
    end;

    // Obrim l'informe

    NomInforme := InformePath(ID_Informe);     // això també localitza l'informe (a la query qInforme)

    // Tanquem el Word guardant els canvis. (Si això dóna eror vol dir que ja estava tancat)
    pGuardaCanvis := True;
    TRY WordApp.Quit(pGuardaCanvis, EmptyParam, EmptyParam); Sleep(2000); EXCEPT END;
    // Tornem a obrir l'informe
    ObreInforme(NomInforme, False, False);

    // Desprotegim el document per poder-hi escriure (si estava protegit)
    t_proteccio := WordDoc.ProtectionType;
    if (t_proteccio <> wdNoProtection) then
    begin
        pPassword := 'asincrono';
        WordDoc.Unprotect(pPassword);
    end;

    // Ens situem al final del document
    pUnit := wdStory;
    WordApp.Selection.EndKey(pUnit, EmptyParam);

    // Escriurem la frase en funció de l'idioma de l'informe

    idioma := GutSelect('select IDIOMA from INFORMES_PLANTILLES where C_PLANTILLA = %d',
                         [qInforme.FieldByName('C_Plantilla').AsInteger]);

    if (Pos('a', Usr.TRACTE) > 0) then
    begin
       if (idioma = 1) then begin fetper := 'realitzat per la ';  titulacio := ', metge resident.'; end
                       else begin fetper := 'realizado por la ';  titulacio := ', médico residente.';  end;
    end
    else begin
        if (idioma = 1) then begin fetper := 'realitzat pel ';     titulacio := ', metge resident.';   end
                        else begin fetper := 'realizado por el ';  titulacio := ', médico residente.'; end;
    end;

    frase := 'Informe ' + fetper + Usr.TRACTE + ' ' + Usr.NomSencer + titulacio;

    WordApp.Selection.TypeParagraph;
    WordApp.Selection.TypeText(frase);
    WordApp.Selection.TypeParagraph;
    WordApp.Selection.TypeParagraph;
    WordApp.Selection.TypeText('Informe validat per: ');

    pUnit := wdStory;
    WordApp.Selection.HomeKey(pUnit, EmptyParam);  // anem al principi del document
    
    // Protegim el document altre cop, si estava protegit:
    if (t_proteccio <> wdNoProtection) then
    begin
        pType := t_proteccio;
        pFalse := False;
        WordDoc.Protect(pType, pFalse, pPassword, pFalse, pFalse);
    end;

    // Tanquem el Word
    pGuardaCanvis := True;
    WordDoc.Close(pGuardaCanvis, EmptyParam, EmptyParam);
end;


{$IFDEF INFORMES}
procedure TwDataInformesQ.ValidaInforme(ID_Informe: Integer; Usr: TMetge);
var
  NouEstat: Integer;
  NomInforme, NomRTF, nomPDF: String;
  NomSignant, NumDoc, TipusDoc: String;
  pGuardaCanvis, pNomRTF, pNomPDF, pFileFormat: OleVariant;
  pathdesti, nomdesti: String;
  r_proteccio: String;
  accio: Smallint;
  publicarHC3, publicarAPP, ID_HC3_Old, ID_APP_Old: String;
  emailMetge: String;
begin
    ARA := NowServer;
    AVUI := DateOf(ARA);

    // 1. Obrim l'informe

    NomInforme := InformePath(ID_Informe);     // això també localitza l'informe (a la query qInforme)

    // Tanquem el Word guardant els canvis. (Si això dóna eror vol dir que ja estava tancat)
    pGuardaCanvis := True;
    TRY WordApp.Quit(pGuardaCanvis, EmptyParam, EmptyParam); Sleep(2000); EXCEPT END;
    // Tornem a obrir l'informe
    ObreInforme(NomInforme, False, False); // això inicialitza la variable WordDoc

    // apanyo per treure espai inicial (en desar el document com a docx després d'omplir tags, posa un espai a l'inici de línia de cada etiqueta del contingut)
    if (qInforme.FieldByName('C_Tipus').AsString = 'EMB') then NetejaEspaisInicials(WordDoc.Content);

    // Mirem si és validació definitiva:
    if TeDretMetge(Usr.Codi, [65,650]) then begin NouEstat := 5; Accio := 55; end   // fellow/becari => pendent validació cap clínic/supervisor
                                       else begin NouEstat := 6; Accio := 5;  end;  // altrament     => validat - pendent de finalitzar

    // 2. Afegim signatura al final
    InsereixSignatura(ID_Informe, qInforme.FieldByName('Versio').AsInteger, NouEstat = 6, Usr);

    // Registrem l'acció (validació)
    GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA) values (%d, %d, "%s", "NOW")', [ID_Informe, Accio, Usr.Codi], False);

    // 3A. Si és validació definitiva:
    if (NouEstat = 6) then
    begin
        // Omplim els TAGS de la fase 2, si n'hi ha
        OmpleTags(2, qInforme.FieldByName('C_Plantilla').AsInteger, Usr.Codi);
        WordDoc.Save;

        // Si el tipus ho indica, convertim l'informe a PDF (formularis, informes que no s'hagin de modificar mai i no necessitin addendes)
        if (qInforme.FieldByName('PDFDirecte').AsString = 'S') then
        begin
            NomPDF  := ChangeFileExt(NomInforme, '.pdf');
            pNomPDF := NomPDF;
            WordDoc.ExportAsFixedFormat(pNomPDF, wdExportFormatPDF, False, wdExportOptimizeForPrint, wdExportAllDocument, 1, 1,
                                        wdExportDocumentContent, True, True, wdExportCreateNoBookmarks, True, True, False, EmptyParam);

            // Si el pdf s'ha generat correctament, podem eliminar el .doc
            if FileExists(NomPDF) then
            begin
                pGuardaCanvis := False;
                WordDoc.Close(pGuardaCanvis, EmptyParam, EmptyParam);
                DeleteFile(NomInforme);

                // Actualitzem la variable NomInforme amb el nom PDF
                NomInforme := nomPDF;

                {$IFDEF CURS}
                // i el signem amb VIDSigner (només tipus informe CNI)
                if qInforme.FieldByName('C_TIPUS').AsString = 'CNI' then
                begin
                    wDataVerHis.F.Signant.DeviceName := PreguntaDispositiu(ID_Informe);

                    if (wDataVerHis.F.Signant.DeviceName = '') or (wDataVerHis.F.Signant.NomSignant = '') or (wDataVerHis.F.Signant.NumDoc = '') or (wDataVerHis.F.Signant.TipusDoc = '')
                    then begin
                        FerError('Falten dades del dispositiu o del signant',False);
                        Abort;
                    end
                    else begin
                        SignaDocument(IntToStr(ID_Informe), NomInforme, wDataVerHis.F.Signant);

                        // Registrem l'acció (Tauleta seleccionada)
                        GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA, COMENTARI) values (%d, 50, "%s", "NOW", "%s")',
                                   [ID_Informe, Usr.Codi, wDataVerHis.F.Signant.DeviceName], False);

                        NouEstat := 51; // Validat. Pendent de signatura pacient
                    end;
                end;
                {$ENDIF}
            end;
        end
        else begin
            // Si l'informe s'ha de bolcar a interbase, el passem a RTF temporalment
            if (qInforme.FieldByName('Bolca_IB').AsString = 'S') then
            begin
                NomRTF      := ChangeFileExt(NomInforme, '.rtf');
                pNomRTF     := NomRTF;
                pFileFormat := wdFormatRTF;

                WordDoc.SaveAs2(pNomRTF, pFileFormat, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
                Sleep(2000);
            end;
            
            // Guardem l'informe i el tanquem
            pGuardaCanvis := True;
            WordDoc.Close(pGuardaCanvis, EmptyParam, EmptyParam);
        end;

        // Bolquem el text de l'informe al camp InformeAlta de Tractaments, si el tipus d'informe ho requereix:
        if (qInforme.FieldByName('Bolca_IB').AsString = 'S') then
        begin
            if (qInforme.FieldByName('Ordre').AsInteger = 2) then BolcaAInterbase(NomRTF, Usr, 1)   // informe de trasllat (=> mantenim informe d'alta pendent)
                                                             else BolcaAInterbase(NomRTF, Usr, 8);  // informe d'alta finalitzat
        end;

        {$IFDEF CURS}
        // Si és un informe d'alta, hem de fer més coses.
        // Actualitzarem F.Estado segons el que calgui fer a continuació.
        // El Refrescar es crida a les fitxes DialogValidaInforme (per a la validació normal) i GrabarExecute en estat 190 (FitxaInformesItems) per a la validació semiautomàtica.
        if (qInforme.FieldByName('Ordre').AsInteger = 1) then
        begin
            with wDataVerHis.F do
            begin
                AltaActiva := OmpleTractament(qInforme.FieldByName('C_Tractament').AsInteger);

                // Hem d'informar el diagnòstic d'alta perquè es pugui publicar l'informe (només cal fer-ho si s'ha de publicar)
                if (qInforme.FieldByName('Publicar_HC3').AsString <> 'N') then PosaDiagnosticAlta(AltaActiva.C_Tractament);

                // Si l'alta té procés TIR i continuarà procés, demanem programació de prestació.
                // Altrament, preguntem si volen programar una prestació de totes maneres.
                // (Si programen 2014 amb protocol, es demanarà la programació NR)
                if (AltaActiva.C_Proces <> 0) and TeDretMotiu(AltaActiva.C_Motiu, [7]) then
                begin
                    // Maig 2026: inicialitzarem TractamentProcesNR en programar la següent prestació
                    // Maig 2026: Ara validen sempre abans de l'alta => només cal veure si continua procés o no
                    if (ContinuaProces(AltaActiva, Usr) = 1) then Estado := 84  // continua procés => programar prestació (obligatori)
                end
                else if AvisoNS('Voleu programar una altra prestació?') then Estado := 79  // programar prestació (opcional)
            end
        end;
        {$ENDIF}

        // Si s'ha d'imprimir automàticament, ho fem  (Excepte si és CNI en estat 51) <- TODO: per què no li traiem "impressió automàtica"?
        if  (qInforme.FieldByName('ImpressioAuto').AsString = 'S') and (NouEstat <> 51) then
        begin
            TRY
              if wData.ES_PROVA then ShowMessage('En proves no imprimim')
                                else ShellExecute(0, 'print', PChar(NomInforme), '', '', 0);

              // Registrem l'acció (impressió)
              GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA) values (%d, 11, "%s", "NOW")', [ID_Informe, Usr.Codi], False);
            EXCEPT
            END;
        end;

        // Si és un informe de gestió automàtica, hem de fer més coses:
        if (qInforme.FieldByName('Gestionat').AsInteger = 9) then
        begin
            // El deixem a InformesImprimir perquè es finalitzi automàticament (el GeneraPDF el mourà a la RutaFi que correspongui)
            pathdesti := IdentificaDirectori(qInforme.FieldByName('Ruta_Fi').AsString, qInforme.FieldByName('C_Historia').AsString);
            nomdesti := JustificaC(qInforme.FieldByName('C_Historia').AsString, 5, '0') +
                        qInforme.FieldByName('C_Tipus').AsString +
                        FormatDateTime('yyyymmdd', AVUI) +
                        Usr.Codi + '-' +
                        IntToStr(ID_Informe) +
                        ExtractFileExt(NomInforme);

            GutExecute('insert into INFORMESIMPRIMIR (C_TRACTAMENT, TIPUS, NOM_INFORME, DATA_VALIDAT, NOM_DESTI, SIGNAT, METGE_VALIDA, ID_INFORME) '+
                       'values (%d, "%s", "%s", "%s", "%s", "N", "%s", %d)',
                       [qInforme.FieldByName('C_Tractament').AsInteger,
                        qInforme.FieldByName('C_Tipus').AsString,
                        NomInforme,
                        FormatDateTime('dd.mm.yyyy hh:nn:ss', ARA),
                        ConcatFilePath(pathdesti, nomdesti),
                        Usr.Codi,
                        ID_Informe],
                        False);
        end;
    end

    // 3B. Altrament, tanquem el Word guardant els canvis:
    else begin
        // Guardem l'informe
        pGuardaCanvis := True;
        WordDoc.Close(pGuardaCanvis, EmptyParam, EmptyParam);
    end;

    // 4. Canviem l'estat i el nom de l'informe
    GutExecute('update INFORMES set C_ESTAT = %d, ARXIU = "%s" where ID_INFORME = %d', [NouEstat, ExtractFileName(NomInforme), ID_Informe], False);

    // 5. En la validació definitiva, si el tractament és UP i el tipus d'informe s'ha de publicar a l'HCCC, ho registrem
    if   (NouEstat = 6) then
    begin
        // Si el tractament és 04-UP, mirem si aquest informe s'ha de publicar a l'HC3
        if (qInforme.FieldByName('C_Client').AsString = 'UP')
        and ((qInforme.FieldByName('Publicar_HC3').AsString = 'S')
         or ((qInforme.FieldByName('Publicar_HC3').AsString = 'P') and AvisoSN('Voleu que aquest informe es publiqui a l''HC3?')))
        then begin
            qUltimaPublicacioHC3.Close;
            qUltimaPublicacioHC3.ParamByName('ID_Informe').AsInteger := ID_Informe;
            qUltimaPublicacioHC3.Open;

            // Si no hi ha cap registre de publicació hc3 o l'últim registre és per despublicar, publiquem. Altrament, republiquem
            if qUltimaPublicacioHC3.Eof or (qUltimaPublicacioHC3.FieldByName('Publicar_HC3').AsString = 'D')
            then publicarHC3 := 'S'
            else publicarHC3 := 'R';
        end
        else publicarHC3 := 'N';

        // Ara mirem si l'informe s'ha de publicar a l'APP
        // Si per defecte es publica o han indicat forma d'entrega = APP en fer la sol·licitud, publiquem
        if (qInforme.FieldByName('Publicar_APP').AsString = 'S') or (qInforme.FieldByName('C_Entrega').AsInteger = 5)
        then publicarAPP := 'S'
        else publicarAPP := 'N';

        qUltimaPublicacioAPP.Close;
        qUltimaPublicacioAPP.ParamByName('ID_Informe').AsInteger := ID_Informe;
        qUltimaPublicacioAPP.Open;

        // Si s'ha de publicar, mirem si és republicació
        if  (publicarAPP = 'S') then
        begin
            // Si no hi ha cap registre de publicació APP o l'últim registre és per despublicar, publiquem. Altrament, republiquem
            if (qUltimaPublicacioAPP.Eof or (qUltimaPublicacioAPP.FieldByName('Publicar_APP').AsString = 'D'))
            then publicarAPP := 'S'
            else publicarAPP := 'R';
        end;


        // Si s'ha de publicar a algun lloc, l'inserim a INFORMES_HCCC
        if (publicarHC3 <> 'N') or (publicarAPP <> 'N') then
        begin
            // Si és republicació, hem d'arrossegar l'ID de l'última publicació
            if (publicarHC3 = 'R') then ID_HC3_Old := qUltimaPublicacioHC3.FieldByName('ID_HCCC').AsString else ID_HC3_Old := '';
            if (publicarAPP = 'R') then ID_APP_Old := qUltimaPublicacioAPP.FieldByName('ID_APP' ).AsString else ID_APP_Old := '';

            GutExecute('insert into INFORMES_HCCC (ID_INFORME, PUBLICAR_HC3, PUBLICAR_APP, ID_HCCC_OLD, ID_APP_OLD) values (%d, "%s", "%s", "%s", "%s")',
                       [ID_Informe, publicarHC3, publicarAPP, ID_HC3_Old, ID_APP_Old], False);
        end;
    end;

    wData.IBTransGutt.CommitRetaining;

    // Sortim (no cal guardar canvis, ja hem guardat el que tocava quan tocava)
    pGuardaCanvis := False;
    WordApp.Quit(pGuardaCanvis, EmptyParam, EmptyParam);

    // Refresquem la query Informes perquè agafi el nou nom d'arxiu
    qInforme.Close;
    qInforme.Open;
end;

procedure TwDataInformesQ.InsereixSignatura(ID_Informe: Integer; Versio: Smallint; Definitiva: Boolean; Validador: TMetge);
var
  t_proteccio: TOleEnum;
  PageSetup, pPassword, pType, pIdioma, pTitol, pTrue, pFalse, pWrap, pFindText, pReplaceWith, pReplace, pUnit, pData, pSignat, pNR: OleVariant;
  Localitat: String;
  Autor: TMetge;
  DataValidacio: TDate;
  NumCol: String;
  NomesSignatura: Boolean;
begin
    // Busquem l'idioma de l'informe
    pIdioma := GutSelect('select IDIOMA from INFORMES_PLANTILLES where C_PLANTILLA = %d',
                         [qInforme.FieldByName('C_Plantilla').AsInteger]);

    // Desprotegim el document per poder informar totes les variables (si estava protegit)
    t_proteccio := WordDoc.ProtectionType;
    if (t_proteccio <> wdNoProtection) then
    begin
        pPassword := 'asincrono';
        WordDoc.Unprotect(pPassword);
    end;

    // Si existeix el TAG %SIGNATURA% l'omplim només amb la SIGNATURA (res de localitat ni data)
    // altrament, ens col·loquem al final del document i hi posem la signatura i també la línia de localitat i data

    // Busquem el TAG %SIGNATURA% al document i l'esborrem
    pTrue        := True;
    pFalse       := False;
    pWrap        := wdFindStop;
    pFindText    := '%SIGNATURA%';
    pReplaceWith := '';
    pReplace     := wdReplaceOne;

    WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
    pUnit := wdStory;
    WordApp.Selection.HomeKey(pUnit, EmptyParam);

    // Si no el trobem, ens col·locarem al final del document per inserir la signatura
    // Altrament, col·locarem la signatura on estiguem col·locats (amb el Find substituim el TAG per '')
    NomesSignatura := WordApp.Selection.Find.Execute(pFindText, pTrue, pTrue, pFalse, pFalse, pFalse, pTrue, pWrap, pFalse,
                                                     pReplaceWith, pReplace, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    if not NomesSignatura
    then begin
        pUnit := wdStory;
        WordApp.Selection.EndKey(pUnit, EmptyParam);
    end;

    // Si la validació és definitiva i hi ha hagut una signatura prèvia, indiquem "validat per"
    if Definitiva and (qInforme.FieldByName('C_Estat').AsInteger = 5) then
    begin                                                                                                                
        CASE pIdioma OF
          1: WordApp.Selection.TypeText('Informe validat per: ');
          2: WordApp.Selection.TypeText('Informe validado por: ');
        END;
        WordApp.Selection.TypeParagraph;
    end;

    // Afegim els autors si cal (informes conjunts que no contenen el nom del professional al títol de cada apartat)
    if (qInforme.FieldByName('Autors').AsString = 'S') then
    begin
        qAutors.Close;
        qAutors.ParamByName('id_informe').AsInteger := ID_Informe;
        qAutors.Open;

        while not qAutors.Eof do
        begin
            Autor := BuscaMetge(qAutors.FieldByName('c_usuari').AsString);

            // Busquem la titulació de cada autor en funció de l'idioma de l'informe i de la unitat del pacient
            qTitol.Close;
            qTitol.ParamByName('usuari').AsString := Autor.Codi;
            qTitol.ParamByName('idioma').AsInteger := pIdioma;
            qTitol.Open;
            pTitol := qTitol.FieldByName('Titol').AsString;
            qTitol.Close;

            // Anotem usuari, títol i NC:
            WordApp.Selection.TypeParagraph;
            WordApp.Selection.TypeParagraph;
            WordApp.Selection.TypeText(Autor.TRACTE + ' ' + Autor.NomSencer);
            WordApp.Selection.TypeParagraph;
            if (pTitol <> '') then
            begin
                WordApp.Selection.TypeText(pTitol);
                WordApp.Selection.TypeParagraph;
            end;
            if Autor.NMetgeRecepta <> '' then NumCol := Autor.NMetgeRecepta
            else begin
                if (Autor.cProv = '') then NumCol := Autor.NC
                                      else NumCol := Autor.cProv + '/' + Autor.NC;
            end;
            WordApp.Selection.TypeText('Núm. Col.: ' + NumCol);

            qAutors.Next;
        end;
        WordApp.Selection.TypeParagraph; //+
    end

    // Afegim el validador als informes individuals
    else if (qInforme.FieldByName('Conjunt').AsString = 'N') then
    begin
        qTitol.Close;
        qTitol.ParamByName('usuari').AsString := Validador.Codi;
        qTitol.ParamByName('idioma').AsInteger := pIdioma;
        qTitol.Open;
        pTitol := qTitol.FieldByName('Titol').AsString;
        qTitol.Close;

        WordApp.Selection.TypeParagraph;
        WordApp.Selection.TypeText(Validador.TRACTE + ' ' + Validador.NomSencer);
        WordApp.Selection.TypeParagraph;
        if (pTitol <> '') then
        begin
            WordApp.Selection.TypeText(pTitol);
            WordApp.Selection.TypeParagraph;
        end;

        if Validador.NMetgeRecepta <> '' then NumCol := Validador.NMetgeRecepta
        else begin
            if (Validador.cProv = '') then NumCol := Validador.NC
                                      else NumCol := Validador.cProv + '/' + Validador.NC;
        end;
        WordApp.Selection.TypeText('Núm. Col.: ' + NumCol);
    end;

    // Si és validació definitiva, introduïm text: "registrat electrònicament" i hi afegim el número de registre i l'hora d'alta si cal
    if Definitiva then
    begin
        // Data i localitat segons el centre del tipus d'informe
        if (qInforme.FieldByName('Centre').AsString = 'B') then Localitat := 'Barcelona, '
                                                           else Localitat := 'Badalona, ';

        // Per a futures versions, mantenim la data de la primera validació
        if (Versio > 1) then DataValidacio := DateOf(GutSelect('select Min(DATA) from INFORMES_REG where ID_INFORME = %d and ACCIO = 5', [ID_Informe]))
                        else DataValidacio := AVUI;

        pData := Localitat + DataMesLlarg(IntToStr(pIdioma), DataValidacio);
        if not NomesSignatura then
        begin
            WordApp.Selection.TypeParagraph;
            WordApp.Selection.TypeParagraph;
            WordApp.Selection.TypeText(pData);

            CASE pIdioma OF
              1: pSignat := 'Document registrat electrònicament. ';
              2: pSignat := 'Documento registrado electrónicamente. ';
              3: pSignat := 'Electronically registered document. '
            END;
        end
        else begin
            CASE pIdioma OF
              1: pSignat := 'Registre electrònic. ';
              2: pSignat := 'Registro electrónico. ';
              3: pSignat := 'Electronic registion. ';
            END;
        end;

        if (Versio > 1) then pNR := 'CSV ' + IntToStr(ID_Informe) + '-' + JustificaC(IntToStr(versio), 3, '0')
                        else pNR := 'CSV ' + IntToStr(ID_Informe);

        WordApp.Selection.TypeParagraph;
        WordApp.Selection.Font.Italic := wdToggle;
        WordApp.Selection.TypeText(pSignat);
        WordApp.Selection.TypeText(pNR);
        WordApp.Selection.Font.Italic := wdToggle;

        // Hora d'alta per als informes d'alta i trasllat: hora de validació (ara)
        if (qInforme.FieldByName('Ordre').AsInteger in [1,2]) then
        begin
            // Busquem el TAG %H_ALTA% al cos del document i el substituïm per l'hora actual
            pTrue        := True;
            pFalse       := False;
            pWrap        := wdFindStop;
            pFindText    := '%H_ALTA%';
            pReplaceWith := FormatDateTime('hh:nn', ARA);
            pReplace     := wdReplaceOne;

            WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
            pUnit := wdStory;
            WordApp.Selection.HomeKey(pUnit, EmptyParam);

            WordApp.Selection.Find.Execute(pFindText, pTrue, pTrue, pFalse, pFalse, pFalse, pTrue, pWrap, pFalse,
                                           pReplaceWith, pReplace, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
        end;
    end;

    pUnit := wdStory;
    WordApp.Selection.HomeKey(pUnit, EmptyParam);  // anem al principi del document

    // Protegim el document altre cop, si estava protegit:
    if (t_proteccio <> wdNoProtection) then
    begin
        pType := t_proteccio;
        pFalse := False;
        WordDoc.Protect(pType, pFalse, pPassword, pFalse, pFalse);
    end;
end;

procedure TwDataInformesQ.BolcaAInterbase(arxiu: String; Usr: TMetge; estat_infalta: Smallint);
var
  Llista: TStrings;
begin
    updInfAlta.Prepare;
    updInfAlta.ParamByName('C_Tractament').AsInteger := qInforme.FieldByName('C_Tractament').AsInteger;
    Llista := TStringList.Create;
    TRY
      Llista.LoadFromFile(arxiu);
      updInfAlta.ParamByName('informealta').Assign(Llista);
      updInfAlta.ParamByName('met_infalta').AsString := Usr.Codi;
      updInfAlta.ParamByName('estat_infalta').AsInteger := estat_infalta;
    FINALLY
      Llista.Free;
    END;
    updInfAlta.ExecSQL;

    // Ja podem eliminar l'RTF que hem generat temporalment
    DeleteFile(arxiu);
end;
{$ENDIF}


{$IFDEF CURS}
procedure TwDataInformesQ.PosaDiagnosticAlta(c_tractament: Integer);
var
  c_diagalta, n_diagalta: String;
  confiancadpa: Integer;
begin
    // Mirem d'automatitzar el diagnòstic a l'alta, i el demanem si queda buit
    qTractAlta.Close;
    qTractAlta.ParamByName('c_tractament').AsInteger := c_tractament;
    qTractAlta.Open;

    c_diagalta := qTractAlta.FieldByName('C_DiagnosticAlta').AsString;
    n_diagalta := qTractAlta.FieldByName('N_DiagnosticAlta').AsString;
    confiancadpa := qTractAlta.FieldByName('ConfiancaDPA').AsInteger;

    // Si el codi de diagnòstic ingrés està informat i el d'alta no,
    if (qTractAlta.FieldByName('C_DiagnosticIngres').AsString <> '') and (c_diagalta = '') then
    begin
        // el passem com a codi de diagnòstic d'alta
        c_diagalta := qTractAlta.FieldByName('C_DiagnosticIngres').AsString;

        // Si el diagnòstic d'alta està buit, també hi bolquem el d'ingrés
        if (qTractAlta.FieldByName('N_DiagnosticAlta').AsString = '')
        or (qTractAlta.FieldByName('N_DiagnosticAlta').AsString = qTractAlta.FieldByName('N_DiagnosticIngres').AsString) then
        begin
            n_diagalta   := qTractAlta.FieldByName('N_DiagnosticIngres').AsString;
            confiancadpa := qTractAlta.FieldByName('ConfiancaDPI').AsInteger;
        end
        // si està informat i és diferent del d'ingrés, el mantenim però li baixem la confiança a 50
        else confiancadpa := 50;
    end;

    // Si el diagnòstic d'alta ha quedat buit o la confiança no és 100, el demanem:
    if (confiancadpa < 100) or (n_diagalta = '')
    then InputPregunta(ftString, 'Diagnòstic alta',
                       'Introduïu o modifiqueu el motiu d''assistència del tractament (diagnòstic principal) ',
                       n_diagalta, 40, 5, False);

    updTractAlta.ParamByName('c_tractament').AsInteger := c_tractament;
    updTractAlta.ParamByName('n_diagalta').AsString := n_diagalta;

    if (c_diagalta = '') then
    begin
        updTractAlta.ParamByName('c_diagalta').Clear;
        updTractAlta.ParamByName('confiancadpa').Clear;
    end
    else begin
        updTractAlta.ParamByName('c_diagalta').AsString := c_diagalta;
        updTractAlta.ParamByName('confiancadpa').AsInteger := confiancadpa;
    end;

    updTractAlta.ExecSQL;
end;


function TwDataInformesQ.ContinuaProces(AltaActiva: TTractament; Usr: TMetge): Smallint;
var
  FiProces: String;
  que: String;
  fConfirma: TwDialegConfirmaProces;
begin
    Result := 0;   // 0: fi procés
                   // 1: continuarà procés  (encara no ha iniciat el tractament següent)
    fConfirma := TwDialegConfirmaProces.Create(Self);
    if (AltaActiva.FI_Proces = 'S') then
    begin
        fConfirma.Panel1.Color := $00E1E1FF;
        que := 'és DEFINITIVA i es FINALITZA EL PROCÉS';
    end
    else if (AltaActiva.FI_Proces = 'N') then
    begin
        fConfirma.Panel1.Color := $00E0FEEC;
        que := 'CONTINUA TRACTAMENT REHABILTADOR';
    end;
    fConfirma.lbACTUAL.Caption := Format(fConfirma.lbACTUAL.Caption, [que]);
    if (fConfirma.ShowModal = mryes) then FiProces := 'S'
                                     else FiProces := 'N';

    // Si canvien d'opció, ho registrem
    if (FiProces <> AltaActiva.FI_Proces)
    then GutExecute('update TRACTAMENTS set FI_PROCES = "%s", METGE_PROCES = "%s" where C_TRACTAMENT = %d', [FiProces, Usr.Codi, AltaActiva.C_Tractament], False);

    // A més, si encara no havien dit res actualitzem el metge_proces:
    GutExecute('update TRACTAMENTS set METGE_PROCES = "%s" where C_TRACTAMENT = %d and METGE_PROCES is Null', [Usr.Codi, AltaActiva.C_Tractament], False);

    if (FiProces = 'N') then Result := 1;
end;
{$ENDIF}


procedure TwDataInformesQ.FinalitzaInforme(ID_Informe: Integer; C_Usuari: String);
var
  datai: TDateTime;
  NomInforme: String;
  FitxerOrigen, FitxerDesti, avisimprimir, PDFEntregar: String;
  pGuardarCanvis: OleVariant;
begin
    LocalitzaInforme(ID_Informe);

    TRY
      // Si són informes de circuits externs (no sol·licitables) ja tenen el nom definitiu
      // TODO -> de fet, es podria treure aquesta opció perquè els informes no sol·llicitables no van per aquest circuit i, per tant, no es finalitzen per aquí. COMPROVAR
      if (qInforme.FieldByName('Solicitable').AsString = 'N') then NomInforme := qInforme.FieldByName('Arxiu').AsString
      
      // Altrament, el composem 
      else begin
          // En funció del paràmetre Data_Arxiu agafem la data de validació o la data d'alta del tractament:
          qValidacio.Close;
          qValidacio.ParamByName('id_informe').AsInteger := ID_Informe;
          qValidacio.Open;

          if (qInforme.FieldByName('Data_Arxiu').AsInteger = 2)
          then datai := GutSelect('select DATA_ALTA from TRACTAMENTS where C_TRACTAMENT = %d', [qInforme.FieldByName('C_Tractament').AsInteger])
          else datai := qValidacio.FieldByName('Data').AsDateTime;

          // Si el tractament encara no té data d’alta (i la necessitem per al nom), la demanem.
          if (datai = 0) then datai := Calendario(DateServer, Catala, False, 'Indiqueu la data d''alta:');

          NomInforme := JustificaC(qInforme.FieldByName('C_Historia').AsString, 5, '0') +
                        qInforme.FieldByName('C_Tipus').AsString +
                        FormatDateTime('yyyymmdd', datai) +
                        qValidacio.FieldByName('C_Usuari').AsString +
                        '-' + IntToStr(ID_Informe) +
                        ExtractFileExt(qInforme.FieldByName('Arxiu').AsString);  // (mantenim l'extensió ja que és en validar-lo quan es converteix a RTF -si cal- o a PDF)
      end;

      // Movem l'informe a la ruta de destí (a la subcarpeta corresponent segons NHC)
      FitxerOrigen := InformePath(ID_Informe);
      FitxerDesti  := ConcatFilePath(IdentificaDirectori(qInforme.FieldByName('Ruta_Fi').AsString, qInforme.FieldByName('C_Historia').AsString), NomInforme);

      if not MoveFile(PChar(FitxerOrigen), PChar(FitxerDesti)) then
      begin
          FerError('Hi ha hagut un error en moure el fitxer a la carpeta final.' + NLine +
                   'Assegureu-vos que l''arxiu està tancat i torneu-ho a intentar.');
          Exit;
      end;

      // Canviem l'estat de l'informe i actualitzem l'arxiu
      GutExecute('update INFORMES set C_ESTAT = 10, ARXIU = "%s" where ID_INFORME = %d', [ExtractFileName(FitxerDesti), ID_Informe], False);

      // Registrem l'acció (finalització)
      GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA) values (%d, 6, "%s", "NOW")', [ID_Informe, C_Usuari], False);

      // En cas de ser un informe de trasllat, eliminem el registre de la taula InformesImprimir
      // (com que l'estan finalitzant manualment, ja no caldrà que el GeneraPDF el processi per moure'l a la carpeta destí)
      if (qInforme.FieldByName('C_Tipus').AsString = 'TRS') then
      begin
          GutExecute('delete from INFORMESIMPRIMIR where C_TRACTAMENT = %d and TIPUS = "TRS" and NOM_INFORME = "%s"',
                     [qInforme.FieldByName('C_Tractament').AsInteger, FitxerOrigen],
                     False);
      end;

      wData.IBTransGutt.CommitRetaining;
    EXCEPT
      on e: Exception do
      begin
          FerError('Hi ha hagut un error en finalitzar l''informe: ' + NLine + e.Message);
          wData.IBTransGutt.RollbackRetaining;
          Exit;
      end;
    END;

    // Demanem si volen imprimir l'informe
    // Mostrem la forma d'entrega si està indicada
    if (qInforme.FieldByName('Entrega').AsString <> '')
    then avisimprimir := 'Voleu imprimir ara l''informe? ' + NLine +
                         'La forma d''entrega indicada és: ' + qInforme.FieldByName('Entrega').AsString
    else avisimprimir := 'Voleu imprimir ara l''informe? ';

    if AvisoNS(avisimprimir) then
    begin
        // Imprimim l'informe
        ShellExecute(0, 'print', PChar(FitxerDesti), '', '', 0);
        // Registrem l'acció (impressió)
        GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA) values (%d, 11, "%s", "NOW")', [ID_Informe, C_Usuari], True);
    end

    // Si no l'han imprès, preguntem si el volen entregar per correu-e en PDF
    else if  AvisoNS('Voldreu enviar-lo per correu electrònic en format PDF?') then
    begin
        // Ruta i nom del fitxer pdf
        PDFEntregar := ConcatFilePath(GutSelect('select RUTA from DIRECTORIS where NOM = "INFORMES_ENTREGAR"', []),
                                      ChangeFileExt(NomInforme, '.pdf'));

        // Si l'arxiu finalitzat ja és un pdf, el copiem a la carpeta temporal "Pendents d'entregar"
        if (ExtractFileExt(NomInforme) = '.pdf') then CopyFile(PChar(FitxerDesti), PChar(PDFEntregar), True)

        // Altrament, el convertim a pdf i el guardem a la carpeta temporal "Pendents d'entregar"
        else begin
            // Obrim l'informe (word) internament
            ObreInforme(FitxerDesti, False, False);
            // L'exportem a PDF
            WordDoc.ExportAsFixedFormat(PDFEntregar, wdExportFormatPDF, False, wdExportOptimizeForPrint, wdExportAllDocument, 1, 1,
                                        wdExportDocumentContent, True, True, wdExportCreateNoBookmarks, True, True, False, EmptyParam);
            // Tanquem el word (no l'hem modificat)
            pGuardarCanvis := False;
            WordApp.Quit(pGuardarCanvis, EmptyParam, EmptyParam);
        end;
        
        Clipboard.AsText := PDFEntregar;
        ShowMessage(Format('Informe PDF preparat per ser entregat: ' + NLine +
                           '%s' + NLine +
                           '(S''ha copiat la ruta de l''informe al portapapers)',
                           [PDFEntregar]));
    end;
end;


procedure TwDataInformesQ.BolcaAPlantillaFinal(ID_Informe: Integer);
var
  NomInforme, Idioma, TipusPresta, NomPlantilla, RutaPlantilla, DocPlantilla, NomPDF: String;
  pTrue, pFalse, pTemplate, pNomPDF, pFileFormat: OleVariant;
begin
    // Obrim l'informe (estem finalitzant, per defecte no s'obre)
    NomInforme := InformePath(ID_Informe);
    ObreInforme(NomInforme, False, False);

    // Determinem la plantilla definitiva en funció de l'idioma i la prestació (IG o GBCN)
    Idioma := GutSelect('select IDIOMA from INFORMES_PLANTILLES where C_PLANTILLA = %d',
                        [qInforme.FieldByName('C_Plantilla').AsInteger]);

    if ('C' = GutSelect('select P.ESEASE from TRACTAMENTS T join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO where C_TRACTAMENT = %d',
                        [qInforme.FieldByName('C_Tractament').AsInteger]))
    then TipusPresta := ' - GBCN - '
    else TipusPresta := ' - IG - ';

    NomPlantilla := Idioma + TipusPresta + 'Plantilla final.dotm';
    RutaPlantilla := GutSelect('select RUTA from DIRECTORIS where NOM = "INFORMES_PLANTILLES"', []);
    DocPlantilla  := ConcatFilePath(RutaPlantilla, NomPlantilla);

    // Obrim un nou arxiu amb aquesta plantilla i l'afegim a la llista de documents
    pTrue  := True;
    pFalse := False;
    pTemplate := DocPlantilla;
    WordDocD := WordApp.Documents.Add(pTemplate, pFalse, EmptyParam, pFalse);

    // Copiem la capçalera de l'informe
    WordDoc.Activate;
    WordApp.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
    WordApp.Selection.WholeStory;
    WordApp.Selection.Copy;
    // L'enganxem a la capçalera del nou document
    WordDocD.Activate;
    WordApp.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
    WordApp.Selection.PasteAndFormat(wdFormatOriginalFormatting);

    // Copiem el cos de l'informe
    WordDoc.Activate;
    WordApp.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
    WordApp.Selection.WholeStory;
    WordApp.Selection.Copy;
    // L'enganxem al cos del nou document
    WordDocD.Activate;
    WordApp.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
    WordApp.Selection.PasteAndFormat(wdFormatOriginalFormatting);

    // Tanquem l'informe antic (no hi ha canvis)
    WordDoc.Close(pFalse, EmptyParam, EmptyParam);
    // Esperem que es tanqui per sobreescriure'l amb el definitiu
    Sleep(2000);

    // Passem a PDF l'informe generat i eliminem l'antic
    NomPDF  := ChangeFileExt(NomInforme, '.pdf');
    pNomPDF := NomPDF;
    WordDocD.ExportAsFixedFormat(pNomPDF, wdExportFormatPDF, False, wdExportOptimizeForPrint, wdExportAllDocument, 1, 1,
                                 wdExportDocumentContent, True, True, wdExportCreateNoBookmarks, True, True, False, EmptyParam);
    // Eliminem el document original
    DeleteFile(NomInforme);

    // Modifiquem el nom de l'arxiu a la taula informes
    GutExecute('update INFORMES set ARXIU = "%s" where ID_INFORME = %d', [ExtractFileName(NomPDF), ID_Informe], True);
    // Refresquem la query Informes perquè agafi el nou nom d'arxiu
    qInforme.Close;
    qInforme.Open;

    // Tanquem el document generat amb la plantilla definitiva, sense guardar-lo (l'hem passat a PDF)
    WordDocD.Close(pFalse, EmptyParam, EmptyParam);

    // Netegem el clipboard
    Clipboard.Clear;
end;


procedure TwDataInformesQ.ArxivaInforme(ID_Informe: Integer; C_Usuari: String);
var
  FitxerOrigen, FitxerDesti, NomInforme: String;
begin
    LocalitzaInforme(ID_Informe);

    TRY
        if (not qInforme.FieldByName('Arxiu').IsNull) and (qInforme.FieldByName('Arxiu').AsString <> '') then
        begin
            FitxerOrigen := GutSelect('select RUTA from DIRECTORIS where NOM="INFORMES_F2"',[]);
            FitxerDesti  := GutSelect('select RUTA from DIRECTORIS where NOM="INF_CEX_ARXIVATS"',[]);
            FitxerDesti  := IdentificaDirectori(FitxerDesti, qInforme.FieldByName('C_Historia').AsString);

            if not MoveFile(PAnsiChar(FitxerOrigen+'\'+qInforme.FieldByName('Arxiu').AsString),PAnsiChar(FitxerDesti+'\'+qInforme.FieldByName('Arxiu').AsString)) then
            begin FerError('Hi ha hagut un error en moure el fitxer a la carpeta final'); Abort; end;
        end;

        // Canviem l'estat de l'informe i actualitzem l'arxiu
        GutExecute('update INFORMES set C_ESTAT = 11 where ID_INFORME = %d', [ID_Informe], False);

        // Registrem l'acció (arxivar)
        GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA, COMENTARI) values (%d, 18, "%s", "NOW", %d)', [ID_Informe, C_Usuari, qInforme.FieldByName('C_Estat').AsInteger], False);

        wData.IBTransGutt.CommitRetaining;
    EXCEPT
        on e: Exception do
        begin
            FerError('Hi ha hagut un error en finalitzar l''informe: ' + NLine + e.Message);
            wData.IBTransGutt.RollbackRetaining;
            Exit;
        end;
    END;

end;


procedure TwDataInformesQ.DesArxivaInforme(ID_Informe: Integer; C_Usuari: String);
var
  FitxerOrigen, FitxerDesti, NomInforme, comentari: String;
  estat: Integer;
begin
    LocalitzaInforme(ID_Informe);

    TRY
        if (not qInforme.FieldByName('Arxiu').IsNull) and (qInforme.FieldByName('Arxiu').AsString <> '') then
        begin
            FitxerOrigen := GutSelect('select RUTA from DIRECTORIS where NOM="INF_CEX_ARXIVATS"',[]);
            FitxerOrigen := IdentificaDirectori(FitxerOrigen, qInforme.FieldByName('C_Historia').AsString);
            FitxerDesti  := GutSelect('select RUTA from DIRECTORIS where NOM="INFORMES_F2"',[]);

            if not MoveFile(PAnsiChar(FitxerOrigen+'\'+qInforme.FieldByName('Arxiu').AsString),PAnsiChar(FitxerDesti+'\'+qInforme.FieldByName('Arxiu').AsString)) then
            begin FerError('Hi ha hagut un error en moure el fitxer a la carpeta final'); Abort; end;
        end;

        comentari := GutSelect('select comentari from informes_reg where id_informe = %d and accio = 18 order by linia desc rows 1',[ID_Informe]);
        if (comentari = '') then estat := 6
                            else estat := StrToInt(comentari);

        // Canviem l'estat de l'informe i actualitzem l'arxiu
        GutExecute('update INFORMES set C_ESTAT = %d where ID_INFORME = %d', [estat, ID_Informe], False);
        GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA) ' +
                   'values (%d, 20, "%s", "NOW")',
                   [ID_Informe, C_Usuari], False);

        wData.IBTransGutt.CommitRetaining;
    EXCEPT
        on e: Exception do
        begin
            FerError('Hi ha hagut un error en finalitzar l''informe (1): ' + NLine + e.Message);
            wData.IBTransGutt.RollbackRetaining;
            Exit;
        end;
    END;

end;


// VIDSIGNER
function TwDataInformesQ.GetToken: String;
begin
    if wData.ES_PROVA then Result := GetVIDSignerToken('GuttmannClientDemo',
                                                       'qogOYF301gseglg',
                                                       'INSTITUTGUTTMANNSubsDemo',
                                                       'x4dwf6WRcYwjU3sE7xpd')
                      else Result := GetVIDSignerToken('GuttmannSITClient',
                                                       'I6xW0hF132z80lm',
                                                       'GuttmannSITSubscription',
                                                       'dUveTrKWcaydnHbtEjJ2');
end;


procedure TwDataInformesQ.SaveBase64ToPDF(const Base64Data, FilePath: string);
var
  InputStream: TStringStream;
  OutputStream: TMemoryStream;
begin
    // Crear fluxos
    InputStream := TStringStream.Create(Base64Data);
    OutputStream := TMemoryStream.Create;
    try
      // Decodificar el text Base64 ? binari
      DecodeStream(InputStream, OutputStream);
      // Guardar al disc
      OutputStream.SaveToFile(FilePath);
    finally
      InputStream.Free;
      OutputStream.Free;
    end;
end;


function TwDataInformesQ.FileToBase64(const FileName: string): string;
var
  FS: TFileStream;
  SS: TStringStream;
begin
    FS := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      SS := TStringStream.Create('');
      try
        EncodeStream(FS, SS);
        Result := SS.DataString;
      finally
        SS.Free;
      end;
    finally
      FS.Free;
    end;
end;


function TwDataInformesQ.FileFromBase64(const FileName: string): string;
var
  FS: TFileStream;
  SS: TStringStream;
begin
    FS := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      SS := TStringStream.Create('');
      try
        DecodeStream(FS, SS);
        Result := SS.DataString;
      finally
        SS.Free;
      end;
    finally
      FS.Free;
    end;
end;


function TwDataInformesQ.DecodeStringBase64(const S: string): string;
var
  InputStream: TStringStream;
  OutputStream: TStringStream;
begin
    InputStream := TStringStream.Create(S);
    OutputStream := TStringStream.Create('');
    try
      DecodeStream(InputStream, OutputStream);
      Result := OutputStream.DataString;
    finally
      InputStream.Free;
      OutputStream.Free;
    end;
end;


function TwDataInformesQ.EncodeStringBase64(const S: string): string;
var
  InputStream: TStringStream;
  OutputStream: TStringStream;
begin
    InputStream := TStringStream.Create(S);
    OutputStream := TStringStream.Create('');
    try
      EncodeStream(InputStream, OutputStream);
      Result := OutputStream.DataString;
    finally
      InputStream.Free;
      OutputStream.Free;
    end;
end;


function TwDataInformesQ.GetVIDSignerToken(const ClientID, ClientSecret, UserName, Password: string): string;
var
  JSONBody, AuthHeader, Response, Expire: string;
  StatusCode: Integer;
  URL: string;
  Headers: string;
  TokenPos1, TokenPos2: Integer;
  JSONResposta: TlkJSONbase;
begin
    if wData.ES_PROVA then URL := HOST_VIDSIGNER_PRE
                      else URL := HOST_VIDSIGNER_PRO;
    URL := URL + '/oauth/token';
    JSONBody :=
      '{' +
      '"grant_type":"password",' +
      '"username":"' + UserName + '",' +
      '"password":"' + Password + '",' +
      '"scope":"subscription"' +
      '}';

    // Codifiquem clientID:clientSecret en Base64
    AuthHeader := EncodeStringBase64(ClientID + ':' + ClientSecret);

    Headers :=
      'Authorization: Basic ' + AuthHeader + #13#10 +
      'Content-Type: application/json' + #13#10;

    // Fem la crida POST
    Response := HttpPostJsonWinHTTP(URL, JSONBody, StatusCode, Headers);

    if (StatusCode <> -1) and (StatusCode <> 200) then
      raise Exception.CreateFmt('Error %d a obtenir token: %s', [StatusCode, Response]);

    TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
    EXCEPT
      ShowMessage('Error API VIDSigner "GetVIDSignerToken":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
      Exit;
    END;

    Result := JSONResposta.Field['access_token'].Value;
end;


function TwDataInformesQ.GetDispositiusfromVIDSigner(Token: String): String;
var
  URL: String;
  Response: String;
  StatusCode, i, Opcio: Integer;
  JSONResposta: TlkJSONbase;
  JSONArray: TlkJSONlist;
  JSONObject: TlkJSONobject;
  listDispositius: TStrings;
begin
    if Token='' then FerError('Token buit', True);

    if wData.ES_PROVA then URL := HOST_VIDSIGNER_PRE
                      else URL := HOST_VIDSIGNER_PRO;
    URL := URL + '/devices';

    Response := HttpGetWinHTTP(
      URL,
      'Authorization: Bearer ' + Token + #13#10 +
      'Content-Type: application/json',
      StatusCode
    );

    if (StatusCode <> -1) and (StatusCode <> 200) and (StatusCode <> 201)
    then
      raise Exception.CreateFmt('Error HTTP %d: %s', [StatusCode, Response]);

    TRY JSONResposta := TlkJSON.ParseText(Response);
    EXCEPT
      ShowMessage('Error API VIDSigner "GetDispositiusfromVIDSigner":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
      Exit;
    END;

    //  Comprovar que és una llista (array)
    if JSONResposta is TlkJSONlist then
    begin
      JSONArray := TlkJSONlist(JSONResposta);

      // Muntem un stringlist dels dispositius per demanar que en seleccionin un
      listDispositius := TStringList.Create;
      for i := 0 to JSONArray.Count - 1 do
      begin
        JSONObject := TlkJSONobject(JSONArray.Child[i]);
        listDispositius.Add(VarToStr(JSONObject.Field['DeviceDescription'].Value) + ' :' + VarToStr(JSONObject.Field['DeviceName'].Value));
      end;

      Opcio := -1;
      while (Opcio < 0) do Opcio := AvisoListaTStringsSinCancel('Seleccioneu el dispositiu', listDispositius);

      i := Pos(' :',listDispositius[Opcio]);
      Result := Copy(listDispositius[Opcio],i+2,len(listDispositius[Opcio]));
    end
    else begin
      ShowMessage('Error API VIDSigner "GetDispositiusfromVIDSigner":' + NLine + 'La resposta no és un array JSON.');
      Exit;
    end;
end;


procedure TwDataInformesQ.SendDocumentToVIDSigner(const Token, FilePath, Id_Informe: String; Signant: TSignant);
var
  PDFBase64, JSONBody, URL, Headers, Response, language: string;
  StatusCode: Integer;
  JSONUtf8: UTF8String;
  JSONResposta: TlkJSONbase;
  Valor: String;
begin
    PDFBase64 := FileToBase64(FilePath);
    if wData.ES_PROVA then URL := HOST_VIDSIGNER_PRE
                      else URL := HOST_VIDSIGNER_PRO;
    URL := URL + '/documents';

    language := GutSelect('select C.N_CODI2 from CODICAMPS C join INFORMES I on I.IDIOMA = C.C_CODI and C.TIPUSCODI = "IDIOMA" where I.ID_INFORME = %s ',[id_informe]);
    if      language=''   then language := 'ca'
    else if language='ru' then language := 'en';

    if Signant.NomSignant2 = ''
    then JSONBody := '{' +
                      '"DocContent":"' + PDFBase64 + '",' +
                      '"FileName":"' + ExtractFileName(FilePath) + '",' +
                      '"SignatureType":"bio",' +
                      '"ExpirationDate": "' + FormatDateTime('dd/mm/yyyy hh:mm:ss',NowServer + 1) + '",' +
                      '"DeviceName":"' + Signant.DeviceName + '",' +
                      '"OrderedSignatures":false,' +
                      '"Signers":[{' +
                      '  "SignerName":"' + Signant.NomSignant + '",' +
                      '  "NumberID":"' + Signant.NumDoc + '",' +
                      '  "TypeOfID":"' + Signant.TipusDoc + '",' +
                      '  "SignatureType":"bio",' +
                      '  "DeviceName":"' + Signant.DeviceName + '",' +
                      '  "Language": "'+ language +'",' +
                      '  "Visible":{' +
                      '        "Anchor": "SIGNA_AQUI",' +
                      '        "Page": -1,'+               // If set to zero, the signature is invisible. If set to -1, the signature will be placed on the last page
                      '        "PosX": 100,'+
                      '        "PosY": 150,'+
                      '        "SizeX": 100,' +
                      '        "SizeY": 25' +
                      '  }' +
                      '}]' +
                      '}'
    else JSONBody := '{' +
                      '"DocContent":"' + PDFBase64 + '",' +
                      '"FileName":"' + ExtractFileName(FilePath) + '",' +
                      '"SignatureType":"bio",' +
                      '"ExpirationDate": "' + FormatDateTime('dd/mm/yyyy hh:mm:ss',NowServer + 1) + '",' +
                      '"DeviceName":"' + Signant.DeviceName + '",' +
                      '"OrderedSignatures":false,' +
                      '"Signers":[{' +
                      '  "SignerName":"' + Signant.NomSignant + '",' +
                      '  "NumberID":"' + Signant.NumDoc + '",' +
                      '  "TypeOfID":"' + Signant.TipusDoc + '",' +
                      '  "SignatureType":"bio",' +
                      '  "DeviceName":"' + Signant.DeviceName + '",' +
                      '  "Language": "'+ language +'",' +
                      '  "Visible":{' +
                      '        "Anchor": "SIGNA_AQUI",' +
                      '        "Page": -1,'+               // If set to zero, the signature is invisible. If set to -1, the signature will be placed on the last page
                      '        "PosX": 100,'+
                      '        "PosY": 150,'+
                      '        "SizeX": 100,' +
                      '        "SizeY": 25' +
                      '  }},{' +
                      '  "SignerName":"' + Signant.NomSignant2 + '",' +
                      '  "NumberID":"' + Signant.NumDoc2 + '",' +
                      '  "TypeOfID":"' + Signant.TipusDoc2 + '",' +
                      '  "SignatureType":"bio",' +
                      '  "DeviceName":"' + Signant.DeviceName + '",' +
                      '  "Language": "'+ language +'",' +
                      '  "Visible":{' +
                      '        "Anchor": "SIGNA_ALLA",' +
                      '        "Page": -1,'+               // If set to zero, the signature is invisible. If set to -1, the signature will be placed on the last page
                      '        "PosX": 100,'+
                      '        "PosY": 150,'+
                      '        "SizeX": 100,' +
                      '        "SizeY": 25' +
                      '  }' +
                      '}]' +
                      '}';

    Headers :=
      'Authorization: Bearer ' + Token + #13#10 +
      'Content-Type: application/json; charset=utf-8' + #13#10;

    JSONUtf8 := UTF8Encode(JSONBody);
    Response := HttpPostJsonWinHTTP_UTF8(URL, JSONUtf8, StatusCode, Headers);

    if (StatusCode <> -1) and (StatusCode <> 200) and (StatusCode <> 201)
    then
      raise Exception.CreateFmt('Error HTTP %d: %s', [StatusCode, Response]);

    TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
    EXCEPT
      ShowMessage('Error API VIDSigner "SendDocumentToVIDSigner":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
      Exit;
    END;

    TRY
      Valor := JSONResposta.Field['DocGUI'].Value;
    EXCEPT
      on e: Exception do
      begin
          FerError('Hi ha hagut un error en enviar el document a la tauleta (SendDocumentToVIDSigner): ' + NLine + Response + NLine + e.Message);
          wData.IBTransGutt.RollbackRetaining;
          WaitOff;
          Abort;
      end;
    END;

    ShowMessage('Document enviat a la tauleta per a signar');

    GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, DATA, COMENTARI) values (%s, 51, "NOW", "%s")', [Id_Informe, valor]);
end;


function TwDataInformesQ.DesarPdfBase64(Path, DocContent, Historia, FileName: String): String;
var
  Ruta: String;
begin
    Ruta := IdentificaDirectori(Path, Historia);
    SaveBase64ToPDF(DocContent, Ruta + '\' + FileName);
    Result := Ruta;
end;


function TwDataInformesQ.GetDocumentFromVIDSigner(Token, DocID, Historia, DesDe: String; Id_Informe: Integer): Boolean;
var
  JSONBody, URL, Headers, Response, Path, Ruta: string;
  StatusCode: Integer;
  JSONResposta: TlkJSONbase;
  DocContent, AdditionalData: String;
begin
    Result := True;

    if Token='' then
    begin
        Result := False;
        FerError('Token buit', True);
    end;

    if wData.ES_PROVA then URL := HOST_VIDSIGNER_PRE
                      else URL := HOST_VIDSIGNER_PRO;

    // Mirem en quin estat està el document a VIDSigner. En el camp "DocStatus" hi haurà el valor: "Unsigned", "Signed" o "Rejected"
    URL := URL + '/documentinfo/' + DocID;
    Response := HttpGetWinHTTP(
      URL,
      'Authorization: Bearer ' + Token + #13#10 +
      'Content-Type: application/json',
      StatusCode
    );

    if (StatusCode <> -1) and (StatusCode <> 200) and (StatusCode <> 201)
    then begin
        Result := False;
        raise Exception.CreateFmt('Error HTTP %d: %s', [StatusCode, Response]);
    end;

    TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
    EXCEPT
      ShowMessage('Error API VIDSigner "GetDocumentFromVIDSigner":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
      Result := False;
      Exit;
    END;

    if JSONResposta <> nil then
    begin
        Path := GutSelect('select RUTA from DIRECTORIS where NOM = "CONSENTIMENTS"', []);

        if JSONResposta.Field['DocStatus'].Value = 'Rejected' then
        begin
            ShowMessage('El document ha estat rebutjat. El procés nocturn ho registrarà.');
            Result := False;
            // ProcessarRejected(DocId, Path, JSONResposta.Field['FileName'].Value, Id_Informe); des del CC no es pot moure el fitxer pq està obert
        end
        else if JSONResposta.Field['DocStatus'].Value = 'Unsigned' then
             begin
                 ShowMessage('El document està pendent de signar');
                 Result := False;
             end
             else begin
                 if wData.ES_PROVA then URL := HOST_VIDSIGNER_PRE
                                   else URL := HOST_VIDSIGNER_PRO;
                 URL := URL + '/signeddocuments/' + DocID;

                 Response := HttpGetWinHTTP(
                   URL,
                   'Authorization: Bearer ' + Token + #13#10 +
                   'Content-Type: application/json',
                   StatusCode
                 );

                 if (StatusCode <> -1) and (StatusCode <> 200) and (StatusCode <> 201)
                 then begin
                     Result := False;
                     raise Exception.CreateFmt('Error HTTP %d: %s', [StatusCode, Response]);
                 end;

                 TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
                 EXCEPT
                   ShowMessage('Error API VIDSigner "GetDocumentFromVIDSigner":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
                   Result := False;
                   Exit;
                 END;

                 if JSONResposta <> nil then
                 begin
                     nom_fitxer := JSONResposta.Field['FileName'].Value;            // The name of the file
                     DocContent := JSONResposta.Field['DocContent'].Value;          // The content of the Signed PDF codified in Base64
                     AdditionalData := JSONResposta.Field['AdditionalData'].Value;  // Extra information of the document sent in the post document operation

                     Ruta := DesarPdfBase64(Path, DocContent, Historia, nom_fitxer);
                     TRY GutExecute('update INFORMES set C_ESTAT = 10, ARXIU = "%s" where ID_INFORME = %d', [nom_fitxer, Id_Informe], False);
                         GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, DATA, COMENTARI) values (%d,52, "NOW", "%s")', [Id_Informe, AdditionalData], False);
                         GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, DATA)  values (%d, 6, "NOW")', [ID_Informe], False);
                         GutExecute('insert into INFORMES_HCCC (ID_INFORME, PUBLICAR_HC3, PUBLICAR_APP) values (%d, "N", "S")', [ID_Informe], False);

                         // Imprimim l'informe si es finalitza des del Curs Clínic (CC). Des del programa batch FinalitzaInformes (FI) no s'ha d'imprimir
                         // Diu Montse Bernabeu que no imprimim, que el pengem a l'APP del pacient
                         {if (DesDe = 'CC') then
                         begin
                             ShellExecute(0, 'print', PChar(Ruta+'\'+nom_fitxer), '', '', 0);
                             GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, DATA) values (%d, 11, "NOW")', [ID_Informe], False);
                         end;}
                         wData.IBTransGutt.CommitRetaining;
                     EXCEPT
                       on e: Exception do
                       begin
                           Result := False;
                           FerError('Hi ha hagut un error en actualitzar les dades de la sol·licitud (GetDocumentFromVIDSigner): ' + NLine + e.Message);
                           wData.IBTransGutt.RollbackRetaining;
                           WaitOff;
                           Exit;
                       end;
                     END;
                 end
                 else begin
                     if Pos('is not yet signed', Response) > 0
                     then ShowMessage('El document està pendent de signar')
                     else ShowMessage('Error API VIDSigner "GetDocumentFromVIDSigner": '+Response);
                     Result := False;
                 end;
             end;
    end;
end;


function TwDataInformesQ.GetDocumentReportFromVIDSigner(Token, DocID, Historia: String; Id_Informe: Integer): Boolean;
var
  JSONBody, URL, Headers, Response, Path, Ruta: string;
  StatusCode: Integer;
  JSONResposta: TlkJSONbase;
  DocContent: String;
begin
    Result := True;

    if Token='' then
    begin
        Result := False;
        FerError('Token buit', True);
    end;

    if wData.ES_PROVA then URL := HOST_VIDSIGNER_PRE
                      else URL := HOST_VIDSIGNER_PRO;
    URL := URL + '/documents/' + DocID + '/report/ca'; // el report d'evidències el descarreguem sempre en català

    Response := HttpGetWinHTTP(
      URL,
      'Authorization: Bearer ' + Token + #13#10 +
      'Content-Type: application/json',
      StatusCode
    );

    if (StatusCode <> -1) and (StatusCode <> 200) and (StatusCode <> 201)
    then begin
        Result := False;
        raise Exception.CreateFmt('Error HTTP %d: %s', [StatusCode, Response]);
    end;

    TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
    EXCEPT
      Result := False;
      ShowMessage('Error API VIDSigner "GetDocumentReportFromVIDSigner":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
      Exit;
    END;

    if JSONResposta <> nil then
    begin
        DocContent := JSONResposta.Field['DocContent'].Value;
        Path := GutSelect('select RUTA from DIRECTORIS where NOM = "CONSENTIMENTS_REPORT"', [], False);
        Ruta := DesarPdfBase64(Path, DocContent, Historia, nom_fitxer);
        TRY GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, DATA, COMENTARI) values (%d, 53, "NOW", "%s")', [Id_Informe, DocID]);
        EXCEPT
          on e: Exception do
          begin
              Result := False;
              FerError('Hi ha hagut un error en actualitzar les dades de la sol·licitud (GetDocumentReportFromVIDSigner): ' + NLine + e.Message);
              wData.IBTransGutt.RollbackRetaining;
              WaitOff;
              Exit;
          end;
        END;
    end
    else begin
        Result := False;
        ShowMessage('Error API VIDSigner "GetDocumentReportFromVIDSigner" :'+Response);
    end;
end;


procedure TwDataInformesQ.DeleteDocumentFromVIDSigner(Token, DocID, Accio: String; Id_Informe: Integer);
var
  JSONBody, URL, Headers, Response: string;
  StatusCode: Integer;
  JSONResposta: TlkJSONbase;
  DocContent: String;
begin
  if Token='' then FerError('Token buit', True);

  if wData.ES_PROVA then URL := HOST_VIDSIGNER_PRE
                    else URL := HOST_VIDSIGNER_PRO;
  URL := URL + Accio + DocID;

  Response := HttpDeleteWinHTTP(
    URL,
    'Authorization: Bearer ' + Token + #13#10 +
    'Content-Type: application/json',
    StatusCode
  );

  if (StatusCode <> -1) and (StatusCode <> 200) and (StatusCode <> 201)
  then
    raise Exception.CreateFmt('Error HTTP %d: %s', [StatusCode, Response]);

  TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
  EXCEPT
    ShowMessage('Error API VIDSigner "DeleteDocumentFromVIDSigner":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
    Exit;
  END;

//  ShowMessage('HTTP ' + IntToStr(StatusCode) + sLineBreak + Response);
end;


{$IFDEF CURS}
function TwDataInformesQ.PreguntaDispositiu(Id_Informe: Integer; Automatic: Boolean=True): String;
var
  Token: String;
  UH: String;
begin
  Result := '';

  if Automatic then
  begin
      // si el pacient està hospitalitzat, enviem el document al dispositiu de la seva UH
      if wDataVerHis.F.pLlit.Visible then
      begin
          UH := copyleft(wDataVerHis.F.lbLlit.Caption,1);
          Result := GutSelect('SELECT CODI FROM DISPOSITIU WHERE UH = "%s"',[UH]);
      end
      // si el pacient està a CE, mirem l'especialitat del professional que l'està fent
      else if GutSelect('SELECT P.TIPUS                                        '+
                        'FROM INFORMES I                                       '+
                        'JOIN TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMENT '+
                        'JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO    '+
                        'WHERE I.ID_INFORME = %d',[Id_Informe])=2
           then Result := GutSelect('SELECT CODI FROM DISPOSITIU WHERE C_ESPECIAL = "%s"',[wData.UsuariActiu.Especial]);
  end;

  // altrament, llistem tots els dispositius i que en triïn un
  if Result = '' then
  begin
      try
        Token := GetToken;
        Result := GetDispositiusfromVIDSigner(Token);
      except
        on E: Exception do
          ShowMessage('Error: ' + E.Message);
      end;
  end;
end;
{$ENDIF}


procedure TwDataInformesQ.SignaDocument(Id_Informe, DocumentPdf: String; Signant: TSignant);
var
  Token: String;
begin
    try
      Token := GetToken;
      SendDocumentToVIDSigner(
        Token,
        DocumentPdf,
        Id_Informe,
        Signant
      );
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
end;


function TwDataInformesQ.DescarregaPdf(DocID, Historia, DesDe: String; Id_Informe: Integer): Boolean;
var
  Token: String;
begin
    try
      Token := GetToken;
      Result := GetDocumentFromVIDSigner(
        Token,
        DocID,
        Historia,
        DesDe,
        Id_Informe
      );
    except
      on E: Exception do
      begin
          Result := False;
          ShowMessage('Error: ' + E.Message);
      end;
    end;
end;


function TwDataInformesQ.DescarregaReportEvidencies(DocID, Historia: String; Id_Informe: Integer): Boolean;
var
  Token: String;
begin
    try
      Token := GetToken;
      Result := GetDocumentReportFromVIDSigner(
        Token,
        DocID,
        Historia,
        Id_Informe
      );
    except
      on E: Exception do
      begin
          Result := False;
          ShowMessage('Error: ' + E.Message);
      end;
    end;
end;


procedure TwDataInformesQ.EsborraPdf(DocID, Accio: String; Id_Informe: Integer);
var
  Token: String;
begin
    try
      Token := GetToken;
      DeleteDocumentFromVIDSigner(Token, DocID, Accio, Id_Informe);
    except
      on E: Exception do ShowMessage('Error: ' + E.Message);
    end;
end;


function TwDataInformesQ.GetDocumentsList(Token, Option: String): TlkJSONlist;
var
  URL, Headers, Response: string;
  StatusCode: Integer;
  JSONResposta: TlkJSONbase;
begin
    if Token='' then FerError('Token buit', True);

    if wData.ES_PROVA then URL := HOST_VIDSIGNER_PRE
                      else URL := HOST_VIDSIGNER_PRO;
    URL := URL + '/documentlist/' + Option;

  {
• all: Returns the list with all the documents of the subscription.
• unsigned: Returns the list with all the unsigned documents of the subscription.
• rejected: Returns the list with all the rejected documents of the subscription.
• signed: Returns the list with all the signed documents of the subscription.
• signeddownloaded: Returns the list with the signed documents of the subscription that have been
downloaded.
• signednotdownloaded: Returns the list with the signed documents of the subscription that have
not been downloaded yet
  }

    Response := HttpGetWinHTTP(
      URL,
      'Authorization: Bearer ' + Token + #13#10 +
      'Content-Type: application/json',
      StatusCode
    );

    if (StatusCode <> -1) and (StatusCode <> 200) and (StatusCode <> 201)
    then
      raise Exception.CreateFmt('Error HTTP %d: %s', [StatusCode, Response]);

    Response := Trim(Response);

    // Eliminar possible BOM UTF-8
    if (Length(Response) >= 3) and
       (Response[1] = #$EF)    and
       (Response[2] = #$BB)    and
       (Response[3] = #$BF)    then Delete(Response, 1, 3);

    if Response = 'The list of documents are empty' then
    begin
        Result := nil;
        if wData.ES_PROVA then ShowMessage('No hi ha documents signats per descarregar');
        Exit;
    end;

    TRY JSONResposta := TlkJSON.ParseText(Response);
    EXCEPT
      ShowMessage('Error API VIDSigner "GetDocumentsList":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
      Exit;
    END;

    //  Comprovar que és una llista (array)
    if JSONResposta is TlkJSONlist
    then begin
        Result := TlkJSONlist(JSONResposta);
        if wData.ES_PROVA then ShowMessage('# informes '+ Option +': '+IntToStr(JSONResposta.Count));
    end
    else begin
        ShowMessage('Error API VIDSigner "GetDocumentsList":' + NLine + 'La resposta no és un array JSON.');
        Exit;
    end;
end;


procedure TwDataInformesQ.FinalitzaList(DesDe: String; DocumentsList: TlkJSONlist);
var
  i, Id_Informe: Integer;
  JSONObject: TlkJSONobject;
  Invalidat: Boolean;
  DocStatus, DocID, Historia: String;
  PathDocuments, NomDoc: String;
begin
    // Analitzem cada document segons el seu estat
    for i := 0 to DocumentsList.Count - 1 do
    begin
      JSONObject := TlkJSONobject(DocumentsList.Child[i]);
      DocID := VarToStr(JSONObject.Field['DocGUI'].Value);

      // si el document ha estat Invalidat pq s'ha enviat de nou a una tauleta (accio 56), només s'ha d'esborrar de VIDSigner
      qDocID.Close;
      qDocID.ParamByName('DocID').AsString := DocID;
      qDocID.Open;
      qDocID.FetchAll;

      Id_Informe := qDocID.FieldByName('Id_Informe').AsInteger;

      if (Id_Informe <> 0) then
      begin
        Historia   := qDocID.FieldByName('C_Historia').AsString;
        Invalidat  := qDocId.FieldByName('Accio').AsInteger = 56;
        PathDocuments := GutSelect('SELECT RUTA FROM DIRECTORIS WHERE NOM = "INFORMES_PENDENTS"', []);

        // Si s'ha invalidat, només cal esborrar document de vidsigner
        if Invalidat then wDataInformesQ.EsborraPdf(DocID,'/documents/',Id_Informe)
        else begin
            if VarToStr(JSONObject.Field['DocStatus'].Value) = 'Signed' then
            begin
                // descarregar pdf
                if wDataInformesQ.DescarregaPdf(DocID, Historia, DesDe, Id_Informe)
                then
                    // descarregar report d'evidències
                    if wDataInformesQ.DescarregaReportEvidencies(DocID, Historia,Id_Informe) then
                    begin
                        // esborrar document de vidsigner
                        wDataInformesQ.EsborraPdf(DocID,'/SignedDocuments/',Id_Informe);

                        // esborrar pdf pendent de signar i afegir el pdf signat
                        NomDoc := JSONObject.Field['FileName'].Value;
                        DeleteFile(PathDocuments + '\' + NomDoc);  // esborrem el que hi havia a ..\InformesCurs\Pendents\ sense la signatura del pacient
                    end;
            end
            else if VarToStr(JSONObject.Field['DocStatus'].Value) = 'Rejected' then
            begin
                PathDocuments := GutSelect('SELECT D.RUTA FROM DIRECTORIS D JOIN INFORMES_TIPUS IT ON IT.RUTA_INICI = d.NOM '+
                                           'WHERE IT.C_TIPUS = "CNI"', []);
                NomDoc := JSONObject.Field['FileName'].Value;
                ProcessarRejected(DocID, PathDocuments, NomDoc, Id_Informe);
            end;
        end;
      end;
    end;
end;


procedure TwDataInformesQ.ProcessarRejected(DocID, PathDocuments, NomDoc: String; Id_Informe: Integer);
var
  PathDesti, assumpte: String;
begin
    TRY GutExecute('update INFORMES set C_ESTAT = 9 where ID_INFORME = %d',[Id_Informe], False);
        GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, DATA) values (%d, 54, "NOW")', [Id_Informe], False);

        // esborrar document de vidsigner  TODO: es podria retornar si l'ha pogut eliminar? i si no pot, no fer el commit!
        wDataInformesQ.EsborraPdf(DocID, '/documents/', Id_Informe);

        // esborrar pdf pendent de signar i afegir el pdf signat
        PathDesti := GutSelect('select RUTA from DIRECTORIS where NOM = "INFORMES_REFUSATS"', [], False);

        // TODO no es pot moure si s'està al CC pq el tenen obert
        if not MoveFile(PChar(PathDocuments + '\' + NomDoc), PChar(PathDesti + '\' + NomDoc)) then  // movem el fitxer a INFORMES_REFUSATS
        begin
            // TODO fer avisos correu avisant de l'error
            assumpte := Format('No es pot moure informe de %s a %s)',[PathDocuments + '\' + NomDoc, PathDesti + '\' + NomDoc]);
            GutExecute('insert into AVISOS_CORREU (DATA_GENERAT, ID_AVIS, ASSUMPTE, COS) ' +
                       'values ("NOW", 61, "FINALITZA INFORMES", "%s" )                  ', [assumpte], False);
        end;
        
        wData.IBTransGutt.CommitRetaining;
    EXCEPT
      on e: Exception do
      begin
          FerError('Hi ha hagut un error en actualitzar les dades de la sol·licitud (FinalitzaList): ' + NLine + e.Message);
          wData.IBTransGutt.RollbackRetaining;
          WaitOff;
          Exit;
      end;
    END;
end;


procedure TwDataInformesQ.TancaWord(GuardaCanvis: Boolean);
var
  pGuardaCanvis: OleVariant;
begin
    pGuardaCanvis := GuardaCanvis;
    WordApp.Quit(pGuardaCanvis, EmptyParam, EmptyParam);
end;


procedure TwDataInformesQ.AnulaInforme(ID_Informe: Integer; estatAnterior, nouestat: Smallint; Usr: String; Comentari: String);
var
  Ruta, NomDocOrigen, RutaAnulats, NomDocDesti: String;
begin
    LocalitzaInforme(ID_Informe);

    // Canviem l'estat de l'informe
    // Si l'informe estava publicat a l'HC3, s'ha de despublicar.
    // Enviem correu a informàtica perquè no està automatitzat. (Ho fem via trigger)
    GutExecute('update INFORMES set C_ESTAT = %d where ID_INFORME = %d', [nouestat, ID_Informe], False);

    // Registrem l'acció realitzada
    GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA, COMENTARI) values (%d, 9, "%s", "NOW", "%s")',
               [ID_Informe, usr, Comentari],
               False);

    // Guardem l'estat anterior a l'anul·lació (sempre que no sigui Pendent d'anul·lar pq ja ho hem guardat abans)
    if (estatAnterior <> 8) then
    GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA, COMENTARI) values (%d, 99, "%s", "NOW", "%s")',
               [ID_Informe, usr, IntToStr(estatAnterior)],
               False);

    // Si l'anul·lació és definitiva l'eliminem d'INFORMESIMPRIMIR
    if  (nouestat = 9)
    then GutExecute('delete from INFORMESIMPRIMIR where ID_INFORME = %d', [ID_Informe], False);

    // Si l'anul·lació és definitiva, movem l'arxiu (si existeix) a la carpeta Anul·lats
    if (nouestat = 9) and (qInforme.FieldByName('Arxiu').AsString <> '') then
    begin
        // Si l'informe estava finalitzat, estarà a "ruta_fi" (altrament, a "ruta_inici")
        if (qInforme.FieldByName('C_Estat').AsInteger = 10)
        then Ruta := IdentificaDirectori(GutSelect('select D.RUTA from DIRECTORIS D '+
                                                   'join INFORMES_TIPUS IT on D.NOM = IT.RUTA_FI '+
                                                   'where IT.C_TIPUS = "%s" ', [qInforme.FieldByName('C_Tipus').AsString]),
                                         qInforme.FieldByName('C_Historia').AsString)
        else Ruta := GutSelect('select D.RUTA from DIRECTORIS D '+
                               'join INFORMES_TIPUS IT on D.NOM = IT.RUTA_INICI '+
                               'where IT.C_TIPUS = "%s" ', [qInforme.FieldByName('C_Tipus').AsString]);

        NomDocOrigen := ConcatFilePath(Ruta, qInforme.FieldByName('Arxiu').AsString);
        RutaAnulats  := GutSelect('select RUTA from DIRECTORIS where NOM = "INFORMES_ANULATS"' ,[]);
        NomDocDesti  := ConcatFilePath(RutaAnulats, qInforme.FieldByName('Arxiu').AsString);
        MoveFile(PChar(NomDocOrigen), PChar(NomDocDesti));
    end;

    wData.IBTransGutt.CommitRetaining;
end;

function TwDataInformesQ.DesAnulaInforme(ID_Informe: Integer; Usr: String): Smallint;
var
  nouEstat: Smallint;
  Ruta, NomInforme, NomDocOrigen, RutaAnulats, NomDocDesti: String;
begin
    NomInforme := InformePath(ID_Informe);     // això també localitza l'informe (a la query qInforme)
    nouEstat := GutSelect('select comentari from INFORMES_REG where Id_Informe = %d and accio=99 order by linia desc rows 1', [ID_Informe]);

    // Canviem l'estat de l'informe
    GutExecute('update INFORMES set C_ESTAT = %d where ID_INFORME = %d', [nouEstat, ID_Informe], False);

    // Registrem l'acció realitzada
    GutExecute('insert into INFORMES_REG (ID_INFORME, ACCIO, C_USUARI, DATA) values (%d, 16, "%s", "NOW")',
               [ID_Informe, Usr],
               False);

    Result := nouEstat;

    // Si l'informe s'ha de publicar a l'HC3, s'ha d'insertar a INFORMES_HCCC (es fa per trigger?)

    // Si l'informes es autogestionat i està pendent de finalitzar/publicar, l'insertem a INFORMESIMPRIMIR
    if  (nouEstat = 6)
    and (qInforme.FieldByName('Gestionat').AsInteger = 9)
    then begin
        // El deixem a InformesImprimir perquè es finalitzi automàticament (el GeneraPDF el mourà a la RutaFi que correspongui)
        Ruta        := IdentificaDirectori(qInforme.FieldByName('Ruta_Fi').AsString, qInforme.FieldByName('C_Historia').AsString);
        NomDocDesti := JustificaC(qInforme.FieldByName('C_Historia').AsString, 5, '0') +
                       qInforme.FieldByName('C_Tipus').AsString +
                       FormatDateTime('yyyymmdd', AVUI) +
                       Usr + '-' +
                       IntToStr(ID_Informe) +
                       ExtractFileExt(NomInforme);

        GutExecute('insert into INFORMESIMPRIMIR (C_TRACTAMENT, TIPUS, NOM_INFORME, DATA_VALIDAT, NOM_DESTI, SIGNAT, METGE_VALIDA, ID_INFORME) '+
                   'values (%d, "%s", "%s", "%s", "%s", "N", "%s", %d)',
                   [qInforme.FieldByName('C_Tractament').AsInteger,
                    qInforme.FieldByName('C_Tipus').AsString,
                    NomInforme,
                    FormatDateTime('dd.mm.yyyy hh:nn:ss', ARA),
                    ConcatFilePath(Ruta, NomDocDesti),
                    Usr,
                    ID_Informe],
                    False);
    end;

    // Si hi ha arxiu
    if (qInforme.FieldByName('Arxiu').AsString <> '') then
    begin
        // Si l'informe estava finalitzat, estarà a "ruta_fi" (altrament, a "ruta_inici")
        if (qInforme.FieldByName('C_Estat').AsInteger = 10)
        then Ruta := IdentificaDirectori(qInforme.FieldByName('Ruta_Fi').AsString, qInforme.FieldByName('C_Historia').AsString)
        else Ruta := ConcatFilePath(qInforme.FieldByName('Ruta_Inici').AsString, qInforme.FieldByName('C_Historia').AsString);

        RutaAnulats  := GutSelect('select RUTA from DIRECTORIS where NOM = "INFORMES_ANULATS"' ,[]);        
        NomDocOrigen := ConcatFilePath(RutaAnulats, qInforme.FieldByName('Arxiu').AsString);
        NomDocDesti  := ConcatFilePath(Ruta, qInforme.FieldByName('Arxiu').AsString);
        MoveFile(PChar(NomDocOrigen), PChar(NomDocDesti));
    end;

    wData.IBTransGutt.CommitRetaining;
end;

procedure TwDataInformesQ.EliminaInforme(ID_Informe: Integer; solicitud: Boolean);
begin
    GutExecute('delete from INFORMES_LIN     where ID_INFORME = %d', [ID_Informe]);
    GutExecute('delete from INFORMES_HCCC    where ID_INFORME = %d', [ID_Informe]);
    if solicitud then
    begin
        GutExecute('delete from INFORMES_REG where ID_INFORME = %d', [ID_Informe]);
        GutExecute('delete from INFORMES     where ID_INFORME = %d', [ID_Informe]);
    end
    else begin
        GutExecute('delete from INFORMES_REG where ID_INFORME = %d and LINIA > 1', [ID_Informe]);
        GutExecute('update INFORMES set C_PLANTILLA = NULL, C_ESTAT = 0, IDIOMA = NULL where ID_INFORME = %d', [ID_Informe]);
    end;
end;


end.





///////////////////////////
{
procedure TwDataInformesQ.OmpleTags_(fase: Smallint; C_Plantilla: Integer; C_Usuari: String; data_i: TDateTime=0; data_f: TDateTime=0);
var
  t_proteccio: TOleEnum;
  missatge: String;
  i: integer;
  TextLlarg: String;
  PageSetup, pIndex, pPassword, pTrue, pFalse, pWrap, pFindText, pReplaceWith, pReplace, pUnit, pType: OleVariant;
  TagTrobat: Boolean;
  Medicacio: TStrings;
begin
    ARA := NowServer;
    AVUI := DateOf(ARA);

    // Recorrem els TAGS de la plantilla per anar-los omplint
    qTags.Close;
    qTags.ParamByName('c_plantilla').AsInteger := C_Plantilla;
    qTags.ParamByName('c_historia').Assign(qInforme.FieldByName('C_Historia'));
    qTags.ParamByName('c_tractament').Assign(qInforme.FieldByName('C_Tractament'));
    qTags.ParamByName('fase').AsInteger := fase;
    qTags.ParamByName('c_usuari').AsString := C_Usuari;
    qTags.ParamByName('id_informe').AsInteger := qInforme.FieldByName('ID_Informe').AsInteger;
    qTags.ParamByName('data_i').AsDateTime := data_i;
    qTags.ParamByName('data_f').AsDateTime := data_f;
    qTags.Open;

    WordDoc.Activate;

    // Desprotegim el document per poder informar totes les variables (si estava protegit)
    t_proteccio := WordDoc.ProtectionType;
    if (t_proteccio <> wdNoProtection) then
    begin
        pPassword := 'asincrono';
        WordDoc.Unprotect(pPassword);
    end;

    PageSetup := WordDoc.Sections.Item(1).PageSetup;

    while not qTags.Eof do
    begin
        // Cerquem i substituïm l'etiqueta en curs
        pTrue        := True;
        pFalse       := False;
        pFindText    := qTags.FieldByName('Tag').AsString;

        // Medicació: si la procedure retorna la paraula "FARMATOOLS", cridem el WS de medicació perquè ens retorni totes les prescripcions actives.
        // (Un cop implementat el bolcat de medicació de forma estructurada, haurem de cridar igualment el WS però la procedure retornarà el text formatat segons l'idioma)
        if (qTags.FieldByName('Valor').AsString = 'WS_FARMATOOLS') then
        begin
            {$IFDEF CURS
            Medicacio := TStringList.Create;
            TRY
              TRY
                if (OmpleTractament(qInforme.FieldByName('C_Tractament').AsInteger).Data_Alta < AVUI)
                then Medicacio := BuscaMedicacio(qInforme.FieldByName('C_Tractament').AsInteger, False, True)
                else Medicacio := BuscaMedicacio(qInforme.FieldByName('C_Tractament').AsInteger, True, True);
              EXCEPT on e: Exception do Medicacio.Add('Error en buscar la medicació a FT' + NLine + e.Message);
              END;
              
              // Si no trobem medicació (perquè no n'hi ha o perquè el WS ha retornat error),
              // avisem i preguntem si volen que es torni a intentar el bolcat més endavant.
              if (Medicacio[0] <> '')
              and AvisoSN(Medicacio[0] + NLine + NLine +
                          'Voldreu que el sistema torni a intentar el bolcat de medicació en una propera edició de l''informe? ')
              then begin
                  TextLlarg    := '';
                  pReplaceWith := qTags.FieldByName('Tag').AsString;
                  pWrap        := wdFindContinue;
              end
              // Altrament, substituïm el TAG per la medicació que hagi retornat el WS (pot estar buida)
              else begin
                  TextLlarg    := Medicacio[1];
                  pReplaceWith := '';
                  pWrap        := wdFindStop;

                  // La bolquem també a l'ítem perquè no torni a avisar (l'inserim perquè, en no sortir al formulari, no s'ha creat)
                  insInformesLin.Prepare;
                  insInformesLin.ParambyName('id_informe').AsInteger := qInforme.FieldByName('ID_Informe').AsInteger;
                  insInformesLin.ParambyName('c_item'    ).AsInteger := qTags.FieldByName('C_Item').AsInteger;
                  insInformesLin.ParambyName('anotacio'  ).AsString  := Medicacio[1] + '.'; // hi afegim un punt per si estava buida
                  insInformesLin.ParambyName('c_usuari'  ).AsString  := C_Usuari;
                  insInformesLin.ExecSQL;
              end;
            FINALLY
              Medicacio.Free;
            END;
            {$ENDIF
        end

        // Si el valor a inserir està buit i l'ítem té SQL de comprovació, cal tornar a cercar la informació ara, amb l'SQL de Bolcatge:
        else if (qTags.FieldByName('Valor').AsString = '') and (qTags.FieldByName('SQL_Comprova').AsString <> '') then
        begin
            // Primer comprovem si està tot ple
            qBolcatge.Close;
            qBolcatge.SQL.Text := qTags.FieldByName('SQL_Comprova').AsString;
            qBolcatge.Prepare;
            for i := 0 to qBolcatge.ParamCount-1 do
            begin
                if (qBolcatge.Params[i].Name = 'c_historia')   then qBolcatge.Params[i].AsInteger := qInforme.FieldByName('C_Historia').AsInteger;
                if (qBolcatge.Params[i].Name = 'c_tractament') then qBolcatge.Params[i].AsInteger := qInforme.FieldByName('C_Tractament').AsInteger;
                if (qBolcatge.Params[i].Name = 'idioma')       then qBolcatge.Params[i].AsInteger := qTags.FieldByName('Idioma').AsInteger;
                if (qBolcatge.Params[i].Name = 'c_usuari')     then qBolcatge.Params[i].AsString  := C_Usuari;
            end;
            qBolcatge.Open;
            missatge := Trim(qBolcatge.FieldByName('Resposta').AsString);

            // Si la comprovació retorna un missatge, fem la pregunta "Bolcar igualment la informació?"
            // Bolquem la informació si està completa o si volen bolcar-la igualment.
            if (missatge = '') or AvisoNS(missatge) then
            begin
                qBolcatge.Close;
                qBolcatge.SQL.Text := qTags.FieldByName('SQL_Bolcatge').AsString;
                qBolcatge.Prepare;
                for i := 0 to qBolcatge.ParamCount-1 do
                begin
                    if (qBolcatge.Params[i].Name = 'c_historia')   then qBolcatge.Params[i].AsInteger := qInforme.FieldByName('C_Historia').AsInteger;
                    if (qBolcatge.Params[i].Name = 'c_tractament') then qBolcatge.Params[i].AsInteger := qInforme.FieldByName('C_Tractament').AsInteger;
                    if (qBolcatge.Params[i].Name = 'idioma')       then qBolcatge.Params[i].AsInteger := qTags.FieldByName('Idioma').AsInteger;
                    if (qBolcatge.Params[i].Name = 'c_usuari')     then qBolcatge.Params[i].AsString  := C_Usuari;
                end;
                qBolcatge.Open;

                TextLlarg    := Trim(qBolcatge.FieldByName('Anotacio').AsString);
                pReplaceWith := '';
                pWrap        := wdFindStop;

                // La bolquem també a l'ítem perquè no torni a avisar
                updInformesLin.Prepare;
                updInformesLin.ParambyName('id_informe').AsInteger := qInforme.FieldByName('ID_Informe').AsInteger;
                updInformesLin.ParambyName('c_item'    ).AsInteger := qTags.FieldByName('C_Item').AsInteger;
                updInformesLin.ParambyName('anotacio'  ).AsString  := Trim(qBolcatge.FieldByName('Anotacio').AsString) + '.'; // hi afegim un punt per si estava buida
                updInformesLin.ParambyName('c_usuari'  ).AsString  := C_Usuari;
                updInformesLin.ExecSQL;
            end
            // Si diuen que no, no la bolquem i mantenim el TAG per bolcar en futures ocasions
            else begin
                TextLlarg    := '';
                pReplaceWith := pFindText;
                pWrap        := wdFindContinue;
            end;
        end

        // Si el text que hem de col·locar és massa llarg, el Find-Replace no funciona. L'escriurem manualment després
        else if (qTags.FieldByName('Ordre').AsInteger < 0) then begin TextLlarg    := qTags.FieldByName('Valor').AsString;  pReplaceWith := '';  pWrap := wdFindStop;     end
                                                           else begin pReplaceWith := qTags.FieldByName('Valor').AsString;  TextLlarg    := '';  pWrap := wdFindContinue; end;

        // Si el TAG té diferents línies (diagnòstics automàtics, per exemple) o si l'escrivim manualment després (Evol_Mensual),
        // només el substituim una vegada, per quedar-nos-hi col·locats i afegir-hi els següents valors
        if (qTags.FieldByName('Ordre').AsInteger = 0) then pReplace := wdReplaceAll
                                                      else pReplace := wdReplaceOne;

        // Si la 1a pàgina té capçalera diferent:
        if PageSetup.DifferentFirstPageHeaderFooter then
        begin
            // Primer busquem el tag a la 1a capçalera
            WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekFirstPageHeader;
            pUnit := wdStory;
            WordApp.Selection.HomeKey(pUnit, EmptyParam);

            TagTrobat := WordApp.Selection.Find.Execute(pFindText, pTrue, pTrue, pFalse, pFalse, pFalse, pTrue, pWrap, pFalse,
                                                        pReplaceWith, pReplace, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
            // Si el text que hem de col·locar és massa llarg (ie: no hem fet replace) i hi havia TAG per substiuir, l'escrivim ara
            if (TextLlarg <> '') and TagTrobat then WordApp.Selection.TypeText(TextLlarg);

            // Anem a la capçalera següent (per si és diferent de la 1a).
            // Posem un TRY per si en aquest punt només s'ha generat una pàgina.
            // (Els tags de la 2a capçalera són %NOMCOMPLET% i %NHC%. Com que s'ordenen per TAG, es processaran cap al final, quan ja s'hagi omplert el cos de l'informe.
            //  Si en algun cas no s'arribessin a omplir, hauríem de posar un nou camp a Informes_Tags (És_2a_Capçalera) perquè es processin al final.)
            TRY
              WordDoc.ActiveWindow.ActivePane.View.NextHeaderFooter;
              pUnit := wdStory;
              WordApp.Selection.HomeKey(pUnit, EmptyParam);

              TagTrobat := WordApp.Selection.Find.Execute(pFindText, pTrue, pTrue, pFalse, pFalse, pFalse, pTrue, pWrap, pFalse,
                                                          pReplaceWith, pReplace, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
              // Si el text que hem de col·locar és massa llarg (ie: no hem fet replace) i hi havia TAG per substiuir, l'escrivim ara
              if (TextLlarg <> '') and TagTrobat then WordApp.Selection.TypeText(TextLlarg);
            EXCEPT
            END;
        end
        // Altrament, busquem a la capçalera global
        else begin
            WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
            pUnit := wdStory;
            WordApp.Selection.HomeKey(pUnit, EmptyParam);

            TagTrobat := WordApp.Selection.Find.Execute(pFindText, pTrue, pTrue, pFalse, pFalse, pFalse, pTrue, pWrap, pFalse,
                                                        pReplaceWith, pReplace, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
            // Si el text que hem de col·locar és massa llarg (ie: no hem fet replace) i hi havia TAG per substiuir, l'escrivim ara
            if (TextLlarg <> '') and TagTrobat then WordApp.Selection.TypeText(TextLlarg);
        end;

        // Després als quadres de text
        for i := 1 to WordDoc.Shapes.Count do
        begin
            WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
            pUnit := wdStory;
            WordApp.Selection.HomeKey(pUnit, EmptyParam);
            pIndex := i;
            WordDoc.Shapes.Range(pIndex).Select(pFalse);
            TagTrobat := WordApp.Selection.Find.Execute(pFindText, pTrue, pTrue, pFalse, pFalse, pFalse, pTrue, pWrap, pFalse,
                                                        pReplaceWith, pReplace, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

            if (TextLlarg <> '') and TagTrobat then WordApp.Selection.TypeText(TextLlarg);
        end;

        // Finalment al cos del document
        WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
        pUnit := wdStory;
        WordApp.Selection.HomeKey(pUnit, EmptyParam);

        TagTrobat := WordApp.Selection.Find.Execute(pFindText, pTrue, pTrue, pFalse, pFalse, pFalse, pTrue, pWrap, pFalse,
                                                    pReplaceWith, pReplace, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

        // Si el text que hem de col·locar és massa llarg (ie: no hem fet replace) i hi havia TAG per substiuir, l'escrivim ara
        if (TextLlarg <> '') and TagTrobat then
        begin
            // Primer posem format negreta si cal
            if (qTags.FieldByName('Negreta').AsString = 'S') then
            begin
                WordApp.Selection.Font.Bold := wdToggle;
                WordApp.Selection.Font.BoldBi := wdToggle;
            end;
            // i ara escrivim 
            WordApp.Selection.TypeText(TextLlarg);
        end;
        WordApp.Selection.Font.Bold := wdToggle;
        WordApp.Selection.Font.BoldBi := wdToggle;

        qTags.Next;

        // Si tenim més línies del mateix TAG, les inserim ara
        while (not qTags.Eof) and (pFindText = qTags.FieldByName('Tag').AsString) and TagTrobat do
        begin
            WordApp.Selection.EndKey(EmptyParam, EmptyParam);  // default:  wdLine, wdMove
            WordApp.Selection.TypeParagraph;
            WordApp.Selection.TypeText(qTags.FieldByName('Valor').AsString);
            qTags.Next;
        end;
    end;

    pUnit := wdStory;
    WordApp.Selection.HomeKey(pUnit, EmptyParam);  // anem al principi del document

    // Protegim el document altre cop, si estava protegit:
    if (t_proteccio <> wdNoProtection) then
    begin
        pType := t_proteccio;
        pFalse := False;
        WordDoc.Protect(pType, pFalse, pPassword, pFalse, pFalse);
    end;
end;
}
