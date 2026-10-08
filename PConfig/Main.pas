unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TaskBar, Menus, StdCtrls, ComCtrls, ToolWin, HYDialogConsulta, Grids, DbGrids, Db, DbTables,
  Buttons, IBQuery;

type
  TwMain = class(TForm)
    TaskBar1: TTaskBar;
    MainMenu: TMainMenu;
    Configuraci1: TMenuItem;
    Basics1: TMenuItem;
    Cdis1: TMenuItem;
    Consultes1: TMenuItem;
    Accesos2: TMenuItem;
    Sortir1: TMenuItem;
    FitxerAccesos1: TMenuItem;
    FitxerUsuaris: TMenuItem;
    CursClinic1: TMenuItem;
    InformesCapceleres1: TMenuItem;
    Histores1: TMenuItem;
    Usra1: TMenuItem;
    Unitats1: TMenuItem;
    Grups1: TMenuItem;
    Especialitats1: TMenuItem;
    Festius1: TMenuItem;
    N1: TMenuItem;
    Drets1: TMenuItem;
    CodigsPrestacions1: TMenuItem;
    CdigsInterConsultes1: TMenuItem;
    CodigsRevisions1: TMenuItem;
    PrestacionsActives1: TMenuItem;
    InterConsultes1: TMenuItem;
    Revisions1: TMenuItem;
    N2: TMenuItem;
    AnulacionsdAltes1: TMenuItem;
    Proves: TMenuItem;
    N3: TMenuItem;
    SeguimentAccessos: TMenuItem;
    GDBCheck1: TMenuItem;
    HistoricSeg: TMenuItem;
    CdisObjectius1: TMenuItem;
    Objectius1: TMenuItem;
    Areas1: TMenuItem;
    PrestaActives: THYConsulta;
    Totselstractaments1: TMenuItem;
    Tractaments1: TMenuItem;
    Filiaci1: TMenuItem;
    PrestaList: THYConsulta;
    CodiCamps1: TMenuItem;
    LListadespera1: TMenuItem;
    Basics2: TMenuItem;
    Paisos1: TMenuItem;
    Provincies1: TMenuItem;
    Idiomes1: TMenuItem;
    Vies1: TMenuItem;
    EstatsCivils1: TMenuItem;
    Hospitals1: TMenuItem;
    LlitsiPlantes1: TMenuItem;
    Facturacio1: TMenuItem;
    Factures1: TMenuItem;
    CodiCampsAlfa1: TMenuItem;
    N5: TMenuItem;
    NumerosFacturacio1: TMenuItem;
    Escales1: TMenuItem;
    BlocQuirrgic1: TMenuItem;
    ElementsFacturables1: TMenuItem;
    ContractesSCS1: TMenuItem;
    CodiCobros1: TMenuItem;
    CodiITEMS1: TMenuItem;
    TODOAQI1: TMenuItem;
    HyMenuOptions1: THyMenuOptions;
    ProtocolsRHF1: TMenuItem;
    Seguimentambulatori1: TMenuItem;
    ECB: TMenuItem;
    ECBItems: TMenuItem;
    OrdresMediques: TMenuItem;
    GestiOM1: TMenuItem;
    DesbloqueigRecuperacio: TMenuItem;
    Infermeria: TMenuItem;
    InferGrafica: TMenuItem;
    InferTasques: TMenuItem;
    InferParams: TMenuItem;
    GestFarmacia: TMenuItem;
    MedicamentsHosp: TMenuItem;
    Stocks: TMenuItem;
    General1: TMenuItem;
    ASIA1: TMenuItem;
    EFA1: TMenuItem;
    EnqTRSInfants1: TMenuItem;
    CIQ1: TMenuItem;
    EVSFIG1: TMenuItem;
    ESIG1aV1: TMenuItem;
    ESIGSeguiment1: TMenuItem;
    N6: TMenuItem;
    Escalespendents1: TMenuItem;
    BATERIA1: TMenuItem;
    BateriaInfantil1: TMenuItem;
    SegFarmacia: TMenuItem;
    PEDI1: TMenuItem;
    HistoricGraficaInfer: TMenuItem;
    PlanillesOM1: TMenuItem;
    Intervencions1: TMenuItem;
    Preoperatori1: TMenuItem;
    Claudepas1: TMenuItem;
    EntrevistaDolor1: TMenuItem;
    Educacio1: TMenuItem;
    Educacio2: TMenuItem;
    EduParams: TMenuItem;
    EduDocs: TMenuItem;
    EscItems1: TMenuItem;
    Allaments1: TMenuItem;
    Documentaci1: TMenuItem;
    Informemensual1: TMenuItem;
    N7: TMenuItem;
    Quitdret1: TMenuItem;
    Escalesobligatries1: TMenuItem;
    Previrnec1: TMenuItem;
    RC1: TMenuItem;
    Logopdia1: TMenuItem;
    CodiCampsCurt1: TMenuItem;
    CodisICF1: TMenuItem;
    BloqueigHistories: TMenuItem;
    HistoricRenovacionsOM: TMenuItem;
    CodisICD1: TMenuItem;
    NeuroTraumes1: TMenuItem;
    ICD91: TMenuItem;
    LogdeFiliaci1: TMenuItem;
    Caigudes1: TMenuItem;
    UPP1: TMenuItem;
    Admissions1: TMenuItem;
    Informessollicitats1: TMenuItem;
    Baclofen: TMenuItem;
    LogInformesSollicitats1: TMenuItem;
    DesbloqueigAdm: TMenuItem;
    N4: TMenuItem;
    ClausPas: TMenuItem;
    GrupsLletres1: TMenuItem;
    LogClaus1: TMenuItem;
    RIC1: TMenuItem;
    HistoricFarma: TMenuItem;
    DocsImprimir: TMenuItem;
    Ease1: TMenuItem;
    Pades1: TMenuItem;
    SID1: TMenuItem;
    Voluntariat1: TMenuItem;
    Gimns1: TMenuItem;
    Drenatges: TMenuItem;
    Estocdestupefaents1: TMenuItem;
    Receptesoficialsdestupefaents1: TMenuItem;
    N8: TMenuItem;
    oxinaBotulnica1: TMenuItem;
    Nutricio: TMenuItem;
    TractamentEM: TMenuItem;
    Informes1: TMenuItem;
    Cues1: TMenuItem;
    Horaris1: TMenuItem;
    Gimnas1: TMenuItem;
    Gimnas2: TMenuItem;
    Sollicitudsdingrs1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    MHDA1: TMenuItem;
    N11: TMenuItem;
    Resourceespessant1: TMenuItem;
    EASEPIparmetres1: TMenuItem;
    EASEPladintervenci1: TMenuItem;
    Seguretat1: TMenuItem;
    CodiCamps31: TMenuItem;
    TimeOut: TMenuItem;
    Informes2: TMenuItem;
    Informes3: TMenuItem;
    arreglaRMP1: TMenuItem;
    Passaportpacient1: TMenuItem;
    wCodisPassaport: TMenuItem;
    N12: TMenuItem;
    Farmatools1: TMenuItem;
    Prescripcions1: TMenuItem;
    Facturaci1: TMenuItem;
    Farmatools2: TMenuItem;
    Formafarmacutica1: TMenuItem;
    Freqncies1: TMenuItem;
    Productes1: TMenuItem;
    Unitatsdemesura1: TMenuItem;
    Viesdadministraci1: TMenuItem;
    Dretsautogestionats1: TMenuItem;
    procedure CdigsInterConsultes1Click(Sender: TObject);
    procedure Usra1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Drets1Click(Sender: TObject);
    procedure InformesCapceleres1Click(Sender: TObject);
    procedure FitxerAccesos1Click(Sender: TObject);
    procedure CursClinic1Click(Sender: TObject);
    procedure FitxerUsuarisClick(Sender: TObject);
    procedure Histores1Click(Sender: TObject);
    procedure InterConsultes1Click(Sender: TObject);
    procedure Revisions1Click(Sender: TObject);
    procedure AnulacionsdAltes1Click(Sender: TObject);
    procedure Sortir1Click(Sender: TObject);
    procedure GDBCheck1Click(Sender: TObject);
    procedure SeguimentAccessosClick(Sender: TObject);
    procedure Unitats1Click(Sender: TObject);
    procedure Grups1Click(Sender: TObject);
    procedure Especialitats1Click(Sender: TObject);
    procedure Festius1Click(Sender: TObject);
    procedure CodigsPrestacions1Click(Sender: TObject);
    procedure CodigsRevisions1Click(Sender: TObject);
    procedure HistoricSegClick(Sender: TObject);
    procedure HistoricGraficaInferClick(Sender: TObject);
    procedure HistoricRenovacionsOMClick(Sender: TObject);
    procedure HistoricFarmaClick(Sender: TObject);
    procedure CdisObjectius1Click(Sender: TObject);
    procedure Objectius1Click(Sender: TObject);
    procedure Areas1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PrestacionsActives1Click(Sender: TObject);
    procedure Totselstractaments1Click(Sender: TObject);
    procedure Filiaci1Click(Sender: TObject);
    procedure Tractaments1Click(Sender: TObject);
    procedure PrestaActivesAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure PrestaActivesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure CodiCamps1Click(Sender: TObject);
    procedure LListadespera1Click(Sender: TObject);
    procedure Paisos1Click(Sender: TObject);
    procedure Provincies1Click(Sender: TObject);
    procedure Idiomes1Click(Sender: TObject);
    procedure Vies1Click(Sender: TObject);
    procedure EstatsCivils1Click(Sender: TObject);
    procedure Hospitals1Click(Sender: TObject);
    procedure LlitsiPlantes1Click(Sender: TObject);
    procedure Factures1Click(Sender: TObject);
    procedure CodiCampsAlfa1Click(Sender: TObject);
    procedure NumerosFacturacio1Click(Sender: TObject);
    procedure Escales1Click(Sender: TObject);
    procedure ElementsFacturables1Click(Sender: TObject);
    procedure ContractesSCS1Click(Sender: TObject);
    procedure CodiCobros1Click(Sender: TObject);
    procedure CodiITEMS1Click(Sender: TObject);
    procedure ProtocolsRHF1Click(Sender: TObject);
    procedure SeguimentAmbulatori1Click(Sender: TObject);
    procedure ECBClick(Sender: TObject);
    procedure ECBItemsClick(Sender: TObject);
    procedure GestiOM1Click(Sender: TObject);
    procedure DesbloqueigRecuperacioClick(Sender: TObject);
    procedure InferGraficaClick(Sender: TObject);
    procedure InferTasquesClick(Sender: TObject);
    procedure InferParamsClick(Sender: TObject);
    procedure MedicamentsHospClick(Sender: TObject);
    procedure StocksClick(Sender: TObject);
    procedure ASIA1Click(Sender: TObject);
    procedure EFA1Click(Sender: TObject);
    procedure estBarcelona1Click(Sender: TObject);
    procedure EnqTRSInfants1Click(Sender: TObject);
    procedure CIQ1Click(Sender: TObject);
    procedure EVSFIG1Click(Sender: TObject);
    procedure ESIG1aV1Click(Sender: TObject);
    procedure ESIGSeguiment1Click(Sender: TObject);
    procedure CHART1Click(Sender: TObject);
    procedure Escalespendents1Click(Sender: TObject);
    procedure BATERIA1Click(Sender: TObject);
    procedure BateriaInfantil1Click(Sender: TObject);
    procedure SegFarmaciaClick(Sender: TObject);
    procedure PEDI1Click(Sender: TObject);
    procedure PlanillesOM1Click(Sender: TObject);
    procedure Intervencions1Click(Sender: TObject);
    procedure Preoperatori1Click(Sender: TObject);
    procedure Desbloqueigquirfan1Click(Sender: TObject);
    procedure Claudepas1Click(Sender: TObject);
    procedure EntrevistaDolor1Click(Sender: TObject);
    procedure Educacio1Click(Sender: TObject);
    procedure EduParamsClick(Sender: TObject);
    procedure EduDocsClick(Sender: TObject);
    procedure EscItems1Click(Sender: TObject);
    procedure Allaments1Click(Sender: TObject);
    procedure Documentaci1Click(Sender: TObject);
    procedure Quitdret1Click(Sender: TObject);
    procedure Escalesobligatries1Click(Sender: TObject);
    procedure RC1Click(Sender: TObject);
    procedure Logopdia1Click(Sender: TObject);
    procedure CodiCampsCurt1Click(Sender: TObject);
    procedure CodisICF1Click(Sender: TObject);
    procedure BloqueigHistoriesClick(Sender: TObject);
    procedure NeuroTraumes1Click(Sender: TObject);
    procedure ICD91Click(Sender: TObject);
    procedure LogdeFiliaci1Click(Sender: TObject);
    procedure Caigudes1Click(Sender: TObject);
    procedure UPP1Click(Sender: TObject);
    procedure Informessollicitats1Click(Sender: TObject);
    procedure BaclofenClick(Sender: TObject);
    procedure LogInformesSollicitats1Click(Sender: TObject);
    procedure DesbloqueigAdmClick(Sender: TObject);
    procedure GrupsLletres1Click(Sender: TObject);
    procedure LogClaus1Click(Sender: TObject);
    procedure RIC1Click(Sender: TObject);
    procedure DocsImprimirClick(Sender: TObject);
    procedure Pades1Click(Sender: TObject);
    procedure SID1Click(Sender: TObject);
    procedure Voluntariat1Click(Sender: TObject);
    procedure DrenatgesClick(Sender: TObject);
    procedure Estocdestupefaents1Click(Sender: TObject);
    procedure Receptesoficialsdestupefaents1Click(Sender: TObject);
    procedure oxinaBotulnica1Click(Sender: TObject);
    procedure NutricioClick(Sender: TObject);
    procedure TractamentEMClick(Sender: TObject);
    procedure Informes1Click(Sender: TObject);
    procedure Cues1Click(Sender: TObject);
    procedure Horaris1Click(Sender: TObject);
    procedure Gimnas2Click(Sender: TObject);
    procedure Gimnas1Click(Sender: TObject);
    procedure Sollicitudsdingrs1Click(Sender: TObject);
    procedure Resourceespessant1Click(Sender: TObject);
    procedure EASEPIparmetres1Click(Sender: TObject);
    procedure EASEPladintervenci1Click(Sender: TObject);
    procedure CodiCamps31Click(Sender: TObject);
    procedure TimeOutClick(Sender: TObject);
    procedure Informes2Click(Sender: TObject);
    procedure Informes3Click(Sender: TObject);
    procedure Informemensual1Click(Sender: TObject);
    procedure arreglaRMP1Click(Sender: TObject);
    procedure Passaportpacient1Click(Sender: TObject);
    procedure wCodisPassaportClick(Sender: TObject);
    procedure Formafarmacutica1Click(Sender: TObject);
    procedure Productes1Click(Sender: TObject);
    procedure Unitatsdemesura1Click(Sender: TObject);
    procedure Viesdadministraci1Click(Sender: TObject);
    procedure Prescripcions1Click(Sender: TObject);
    procedure Facturaci1Click(Sender: TObject);
    procedure Dretsautogestionats1Click(Sender: TObject);
  private
   Hoy: TDateTime;
  public
    // parte 52244 - i
    Aplica: Integer;
    LastTraza: LongInt;
    StatusTraza: String;
    Procedure AddStatusTraza(Mark: String);
    // parte 52244 - f
    procedure ObrirTractament(Tractament: Integer);
  end;

