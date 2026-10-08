unit FitxaInclusioConsultaaAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, HYEdit, Buttons, HYLabel, Db, DBTables, HYSql,
  HYPanels, ExtCtrls, HYDialogConsulta, dbGrids, Grids, Data, HYGrids, Variants,
  kbmMemTable, FitxaAgendaProgramacio, inputboxBVG, DataHCE;

type
  TwFitxaInclusioConsultaaAgenda = class(TForm)
    HYBarra1: THYBarra;
    HYArea1: THYArea;
    tAgenda: THYSqlTable;
    dsAgenda: TDataSource;
    tAgenda_C_Espera: TIntegerField;
    tAgenda_C_Historia: TIntegerField;
    tAgenda_C_Prestacio: TStringField;
    tAgenda_C_Coordinador: TStringField;
    tAgenda_Data_Inclusio: TDateTimeField;
    tAgenda_Data_PreIngres: TDateTimeField;
    tAgenda_Hora_PreIngres: TStringField;
    tAgenda_Nom: TStringField;
    tAgenda_Cognom1: TStringField;
    tAgenda_Cognom2: TStringField;
    tAgenda_NomComplet: TStringField;
    tAgenda_TELEFON: TStringField;
    tAgenda_C_Unitat: TSmallintField;
    tAgenda_C_Caracter: TSmallintField;
    tAgenda_C_Procedencia: TSmallintField;
    tAgenda_C_Motiu: TSmallintField;
    tAgenda_C_Frecuencia: TStringField;
    tAgenda_DataFixe: TDateTimeField;
    tAgenda_Data_Exclusio: TDateTimeField;
    tAgenda_MotiuExclusio: TStringField;
    tAgenda_INTERVENCIO: TStringField;
    tAgenda_COMENTARI: TStringField;
    tAgenda_C_Estat: TSmallintField;
    tAgenda_C_TractamentDesti: TIntegerField;
    Data_PreIngres: THYEdit;
    Hora_PreIngres: THYEdit;
    HYArea2: THYArea;
    Panel1: TPanel;
    pGroupDadesPersonals: TPanel;
    PanelEditable: THYArea;
    HYEdit6: THYEdit;
    EditCognom1: THYEdit;
    HYEdit11: THYEdit;
    HYEdit12: THYEdit;
    PanelReadOnly: THYArea;
    HYEdit3: THYEdit;
    HYEdit7: THYEdit;
    HYEdit8: THYEdit;
    bHistoria: TSpeedButton;
    Panel2: TPanel;
    qHoraris: TQuery;
    LblEstat: TPanel;
    bRecercaHoraLliure: TSpeedButton;
    qBucleHoraris: TQuery;
    qHores: TQuery;
    qPanelInfo : THYSqlQuery;
    dsPanelInfo: TDataSource;
    qPanelInfoC_ESPERA: TIntegerField;
    qPanelInfoVISITAT : TStringField;
    qPanelInfoHORA_PREINGRES: TStringField;
    qPanelInfoC_HISTORIA: TIntegerField;
    qPanelInfoNOMCOMPLET: TStringField;
    qPanelInfoTELEFON : TStringField;
    qPanelInfoC_UNITAT: TSmallintField;
    qPanelInfoC_COORDINADOR: TStringField;
    qPanelInfoC_PRESTACIO: TStringField;
    HYGrid1: THYGrid;
    tAgenda_ComentariMetge: TStringField;
    tAgenda_ComentariInfermera: TStringField;
    Panel3: TPanel;
    ListMetgePresta : THYConsulta;
    LabelMetge : TLabel;
    labelPresta: TLabel;
    eMetgeX : TEdit;
    ePrestaX: TEdit;
    inputHistoria: THYTextEdit;
    tAgenda_C_MetgeAutoritzacio: TStringField;
    tAgenda_Exclos: TStringField;
    tAgenda_C_OM: TIntegerField;
    tAgenda_Lloc: TStringField;
    tAgenda_SEXO: TStringField;
    pIncapacitat: TPanel;
    Label1: TLabel;
    lbDadesIncapacitat: TLabel;
    tAgenda_IDREGISTRE: TIntegerField;
    tAgenda_Metge_Programa: TStringField;
    edLloc: THYEdit;
    lAvis: TLabel;
    Dades: TkbmMemTable;
    DadesId: TStringField;
    DadesDFC_ACE: TStringField;
    DadesDFC_ALO: TStringField;
    DadesDFC_ANT: TStringField;
    DadesDFC_AOFT: TStringField;
    DadesDFC_CABS: TStringField;
    DadesDFC_CAD: TStringField;
    DadesDFC_CAP: TStringField;
    DadesDFC_CAP_O: TStringField;
    DadesDFC_CAUP: TStringField;
    DadesDFC_CBL: TStringField;
    DadesDFC_CCC_A: TStringField;
    DadesDFC_CCC_CI: TStringField;
    DadesDFC_CCC_I: TStringField;
    DadesDFC_CCC_L: TStringField;
    DadesDFC_CCC_T: TStringField;
    DadesDFC_CCP: TStringField;
    DadesDFC_CDE_1: TStringField;
    DadesDFC_CDE_2: TStringField;
    DadesDFC_CDINE: TStringField;
    DadesDFC_CDP: TStringField;
    DadesDFC_CEC: TStringField;
    DadesDFC_CES: TStringField;
    DadesDFC_CFO_PC: TStringField;
    DadesDFC_CFO_SC: TStringField;
    DadesDFC_CGGC: TStringField;
    DadesDFC_CIDI: TStringField;
    DadesDFC_CIP: TStringField;
    DadesDFC_CIP_V: TStringField;
    DadesDFC_CLO: TStringField;
    DadesDFC_CMCT: TStringField;
    DadesDFC_CMO: TStringField;
    DadesDFC_CMRTS: TStringField;
    DadesDFC_CNSQ: TStringField;
    DadesDFC_COR: TStringField;
    DadesDFC_COR_1: TStringField;
    DadesDFC_COR_2: TStringField;
    DadesDFC_COT: TStringField;
    DadesDFC_CPA: TStringField;
    DadesDFC_CPASS: TStringField;
    DadesDFC_CPE: TStringField;
    DadesDFC_CPIS: TStringField;
    DadesDFC_CPO: TStringField;
    DadesDFC_CPOR: TStringField;
    DadesDFC_CRAA: TStringField;
    DadesDFC_CSA: TStringField;
    DadesDFC_CSINE: TStringField;
    DadesDFC_CSTSI: TStringField;
    DadesDFC_CTO: TStringField;
    DadesDFC_CTP: TStringField;
    DadesDFC_CTT: TStringField;
    DadesDFC_CUG: TStringField;
    DadesDFC_CUP: TStringField;
    DadesDFC_CUP_S: TStringField;
    DadesDFC_CUP_T: TStringField;
    DadesDFC_CUS_C: TStringField;
    DadesDFC_DAL: TStringField;
    DadesDFC_DAL_A: TStringField;
    DadesDFC_DCF: TStringField;
    DadesDFC_DCF_A: TStringField;
    DadesDFC_DCP: TStringField;
    DadesDFC_DDA: TStringField;
    DadesDFC_DDA_A: TStringField;
    DadesDFC_DDID: TStringField;
    DadesDFC_DDID_A: TStringField;
    DadesDFC_DDL: TStringField;
    DadesDFC_DDL_A: TStringField;
    DadesDFC_DDTSI: TStringField;
    DadesDFC_DDTSI_: TStringField;
    DadesDFC_DFDP: TStringField;
    DadesDFC_DFDP_A: TStringField;
    DadesDFC_DIDP: TStringField;
    DadesDFC_DIDP_A: TStringField;
    DadesDFC_DIP: TStringField;
    DadesDFC_DNA: TStringField;
    DadesDFC_DNA_A: TStringField;
    DadesDFC_ERR: TStringField;
    DadesDFC_IBIS: TStringField;
    DadesDFC_ICIPM: TStringField;
    DadesDFC_IDA: TStringField;
    DadesDFC_IDI: TStringField;
    DadesDFC_IDL: TStringField;
    DadesDFC_IDM: TStringField;
    DadesDFC_IDT: TStringField;
    DadesDFC_IIEC: TStringField;
    DadesDFC_IIT: TStringField;
    DadesDFC_ILTU: TStringField;
    DadesDFC_IPAD: TStringField;
    DadesDFC_ITRE: TStringField;
    DadesDFC_LSE: TStringField;
    DadesDFC_MEC: TStringField;
    DadesDFC_NAAS: TStringField;
    DadesDFC_NART_S: TStringField;
    DadesDFC_NCP: TStringField;
    DadesDFC_NDID: TStringField;
    DadesDFC_NFI: TStringField;
    DadesDFC_NIA: TStringField;
    DadesDFC_NLO: TStringField;
    DadesDFC_NLT: TStringField;
    DadesDFC_NOGT: TStringField;
    DadesDFC_NPE: TStringField;
    DadesDFC_NQU: TStringField;
    DadesDFC_NRD: TStringField;
    DadesDFC_NRD_ID: TStringField;
    DadesDFC_NRD_TD: TStringField;
    DadesDFC_NRE: TStringField;
    DadesDFC_NSAPA: TStringField;
    DadesDFC_NSQ: TStringField;
    DadesDFC_NTE_1: TStringField;
    DadesDFC_NTE_2: TStringField;
    DadesDFC_NVI: TStringField;
    DadesDFC_NVIA_F: TStringField;
    DadesDFC_NVIA_I: TStringField;
    DadesDFC_PCG: TStringField;
    DadesDFC_PRO: TStringField;
    DadesDFC_RAEC: TStringField;
    DadesDFC_SCG: TStringField;
    DadesDFC_SEXE: TStringField;
    DadesDFC_TAA: TStringField;
    DadesDFC_TDI: TStringField;
    DadesDFC_TDL: TStringField;
    DadesDFC_TFX: TStringField;
    DadesDFC_TOR: TStringField;
    DadesDFC_TRE: TStringField;
    DadesDFC_TVI: TStringField;
    DadesLAS_CBL: TStringField;
    DadesLAS_CDP: TStringField;
    DadesLAS_CES: TStringField;
    DadesLAS_CLO: TStringField;
    DadesLAS_CPIS: TStringField;
    DadesLAS_CPO: TStringField;
    DadesLAS_CPOR: TStringField;
    DadesLAS_DDL: TStringField;
    DadesLAS_DDL_A: TStringField;
    DadesLAS_IBIS: TStringField;
    DadesLAS_NLO: TStringField;
    DadesLAS_NQU: TStringField;
    DadesLAS_NVI: TStringField;
    DadesLAS_NVIA_F: TStringField;
    DadesLAS_NVIA_I: TStringField;
    qInsEspera: TQuery;
    tAgenda_C_Proces: TIntegerField;
    tAgenda_CIP: TStringField;
    tAgenda_Accio_HCCC: TStringField;
    tAgenda_Estat_HCCC: TStringField;
    EditSexo: THYEdit;
    Label5: TLabel;
    Label2: TLabel;
    LabelCentreFacturacio: THYLabel;
    Eti_tAgenda_Unitat_N_Codi: THYLabel;
    Label4: TLabel;
    LabelClient: THYLabel;
    edtUnitat: THYEdit;
    HYMemo1: THYMemo;
    PanelCIP: TPanel;
    edCIP: THYEdit;
    bCIP: TSpeedButton;
    Label6: TLabel;
    edDataNaix: THYEdit;
    tAgenda_Data_Naix: TDateTimeField;
    pMotiu: TPanel;
    edMotiu: THYEdit;
    Eti_tAgenda_Motiu_N_Codi: THYLabel;
    eCentreFac: THYEdit;
    tAgenda_Sequencia_HCCC: TIntegerField;
    tAgenda_CIP_Antic: TStringField;
    tAgenda_C_CENTREFAC: TStringField;
    tAgenda_C_HospitalOrigen: TSmallintField;
    tAgenda_T_SESSIO: TSmallintField;
    Label3: TLabel;
    HYEdit1: THYEdit;
    cCF: THYConsulta;
    Label7: TLabel;
    LabelUM: THYLabel;
    tAgenda_C_CLIENT: TStringField;
    tAgenda_hce_person_id: TIntegerField;
    ePersonId: THYEdit;
    sbCreateModifyPerson: TSpeedButton;
    tAgenda_hce_schedule_id: TStringField;
    tAgenda_RISC_SOCIAL: TIntegerField;
    tAgendaEdat: TIntegerField;
    HYEdit9: THYEdit;
    HYEdit10: THYEdit;
    HYEdit13: THYEdit;
    HYLabel1: THYLabel;
    HYLabel2: THYLabel;
    Label8: TLabel;
    tAgenda_C_TRANSPORT_SANITARI: TSmallintField;
    HYEdit2: THYEdit;
    HYEdit5: THYEdit;
    HYEdit4: THYEdit;
    pProcedencia: TPanel;
    HYEdit14: THYEdit;
    HYLabel3: THYLabel;
    pModalitat: TPanel;
    Eti_tAgenda_Modalitat_N_Codi: THYLabel;
    edModalitat: THYEdit;
    tAgenda_C_Modalitat: TSmallintField;
    tAgenda_C0_0: TIntegerField;
    tAgenda_C0_1: TStringField;
    tAgenda_C0_2: TStringField;
    tAgenda_C0_3: TIntegerField;
    tAgenda_C0_4: TStringField;
    tAgenda_C0_5: TStringField;
    tAgenda_C0_6: TStringField;
    tAgenda_C0_7: TStringField;
    tAgenda_C0_8: TSmallintField;
    tAgenda_C0_9: TSmallintField;
    tAgenda_C0_10: TStringField;
    tAgenda_C0_11: TStringField;
    tAgenda_C0_12: TDateTimeField;
    tAgenda_C0_13: TStringField;
    tAgenda_C0_14: TStringField;
    tAgenda_C0_15: TStringField;
    tAgenda_C0_16: TStringField;
    tAgenda_C0_17: TSmallintField;
    tAgenda_C0_18: TSmallintField;
    tAgenda_C0_19: TStringField;
    tAgenda_C0_20: TStringField;
    tAgenda_C0_21: TStringField;
    tAgenda_C0_22: TStringField;
    tAgenda_C0_23: TStringField;
    tAgenda_C0_24: TSmallintField;
    tAgenda_C0_25: TStringField;
    tAgenda_C0_26: TSmallintField;
    tAgenda_C0_27: TStringField;
    tAgenda_C0_28: TStringField;
    tAgenda_C0_29: TStringField;
    tAgenda_C0_30: TIntegerField;
    tAgenda_C1_0: TStringField;
    tAgenda_C1_1: TStringField;
    tAgenda_C1_2: TStringField;
    tAgenda_C1_3: TStringField;
    tAgenda_C1_4: TSmallintField;
    tAgenda_C1_5: TStringField;
    tAgenda_C1_6: TStringField;
    tAgenda_C1_7: TSmallintField;
    tAgenda_C1_8: TStringField;
    tAgenda_C2_0: TStringField;
    tAgenda_C2_1: TStringField;
    tAgenda_C2_2: TStringField;
    tAgenda_C2_3: TStringField;
    tAgenda_C2_4: TStringField;
    tAgenda_C2_5: TStringField;
    tAgenda_C2_6: TStringField;
    tAgenda_C2_7: TIntegerField;
    tAgenda_C2_8: TStringField;
    tAgenda_C2_9: TStringField;
    tAgenda_C2_10: TSmallintField;
    tAgenda_C2_11: TStringField;
    tAgenda_C2_12: TStringField;
    tAgenda_C2_13: TStringField;
    tAgenda_C2_14: TStringField;
    tAgenda_C2_15: TStringField;
    tAgenda_C2_16: TIntegerField;
    tAgenda_C2_17: TDateTimeField;
    tAgenda_C3_0: TSmallintField;
    tAgenda_C3_1: TStringField;
    tAgenda_C3_2: TSmallintField;
    tAgenda_C3_3: TStringField;
    tAgenda_C3_4: TStringField;
    tAgenda_C3_5: TStringField;
    tAgenda_C4_0: TSmallintField;
    tAgenda_C4_1: TStringField;
    tAgenda_C5_0: TSmallintField;
    tAgenda_C5_1: TStringField;
    tAgenda_C6_0: TSmallintField;
    tAgenda_C6_1: TStringField;
    tAgenda_C7_0: TSmallintField;
    tAgenda_C7_1: TStringField;
    tAgenda_C7_2: TSmallintField;
    tAgenda_C7_3: TStringField;
    tAgenda_C7_4: TStringField;
    tAgenda_C7_5: TStringField;
    tAgenda_C8_0: TStringField;
    tAgenda_C8_1: TStringField;
    tAgenda_C8_2: TStringField;
    tAgenda_C8_3: TStringField;
    tAgenda_C8_4: TSmallintField;
    tAgenda_C9_0: TStringField;
    tAgenda_C10_0: TStringField;
    tAgenda_C10_1: TStringField;
    tAgenda_C11_0: TStringField;
    tAgenda_C11_1: TStringField;
    tAgenda_C12_0: TStringField;
    tAgenda_C12_1: TStringField;
    tAgenda_C12_2: TStringField;
    tAgenda_C13_0: TSmallintField;
    tAgenda_C13_1: TStringField;
    tAgenda_C13_2: TStringField;
    tAgenda_C13_3: TStringField;
    tAgenda_C13_4: TStringField;
    tAgenda_C13_5: TStringField;
    tAgenda_C13_6: TStringField;
    tAgenda_C13_7: TStringField;
    tAgenda_C14_0: TSmallintField;
    tAgenda_C14_1: TStringField;
    tAgenda_C14_2: TSmallintField;
    tAgenda_C14_3: TStringField;
    tAgenda_C14_4: TStringField;
    tAgenda_C14_5: TStringField;
    tAgenda_C15_0: TStringField;
    tAgenda_C15_1: TStringField;
    tAgenda_C15_2: TStringField;
    tAgenda_C15_3: TStringField;
    tAgenda_C15_4: TStringField;
    tAgenda_C15_5: TStringField;
    tAgenda_C16_0: TSmallintField;
    tAgenda_C16_1: TStringField;
    tAgenda_C16_2: TSmallintField;
    tAgenda_C16_3: TStringField;
    tAgenda_C16_4: TStringField;
    tAgenda_C16_5: TStringField;
    tAgenda_C17_0: TSmallintField;
    tAgenda_C17_1: TStringField;
    tAgendaC_TRACTAMENTORIGEN: TIntegerField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bHistoriaClick(Sender: TObject);
    procedure tAgenda_C_PrestacioValidate(Sender: TField);
    procedure tAgenda_C_CoordinadorValidate(Sender: TField);
    procedure tAgendaAlConsultarCampo(Sender: TObject; NombreConsulta: String; var Ejecutada: Boolean; SubFiltro: String);
    procedure HYBarra1AlBorrar(Sender: TObject);
    procedure tAgenda_C_PrestacioChange(Sender: TField);
    procedure CercaHorariLliure(Sender: TObject);
    procedure tAgenda_Data_PreIngresValidate(Sender: TField);
    procedure tAgenda_Hora_PreIngresValidate(Sender: TField);
    procedure HYGrid1AlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Datos: TDataSet);
    procedure tAgendaBeforePost(DataSet: TDataSet);
    procedure tAgendaAfterPost(DataSet: TDataSet);
    procedure tAgendaAfterCancel(DataSet: TDataSet);
    procedure tAgenda_Cognom1Change(Sender: TField);
    procedure tAgendaCalcFields(DataSet: TDataSet);
    procedure eMetgeXKeyPress(Sender: TObject; var Key: Char);
    procedure ePrestaXKeyPress(Sender: TObject; var Key: Char);
    procedure eMetgeXKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ePrestaXKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eMetgeXDblClick(Sender: TObject);
    procedure ePrestaXDblClick(Sender: TObject);
    procedure eMetgeXEnter(Sender: TObject);
    procedure ePrestaXEnter(Sender: TObject);
    procedure ListMetgePrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure inputHistoriaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tAgendaAfterScroll(DataSet: TDataSet);
    procedure inputHistoriaExit(Sender: TObject);
    procedure ePrestaXExit(Sender: TObject);
    procedure HYBarra1AlPost(Sender: TObject);
    procedure bCIPClick(Sender: TObject);
    procedure edCIPChange(Sender: TObject);
    procedure inputHistoriaChange(Sender: TObject);
    procedure HYBarra1AlCancel(Sender: TObject);
    procedure cCFAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure sbCreateModifyPersonClick(Sender: TObject);
  private
    RefrescaAgenda: Boolean;
    lblVisible: Boolean;
    function DatosOk: String;
    procedure PosaMetge(CodiMetge: String);
    procedure VaciarFiltros;
    procedure consultametge;
    procedure consultaPresta;
    procedure PreguntarHistoria(Historia: String = '');
    procedure CarregaPacient(id: Integer);
    procedure setPanelEditable(b: Boolean);
  public
    DOnVinc: TForm;
    inicialitzant: Boolean;
    C_PrestaX : TPrestacio;
    C_MetgeX  : TMetge;
    EsPendent : Boolean;
    DataAntiga: TDateTime;
    c_espera_intern: Integer;
    procedure PosaPresta(CodiPresta: String);
    procedure RefrescaDadesFactu;
    procedure RefrescaDadesFili;
    procedure RecalcularDadesPanelInfo(Fecha: TDate; Metge: String = ''; Prestacio: String = '');
    procedure VerificarMarges; // Mira si el metge pot visitar el dia triat (festius, màxim de visites...) i si l'hora està dins l'horari de visita.
    function  DiaFestivo(Dia: TDateTime): Boolean; // indica si un dia es festivo o si el metge té vacances.
    procedure peticioBeforeExecute(const MethodName: string; var SOAPRequest: WideString);
    procedure peticioAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure OmplirHistoria(c_historia: integer);
    procedure OmplirPacient(person: TPerson);
  end;

