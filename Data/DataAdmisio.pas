unit DataAdmisio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Diccionari;

type
  TwDataAdmisio = class(TDataModule)
    Bloqueig: TDic;
    Llits: TDic;
    Passis: TDic;
    Espera: TDic;
    Plantas: TDic;
    Vacaciones: TDic;
    Horario: TDic;
    PrestaCodiCamps: TDic;
    LlistaEspera: THYSqlProc;
    HistEspera: THYSqlProc;
    HorarioPresta: TDic;
    AgendaFestivos: THYSqlProc;
    BuscarDiaLliure: THYSqlProc;
    Agenda: THYSqlProc;
    CalculaDuracionI: THYSqlTrigger;
    P_Llits: THYSqlProc;
    RangBloqueigs: THYSqlProc;
    SegonaVisita2: THYSqlProc;
    InsProg: THYSqlProc;
    CalculaDuracionU: THYSqlTrigger;
    DiaMetgePle: THYSqlProc;
    DiaPrestaPle: THYSqlProc;
    DiaPrestaPle2: THYSqlProc;
    DiasVisitables: THYSqlProc;
    ListMetgePresta: THYSqlProc;
    Activitat: THYSqlProc;
    CrearEspera: THYSqlProc;
    DietesLlits: THYSqlProc;
    SegonaVisita: THYSqlProc;
    Ins_NomComplet: THYSqlTrigger;
    Upd_NomComplet: THYSqlTrigger;
    Tasques: THYSqlProc;
    AltesAdmin: TDic;
    OrtesisProveidor: THYSqlProc;
    CalendariAM: TDic;
    InformesSol: TDic;
    llistat: THYSqlProc;
    LogSol: TDic;
    tsi_dni: THYSqlProc;
    LogDietes: TDic;
    Tasques2: THYSqlProc;
    DinarsNadal: TDic;
    List: THYSqlProc;
    Totals: THYSqlProc;
    Transport: TDic;
    DinarsNadalbloqueig: TDic;
    Ocupacio: THYSqlProc;
    Tancaments: TDic;
    TancaRang: THYSqlProc;
    PassisLlista: THYSqlProc;
    LogCalAM: TDic;
    ContaCalAM: THYSqlTrigger;
    LogBLlitsInf: TDic;
    LogInfSAP: TDic;
    Sol_Ingres: TDic;
    Consultes: TDic;
    Horaris: TDic;
    Portes: TDic;
    DatesNadal: TDic;
    vLlocs: TDic;
    V_Plantes_Llocs: THYSqlView;
    Espera_AI: THYSqlTrigger;
    Cua: TDic;
    ActivitatNPC: THYSqlProc;
    Espera_AU: THYSqlTrigger;
    V_PrestaCodicampsL: THYSqlView;
    Dietes: THYSqlProc;
    PermisosSortida: TDic;
    PermisosSortidaLog: TDic;
    Inclou: THYSqlProc;
    Garants: TDic;
    Facilitadors: TDic;
    T_Passis_BI: THYSqlTrigger;
    T_Passis_AI: THYSqlTrigger;
    P_Permisos_Caduca: THYSqlProc;
    sms_Bdn: THYSqlProc;
    CensCuina: THYSqlProc;
    Passis_Festius: TDic;
    HorariVisitaMetge: THYSqlProc;
    CalendariAM_BI: THYSqlTrigger;
    Previsio2014SCS: THYSqlProc;
    Cues: TDic;
    LINIA: THYSqlTrigger;
    ListWB: THYSqlProc;
    ExportaWB: THYSqlProc;
    P_2014TIRprevistos: THYSqlProc;
    P_AltesEfectives: THYSqlProc;
    P_CNIFinalitzats: THYSqlProc;
    EsperaProgramada: THYSqlProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDataAdmisio: TwDataAdmisio;

implementation

uses Data, DataCodis, DataBasics, DataGimnas, DataFactu, DataHola;

{$R *.DFM}

end.


















  