var
  wMain: TwMain;

implementation

uses Funciones, Data, FichaInterCon, FichaConfig, FichaAccesos, FichaAreas,
  FichaTraza, FichaFestius, FichaCodiRevi, FichaDrets, FichaEspecial,
  FichaGrups, FichaObjCodis, FichaUnitat,
  FichaObjectius, FichaMetges, FichaInfCabe, DataBasics, FichaFili,
  FichaTractaments, FichaHisto, FichaAnulaAlta, FichaPrestacio,
  FitxaManteniments, FitxaMantenimentLlistadespera, FichaUsra,
  FichaInterCon2, FichaInfRevi, DataAmics, FitxaEstatCivil, FitxaHospital,
  FitxaIdioma, FitxaPais, FitxaProvincia, FitxaVia,
  FitxaMantenimentLlitsiPlantes, FitxaFacturasPConfig, FichaCodiCampsAlfa,
  FitxaNumerosFactu, FitxaEscales, FitxaBlocQuirurgic, FitxaEF, FichaScsContractes,
  FichaCodiCobros, FitxaFactuPConfig, FitxaProtocolsRHF,
  FitxaSeguimentAmbulatoris, FitxaECB, FitxaECBItems, FitxaOMConfig,
  FitxaOMDesbloqueig, FitxaInferGrafica, FitxaInferItems, FitxaInferTasques,
  FitxaMedicaments, FitxaStocks, FitxaEscalaASIA, FitxaEscalaEFA,
  FitxaEscalaBCN, fitxaescalesTRS, FitxaEscalaCIQ, FitxaEscalaEVSF,
  FitxaEscalaESIG1aV, FitxaEscalaESIGSeg, FitxaEscalaCHART,FitxaEscalaBATERIA,
  FitxaEscalesPendents, FitxaEscalaBateriaInf, FitxaAccesFarma, FichaHistoricTraza,
  FitxaHistoricInfer, FitxaHistoricRenovacionsOM, FitxaHistoricFarma,
  FitxaEscalaPEDI, PlanillesOM, FitxaPreoperatori, FitxaBQDesbloqueig,
  FitxaEscEntrevistaDolor, FitxaEducacio, FitxaEduParams,
  FitxaEduDocs, FitxaEscalesItems, FitxaAillaments, DocsInfer, InformeAcessos,
  QuiTeDret, EscObliga, SessionsTRC, SessionsLogopedia, FichaCodiCampsCurt, FichaCodiCamps3,
  FitxaCodiICF, BloqueigHistories, ICDNT, TotICD9,
  FitxaLogFili, FitxaCaigudes, FitxaUPP, FitxaInfSol, FitxaBaclofen, FitxaLogSol,
  FitxaAdmDesbloqueig, FitxaClauDePasPrint, FitxaGrupsLletres , FitxaLogClaus,
  FitxaRICGLF, FitxaDocsImprimir, {-FitxaPades, -}FitxaSID, FitxaVol, FitxaGym,
  FitxaDreantges, FitxaEPFStock, FitxaEPFReceptes, FitxaToxinaBotulinica,
  FitxaNutricioEnteral, FitxaTractEM, FitxaItems, FitxaInformesInfer, FitxaCuaqmatic,
  FitxaHoraris, FitxaInformesNPC, FitxaSolIngres, FitxaResourceE,
  FitxaEASEPIParams, FitxaEASEPI, FitxaTimeOut, FitxaInformesCodis,
  FitxaInformes, FitxaAvisosCorreu, FitxaPassaport, FitxaCodisPassaport,
  FitxaFTFormaFarma, FitxaFTProd, FitxaFTUM, FitxaFTVies, FitxaFTPrescripcions, FitxaFTFacturacio,
  FitxaDretsAutogestionats;