var
  wFitxaInclusioConsultaaAgenda: TwFitxaInclusioConsultaaAgenda;


implementation

uses DataAdmisio, Funciones, DialogExcsioEspera, FitxaPendents, Main,
     RCA_Func, RcaDialog, SOAPHTTPClient, utilsSoapFacturacio, FitxaLlistaEspera;

{$R *.DFM}


procedure TwFitxaInclusioConsultaaAgenda.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    CanClose := tAgenda.PuedeCerrar;
end;


procedure TwFitxaInclusioConsultaaAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
    // Al Salir de la ventana, miramos si encontramos alguna ficha de Agenda abierta, y si es asi la refrescamos
    // Només si hem fet canvis!
    if RefrescaAgenda then
    begin
        if LowerCase(DOnVinc.Name) = 'wfitxaagendaprogramacio' then
        begin
          TwFitxaAgendaProgramacio(DOnVinc).PanelLista.RefreshSql;
          TwFitxaAgendaProgramacio(DOnVinc).ActualitzaCalendari;
        end
        else if LowerCase(DOnVinc.Name) = 'wfitxapendents' then
        begin
          TwFitxaPendents(DOnVinc).PanelPendents.RefreshSql;
        end;
        {
        for i:= 0 to screen.formcount - 1 do
        begin
            if LowerCase(screen.forms[i].name) = 'wfitxaagendaprogramacio' then
            begin
               twfitxaagendaprogramacio(screen.forms[i]).panellista.refreshsql;
               twfitxaagendaprogramacio(screen.forms[i]).actualitzacalendari;
            end;

            if LowerCase(screen.forms[i].name) = 'wfitxapendents' then
            begin
               twfitxapendents(screen.forms[i]).panelpendents.refreshsql;
            end;

        end;
        -}
    end;

    if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza); // parte 61974
    Action := caFree;
end;


procedure TwFitxaInclusioConsultaaAgenda.PreguntarHistoria(Historia: String = '');
var
  opcio: Integer;
  idPacient: Integer;
  R_Historia : TFili;
  qAux: TQuery;
