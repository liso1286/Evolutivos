unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ToolWin, ComCtrls, TaskBar, HYDialogConsulta, Db, DbTables, Grids,
  DBGrids, ExtCtrls, qrCtrls, quickrpt, Hy_Misc, StdCtrls, Buttons, ActnList,
  StdActns, Variants, FitxaLlistatDietes, FitxaIngressats, LlistatNadal,
  FichaListOrtesis, FitxaAgendaProgramacio, Word_TLB_2010, Data, DBCtrls,
  JvDBImage, MessageBox, ShellAPI, HYDialogError, IBCustomDataSet, IBQuery;

type
  TwMain = class(TForm)
    MainMenu1: TMainMenu;
    Codis: TMenuItem;
    Paisos: TMenuItem;
    Provincies: TMenuItem;
    Poblacions: TMenuItem;
    Llistadespera1: TMenuItem;
    Elements1: TMenuItem;
    Ambulancies: TMenuItem;
    Consultes1: TMenuItem;
    Filiats1: TMenuItem;
    Activitat1: TMenuItem;
    Prestacions1: TMenuItem;
    LlistesdesperaHistriques1: TMenuItem;
    ExclososLlistadespera1: TMenuItem;
    Finestres1: TMenuItem;
    Tancartotes1: TMenuItem;
    Moaico1: TMenuItem;
    Cascada1: TMenuItem;
    N3: TMenuItem;
    EstableceTodas1: TMenuItem;
    MaximizaTodas1: TMenuItem;
    MinimizaTodas1: TMenuItem;
    OrganizaIconos1: TMenuItem;
    Siguiente1: TMenuItem;
    Anterior1: TMenuItem;
    N4: TMenuItem;
    Vies: TMenuItem;
    EstatsCivils1: TMenuItem;
    Hospitals1: TMenuItem;
    Agenda1: TMenuItem;
    Metges1: TMenuItem;
    Prestacions2: TMenuItem;
    Festius1: TMenuItem;
    cAnulaAlta: THYConsulta;
    Programaci1: TMenuItem;
    N5: TMenuItem;
    Gestidellits1: TMenuItem;
    Passis1: TMenuItem;
    Biomanan1: TMenuItem;
    Sortir1: TMenuItem;
    ProvesPteValidarPreus1: TMenuItem;
    cProvesPte: THYConsulta;
    cProvesHistoric: THYConsulta;
    Facturaci1: TMenuItem;
    ProvesEspecialsPteFacturar1: TMenuItem;
    CentresFacturaci1: TMenuItem;
    Proveidors1: TMenuItem;
    N6: TMenuItem;
    Ingresats1: TMenuItem;
    N7: TMenuItem;
    Cartes1: TMenuItem;
    Agenda2: TMenuItem;
    N8: TMenuItem;
    ForadHores: TMenuItem;
    EnTractament: TMenuItem;
    N9: TMenuItem;
    Plnols1: TMenuItem;
    TeProvisional: THyMoveGroupControl;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ActionList1: TActionList;
    Filiar: TAction;
    InfoAcces: TAction;
    N1: TMenuItem;
    EsDeProves: TMenuItem;
    AutoritzaciLlistadespera1: TMenuItem;
    Cens: TMenuItem;
    Justificants1: TMenuItem;
    N2: TMenuItem;
    LlistatPrealtes1: TMenuItem;
    cRenovacioMutues: THYConsulta;
    Renovaciopermisosdemutues1: TMenuItem;
    Timer: TTimer;
    OrtesisPteEntregar1: TMenuItem;
    CodisOrtesis1: TMenuItem;
    AgrupamentHoritzontal1: TMenuItem;
    AgrupamentVertical1: TMenuItem;
    WindowClose1: TWindowClose;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    TaskBar1: TTaskBar;
    Manteniments1: TMenuItem;
    PteRealitzar1: TMenuItem;
    Historic1: TMenuItem;
    N11: TMenuItem;
    N10: TMenuItem;
    Plantas: THYConsulta;
    FitxerSCSPAOS1: TMenuItem;
    FamiliesdOrtesi2: TMenuItem;
    Estadistiques: TMenuItem;
    N12: TMenuItem;
    Dubtosos: THYConsulta;
    N13: TMenuItem;
    VisitesdeSeguiment1: TMenuItem;
    Ambulatorisdemsde3mesos1: TMenuItem;
    EquipAssistencial1: TMenuItem;
    Activitatspacient1: TMenuItem;
    LListatinfermeria1: TMenuItem;
    AutoritzaMutues: TMenuItem;
    LlistatsComprovaci1: TMenuItem;
    LlistatsMemria1: TMenuItem;
    UnitatMdica1: TMenuItem;
    CIPs1: TMenuItem;
    HistriesiCognoms1: TMenuItem;
    Pasosipoblacions1: TMenuItem;
    Pacientsnous1: TMenuItem;
    Tractaments1: TMenuItem;
    Atesos1: TMenuItem;
    Pacientsatesosunics1: TMenuItem;
    IncongrunciesUnitats1: TMenuItem;
    UnitatAdministrativa1: TMenuItem;
    Reingressos1: TMenuItem;
    AreaMedica1: TMenuItem;
    Calendari1: TMenuItem;
    Estadstiques1: TMenuItem;
    Sollicituddinformes1: TMenuItem;
    N19: TMenuItem;
    SC1: TMenuItem;
    Permetge2: TMenuItem;
    RehabilitaciInfantil2: TMenuItem;
    Informes1: TMenuItem;
    TeCanvisUM: THyMoveGroupControl;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    CanvisUM: TAction;
    cCanvisUM: THYConsulta;
    Estadgym: TMenuItem;
    HospitalOrigen1: TMenuItem;
    Etiologies: TMenuItem;
    Alteshospitalries1: TMenuItem;
    Passisautoritzats1: TMenuItem;
    AllamentsEnCurs: TMenuItem;
    N21: TMenuItem;
    Nadal1: TMenuItem;
    DistrictesBarcelona1: TMenuItem;
    ValidaciPreusInformesRXCreuBlanca1: TMenuItem;
    Panel1: TPanel;
    bUserActiu: TSpeedButton;
    eUserActiu: TLabel;
    ScrollAlarmes: TScrollBox;
    Panel2: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    Panel3: TPanel;
    AlarmaECOSprog: TLabel;
    AlarmaINTERCONUROprog: TLabel;
    AlarmaUROSprog: TLabel;
    cECOSprog: THYConsulta;
    cUROSprog: THYConsulta;
    cInterconUROprog: THYConsulta;
    Panel4: TPanel;
    Image2: TImage;
    Motiusaplaaments1: TMenuItem;
    mLogSAP: TMemo;
    Bloquigdellits1: TMenuItem;
    TeBloquejosLlit: THyMoveGroupControl;
    Label4: TLabel;
    SpeedButton4: TSpeedButton;
    BloquejosInfer: TAction;
    cBloquejosLlits: THYConsulta;
    ControlNPT1: TMenuItem;
    SolicitudsIngres: TMenuItem;
    Consultes2: TMenuItem;
    DatesdinarsNadal1: TMenuItem;
    qDates: TQuery;
    Ingressosprevistos1: TMenuItem;
    N25: TMenuItem;
    InferGestioInformes1: TMenuItem;
    cInferInformes: THYConsulta;
    InferPublicacioHCCC1: TMenuItem;
    N_MenuInfer: TMenuItem;
    cInferInformesHCC: THYConsulta;
    JvDBSig: TJvDBImage;
    qTitol: TQuery;
    MB: TMessageBoxes;
    Gestidecues1: TMenuItem;
    SpeedButton2: TSpeedButton;
    UMcorregir: TMenuItem;
    ActivitatNPC: TMenuItem;
    Responsableinfermeria1: TMenuItem;
    PrestacionsSessions1: TMenuItem;
    AlarmaTimeOut: TLabel;
    cTimeOutCE: THYConsulta;
    EntractamentEASE1: TMenuItem;
    cPrestacionsEASE: THYConsulta;
    NensWISCV: TMenuItem;
    TePrealtaDiferent: THyMoveGroupControl;
    Label2: TLabel;
    SpeedButton5: TSpeedButton;
    cPrealtesPosposades: THYConsulta;
    Metgedegurdia1: TMenuItem;
    cMetgeGuardia: THYConsulta;
    AlarmaValoracionsNPC: TLabel;
    cValoraNPC: THYConsulta;
    TeAmbulancia: THyMoveGroupControl;
    Label5: TLabel;
    SpeedButton6: TSpeedButton;
    AmbulanciesPeticio: TMenuItem;
    AmbulanciesPendents: TMenuItem;
    AlarmaMedicacioNPC: TLabel;
    cMedicacioNPC: THYConsulta;
    MedicacioPrivats: TMenuItem;
    AlarmaProvEspPrivadesSol: TLabel;
    AlarmaOrtesisPrivadesRealitzades: TLabel;
    cInterconPrivats: THYConsulta;
    AlarmaBancSangPrivats: TLabel;
    Pandora: TMenuItem;
    N26: TMenuItem;
    Informesmtua1: TMenuItem;
    mLogInformesMutues: TMemo;
    UHs: THYConsulta;
    Plnolsamballaments1: TMenuItem;
    Alarma2124Videconf: TLabel;
    cNPTAvui: THYConsulta;
    PermisosSortida1: TMenuItem;
    GBLactius1: TMenuItem;
    cPrestacionsGBL: THYConsulta;
    CEprevista1: TMenuItem;
    procedure PaisosClick(Sender: TObject);
    procedure ProvinciesClick(Sender: TObject);
    procedure PoblacionsClick(Sender: TObject);
    procedure Llistadespera1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Moaico1Click(Sender: TObject);
    procedure Cascada1Click(Sender: TObject);
    procedure Tancartotes1Click(Sender: TObject);
    procedure EstableceTodas1Click(Sender: TObject);
    procedure MaximizaTodas1Click(Sender: TObject);
    procedure MinimizaTodas1Click(Sender: TObject);
    procedure OrganizaIconos1Click(Sender: TObject);
    procedure Siguiente1Click(Sender: TObject);
    procedure Anterior1Click(Sender: TObject);
    procedure ViesClick(Sender: TObject);
    procedure EstatsCivils1Click(Sender: TObject);
    procedure Hospitals1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Metges1Click(Sender: TObject);
    procedure Prestacions2Click(Sender: TObject);
    procedure Festius1Click(Sender: TObject);
    procedure cAnulaAltaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure Sortir1Click(Sender: TObject);
    procedure Gestidellits1Click(Sender: TObject);
    procedure Biomanan1Click(Sender: TObject);
    procedure Passis1Click(Sender: TObject);
    procedure Filiats1Click(Sender: TObject);
    procedure CentresFacturaci1Click(Sender: TObject);
    procedure Proveidors1Click(Sender: TObject);
    procedure cProvesAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure cProvesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure ProvesPteValidarPreus1Click(Sender: TObject);
    procedure Activitat1Click(Sender: TObject);
    procedure ExclososLlistadespera1Click(Sender: TObject);
    procedure Prestacions1Click(Sender: TObject);
    procedure LlistesdesperaHistriques1Click(Sender: TObject);
    procedure Ingresats1Click(Sender: TObject);
    procedure Cartes1Click(Sender: TObject);
    procedure Agenda2Click(Sender: TObject);
    procedure ForadHoresClick(Sender: TObject);
    procedure EnTractamentClick(Sender: TObject);
    procedure FiliarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InfoAccesExecute(Sender: TObject);
    procedure AutoritzaciLlistadespera1Click(Sender: TObject);
    procedure CensClick(Sender: TObject);
    procedure Justificants1Click(Sender: TObject);
    procedure LlistatPrealtes1Click(Sender: TObject);
    procedure Renovaciopermisosdemutues1Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure CodisOrtesis1Click(Sender: TObject);
    procedure OrtesisPteEntregar1Click(Sender: TObject);
    procedure PteRealitzar1Click(Sender: TObject);
    procedure Historic1Click(Sender: TObject);
    procedure FamiliesdOrtesi1Click(Sender: TObject);
    procedure PlantasAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure NouHospital1Click(Sender: TObject);
    procedure FitxerSCSPAOS1Click(Sender: TObject);
    procedure VisitesdeSeguiment1Click(Sender: TObject);
    procedure Ambulatorisdemsde3mesos1Click(Sender: TObject);
    procedure EquipAssistencial1Click(Sender: TObject);
    procedure Activitatspacient1Click(Sender: TObject);
    procedure LListatinfermeria1Click(Sender: TObject);
    procedure AutoritzaMutuesClick(Sender: TObject);
    procedure UnitatMdica1Click(Sender: TObject);
    procedure CIPs1Click(Sender: TObject);
    procedure HistriesiCognoms1Click(Sender: TObject);
    procedure Pasosipoblacions1Click(Sender: TObject);
    procedure Pacientsnous1Click(Sender: TObject);
    procedure Tractaments1Click(Sender: TObject);
    procedure Atesos1Click(Sender: TObject);
    procedure Pacientsatesosunics1Click(Sender: TObject);
    procedure IncongrunciesUnitats1Click(Sender: TObject);
    procedure UnitatAdministrativa1Click(Sender: TObject);
    procedure Reingressos1Click(Sender: TObject);
    procedure Plnols1Click(Sender: TObject);
    procedure Calendari1Click(Sender: TObject);
    procedure Sollicituddinformes1Click(Sender: TObject);
    procedure Permetge2Click(Sender: TObject);
    procedure RehabilitaciInfantil2Click(Sender: TObject);
    procedure Informes1Click(Sender: TObject);
    procedure CanvisUMExecute(Sender: TObject);
    procedure cCanvisUMAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cCanvisUMAlTancar(Sender: THYConsulta);
    procedure EstadgymClick(Sender: TObject);
    procedure HospitalOrigen1Click(Sender: TObject);
    procedure EtiologiesClick(Sender: TObject);
    procedure Passisautoritzats1Click(Sender: TObject);
    procedure Alteshospitalries1Click(Sender: TObject);
    procedure AllamentsEnCursClick(Sender: TObject);
    procedure Nadal1Click(Sender: TObject);
    procedure DistrictesBarcelona1Click(Sender: TObject);
    procedure ValidaciPreusInformesRXCreuBlanca1Click(Sender: TObject);
    procedure bUserActiuClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AlarmaECOSprogClick(Sender: TObject);
    procedure cECOSprogAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure RefrescarAlarmes(Sender: TObject);
    procedure AlarmaINTERCONUROprogClick(Sender: TObject);
    procedure AlarmaUROSprogClick(Sender: TObject);
    procedure cUROSprogAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cInterconUROprogAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure PteProgAlTancar(Sender: THYConsulta);
    procedure FormDeactivate(Sender: TObject);
    procedure sbAlarmClick(Sender: TObject);
    procedure Motiusaplaaments1Click(Sender: TObject);
    procedure Bloquigdellits1Click(Sender: TObject);
    procedure BloquejosInferExecute(Sender: TObject);
    procedure cBloquejosLlitsAlTancar(Sender: THYConsulta);
    procedure cBloquejosLlitsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure ControlNPT1Click(Sender: TObject);
    procedure SolicitudsIngresClick(Sender: TObject);
    procedure Consultes2Click(Sender: TObject);
    procedure DatesdinarsNadal1Click(Sender: TObject);
    procedure Ingressosprevistos1Click(Sender: TObject);

    procedure InferGestioInformes1Click(Sender: TObject);
    procedure cInferInformesAlPintarGridFont(var ColorFont: TColor; var Negreta: Boolean; var ColorBrush: TColor; DataCol: Integer;
                                             Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure cInferInformesConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
    procedure cInferInformesProcessa(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cInferInformesAnula(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure InferPublicacioHCCC1Click(Sender: TObject);
    procedure cInferInformesHCCAlPintarGridFont(var ColorFont: TColor; var Negreta: Boolean; var ColorBrush: TColor; DataCol: Integer;
                                                Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure cInferInformesHCCConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
    procedure cInferInformesHCCAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure Gestidecues1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure UMcorregirClick(Sender: TObject);
    procedure ActivitatNPCClick(Sender: TObject);
    procedure Responsableinfermeria1Click(Sender: TObject);
    procedure PrestacionsSessions1Click(Sender: TObject);
    procedure AlarmaTimeOutClick(Sender: TObject);
    procedure EntractamentEASE1Click(Sender: TObject);
    procedure NensWISCVClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Metgedegurdia1Click(Sender: TObject);
    procedure AlarmaValoracionsNPCClick(Sender: TObject);
    procedure cValoraNPCAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure AmbulanciesPeticioClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure AmbulanciesPendentsClick(Sender: TObject);
    procedure AlarmaMedicacioNPCClick(Sender: TObject);
    procedure MedicacioPrivatsClick(Sender: TObject);
    procedure AlarmaOrtesisPrivadesRealitzadesClick(Sender: TObject);
    procedure AlarmaProvEspPrivadesSolClick(Sender: TObject);
    procedure AlarmaBancSangPrivatsClick(Sender: TObject);
//    procedure PandoraClick(Sender: TObject);
//    procedure Informesmtua1Click(Sender: TObject);
    procedure UHsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure Plnolsamballaments1Click(Sender: TObject);
    procedure Alarma2124VideconfClick(Sender: TObject);
    procedure cNPTAvuiAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cInferInformesEnDeixarPendentdeValidar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure PermisosSortida1Click(Sender: TObject);
    procedure GBLactius1Click(Sender: TObject);
    procedure CEprevista1Click(Sender: TObject);
    procedure cRenovacioMutuesAlPintarGrid(var ColorFont,
      ColorBrush: TColor; DataCol: Integer; Column: TColumn;
      State: TGridDrawState; Query: TQuery);
  private
    ara: TDateTime;
    FlagContaAtras: Boolean;
    alturaalarmes: Integer;
    HiHaErrors: Integer;
    PathInfer1, PathInfer2, PathInfer3, PathInferF2, PathInferF, PathInferH, PathInferR: String;
//-    procedure Actividad(var Msg: TMsg; var Handled: Boolean);
//-    procedure Inactividad(Sender: TObject; var Done: Boolean);
    procedure MostrarOpcions(Dret: Integer);
    procedure ActualitzaDates(WA: _Application; Q: TDataSet);
    function  AfegeixSignatura(WA: _Application; EnCatala: Boolean; Q: TDataSet): Integer; // retorna l'ID_informe generat
    procedure PaginaDocument(WA: _Application; EnCatala: Boolean);
    procedure RenovacionsAutomatiques;
    function  Laborable(D: TDateTime): Boolean;
  public
    Nivell: Integer;
    PotGestionarAgenda: Boolean;
    TancantAutomatic : Boolean;
    Aplica: Integer;
    LastTraza: LongInt;
    StatusTraza: String;
    dia: TDateTime;    
    Procedure AddStatusTraza(Mark: String);
    procedure CanviUsuariActiu;
    procedure OmplirPlanol(Planta: String; idPlanta: Byte);
    procedure OmplirPlanolNou(Planta: String);
    procedure OmplirPlanolUH(Planta: String);    
    procedure ObrirTractament(Tractament, Historia: Integer; vReadOnly: Boolean = False);
  end;

var
  wMain: TwMain;
  PotTancar: Boolean;
  DataFusio: TDateTime;  

  function  RangoFechasenDias        (Fecha1,Fecha2:TDate):Integer;
  procedure VerHistoria              (NumHist:Integer; NomPacient: String);
  procedure ImprimirNotaRecordatoria (Historia: String; Data_PreIngres: TDate; NomComplet: String; rang_i: TDate=0; rang_f: TDate=0);
  Function  EsVisita         (Prestacio: String):Boolean;  // Ens diu si una prestació és visita
  Function  EsIngres         (Prestacio: String):Boolean;  // Ens diu si una prestació és ingrés.
  Function  EsAmbulatori     (Prestacio: String):Boolean;  // Ens diu si una prestació és ambulatori.
  Function  ComprobarLLit    (Llit: String     ):Boolean;
  function  TeIngres         (Historia: String ):Boolean;
  procedure ImprimirEtiquetes(Datos: TDataSet; TipusEtiquetes:Integer = 0);
  Function  TePapers(EstatFac: Integer):Boolean;
  Function  RecalcularCIP(Apellido1, Apellido2, Sexo: String; DataNaixement: TDateTime):String;
  Function  CargarInforme(NombreInforme:String; Idioma:Integer; Normalizado:Boolean):String;
  Function  ImprimirAlbaranAportaOrtesis( Datos:TDataSet; Preview:Boolean = True; Copias: Integer = 2 ):String;
  function  TextVertical1(DataF: TDateTime): String;
  function  TextVertical2(DataF: TDateTime): String;
  procedure ParteInformatica(usuari, departament, ubicacio, motiu: String; prioritat: Integer; mostraerror: Boolean=False);
  function  BuscaDiaNPC(Freq: String; Data: TDateTime): TDateTime;
  function  EsFestiu(DT: TDateTime): Boolean;

implementation

uses JclLogic, Clipbrd, Funciones, FitxaPais, FitxaProvincia, FitxaPoblacio, FitxaLlistaEspera, FitxaEstatCivil,
  FitxaHospital, FitxaVia, DataAdmisio, FitxaMetges, FichaPrestacio, FichaFestius, DataCurs, FitxaGestioLlits, FitxaFiliats, DataInterCon,
  FichaCentreFact, FichaProveidor, FichaProvaEspecial, {FichaCodiProvaEsp, -}FichaValidaPreuProva, FitxaActivitat, FitxaConsultaExclusions,
  FitxaLlistatPrestacions, FitxaHistorial, FitxaEsperasHistoriques, FitxaImpresioCartesRecordatories, PrintNotesRecordatoriesAgenda,
  FitxaConsultaAgenda, FitxaForadHores, FitxaEnTractament, PrintPlano1Piso, PrintEtiquetesFiliacio, FitxaAutoritzacioEsperaMetge,
  FitxaLlistatDietesiLlits, FitxaLlistatTasquesiLlits, {-PrintNotaCarrec, -}PrintJustificant, DialegJustificant, FitxaLlistatPrealtes, DataBasics,
  HYCalendari, ContaEnrera, FitxaCodisEF, FitxaFiliacio, FichaOrtesis, PrintAportacioOrtesis, PrintRecibo, PrintOrtesisiProves, PrintStock, DataFactu,
  DialegImpresioFamiliesOrtesi, FichaInternetScs, FitxaProductes, FitxaManteFamiGrupsOrtesis, FichaLlistatResumEstades,
  DataOrtesis, Visites2003Previstes, Ambulato3Mesos, DialegSeleccioEquipAssist , ActivitatPacients, uDialegFiltrePrintDisp,
  uPrintLliuramentStocks, FitxaAutoritzaMutues, LlistatUM, CIP_DNI, NHC, Paisos, PacientsNous, Tractaments, Atesos, IncongruenciesUnitats,
  LlistatUA, ListReingres, CalendariMetges, LlistatsSCPerMetge, LlistatsSCRehabInf, FitxaInformesAM,
  LlistatInformes, Funcions, EstadGym, HospitalOrigen, FitxaEtiGLF, FitxaLlistatAltes, LlistatAilla, FitxaAmbulancies, Districtes,
  FitxaValidaRXCreuBlanca, FitxaGestioPassis, LlistatsSCAplaza, FitxaBloqueigLlits, DataSAP, FitxaControlNPT, PrintFarmacia, DataHola,
  FitxaConsultes, FitxaDatesNadal, FitxaSolicitudsIngres, FitxaIngressosPrevistos, DataInfermeria, DataImatges,
  FitxaGestioCues, FitxaActivitatNPC, FitxaRespInfer, FitxaPrestacioSessions, FitxaNensWISCV,
  FitxaSolicitudsAmbulancies, utili16, DataOMDics, {FitxaListPandora,}PrintUHs, FitxaCEPrevistes,
  LlistatPermisosSortida, FitxaGestioCuesWB;

{$R *.DFM}






Function ImprimirAlbaranAportaOrtesis(Datos: TDataSet; Preview: Boolean = True; Copias: Integer = 2):String;
var
  i: integer;
  cop: integer;
begin

    if (Datos = nil) then
    begin
      Result := '-1';
      exit;
    end;

    wData.DadesHistoria.Close;
    wData.DadesHistoria.ParambyName('C_Historia').asInteger := Datos.FieldbyName('C_Historia').asInteger;
    wData.DadesHistoria.Open;

    With TwPrintAportacioOrtesis.Create(Application) do
    try
       Datos.First;
       cabecera.Close;
       cabecera.Open;
       Cabecera.Append;
       Cabecera.FieldbyName('NOMCOMPLET' ).asString := wData.DadesHistoria.FieldbyName('NOMCOMPLET').asString;
       Cabecera.FieldbyName('ADRESA'     ).asString := wData.DadesHistoria.FieldbyName('ADRESA'    ).asString;
       Cabecera.FieldbyName('CP'         ).asString := wData.DadesHistoria.FieldbyName('CODIGO'    ).asString + ' ' +
                                                       wData.DadesHistoria.FieldbyName('POBLACIO'  ).asString + ' ('+
                                                       wData.DadesHistoria.FieldbyName('PROVINCIA' ).asString + ') ';
       Cabecera.FieldbyName('NIF'        ).asString := wData.DadesHistoria.FieldbyName('DNI'       ).asString;
       Cabecera.FieldbyName('Idioma'     ).asInteger:= wData.DadesHistoria.FieldbyName('IDIOMA'    ).asInteger;
       Cabecera.FieldbyName('ALBARA'     ).asString := Datos.FieldbyName('AlbaraPacient').asString;
       Cabecera.Post;

       Lineas.Close;
       Lineas.Open;

       While not Datos.Eof do
       begin
          Lineas.Append;
          if Cabecera.FieldbyName('Idioma').asInteger = 2
          then Lineas.FieldbyName('N_Ortesis').asString := Datos.FieldbyName('N_Ortesis2').asString
          else Lineas.FieldbyName('N_Ortesis').asString := Datos.FieldbyName('N_Ortesis').asString;

          Lineas.FieldbyName('PREU'     ).asString := Datos.FieldbyName('PREU2'    ).asString;
          Lineas.Post;
          Datos.Next;
       end;

       Cabecera.First;
       Lineas.First;
       Cop := Copias;

       if Preview
       then qrAlba.Preview
       else
        for i:= 1 to cop do
        begin
       qrAlba.Print;
        end
    finally
       free;
    end;
end;


Function CargarInforme(NombreInforme:String; Idioma:Integer; Normalizado:Boolean):String; //Devuelve un informe para ser formateado o mostrado.

  Function Normalizar(Texto:String):String; //Prepara un texto con macros tipo %MACRO% a ---> %s para ser formateado
  var
    Macros :TMemo;
    i:Integer;
  begin
      Macros := nil;
      Macros.Text := SelectSQLfmt(wData.Projecte.DataBaseName
                                 , 'Select Macros from InfCabe where C_Informe = "%s"'
                                 , [NombreInforme]);

      for i:= 0 to Macros.Lines.count -1
      do Result := StringReplace(Result, Macros.Lines[i], '%s', [rfReplaceAll, rfIgnoreCase]);
  end;
begin
    Result := SelectSQLfmt(wData.Projecte.DataBaseName
                           , ' SELECT TEXTE FROM INFCABETEXTE '
                           + ' WHERE C_INFORME = "%s" '
                           + '   AND C_IDIOMA  = %s'
                           , [NombreInforme, InttoStr(Idioma)]);

    if Normalizado then Result := Normalizar(Result);
end;


Function RecalcularCIP(Apellido1, Apellido2, Sexo: String; DataNaixement: TDateTime):String;
begin
  //...// Buscar-lo a l'RCA
end;


Function TePapers(EstatFac: Integer):Boolean;
begin
     Result := not (EstatFac in [20..29]);
end;


{-
procedure TwMain.Actividad(var Msg: TMsg; var Handled: Boolean);
begin
    Case Msg.Message of
         WM_KEYDOWN,WM_LBUTTONDOWN,WM_MOUSEMOVE: Timer.Enabled := False;
    end;
end;


procedure TwMain.Inactividad(Sender: TObject; var Done: Boolean);
begin
    if (FlagContaAtras) or (Timer.Enabled) then Exit;
    Timer.Enabled := True;
ensd;
-}

procedure ImprimirEtiquetes(Datos: TDataSet; TipusEtiquetes:Integer = 0);
var
  i,op:Integer;
  planta: String;
  Impressores: TStringList;  
begin
  if (Datos.IsEmpty) then  Exit;

  if TipusEtiquetes = -1 then Exit;

  Case TipusEtiquetes of
    0,3:Begin

        With TwPrintEtiquetesFiliacio.Create(Application) do
        try

           mtEtiquetes.Close;
           mtEtiquetes.Open;

           if TipusEtiquetes = 3 then Datos.First;

           While not Datos.Eof do
           begin
               for i:= 1 to 24 do
               begin
                   mtEtiquetes.Append;

                   mtEtiquetes.FieldByName('Num_Hist'   ).Value := Datos.FieldbyName('Num_Hist'   ).Value;
                   mtEtiquetes.FieldByName('NomComplet' ).Value := Datos.FieldbyName('NomComplet' ).Value;
                   mtEtiquetes.FieldByName('Fecha_Nac'  ).Value := Datos.FieldbyName('Fecha_Nac'  ).Value;
                   mtEtiquetes.FieldByName('TSI'        ).Value := Datos.FieldbyName('TSI'        ).Value;
               end;
               Datos.Next;
           end;

           if TipusEtiquetes = 0 then Datos.Prior;

           etiquetascodibarrasingresados.LoadFromFile('ingressats.frf');
           etiquetascodibarrasingresados.PrepareReport;

           if not wData.ES_PROVA then etiquetascodibarrasingresados.PrintPreparedReport('',1);

        finally
           mtEtiquetes.Close;
           free;
        end;
      end;

    1:Begin
        With TwPrintEtiquetesFiliacio.Create(Application) do
        try
           mtEtiquetes.Close;
           mtEtiquetes.Open;
           Datos.First;

           While not Datos.Eof do
           begin
               mtEtiquetes.Append;

               mtEtiquetes.FieldByName('Num_Hist'   ).Value := Datos.FieldbyName('Num_Hist'   ).Value;
               mtEtiquetes.FieldByName('NomComplet' ).Value := Datos.FieldbyName('NomComplet' ).Value;
               mtEtiquetes.FieldByName('Fecha_Nac'  ).Value := Datos.FieldbyName('Fecha_Nac'  ).Value;
               mtEtiquetes.FieldByName('Data_Ingres').Value := Datos.FieldbyName('Data_Ingres').Value;
               mtEtiquetes.FieldByName('Llit'       ).Value := Datos.FieldbyName('Llit'       ).Value;               
               mtEtiquetes.FieldByName('TSI'        ).Value := Datos.FieldbyName('TSI'        ).Value;

               Datos.Next;
           end;

           etiquetascodibarrasingresados.LoadFromFile('ingressats.frf');
           etiquetascodibarrasingresados.PrepareReport;

           if not wData.ES_PROVA
           then etiquetascodibarrasingresados.PrintPreparedReport('',1)
           else etiquetascodibarrasingresados.ShowReport;

        finally
           mtEtiquetes.Close;
           free;
        end;
      end;

    2:Begin
        With TwPrintEtiquetesFiliacio.Create(Application) do
        try
           mtEtiquetes.Open;
           Datos.First;

           While not Datos.Eof do
           begin
               mtEtiquetes.Append;
               mtEtiquetes.FieldByName('NomComplet' ).Value := Datos.FieldbyName('NomComplet' ).Value;
               mtEtiquetes.FieldByName('Adresa'     ).Value := Datos.FieldbyName('Adresa'     ).Value;
               mtEtiquetes.FieldByName('CP'         ).Value := Datos.FieldbyName('CP'         ).Value;
               mtEtiquetes.FieldByName('Poblacio'   ).Value := Datos.FieldbyName('Poblacio'   ).Value;
               mtEtiquetes.FieldByName('Provincia'  ).Value := Datos.FieldbyName('Provincia'  ).Value;
               mtEtiquetes.FieldByName('Pais'       ).Value := Datos.FieldbyName('Pais'       ).Value;

               Datos.Next;
           end;

           if not wData.ES_PROVA
           then qrEtiquetesFiliats.Print
           else qrEtiquetesFiliats.Preview;
           mtEtiquetes.Close;

        finally
           mtEtiquetes.Close;
           free;
        end;
      end;
    4:Begin
        if not TeDretAcces([187]) then op := AvisoListaSinCancel('Triar impressora:',['1. Blava', '2. Blanca']);  // al gimnàs només tenen una impressora de polseres

        With TwPrintEtiquetesFiliacio.Create(Application) do
        try
           mtEtiquetes.Open;
           Datos.First;

           While not Datos.Eof do
           begin
               mtEtiquetes.Append;
               mtEtiquetes.FieldByName('NomComplet' ).Value := Datos.FieldbyName('NomComplet' ).Value;
               mtEtiquetes.FieldByName('NUM_HIST'   ).Value := Datos.FieldbyName('NUM_HIST'   ).Value;
               mtEtiquetes.FieldByName('SEXE'       ).Value := Datos.FieldbyName('SEXE'       ).Value;
               mtEtiquetes.FieldByName('FECHA_NAC'  ).Value := Datos.FieldbyName('FECHA_NAC'  ).Value;
               mtEtiquetes.FieldByName('PLANTA'     ).Value := Datos.FieldbyName('PLANTA'     ).Value;
               
               Datos.Next;
           end;

           if TeDretAcces([99])   then qrPolseres.Preview
           else begin
               Impressores := TStringList.Create;

               planta := '';
               if      TeDretAcces([181]) then begin if op=0 then planta := 'UH1' else planta := 'UH1BN'; end
               else if TeDretAcces([182]) then begin if op=0 then planta := 'UH2' else planta := 'UH2BN'; end
               else if TeDretAcces([183]) then begin if op=0 then planta := 'UH3' else planta := 'UH3BN'; end
               else if TeDretAcces([184]) then begin if op=0 then planta := 'UH4' else planta := 'UH4BN'; end
               else if TeDretAcces([185]) then begin if op=0 then planta := 'UH5' else planta := 'UH5BN'; end
               else if TeDretAcces([186]) then begin if op=0 then planta := 'UH6' else planta := 'UH6BN'; end
               else if TeDretAcces([187]) then planta := 'GYM'
                                          else FerError('No té impressora d''etiquetes assignada.');

               impresorasplanta(planta, 'POLSERES', Impressores);

               for i:=0 to Impressores.Count - 1 do
               Begin
                   if selectPrinterQr(qrPolseres,Impressores.Strings[i])
                   then qrPolseres.Print
                   else begin
                       if AvisoSN('No s''ha pogut posar la impressora : '+Impressores.Strings[i]+#13+
                                  'Voleu imprimir manualent (S/N)?') then qrPolseres.Preview;
                   end;
               end;

{               if NT7OK and INFORMATICA_OK then impresorapordefecto
                                           else FerError('No s''ha pogut posar la impressora per defecte.' + NLine +
                                                         'Actualitzeu-la manualment o aviseu a INFORMÀTICA');  }
               Impressores.Free;
           end;
           mtEtiquetes.Close;

        finally
           mtEtiquetes.Close;
           free;
        end;
      end;
  end;

end;


Function ComprobarLLit(Llit: String):Boolean;
begin
  Result := ( SelectSQL(wData.Projecte.DataBaseName,
              'Select count(*) from P_ESPERA_LLITS(NULL, "S")  where  C_Llit = '+Llit+' and Tipus = "L"' ) > 0);
end;


function TeIngres(Historia: String):Boolean;
begin
    Result := (SelectSQLfmt(wData.Projecte.DataBaseName,
              ' Select * from Tractaments t left outer join prestacion p on t.c_prestacio = p.c_prestacio '+
              ' where t.c_historia = %s and t.data_alta is null '+
              ' and p.tipus = 1',
              [Historia]) <> 0);
end;


Function EsIngres(Prestacio: String):Boolean;
begin
    Result := (SelectSQL(wData.Projecte.DataBaseName,'select count(*) from prestacion where C_prestacio = "'+Prestacio+'" and Tipus = 1') <> 0);
end;


Function EsVisita(Prestacio: String):Boolean;
begin
    Result := (SelectSQL(wData.Projecte.DataBaseName,'select count(*) from prestacion where C_prestacio = "'+Prestacio+'" and Tipus = 2') <> 0);
end;


Function EsAmbulatori(Prestacio: String):Boolean;
begin
    Result := (SelectSQL(wData.Projecte.DataBaseName,'select count(*) from prestacion where C_prestacio = "'+Prestacio+'" and Tipus = 3') <> 0);
end;


procedure ImprimirNotaRecordatoria(HISTORIA: String; DATA_PREINGRES: TDate; NomComplet: String; rang_i: TDate=0; rang_f: TDate=0);
begin
    With TwPrintNotesRecordatoriesAgenda.Create(Application) do
    try
       if (rang_i = 0) then qProgramat.Sql[7] := 'and    E.DATA_PREINGRES >= "TODAY"'
                       else qProgramat.Sql[7] := Format('and    E.DATA_PREINGRES >= "%s" ', [FormatDateTime('dd.mm.yyyy', rang_i)]);
       if (rang_f = 0) then qProgramat.Sql[8] := 'and    E.DATA_PREINGRES <= F_AddYear("TODAY", 5)'
                       else qProgramat.Sql[8] := Format('and    E.DATA_PREINGRES <= "%s" ', [FormatDateTime('dd.mm.yyyy', rang_f)]);

       if EsBuit(Historia) then
       begin
          Idioma := IntToStr(AvisoLista('Elecció d''Idioma:',['Català', 'Castellà']));
          if Idioma = '1' then Idioma := '2';
          if Idioma = '0' then Idioma := '1';

          Sexe := IntToStr(AvisoLista('Elecció de Sexe:',['Home', 'Dona']));
          if Sexe = '1' then Sexe := 'D';
          if Sexe = '0' then Sexe := 'H';

          NombreCompleto := NomComplet;

          qProgramat.Close;
          qProgramat.DataSource := nil;
          qProgramat.Sql[6] := Format('where NOMCOMPLET = "%s"', [NomComplet]);
          qProgramat.Open;
       end
       else begin
          qHistoria.ParambyName('C_Historia').AsString := Historia;
          qHistoria.Open;

          Idioma         := qHistoria.Fieldbyname('Idioma').AsString;
          Sexe           := qHistoria.Fieldbyname('Sexo'  ).AsString;
          NombreCompleto := qHistoria.Fieldbyname('NomComplet').AsString;

          qProgramat.Close;
          qProgramat.DataSource := dsHistoria;
          qProgramat.Sql[6] := 'where E.C_HISTORIA = :num_hist ';   
          qProgramat.Open;
       end;

       if not wData.ES_PROVA then qrprogramacioVertical.Print
                             else qrprogramacioVertical.Preview;
    finally
       qHistoria.Close;
       qProgramat.Close;
       free;
    end;
end;


function RangoFechasenDias(Fecha1,Fecha2:TDate):Integer;
var
  Temp: Double;
  HorasIn, MinIn, HorasFin, MinFin, Sec, MSec: Word;
begin
    DecodeTime (Fecha1,HorasIn , MinIn , sec, msec);
    DecodeTime (Fecha2,HorasFin, MinFin, sec, msec);
    Temp     := Fecha2 - Fecha1;
    Result   := Trunc(Temp);
end;


procedure VerHistoria(NumHist:Integer; NomPacient: String);
begin

    with TwFitxaHistorial.Create(Application) do
    begin
        Caption := Format('Historial del pacient %s',[IntToStr(NumHist)]);
        pHistorial.Titulo     := Caption;
        pHistorial.SqlDic[10] := ' where T.C_HISTORIA = '+IntToStr(NumHist);
        pHistorial.SqlDic[24] := ' where T.C_HISTORIA = '+IntToStr(NumHist);
        pHistorial.Execute('','');
        if (pHistorial.Datos.Eof and pHistorial.Datos.Bof) then
        begin
           FerError(' * *  AQUEST PACIENT NO TÉ HISTORIAL  * * ');
           CLOSE;
        end;
    end;
end;


procedure TwMain.OmplirPlanol(Planta: String; idPlanta: Byte);
Var
  elemento : TComponent;
begin

    with  TwPrintPlano1Piso.Create(Application) do
    try
      qDatos.Close;
      qDatos.ParambyName('Planta').asString := Planta;
      qDatos.Open;
          While not qDatos.Eof do
          Begin
              elemento := FindComponent(Trim('qr' + qDatos.FieldByName('C_LLIT').AsString));

              If elemento <> Nil Then
              Begin
                  case qDatos.FieldByName('Tipus').AsString[1] of
                    'B':begin
                           (elemento As TQRlabel).Font.Size := 8;

                           (elemento As TQRlabel).Font.Style := [fsBold];
                           (elemento As TQRlabel).caption := 'BLOQUEJAT';
                            elemento := FindComponent('sex' + qDatos.FieldByName('C_llit').AsString);
                            If elemento <> Nil Then
                           (elemento As TQRlabel).Font.Size := 8;
                           (elemento As TQRlabel).Font.Style := [fsBold];
                           (elemento As TQRlabel).caption := 'X';
                        end;
                    'O':begin
                           (elemento As TQRlabel).Font.Size := 6;
                           (elemento As TQRLabel).caption := qDatos.fieldbyname('NOMCOMPLET').AsString;;
                            elemento := FindComponent('sex' + qDatos.FieldByName('C_LLIT').AsString);
                            If elemento <> Nil Then
                           (elemento As TQRlabel).Font.Size := 6;
                           (elemento As TQRLabel).caption := qDatos.fieldbyname('SEXO').asString;
                        end;
                    'L':begin
                           (elemento As TQRlabel).Font.Size := 8;
                           (elemento As TQRlabel).caption := 'LLIURE';
                            elemento := FindComponent('sex' + qDatos.FieldByName('C_llit').AsString);
                            If elemento <> Nil Then
                           (elemento As TQRlabel).Font.Size := 8;
                           (elemento As TQRlabel).caption := 'X';
                        end;
                  end;
              End;
              qDatos.Next;
          end;

          if TeDretAcces([105]) then
          begin
            case idPlanta of
              1: if AvisoSN('Vista preliminar?') then QR.Preview else QR.Print;
              2: if AvisoSN('Vista preliminar?') then QR2.Preview else QR2.Print;
              3: if AvisoSN('Vista preliminar?') then QR3.Preview else QR3.Print;
            end;
          end
          else begin
            case idPlanta of
              1: QR.Print;
              2: QR2.Print;
              3: QR3.Print;
            end;
          end;
    finally
      Free;
    end;

end;


procedure TwMain.PaisosClick(Sender: TObject);
begin
    CrearForm(twFitxaPais);
end;


procedure TwMain.ProvinciesClick(Sender: TObject);
begin
    CrearForm(TwFitxaProvincia);
end;


procedure TwMain.PoblacionsClick(Sender: TObject);
begin
    CrearForm(TwFitxaPoblacio);
end;


procedure TwMain.Llistadespera1Click(Sender: TObject);
begin
    if BuscaForm(TwFitxaLlistaEspera) = Nil then
    begin
        try
          with TwFitxaLlistaEspera.Create(wFitxaLlistaEspera) do
          begin
            Iniciar;
          end;
        finally
          wFitxaLlistaEspera.Free;
        end;
    end
    else AbrirForm(TwFitxaLlistaEspera);
end;


procedure TwMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    if TancantAutomatic then CanClose := PotTancar
                        else CanClose := AvisoSN ('Tancar el Programa?');

    if CanClose then wData.TancaTrazaControl(LastTraza, StatusTraza);
end;


procedure TwMain.Moaico1Click(Sender: TObject);
begin
    Tile;
end;


procedure TwMain.Cascada1Click(Sender: TObject);
begin
    Cascade;
end;


procedure TwMain.Tancartotes1Click(Sender: TObject);
var
  i : Integer;
begin
    For i := MDIChildCount -1 DownTo 0 Do MDIChildren[I].Close;
end;


procedure TwMain.EstableceTodas1Click(Sender: TObject);
var
  i:Integer;
begin
    For i := MDIChildCount -1 DownTo 0 Do MDIChildren[I].WindowState := wsNormal;
end;


procedure TwMain.MaximizaTodas1Click(Sender: TObject);
var
  i : Integer;
begin
    For i := MDIChildCount -1 DownTo 0 Do MDIChildren[I].WindowState := wsMaximized;
end;


procedure TwMain.MinimizaTodas1Click(Sender: TObject);
var
  i : Integer;
begin
    For i := MDIChildCount -1 DownTo 0 Do MDIChildren[I].WindowState := wsMinimized;
end;


procedure TwMain.OrganizaIconos1Click(Sender: TObject);
begin
    ArrangeIcons;
end;


procedure TwMain.Siguiente1Click(Sender: TObject);
begin
    Next;
end;


procedure TwMain.Anterior1Click(Sender: TObject);
begin
    Previous;
end;


procedure TwMain.ViesClick(Sender: TObject);
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


procedure TwMain.Agenda1Click(Sender: TObject);
begin
    with TwFitxaAgendaProgramacio(AbrirForm(TwFitxaAgendaProgramacio)) do IniciarAgenda(DateServer);
end;


procedure TwMain.Metges1Click(Sender: TObject);
begin
    CrearForm( TwFitxaMetges );
end;


procedure TwMain.Prestacions2Click(Sender: TObject);
begin
    CrearForm( TwFichaPrestacio );
end;


procedure TwMain.Festius1Click(Sender: TObject);
begin
     AbrirForm(TwFichaFestius);
end;


procedure TwMain.cAnulaAltaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    GutExecute('update ANULAALTA set ESTAT = 1 where C_TRACTAMENT = %d', [Datos.FieldbyName('C_Tractament').AsInteger]);
    Datos.Close;
    Datos.Open;
    if Datos.Eof and Datos.Bof then Sender.Close;
end;


procedure TwMain.Sortir1Click(Sender: TObject);
begin
    Close;
end;

procedure TwMain.Gestidellits1Click(Sender: TObject);
begin

    if (wData.UsuariActiu.Codi = '') then PreguntaMetge;
    if (wData.UsuariActiu.Codi = '') then Exit;

    if TeDretMetge(wData.UsuariActiu.Codi, [91,92], True) then
    begin
         With TwFitxaGestioLlits.Create(Application) do
         begin
            PotFerCanviLlit := TeDretMetge(wData.UsuariActiu.Codi, [92]);
            if not TeDretMetge(wData.UsuariActiu.Codi, [91]) then
            begin
               tsBloqueig.TabVisible := False;
               tsPlantesiLlits.TabVisible := False;
            end;
            wFitxaGestioLlits.Caption := wFitxaGestioLlits.Caption  + '[' + wData.UsuariActiu.Codi + ']';
         end;
    end;
end;


procedure TwMain.Biomanan1Click(Sender: TObject);
begin
    AbrirForm(TwFitxaLlistadeDietes);
end;


procedure TwMain.Passis1Click(Sender: TObject);
begin
    with TwFitxaGestioPassis.Create(Application) do Iniciar('');
end;


procedure TwMain.Filiats1Click(Sender: TObject);
begin
    CrearForm( TwFitxaFiliats );
end;


procedure TwMain.CentresFacturaci1Click(Sender: TObject);
begin
     CrearForm(TwFichaCentreFact);
end;


procedure TwMain.Proveidors1Click(Sender: TObject);
begin
     With TwFichaProveidor.Create(Application) do Init;
end;


procedure TwMain.cProvesAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
begin
    if Query.FieldByName('MetgeValida').IsNull
    then ColorFont := clGray
    else ColorFont := clBlack;

    if (gdSelected  in State) then ColorFont := clWhite;

    if (CompareText(Column.Field.FieldName,'U')=0)
    and (Column.Field.AsString='S') then
    begin
        ColorBrush := clRed;
        ColorFont  := clWhite;
    end;

    if ((CompareText(Column.Field.FieldName,'MetgeValida')=0)
    or (CompareText(Column.Field.FieldName,'DataValida')=0))
    and (Column.Field.AsString<>'') then
    begin
        ColorBrush := clBlue;
        ColorFont  := clWhite;
    end;
end;


procedure TwMain.cProvesAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
{-F
    if Datos.FieldByName('CodiProva').IsNull then
    begin
        Beep;
        Exit;
    end;

    with CrearForm(TwFichaProvaEspecial) as TwFichaProvaEspecial
    do Init(Sender,Datos.FieldByName('C_InterCon').AsInteger,Datos.FieldByName('CodiProva').AsString);
F-}
end;


procedure TwMain.ProvesPteValidarPreus1Click(Sender: TObject);
begin
    TeDretAcces([151],True);
    AbrirForm(TwFichaValidaPreuProva);
end;


procedure TwMain.Activitat1Click(Sender: TObject);
begin
    CrearForm ( TwFitxaActivitat );
end;


procedure TwMain.ExclososLlistadespera1Click(Sender: TObject);
begin
    CrearForm(TwFitxaConsultaExclusions);
end;


procedure TwMain.Prestacions1Click(Sender: TObject);
begin
    CrearForm( TwFitxaLlistatPrestacions );
end;


procedure TwMain.LlistesdesperaHistriques1Click(Sender: TObject);
begin
    CrearForm( TwFitxaEsperasHistoriques );
end;


procedure TwMain.Ingresats1Click(Sender: TObject);
begin
    AbrirForm(TwFitxaIngressats);
end;


procedure TwMain.Cartes1Click(Sender: TObject);
begin
    CrearForm( TwFitxaImpresioCartesRecordatories );
end;


procedure TwMain.Agenda2Click(Sender: TObject);
begin
    CrearForm( TwFitxaConsultaAgenda );
end;


procedure TwMain.ForadHoresClick(Sender: TObject);
begin
    CrearForm(TwFitxaForaDHores);
end;


procedure TwMain.EnTractamentClick(Sender: TObject);
begin
   CrearForm(TwFitxaEnTractament);
end;


procedure TwMain.FiliarExecute(Sender: TObject);
begin
    CrearForm(TwFitxaForadHores);
end;


procedure TwMain.FormCreate(Sender: TObject);
var
  yyyy: String;
begin
    PotTancar := True;
    DataFusio := GutSelect('select data_fusio from config where clau=1',[]);

    eUserActiu.Caption := '';
    bUserActiu.Visible := False;
    eUserActiu.Visible := False;
    wData.UsuariActiu.Codi := '';
    if TeDretAcces([70,193]) then CanviUsuariActiu;  // a certs accessos demanem usuari i deixem sessió oberta (Admissions, secres...)
    LastTraza := 0;
    StatusTraza := '';
    Aplica := 3;

    EsDeProves.Caption := Format('# # #  Entorn: %s  # # #   ', [AnsiUpperCase(wData.Entorn)]);
    EsDeProves.Visible := wData.ES_PROVA or (Application.Tag <> 0);

{-
    // Quan no fem res (ni teclat, ni mouse, ni scrolls...)
    // Per defecte, posem 3 minuts (configurat a CONFIG)
    Timer.Interval := wData.QParametres.FieldByName('MinutsAdmissions').AsInteger * 60000;
    // Si té el dret 300, allarguem temps a 45 minuts.
    if TeDretAcces([300]) then Timer.Interval := Timer.Interval * 15;

    Application.OnIdle    := Inactividad;
    Application.OnMessage := Actividad;
-}
    if wData.ES_PROVA then Nadal1.Visible := True
    else begin
        yyyy:=FormatDateTime('yyyy',DateServer);
        qDates.Close;
        qDates.ParamByName('anyo').AsString:=yyyy;
        qDates.Open;
        if qDates.Eof then Nadal1.Visible := False else
        Nadal1.Visible := ((qDates.FieldByName('INICI_PERIODE1').AsDateTime <= NowServer) and (NowServer <= qDates.FieldByName('FINAL_PERIODE1').AsDateTime)) or
                          ((qDates.FieldByName('INICI_PERIODE2').AsDateTime <= NowServer) and (NowServer <= qDates.FieldByName('FINAL_PERIODE2').AsDateTime)) or
                          ((qDates.FieldByName('INICI_PERIODE3').AsDateTime <= NowServer) and (NowServer <= qDates.FieldByName('FINAL_PERIODE3').AsDateTime));
    end;

    DatesdinarsNadal1.Visible:=TeDretAcces([124]);  

    if TeDretAcces([165,168],False,False) then RefrescarAlarmes(Bevel1);
    if TeDretAcces([164])                 then RenovacionsAutomatiques;

    // És cap d'Admissions (el tenen Elena, Ainara, Mireia...)
    if TeDretAcces([71]) then
    begin
        MostrarOpcions(71);
        Exit;
    end;

    // Admissions bàsic
    if TeDretAcces([70]) then
    begin
        MostrarOpcions(70);
        Exit;
    end;

    // Només Consulta Admissions (els pcs de la casa: metges, infermeria, etc. Bàsicament tothom)
    if TeDretAcces([72]) then
    begin
        MostrarOpcions(72);
        Exit;
    end;

    // Consulta Admissions des de Centraleta
    if TeDretAcces([74]) then
    begin
        MostrarOpcions(74);
        Exit;
    end;

    MostrarOpcions(0);
end;


procedure TwMain.MostrarOpcions(Dret:Integer);
var
  i: Integer;
begin

   CASE Dret OF
      71: Nivell := 3;    //<--- Cap d'Admisions
      70: Nivell := 2;    //<--- Admisions Genèric
      72: begin           //<--- Admisions Consulta
            Nivell := 1;
            Llistadespera1.Enabled := TeDretAcces([150]);   // Això no serveix per res pq després l'habilita o no en funció del nivell, que és 1 o 2 per tots els usuaris q tenen dret A150 (i si algun no té aquest nivell, tampoc no entrarà en aquest CASE!!!!
          end;
     else Nivell := 0;
   END;

   for i := 0 to ComponentCount - 1 do
   begin
      if (Components[i] is TMenuItem) then
      begin
         with (Components[i] as TMenuItem) do Enabled := (Nivell >= Tag) or (((Nivell = 3) or (Nivell = 2)) and (Tag = 5));

         if TeDretAcces([73]) then if (Components[i].Tag in [4,5]) then TMenuItem(Components[i]).Enabled := True;
      end;
   end;

   if TeDretAcces([74]) then      // porteria, seguretat....
   begin
      consultes1.Enabled := True;
      elements1.Enabled :=  True;
      Ingresats1.Enabled := True;
      AllamentsEnCurs.Enabled := False;
      PermisosSortida1.Enabled := True;

      if not TeDretAcces([100]) then
      begin
          Programaci1.Enabled := True;
          Filiats1.Enabled := True;
          Llistadespera1.Enabled := False;
          AutoritzaciLlistadespera1.Enabled := False;
          Agenda1.Enabled := False;
          Agenda2.Enabled := False;
          Activitat1.Enabled := False;
          Cartes1.Enabled := False;
          Justificants1.Enabled := False;
      end;
   end;

   if TeDretAcces([151]) then   // preus proves especials
   begin
       Facturaci1.Enabled := True;
       ProvesPteValidarPreus1.Enabled := True;
       ValidaciPreusInformesRXCreuBlanca1.Enabled := True;
       Manteniments1.Enabled := True;
       Proveidors1.Enabled := True;
   end;

   if TeDretAcces([75], False, False) then     //  accés restringit a infermeria admissions i gimnàs
   begin
       Llistadespera1.Enabled := false;
       AutoritzaciLlistadespera1.Enabled := false;
       Agenda2.Enabled := false;
       Activitat1.Enabled := false;
       Cartes1.Enabled := false;
       Justificants1.Enabled := false;
       Gestidellits1.Enabled := false;
       Prestacions1.Enabled := false;
       LlistesdesperaHistriques1.Enabled := false;
       ExclososLlistadespera1.Enabled := false;
       Entractament.Enabled := false;
       VisitesdeSeguiment1.Enabled := false;
       Ambulatorisdemsde3mesos1. Enabled := false;
       Activitatspacient1.Enabled := false;
       Renovaciopermisosdemutues1.Enabled := false;
       Foradhores.Enabled := false;
   end;

   if TeDretAcces([76], False, False) then Filiats1.Enabled := false;    // no pot veure llista Filiats

   if TeDretAcces([67]) then            // llistats memòria - tot
   begin
     LlistatsMemria1.Enabled := true;
     LlistatsComprovaci1.enabled := true;
     UnitatMdica1.enabled:=true;
     CIPs1.enabled:=true;
     HistriesiCognoms1.enabled:=true;
     Pasosipoblacions1.enabled:=true;
     Pacientsnous1.enabled:=true;
     Tractaments1.enabled:=true;
     Atesos1.enabled:=true;
   end
   else if TeDretAcces([106]) then      // llistats memòria sense dades de facturació (MSecanell i RLopez)
   begin
     LlistatsComprovaci1.enabled := false;
     LlistatsMemria1.Enabled := true;
     Pacientsnous1.enabled:=true;
     Tractaments1.enabled:=True;
     Atesos1.enabled:=true;
     Pacientsatesosunics1.enabled:=true;
     Reingressos1.enabled:=True;
   end
   else begin                           // no veuen llistats memòria
     LlistatsMemria1.Enabled := false;
     LlistatsComprovaci1.enabled := false;
     UnitatMdica1.enabled:=false;
     CIPs1.enabled:=false;
     HistriesiCognoms1.enabled:=false;
     Pasosipoblacions1.enabled:=false;
     Pacientsnous1.enabled:=false;
     Tractaments1.enabled:=false;
     Atesos1.enabled:=false;
   end;

   AreaMedica1.Visible := TeDretAcces([107,115]);
   N_MenuInfer.Visible := TeDretAcces([129, 132]);
   InferGestioInformes1.Visible := TeDretAcces([129]);
   InferPublicacioHCCC1.Visible := TeDretAcces([132]);
   Etiologies.Visible := TeDretAcces([96]);
   ScrollAlarmes.Visible := TeDretAcces([165,168],False,False);

   if TeDretAcces([136]) then ActivitatNPC.Enabled := True;

   if TeDretAcces([99]) 
   then wData.Projecte.Versimple := False
   else wData.Projecte.Versimple := True;

   Ambulancies.Enabled := TeDretAcces([70,200]);
   AmbulanciesPeticio.Visible := TeDretAcces([70]);

   Bloquigdellits1.Visible := TeDretAcces([89,201,202,203,204,205,206]);

   Ingressosprevistos1.Visible := TeDretAcces([123,201,202,204,205]);
   Gestidecues1.Visible := TeDretAcces([155]);  // des d'Admissions i CCEE
   Gestidellits1.Enabled := Gestidellits1.Enabled or TeDretAcces([91]); // permetre també als de dret A91 accedir a la gestió de llits
   Responsableinfermeria1.Visible := TeDretAcces([135]);

   EntractamentEASE1.Visible := TeDretAcces([192]);

    // Admissions i certs logins (CE, metges, secres...) poden modificar l'agenda 
    PotGestionarAgenda := (wMain.Nivell > 1) or TeDretAcces([128]);
end;


procedure TwMain.InfoAccesExecute(Sender: TObject);
var
  Linea: String;
begin
    Linea:=      'Acces: '+wData.NO_ACCES+NLine;
    Linea:=Linea+'Ethernet: '+wData.ID_NIC+NLine;
    Linea:=Linea+'UserName: '+wData.ID_LOGIN+NLine;
    Linea:=Linea+'ComputerName: '+wData.ID_COMPUTER+NLine;
    Linea:=Linea+'Recurs: '+wData.ID_REMOTE+NLine;

    Linea:=Linea+'------------------------'+NLine;
    Linea:=Linea+'Drets acces'+NLine;
    Linea:=Linea+'------------------------'+NLine;
    Linea:=Linea+NLine;

    wData.QDretsAcces.First;
    While not wData.QDretsAcces.Eof do
    begin
         Linea:=Linea+wData.QDretsAcces.FieldByName('C_Dret').AsString+'    '+wData.QDretsAcces.FieldByName('Descripcio').AsString+NLine;
         wData.QDretsAcces.Next;
    end;

   ShowMensaje(Linea);
end;


procedure TwMain.AutoritzaciLlistadespera1Click(Sender: TObject);
var
  Metge: TMetge;
begin

  if wData.UsuariActiu.Codi <> ''
  then Metge := wData.UsuariActiu
  else Metge := PreguntaMetge;

  if EsPle(Metge.Codi) then
  begin

     With TwFitxaAutoritzacioEsperaMetge.Create(Application) do
     Begin
       pAutoritzacioEspera.SqlDic.Text := Format(pAutoritzacioEspera.SqlDic.Text, [Metge.Especial]);
       Caption := Format(Caption, [Metge.Codi]);
       pAutoritzacioEspera.Titulo := Format(pAutoritzacioEspera.Titulo, [Metge.Codi]);
       METGEAUTORITZACIO := Metge.Codi;
       pAutoritzacioEspera.Execute('','');
     end;

  end;
end;


procedure TwMain.CensClick(Sender: TObject);
begin
    CrearForm( TwFitxaLlistatDietesiLlits );
end;


procedure TwMain.Justificants1Click(Sender: TObject);
begin
   With TwDialegJustificant.Create(Application) do
   try
     ShowModal;
   finally
     free;
   end;
end;


procedure TwMain.LlistatPrealtes1Click(Sender: TObject);
begin
    CrearForm(TwFitxaLlistatPrealtes);
end;


procedure TwMain.Renovaciopermisosdemutues1Click(Sender: TObject);
var
  Fecha: TDateTime;
begin
    Fecha := Calendario(DateServer, Catala, False, 'Renovació de permisos fins a data...');
    cRenovacioMutues.SqlDic[13] := '"'+FechaIB(Fecha)+'"';
    cRenovacioMutues.ExecuteChild;
end;


procedure TwMain.TimerTimer(Sender: TObject);
var
  Tancar: Boolean;
begin
{-     Application.Restore;
     Application.BringToFront;

     Timer.Enabled := False;
     FlagContaAtras := True;
     try

     // Desactivo aquest timer
        with TwContaEnrera.Create(Application) do
        begin
             try
              MessageBeep(10);
              MessageBeep(10);
              Tancar:= ShowModal<>mrOk;
             finally
              Free;
             end;
        end;
        if Tancar then
        begin
             MessageBeep(10);
             MessageBeep(10);
             MessageBeep(10);
             MessageBeep(10);

             TancantAutomatic := True;
             Close;
        end;

     finally
        //El torno ha activar
        Timer.Enabled := True;
        FlagContaAtras := False;
     end;
-}
end;


procedure TwMain.CodisOrtesis1Click(Sender: TObject);
begin
    With TwFitxaManteFamsiGrupsOrt.Create(Application) do Init;
end;


procedure TwMain.OrtesisPteEntregar1Click(Sender: TObject);
begin
     with TwFichaListOrtesis(AbrirForm(TwFichaListOrtesis)) do Iniciar;
end;


procedure TwMain.PteRealitzar1Click(Sender: TObject);
begin
    with cProvesPte do
    begin
        Titulo := 'Proves Pte.Realitzar';
        SqlDic[5]:='2';
        ExecuteChild('','');
    end;
end;


procedure TwMain.Historic1Click(Sender: TObject);
begin
    with cProvesHistoric do
    begin
        Titulo := 'Històric de proves';
        ExecuteChild('','');
    end;
end;


Procedure TwMain.ObrirTractament(Tractament, Historia:Integer; vReadOnly: Boolean = False);
begin
    With TwFitxaFiliacio.Create(Application) do
    begin
        Caption := 'Edició Tractament de la Filiacio ('+ IntToStr(Historia) +')';
        NUMESPERA := '-1';
        eNHCNovaHCE.Text := IntToStr(Historia);

        tFiliacio.RequestLive    := vReadOnly;
        tTractaments.RequestLive := vReadOnly;
        tParent.RequestLive      := vReadOnly;

        tFiliacio.Open;
        tFiliacio.FindKey( VarArrayof([Historia]));
        tTractaments.Open;
        tTractaments.FindKey( VarArrayof([Tractament]));
        tParent.Open;
        consulta:=Self.Caption;  
    end;
end;


procedure TwMain.FamiliesdOrtesi1Click(Sender: TObject);
var
  Fecha: TDate;
begin
    with TwDialegImpresioFamiliesOrtesi.Create(Application) do
    try
      Fecha := DateServer;
      Desde.EditValue := '01/01/'+IntToStr(any(Fecha));
      Fins .EditValue := DateToStr(Fecha);
      ShowModal;
    finally
      Free;
    end;
end;



procedure TwMain.PlantasAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    OmplirPlanolNou(Datos.FieldbyName('C_Planta').asString);
end;


procedure TwMain.OmplirPlanolNou(Planta: String);
Var
  elemento : TComponent;
  Llit     : String;
begin
    with  TwPrintPlano1Piso.Create(Application) do
    try
      qDatos.Close;
      qDatos.ParambyName('Planta').asString := Planta;
      qDatos.Open;
      
      While not qDatos.Eof do
      Begin
          Llit := qDatos.FieldByName('C_LLIT').AsString;

          Llit := Copy(qDatos.FieldByName('C_LLIT').AsString, 2, 2);
          elemento := FindComponent( Trim( 'NUM'  + LLit ));

          If elemento <> Nil Then
          Begin
              case qDatos.FieldByName('Tipus').AsString[1] of
                'B':begin
                       (elemento As TQRlabel).Font.Size  := 12;
                       (elemento As TQRlabel).Font.Style := [fsBold];
                       (elemento As TQRlabel).caption    := qDatos.FieldByName('C_LLIT').AsString;
                       (elemento As TQRlabel).Transparent:= False;

                        elemento := FindComponent( Trim( 'NUMx' + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 12;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := qDatos.FieldByName('C_LLIT').AsString;
                        end;

                        elemento := FindComponent('SEX' + Llit);
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 12;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := ' ';
                         (elemento As TQRlabel).Left    := (elemento As TQRlabel).Left + 5
                        end;

                        elemento := FindComponent( Trim( 'NOM'  + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 12;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := 'BLOQUEJAT';
                        end;

                    end;
                'O':begin
                       (elemento As TQRlabel).Font.Size := 6;
                       (elemento As TQRlabel).caption   := qDatos.FieldByName('C_LLIT').AsString;

                        elemento := FindComponent( Trim( 'NUMx' + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size := 6;
                         (elemento As TQRlabel).caption   := qDatos.FieldByName('C_LLIT').AsString;
                        end;

                        elemento := FindComponent('SEX' + LLit );
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size := 6;
                         (elemento As TQRLabel).caption   := qDatos.fieldbyname('SEXO').asString;
                        end;

                        elemento := FindComponent( Trim( 'NOM'  + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size := 6;
                         (elemento As TQRLabel).caption   := qDatos.fieldbyname('NOMCOMPLET').AsString;;
                        end;

                    end;
                'L':begin
                       (elemento As TQRlabel).Font.Size  := 12;
                       (elemento As TQRlabel).Font.Style := [fsBold];
                       (elemento As TQRlabel).caption    := qDatos.FieldByName('C_LLIT').AsString;
                       (elemento As TQRlabel).Transparent:= False;

                        elemento := FindComponent( Trim( 'NUMx' + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 12;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := qDatos.FieldByName('C_LLIT').AsString;
                        end;

                        elemento := FindComponent('SEX' + Llit);
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 12;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := ' ';
                         (elemento As TQRlabel).Left    := (elemento As TQRlabel).Left + 5;
                        end;

                        elemento := FindComponent( Trim( 'NOM'  + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 12;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := 'LLIURE';
                        end;
                    end;
              end;
          End;
          qDatos.Next;
      end;

      QRTitle.Caption := Format(QRTitle.Caption, [qDatos.FieldbyName('N_Planta').asString]);

      if TeDretAcces([105]) then
      begin
          if AvisoSN('Vista preliminar?') then QRHospitalNou.Preview else QRHospitalNou.Print;
      end
      else QRHospitalNou.Print;
    finally
      Free;
    end;
end;


procedure TwMain.NouHospital1Click(Sender: TObject);
begin
    Plantas.ExecuteModal;
end;


procedure TwMain.FitxerSCSPAOS1Click(Sender: TObject);
var
  miFecha: TDate;
begin
    miFecha := Calendario(Date, Catala, False, 'Indicar l''ÚLTIM DIA del mes a processar');
    if miFecha = 0 then Exit;

    with TwFichaInternetScs.Create(Application) do
    begin
        try
         Fecha.AsDate := LastDateOfMonth(miFecha);
         FechaChange(Fecha);
         ShowModal;
        finally
         Free;
        end;
    end;
end;


procedure TwMain.VisitesdeSeguiment1Click(Sender: TObject);
begin
    CrearForm(TwVisites2003Previstes);
end;


procedure TwMain.Ambulatorisdemsde3mesos1Click(Sender: TObject);
begin
    CrearForm(TwAmbulato3Mesos);
end;


procedure TwMain.EquipAssistencial1Click(Sender: TObject);
begin
    with TwDialegSeleccioEquipAssist(AbrirForm(TwDialegSeleccioEquipAssist)) do PanelEquipsAssist.Execute('','');
end;


procedure TwMain.Activitatspacient1Click(Sender: TObject);
begin
    CrearForm(TwActivitatPacients);
end;


procedure TwMain.LListatinfermeria1Click(Sender: TObject);
begin
    CrearForm( TwFitxaLlistatTasquesiLlits );
end;


procedure TwMain.AutoritzaMutuesClick(Sender: TObject);
begin
    CrearForm(TwFitxaAutoritzaMutues);
end;


procedure TwMain.UnitatMdica1Click(Sender: TObject);
begin
    CrearForm(TwLlistatUM);
end;


procedure TwMain.CIPs1Click(Sender: TObject);
begin
    if nHCE_ON then ShowMessage('Aquestes dades s''han de modificar a la nova HCE.')
               else CrearForm(TwCIP_DNI);
end;


procedure TwMain.HistriesiCognoms1Click(Sender: TObject);
begin
    if nHCE_ON then ShowMessage('Aquestes dades s''han de modificar a la nova HCE.')
               else CrearForm(TwNHC);
end;


procedure TwMain.Pasosipoblacions1Click(Sender: TObject);
begin
    if nHCE_ON then ShowMessage('Aquestes dades s''han de modificar a la nova HCE.')
               else CrearForm(TwPaisos);
end;


procedure TwMain.Pacientsnous1Click(Sender: TObject);
begin
    CrearForm(TwPacientsNous);
end;


procedure TwMain.Tractaments1Click(Sender: TObject);
begin
    CrearForm(TwTractaments);
end;


procedure TwMain.Atesos1Click(Sender: TObject);
begin
    with TwAtesos.Create(Application) do
    begin
      pPacientsAtesos.sqldic[0]  := 'Select distinct(f.num_hist),t.data_ingres,t.data_alta,t.c_tractament,t.c_prestacio,f.edat,f.codigo,f.pais,'+
                                   'f.c_unitatmedica,f.c_origen,c.n_codi as origen,f.c_causa,c2.n_codi as causa,f.c_causa_detall,c3.n_codi as causa_detall'+
                                   ',f.um_antiga, t.c_motiu,t.c_coordinador,f.sexo,t.c_centrefac,t.c_client, t.c_delegacio';
      pPacientsAtesos.sqldictotal[0]:= 'select count(*)';
      DonVe:=0;
      Iniciar;
    end;
end;


procedure TwMain.Pacientsatesosunics1Click(Sender: TObject);
begin
    with TwAtesos.Create(Application) do
    begin
      pPacientsAtesos.sqldic[0]  := 'Select distinct(f.num_hist),f.fecha_nac,f.edat,f.codigo,f.pais,f.c_unitatmedica,f.c_origen,c.n_codi as origen,f.c_causa,c2.n_codi as causa'+
                                    ',f.c_causa_detall,c3.n_codi as causa_detall,f.um_antiga,f.sexo';
      pPacientsAtesos.sqldictotal[0]:= 'select count(distinct f.num_hist)';
      DonVe:=1;
      Iniciar;
    end;
end;


procedure TwMain.IncongrunciesUnitats1Click(Sender: TObject);
begin
    CrearForm(TwIncongruenciesUnitats);
end;


procedure TwMain.UnitatAdministrativa1Click(Sender: TObject);
begin
    CrearForm(TwLlistatUA);
end;


procedure TwMain.Reingressos1Click(Sender: TObject);
begin
    CrearForm(TwListReingres);
end;


procedure TwMain.Plnols1Click(Sender: TObject);
begin
    Plantas.ExecuteModal;  
end;


procedure TwMain.Calendari1Click(Sender: TObject);
begin
    if wData.UsuariActiu.Codi = '' then PreguntaMetge;
    if wData.UsuariActiu.Codi = '' then Exit;
    if TeDretAcces([107])
    or TeDretGrup(wData.UsuariActiu.Grup,[50])
    or TeDretMetge(wData.UsuariActiu.Codi, [167]) 
    then begin
        WaitOn('  Obrint la fitxa . . .   ');
        CrearForm(TwCalendariMetges);
        WaitOff();
    end;
end;


procedure TwMain.Sollicituddinformes1Click(Sender: TObject);
begin
    if (0 <> GutSelect('select ESTAT from CONFIGBLOQ where CAMP = "INFORMES"', []))
    then ShowMessage('Estem actualitzant l''aplicació d''Informes Sol·licitats.'+ NLine +'Torneu-ho a intentar més tard.')
    else CrearForm(TwFitxaInformesAM);
end;


procedure TwMain.Permetge2Click(Sender: TObject);
begin
    if TeDretMetge(wData.UsuariActiu.Codi, [167]) then Exit;
    CrearForm(TwLlistatsSCPerMetge);
end;


procedure TwMain.RehabilitaciInfantil2Click(Sender: TObject);
begin
    if TeDretMetge(wData.UsuariActiu.Codi, [167]) then Exit;
    CrearForm(TwLlistatsScRehabInf);
end;


procedure TwMain.Informes1Click(Sender: TObject);
begin
   if TeDretMetge(wData.UsuariActiu.Codi, [167]) then Exit;
   CrearForm(TwLlistatInformes);
end;


procedure TwMain.CanvisUMExecute(Sender: TObject);
begin
    ara := NowServer;
    cCanvisUM.ExecuteChild;
end;


procedure TwMain.cCanvisUMAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var qui: Integer;
begin
    if AvisoSN('Voleu esborrar el registre?') then
    begin
        qui := Datos.FieldByName('QUI').AsInteger;
        qui := qui-1;
        GutExecute('update LOGUM set QUI = QUI-1 where C_HISTORIA = %d and DATA = "%s"',
                   [Datos.FieldByName('C_HISTORIA').AsInteger,
                    FormatDateTime('dd.mm.yyyy hh:nn:ss', Datos.FieldByName('DATA').AsDateTime)]);
        Datos.Close;
        Datos.Open;
    end;
end;


procedure TwMain.cCanvisUMAlTancar(Sender: THYConsulta);
begin
    if (0 < GutSelect('select COUNT(*) from LOGUM where F_Modulo(QUI, 2) = 1', [])) then
    begin
        if AvisoNS('Voleu esborrar tots els registres de la taula?') then
        begin
            GutExecute('update LOGUM set QUI = QUI-1 where (DATA < "%s") and (F_Modulo(QUI, 2) = 1)', [FormatDateTime('dd.mm.yyyy hh:nn:ss', ara)]);
            TeCanvisUM.Hide;
        end;
    end
    else TeCanvisUM.Hide;
end;


procedure TwMain.EstadgymClick(Sender: TObject);
begin
    CrearForm(TwEstadGym);
end;


procedure TwMain.HospitalOrigen1Click(Sender: TObject);
begin
    CrearForm(TwHospitalOrigen);
end;


procedure TwMain.EtiologiesClick(Sender: TObject);
begin
    with TwFitxaEtiGLF.Create(Application) do Iniciar;
end;


procedure TwMain.Passisautoritzats1Click(Sender: TObject);
begin
    with TwFitxaGestioPassis.Create(Application) do Iniciar('S');
end;


procedure TwMain.Alteshospitalries1Click(Sender: TObject);
begin
    CrearForm(TwFitxaLlistatAltes);
end;


procedure TwMain.AllamentsEnCursClick(Sender: TObject);
begin
    CrearForm(TwLlistatAilla);
end;


procedure TwMain.Nadal1Click(Sender: TObject);
var
  planta: String;
begin
    if wData.UsuariActiu.Codi = '' then PreguntaMetge;
    if wData.UsuariActiu.Codi = '' then Exit;

    // Mirem dret de grup (infermeria o auxiliars) o algunes persones (Sole i alguns usuaris de Serveis generals)
    if TeDretGrup(wData.UsuariActiu.Grup, [26,43]) or TeDretMetge(wData.UsuariActiu.Codi,[125,187])
    then begin
        planta := 'TOT';
        if      TeDretAcces([201], False, False) then planta := 'UH-1'
        else if TeDretAcces([202], False, False) then planta := 'UH-2'
        else if TeDretAcces([204], False, False) then planta := 'UH-4'
        else if TeDretAcces([205], False, False) then planta := 'UH-5';

        with TwLlistatNadal(AbrirForm(TwLlistatNadal)) do Iniciar(planta);
    end

    else FerError(Error1);
end;


procedure TwMain.DistrictesBarcelona1Click(Sender: TObject);
begin
    if nHCE_ON then ShowMessage('Aquestes dades s''han de modificar a la nova HCE.')
               else CrearForm(TwDistrictes);
end;


procedure TwMain.ValidaciPreusInformesRXCreuBlanca1Click(Sender: TObject);
begin
    TeDretAcces([151],True);
    AbrirForm(TwFitxaValidaRXCreuBlanca);
end;


procedure TwMain.bUserActiuClick(Sender: TObject);
begin
    // si només hi ha el Main obert, permetem canviar d'usuari
    if (Self.MDIChildCount = 0) then CanviUsuariActiu;
end;


procedure TwMain.FormActivate(Sender: TObject);
begin
    if (wData.UsuariActiu.Codi = '') then Exit;

    UMcorregir.Visible:=TeDretMetge(wData.UsuariActiu.Codi,[166]) or TeDretGrup(wData.UsuariActiu.Grup,[58]); 

    // Actualitzem l'usuari actiu:
    eUserActiu.Caption := Format('Usuari actiu: %s %s %s', [wData.UsuariActiu.Tracte, wData.UsuariActiu.Desc, wData.UsuariActiu.Cognoms]);
end;


procedure TwMain.CanviUsuariActiu;
var Tmp: TMetge;
begin
    Tmp := PreguntaMetgePlus(True);
    if (Tmp.Codi = '') then Exit;

    wData.UsuariActiu := Tmp;
    eUserActiu.Caption := Format('Usuari actiu: %s %s %s',[wData.UsuariActiu.Tracte,wData.UsuariActiu.Desc,wData.UsuariActiu.Cognoms]);
    bUserActiu.Visible := True;
    eUserActiu.Visible := True;

    FormActivate(Self);
end;


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


procedure TwMain.AlarmaECOSprogClick(Sender: TObject);
begin
    ScrollAlarmes.Visible := False;
    cECOSprog.ExecuteChild;
end;


procedure TwMain.cECOSprogAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  data_prev: TDateTime;
  compta: Integer;
begin
    // Demanem data prevista
    data_prev := 0;
    data_prev := Calendario(DateServer, Catala, False, 'Data prevista');
    if (data_prev <> 0) then
    begin
        if (data_prev < DateServer) then
        begin
            ShowMessage('La data prevista no pot ser passada');
            Exit;
        end;

        GutExecute('update INTERCON  set DATA_PREVISTA = "%s" where C_INTERCON = %d',
                   [FormatDateTime('dd.mm.yyyy', data_prev), Datos.FieldByName('C_Intercon').AsInteger]);
        Datos.Close;
        Datos.Open;
        compta := Datos.RecordCount;
        if      (compta = 1) then AlarmaECOSprog.Caption := '1 ECO pendent de programar'
        else if (compta > 0) then AlarmaECOSprog.Caption :=  IntToStr(compta) + ' ECOS pendentS de programar'
        else begin
            AlarmaECOSprog.Hide;
            ScrollAlarmes.Height := ScrollAlarmes.Height - 30;
        end;
    end;
end;


procedure TwMain.RefrescarAlarmes(Sender: TObject);
var
  Quantes: Integer;
begin
    alturaalarmes:=35;
    AlarmaECOSprog.Visible := False;
    AlarmaUROSprog.Visible := False;
    AlarmaINTERCONUROprog.Visible := False;
    AlarmaValoracionsNPC.Visible  := False;
    AlarmaOrtesisPrivadesRealitzades.Visible := False;
    AlarmaProvEspPrivadesSol.Visible := False;
    AlarmaBancSangPrivats.Visible := False;

    if TeDretAcces([165],False,False) then
    begin
        // ECOS pendents de programar (pc Elena)
        Quantes := GutSelect('select COUNT(*) from INTERCON I ' +
                             'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT ' +
                             'join DRETSMOTIU D on T.C_MOTIU = D.C_MOTIU and D.C_DRET = "X6" ' +
                             'where I.C_TIPUS = "ECOS" and I.ESTAT = 12 ' +
                             'and T.C_PRESTACIO = "1004" ' +
                             'and I.DATA_PREVISTA is NULL and I.DATA_PROVA IS NULL', []);
        if (Quantes > 0) then
        begin
            if (Quantes = 1) then AlarmaECOSprog.Caption := '1 ECO pendent de programar'
                             else AlarmaECOSprog.Caption := IntToStr(Quantes) + ' ECOS pendents de programar';
            AlarmaECOSprog.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;

        // UROS pendents de programar (pc Elena)
        Quantes := GutSelect('select COUNT(*) from INTERCON I ' +
                             'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT ' +
                             'join DRETSMOTIU D on T.C_MOTIU = D.C_MOTIU and D.C_DRET = "X6" ' +
                             'where I.C_TIPUS = "UROS" and I.ESTAT = 13 ' +
                             'and T.C_PRESTACIO = "1004" ' +
                             'and I.DATA_PREVISTA is NULL and I.DATA_PROVA IS NULL', []);
        if (Quantes > 0) then
        begin
            if (Quantes = 1) then AlarmaUROSprog.Caption := '1 URO pendent de programar'
                             else AlarmaUROSprog.Caption := IntToStr(Quantes) + ' UROS pendents de programar';
            AlarmaUROSprog.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;

        // INTERCON UROLOGIA pendents de programar (pc Elena)
        Quantes := GutSelect('select COUNT(*) from INTERCON I ' +
                             'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT ' +
                             'join DRETSMOTIU D on T.C_MOTIU = D.C_MOTIU and D.C_DRET = "X6" ' +
                             'where I.C_TIPUS = "INTERCON" and I.C_ESPECIAL="03" AND I.ESTAT=1 ' +
                             'and T.C_PRESTACIO = "1004" ' +
                             'and I.DATA_PREVISTA is NULL and I.DATA_PROVA IS NULL', []);
        if (Quantes > 0) then
        begin
            if (Quantes = 1) then AlarmaINTERCONUROprog.Caption := '1 UROLOGIA pendent de programar'
                             else AlarmaINTERCONUROprog.Caption := IntToStr(Quantes) + ' UROLOGIES pendents de programar';
            AlarmaINTERCONUROprog.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;

        // TIMEOUT consulta externa
        Quantes := GutSelect('select COUNT(*) from TIMEOUTCMA C                                 ' +
                             'join TRACTAMENTS T on C.C_TRACTAMENT = T.C_TRACTAMENT             ' +
                             'join PRESTACION  P on T.C_PRESTACIO = P.C_PRESTACIO AND P.TIPUS=2 ' +
                             'where T.C_PRESTACIO <> "2006" and "TODAY" - C.DATA_TIMEOUT < 20   ', []);
        if (Quantes > 0) then
        begin
            if (Quantes = 1) then AlarmaTimeOut.Caption := '1 TimeOut consulta externa'
                             else AlarmaTimeOut.Caption := IntToStr(Quantes) + ' TimeOut consulta externa';
            AlarmaTimeOut.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;
    end;

    if TeDretAcces([168],False,False) then
    begin
        // Pacients NPC que ingressaran
        Quantes := GutSelect('select count(*) FROM NPCVALORA N                                                                        '+
                             'where not n.c_historia in(select e.c_historia from espera e                                             '+
                             '                          join PRESTACION  p on e.c_prestacio=p.c_prestacio and p.esease="C"            '+
                             '                          join dretspresta d on p.c_prestacio=d.c_prestacio and d.c_dret="P117"         '+
                             '                          where e.data_preingres>="TODAY" and e.exclos="N" and e.data_inclusio>=n.data) '+
                             'and n.data_preingres>="TODAY" ',[]);

        if (Quantes > 0) then
        begin
            if (Quantes = 1) then AlarmaValoracionsNPC.Caption := '1 Pacient NPC que ingressara'
                             else AlarmaValoracionsNPC.Caption := IntToStr(Quantes) + ' Pacients NPC que ingressaran';
            AlarmaValoracionsNPC.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;

        // Pacients NPC amb antibiòtics que han de pagar a part
        dia := DateServer - 1; // hem de mostrar des de l'últim dia hàbil fins avui
        while not Laborable(dia) do
        begin
            dia := dia - 1;
        end;

        Quantes := GutSelect('SELECT count(*) FROM ORDRESMEDIQUES O                                               '+
                             'JOIN FILIACIO F ON O.C_HISTORIA=F.NUM_HIST                                          '+
                             'JOIN TRACTAMENTS T ON O.C_TRACTAMENT=T.C_TRACTAMENT AND T.C_CENTREFAC IN("00","50") '+
                             'JOIN PRODUCTES P ON O.C_PRODUCTE=P.C_PROD                                           '+
                             'WHERE O.DATA_ASSIGNACIO BETWEEN "%s" AND "NOW"                                      '+
                             'AND P.FACTURABLEPRIVATS = "S"                                                       '+
                             'AND ((O.DATA_INICI+(O.HORA_INICI/24)<O.DATA_SUSPENSIO) OR O.DATA_SUSPENSIO IS NULL) ',[FormatDateTime('dd.mm.yyyy',dia)]);

        if (Quantes > 0) then
        begin
            if (Quantes = 1) then AlarmaMedicacioNPC.Caption := '1 Pacient NPC amb medicació privada'
                             else AlarmaMedicacioNPC.Caption := IntToStr(Quantes) + ' Pacients NPC amb medicació privada';
            AlarmaMedicacioNPC.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;

        // Ortesis privades realitzades
        Quantes := GutSelect('select count(*) FROM INTERCON I                                                      '+
                             'join TRACTAMENTS T on i.c_tractament= t.c_tractament and t.c_centrefac in("00","50") '+
                             'where i.c_tipus="ORTESIS" and i.data1 between "NOW"-5 and "NOW"                      '+
                             'and not (i.estat between 80 and 89)                                                  ',[]);

        if (Quantes > 0) then
        begin
            if (Quantes = 1) then AlarmaOrtesisPrivadesRealitzades.Caption := '1 Ortesi privada sol·licitada'
                             else AlarmaOrtesisPrivadesRealitzades.Caption := IntToStr(Quantes) + ' Ortesis privades sol·licitades';
            AlarmaOrtesisPrivadesRealitzades.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;

        // Proves especials privades sol·licitades - no mostrar les proves aportades per pacients
        Quantes := GutSelect('select count(*) FROM INTERCON I                                                      '+
                             'join TRACTAMENTS T on i.c_tractament= t.c_tractament and t.c_centrefac in("00","50") '+
                             'where i.c_tipus="PROVESP" and i.data1 between "NOW"-5 and "NOW"                      '+
                             'and not (i.estat between 80 and 89) and (i.estat<>97)                                ',[]);

        if (Quantes > 0) then
        begin
            if (Quantes = 1) then AlarmaProvEspPrivadesSol.Caption := '1 Prova especial privada sol·licitada'
                             else AlarmaProvEspPrivadesSol.Caption := IntToStr(Quantes) + ' Proves especials privades sol·licitades';
            AlarmaProvEspPrivadesSol.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;

        // Interconsultes al Banc de sang privades sol·licitades
        Quantes := GutSelect('select count(*) FROM INTERCON I                                                      '+
                             'join TRACTAMENTS T on i.c_tractament= t.c_tractament and t.c_centrefac in("00","50") '+
                             'where i.c_tipus="BANCSANG" and i.data1 between "NOW"-5 and "NOW"                     '+
                             'and not (i.estat between 80 and 89)                                                  ',[]);

        if (Quantes > 0) then
        begin
            if (Quantes = 1) then AlarmaBancSangPrivats.Caption := '1 sol·licitud privada al banc de sang'
                             else AlarmaBancSangPrivats.Caption := IntToStr(Quantes) + ' sol·licituds privades al banc de sang';
            AlarmaBancSangPrivats.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;

        // Visites de seguiment NPT per videoconferència previstes per avui
        Quantes := GutSelect('SELECT COUNT(*) FROM ESPERA WHERE DATA_PREINGRES="TODAY" AND C_PRESTACIO="2124" AND T_SESSIO=2 AND EXCLOS="N" AND C_ESTAT=30',[]);

        if (Quantes > 0) then
        begin
            if (Quantes = 1) then Alarma2124Videconf.Caption := '1 Seguiment NPT videoconferència avui'
                             else Alarma2124Videconf.Caption := IntToStr(Quantes) + ' Seguiments NPT videoconferència avui';
            Alarma2124Videconf.Visible := True;
            alturaalarmes := alturaalarmes + 30;
        end;
    end;

    ScrollAlarmes.Constraints.MaxHeight := Self.Height - 396;
    if alturaalarmes < ScrollAlarmes.Constraints.MaxHeight then ScrollAlarmes.Height := alturaalarmes
                                                           else ScrollAlarmes.Height := ScrollAlarmes.Constraints.MaxHeight;
    ScrollAlarmes.Visible := (alturaalarmes<>35) and TeDretAcces([165,168],False,False);
    Panel3.Height := ScrollAlarmes.Height - 21;
    Panel3.Visible := ScrollAlarmes.Visible;
    Panel2.Visible := ScrollAlarmes.Visible;
end;


function TwMain.Laborable(D: TDateTime): Boolean;
begin
  Result := (GutSelect('select count(*) from FESTIUS where DATA="%s"',[FormatDateTime('dd.mm.yyyy',D)]) = 0) and   // no és festiu
            (DiaDeLaSemana(D) <> 6) and (DiaDeLaSemana(D) <> 7);                                                   // no és cap de setmana
end;


procedure TwMain.AlarmaINTERCONUROprogClick(Sender: TObject);
begin
    ScrollAlarmes.Visible := False;
    cInterconUROprog.ExecuteChild;
end;


procedure TwMain.AlarmaUROSprogClick(Sender: TObject);
begin
    ScrollAlarmes.Visible := False;
    cUROSprog.ExecuteChild;
end;


procedure TwMain.cUROSprogAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  data_prev: TDateTime;
  compta: Integer;
begin
    // Demanem data prevista
    data_prev := 0;
    data_prev := Calendario(DateServer, Catala, False, 'Data prevista');
    if (data_prev <> 0) then
    begin
        if (data_prev < DateServer) then
        begin
            ShowMessage('La data prevista no pot ser passada');
            Exit;
        end;

        GutExecute('update INTERCON  set DATA_PREVISTA = "%s" where C_INTERCON = %d',
                   [FormatDateTime('dd.mm.yyyy', data_prev), Datos.FieldByName('C_Intercon').AsInteger]);
        Datos.Close;
        Datos.Open;
        compta := Datos.RecordCount;
        if      (compta = 1) then AlarmaUROSprog.Caption := '1 URO pendent de programar'
        else if (compta > 0) then AlarmaUROSprog.Caption :=  IntToStr(compta) + ' UROS pendentS de programar'
        else begin
            AlarmaUROSprog.Hide;
            ScrollAlarmes.Height := ScrollAlarmes.Height - 30;
        end;
    end;
end;


procedure TwMain.cInterconUROprogAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  data_prev: TDateTime;
  compta: Integer;
begin
    // Demanem data prevista
    data_prev := 0;
    data_prev := Calendario(DateServer, Catala, False, 'Data prevista');
    if (data_prev <> 0) then
    begin
        if (data_prev < DateServer) then
        begin
            ShowMessage('La data prevista no pot ser passada');
            Exit;
        end;

        GutExecute('update INTERCON  set DATA_PREVISTA = "%s" where C_INTERCON = %d',
                   [FormatDateTime('dd.mm.yyyy', data_prev), Datos.FieldByName('C_Intercon').AsInteger]);
        Datos.Close;
        Datos.Open;
        compta := Datos.RecordCount;
        if      (compta = 1) then AlarmaINTERCONUROprog.Caption := '1 INTERCON URO pendent de programar'
        else if (compta > 0) then AlarmaINTERCONUROprog.Caption :=  IntToStr(compta) + ' INTERCON URO pendents de programar'
        else begin
            AlarmaINTERCONUROprog.Hide;
            ScrollAlarmes.Height := ScrollAlarmes.Height - 30;
        end;
    end;
end;


procedure TwMain.PteProgAlTancar(Sender: THYConsulta);
begin
    ScrollAlarmes.Visible := TeDretAcces([165],False,False);
end;


procedure TwMain.FormDeactivate(Sender: TObject);
begin
    ScrollAlarmes.Visible := False;
end;


procedure TwMain.sbAlarmClick(Sender: TObject);
begin
    // si només hi ha el Main obert, permetem visualitzar les alarmes
    if (Self.MDIChildCount = 0) and TeDretAcces([165,168,70],False,False) then
    begin
        RefrescarAlarmes(Bevel1);
        if not ScrollAlarmes.Visible then ShowMessage('No hi ha cap alarma.');
    end;
end;


procedure TwMain.Motiusaplaaments1Click(Sender: TObject);
begin
    if TeDretMetge(wData.UsuariActiu.Codi, [167]) then Exit;
    CrearForm(TwLlistatsSCAplaza);
end;


procedure TwMain.Bloquigdellits1Click(Sender: TObject);
begin
    PreguntaMetge;  // ho demana sempre perquè els d'infermeria no poden canviar d'usuari i haurien de tancar el programa i tornar-lo a obrir
    if (wData.UsuariActiu.Codi = '') then Exit;

    TeDretMetge(wData.UsuariActiu.Codi, [777], True);
    CrearForm(TwFitxaBloqueigLlits);
end;


procedure TwMain.BloquejosInferExecute(Sender: TObject);
begin
    cBloquejosLlits.ExecuteChild;
end;


procedure TwMain.cBloquejosLlitsAlTancar(Sender: THYConsulta);
begin
    if (not NT7OK) or (not HOLA_OK) then FerError('El servidor NT7 (Base de dades Hola) no està disponible.')
    else begin
        if (0 < HolaSelect('select count(*) from LOGBLLITSINF where VIST=''N''',[])) then
        begin
            if AvisoNS('Voleu esborrar tots els registres de la taula?') then
            begin
                HolaExecute('DELETE FROM LOGBLLITSINF WHERE VIST = ''N''', []);
                TeBloquejosLlit.Hide;
            end;
        end
        else TeBloquejosLlit.Hide;
    end;
end;


procedure TwMain.cBloquejosLlitsAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
    if (not NT7OK) or (not HOLA_OK) then FerError('El servidor NT7 (Base de dades Hola) no està disponible.')
    else begin
        if AvisoSN('Voleu esborrar el registre?') then
        begin
            HolaExecute('DELETE FROM LOGBLLITSINF WHERE ID=%d',[Datos.FieldByName('id').AsInteger]);
            Datos.Close;
            Datos.Open;
        end;
    end;
end;


procedure TwMain.ControlNPT1Click(Sender: TObject);
begin
    // Només es permet a qui tingui dret M141 (Admissions i Neuropsicologia)
    if wData.UsuariActiu.Codi='' then PreguntaMetge;
    if wData.UsuariActiu.Codi='' then Exit;
    TeDretMetge(wData.UsuariActiu.Codi,[141],True);

    AbrirForm(TwFitxaControlNPT);
end;


procedure TwMain.SolicitudsIngresClick(Sender: TObject);
begin
    if (not NT7OK) or (not HOLA_OK) then FerError('El servidor NT7 (Base de dades Hola) no està disponible.')
    else begin

        // Admissions -> mode 1
        if TeDretAcces([70,71])
        then with TwFitxaSolicitudsIngres(AbrirForm(TwFitxaSolicitudsIngres)) do Inicia(1)

        else begin
            wData.UsuariActiu := PreguntaMetge;
            if (wData.UsuariActiu.Codi = '') then Exit;

            // cap GBL -> mode 1
            if TeDretMetge(wData.UsuariActiu.Codi, [324])
            then with TwFitxaSolicitudsIngres(AbrirForm(TwFitxaSolicitudsIngres)) do Inicia(1)

            // EASE -> mode 3
            else if TeDretMetge(wData.UsuariActiu.Codi, [159])
            then with TwFitxaSolicitudsIngres(AbrirForm(TwFitxaSolicitudsIngres)) do Inicia(3)

            // Treball social -> mode 2
            else if TeDretGrup(wData.UsuariActiu.Grup, [62])
            then with TwFitxaSolicitudsIngres(AbrirForm(TwFitxaSolicitudsIngres)) do Inicia(2)

            // Resta d'usuaris -> mode 0 (només visualització)
            else if TeDretGrup(wData.UsuariActiu.Grup, [22]) or TeDretMetge(wData.UsuariActiu.Codi, [156])
            then with TwFitxaSolicitudsIngres(AbrirForm(TwFitxaSolicitudsIngres)) do Inicia(0)

            else FerError(Error1);
        end
    end;
end;


procedure TwMain.Consultes2Click(Sender: TObject);
begin
    // només ha de tenir accés l'Elena?
    if wData.UsuariActiu.Codi='' then PreguntaMetge;
    if wData.UsuariActiu.Codi='' then Exit;
    AbrirForm(TwFitxaConsultes);
end;


procedure TwMain.DatesdinarsNadal1Click(Sender: TObject);
begin
    TeDretAcces([124],True);
    if wData.UsuariActiu.Codi='' then PreguntaMetge;
    if wData.UsuariActiu.Codi='' then Exit;
    AbrirForm(TwFitxaDatesNadal);
end;


procedure TwMain.Ingressosprevistos1Click(Sender: TObject);
begin
    AbrirForm(TwFitxaIngressosPrevistos);
end;

procedure TwMain.Gestidecues1Click(Sender: TObject);
begin
  if wData.UsuariActiu.Codi='' then PreguntaMetge;
  if wData.UsuariActiu.Codi='' then Exit;
  if GestorCues = 'QMATIC' then AbrirForm(TwFitxaGestioCues)
  else if GestorCues = 'BUTTON' then AbrirForm(TwFitxaGestioCuesWB);
end;

// INFORMES INFERMERIA - Gestió secretària
procedure TwMain.SpeedButton2Click(Sender: TObject);
begin
  // Amagar alarmes
  ScrollAlarmes.Visible := False;
end;

procedure TwMain.InferGestioInformes1Click(Sender: TObject);
var
  img: TBitmap;
  usr: TMetge;
begin
    usr := PreguntaMetge;
    if usr.Codi = '' then Exit;
    
    cInferInformes.Filtros[0].Valor1 := '5';  // filtrem pels informes actius (estat < 5)
    cInferInformes.ExecuteChild;

    cInferInformes.PanelGrid.Columns[0].Title.Caption := 'Estat informe';
    cInferInformes.PanelGrid.Columns[0].Width := 150;  // estat
    cInferInformes.PanelGrid.Columns[2].Width := 250;  // nom complet
    cInferInformes.PanelGrid.Columns[7].Width := 80;   // data informe
    cInferInformes.PanelGrid.Columns[8].Title.Caption := 'Usuari informe';
    cInferInformes.PanelGrid.Columns[9].Width := 80;   // data validació
    cInferInformes.PanelGrid.Columns[10].Title.Caption := 'Usuari validació';
    cInferInformes.PanelGrid.Columns[12].Width := 220; // correccions
    cInferInformes.PanelGrid.SelectedIndex := 2;

    PathInfer1  := GutSelect('select RUTA from DIRECTORIS where NOM = "INFER1"', []);
    PathInfer2  := GutSelect('select RUTA from DIRECTORIS where NOM = "INFER2"', []);
    PathInfer3  := GutSelect('select RUTA from DIRECTORIS where NOM = "INFER3"', []);
    PathInferF2 := GutSelect('select RUTA from DIRECTORIS where NOM = "INFERF2"', []);
    PathInferF  := GutSelect('select RUTA from DIRECTORIS where NOM = "INFORMES"', []);
    PathInferH  := GutSelect('select RUTA from DIRECTORIS where NOM = "INFERHCCC"', []);
    PathInferR  := GutSelect('select RUTA from DIRECTORIS where NOM = "INFERHCCCR"', []);
end;

procedure TwMain.cInferInformesAlPintarGridFont(var ColorFont: TColor; var Negreta: Boolean; var ColorBrush: TColor; DataCol: Integer;
                                                Column: TColumn; State: TGridDrawState; Query: TQuery);
begin
    ColorFont := clBlack;
    ColorBrush := clWhite;

    Negreta := (gdSelected in State);

    if (gdSelected in State) then ColorBrush := $00DEE2E4;

    CASE Query.FieldByName('Estat').AsInteger OF

       // INFORME F2 FET: fons lila (Estat) i ocultem les correccions
      -3: begin
              if (UpperCase(Column.FieldName) = 'N_ESTAT')     then ColorBrush := $00FDCCF1;
              if (UpperCase(Column.FieldName) = 'CORRECCIONS') then ColorFont := ColorBrush;
          end;

       // PENDENT DE CORREGIR: groc o vermell
       1: begin
              // Si és NOU: fons groc (camp Estat) i ocultem les correccions
              if Query.FieldByName('C_Validador').IsNull then
              begin
                  if (UpperCase(Column.FieldName) = 'N_ESTAT') then ColorBrush := $00AEFFFF;
                  if (UpperCase(Column.FieldName) = 'CORRECCIONS') then ColorFont := ColorBrush;
              end

              // Si han indicat CORRECCIONS: fons vermell (camps Estat i Correccions)
              else if (UpperCase(Column.FieldName) = 'N_ESTAT') or (UpperCase(Column.FieldName) = 'CORRECCIONS') then ColorBrush := $00B8C2FE;
          end;

       // PENDENT DE VALIDAR: fons blanc i ocultem les correccions
       2: if (UpperCase(Column.FieldName) = 'CORRECCIONS') then ColorFont := ColorBrush;


       // VALIDAT: fons blau (Estat i Data_Validació) i ocultem les correccions
       3: begin
              if (UpperCase(Column.FieldName) = 'DATA_VALIDACIO') or (UpperCase(Column.FieldName) = 'N_ESTAT') then ColorBrush := $00FED6A5;
              if (UpperCase(Column.FieldName) = 'CORRECCIONS') then ColorFont := ColorBrush;
          end;

       // pendent de DATA D'ALTA: fons taronja (Estat i Data_Alta) i ocultem les correccions
       4: begin
              if (UpperCase(Column.FieldName) = 'DATA_ALTA') or (UpperCase(Column.FieldName) = 'N_ESTAT') then
              begin
                  ColorBrush := $0088D7F9;

                  // Si la data d'alta ja ha arribat, pintem la lletra verda pq sàpiguen que ja el poden processar:
                  if (not Query.FieldByName('Data_Alta').IsNull) and (Query.FieldByName('Data_Alta').AsDateTime <= DateServer) then
                  begin
                      ColorFont := $0000AA00;
                      Negreta := True;
                  end;
              end;
              
              if (UpperCase(Column.FieldName) = 'CORRECCIONS') then ColorFont := ColorBrush;
          end;

       // ANUL·LAT: font vermella
       9: ColorFont := clRed;    
    END;
end;


procedure TwMain.cInferInformesConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
begin
    if      (SqlField = 'N_ESTAT')       then SqlField := 'C1.N_CODI2'
    else if (SqlField = 'TIPUS_INFORME') then SqlField := 'C2.N_CODI'
    else if (SqlField = 'METGE1')        then SqlField := 'V.METGE';
end;


// INFORMES INFERMERIA - Processar informe
procedure TwMain.cInferInformesProcessa(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  WordApp: _Application;
  WordDoc: _Document;
  pSi, pNo, pNomDoc, pNomesLectura, pVisible, pFileFormat: OleVariant;
  pUnit, pExtend, pSignatura, pLinkToFile, pSaveWithDocument: OleVariant;  
  Idioma: Smallint;
  PathInferFDir, NomDocOrigen, NomDocDesti, NomPDFDesti: String;
  Validador: TMetge;
  nom_informe: String;
  error: String;
  ID_Informe, linia: Integer;
  publicaHC3, publicaAPP: String;
  datanom: TDateTime;
begin
    if Datos.FieldByName('C_Historia').IsNull then Exit;
    if (Datos.FieldByName('Estat').AsInteger in [2,5,9]) then Exit;  // pendent de validar, finalitzat o anul·lat  ->  no fer res

    // Si l'informe està pendent de corregir o validat (pendent de signatura), obrim l'arxiu RTF
    if (Abs(Datos.FieldByName('Estat').AsInteger) in [1,3]) then WaitON('Obrint informe . . .')

    // Si l'informe està pendent de data d'alta i aquesta encara no està informada, no deixem continuar
    else if (Datos.FieldByName('Estat').AsInteger = 4) and Datos.FieldByName('Data_Alta').IsNull then
    begin
        ShowMessage('Aquest tractament encara està pendent de data d''alta ');
        Exit;
    end

    // Si l'informe està pendent de data d'alta i aquesta encara no ha arribat, tampoc no deixem continuar
    else if (Datos.FieldByName('Estat').AsInteger = 4) and (Datos.FieldByName('Data_Alta').AsDateTime > DateServer) then
    begin
        ShowMessage('Encara no ha arribat el dia de l''alta. ');
        Exit;
    end
    
    // Si la data d'alta ja ha passat, finalitzem l'informe
    else if (Datos.FieldByName('Estat').AsInteger = 4) then WaitON('Actualitzant informe . . .');

    pSi := True;
    pNo := False;

    if (Datos.FieldByName('Tipus').AsString = 'PLT') then Idioma := 1
    else begin
      Idioma := GutSelect('select IDIOMA from FILIACIO where NUM_HIST = %d', [Datos.FieldByName('C_Historia').AsInteger]);
      if (Idioma <> 2) then Idioma := 1;
    end;
    
    TRY
      WordApp := CoWordApplication.Create;
      pNomesLectura := False;
      pVisible := True;

      // -3. INFORME F2 FET:
      if (Datos.FieldByName('Estat').AsInteger = -3) then
      begin
          NomDocOrigen := ConcatFilePath(PathInferF2, Datos.FieldByName('Arxiu').AsString);
          pNomDoc := NomDocOrigen;
          WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                            EmptyParam, EmptyParam, EmptyParam, pVisible, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
          WordApp.Visible := False;

          TRY
            // Convertim el document de text (té extensió rtf però és text pla) a rtf, per poder-li donar format
            pFileFormat := wdFormatRTF;
            WordDoc.SaveAs2(pNomDoc, pFileFormat, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
          EXCEPT
            on e: Exception do
            begin
              ShowMessage('No s''ha pogut convertir el document a format RTF.' + NLine + e.Message);
              Abort;
            end;
          END;


          TRY
            PaginaDocument(WordApp, (Idioma = 1));
          EXCEPT
            on e: Exception do
            begin
              ShowMessage('No s''ha pogut paginar el document.' + NLine + e.Message);
              Abort;
            end;
          END;
      end

      // 1. CORREGIR: guardem les correccions al portapapers (si n'hi ha) i mostrem l'informe
      else if (Datos.FieldByName('Estat').AsInteger = 1) then
      begin
          if (Trim(Datos.FieldByName('Correccions').AsString) <> '') then
          begin
              Clipboard.AsText := Trim(Datos.FieldByName('Correccions').AsString);
              WaitON('S''han copiat les correccions al portapapers');
          end;
          Sleep(1500);
          WaitOff;
          NomDocOrigen := ConcatFilePath(PathInfer1, Datos.FieldByName('Arxiu').AsString);
          pNomDoc := NomDocOrigen;
          WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                            EmptyParam, EmptyParam, EmptyParam, pVisible, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end

      // Estats 3 i 4. (VALIDAT / DATA ALTA): obrim l'informe no visible per actualitzar-lo i mostrar-lo després si cal
      else if (Datos.FieldByName('Estat').AsInteger in [3,4]) then
      begin
          NomDocOrigen := ConcatFilePath(PathInfer3, Datos.FieldByName('Arxiu').AsString);
          pNomDoc := NomDocOrigen;
          WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                            EmptyParam, EmptyParam, EmptyParam, pVisible, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
          WordApp.Visible := False;

          // Actualitzem les dates si cal:
          ActualitzaDates(WordApp, Datos);
          WordDoc.AcceptAllRevisions;

          // Estat 3 (SIGNATURA): afegim la signatura i paginem l'informe
          if (Datos.FieldByName('Estat').AsInteger = 3) then
          begin
              ID_Informe := AfegeixSignatura(WordApp, (Idioma = 1), Datos);
              if (ID_Informe <> -1) then WordDoc.AcceptAllRevisions
              else begin
                  TRY WordApp.Quit(pNo, EmptyParam, EmptyParam); EXCEPT END;
                  WaitOff;
                  Exit;
              end;
              PaginaDocument(WordApp, (Idioma = 1));
          end;
      end;

    EXCEPT
     on e: Exception do
     begin
         WaitOff;
         FerError('No s''ha pogut obrir l''informe' + NLine + e.Message);
         // Per si l'havíem obert i peta en modificar-lo
         TRY WordApp.Quit(pNo, EmptyParam, EmptyParam); EXCEPT END;
         Exit;
     end;
    END;

    TRY
      PotTancar := False;
      error := '';
      
      // Mostrem l'informe (a no ser que només estigués pendent de data d'alta)
      if (Datos.FieldByName('Estat').AsInteger <> 4) then
      begin
          WordApp.Visible := True;
          WordApp.Activate;
      end;

      WaitOff;

      // Esperem 5 segons i fem la pregunta corresponent
      Sleep(5000);

      // Si l'han corregit -->  pendent de validar (Infer2)
      if (Datos.FieldByName('Estat').AsInteger = 1) then
      begin
          if AvisoNS('Voleu marcar l''informe com a corregit? ' + NLine + 'Quedarà pendent de validar. ') then
          begin
              // Guardem els canvis
              TRY WordApp.Quit(pSi, EmptyParam, EmptyParam); EXCEPT END; // posem TRY per si ja l'havien tancat
              Sleep(1500);

              // Movem l'informe a Infer2 pq quedi pendent de validar
              NomDocDesti := ConcatFilePath(PathInfer2, Datos.FieldByName('Arxiu').AsString);
              MoveFile(PChar(NomDocOrigen), PChar(NomDocDesti));

              // Passem l'informe a estat 2
              GutExecute('update INFERINFORMES set ESTAT = 2 where ID = %d', [Datos.FieldByName('ID').AsInteger]);

              ShowMessage('Informe processat correctament: queda pendent validar.');
          end
          else Exit;
      end

      // Si l'han signat i és un informe d'alta, no es convertirà a PDF fins que arribi el dia de l'alta.
      // En aquest cas l'informe es queda on és (Infer3).
      else if (Datos.FieldByName('Estat').AsInteger = 3)
      and     (Datos.FieldByName('Tipus').AsString = 'IAH')
      and     (Datos.FieldByName('Data_Alta').IsNull or (Datos.FieldByName('Data_Alta').AsDateTime > DateServer)) then
      begin
          if Datos.FieldByName('Data_Alta').IsNull
          then ShowMessage('L''informe està pendent de data d''alta. Queda pendent de finalitzar. ' +
                           'Si cal imprimir-lo, feu-ho ara (abans de clicar OK!).')
          else ShowMessage('Encara no ha arribat el dia de l''alta. L''informe queda pendent de finalitzar. ' +
                           'Si cal imprimir-lo, feu-ho ara (abans de clicar OK!).');

          // Tanquem el Word guardant els canvis
          TRY WordApp.Quit(pSi, EmptyParam, EmptyParam); EXCEPT END; // posem TRY per si ja l'havien tancat
          Sleep(3000);

          // Passem l'informe a estat 4
          GutExecute('update INFERINFORMES set ESTAT = 4 where ID = %d', [Datos.FieldByName('ID').AsInteger]);

          ShowMessage('Informe processat correctament: queda pendent d''alta.');
      end

      // Si l'informe ja es pot finalitzar  -->  Carpeta de destí (Informes)
      // ( informes d'alta amb data d'alta <= avui, en estat 3 o 4
      //   altres informes en estat 3
      //   informes F2 )
      else begin
          ShowMessage('Es convertirà l''informe a PDF i quedarà guardat a la carpeta definitiva.');

          WaitON('Generant PDF...');

          // Posem el logo de Guttmann a la capçalera - ens col·loquem al principi del document
          // Tanquem el word guardant els canvis(si està obert)
          TRY WordApp.Quit(pSi, EmptyParam, EmptyParam); EXCEPT END; // posem TRY per si ja l'havien tancat
          Sleep(1500);

          // Tornem a obrir-lo. Així sabem segur que està obert
          WordApp := CoWordApplication.Create;
          WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                            EmptyParam, EmptyParam, EmptyParam, pVisible, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
          WordApp.Visible := True;
          Sleep(1500);

          // Ens situem a la capçalera
          WordApp.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
          WordApp.Selection.WholeStory;
          WordApp.Selection.Cut;
          WordApp.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;

          // Ens col·loquem al principi del document
          pUnit   := wdStory;
          pExtend := wdMove;
          WordApp.Selection.HomeKey(pUnit, pExtend);
          // La copiem al document normal
          WordApp.Selection.Paste;

          // afegim logo Guttmann a la capçalera del Word
          // Ens col·loquem al principi del document
          pUnit   := wdStory;
          pExtend := wdMove;
          WordApp.Selection.HomeKey(pUnit, pExtend);
          pSignatura:='\\GUTFS2\DADESG\BIN\Admissions\guttmann25.jpg';
          pLinkToFile := False; pSaveWithDocument := True;
          WordApp.ActiveDocument.Shapes.AddPicture(pSignatura,pLinkToFile,pSaveWithDocument,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);

          // Tanquem el Word guardant els canvis
          TRY WordApp.Quit(pSi, EmptyParam, EmptyParam); EXCEPT END; // posem TRY per si ja l'havien tancat
          Sleep(1500);

          // Tornem a obrir el Word però sense fer-lo visible
          WordApp := CoWordApplication.Create;
          WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                            EmptyParam, EmptyParam, EmptyParam, pVisible, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
          WordApp.Visible := False;
          Sleep(1500);

          // Confegim el nom final de l'informe
          CASE Datos.FieldByName('Data_Arxiu').AsInteger OF
            1: datanom := Datos.FieldByName('Data_Validacio').AsDateTime;
            2: datanom := Datos.FieldByName('Data_Alta').AsDateTime;
          END;

          // Si l'acabem de generar, ja el tenim guardat a la variable; si ja s'havia generat abans, el tenim a la query:
          if (ID_Informe = 0) then ID_Informe := Datos.FieldByName('ID_Informe').AsInteger;

          nom_informe := JustificaC(Datos.FieldByName('C_Historia').AsString, 5, '0') +
                         Datos.FieldByName('Tipus').AsString +
                         FormatDateTime('yyyymmdd', datanom) +
                         '-' + IntToStr(ID_Informe);

          NomDocDesti := ''; // l'informarem si cal deixar-lo a la carpeta de pendents de publicar o a la de pendents de decidir si es publica

          publicaHC3 := Datos.FieldByName('Publicar_HC3').AsString;
          if (publicaHC3 = 'N') then PublicaHC3 := 'X' // no procedeix
          else if (publicaHC3 = 'P') then              // hem de preguntar si volen publicar-lo o no, o bé si volen que ho decideixi direcció d'infermeria
          begin
              CASE MB.Execute('mbHCCC') OF
                1: publicaHC3 := 'S';
                2: publicaHC3 := 'N';
                3: publicaHC3 := 'R';
              END;
          end;
          publicaAPP := Datos.FieldByName('Publicar_APP').AsString;

          // Movem l'informe a la carpeta final amb el nom definitiu i format PDF
          PathInferFDir := IdentificaDirectori(PathInferF, Datos.FieldByName('C_Historia').AsString);
          NomPDFDesti := ConcatFilePath(PathInferFDir, nom_informe + '.pdf');

          TRY
            if (PathInferFDir = '') then Raise Exception.Create('DESTÍ');

            WordDoc.ExportAsFixedFormat(NomPDFDesti, wdExportFormatPDF, False, wdExportOptimizeForPrint,
                                        wdExportAllDocument, 1, 1, wdExportDocumentContent, True, True, wdExportCreateNoBookmarks,
                                        True, True, False, EmptyParam);

            if not FileExists(NomPDFDesti) then Raise Exception.Create('PDF');

            // Un cop mogut correctament l'informe, registrem el nom de l'arxiu a INFERINFOMRES
            // No publicar -->  en convertir l'informe a pdf guardarem també l'rtf   // 09.2019 (fins ara l'eliminàvem)
            if (publicaHC3 = 'N') or (publicaHC3 = 'X') then
            begin
                GutExecute('update INFERINFORMES set HCCC = "%s", ARXIU = "%s" where ID = %d',
                           [publicaHC3, nom_informe + '.pdf', Datos.FieldByName('ID').AsInteger]);
                NomDocDesti := '';
            end
            // Publicar -->  guardarem informe rtf a INFERHCCC
            else if (publicaHC3 = 'S') then
            begin
                GutExecute('update INFERINFORMES set HCCC = "S", ARXIU = "%s" where ID = %d', [nom_informe + '.rtf', Datos.FieldByName('ID').AsInteger]);
                NomDocDesti := ConcatFilePath(PathInferH+'\PROCESSATS', nom_informe + '.rtf');
            end
            // Revisar -->  guardarem informe rtf a INFERHCCCR
            else if (PublicaHC3 = 'R') then
            begin
                GutExecute('update INFERINFORMES set HCCC = "P", ARXIU = "%s" where ID = %d', [nom_informe + '.rtf', Datos.FieldByName('ID').AsInteger]);
                NomDocDesti := ConcatFilePath(PathInferR, nom_informe + '.rtf');
            end;

            // Actualitzo l'estat i l'arxiu a la taula INFORMES
            GutExecute('update INFORMES set C_ESTAT = 10, ARXIU = "%s" where ID_INFORME = %d', [nom_informe + '.pdf', ID_Informe]);

            // Afegeixo línia de finalització
            linia := 1 + GutSelect('select Max(LINIA) from INFORMES_REG where ID_INFORME = %d', [ID_Informe]);
            GutExecute('insert into INFORMES_REG (ID_INFORME, LINIA, ACCIO, C_USUARI, DATA) ' +
                       'values (%d, %d, 6, "%s", "NOW")',
                       [ID_Informe, linia, wData.UsuariActiu.Codi]);

            // Afegeixo línia de publicació a l'HC3, si cal
            if (publicaHC3 = 'S') and (Datos.FieldByName('C_Centrefac').AsString = '04') and (Datos.FieldByName('C_Client').AsString = 'UP')
            then GutExecute('insert into INFORMES_HCCC (ID_INFORME, LINIA, PUBLICAR_HC3, PUBLICAR_APP) values (%d, 1, "S", "%s")', [ID_Informe, publicaAPP]);

          EXCEPT
              on e: Exception do
              begin
                  if      (e.Message = 'PDF'  ) then error := 'S''ha produït un error en convertir l''informe a PDF. '
                  else if (e.Message = 'DESTÍ') then error := 'La carpeta de destí no existeix. '
                                                else error := e.Message;
                  error := error + NLine + 'No es publicarà al Curs Clínic';
              end;
          END;

          // Tanquem el Word guardant els canvis
          WordApp.Quit(pSi, EmptyParam, EmptyParam);
          Sleep(1500);
          WaitOff;

          // Copiem l'rtf a la carpeta HCCC corresponent (publicar o revisar)
          if (NomDocDesti <> '') then
          begin
              // si no aconseguim copiar-lo, avisem
              if not CopyFile(PChar(NomDocOrigen), PChar(NomDocDesti), True)
              then begin
                  if (error <> '') then error := error + ' i tampoc no es publicarà a l''HC3.'
                                   else error := 'Hi ha hagut un error en passar l''informe per publicar a l''HC3.';
              end
              // si l'hem pogut copiar però hi ha hagut un error en publicar-lo al Curs, avisem de la part correcta
              else if (error <> '') then error := error + ' però sí que es publicarà a l''HC3.' + NLine +
                                                 'AVISEU SISTEMES D''INFORMACIÓ PER COMPLETAR EL PROCÉS.';
          end;

          // Si hi ha hagut algun error en exportar l'informe a PDF o en passar-lo a InferHCCC, avisem i no fem res més
          if (error <> '') then FerError(error)

          // Si ha anat tot bé,
          else begin
              // 09.2019: movem l'rtf al directori final  (fins ara l'eliminàvem)
              NomDocDesti := ConcatFilePath(PathInferFDir, 'RTF_' + nom_informe + '.rtf');
              CopyFile(PChar(NomDocOrigen), PChar(NomDocDesti), True);

              // i marquem l'informe com a finalitzat
              GutExecute('update INFERINFORMES set ESTAT = 5 where ID = %d', [Datos.FieldByName('ID').AsInteger], False);

              // Si és un informe F2, actualitzem el nom de l'arxiu i l'estat a la taula Informes:
              if (Datos.FieldByName('Estat').AsInteger = -3)
              then GutExecute('update INFORMES set C_ESTAT = 10, ARXIU = "%s" where ID_INFORME = %d',
                              [nom_informe + '.pdf', Datos.FieldByName('ID_Informe').AsInteger], False);

              wData.IBTransGutt.CommitRetaining;
              DeleteFile(NomDocOrigen);
                            
              ShowMessage('Informe processat correctament: finalitzat.');

              // Mostrem el PDF generat
              ShellExecute(Application.Handle, 'open', PChar(NomPDFDesti), 'NULL', PChar(PathInferFDir), SW_SHOWNORMAL);
          end;
      end;

      cInferInformes.fMiForm.Query.Close;
      cInferInformes.fMiForm.Query.Open;
    FINALLY
      // Per si ha quedat obert
      TRY WordApp.Quit(pSi, EmptyParam, EmptyParam); EXCEPT END;
      PotTancar := True;
    END;
end;


// INFORMES INFERMERIA - Actualitzem data de l'informe i data d'alta
procedure TwMain.ActualitzaDates(WA: _Application; Q: TDataSet);
var
  pSi, pNo, pUnit, pExtend, pFindText, pWrap, pReplaceWith, pReplace: OleVariant;
begin
    pSi     := True;
    pNo     := False;
    pUnit   := wdStory;
    pExtend := wdMove;

    // Informes d'alta -> Data d'alta a la capçalera (no sempre està a la capçalera)
    if (Q.FieldByName('Tipus').ASstring = 'IAH') and (not Q.FieldByName('Data_Alta').IsNull) then
    begin
        pFindText    := '%DATA_ALTA%';
        pWrap        := wdFindContinue;
        pReplaceWith := FormatDateTime('dd/mm/yyyy', Q.FieldByName('Data_Alta').AsDateTime);
        pReplace     := wdReplaceAll;

        // Ens col·loquem al principi del document, busquem el literal "%DATA_ALTA%" i el substituïm
        WA.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
        WA.Selection.HomeKey(pUnit, pExtend);
        WA.Selection.Find.Execute(pFindText, pSi, pSi, pNo, pNo, pNo, pSi, pWrap, pNo, pReplaceWith, pReplace,
                                  EmptyParam, EmptyParam, EmptyParam, EmptyParam);

        // L'actualitzem també a la capçalera (en principi, sempre ha d'estar a la capçalera, però posem un try per si no n'hi ha)
        TRY
          WA.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
          WA.Selection.HomeKey(pUnit, pExtend);
          WA.Selection.Find.Execute(pFindText, pSi, pSi, pNo, pNo, pNo, pSi, pWrap, pNo, pReplaceWith, pReplace,
                                    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
        EXCEPT
        END;
    end;
end;


// INFORMES INFERMERIA - Afegim la signatura
function TwMain.AfegeixSignatura(WA: _Application; EnCatala: Boolean; Q: TDataSet): Integer;
var
  pUnit, pExtend, pTitol, pSignat, pNR, pData: OleVariant;
  usr_f, usr_v: TMetge;
  ID_Informe, linia: Integer;
begin
    Result := -1;

    pUnit   := wdStory;
    pExtend := wdMove;

    WA.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
    WA.Selection.EndKey(pUnit, pExtend);  // anem al final del document
    WA.Selection.EndKey(pUnit, pExtend);  // anem al final del document

    usr_f := BuscaMetge(Q.FieldByName('C_Usuari').AsString);
    usr_v := BuscaMetge(Q.FieldByName('C_Validador').AsString);

    // Busquem títulació
    with qTitol do
    begin
        Close;
        ParamByName('usuari').AsString  := usr_f.Codi;
        ParamByName('unitat').AsInteger := 0;
        Open;
        if EnCatala then pTitol := FieldByName('Titol' ).AsString
                    else pTitol := FieldByName('Titulo').AsString;
        Close;
    end;

    // Introduïm nom i número de col·legiat
    WA.Selection.TypeParagraph;
    WA.Selection.Font.Name := 'Univers';
    WA.Selection.Font.Size := 10.5;
    WA.Selection.TypeText(usr_f.TRACTE + ' ' + usr_f.NomSencer);
    WA.Selection.TypeParagraph;
    WA.Selection.TypeText(pTitol);
    WA.Selection.TypeParagraph;

    if (usr_f.cProv = '') then WA.Selection.TypeText('Núm. Col.: ' + usr_f.NC)
                          else WA.Selection.TypeText('Núm. Col.: ' + usr_f.cProv + '/' + usr_f.NC);

    WA.Selection.TypeParagraph;
    WA.Selection.TypeParagraph;

    // Si l'usuari que valida l'informe no és el mateix que l'ha fet, ho indiquem i afegim la signatura del validador
    if (usr_f.Codi <> usr_v.Codi) then
    begin
        WA.Selection.TypeText('Informe validat per:');

        // Busquem títulació
        with qTitol do
        begin
            Close;
            ParamByName('usuari').AsString  := usr_v.Codi;
            ParamByName('unitat').AsInteger := 0;
            Open;
            if EnCatala then pTitol := FieldByName('Titol' ).AsString
                        else pTitol := FieldByName('Titulo').AsString;
            Close;
        end;

        // Introduïm nom i número de col·legiat
        WA.Selection.TypeParagraph;
        WA.Selection.Font.Name := 'Univers';
        WA.Selection.Font.Size := 10.5;
        WA.Selection.TypeText(usr_v.TRACTE + ' ' + usr_v.NomSencer);
        WA.Selection.TypeParagraph;
        WA.Selection.TypeText(pTitol);
        WA.Selection.TypeParagraph;

        if (usr_v.cProv = '') then WA.Selection.TypeText('Núm. Col.: ' + usr_v.NC)
                              else WA.Selection.TypeText('Núm. Col.: ' + usr_v.cProv + '/' + usr_v.NC);

        WA.Selection.TypeParagraph;
        WA.Selection.TypeParagraph;
    end;

    pData := 'Badalona, ' + DataMesLlargCat(EnCatala, Q.FieldByName('Data_Validacio').AsDateTime);
    WA.Selection.TypeText(pData);

    if EnCatala then pSignat := 'Document registrat electrònicament. '
                else pSignat := 'Documento registrado electrónicamente. ';


    // Registrem l'informe a la taula d'Informes si encara no ho estava:
    ID_Informe := Q.FieldByName('ID_Informe').AsInteger;
    if (ID_Informe = 0) then
    begin
        ID_Informe := Gen_ID('interna', 'G_INFORMES', 1);

        // Creem el registre de capçalera (en estat pendent de finalitzar)
        GutExecute('insert into INFORMES (ID_INFORME, C_HISTORIA, C_TRACTAMENT, C_TIPUS, C_ESTAT, ARXIU) ' +
                   'values (%d, %d, %d, "%s", 6, "%s")',
                   [ID_Informe,
                    Q.FieldByName('C_Historia').AsInteger,
                    Q.FieldByName('C_Tractament').AsInteger,
                    Q.FieldByName('Tipus').AsString,
                    Q.FieldByName('Arxiu').AsString]);
    end;
    
    // Creem la línia de validació
    linia := 1 + GutSelect('select Max(LINIA) from INFORMES_REG where ID_INFORME = %d', [ID_Informe]);
    GutExecute('insert into INFORMES_REG (ID_INFORME, LINIA, ACCIO, C_USUARI, DATA) ' +
               'values (%d, %d, 5, "%s", "%s")',
               [ID_Informe, linia, usr_v.Codi, FormatDateTime('dd.mm.yyyy hh:nn:ss', Q.FieldByName('Data_Validacio').AsDateTime)]);

    // Guardem l'ID de registre a InferInformes, per enllaçar-lo
    GutExecute('update INFERINFORMES set ID_INFORME = %d where ID = %d', [ID_Informe, Q.FieldByName('ID').AsInteger]);

    // Afegim el número de registre a la signatura
    pNR := 'CSV ' + IntToStr(ID_Informe);

    WA.Selection.TypeParagraph;
    WA.Selection.Font.Italic := wdToggle;
    WA.Selection.TypeText(pSignat);
    WA.Selection.TypeText(pNR);
    WA.Selection.Font.Italic := wdToggle;

    Result := ID_Informe;
end;


// Insertem números de pàgina
procedure TwMain.PaginaDocument(WA: _Application; EnCatala: Boolean);
var
  pTextPag, pTextDe, pTypePage, pTypeNumPages: OleVariant;
begin

    if EnCatala then pTextPag := 'Pàg. '
                else pTextPag := 'Pág. ';
    pTextDe := ' de ';
    pTypePage := wdFieldPage;
    pTypeNumPages := wdFieldNumPages;

    WA.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageFooter;                  // ens col·loquem al peu de pàgina
    WA.Selection.ParagraphFormat.Alignment := wdAlignParagraphRight;                      // aliniació a la dreta
    WA.Selection.TypeText(pTextPag);                                                      // insertem text "pàg."
    WA.Selection.Fields.Add(WA.Selection.Range, pTypePage, EmptyParam, EmptyParam);       // insertem camp "número de pàgina"
    WA.Selection.TypeText(pTextDe);                                                       // insertem text "de"
    WA.Selection.Fields.Add(WA.Selection.Range, pTypeNumPages, EmptyParam, EmptyParam);   // insertem camp "número de pàgines"
    WA.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;                       // sortim de la capçalera
end;


// INFORMES INFERMERIA - Anul·lació d'un informe
procedure TwMain.cInferInformesAnula(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  linia: Integer;
begin
    if (Datos.FieldByName('Estat').AsInteger = 9) then Exit;

    if not AvisoNS('ESTEU SEGUR DE VOLER ANUL·LAR L''INFORME SELECCIONAT?') then Exit;

    // A la taula d'informes d'infermeria
    GutExecute('update INFERINFORMES set ESTAT = 9 where ID = %d', [Datos.FieldByName('ID').AsInteger]);

    // Ho registro també a la taula Informes (on es registren quan es validen)
    if not Datos.FieldByName('ID_Informe').IsNull then
    begin
        GutExecute('update INFORMES set C_ESTAT = 9 where ID_INFORME = %d', [Datos.FieldByName('ID_Informe').AsInteger]);
        // I afegeixo línia d'anul·lació
        linia := 1 + GutSelect('select Max(LINIA) from INFORMES_REG where ID_INFORME = %d', [Datos.FieldByName('ID_Informe').AsInteger]);
        GutExecute('insert into INFORMES_REG (ID_INFORME, LINIA, ACCIO, C_USUARI, DATA) ' +
                   'values (%d, %d, 6, "%s", "NOW")',
                   [Datos.FieldByName('ID_Informe').AsInteger, linia, wData.UsuariActiu.Codi]);
    end;
    
    Datos.Close;
    Datos.Open;

    ShowMessage('Informe anul·lat correctament' + NLine +
                'Recordeu canviar el nom o eliminar l''arxiu PDF o RTF associat');
end;


// INFORMES INFERMERIA - Pendents de decidir HCCC
procedure TwMain.InferPublicacioHCCC1Click(Sender: TObject);
var usr: TMetge;
begin
    usr := PreguntaMetge;
    if usr.Codi = '' then Exit;
    
    cInferInformesHCC.ExecuteChild;
    cInferInformesHCC.PanelGrid.Columns[1].Width := 250;  // nom complet
    cInferInformesHCC.PanelGrid.Columns[4].Width := 80;   // data informe
    cInferInformesHCC.PanelGrid.Columns[5].Title.Caption := 'Usuari informe';
    cInferInformesHCC.PanelGrid.Columns[6].Width := 80;   // data validació
    cInferInformesHCC.PanelGrid.Columns[7].Title.Caption := 'Usuari validació';
    cInferInformesHCC.PanelGrid.SelectedIndex := 1;
end;


procedure TwMain.cInferInformesHCCAlPintarGridFont(var ColorFont: TColor; var Negreta: Boolean; var ColorBrush: TColor; DataCol: Integer;
                                                   Column: TColumn; State: TGridDrawState; Query: TQuery);
begin
    ColorFont := clBlack;

    Negreta := (gdSelected in State);

    if (gdSelected in State) then ColorBrush := $00DEE2E4
                             else ColorBrush := clWhite;
end;


procedure TwMain.cInferInformesHCCConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
begin
    if (SqlField = 'METGE1') then SqlField := 'V.METGE';
end;


procedure TwMain.cInferInformesHCCAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  PathInferH, PathInferR: String;
  WordApp: _Application;
  WordDoc: _Document;
  pNo, pNomDoc, pNomesLectura, pVisible: OleVariant;
  NomDocOrigen, NomDocDesti: String;
begin
    pNo := False;

    // Obrim l'arxiu RTF
    WaitON('Obrint informe . . .');

    PathInferH := GutSelect('select RUTA from DIRECTORIS where NOM = "INFERHCCC"', []);
    PathInferR := GutSelect('select RUTA from DIRECTORIS where NOM = "INFERHCCCR"', []);

    TRY
      WordApp := CoWordApplication.Create;

      NomDocOrigen := ConcatFilePath(PathInferR, Datos.FieldByName('Arxiu').AsString);
      pNomDoc := NomDocOrigen;
      pNomesLectura := True;
      pVisible := True;
      WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                        EmptyParam, EmptyParam, EmptyParam, pVisible, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    EXCEPT
     on e: Exception do
     begin
         FerError('No s''ha pogut obrir l''informe' + NLine + e.Message);
         WaitOff;
         Exit;
     end;
    END;

    TRY
      PotTancar := False;
      
      // Mostrem l'informe
      WordApp.Visible := True;
      WordApp.Activate;

      WaitOff;

      // Esperem 5 segons i demanem si cal publicar l'Informe a l'HCCC
      Sleep(5000);

      CASE MB.Execute('mbHCCCR') OF
        // sí
        1: begin
               // Afegeixo línia de publicació a l'HC3 a Informes_HCCC si el tractament associat és 04-UP
               if (Datos.FieldByName('C_Centrefac').AsString = '04') and (Datos.FieldByName('C_Client').AsString = 'UP')
               then begin
                   // Actualitzem l'estat HCCC
                   GutExecute('update INFERINFORMES set HCCC = "S" where ID = %d', [Datos.FieldByName('ID').AsInteger]);

                   GutExecute('insert into INFORMES_HCCC (ID_INFORME, LINIA, PUBLICAR_HC3, PUBLICAR_APP) values (%d, 1, "S", "%s")',
                              [Datos.FieldByName('ID_Informe').AsInteger, Datos.FieldByName('Publicar_APP').AsString]);

                   // Tanquem el Word sense guardar els canvis (de fet s'ha obert com a només lectura)
                   TRY WordApp.Quit(pNo, EmptyParam, EmptyParam); EXCEPT END; // posem TRY per si ja l'havien tancat
                   Sleep(3000);

                   // Movem l'informe a InferHCC
                   // AMB EL NOU PUBLICADOR, NO CAL QUE ES FACI RES, ES MOUEN A PROCESSATS
                   NomDocDesti := ConcatFilePath(PathInferH+'\PROCESSATS', Datos.FieldByName('Arxiu').AsString);
                   MoveFile(PChar(NomDocOrigen), PChar(NomDocDesti));

                   ShowMessage('L''informe ha estat enviat correctament al publicador.');
               end
               else ShowMessage('No es publicarà a l''HCCC perquè no és un tractament del CatSalut (04-UP)');
           end;
        // no
        2: begin
               // Actualitzem l'estat HCCC
               GutExecute('update INFERINFORMES set HCCC = "N" where ID = %d', [Datos.FieldByName('ID').AsInteger]);

               // Tanquem el Word sense guardar els canvis (de fet s'ha obert com a només lectura)
               TRY WordApp.Quit(pNo, EmptyParam, EmptyParam); EXCEPT END; // posem TRY per si ja l'havien tancat
               Sleep(3000);

               // Eliminem l'informe pendent de revisar (ja està guardat a la carpeta definitiva com a PDF)
               DeleteFile(PChar(NomDocOrigen));

               ShowMessage('Procés finalitzat correctament.');
           end;

        else Exit;
      END;

      cInferInformesHCC.fMiForm.Query.Close;
      cInferInformesHCC.fMiForm.Query.Open;

    FINALLY
      // Per si ha quedat obert
      TRY WordApp.Quit(pNo, EmptyParam, EmptyParam); EXCEPT END;
      PotTancar := True;
    END;
end;


procedure TwMain.UMcorregirClick(Sender: TObject);
begin
    if (wData.UsuariActiu.Codi = '') then PreguntaMetge;
    if (wData.UsuariActiu.Codi = '') then Exit;

    if TeDretMetge(wData.UsuariActiu.Codi,[166]) or TeDretGrup(wData.UsuariActiu.Grup,[58]) then CrearForm(TwLlistatUM)
                                                                                            else Exit;
end;

function TextVertical1(DataF: TDateTime): String;
begin
  if DataF <= DataFusio
  then Result := 'Fundació Privada Institut de Neurorehabilitació Guttmann, inscrita amb el núm. 1592 en el Registre de Fundacions Privades del Dept. de Justícia de la Generalitat de Catalunya, classificada com a benèfica de tipus assistencial'
  else Result := 'Fundació Institut Guttmann - CIF G-08519100 - Inscrita amb el núm. 189 en el Registre de Fundacions Privades de la Generalitat de Catalunya. Classificada com a benèfica de tipus assistencial.';
end;

function TextVertical2(DataF: TDateTime): String;
begin
  if DataF <= DataFusio
  then Result := 'CIF: G-62638937 - Registre d''Establiments Sanitaris de la DGRS núm. 08000723 - Hospital concertat amb el SCS, inclòs a la Xarxa Hospitalària d''Utilització Pública (Decret 309/1988)'
  else Result := 'Registre d''Establiments Sanitaris de la DGRS 08000723 - Hospital concertat amb el SCS, inclòs al Sistema sanitari integral d''utilització pública de Catalunya (SISCAT) - Registre d''Entitats, Serveis i Establiments Socials de la Generalitat E01024';
end;


procedure TwMain.ActivitatNPCClick(Sender: TObject);
begin
  CrearForm(TwFitxaActivitatNPC);
end;

procedure ParteInformatica(usuari, departament, ubicacio, motiu: String; prioritat: Integer; mostraerror: Boolean=False);
var
  sql: String;
  qExec: TQuery;
begin
    sql := Format('insert into SORTI2 (DATAINI, HORAINI, USUARI, DEPARTAMEN, PRIORIDAD, PLACA, NOMPC,      UBICACIO, ESTAT, MOTIU) ' +
                  'values             (   "%s",    "%s",   "%s",       "%s",        %d,  "%s", "AUTOMATIC",    "%s",   "N", :motiu) ',
                  [FormatDateTime('dd.mm.yyyy hh:nn:ss', NowServer),
                   FormatDateTime('hh:mm', NowServer),
                   usuari,
                   departament,
                   prioritat,
                   wData.ID_NIC,
                   ubicacio]);

    TRY
      qExec := TQuery.Create(Application);
      TRY
        qExec.DatabaseName := 'InternaInformatica';
        qExec.Sql.Text := sql;
        qExec.ParamByName('motiu').DataType := ftBlob;
        qExec.ParamByName('motiu').Value := motiu;
        qExec.ExecSQL;
      FINALLY
        qExec.Free;
      END;
    EXCEPT
      on e: Exception do
      if mostraerror then FerError('Error en crear parte automàtic a Informàtica' + NLine + e.Message);
    END;

end;

function EsFestiu(DT: TDateTime): Boolean;
var
  y,m,d,h,n,s,ss: word;
  Avui: TDateTime;
begin
  Avui := DT;
  DecodeDate(Avui,y,m,d);
  DecodeTime(TimeServer,h,n,s,ss);

  with wData do
  begin
      QFestius.Close;
      QFestius.Open;
      QFestius.First;
      Result := qFestius.Locate('Data', Avui, []);
      QFestius.Close;
  end;
end;

function BuscaDiaNPC(Freq: String; Data: TDateTime): TDateTime;
var
 dow: Integer;
begin
  // busca el primer que té Freq a partir de Data (restant dies si cal)
  Result := Data;
  dow := DiaDeLaSemana(Result);
  while (Copy(Freq,dow,1)<>'X') or EsFestiu(Result) do
  begin
      Result := Result - 1;
      dow := DiaDeLaSemana(Result);
  end;
end;


procedure TwMain.Responsableinfermeria1Click(Sender: TObject);
begin
  // Antiga aplicació TASQUES D'INFERMERIA
  AbrirForm(TwFitxaRespInfer);
end;

procedure TwMain.RenovacionsAutomatiques;
var
 q: TQuery;
 DataNew: TDateTime;
 F: TextFile;
 Fitxer,Linea: String;
begin
  if wData.ES_PROVA then Fitxer := 'G:\BIN\Admissions\Renovacions\LogRenovacions_Proves.txt'
                    else Fitxer := 'G:\BIN\Admissions\Renovacions\LogRenovacions.txt';

  if not FileExists(Fitxer) then Exit;

  q := TQuery.Create(Application);
  TRY
     q.DatabaseName := wData.Gdb.DatabaseName;
     q.SQL.Text := 'SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_FI_CONTRACTAT, T.C_FREQUENCIA   '+
                   'FROM TRACTAMENTS T                                                          '+
                   'JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRESTACIO AND DP.C_DRET="P114"    '+
                   'WHERE T.DATA_FI_CONTRACTAT - "TODAY" < 30 AND T.DATA_INGRES < "TODAY"       '+
                   'AND T.DATA_ALTA IS NULL AND T.C_FREQUENCIA<>"-------" ORDER BY T.C_HISTORIA ';
     q.Open;
     while not q.Eof do
     begin
         DataNew := BuscaDiaNPC(q.FieldByName('C_FREQUENCIA').AsString,q.FieldByName('DATA_FI_CONTRACTAT').AsDateTime + 30);
         GutExecute('update TRACTAMENTS SET DATA_FI_CONTRACTAT="%s" where c_tractament=%d',
                    [FormatDateTime('dd.mm.yyyy',DataNew),q.FieldByName('C_TRACTAMENT').AsInteger]);

         TRY
             if FileExists(Fitxer) then
             begin
                 AssignFile(F, Fitxer);
                 if not FileExists(Fitxer) then Rewrite(F);
                 Append(F);
                 Linea := '** ' + FormatDateTime('dddd, dd/mm/yyyy hh:nn:ss ', Now) + ':';
                 Linea := Linea + ' H: '+ q.FieldByName('C_HISTORIA'  ).AsString
                                + ' T: '+ q.FieldByName('C_TRACTAMENT').AsString
                                + ' F: '+ q.FieldByName('C_FREQUENCIA').AsString
                                + ' D.FiContracte Old: '+q.FieldByName('DATA_FI_CONTRACTAT').AsString
                                + ' D.FiContracte New: '+FormatDateTime('dd.mm.yyyy',DataNew);
                 Writeln(F, Linea);
             end;
         FINALLY
             if FileExists(Fitxer) then CloseFile(F);
         END;

         q.Next;
     end;
  FINALLY
     q.Close;
     q.Free;
  END;
end;

procedure TwMain.PrestacionsSessions1Click(Sender: TObject);
begin
  CrearForm( TwFitxaPrestacioSessions );
end;

procedure TwMain.AlarmaTimeOutClick(Sender: TObject);
begin
    ScrollAlarmes.Visible := False;
    cTimeOutCE.ExecuteChild;
end;

procedure TwMain.EntractamentEASE1Click(Sender: TObject);
begin
    cPrestacionsEASE.Indicacio := 'Es mostren els tractaments actius.  ' + NLine +
                                  'F3 per mostrar-los tots.  ';

    cPrestacionsEASE.ExecuteChild;
end;

procedure TwMain.NensWISCVClick(Sender: TObject);
begin
    // Només es permet a qui tingui dret G63 (Psicologia i Neuropsicologia)
    if wData.UsuariActiu.Codi='' then PreguntaMetge;
    if wData.UsuariActiu.Codi='' then Exit;
    TeDretGrup(wData.UsuariActiu.Grup,[63],True);

    AbrirForm(TwFitxaNensWISCV);
end;

procedure TwMain.SpeedButton5Click(Sender: TObject);
begin
    cPrealtesPosposades.ExecuteChild;
end;

procedure TwMain.Metgedegurdia1Click(Sender: TObject);
begin
    cMetgeGuardia.ExecuteChild('','');
end;

procedure TwMain.AlarmaValoracionsNPCClick(Sender: TObject);
begin
    ScrollAlarmes.Visible := False;
    cValoraNPC.ExecuteChild;
end;

procedure TwMain.cValoraNPCAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
    Llistadespera1.Click;  // obrim la llista d'espera
end;


// AMBULÀNCIES

// Nova sol·licitud (Admissions)
procedure TwMain.AmbulanciesPeticioClick(Sender: TObject);
begin
    CrearForm(TwFitxaAmbulancies);
end;


// Veure sol·licituds d'Infermeria pendents
procedure TwMain.SpeedButton6Click(Sender: TObject);
begin
    with TwFitxaSolicitudsAmbulancies(AbrirForm(TwFitxaSolicitudsAmbulancies)) do Inicia(2, True);
end;


// Consulta sol·licituds d'Infermeria
procedure TwMain.AmbulanciesPendentsClick(Sender: TObject);
var
  Op: Integer;
begin
    if TeDretAcces([100]) then Op := 1 + AvisoListaStr('Actuar com', '1. Infermeria' + NLine +
                                                                     '2. Admissions')
    else if TeDretAcces([200]) then Op := 1
    else if TeDretAcces( [70]) then Op := 2;

    with TwFitxaSolicitudsAmbulancies(AbrirForm(TwFitxaSolicitudsAmbulancies)) do Inicia(Op, False);
end;


procedure TwMain.AlarmaMedicacioNPCClick(Sender: TObject);
begin
  ScrollAlarmes.Visible := False;
  cMedicacioNPC.SqlDic[5] := Format('WHERE O.DATA_ASSIGNACIO BETWEEN "%s" AND "NOW"',[FormatDateTime('dd.mm.yyyy',dia)]);
  cMedicacioNPC.ExecuteChild;
end;

procedure TwMain.MedicacioPrivatsClick(Sender: TObject);
begin
  cMedicacioNPC.SqlDic[5] := '  WHERE O.DATA_ASSIGNACIO IS NOT NULL ';  // Sense filtre en data assignació
  cMedicacioNPC.ExecuteChild;
end;

procedure TwMain.AlarmaOrtesisPrivadesRealitzadesClick(Sender: TObject);
begin
    ScrollAlarmes.Visible := False;
    cInterconPrivats.SqlDic[5] := 'where i.c_tipus="ORTESIS"';
    cInterconPrivats.ExecuteChild;
end;

procedure TwMain.AlarmaProvEspPrivadesSolClick(Sender: TObject);
begin
    ScrollAlarmes.Visible := False;
    cInterconPrivats.SqlDic[5] := 'where i.c_tipus="PROVESP"';
    cInterconPrivats.ExecuteChild;
end;

procedure TwMain.AlarmaBancSangPrivatsClick(Sender: TObject);
begin
    ScrollAlarmes.Visible := False;
    cInterconPrivats.SqlDic[5] := 'where i.c_tipus="BANCSANG"';
    cInterconPrivats.ExecuteChild;
end;

{procedure TwMain.PandoraClick(Sender: TObject);
begin
    with TwFitxaListPandora(AbrirForm(TwFitxaListPandora)) do Inicia;
end;}



procedure TwMain.UHsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    OmplirPlanolUH(Datos.FieldbyName('C_Planta').asString);
end;


procedure TwMain.OmplirPlanolUH(Planta: String);
Var
  elemento : TComponent;
  Llit, InfoAilla : String;
begin
    with  TwPrintUHs.Create(Application) do
    try
      qDatos.Close;
      qDatos.SQL[1] := '("'+Planta+'")';
      qDatos.Open;
      
      While not qDatos.Eof do
      Begin
          Llit := qDatos.FieldByName('C_LLIT').AsString;

          Llit := Copy(qDatos.FieldByName('C_LLIT').AsString, 2, 2);
          elemento := FindComponent( Trim( 'NUM'  + LLit ));

          If elemento <> Nil Then
          Begin
              case qDatos.FieldByName('Tipus').AsString[1] of
                'B':begin
                       (elemento As TQRlabel).Font.Size  := 6;
                       (elemento As TQRlabel).Font.Style := [fsBold];
                       (elemento As TQRlabel).caption    := qDatos.FieldByName('C_LLIT').AsString;
                       (elemento As TQRlabel).Transparent:= False;

                        elemento := FindComponent( Trim( 'NUMx' + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 6;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := qDatos.FieldByName('C_LLIT').AsString;
                        end;

                        elemento := FindComponent('AIL' + Llit);
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 6;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := ' ';
                         (elemento As TQRlabel).Left    := (elemento As TQRlabel).Left + 5
                        end;

                        elemento := FindComponent( Trim( 'NOM'  + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 6;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).Font.Color := clRed;
                         (elemento As TQRlabel).caption    := 'BLOQUEJAT: '+qDatos.FieldByName('MOTIU_BLOQUEIG').AsString;
                        end;

                    end;
                'O':begin                                         
                       (elemento As TQRlabel).Font.Size := 6;
                       (elemento As TQRlabel).caption   := qDatos.FieldByName('C_LLIT').AsString;

                        elemento := FindComponent( Trim( 'NUMx' + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size := 6;
                         (elemento As TQRlabel).caption   := qDatos.FieldByName('C_LLIT').AsString;
                        end;

                        elemento := FindComponent('AIL' + LLit );
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size   := 6;

                         if (not qDatos.FieldByName('GERMENS').IsNull) and (qDatos.FieldByName('GERMENS').AsString <> '') then
                         begin
                             InfoAilla := qDatos.FieldByName('R_CODI').AsString +': '+ qDatos.FieldByName('GERMENS').AsString;
                             if len(InfoAilla) > 30 then InfoAilla := CopyLeft(InfoAilla, 30)+' {+}';
                         end
                         else InfoAilla := qDatos.FieldByName('R_CODI').AsString;
                         (elemento As TQRLabel).caption     := InfoAilla;

                         {if (not qDatos.FieldByName('PARAMS').IsNull) and (qDatos.FieldByName('PARAMS').AsString <>'')
                         then (elemento As TQRLabel).Font.Color := StringToColor(Trim(qDatos.FieldByName('PARAMS').AsString))
                         else (elemento As TQRLabel).Font.Color := clBlack;   }
                         (elemento As TQRLabel).Font.Color := clPurple;
                        end;

                        elemento := FindComponent( Trim( 'NOM'  + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 6;
                         (elemento As TQRLabel).caption    := qDatos.FieldByName('HISTORIA').AsString+' '+qDatos.fieldbyname('NOMCOMPLET').AsString;
                         (elemento As TQRlabel).Font.Color := clBlack;
                        end;

                    end;
                'L':begin
                       (elemento As TQRlabel).Font.Size  := 6;
                       (elemento As TQRlabel).Font.Style := [fsBold];
                       (elemento As TQRlabel).caption    := qDatos.FieldByName('C_LLIT').AsString;
                       (elemento As TQRlabel).Transparent:= False;

                        elemento := FindComponent( Trim( 'NUMx' + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 6;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := qDatos.FieldByName('C_LLIT').AsString;
                        end;

                        elemento := FindComponent('AIL' + Llit);
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 6;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := ' ';
                         (elemento As TQRlabel).Left    := (elemento As TQRlabel).Left + 5;
                        end;

                        elemento := FindComponent( Trim( 'NOM'  + LLit ));
                        If elemento <> Nil Then
                        begin
                         (elemento As TQRlabel).Font.Size  := 6;
                         (elemento As TQRlabel).Font.Style := [fsBold];
                         (elemento As TQRlabel).caption    := 'LLIURE';
                         (elemento As TQRlabel).Font.Color := clGreen;
                        end;
                    end;
              end;
          End;
          qDatos.Next;
      end;

      QRTitle.Caption := Format(QRTitle.Caption, [qDatos.FieldbyName('N_Planta').asString]);

      // impimim també els aïllaments en curs (Admissions -> Consultes -> Aïllaments en curs)
      qAilla.Close;
      qAilla.SelectSQL.Text := 'select * from P_REGISTRESINFER_AILLAENCURS WHERE PLANTA="'+Planta+'"';
      qAilla.Open;

      if TeDretAcces([105]) then
      begin
          if AvisoSN('Vista preliminar?') then
          begin
              QRHospitalNou.Preview;
              qrList.Preview;
          end
          else begin
              QRHospitalNou.Print;
              qrList.Print;
              wMain.LastTraza := wData.ObraTrazaControl(0,Self.Name,wMain.Aplica);
              wMain.AddStatusTraza('P');
              wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);
          end;
      end
      else begin
          QRHospitalNou.Print;
          qrList.Print;
          wMain.LastTraza := wData.ObraTrazaControl(0,Self.Name,wMain.Aplica);
          wMain.AddStatusTraza('P');
          wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);
      end;
    finally
      Free;
    end;
end;

procedure TwMain.Plnolsamballaments1Click(Sender: TObject);
begin
  if (wData.UsuariActiu.Codi = '') then PreguntaMetge;
  if (wData.UsuariActiu.Codi = '') then Exit;

  TeDretMetge(wData.UsuariActiu.Codi, [206], True);
  UHs.ExecuteModal; 
end;

procedure TwMain.Alarma2124VideconfClick(Sender: TObject);
begin
  ScrollAlarmes.Visible := False;
  cNPTAvui.ExecuteChild;
end;

procedure TwMain.cNPTAvuiAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
  Agenda1.Click;  // obrim l'agenda
end;


procedure TwMain.cInferInformesEnDeixarPendentdeValidar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  WordApp: _Application;
  WordDoc: _Document;
  nomarxiu, NomDocOrigen, NomDocDesti, missatge: String;
  pNomDoc, pNomesLectura, pVisible, pSi: OleVariant;
begin
    // Informes finalitzats: els poden deixar "pendents d'alta" (però han de fer actuació manual sobre els arxius word i pdf)
    if (Datos.FieldByName('Estat').AsInteger = 5) then
    begin
        if AvisoNS('Voleu posar com a pendent de finalitzar (pendent d''alta) l''informe ' + Datos.FieldByName('Tipus').AsString + NLine +
                   'del pacient ' + Datos.FieldByName('C_Historia').AsString + ' - ' + Datos.FieldByName('NomComplet').AsString + '?')
        then begin
            // Tornem a composar el nom de l'arxiu RTF:
            nomarxiu := Datos.FieldByName('C_Historia').AsString + '_' + Datos.FieldByName('Tipus').AsString + '_' +
                        FormatDateTime('dd-mm-yyyy', Datos.FieldByName('Data_Ingres').AsDateTime) + '.rtf';
            // Canviem l'estat de l'informe a 4 "signat (pendent d'alta)" i actualitzem el nom de l'arxiu:
            GutExecute('update INFERINFORMES set ESTAT = 4, ARXIU = "%s" where ID = %d', [nomarxiu, Datos.FieldByName('ID').AsInteger]);

            ShowMessage('Deixat com a "signat - pendent d''alta" ' + NLine +
                        'Recordeu moure i renombrar l''arxiu RTF_ de la carpeta definitiva i eliminar el PDF.');
            Datos.Close;
            Datos.Open;
        end;
        Exit;
    end;

    // Poden tornar a deixar "pendents de validar" els informes "validats (pendents de firma)" i els "signats (pendents d'alta)"
    if not (Datos.FieldByName('Estat').AsInteger in [3,4]) then Exit;

    if not AvisoNS('Voleu tornar a posar com a pendent de validar l''informe ' + Datos.FieldByName('Tipus').AsString + NLine +
                   'del pacient ' + Datos.FieldByName('C_Historia').AsString + ' - ' + Datos.FieldByName('NomComplet').AsString + '?')
    then Exit;

    // Canviem l'estat de l'informe a 2: pendent de validar (ho fem ara perquè l'obrirem i el podran modificar)
    GutExecute('update INFERINFORMES set ESTAT = 2 where ID = %d', [Datos.FieldByName('ID').AsInteger]);

    // Obrim l'informe
    WordApp := CoWordApplication.Create;

    NomDocOrigen := ConcatFilePath(PathInfer3, Datos.FieldByName('Arxiu').AsString);
    pNomDoc := NomDocOrigen;
    pNomesLectura := False;
    pVisible := True;
    pSi := True;
    WordDoc := WordApp.Documents.Open(pNomDoc, EmptyParam, pNomesLectura, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                      EmptyParam, EmptyParam, EmptyParam, pVisible, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    WordApp.Visible := True;

    missatge := 'Feu els canvis pertinents al document abans de clicar OK.';
    if (Datos.FieldByName('Estat').AsInteger = 4)
    then missatge := missatge + NLine + 'Per exemple, cal que elimineu les dades de la signatura i la paginació.';
    ShowMessage(missatge);

    // Tanquem el Word guardant els canvis (TRY per si ja l'havien tancat) i esperem que es tanqui
    TRY WordApp.Quit(pSi, EmptyParam, EmptyParam); EXCEPT END;
    Sleep(2000);

    // Movem l'arxiu de la carpeta Infer3 a Infer2
    NomDocDesti  := ConcatFilePath(PathInfer2, Datos.FieldByName('Arxiu').AsString);
    if not MoveFile(PChar(NomDocOrigen), PChar(NomDocDesti)) then FerError('No s''ha pogut moure l''arxiu a Infer2!');
    Datos.Close;
    Datos.Open; 
end;

procedure TwMain.PermisosSortida1Click(Sender: TObject);
begin
    with TwLlistatPermisosSortida.Create(Application) do Iniciar();
end;

procedure TwMain.GBLactius1Click(Sender: TObject);
begin
    cPrestacionsGBL.Indicacio := 'Es mostren els tractaments actius.  ' + NLine +
                                 'F3 per mostrar-los tots.  ';

    cPrestacionsGBL.ExecuteChild;
end;

procedure TwMain.CEprevista1Click(Sender: TObject);
begin
  AbrirForm(TwFitxaCEPrevistes);
end;

procedure TwMain.cRenovacioMutuesAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
begin
    if (Query.FieldByName('R_Codi').AsString = '9') then ColorFont := clRed;
end;

end.