{$R *.DFM}

procedure TwMain.FormCreate(Sender: TObject);
begin
    Proves.Caption := Format('# # #  Entorn: %s  # # #   ', [AnsiUpperCase(wData.Entorn)]);
    Proves.Visible := wData.ES_PROVA or (Application.Tag <> 0);

    Hoy := DateServer;

    if (ParamCount=1) and (ParamStr(1)='CHECK') then GDBCheck1Click(Sender);

    wMain.Show;

    HyMenuOptions1.MountMenu;
    // parte 52244 - i
    LastTraza := 0;
    StatusTraza := '';
    Aplica := 4;
    // parte 52244 - f
end;

// parte 52244 - i
procedure TwMain.AddStatusTraza(Mark: String);
var
 F: TextFile;
 Fitxer: String;
 Linea: String;
begin
     //Evitem que es dupliquin trazas
     if (Pos(Mark,StatusTraza)<>0) then Exit;

     //Afegim la traza vigilant el tamany
     StatusTraza := StatusTraza + Mark;

     //Apuntem al log d'errors la marca que tocaria afegir.
     if (Length(StatusTraza) > 10) and (not wdata.ES_PROVA) then
     begin
       Fitxer := 'G:\USR\maestros\Log\LogCurs.txt';
       TRY
         if FileExists(Fitxer) then
         begin
           AssignFile(F, Fitxer);
           if not FileExists(Fitxer) then Rewrite(F);
           Append(F);
           Linea := '** ' + FormatDateTime('dddd, dd/mm/yyyy hh:nn:ss ', Now) + ' :';
           Linea := Linea + '   | Acces: ' + wData.NO_ACCES;
           Linea := Linea + '   | StatusTraza ha excedit la longitud màxima (10). ' +
                            'REGISTRE ' + IntToStr(LastTraza) + ', TRAZA "' + StatusTraza + '".';
           Writeln(F, Linea);
         end;
       FINALLY
         if FileExists(Fitxer) then CloseFile(F);
       END;
     end;

     StatusTraza := Copy(StatusTraza,1,10);