begin
    lAvis.Visible := False; LabelCentreFacturacio.Caption := ''; LabelClient.Caption := ''; LabelUM.Caption := '';

    if Historia <> '' then
    begin
       R_Historia.Historia := StrToInt(Historia);
       if nHCE_ON then wDataHCE.BuscaPacient(R_Historia.Historia)
                  else R_Historia := PreguntaFili(Historia, TRUE);
    end
    else
    begin
      R_Historia.Historia := 0;
      ePersonId.EditInterno.Field.Clear;
      EditSexo.EditInterno.Field.Clear;
      edDataNaix.EditInterno.Field.Clear;
      if nHCE_ON then
      begin
          opcio := -1;
          opcio := AvisoListaSinCancel('Tria quin identificador tens del pacient:',['Número d''història clínica',
                                                                                    'Id de persona (usuari APP)',
                                                                                    'Cap dels anteriors'], 0);
          if (opcio < 0) then Abort;
          case opcio of
          0: begin
                 wDataHCE.BuscaPacientAdmissions(c_espera_intern);
                 R_Historia.Historia := 0;
             end;
          1: begin
                 R_Historia.Historia := -2;
                 if not ePersonId.EditInterno.Field.IsNull then idPacient := ePersonId.EditInterno.Field.AsInteger;
                 if InputNumero('Id de persona', 'Entra''l', idPacient, 0, 0, True, True) then ePersonId.EditInterno.Field.AsInteger := idPacient;
             end;
          2: R_Historia.Historia := -1;
          end;
          edtUnitat.ReadOnly := (opcio = 0);
          
          {if not AvisoSN('És un pacient nou (S/N)?')
          then begin
              wDataHCE.BuscaPacientAdmissions(c_espera_intern);                // si el pacient ja existeix, fem consulta de pacients a la nova HCE
              R_Historia.Historia := 0;
          end
          else R_Historia.Historia := -1;   }           // altrament, habilitem camps NOM i COGNOMS, SEXE i DATA DE NAIXEMENT
      end
      else R_Historia := PreguntaFili('', TRUE);
    end;

    if R_Historia.Historia = -2 then
    begin
        tAgenda.FieldbyName('C_Historia').Clear;
        tAgenda.FieldbyName('Nom'       ).Clear;
        tAgenda.FieldbyName('Cognom1'   ).Clear;
        tAgenda.FieldbyName('Cognom2'   ).Clear;
        tAgenda.FieldbyName('Telefon'   ).Clear;
        tAgenda.FieldbyName('C_Unitat'  ).asInteger := 0;
        tAgenda.FieldbyName('sexo'      ).Clear;

        CarregaPacient(idPacient);

        setPanelEditable(False);
    end
    else if R_Historia.Historia <> -1 then
    begin
        setPanelEditable(False);

        inputHistoria.EditValue :=  IntToStr(R_Historia.Historia);
        inputHistoriaChange(inputHistoria);

        tAgenda.FieldbyName('C_Historia').asInteger := R_Historia.Historia;
        inputHistoriaChange(inputHistoria);
        tAgenda.FieldbyName('Nom'       ).asString  := R_Historia.Nom;
        tAgenda.FieldbyName('Cognom1'   ).asString  := R_Historia.Cognom1;
        tAgenda.FieldbyName('Cognom2'   ).asString  := R_Historia.Cognom2;
        tAgenda.FieldbyName('Telefon'   ).asString  := R_Historia.Telefon;
        tAgenda.FieldbyName('C_Unitat'  ).asString  := R_Historia.Unitat;
        tAgenda.FieldbyName('sexo'      ).asString  := R_Historia.Sexe;

        if (R_Historia.Incapacitat = 'S') then
        begin
           qAux := Tquery.Create(Self);
           TRY
             qAux.DatabaseName := 'interna';
             qAux.SQL.Text := 'select INCAPACITAT_TUTOR, INCAPACITAT_TELEFON from FILIACIO where NUM_HIST = ' + IntToStr(R_Historia.Historia);
             qAux.Open;
             lbDadesIncapacitat.Caption := Format('TUTOR: %s. Telèfon: %s',
                                                  [qAux.FieldByName('Incapacitat_Tutor').AsString,
                                                   qAux.FieldByName('Incapacitat_Telefon').AsString]);
             qAux.Close;
           FINALLY
             qAux.Free;
           END;
        end;

        pIncapacitat.Visible := (R_Historia.Incapacitat = 'S');
    end
    else begin
        inputHistoria.EditValue := '';
        inputHistoriaChange(inputHistoria);

        tAgenda.FieldbyName('C_Historia').Clear;
        inputHistoriaChange(inputHistoria);
        tAgenda.FieldbyName('Nom'       ).Clear;
        tAgenda.FieldbyName('Cognom1'   ).Clear;
        tAgenda.FieldbyName('Cognom2'   ).Clear;
        tAgenda.FieldbyName('Telefon'   ).Clear;
        tAgenda.FieldbyName('C_Unitat'  ).asInteger := 0;
        tAgenda.FieldbyName('sexo'      ).Clear;

        setPanelEditable(True);
    end;

    {if (tAgenda.FieldbyName('C_Historia').AsString <> '')
    then edtUnitat.ReadOnly := False
    else edtUnitat.ReadOnly := (tAgenda.FieldbyName('C_Unitat').AsInteger <> 0);}
end;


procedure TwFitxaInclusioConsultaaAgenda.bHistoriaClick(Sender: TObject);
begin
   if (tAgenda.State in [dsInsert]) or tAgenda.FieldByName('C_Historia').IsNull then PreguntarHistoria;
end;


procedure TwFitxaInclusioConsultaaAgenda.RecalcularDadesPanelInfo(Fecha: TDate; Metge: String = ''; Prestacio: String = '');
begin
    qPanelInfo.Close;

    qPanelInfo.SqlDic[5] := Format('where DATA_PREINGRES >= "%s" ', [FechaIB(Fecha)]);
    qPanelInfo.SqlDic[6] := Format('and   DATA_PREINGRES <= "%s" ', [FechaIB(Fecha)]);

    if EsPle(Metge) then qPanelInfo.SqlDic[7] := Format('and   C_COORDINADOR = "%s" ', [Metge])
                    else qPanelInfo.SqlDic[7] := '';

    qPanelInfo.Open;
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgenda_C_PrestacioValidate(Sender: TField);
begin
    RecalcularDadesPanelInfo(tAgenda.FieldByName('Data_Preingres').AsDateTime,
                             tAgenda.FieldByName('C_Coordinador').AsString,
                             tAgenda.FieldByName('C_Prestacio').AsString);
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgenda_C_CoordinadorValidate(Sender: TField);
begin
    RecalcularDadesPanelInfo(tAgenda.FieldByName('Data_Preingres').AsDateTime,
                             tAgenda.FieldByName('C_Coordinador').AsString,
                             tAgenda.FieldByName('C_Prestacio').AsString);
end;



procedure TwFitxaInclusioConsultaaAgenda.tAgendaAlConsultarCampo(Sender: TObject; NombreConsulta: String; var Ejecutada: Boolean; SubFiltro: String);
begin
    if (NombreConsulta = 'Fili') then
    begin
        Ejecutada := False;
        bHistoria.click;
    end
    else if (NombreConsulta = 'llocs') then
    begin
        if (tAgenda.FieldByName('C_Prestacio').AsString = '') then
        begin
            Ejecutada := False;
            edLloc.EditInterno.Text := '';
            FerError('Introduïu primer la prestació');
            ePrestaX.SetFocus;
        end;
    end
    else if (NombreConsulta = 'CentreFac') then
    begin
        Ejecutada := False;
        cCF.ExecuteModal();
    end;
end;


function TwFitxaInclusioConsultaaAgenda.DatosOk: String;
begin
     if (tAgenda.FieldbyName('Data_PreIngres').AsDateTime = 0)
     then Result := tAgenda.FieldbyName('Data_PreIngres').FieldName;

     if EsVuit(tAgenda.FieldbyName('C_Coordinador').asString)
     then Result := tAgenda.FieldbyName('C_Coordinador').FieldName;

     if EsVuit(tAgenda.FieldbyName('C_Prestacio').asString)
     then Result := tAgenda.FieldbyName('C_Prestacio').FieldName;

     if pMotiu.Visible and (tAgenda.FieldbyName('C_Motiu').AsInteger = 0)
     then Result := tAgenda.FieldbyName('C_Motiu').FieldName;

     if pModalitat.Visible and (tAgenda.FieldbyName('C_Modalitat').AsInteger = 0)
     then Result := tAgenda.FieldbyName('C_Modalitat').FieldName;

     if pProcedencia.Visible and (tAgenda.FieldbyName('C_Procedencia').AsInteger = 0)
     then Result := tAgenda.FieldbyName('C_Procedencia').FieldName;

     if (tAgenda.FieldbyName('C_Unitat').AsInteger = 0)
     then Result := tAgenda.FieldbyName('C_Unitat').FieldName;
end;


procedure TwFitxaInclusioConsultaaAgenda.HYBarra1AlBorrar(Sender: TObject);
var
  Dialogo : TwDialogExclusioEspera;
begin
    // BACLOFÈN - no deixem treure un registre de pendents si té c_om informada
    if not tAgenda.FieldByName('C_OM').IsNull then FerError('Programació pendent lligada a ordre mèdica. No es permet anul·lar.',True);

    Dialogo := nil;
    try
      With TwDialogExclusioEspera.Create(Dialogo) do
      begin
         tEspera.Open('','');
         tEspera.Findkey( varArrayOf([tAgenda.fieldbyName('C_Espera').AsString]) );
         tEspera.Edit;
         Mensaje.Caption := StringReplace( Mensaje.Caption, '%', ' la Programació d''Agenda ',[]);
         Mensaje.Caption := StringReplace( '¿ '+Mensaje.Caption, '@', '['+
                                   tAgenda.FieldbyName('C_Espera').AsString+'] -'+
                                   tAgenda.fieldbyName('NomComplet' ).AsString +' ?',[]);
         ShowModal;
      end;
    finally
      Dialogo.Free;
      qPanelInfo.Refresh;
    end;

    RefrescaAgenda := True;     
end;

procedure TwFitxaInclusioConsultaaAgenda.VerificarMarges;
var
  H,M: String;
  Hora_Desde, Hora_Hasta, Hora : TTime;
  ResDia, ResHora, Dia: Integer;

  function aHora(HoraString: String): TTime;
  begin
      Result := StrToTime(copy(HoraString, 0,2)+':'+copy(HoraString, 4,Length(HoraString)));
  end;

  Function ComprobarMaxVisites:Boolean;
  var
    MaxVisites, visites: Integer;
  begin
    Result := True;
    // Mirar si el Metge per Prestació introduits te un nombre máxim de visites Introduït
    try
      MaxVisites := SelectSQL(wData.Projecte.DataBaseName, 'Select max_Visites from METGEPRESTA where codi = "'+tAgenda.FieldbyName('C_Coordinador').asString+'" and c_prestacio ="'+tAgenda.FieldbyName('C_Prestacio').asString+'"');
    except
      MaxVisites := 0;
    end;

    if MaxVisites <> 0 then
    begin
      //Mirem cuantes visites te assignades el metge en aquest dia
      Visites := SelectSQLfmt(wData.Projecte.DataBaseName,
      'Select count(*) from ESPERA where Data_Preingres = "%s" and C_Coordinador = "%s" and c_Prestacio ="%s" and (C_Estat Between 30 And 39) and Exclos = "N"',
      [FechaIB(tAgenda.FieldbyName('Data_Preingres').asDateTime),
      tAgenda.FieldbyName('C_Coordinador').asString,
      tAgenda.FieldbyName('C_Prestacio').asString]);

      //Si ja te oplertes les visites Assignades...
      if Visites >= MaxVisites then
      begin
        lblEstat.Caption := Avis41;
        lblVisible := True;
        lblEstat.Visible := True;
        Result := False;
      end;
    end;
  end;

begin
    lblEstat.Caption := '';
    ResHora := 0;

    lblVisible := False;

    // Si el metge o la prestacio estan buits sortim
    if not (EsPle(tAgenda.FieldbyName('C_Coordinador').asString) and EsPle(tAgenda.FieldbyName('C_Prestacio').asString)) then Exit;

    // Si es un dia festiu sortim
    if DiaFestivo(tAgenda.FieldbyName('Data_PreIngres').asDateTime) then Exit;


    if EsPle(tAgenda.FieldbyName('Data_PreIngres').asString) then
    begin

        Dia := DiaDelaSemana(tAgenda.FieldByName('Data_Preingres').AsDateTime);
        H   := CopyLeft(tAgenda.FieldByName('hora_preingres').AsString, 2);
        M   := CopyRight(tAgenda.FieldByName('hora_preingres').AsString, 2);

        // Mirem que el Metge Visiti a la Data_Preingres establerta.
        ResDia :=  GutSelect('select COUNT(*) from P_TRACTAMENTS_DIASVISITABLES("%s", "%s") where dia = %d',
                             [tAgenda.FieldByName('C_Coordinador').AsString,
                              tAgenda.FieldByName('C_Prestacio'  ).AsString,
                              Dia]);

        if (ResDia <> 0) then
        begin
            // Mirem que la prestacio que estem intentar introduir no tingui ja el seu nombre maxim de visites introduides.
            if not ComprobarMaxVisites then Exit;                                                                            

            if qHoraris.Active then qHoraris.Close;

            if EsPle(tAgenda.FieldbyName('Data_PreIngres').asString) then qHoraris.Filter := 'Dia = '+ IntToStr(Dia)
                                                                     else qHoraris.Filter := ' ';
            qHoraris.Filtered := True;
            qHoraris.Sql[1] := 'where C_METGE = "' + tAgenda.FieldbyName('C_Coordinador').asString + '"';
            qHoraris.Open;

            // Mirem que la Hora_Preingres establerta entri dins de l'horari del Metge.
            qHoraris.First;
            while not qHoraris.Eof do
            begin
                Hora_Desde := StrToTime(qHoraris.FieldbyName('HDESDE').asString+':'+qHoraris.FieldbyName('MDESDE').asString);
                Hora_Hasta := StrToTime(qHoraris.FieldbyName('HHASTA').asString+':'+qHoraris.FieldbyName('MHASTA').asString);

                Hora := aHora(tAgenda.FieldbyName('Hora_PreIngres').asString);

                if ((Hora >= Hora_Desde) and (Hora <= Hora_Hasta)) then ResHora := 1;

                qHoraris.Next;
            end;

            qHoraris.Filtered := False;
            qHoraris.Close;

            if (ResHora <> 0) then
            begin
                lblEstat.Caption := '';
                lblVisible := False;
            end
            else begin
                lblEstat.Caption := Avis34;
                lblVisible := True;
            end;
        end
        else begin
            lblEstat.Caption := Avis33;
            lblVisible := True;
        end;
    end
    else begin
        lblEstat.Caption := '';
        lblVisible := False;
    end;

    lblEstat.Visible := lblVisible;
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgenda_C_PrestacioChange(Sender: TField);
begin
    if Sender.FieldName = 'C_Coordinador'  then
    begin
      if (tAgenda.FieldByName('C_Coordinador').AsString = '') then labelmetge.Font.Color := clRed
                                                              else labelmetge.Font.Color := clBlack;
    end;

    if Sender.FieldName = 'C_Prestacio'  then
    begin
      if (tAgenda.FieldByName('C_Prestacio').AsString = '') then labelpresta.font.color := clRed
      else begin
          labelpresta.font.color := clBlack;
          tAgenda.FieldByName('C_Motiu').AsInteger := 0;
          tAgenda.FieldByName('C_Modalitat').Clear;
          tAgenda.FieldByName('C_Procedencia').AsInteger := 0;

          pMotiu.Visible := PrestaTeCodiCamps(tAgenda.FieldByName('C_Prestacio').AsString, 'MOTIU');
          pModalitat.Visible := PrestaTeCodiCamps(tAgenda.FieldByName('C_Prestacio').AsString, 'ATENCIO.MODALITAT');
          pProcedencia.Visible := PrestaTeCodiCamps(tAgenda.FieldByName('C_Prestacio').AsString, 'ORIGEN');

          // No podem modificar el motiu de tractaments pre-programats (F8) en la inserció del tractament
          edMotiu.Enabled := tAgenda.FieldByName('C_TractamentOrigen').AsInteger = 0;
          edMotiu.Ctl3D := edMotiu.Enabled;
      end;
    end;

    VerificarMarges;
