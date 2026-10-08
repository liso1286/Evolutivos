unit DataGimnas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Diccionari, ImgList, MessageBox;

type
  TwDataGimnas = class(TDataModule)
    AssistenciaGimnas: TDic;
    CodisAssistencia: TDic;
    TornAmb: TDic;
    UpdateAss: THYSqlProc;
    lAssistencia: TDic;
    pAss: THYSqlProc;
    qPrestacions: TQuery;
    EstadistAssistencia: TDic;
    PreparaDia: THYSqlProc;
    AssDiaria: THYSqlProc;
    ForaFreq: THYSqlProc;
    ModFrequencia: THYSqlProc;
    MsgBoxes: TMessageBoxes;
    mbIcones: TImageList;
    mbGlyphs: TImageList;
    pAssMemories: THYSqlProc;
    ListActivitats_NoFerCheck: THYSqlProc;
    InitTractament: THYSqlProc;
    ListGrid_NoFerCheck: THYSqlProc;
    ListGym_NoFerCheck: THYSqlProc;
    AgendaPacient_NO_FER_CHECK: TDic;
    LaboMarxa_NoFerCheck: THYSqlProc;
    HorariGym: TDic;
    List: THYSqlProc;
    tePacients_NoFerCheck: THYSqlProc;
    ListGridSenseBUITS_NoFerCheck: THYSqlProc;
    ListGridNew_NoFerCheck: THYSqlProc;
    GymMaterial: TDic;          
    GymPrestecs: TDic;
    InformesNPC: TDic;
    ListActivitats: THYSqlProc;
    ListGrid: THYSqlProc;
    ListGym: THYSqlProc;
    LaboMarxa: THYSqlProc;
    tePacients: THYSqlProc;
    ListGridNew: THYSqlProc;
    ListNPC_senseBuits: THYSqlProc;
    ListNPCNew: THYSqlProc;
    ListNPC_AmbBuits: THYSqlProc;
    NPCList: THYSqlProc;
    MultiSens: THYSqlProc;
    NPCValora: TDic;
    ValoraList: THYSqlProc;
    NPCHorari: THYSqlProc;
    P_CarreguesDia: THYSqlProc;
    pAssTeorica: THYSqlProc;
    T_AgendaPacient_BI: THYSqlTrigger;
    CalendariGym: TDic;
    NPCHorariTerapeuta: THYSqlProc;
    ListNPCtmp: TDic;
    Carregues: THYSqlProc;
    CarreguesOrdre: THYSqlProc;
    ResumDiari: THYSqlProc;
    ResumDiariOrdre: THYSqlProc;   { Private declarations }
    Suplents: TDic;
    RD_ForaFreq: THYSqlProc;
    ActivitatsNPC: THYSqlProc;   { Private declarations }
    RD_ForaFreqOrdre: THYSqlProc;
    ListGym_senseBuits: THYSqlProc;
    EliminarDuplicats: THYSqlProc;
    NoAvisen: THYSqlProc;
    AbsentismeNPCDates: TDic;
    Resum2: THYSqlProc;
    ListResta: THYSqlProc;
    ListInfer: THYSqlProc;
    marcatge_biostar: THYSqlProc;
    marcatge_biostar_BCN: THYSqlProc;
    Processa: THYSqlProc;
    Unespa_Sessions: TDic;
    AssPeriode: THYSqlProc;
    ListEBikes_Esborrada: THYSqlProc;
    ListEBikesNew: THYSqlProc;
    P_EBIKES: THYSqlProc;
    Formacio: THYSqlProc;
    NoHaVingutAuto: THYSqlProc;
    T_AssistenciaGimnas_BI: THYSqlTrigger;
    T_AssistenciaGimnas_BU: THYSqlTrigger;
  public
    { Public declarations }
    Preview:Boolean;
  end;

var
  wDataGimnas: TwDataGimnas;

implementation

uses Data, DataBasics;

{$R *.DFM}

end.