end;
// parte 52244 - f

Procedure TwMain.ObrirTractament(Tractament:Integer);
begin
    TwFichaTractaments(TwFichaTractaments.Create(Application)).Iniciar(Tractament);
end;

procedure TwMain.CdigsInterConsultes1Click(Sender: TObject);
begin
    AbrirForm(TwFichaInterCon2);
end;

procedure TwMain.Usra1Click(Sender: TObject);
begin
    CrearForm(TwFichaUsra);
end;

procedure TwMain.Drets1Click(Sender: TObject);
begin
    CrearForm(TwFichaDrets);
end;

procedure TwMain.InformesCapceleres1Click(Sender: TObject);
begin
    CrearForm(TwFichaInfCabe);
end;

procedure TwMain.FitxerAccesos1Click(Sender: TObject);
begin
    CrearForm(TwFichaAccesos);
end;

procedure TwMain.CursClinic1Click(Sender: TObject);
begin
    AbrirForm(TwFichaConfig);
end;

procedure TwMain.FitxerUsuarisClick(Sender: TObject);
begin
    CrearForm(TwFichaMetges);
end;

procedure TwMain.Histores1Click(Sender: TObject);
begin
    CrearForm(TwFichaHisto);
end;


procedure TwMain.InterConsultes1Click(Sender: TObject);
begin
    AbrirForm(TwFichaInterCon);