end;


function TwFitxaInclusioConsultaaAgenda.DiaFestivo(Dia:TDateTime):Boolean;
begin
    // Mirem caps de setmana
    Result := (DiaDeLaSemana(Dia) = 6) or (DiaDeLaSemana(Dia) = 7);

    if Result then
    begin
        lblVisible := True;
        lblEstat.Caption := AVIS36;
    end
    else begin
        // Mirem dies festius
        Result := SelectSQL(wData.Projecte.DataBaseName, 'Select count(*) from Festius Where Data = "'+FechaIB(Dia)+'"') <> 0;

        // Mirem vacances
        if not Result then
        begin
            if esPle(tAgenda.FieldbyName('C_Coordinador').asString) then
            begin
                Result := SelectSQL(wData.Projecte.DataBaseName, 'Select count(*) from Calendari_AM Where Tipus="V" and C_Metge = "'+tAgenda.FieldbyName('C_Coordinador').asString+'" and Dia = "'+FechaIB(Dia)+'"') <> 0;

                if Result then
                begin
                    lblVisible := True;
                    lblEstat.Caption := AVIS36;
                end;
            end;
        end
        else begin
            lblVisible := True;
            lblEstat.Caption := AVIS37;
        end;
    end;
    lblEstat.Visible := lblVisible;
end;


procedure TwFitxaInclusioConsultaaAgenda.CercaHorariLliure(Sender: TObject);
var
  HoraaAsignar : TTime;
  DuracioPrestacioActiva: Integer;
  ResDia,H,M: Integer;
  sqlText: String;

  Procedure LineaError(Error:String);
  begin
    lblVisible := True;
    lblEstat.Caption := Error;
  end;

  function MetgeiPrestacioIntroduits:Boolean;
  begin
    Result := True;
    // Miraem que el Metge i la Prestació estiguin introduïts.
    // Si no ho estan, avisarem i no continuem, ja que sense aquestes dades no podem calcular l'horari.
    if tAgenda.FieldbyName('C_Coordinador').isNull then
    begin
        LineaError(Avis38);
        if tAgenda.FieldbyName('C_Prestacio').isNull then    LineaError(Avis39);
        Result := False;
    end
    else begin
      if tAgenda.FieldbyName('C_Prestacio').isNull then
      begin
        LineaError(Avis40);
        Result := False;
      end
    end;
  end;

  function SumaMinutosaunaHora(H1:TTime; Minutos:Integer):TTime; //Dada una hora le sumamos x minutos.
  var
    h, m ,s, ms: Word;
    Horas: Integer;
  begin
    DecodeTime(H1, h, m, s, ms);

    Inc(m, Minutos);
    Horas := trunc(m / 60);
    Inc(h, horas);
    m := m - (Horas * 60);

    Result := EncodeTime(h,m,s,ms);
  end;

  Function BuscarHoraLliure( Hora_Inici, Hora_Fi: TDateTime ):TTime;
  var
    GuardoValor, TmpHoraaAssignar: TTime;
  begin
    GuardoValor := 0;
    Result := 0;

    // Agafem les hores que ja te assignades el metge per anar recorrent-las i trobar un forat entre elles o al final.
    qHores.Sql[2] := Format(' AND E.C_COORDINADOR = "%s"'    , [tAgenda.FieldbyName('C_Coordinador' ).asString]);
    qHores.Sql[1] := Format(' WHERE E.DATA_PREINGRES  = "%s"', [FechaIB(tAgenda.FieldbyName('Data_PreIngres').asDateTime)]);
    qHores.Sql[5] := Format(' AND E.HORA_PREINGRES >= "%s"'  , [FormatDateTime('hh:mm',Hora_Inici)]);

    qHores.Open;
    qHores.First;

    TmpHoraaAssignar := Hora_Inici;

    // Si no hi han visites la hora a Assingar será la hora d'inici del rang de dades.
    if ( (qHores.Bof) and (qHores.Eof) ) then
    begin
      Result := Hora_Inici;
      exit;
    end
    else begin

      // Fem el recorregut per les hores.
      while ( ( not qHores.Eof ) and ( Result = 0 ) ) do
      begin
         if (TmpHoraaAssignar = qHores.FieldByName('Hora_Preingres').asDateTime) then
         begin  // Si es igual es que ja existeis, incrementem la hora de búsqueda amb al duració de la prestacio y seguim mirant..
            TmpHoraaAssignar := SumaMinutosaunaHora( TmpHoraaAssignar, qHores.FieldByName('Minuts').asInteger);
         end
         else
         begin
           if (TmpHoraaAssignar < qHores.FieldByName('Hora_Preingres').asDateTime) then
           begin // mirem si cap entre aquesta i la seguent hora.

              guardoValor := TmpHoraaAssignar;

              TmpHoraaAssignar := SumaMinutosaunaHora( TmpHoraaAssignar, DuracioPrestacioActiva);
              if TmpHoraaAssignar <= qHores.FieldByName('Hora_Preingres').asDateTime then
              begin
                 Result := guardoValor;
              end // sino como ya he incrementado TmpHoraaAsignar sigue por la siguiente que le tocaria.
              else begin
                TmpHoraaAssignar := SumaMinutosaunaHora(qHores.FieldByName('Hora_Preingres').asDateTime, qHores.FieldByName('Minuts').asInteger);
                guardoValor := 0;
              end;
           end
           else begin // si és major, igualem el valor al de la BD per seguir buscant.
              TmpHoraaAssignar := SumaMinutosaunaHora( qHores.FieldByName('Hora_Preingres').asDateTime, qHores.FieldByName('Minuts').asInteger);
           end;
         end;
         qHores.Next;
      end;

      if (FormatDateTime('hh:mm', guardoValor) <> '00:00') then Result := GuardoValor
                                                           else Result := TmpHoraaAssignar;

      if (Result > Hora_Fi) then Result := 0;
    end;
  end;
begin
    // Si el dia a buscar es festiu (festa, vacances o cap de setmana) no seguim buscant i donem l'error
    if DiaFestivo(tAgenda.FieldbyName('Data_PreIngres').asDateTime) then
    begin
      LblEstat.Visible := True;
      Exit;
    end;

    // Si no hi ha metge o prestació, sortim
    if not MetgeiPrestacioIntroduits then Exit;

    H := StrToInt(CopyLeft(tAgenda.fieldbyName('hora_preingres').AsString,2));
    M := StrToInt(CopyRight(tAgenda.fieldbyName('hora_preingres').asString,2));
    sqlText:=Format('Select count(*) from P_TRACTAMENTS_DIASVISITABLES("%s","%s") where dia = %d ROWS 1',  // PARTE 48156
                    [tAgenda.FieldbyName('C_Coordinador').asString,tAgenda.FieldbyName('c_Prestacio').asString,
                     DiaDelaSemana(tAgenda.FieldbyName('Data_Preingres').asDateTime)]);

    // Mirem que el metge visiti a la data indicada.
    ResDia :=  SelectSQL(wData.Projecte.DataBaseName, sqltext);

    if (ResDia = 0) then Exit;

    // aquesta query ens dóna tots els horaris d'un determinat dia del metge i prestació indicats
    qBucleHoraris.Close; // parte 48156: si no es tanca la query no refresca resultats!!!
    qBucleHoraris.ParambyName('Metge'    ).asString  := tAgenda.FieldbyName('C_Coordinador').asString;
    qBucleHoraris.ParambyName('Prestacio').asString  := tAgenda.FieldbyName('C_Prestacio'  ).asString;
    qBucleHoraris.ParambyName('Dia'      ).asInteger := DiadelaSemana(tAgenda.FieldbyName('Data_PreIngres').asDateTime);
    qBucleHoraris.Open;
    qBucleHoraris.First;

    // Si no hi ha horaris donem error
    if qBucleHoraris.Eof and qBucleHoraris.Bof then  LineaError('Error: el metge no té horaris assignats per aquest dia i prestació.');

    // Ens guardem la durada de la prestació que volem insertar
    DuracioPrestacioActiva := SelectSQLfmt(wData.Projecte.DataBaseName,
                                           'Select Minuts from MetgePresta where C_Prestacio = "%s" and Codi = "%s" ',
                                           [tAgenda.FieldbyName('C_Prestacio'  ).asString,
                                            tAgenda.FieldbyName('C_Coordinador').asString]);

    // Busquem una hora lliure.
    HoraAAsignar := 0;  // inicialitzem l'hora a un valor absurd per assegurar-nos que canvia.
    while ((not qBucleHoraris.Eof) and (HoraaAsignar = 0)) do
    begin
       HoraaAsignar := BuscarHoraLliure(qBucleHoraris.FieldbyName('HoraInici').asDateTime, qBucleHoraris.FieldbyName('HoraFi').asDateTime);
       tAgenda.FieldbyName('Hora_Preingres').asString := FormatDateTime('hh:mm', HoraaAsignar);
       qBucleHoraris.next;
    end;

    if (HoraaAsignar = 0) then LineaError(Avis43);

    lblEstat.Visible := lblVisible;
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgenda_Data_PreIngresValidate(Sender: TField);
begin
    if ((tAgenda.EstabaInsertando) and
        (
             (tAgenda.FieldbyName('Data_PreIngres').asDateTime < DateServer) // que no pueda ser la fecha menor que hoy cuando se inserta.
          or (DiaFestivo(tAgenda.FieldbyName('Data_PreIngres').asDateTime))  // que no se puedan insertar en fines de Semana ni festivos.
        )
       ) then
    begin
      Abort;
    end;

    RecalcularDadesPanelInfo(tAgenda.FieldByName('Data_Preingres').AsDateTime,
                             tAgenda.FieldByName('C_Coordinador').AsString,
                             tAgenda.FieldByName('C_Prestacio').AsString);

    VerificarMarges;
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgenda_Hora_PreIngresValidate(Sender: TField);
begin
    VerificarMarges;
end;


procedure TwFitxaInclusioConsultaaAgenda.HYGrid1AlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                                             State: TGridDrawState; Datos: TDataSet);
begin
    //  Si el row que estamos pintando es el mismo que estamos editando entonces lo pintamos de un
    //  color diferente para situarnos mejor en la linea de tiempo.

    if Datos.Fieldbyname('C_Espera').asString = tAgenda.FieldbyName('C_Espera').asString then
    begin
      ColorFont  := clWhite;
      ColorBrush := clBlue;
    end;

    if gdSelected in State then
    begin
      colorBrush := clNavy;
      colorFont  := clYellow;
    end;
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgendaBeforePost(DataSet: TDataSet);
var
  CampoRequeridoVacio: String;
  Hora: TTime;
  DTRevi: TDateTime;
begin
    // Si inclouen o modifiquen una revisió (també les no presencials), mirem si ha vingut a revisió fa menys d'un any
    if (not tAgenda.FieldByName('c_historia').IsNull)
    and TeDretPresta(tAgenda.FieldByName('c_prestacio').AsString, [193]) then
    begin
        DTRevi := GutSelect('select T.DATA_INGRES from TRACTAMENTS T ' +
                           'join DRETSPRESTA D on T.C_PRESTACIO = D.C_PRESTACIO and D.C_DRET = "P193" ' +
                           'where T.C_HISTORIA = %d '+
                           'and (T.DATA_INGRES >= "%s" - 365) ' +
                           'order by T.DATA_INGRES desc ',
                           [tAgenda.FieldByName('c_historia').AsInteger,
                            FormatDateTime('dd.mm.yyyy', tAgenda.FieldByName('data_preingres').AsDateTime)]);
        if (DTRevi > 0)
        and not AvisoSN(Format('Aquest pacient va venir a revisió fa menys d''un any ("%s"). ' + NLine +
                               'Voleu continuar?',
                               [FormatDateTime('dd/mm/yyyy', DTRevi)]))
        then Abort;

        // Si l'inclouen, també mirem si en té alguna altra de programada
        if (tAgenda.State = dsInsert) then
        begin
            DTRevi := GutSelect('select E.DATA_PREINGRES from ESPERA E ' +
                                'join DRETSPRESTA D on E.C_PRESTACIO = D.C_PRESTACIO and D.C_DRET = "P193" ' +
                                'where E.C_HISTORIA = %d and E.DATA_PREINGRES >= "TODAY" and E.EXCLOS = "N" and E.C_ESTAT = 30 ' +
                                'order by E.DATA_PREINGRES desc',
                                [tAgenda.FieldByName('c_historia').AsInteger]);

            if (DTRevi > 0)
            and not AvisoSN(Format('Aquest pacient té una revisió programada pel dia "%s". ' + NLine +
                                   'Voleu continuar?',
                                   [FormatDateTime('dd/mm/yyyy', DTRevi)]))
            then Abort;
        end;
    end;

    // Si inclouen una visita amb dret P192, mirem si en té alguna altra de programada amb el mateix professional
    if  (tAgenda.State = dsInsert)
    and (not tAgenda.FieldByName('c_historia').IsNull)
    and TeDretPresta(tAgenda.FieldByName('c_prestacio').AsString, [192]) then
    begin
        DTRevi := GutSelect('select E.DATA_PREINGRES from ESPERA E ' +
                            'join DRETSPRESTA D on E.C_PRESTACIO = D.C_PRESTACIO and D.C_DRET = "P192" ' +
                            'where E.C_HISTORIA = %d and E.DATA_PREINGRES >= "TODAY" and E.C_COORDINADOR = "%s" and E.EXCLOS = "N" and E.C_ESTAT = 30 ' +
                            'order by E.DATA_PREINGRES desc',
                            [tAgenda.FieldByName('c_historia').AsInteger,
                             tAgenda.FieldByName('C_Coordinador').AsString]);

        if (DTRevi > 0)
        and not AvisoSN(Format('Aquest pacient té una visita programada ' + NLine +
                               'pel dia "%s" amb el mateix professional. ' + NLine +
                               'Voleu continuar?',
                               [FormatDateTime('dd/mm/yyyy', DTRevi)]))
        then Abort;
    end;


    Hora := StrToTime('00:00');

    if DiaFestivo(tAgenda.FieldbyName('Data_PreIngres').asDateTime) then
    begin
      beep;
      Abort;
    end;

    //Mirem que el pacient no tingui ja una hora programada a l'agenda en aquest dia.
    if EsPle( tAgenda.fieldbyName('C_Historia').asString ) then
    begin
        if DataSet.State in [dsInsert] then
        begin
          if (0 <> GutSelect('Select count(*) from ESPERA where c_historia = "%s" and Data_Preingres = "%s" and C_Estat BETWEEN 30 AND 39 AND EXCLOS = "N"',
                             [tAgenda.fieldbyName('C_Historia').asString, FechaIB(tAgenda.fieldbyName('Data_PreIngres').asDateTime)]))
          then if not AvisoSN('EL PACIENT JA TÉ UNA VISITA PROGRAMADA AQUEST DIA,'+NLINE+' VOLEU AFEGIR-LO IGUALMENT?') then Abort;
        end;
    end;

    HYMemo1.SetFocus;
    try
      Hora := strToTime(FormatDateTime('hh:mm',tAgenda.FieldbyName('Hora_PreIngres').asDateTime));
    except
      Hora_PreIngres.SetFocus;
      FerError(ERROR32, True);
    end;

    if Hora = StrToTime('00:00') then FerError(ERROR33, True);

    CampoRequeridoVacio := DatosOk;

    if EsVuit(CampoRequeridoVacio) then
    begin

      if tAgenda.State in [dsInsert] then
      begin
         tAgenda.FieldbyName('C_Estat').asInteger := 30;
      end;
    end
    else FerError(Format(ERROR31, [UpperCase(CampoRequeridoVacio)]), True);

    // octubre 2020: Guardem l'usuari d'última modificació del registre (fins ara només es guardava si ho feia un assistencial G57)
    tAgenda.FieldByName('Metge_Programa').AsString := wData.UsuariActiu.Codi;
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgendaAfterPost(DataSet: TDataSet);
begin
    if (wMain.LastTraza = 0)
    then wMain.LastTraza := wData.ObraTrazaControl(tAgenda.FieldbyName('C_historia').asInteger,
                                                   Self.Name,
                                                   wMain.Aplica,
                                                   tAgenda.FieldbyName('C_Espera').asInteger);
    wMain.AddStatusTraza('ï');

    // Si era un pendent, li canvien l'estat de pendent a agenda
    if esPendent then  GutExecute('update ESPERA set C_ESTAT = 30 where C_ESPERA = %d', [tAgenda.FieldbyName('C_Espera').AsInteger]);

    RefrescaAgenda := True;
    Close;
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgendaAfterCancel(DataSet: TDataSet);
begin
  Close;
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgenda_Cognom1Change(Sender: TField);
begin
     if EsBuit(tAgenda.Fieldbyname('Cognom1').asString) then EditCognom1.EtiFontColor := clRed
                                                        else EditCognom1.EtiFontColor := clBlack;
end;

// Desenenllaço això perquè es crida 50.000 vegades, total, per pintar una merda
procedure TwFitxaInclusioConsultaaAgenda.tAgendaCalcFields(DataSet: TDataSet);
begin
//   tAgenda_C_PrestacioChange(tAgenda.FieldbyName('C_Coordinador'));
//   tAgenda_C_PrestacioChange(tAgenda.FieldbyName('C_Prestacio'  ));
   if not DataSet.FieldByName('DATA_NAIX').IsNull then DataSet.FieldByName('Edat').AsInteger := Truncar((DateServer - DataSet.FieldByName('DATA_NAIX').AsDateTime)/365)
                                                  else DataSet.FieldByName('Edat').Clear;
end;


procedure TwFitxaInclusioConsultaaAgenda.PosaPresta(CodiPresta: String);
var
 CodiPrestaFacturacio: String;
begin
     if  (tAgenda.State in [dsInsert]) and TeDretPresta(CodiPresta, [256])
     then if not TeDretUsuari(wData.UsuariActiu.Codi, 'M315,G254')
          then FerError('La inclusió d''aquesta prestació s''ha de fer a la Nova HCE',True);

     if (CodiPresta = '') then
     begin
          ClearPresta(C_PrestaX);
          tAgenda.FieldbyName('C_Prestacio').Clear;

          ePrestaX.Text := '';
     end
     else begin
          C_PrestaX := BuscaPresta(CodiPresta);
          if EsBuit(C_PrestaX.C_Prestacio) then
          begin
             Beep;
             tAgenda.FieldbyName('C_Prestacio').Clear;
          end
          else begin
             ePrestaX.Text := C_PrestaX.C_Prestacio + ' - '+C_PrestaX.N_Prestacio;
             tAgenda.FieldbyName('C_Prestacio').asString := C_PrestaX.C_Prestacio;
             EdtUnitat.SetFocus;
          end;
     end;

     // Si cal introduir el motiu, mirem d'automatitzar-lo o el demanem
     if pMotiu.Visible and (tAgenda.FieldbyName('C_Motiu').AsInteger = 0) then tAgenda.ConsultaCampo('Motiu', '', True, True, '');

     // Si cal introduir la modalitat, mirem d'automatitzar-la o la demanem
     if pModalitat.Visible and (tAgenda.FieldbyName('C_Modalitat').AsInteger = 0) then tAgenda.ConsultaCampo('Modalitat', '', True, True, '');

     // Si cal introduir la procedència, mirem d'automatitzar-la o la demanem
     if pProcedencia.Visible then tAgenda.ConsultaCampo('Origen', '', True, True, '');
   { Hem definit a PrestaCodiCamps que les visites successives tinguin només Origen 10. Així s'automatitza però no poden seleccionar-ne d'altres.
     Si algun dia afegim origens a les successives pq puguin triar, podem recuperar això pq s'automatitzi el 10
     begin
         if not TeDretPresta(CodiPresta, [258]) then tAgenda.FieldByName('C_Procedencia').AsInteger := 10    // P258 = 1a visita hospital
                                                else Agenda.ConsultaCampo('Origen', '', True, True, '');
     end}
end;


procedure TwFitxaInclusioConsultaaAgenda.PosaMetge(CodiMetge: String);
var
  Res: Integer;
begin
    if (CodiMetge = '') then
    begin
        ClearMetge(C_MetgeX);
        tAgenda.FieldbyName('C_Coordinador').clear;
        eMetgeX.Text := '';
    end
    else begin
        if EsBaixa(CodiMetge) then
        begin
            ClearMetge(C_MetgeX);
            tAgenda.FieldbyName('C_Coordinador').clear;
            eMetgeX.Text := '';
            FerError(ERRORMETGEBAIXA , True);
        end;

        C_MetgeX := BuscaMetge(CodiMetge);
        if (C_MetgeX.Codi = '') then
        begin
            Beep;
            tAgenda.FieldbyName('C_Coordinador').Clear;
        end
        else begin
            eMetgeX.Text := C_MetgeX.Codi + ' - '+C_MetgeX.Desc;
            tAgenda.FieldbyName('C_Coordinador').asString := C_MetgeX.Codi;
            ePrestaX.SetFocus;
        end;
    end;
end;


procedure TwFitxaInclusioConsultaaAgenda.eMetgeXKeyPress(Sender: TObject; var Key: Char);
var
  cuantos: Integer;
begin
     if Key=#13 then
     begin
          Key := #0;

          // El texte es codi o nom, codi=3 caracters, nom > 3 caracters
          if Length(eMetgeX.Text) = 3 then PosaMetge(eMetgeX.Text)
          else
          if Length(eMetgeX.Text) < 3 then Beep
          else
          if Length(eMetgeX.Text) > 3 then
          begin

             Cuantos := SelectSQL(wData.Projecte.DataBaseName, 'SELECT COUNT( DISTINCT C_METGE ) FROM P_METGEPRESTA_LIST WHERE UPPER(N_METGE) LIKE UPPER("%'+eMetgeX.Text+'%")');
             if cuantos = 0 then beep;

             if cuantos = 1 then
             begin
                C_MetgeX     := BuscaMetge( SelectSQL(wData.Projecte.DataBaseName, 'SELECT C_METGE FROM P_METGEPRESTA_LIST WHERE UPPER(N_METGE) LIKE UPPER("%'+eMetgeX.Text+'%") GROUP BY C_METGE'));
                eMetgeX.Text := C_MetgeX.Codi + ' - ' + C_MetgeX.Desc;
                tAgenda.FieldbyName('c_Coordinador').asString := C_MetgeX.Codi;
                ePrestaX.SetFocus;
             end;

             if cuantos >1 then
             begin
                ListMetgePresta.Filtros[1].CondiActual := 3;
                ListMetgePresta.Filtros[1].Valor1 := eMetgeX.Text;
                ListMetgePresta.ExecuteModal;
                ePrestaX.SetFocus;
             end;
          end;
     end;

     if Key=#27 then
     begin
          Key := #0;
          PosaMetge('');
     end;
end;


procedure TwFitxaInclusioConsultaaAgenda.VaciarFiltros;
begin

   ListMetgePresta.filtros[0].Valor1 := '';
   ListMetgePresta.filtros[1].Valor1 := '';
   ListMetgePresta.filtros[2].Valor1 := '';
   ListMetgePresta.filtros[3].Valor1 := '';

end;


procedure TwFitxaInclusioConsultaaAgenda.ePrestaXKeyPress(Sender: TObject;
  var Key: Char);
var
  cuantos: Integer;