end;

procedure TwMain.Revisions1Click(Sender: TObject);
begin
    AbrirForm(TwFichaInfRevi);
end;

procedure TwMain.AnulacionsdAltes1Click(Sender: TObject);
begin
    CrearForm(TwFichaAnulaAlta);
end;

procedure TwMain.Sortir1Click(Sender: TObject);
begin
    Close;                                                                                                      
end;

procedure TwMain.GDBCheck1Click(Sender: TObject);
begin
    wData.Projecte.SaveToXml;
    wData.Projecte.SuperEstructura;
end;

procedure TwMain.SeguimentAccessosClick(Sender: TObject);
begin
    CrearForm(TwFichaTraza);
end;

procedure TwMain.Unitats1Click(Sender: TObject);
begin
    CrearForm(TwFichaUnitat);
end;

procedure TwMain.Grups1Click(Sender: TObject);
begin
    CrearForm(TwFichaGrups);
end;

procedure TwMain.Especialitats1Click(Sender: TObject);
begin
    CrearForm(TwFichaEspecial);
end;


procedure TwMain.Festius1Click(Sender: TObject);
begin
    AbrirForm(TwFichaFestius);
end;

procedure TwMain.CodigsPrestacions1Click(Sender: TObject);
begin
    CrearForm(TwFichaPrestacio);
end;

procedure TwMain.CodigsRevisions1Click(Sender: TObject);
begin
    CrearForm(TwFichaCodiRevi);
end;

procedure TwMain.HistoricSegClick(Sender: TObject);
begin
    CrearForm(TwFichaHistoricTraza);
end;

procedure TwMain.HistoricGraficaInferClick(Sender: TObject);
begin
    CrearForm(TwFitxaHistoricInfer);
end;

procedure TwMain.HistoricRenovacionsOMClick(Sender: TObject);
begin
    CrearForm(TwFitxaHistoricRenovacionsOM);
end;

procedure TwMain.HistoricFarmaClick(Sender: TObject);
begin
    CrearForm(TwFitxaHistoricFarma);
end;


procedure TwMain.CdisObjectius1Click(Sender: TObject);
begin
    CrearForm(TwFichaObjCodis);
end;

procedure TwMain.Objectius1Click(Sender: TObject);
begin
    CrearForm(TwFichaObjectius);
end;

procedure TwMain.Areas1Click(Sender: TObject);
begin
    CrearForm(TwFichaAreas);
end;

procedure TwMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    CanClose := AvisoSN('Tancar el programa?');
end;

procedure TwMain.PrestacionsActives1Click(Sender: TObject);
begin
    Hoy := DateServer;
    PrestaActives.ExecuteChild;
end;

procedure TwMain.Totselstractaments1Click(Sender: TObject);
begin
    Hoy := DateServer;
    PrestaList.ExecuteChild;
end;

procedure TwMain.Filiaci1Click(Sender: TObject);
begin
// CrearForm(TwFichaFili);
   With TwFichaFili.Create(Application) do Iniciar;
end;

procedure TwMain.Tractaments1Click(Sender: TObject);
begin
    TwFichaTractaments(TwFichaTractaments.Create(Application)).Iniciar;
end;