begin
     if Key=#13 then
     begin
          Key := #0;
          // El texte es codi o nom, codi=3 caracters, nom > 3 caracters
          if Length(ePrestaX.Text)=4 then PosaPresta(ePrestaX.Text);
          if Length(ePrestaX.Text)<4 then Beep;
          if Length(ePrestaX.Text)>4 then
          begin
             VaciarFiltros;

             cuantos := SelectSQL(wData.Projecte.DataBaseName, 'SELECT COUNT( DISTINCT C_PRESTACIO ) FROM P_METGEPRESTA_LIST WHERE UPPER(N_PRESTACIO) LIKE UPPER("%'+ePrestaX.Text+'%")');

             if cuantos = 0 then beep;

             if cuantos = 1 then
             begin
                C_PrestaX     := BuscaPresta ( SelectSQL(wData.Projecte.DataBaseName, 'SELECT C_PRESTACIO FROM P_METGEPRESTA_LIST WHERE UPPER(N_PRESTACIO) LIKE UPPER("%'+ePrestaX.Text+'%") GROUP BY C_PRESTACIO'));
                ePrestaX.Text := C_PrestaX.C_Prestacio + ' - ' + C_PrestaX.N_Prestacio;
                tAgenda.FieldbyName('C_Prestacio').asString := C_PrestaX.C_Prestacio;
                edtUnitat.SetFocus;
             end;

             if cuantos >1 then
             begin
                ListMetgePresta.Filtros[3].CondiActual := 3;
                ListMetgePresta.Filtros[3].Valor1 := ePrestaX.Text;
                ListMetgePresta.ExecuteModal;
             end;
          end;
     end;

     if Key=#27 then
     begin
          Key := #0;
          PosaPresta('');
     end;
end;


procedure TwFitxaInclusioConsultaaAgenda.consultaPresta;
begin
    VaciarFiltros;
    ListMetgePresta.SqlDic[1] := 'C_Prestacio, N_Prestacio, C_Metge, N_Metge, N_Especial';
    if C_MetgeX.Codi<>'' then
    begin
         ListMetgePresta.Filtros[1].CondiActual:= 1;
         ListMetgePresta.Filtros[1].Valor1:= C_MetgeX.Codi;
    end;
    ListMetgePresta.ExecuteModal('','');
end;


procedure TwFitxaInclusioConsultaaAgenda.consultametge;
begin
    VaciarFiltros;
    ListMetgePresta.SqlDic[1] := 'C_Metge, N_Metge, C_Prestacio, N_Prestacio, N_Especial';
    if C_PrestaX.C_Prestacio<>'' then
    begin
         ListMetgePresta.Filtros[3].CondiActual:= 1;
         ListMetgePresta.Filtros[3].Valor1:= C_PrestaX.C_Prestacio;
    end;
    ListMetgePresta.ExecuteModal('','');
end;


procedure TwFitxaInclusioConsultaaAgenda.eMetgeXKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = vk_F3 Then
    begin
        ConsultaMetge;
    end;
end;


procedure TwFitxaInclusioConsultaaAgenda.ePrestaXKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = vk_F3 Then
    begin
        ConsultaPresta;
    end;
end;


procedure TwFitxaInclusioConsultaaAgenda.eMetgeXDblClick(Sender: TObject);
begin
    ConsultaMetge;
end;


procedure TwFitxaInclusioConsultaaAgenda.ePrestaXDblClick(Sender: TObject);
begin
    ConsultaPresta;
end;


procedure TwFitxaInclusioConsultaaAgenda.eMetgeXEnter(Sender: TObject);
begin
   eMetgeX.SelectAll;
end;


procedure TwFitxaInclusioConsultaaAgenda.ePrestaXEnter(Sender: TObject);
begin
    ePrestaX.SelectAll;
end;

procedure TwFitxaInclusioConsultaaAgenda.RefrescaDadesFili;
var
 q: TQuery;
begin
   q := TQuery.Create(Application);
   q.DatabaseName := wData.Gdb.DatabaseName;
   q.SQL.Text := 'select u.n_unitatm from filiacio f                    '+
                 'join unitatm u on f.c_unitatmedica = u.c_unitatm '+
                 'where f.num_hist = '+tAgenda.FieldByName('c_historia').AsString;
   q.Open;
   if q.FieldByName('n_unitatm').IsNull or (q.FieldByName('n_unitatm').AsString = '')
   then LabelUM.Caption := tAgenda.FieldByName('Unitat_N_Codi').AsString
   else LabelUM.Caption := q.FieldByName('n_unitatm').AsString;
end;

procedure TwFitxaInclusioConsultaaAgenda.RefrescaDadesFactu;
var
  CF, lCF, CL, lCL, sexo: String;
  q, qF: TQuery;
  RIO: THTTPRIO;
  motiu: TMemo;
  resultat_rca: String;
  mode, garant, moros: String;
begin

    eCentreFac.Enabled := TeDretUsuari(wData.UsuariActiu.Codi, 'M252,G203');

//-    if (wData.UsuariActiu.Grup = 'AB') then
    if TeDretPresta(tAgenda.FieldByName('C_Prestacio').AsString, [254]) then
    begin
        if CF = '' then  // si ja s'ha informat no matxacar el que hi ha
        begin
            CF  := '00';
            lCF := 'PRIVAT';
            CL  := '';
            lCL := '';
        end;
    end
    else begin
      // 19.3.2015: Si volen incloure 2004 i CENTREFAC='02'-TRANSIT, donar avís: "TRÀNSIT NO COBREIX REVISIONS!!"
      // Busquem a FILI_DADESFAC si hi ha registre. En cas afirmatiu, aquest serà el CENTREFAC de la 2004
      q := TQuery.Create(Application);
      q.DatabaseName := wData.Gdb.DatabaseName;
      q.SQL.Text := 'select F.C_CENTREFAC, C.N_CENTREFAC, F.C_CLIENT, CL.N_CLIENT from FILI_DADESFAC F          ' +
                    'left outer join CENTREFAC C on F.C_CENTREFAC = C.C_CENTREFAC                               ' +
                    'left outer join CLIENTS  CL on F.C_CENTREFAC = CL.C_CENTREFAC and F.C_CLIENT = CL.C_CLIENT ' +
                    'where F.C_HISTORIA = ' + tAgenda.FieldByName('c_historia').AsString;
      q.Open;

      CF := ''; lCF := ''; CL := ''; lCL := '';
      if not q.Eof then
      begin
          CF  := q.FieldByName('C_CENTREFAC').AsString;
          lCF := q.FieldByName('N_CENTREFAC').AsString;
          CL  := q.FieldByName('C_CLIENT'   ).AsString;
          lCL := q.FieldByName('N_CLIENT'   ).AsString;
      end
      else begin
          // Altrament, busquem el CENTREFAC de l'últim tractament no privat facturable (idem que TwFitxaFiliacio.CopiarDadesFactu)
          q.Close;
          q.SQL.Text := 'select T.C_CENTREFAC, C.N_CENTREFAC, T.C_CLIENT, CL.N_CLIENT from TRACTAMENTS T             ' +
                        'left outer join PRESTACION P on P.C_PRESTACIO = T.C_PRESTACIO                               ' +
                        'left outer join CENTREFAC  C on T.C_CENTREFAC = C.C_CENTREFAC                               ' +
                        'left outer join CLIENTS   CL on T.C_CENTREFAC = CL.C_CENTREFAC and T.C_CLIENT = CL.C_CLIENT ' +
                        'where T.C_HISTORIA = ' + tAgenda.FieldByName('c_historia').AsString + 'and P.FACTURAR = "S" and P.ESEASE = "N" '+
                        'order by T.DATA_INGRES desc';
          q.Open;
          if not q.Eof then
          begin
              CF  := q.FieldByName('C_CENTREFAC').AsString;
              lCF := q.FieldByName('N_CENTREFAC').AsString;
              CL  := q.FieldByName('C_CLIENT'   ).AsString;
              lCL := q.FieldByName('N_CLIENT'   ).AsString;
          end;
      end;
      q.Close; q.Free;
    end;

    LabelCentreFacturacio.Caption := {CF + ' - ' +} lCF;
    eCentreFac.Ctl3D := eCentreFac.Enabled;
    eCentreFac.EditInterno.Field.Value := CF;
    LabelClient.Caption := CL + ' - ' + lCL;

    lAvis.Visible := False;
    if (CF = '02') and (tAgenda.FieldByName('c_prestacio').AsString = '2004') then  // Trànsit no cobreix revisions
    begin
        lAvis.Visible := True;
        lAvis.Caption := 'TRÀNSIT NO COBREIX REVISIONS';
    end
    else if (CF = '00') or (CF = '50') or (CF = '') then                            // Privats morosos
    begin
        // Mirem si el pacient és morós (aquí no tenim garant)
        if wData.ES_PROVA then mode := 'PRE'  // Desactivo comprovació de morós a PROVES pq no va
        else begin
            mode := 'PRO';
            garant := '';

            moros := miramoroso(tAgenda.FieldByName('C_Historia').AsString, garant, mode);
            if (moros = 'S') then ShowMessage('AQUEST PACIENT ÉS MORÓS')
                             else if (moros = 'E') then ShowMessage('No s''ha pogut determinar si aquest pacient és morós.');
        end;
    end
    {-
    else if (CF = '00') then                                                        // Privats impagats
    begin
        qF := TQuery.Create(Application);
        qF.DatabaseName := wData.Gdb.DatabaseName;
        qF.SQL.Text := 'select IMPAGAT from FILIACIO where NUM_HIST = ' + tAgenda.FieldByName('c_historia').AsString;
        qF.Open;

        if (not qF.FieldByName('IMPAGAT').IsNull) and (qF.FieldByName('IMPAGAT').AsString = 'S') then
        begin
            lAvis.Visible := True;
            lAvis.Caption := 'PACIENT PRIVAT IMPAGAT';
        end;

        qF.Close; qF.Free;
    end
    -}
    else if (CF = '04') and (CL = 'UP') then                                        // mirem nivell de cobertura a l'RCA
    begin
        if not RCAOK then
        begin
            lAvis.Caption := 'RCA KO. ' + NLine + 'Comproveu el nivell de cobertura del pacient a la web de l''RCA.';
            lAvis.Visible := True;
        end
        else begin
          WaitOn('CONSULTANT DADES A L''RCA . . . ');
          TRY
            RIO := THTTPRIO.Create(nil);
            RIO.OnBeforeExecute := peticioBeforeExecute;
            RIO.OnAfterExecute := peticioAfterExecute;

            Dades.Close;
            Dades.Open;
            Dades.DisableControls;

            if      tAgenda.FieldbyName('sexo').asString = 'H' then sexo := '0'
            else if tAgenda.FieldbyName('sexo').asString = 'D' then sexo := '1';

            qF := TQuery.Create(Application);
            qF.DatabaseName := wData.Gdb.DatabaseName;
            qF.SQL.Text := 'select TSI, FECHA_NAC from FILIACIO where NUM_HIST = ' + tAgenda.FieldByName('c_historia').AsString;
            qF.Open;

            // Consultem dades a l'RCA (Capturo la "sortida" d'aquestes funcions per avisar si no podem connectar per RCA)
            if (qF.FieldByName('tsi').AsString <> '')
            then resultat_rca := RCA_consulta_per_cip(qF.FieldByName('tsi').AsString, Dades, RIO)
            else resultat_rca := RCA_consulta_per_dades(tAgenda.FieldByName('nom').AsString, tAgenda.FieldByName('cognom1').AsString,
                                                        tAgenda.FieldByName('cognom2').AsString, qF.FieldByName('fecha_nac').AsString,
                                                        sexo, '', '', '', '', Dades, RIO);
            if StartingWith(resultat_rca, 'RCA KO') 
            then ShowMessage('No es pot accedir a l''RCA. Comproveu nivell de cobertura del pacient.');

            Dades.EnableControls;
            Dades.First;
            qF.Close; qF.Free;

            if  (not Dades.FieldByName('DFC_CCP').IsNull) and (Dades.FieldByName('DFC_CCP').AsString<>'')
            and (Dades.FieldByName('DFC_CCP').AsInteger<>1)             // nivell de cobertura
            and (Dades.FieldByName('DFC_CCP').AsInteger<>3)
            and (Dades.FieldByName('DFC_CCP').AsInteger<>4)
            and (Dades.FieldByName('DFC_CCP').AsInteger<>214)
            then begin
                if TeDretGrup(wData.UsuariActiu.Grup, [57])
                then lAvis.Caption := 'Aquesta visita NO ES PODRÀ FACTURAR ja que aquest pacient NO TÉ COBERTURA segons l''RCA del CatSalut.'
                else lAvis.Caption := 'PACIENT SENSE COBERTURA SCS (nivell de cobertura a l''RCA: ' + Dades.FieldByName('DFC_CCP').AsString + ')';
                lAvis.Visible := True;
            end;
          FINALLY
            WaitOff;
          END;
        end;
    end;
end;


procedure TwFitxaInclusioConsultaaAgenda.ListMetgePrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    PosaMetge(Datos.FieldbyName('C_Metge').AsString);
    PosaPresta(Datos.FieldbyName('C_Prestacio').AsString);
    lAvis.Visible := False; LabelCentreFacturacio.Caption := ''; LabelClient.Caption := ''; LabelUM.Caption := '';

    if  (not tAgenda.FieldByName('c_historia').IsNull) then RefrescaDadesFactu;
{- ja es crida en refrescadadesfactu
    // Trànsit no cobreix revisions:
    if  (not tAgenda.FieldByName('c_historia').IsNull)
    and (tAGenda.FieldByName('C_CentreFac').AsString = '02')
    and (tAgenda.FieldByName('C_Prestacio').AsString = '2004') then
    begin
        lAvis.Visible := True;
        lAvis.Caption := 'TRÀNSIT NO COBREIX REVISIONS';
    end;
-}
end;



procedure TwFitxaInclusioConsultaaAgenda.inputHistoriaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if (tAgenda.state in [dsInsert]) and (Key = vk_Return) then PreguntarHistoria(inputHistoria.EditValue);
end;


procedure TwFitxaInclusioConsultaaAgenda.tAgendaAfterScroll(DataSet: TDataSet);
begin
    inputHistoria.EditValue := DataSet.FieldbyName('C_Historia').asString;
end;


procedure TwFitxaInclusioConsultaaAgenda.inputHistoriaExit(Sender: TObject);
begin
    if esPle(tAgenda.FieldbyName('C_Historia').asString) then
    begin
        setPanelEditable(False);
        edtUnitat.SetFocus;
    end;
end;


procedure TwFitxaInclusioConsultaaAgenda.ePrestaXExit(Sender: TObject);
begin
    lAvis.Visible := False; LabelCentreFacturacio.Caption := ''; LabelClient.Caption := ''; LabelUM.Caption := '';
{- ja es fa en seleccionar presta/metge
    // Trànsit no cobreix revisions:
    if  (not tAgenda.FieldByName('c_historia').IsNull)
    and (tAgenda.FieldByName('C_CentreFac').AsString = '02')
    and (tAgenda.FieldByName('C_Prestacio').AsString = '2004') then
    begin
        lAvis.Visible := True;
        lAvis.Caption := 'TRÀNSIT NO COBREIX REVISIONS';
    end;
-}
end;

procedure TwFitxaInclusioConsultaaAgenda.peticioAfterExecute(const MethodName: string; SOAPResponse: TStream);
var
  sl : TStringList;
begin
  sl := TStringList.Create;
  try
    SOAPResponse.Position := 0;
    sl.LoadFromStream(SOAPResponse);    // Load the response into a stringlist so we can work on it.
    sl.SaveToFile(C_TEMPORAL + '\ultim_retornat_rca.xml');

    // Now write out edits back out to the stream.
    SOAPResponse.Position := 0;            // Now overwrite the crappy response with our good one.
    SOAPResponse.size := length(sl.Text);  // Important - set new length before saving.  Otherwise, the old
    sl.SaveToStream(SOAPResponse);         // leftover crud is still there, at the end, and the XML will blow up on it.
    SOAPResponse.Position := 0;

  finally
    FreeAndNil(sl);
  end;
end;

procedure TwFitxaInclusioConsultaaAgenda.peticioBeforeExecute(const MethodName: string; var SOAPRequest: WideString);
var
 tmp: TStringList;
begin
  tmp := TStringList.Create;
  try
    tmp.text := SOAPRequest;
//    tmp.Text := Replace('<?xml version="1.0"?>','<?xml version="1.0" encoding="UTF-8"?>', tmp.Text);
//    tmp.Text := Replace('<CENTRE',    '<NS1:CENTRE',    tmp.Text); tmp.Text := Replace('/CENTRE',    '/NS1:CENTRE',    tmp.Text);
    tmp.Text := Replace('Ñ','&#209;',tmp.Text);  tmp.Text := Replace('ñ','&#241;',tmp.Text);    
    tmp.SaveToFile(C_TEMPORAL + '\ultim_generat_rca.xml');
    SOAPRequest := tmp.text;
  finally
    tmp.Free;
  end;
end;


procedure TwFitxaInclusioConsultaaAgenda.HYBarra1AlPost(Sender: TObject);
var
 IdCNPT: Integer;
 qCNPT: TQuery;
begin
    inputHistoria.SetFocus;
    if tAgenda.State in [dsInsert] then
    begin
        tAgendaBeforePost(tAgenda);  // Fem el BeforePost

        qInsEspera.ParamByName('c_espera').AsInteger:=Gen_ID(wData.Projecte.DataBaseName, 'CONTALLISTAESPERA', 1);
        if tAgenda.FieldByName('c_historia').IsNull     then qInsEspera.ParamByName('C_HISTORIA').Clear
                                                        else qInsEspera.ParamByName('C_HISTORIA').AsInteger:=tAgenda.FieldByName('c_historia').AsInteger;
        if tAgenda.FieldByName('c_prestacio').IsNull    then FerError('PRESTACIÓ obligatòria',True)
                                                        else qInsEspera.ParamByName('c_prestacio').AsString:=tAgenda.FieldByName('c_prestacio').AsString;

        qInsEspera.ParamByName('data_inclusio').AsDateTime := tAgenda.FieldByName('data_inclusio').AsDateTime;
        qInsEspera.ParamByName('metge_programa').AsString  := tAgenda.FieldByName('metge_programa').AsString;
        qInsEspera.ParamByName('c_estat').AsInteger        := tAgenda.FieldByName('c_estat').AsInteger;

        if tAgenda.FieldByName('data_preingres').IsNull then qInsEspera.ParamByName('data_preingres').Clear
                                                        else qInsEspera.ParamByName('data_preingres').AsDateTime:=tAgenda.FieldByName('data_preingres').AsDateTime;
        if tAgenda.FieldByName('hora_preingres').IsNull then qInsEspera.ParamByName('hora_preingres').Clear
                                                        else qInsEspera.ParamByName('hora_preingres').AsString:=tAgenda.FieldByName('hora_preingres').AsString;
        if tAgenda.FieldByName('nom').IsNull            then qInsEspera.ParamByName('nom').Clear
                                                        else qInsEspera.ParamByName('nom').AsString:=tAgenda.FieldByName('nom').AsString;
        if tAgenda.FieldByName('cognom1').IsNull        then FerError('COGNOM obligatori',True)
                                                        else qInsEspera.ParamByName('cognom1').AsString:=tAgenda.FieldByName('cognom1').AsString;
        if tAgenda.FieldByName('cognom2').IsNull        then qInsEspera.ParamByName('cognom2').Clear
                                                        else qInsEspera.ParamByName('cognom2').AsString:=tAgenda.FieldByName('cognom2').AsString;
        if tAgenda.FieldByName('telefon').IsNull        then qInsEspera.ParamByName('telefon').Clear
                                                        else qInsEspera.ParamByName('telefon').AsString:=tAgenda.FieldByName('telefon').AsString;
        if tAgenda.FieldByName('lloc').IsNull           then qInsEspera.ParamByName('lloc').Clear
                                                        else qInsEspera.ParamByName('lloc').AsString:=tAgenda.FieldByName('lloc').AsString;
        if tAgenda.FieldByName('sexo').IsNull           then qInsEspera.ParamByName('sexo').Clear
                                                        else qInsEspera.ParamByName('sexo').AsString:=tAgenda.FieldByName('sexo').AsString;
        if tAgenda.FieldByName('c_caracter').IsNull     then qInsEspera.ParamByName('c_caracter').AsInteger:=0
                                                        else qInsEspera.ParamByName('c_caracter').AsInteger:=tAgenda.FieldByName('c_caracter').AsInteger;
        if tAgenda.FieldByName('exclos').IsNull         then qInsEspera.ParamByName('exclos').AsString:='N'
                                                        else qInsEspera.ParamByName('exclos').AsString:=tAgenda.FieldByName('exclos').AsString;
        if tAgenda.FieldByName('c_unitat').IsNull       then qInsEspera.ParamByName('c_unitat').Clear
                                                        else qInsEspera.ParamByName('c_unitat').AsInteger:=tAgenda.FieldByName('c_unitat').AsInteger;
        if tAgenda.FieldByName('c_motiu').IsNull        then qInsEspera.ParamByName('c_motiu').AsInteger:=0
                                                        else qInsEspera.ParamByName('c_motiu').AsInteger:=tAgenda.FieldByName('c_motiu').AsInteger;
        if tAgenda.FieldByName('c_modalitat').IsNull    then qInsEspera.ParamByName('c_modalitat').Clear
                                                        else qInsEspera.ParamByName('c_modalitat').AsInteger:=tAgenda.FieldByName('c_modalitat').AsInteger;
        if tAgenda.FieldByName('c_procedencia').IsNull  then qInsEspera.ParamByName('c_procedencia').AsInteger:=0
                                                        else qInsEspera.ParamByName('c_procedencia').AsInteger:=tAgenda.FieldByName('c_procedencia').AsInteger;
        if tAgenda.FieldByName('datafixe').IsNull       then qInsEspera.ParamByName('datafixe').Clear
                                                        else qInsEspera.ParamByName('datafixe').AsDateTime:=tAgenda.FieldByName('datafixe').AsDateTime;
        if tAgenda.FieldByName('comentari').IsNull      then qInsEspera.ParamByName('comentari').Clear
                                                        else qInsEspera.ParamByName('comentari').AsString:=tAgenda.FieldByName('comentari').AsString;
        if tAgenda.FieldByName('c_coordinador').IsNull  then FerError('METGE COORDINADOR obligatori',True)
                                                        else qInsEspera.ParamByName('c_coordinador').AsString:=tAgenda.FieldByName('c_coordinador').AsString;
        if tAgenda.FieldByName('Data_Naix').IsNull      then qInsEspera.ParamByName('data_naix').Clear
                                                        else qInsEspera.ParamByName('data_naix').AsDateTime := tAgenda.FieldByName('data_naix').AsDateTime;
        if tAgenda.FieldByName('CIP').IsNull            then qInsEspera.ParamByName('cip').Clear
                                                        else qInsEspera.ParamByName('cip').AsString := tAgenda.FieldByName('CIP').AsString;
        if tAgenda.FieldByName('HCE_PERSON_ID').IsNull  then qInsEspera.ParamByName('HCE_PERSON_ID').Clear
                                                        else qInsEspera.ParamByName('HCE_PERSON_ID').AsInteger := tAgenda.FieldByName('HCE_PERSON_ID').AsInteger;


        // CONTROL NPT: si agefeixen una 2124 s'ha d'afegir també el corresponent controlnpt si el pacient té una 2024 activa
        if (tAgenda.FieldByName('c_prestacio').AsString='2124') then
        begin
            qCNPT := TQuery.Create(Application);
            qCNPT.DatabaseName := wData.Gdb.DatabaseName;
            qCNPT.SQL.Text := Format('SELECT C_TRACTAMENT, T_SESSIO FROM TRACTAMENTS WHERE C_HISTORIA=%d AND C_PRESTACIO="2024" '+
                                     'AND DATA_INGRES<="TODAY" AND (DATA_ALTA IS NULL OR DATA_ALTA>="TODAY")                    ', [tAgenda.FieldbyName('C_Historia').AsInteger]);
            qCNPT.Open;
            if (not qCNPT.Eof) then
            begin
                qInsEspera.ParamByName('C_TractamentOrigen').AsInteger := qCNPT.FieldByName('C_TRACTAMENT').AsInteger;
                qInsEspera.ParamByName('T_Sessio'          ).AsInteger := qCNPT.FieldByName('T_SESSIO'    ).AsInteger;
            end
            else begin
                qInsEspera.ParamByName('C_TractamentOrigen').Clear;
                qInsEspera.ParamByName('T_Sessio'          ).Clear;
            end;
        end;

        TRY
          qInsEspera.ExecSQL;

          // Fem l'AfterPost
          if (wMain.LastTraza = 0)
          then wMain.LastTraza := wData.ObraTrazaControl(qInsEspera.ParamByName('C_historia').asInteger,
                                                         Self.Name,
                                                         wMain.Aplica,
                                                         qInsEspera.ParamByName('C_Espera').asInteger);
          wMain.AddStatusTraza('ï');

          // Si era un pendent, li canvien l'estat de pendent a agendat
          if esPendent then  GutExecute('update ESPERA set C_ESTAT = 30 where C_ESPERA = %d', [qInsEspera.ParamByName('C_Espera').AsInteger]);

          // CONTROL NPT: si agefeixen una 2124 s'ha d'afegir també el corresponent controlnpt si el pacient té una 2024 activa
          if (tAgenda.FieldByName('c_prestacio').AsString='2124') and (not qCNPT.Eof) then
          begin
              GutExecute('INSERT INTO CONTROLNPT(ID, C_HISTORIA, C_TRACTAMENT, DATA, TIPUS)'+
                         '                VALUES(%d,         %d,           %d, "%s",    -1)',
                         [Gen_ID(wData.Projecte.DataBaseName,'G_CONTROLNPT', 1),tAgenda.FieldByName('C_HISTORIA').AsInteger,
                          qCNPT.FieldByName('C_TRACTAMENT').AsInteger, FormatDateTime('dd.mm.yyyy',tAgenda.FieldByName('data_preingres').AsDateTime)]);
              qCNPT.Close;
              qCNPT.Free;
          end;

          RefrescaAgenda := True;
          tAgenda.Cancel; // això fa el Close;
        EXCEPT
          //raise Exception.Create('Error al assignar Notes de Cobraments');
          on e: Exception do ShowMessage('Error en incloure a la llista d''espera.' + NLine +
                                         'C_ESPERA: ' + qInsEspera.ParamByName('c_espera').AsString + NLine + e.Message);
        END;
    end
    else begin
        tAgenda.Post;

        // CONTROL NPT: si modifiquen una agenda s'ha de modificar també el corresponent controlnpt si hi és
        if (tAgenda.FieldByName('c_prestacio').AsString='2124') then
        begin
            IdCNPT := GutSelect('SELECT C.ID FROM CONTROLNPT C JOIN TRACTAMENTS T ON C.C_TRACTAMENT=T.C_TRACTAMENT '+
                                'WHERE T.C_HISTORIA=%d AND T.C_PRESTACIO="2024" AND C.DATA="%s"                    ',
                                [tAgenda.FieldbyName('C_Historia').AsInteger, FormatDateTime('dd.mm.yyyy',DataAntiga)]);

            if IdCNPT > 0 then GutExecute('UPDATE CONTROLNPT SET DATA="%s" WHERE ID=%d',[FormatDateTime('dd.mm.yyyy',tAgenda.FieldByName('data_preingres').AsDateTime), IdCNPT]);
        end;
    end;