procedure TwMain.PrestaActivesAlPintarGrid(var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Query: TQuery);
begin
    if State <> [] then Exit;
    if (Query.FieldByName('Data_Alta').IsNull)
    or (Query.FieldByName('Data_Alta').AsDateTime >= Hoy)
    then ColorBrush := clYellow;
end;

procedure TwMain.PrestaActivesAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
    with TwFichaTractaments(CrearForm(TwFichaTractaments)) do
    begin
        Iniciar( Datos.FieldByName('C_Tractament').AsInteger );
    end;
end;

procedure TwMain.CodiCamps1Click(Sender: TObject);
begin
    CrearForm(TwFitxaManteniments);
end;

procedure TwMain.LListadespera1Click(Sender: TObject);
begin
    CrearForm(TwFitxaMantenimentLlistadespera);
end;

procedure TwMain.Paisos1Click(Sender: TObject);
begin
    CrearForm(twFitxaPais);
end;

procedure TwMain.Provincies1Click(Sender: TObject);
begin
    CrearForm(TwFitxaProvincia);
end;

procedure TwMain.Idiomes1Click(Sender: TObject);
begin
    CrearForm( TwFitxaIdioma );
end;

procedure TwMain.Vies1Click(Sender: TObject);
begin
    CrearForm(TwFitxaVia );
end;

procedure TwMain.EstatsCivils1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEstatCivil );
end;

procedure TwMain.Hospitals1Click(Sender: TObject);
begin
    CrearForm(TwFitxaHospital);
end;

procedure TwMain.LlitsiPlantes1Click(Sender: TObject);
begin
    CrearForm(TwFitxaMantenimentLlitsiPlantes);
end;

procedure TwMain.Factures1Click(Sender: TObject);
begin
//    TwFitxaFacturas(TwFitxaFacturas.Create(Application)).Iniciar;
    TwFitxaFactuPConfig(TwFitxaFactuPConfig.Create(Application)).Iniciar;
end;

procedure TwMain.CodiCampsAlfa1Click(Sender: TObject);
begin
    CrearForm(TwFichaCodiCampsalfa);
end;

procedure TwMain.NumerosFacturacio1Click(Sender: TObject);
begin
    CrearForm(TwFitxaNumerosFactu);
end;

procedure TwMain.Escales1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscales);
end;

procedure TwMain.ElementsFacturables1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEF);
end;

procedure TwMain.ContractesSCS1Click(Sender: TObject);
begin
    CrearForm(TwFichaScsContractes);
end;

procedure TwMain.CodiCobros1Click(Sender: TObject);
begin
    CrearForm(TwFichaCodiCobros);
end;

procedure TwMain.CodiITEMS1Click(Sender: TObject);
begin
    CrearForm(TwFitxaItems);
end;

procedure TwMain.ProtocolsRHF1Click(Sender: TObject);
begin
    CrearForm(TwFitxaProtocolsRHF);
end;

procedure TwMain.SeguimentAmbulatori1Click(Sender: TObject);
begin
    CrearForm(TwFitxaSeguimentAmbulatoris);
end;

procedure TwMain.ECBClick(Sender: TObject);
begin
    CrearForm(TwFitxaECB);
end;

procedure TwMain.ECBItemsClick(Sender: TObject);
begin
    CrearForm(TwFitxaECBItems);
end;

procedure TwMain.GestiOM1Click(Sender: TObject);
begin
    CrearForm(TwFitxaOMConfig);
end;

procedure TwMain.DesbloqueigRecuperacioClick(Sender: TObject);
begin
    CrearForm(TwFitxaOMDesbloqueig);
end;

procedure TwMain.InferGraficaClick(Sender: TObject);
begin
    CrearForm(TwFitxaInferGrafica);
end;

procedure TwMain.InferTasquesClick(Sender: TObject);
begin
    CrearForm(TwFitxaInferTasques);
end;

procedure TwMain.InferParamsClick(Sender: TObject);
begin
    CrearForm(TwFitxaInferItems);
end;

procedure TwMain.MedicamentsHospClick(Sender: TObject);
begin
    CrearForm(TwFitxaMedicaments);
end;

procedure TwMain.StocksClick(Sender: TObject);
begin
    CrearForm(TwFitxaStocks);
end;

procedure TwMain.ASIA1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaASIA);
end;

procedure TwMain.EFA1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaEFA);
end;

procedure TwMain.estBarcelona1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaBCN);
end;

procedure TwMain.EnqTRSInfants1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalesTRS);
end;

procedure TwMain.CIQ1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaCIQ);
end;

procedure TwMain.EVSFIG1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaEVSF);
end;

procedure TwMain.ESIG1aV1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaESIG1aV);
end;

procedure TwMain.ESIGSeguiment1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaESIGSeg);
end;

procedure TwMain.CHART1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaCHART);
end;

procedure TwMain.Escalespendents1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalesPendents);
end;

procedure TwMain.BATERIA1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaBATERIA);
end;

procedure TwMain.BateriaInfantil1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaBateriaInf);
end;

procedure TwMain.SegFarmaciaClick(Sender: TObject);
begin
    CrearForm(TwFitxaAccesFarma);
end;


procedure TwMain.PEDI1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalaPEDI);
end;