end;

procedure TwFitxaInclusioConsultaaAgenda.bCIPClick(Sender: TObject);
var
  RIO: THTTPRIO;
  log: String;
  trobats: Integer;
begin
    if tAgenda.RequestLive then
    begin
        edCIP.SetFocus;
        if (tAgenda.FieldByName('sexo').AsString = '') then
        begin
            FerError('Cal informar el sexe del pacient');
            EditSexo.SetFocus;
            Exit;
        end;
        if tAgenda.FieldByName('Data_Naix').IsNull then
        begin
            FerError('Cal informar la data de naixement del pacient');
            edDataNaix.SetFocus;
            Exit;
        end;

        RIO := THTTPRIO.Create(nil);
        RIO.OnBeforeExecute := peticioBeforeExecute;
        RIO.OnAfterExecute := peticioAfterExecute;

        Dades.Close;
        Dades.Open;
        Dades.DisableControls;

        log := RCA_consulta_per_dades(tAgenda.FieldByName('nom').AsString,
                                           tAgenda.FieldByName('cognom1').AsString,
                                           tAgenda.FieldByName('cognom2').AsString,
                                           tAgenda.FieldByName('Data_Naix').AsString,
                                           BoolToStr(tAgenda.FieldByName('sexo').AsString = 'D', '1', '0'),
                                           '', '', '', '', Dades, RIO);

        Dades.EnableControls;
        Dades.First;

        TRY
          trobats := StrToInt(Trim(Replace('Trobat/s', '', log)));
        EXCEPT
          trobats := 0;
        END;

        if (trobats = 0) then
        begin
            ShowMessage('No trobat a l''RCA');
            Exit;
        end;

        if not tAgenda.EstaEditando then tAgenda.Edit;

        if (trobats = 1) then tAgenda.FieldByName('CIP').AsString := Dades.FieldByName('DFC_CIP_V').AsString

        else if (trobats > 1) then
        begin
            ShowMessage('S''han trobat ' + IntToStr(trobats) + ' registres coincidents a l''RCA. ' + NLine +
                        'Haureu de completar el CIP manualment. ');

            tAgenda.FieldByName('CIP').AsString := CopyLeft(Dades.FieldByName('DFC_CIP_V').AsString, 10);

            edCIP.EtiFontColor := clRed;
        end;

        edCIP.SetFocus;
    end;
end;

procedure TwFitxaInclusioConsultaaAgenda.edCIPChange(Sender: TObject);
begin
    if (Length(edCIP.EditInterno.EditText) = 0)
    or (Length(edCIP.EditInterno.EditText) = 14) then edCIP.EtiFontColor := clBlue
                                                 else edCIP.EtiFontColor := clRed;
end;

procedure TwFitxaInclusioConsultaaAgenda.inputHistoriaChange(Sender: TObject);
begin
//- ja es crida en seleccionar presta/metge
//-   if (tAgenda.State in [dsEdit, dsInsert]) and (not tAgenda.FieldByName('c_historia').IsNull) then RefrescaDadesFactu;

    if (not tAgenda.FieldByName('c_historia').IsNull)
    then RefrescaDadesFili
    else LabelUM.Caption := tAgenda.FieldByName('Unitat_N_Codi').AsString;
end;

procedure TwFitxaInclusioConsultaaAgenda.HYBarra1AlCancel(Sender: TObject);
begin
  RefrescaAgenda := False;
  tAgenda.Cancel;
end;

procedure TwFitxaInclusioConsultaaAgenda.cCFAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    eCentreFac.EditInterno.Field.Value := Datos.FieldByName('C_CENTREFAC').AsString;
    LabelCentreFacturacio.Caption      := Datos.FieldByName('N_CENTREFAC').AsString;
end;

procedure TwFitxaInclusioConsultaaAgenda.FormCreate(Sender: TObject);
begin
    c_espera_intern := StrToInt(FormatDateTime('hhnnsszzz',now))*-1;
    sbCreateModifyPerson.Enabled := nHCE_ON;
end;


procedure TwFitxaInclusioConsultaaAgenda.OmplirHistoria(c_historia: integer);
begin
    inputHistoria.AsInteger := c_historia;
    tAgenda.FieldbyName('C_Historia').AsInteger := c_historia;
    tAgenda_Nom.AsString := tAgenda.FieldByName('Fili_NOMBRE').AsString;
    tAgenda_Cognom1.AsString := tAgenda.Fieldbyname('Fili_APELLIDO1').AsString;
    tAgenda_Cognom2.AsString := tAgenda.Fieldbyname('Fili_APELLIDO2').AsString;
    tAgenda_Telefon.AsString := tAgenda.FieldByName('Fili_TELEFONO').AsString;
    tAgenda_C_Unitat.AsString := tAgenda.FieldByName('Fili_UNITAT').AsString;
    tAgenda_Sexo.AsString := tAgenda.FieldByName('Fili_SEXO').AsString;
    inputHistoriaChange(inputHistoria);
    inputHistoriaExit(nil);
end;


procedure TwFitxaInclusioConsultaaAgenda.CarregaPacient(id: Integer);
var
 HttpPersonResponse: THttpResponsePerson;
begin
  if id <> 0 then HttpPersonResponse := wDataHCE.CridaRestCarregarPersonaNovaHCE(id)
             else FerError('És obligatori informar el id de persona per poder-ne consultar les dades a la nova HCE.', True);

  if      HttpPersonResponse.OK = '-1' then FerError(HttpPersonResponse.Error)
  else if HttpPersonResponse.OK = '-2' then ShowMessage(HttpPersonResponse.Error)
  else begin
      tAgenda.FieldByName('C_Historia').AsString := HttpPersonResponse.Person.NHC;
      inputHistoria.AsString                  := HttpPersonResponse.Person.NHC;
      inputHistoriaChange(inputHistoria);

      if (HttpPersonResponse.Person.Nom = '') then tAgenda.FieldByName('Nom').Clear
                                              else tAgenda.FieldByName('Nom').AsString := UpperCase(HttpPersonResponse.Person.Nom);

      if (HttpPersonResponse.Person.Cognom1 = '') then tAgenda.FieldByName('Cognom1').Clear
                                                  else tAgenda.FieldByName('Cognom1').AsString := UpperCase(HttpPersonResponse.Person.Cognom1);

      if (HttpPersonResponse.Person.Cognom2 = '') then tAgenda.FieldByName('Cognom2').Clear
                                                  else tAgenda.FieldByName('Cognom2').AsString := UpperCase(HttpPersonResponse.Person.Cognom2);

      if (HttpPersonResponse.Person.Telefon = '') then tAgenda.FieldByName('Telefon').Clear
                                                  else tAgenda.FieldByName('Telefon').AsString := HttpPersonResponse.Person.Telefon;

      if (HttpPersonResponse.Person.Genere = '') then tAgenda.FieldByName('Sexo').Clear
                                                 else tAgenda.FieldByName('Sexo').AsString := HttpPersonResponse.Person.Genere;

      if (HttpPersonResponse.Person.Data_Naixement = '') then tAgenda.FieldByName('Data_Naix').Clear
                                                         else tAgenda.FieldByName('Data_Naix').AsString := HttpPersonResponse.Person.Data_Naixement;
  end;
end;


procedure TwFitxaInclusioConsultaaAgenda.sbCreateModifyPersonClick(
  Sender: TObject);
begin
  if wData.ES_PROVA then c_espera_intern := -1234567;  // proves amb insomnia

  tAgenda.FieldbyName('C_Historia').Clear;
  tAgenda.FieldbyName('Nom'       ).Clear;
  tAgenda.FieldbyName('Cognom1'   ).Clear;
  tAgenda.FieldbyName('Cognom2'   ).Clear;
  tAgenda.FieldbyName('Telefon'   ).Clear;
  tAgenda.FieldbyName('C_Unitat'  ).asInteger := 0;
  tAgenda.FieldbyName('sexo'      ).Clear;

  setPanelEditable(False);
  edtUnitat.ReadOnly := True;
  LabelUM.Caption    := '';

  if ePersonId.EditInterno.Field.IsNull or (ePersonId.EditInterno.Field.Value='0')
  then wDataHCE.CrearPersonaEspera(c_espera_intern)
//                                        else wDataHCE.EditarPersona(ePersonId.EditInterno.Field.Value);
  else begin
      c_espera_intern := ePersonId.EditInterno.Field.Value;
      wDataHCE.EditarPersona(c_espera_intern);
  end;
end;

procedure TwFitxaInclusioConsultaaAgenda.OmplirPacient(person: TPerson);
begin
  inputHistoria.AsString := '';
  inputHistoriaChange(inputHistoria);  

  ePersonId.EditInterno.Field.Value := person.id;

  if person.Nom = '' then
  begin
      HYEdit6.EditInterno.Field.Clear;
      HYEdit3.EditInterno.Field.Clear;
  end
  else begin
      HYEdit6.EditInterno.Field.Value     := UpperCase(person.Nom);
      HYEdit3.EditInterno.Field.Value     := UpperCase(person.Nom);
  end;
  if person.Cognom1 = '' then
  begin
      EditCognom1.EditInterno.Field.Clear;
      HYEdit7.EditInterno.Field.Clear;
  end
  else begin
      EditCognom1.EditInterno.Field.Value := UpperCase(person.Cognom1);
      HYEdit7.EditInterno.Field.Value     := UpperCase(person.Cognom1);
  end;
  if person.Cognom2 = '' then
  begin
      HYEdit11.EditInterno.Field.Clear;
      HYEdit8.EditInterno.Field.Clear;
  end
  else begin
      HYEdit11.EditInterno.Field.Value    := UpperCase(person.Cognom2);
      HYEdit8.EditInterno.Field.Value     := UpperCase(person.Cognom2);
  end;
  if person.Telefon = '' then
  begin
      HYEdit12.EditInterno.Field.Clear;
      HYEdit1.EditInterno.Field.Clear;
  end
  else begin
      HYEdit12.EditInterno.Field.Value    := person.Telefon;
      HYEdit1.EditInterno.Field.Value     := person.Telefon;
  end;
  if person.Genere = '' then EditSexo.EditInterno.Field.Clear
                        else EditSexo.EditInterno.Field.Value := person.Genere;

  if person.Data_Naixement = '' then edDataNaix.EditInterno.Field.Clear
                                else edDataNaix.EditInterno.Field.Value := person.Data_Naixement;

  if person.Unitat = '' then edtUnitat.EditInterno.Field.Clear
                        else edtUnitat.EditInterno.Field.Value := person.Unitat;
end;

procedure TwFitxaInclusioConsultaaAgenda.setPanelEditable(b: Boolean);
begin
  PanelEditable.Visible := b;
  PanelEditable.Enabled := b;
  PanelCIP.Visible      := b;
  PanelReadOnly.Visible := not b;
  PanelReadOnly.Enabled := not b;
end;



end.