procedure TwMain.PlanillesOM1Click(Sender: TObject);
begin
    CrearForm(TwPlanillesOM);
end;

procedure TwMain.Intervencions1Click(Sender: TObject);
begin
    CrearForm(TwFitxaBlocQuirurgic);
end;

procedure TwMain.Preoperatori1Click(Sender: TObject);
begin
    CrearForm(TwFitxaPreoperatori);
end;

procedure TwMain.Desbloqueigquirfan1Click(Sender: TObject);
begin
    CrearForm(TwFitxaBQDesbloqueig);
end;

procedure TwMain.Claudepas1Click(Sender: TObject);
begin
    CrearForm(TwFitxaClauDePasPrint);
end;

procedure TwMain.EntrevistaDolor1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscEntrevistaDolor);
end;

procedure TwMain.Educacio1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEducacio);
end;

procedure TwMain.EduParamsClick(Sender: TObject);
begin
    CrearForm(TwFitxaEduParams);
end;

procedure TwMain.EduDocsClick(Sender: TObject);
begin
    CrearForm(TwFitxaEduDocs);
end;

procedure TwMain.EscItems1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEscalesItems);
end;

procedure TwMain.Allaments1Click(Sender: TObject);
begin
    CrearForm(TwAillaments);
end;

procedure TwMain.Documentaci1Click(Sender: TObject);
begin
    CrearForm(TwDocsInfer);
end;

procedure TwMain.Quitdret1Click(Sender: TObject);
begin
    CrearForm(TwQuiTeDret);
end;

procedure TwMain.Escalesobligatries1Click(Sender: TObject);
begin
    CrearForm(TwEscObliga);
end;

procedure TwMain.RC1Click(Sender: TObject);
begin
    CrearForm(TwSessionsTRC);
end;

procedure TwMain.Logopdia1Click(Sender: TObject);
begin
    CrearForm(TwSessionsLogopedia);
end;

procedure TwMain.CodiCampsCurt1Click(Sender: TObject);
begin
    CrearForm(TwFichaCodiCampsCurt);
end;

procedure TwMain.CodiCamps31Click(Sender: TObject);
begin
    CrearForm(TwFichaCodiCamps3);
end;

procedure TwMain.CodisICF1Click(Sender: TObject);
begin
    CrearForm(TwFitxaCodiICF);
end;

procedure TwMain.BloqueigHistoriesClick(Sender: TObject);
begin
    CrearForm(TwBloqueigHistories);
end;

procedure TwMain.NeuroTraumes1Click(Sender: TObject);
begin
    CrearForm(TwICDNT);
end;

procedure TwMain.ICD91Click(Sender: TObject);
begin
    CrearForm(TwTotICD9);
end;

procedure TwMain.LogdeFiliaci1Click(Sender: TObject);
begin
    CrearForm(TwFitxaLogFili);
end;

procedure TwMain.Caigudes1Click(Sender: TObject);
begin
    CrearForm(TwFitxaCaigudes);
end;

procedure TwMain.UPP1Click(Sender: TObject);
begin
    CrearForm(TwFitxaUPP);
end;

procedure TwMain.Informessollicitats1Click(Sender: TObject);
begin
//-    CrearForm(TwFitxaInfSol);
end;

procedure TwMain.BaclofenClick(Sender: TObject);
begin
    CrearForm(TwFitxaBaclofen);
end;

procedure TwMain.LogInformesSollicitats1Click(Sender: TObject);
begin
//-    CrearForm(TwFitxaLogSol);
end;

procedure TwMain.DesbloqueigAdmClick(Sender: TObject);
begin
    CrearForm(TwFitxaAdmDesbloqueig);
end;

procedure TwMain.GrupsLletres1Click(Sender: TObject);
begin
    CrearForm(TwFitxaGrupsLletres);
end;

procedure TwMain.LogClaus1Click(Sender: TObject);
begin
    CrearForm(TwFitxaLogClaus);
end;

procedure TwMain.RIC1Click(Sender: TObject);
begin
    CrearForm(TwFitxaRICGLF);
end;

procedure TwMain.DocsImprimirClick(Sender: TObject);
begin
    CrearForm(TwFitxaDocsImprimir);
end;

procedure TwMain.Pades1Click(Sender: TObject);
begin
//-    CrearForm(TwFitxaPades);
end;

procedure TwMain.SID1Click(Sender: TObject);
begin
    CrearForm(TwFitxaSID);
end;

procedure TwMain.Voluntariat1Click(Sender: TObject);
begin
    CrearForm(TwFitxaVol);
end;

procedure TwMain.DrenatgesClick(Sender: TObject);
begin
    CrearForm(TwFitxaDreantges);
end;

procedure TwMain.Estocdestupefaents1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEPFStock);
end;

procedure TwMain.Receptesoficialsdestupefaents1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEPFReceptes);
end;

procedure TwMain.oxinaBotulnica1Click(Sender: TObject);
begin
    CrearForm(TwFitxaToxinaBotulinica);
end;

procedure TwMain.NutricioClick(Sender: TObject);
begin
    CrearForm(TwFitxaNutricioEnteral);
end;

procedure TwMain.TractamentEMClick(Sender: TObject);
begin
    CrearForm(TwFitxaTractEM);
end;

procedure TwMain.Informes1Click(Sender: TObject);
begin
    CrearForm(TwFitxaInformesInfer);
end;

procedure TwMain.Cues1Click(Sender: TObject);
begin
    CrearForm(TwFitxaCuaqmatic);
end;

procedure TwMain.Horaris1Click(Sender: TObject);
begin
    CrearForm(TwFitxaHoraris);
end;

procedure TwMain.Gimnas2Click(Sender: TObject);
begin
    CrearForm(TwFitxaGym);
end;

procedure TwMain.Gimnas1Click(Sender: TObject);
begin
    CrearForm(TwFitxaInformesNPC);
end;

procedure TwMain.Sollicitudsdingrs1Click(Sender: TObject);
begin
    with CrearForm(TwFitxaSolIngres) as TwFitxaSolIngres do Inicia;
end;

procedure TwMain.Resourceespessant1Click(Sender: TObject);
begin
    CrearForm(TwFitxaResourceE);
end;

procedure TwMain.EASEPIparmetres1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEASEPIParams);
end;

procedure TwMain.EASEPladintervenci1Click(Sender: TObject);
begin
    CrearForm(TwFitxaEASEPI);
end;

procedure TwMain.TimeOutClick(Sender: TObject);
begin
    CrearForm(TwFitxaTimeOut);
end;

procedure TwMain.Informes2Click(Sender: TObject);
begin
    CrearForm(TwFitxaInformesCodis);
end;

procedure TwMain.Informes3Click(Sender: TObject);
begin
    CrearForm(TwFitxaInformes);
end;

procedure TwMain.Informemensual1Click(Sender: TObject);
begin
  ShowMessage('S''ha mogut al SUPERMAN perque el generi el responsable de la LOPD.');
end;

procedure TwMain.arreglaRMP1Click(Sender: TObject);
var
  qInformes: TIBQuery;
  NomArxiuNou, Arxiu, ArxiuNou: String;
begin
    qInformes := TIBQuery.Create(Self);
    qInformes.Database := wData.IBGuttmann;
    qInformes.SQL.Text := 'select distinct I.* from INFORMES I ' +
                          'left outer join INFORMES_REG R on I.ID_INFORME = R.ID_INFORME and R.ACCIO = 5 ' +
                          'left outer join METGES M on I.C_USUARI = M.CODI ' +
                          'join  TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT ' +
                          'where I.C_TIPUS = "---" ' +
                          'and   I.C_ESTAT = 10 ' +
                          'and   T.C_PRESTACIO = "2004" ' +
                          'order by I.ID_INFORME ';
    qInformes.Open;
    while not qInformes.Eof do
    begin
        TRY
          NomArxiuNou := Replace('---', 'RMP', qInformes.FieldByName('Arxiu').AsString);

          if wData.ES_PROVA then Arxiu := '\\gutfs2\dadesg\proves\'
                            else Arxiu := '\\gutfs2\dadesg\usr\';

          Arxiu := ConcatFilePath(IdentificaDirectori(Arxiu + 'InfMet', qInformes.FieldByName('C_Historia').AsString), qInformes.FieldByName('Arxiu').AsString);
          ArxiuNou := Replace('---', 'RMP', Arxiu);

          if FileExists(Arxiu) then if not RenameFile(Arxiu, ArxiuNou) then Raise Exception.Create('NO RENOMBRAT');

          GutExecute('update INFORMES set C_TIPUS = "RMP", ARXIU = "%s" where ID_INFORME = %d',
                     [NomArxiuNou, qInformes.FieldByName('ID_Informe').AsInteger], False);

          wData.IBTransGutt.CommitRetaining;
        EXCEPT
          on e: Exception do
          begin
              wData.IBTransGutt.RollbackRetaining;
              if not AvisoNS('Error: ID_INFORME = ' +  qInformes.FieldByName('ID_Informe').AsString + NLine + e.Message + NLine + NLine + 'Continuar?')
              then Break;
          end;
        END;

        qInformes.Next;
    end;
end;

procedure TwMain.Passaportpacient1Click(Sender: TObject);
begin
    CrearForm(TwFitxaPassaport);
end;

procedure TwMain.wCodisPassaportClick(Sender: TObject);
begin
    CrearForm(TwFitxaCodisPassaport);
end;

procedure TwMain.Formafarmacutica1Click(Sender: TObject);
begin
    CrearForm(TwFitxaFTFormaFarma);
end;


procedure TwMain.Productes1Click(Sender: TObject);
begin
    CrearForm(TwFitxaFTProd);
end;

procedure TwMain.Unitatsdemesura1Click(Sender: TObject);
begin
    CrearForm(TwFitxaFTUM);
end;

procedure TwMain.Viesdadministraci1Click(Sender: TObject);
begin
    CrearForm(TwFitxaFTVies);
end;

procedure TwMain.Prescripcions1Click(Sender: TObject);
begin
    CrearForm(TwFitxaFTPrescripcions);
end;

procedure TwMain.Facturaci1Click(Sender: TObject);
begin
    CrearForm(TwFitxaFTFacturacio);
end;

procedure TwMain.Dretsautogestionats1Click(Sender: TObject);
begin
    CrearForm(TwFitxaDretsAutogestionats);
end;

end.
