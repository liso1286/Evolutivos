unit FitxaInformes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, IBCustomDataSet, IBQuery, HYPanels,
  HYSql, ExtCtrls, Grids, DBGrids, StdCtrls, HYDialogConsulta, DBCtrls,
  ComCtrls, DBTables, HYLabel, HYEdit, HYGrids, IBSQL, Buttons;

type
  TwFitxaInformes = class(TForm)
    bInformes: THYSqlBrowse;
    bInformes_C_Historia: TIntegerField;
    bInformes_C_Usuari: TStringField;
    bInformes_Solicitant: TStringField;
    bInformes_C_Entrega: TSmallintField;
    bInformes_Urgent: TStringField;
    bInformes_C_Estat: TSmallintField;
    bInformes_Comentari: TStringField;
    dsBusca: TDataSource;
    dsInformes: TDataSource;
    qBusca: TIBQuery;
    bInformes_ID_Informe: TIntegerField;
    bInformes_C_Tipus: TStringField;
    bInformes_Parentiu: TStringField;
    bInformes_T_DOC: TStringField;
    bInformes_NUM_DOC: TStringField;
    bInformes_Contacte: TStringField;
    bInformes_Arxiu: TStringField;
    bInformesReg: THYSqlBrowse;
    bInformesReg_C_Usuari: TStringField;
    bInformesReg_Comentari: TStringField;
    bInformesReg_ID_Informe: TIntegerField;
    dsInformesReg: TDataSource;
    bInformesReg_Linia: TIntegerField;
    bInformesReg_Accio: TSmallintField;
    bInformesReg_Data: TDateTimeField;
    qBuscaID_INFORME: TIntegerField;
    qBuscaC_HISTORIA: TIntegerField;
    qBuscaC_TIPUS: TIBStringField;
    qBuscaC_USUARI: TIBStringField;
    qBuscaSOLICITANT: TIBStringField;
    qBuscaPARENTIU: TIBStringField;
    qBuscaT_DOC: TIBStringField;
    qBuscaNUM_DOC: TIBStringField;
    qBuscaC_ENTREGA: TSmallintField;
    qBuscaCONTACTE: TIBStringField;
    qBuscaURGENT: TIBStringField;
    qBuscaCOMENTARI: TIBStringField;
    qBuscaC_ESTAT: TSmallintField;
    qBuscaARXIU: TIBStringField;
    qBuscaID_INFORME1: TIntegerField;
    qBuscaLINIA: TIntegerField;
    qBuscaACCIO: TSmallintField;
    qBuscaC_USUARI1: TIBStringField;
    qBuscaDATA: TDateTimeField;
    qBuscaCOMENTARI1: TIBStringField;
    qBuscaCODI: TIBStringField;
    qBuscaMETGE: TIBStringField;
    qBuscaCOGNOM: TIBStringField;
    qBuscaNC: TIBStringField;
    qBuscaNOM: TIBStringField;
    qBuscaTRACTE: TIBStringField;
    qBuscaDIGCON: TIBStringField;
    qBuscaC_GRUP: TIBStringField;
    qBuscaHORARI: TIBStringField;
    qBuscaDIA1: TIBStringField;
    qBuscaDIA2: TIBStringField;
    qBuscaPLANTA: TIBStringField;
    qBuscaBAIXA: TIBStringField;
    qBuscaULTIMCANVICLAU: TDateTimeField;
    qBuscaHINHABILITAT: TDateTimeField;
    qBuscaAINHABILITAT: TIntegerField;
    qBuscaESUSEREXTRA: TIBStringField;
    qBuscaC_ESPECIAL: TIBStringField;
    qBuscaNOMSENCER: TIBStringField;
    qBuscaC_SUPERVISOR: TIBStringField;
    qBuscaDNI: TIBStringField;
    qBuscaT_DOC1: TSmallintField;
    qBuscaCOGNOM1: TIBStringField;
    qBuscaEXTENSIO: TIBStringField;
    qBuscaPERFIL: TIBStringField;
    qBuscaNOMBRE: TIBStringField;
    qBuscaEMAIL: TIBStringField;
    qBuscaEMAIL_CLAU: TIBStringField;
    qBuscaCLAUPAS: TIBStringField;
    qBuscaCLAUPAS_1: TIBStringField;
    qBuscaCLAUPAS_2: TIBStringField;
    qBuscaE_INCORRECTES: TSmallintField;
    qBuscaE_GRACIA: TSmallintField;
    qBuscaUNITAT: TSmallintField;
    qBuscaDATA_BAIXA: TDateTimeField;
    qBuscaSEXE: TIBStringField;
    qBuscaNMETGERECEPTA: TIBStringField;
    qBuscaC_UNITAT: TSmallintField;
    qBuscaC_PROV: TIBStringField;
    bInformesHC3: THYSqlBrowse;
    dsInformesHC3: TDataSource;
    bInformesHC3_ID_Informe: TIntegerField;
    bInformesHC3_Linia: TIntegerField;
    bInformesHC3_ID_HCCC: TStringField;
    bInformes_C_Tractament: TIntegerField;
    bInformes_C_Plantilla: TIntegerField;
    bInformes_Gestionat: TSmallintField;
    bInformes_C_Anotacio: TIntegerField;
    Panel9: TPanel;
    HYBarra4: THYBarra;
    HYGrid2: THYGrid;
    bInformesLin: THYSqlBrowse;
    dsInformesLin: TDataSource;
    bInformesLin_ID: TIntegerField;
    bInformesLin_ID_Informe: TIntegerField;
    bInformesLin_C_Item: TIntegerField;
    bInformesLin_Text: TMemoField;
    bInformesLin_C_Usuari: TStringField;
    bInformesLin_Data: TDateTimeField;
    bInformesLin_Text_Tmp: TMemoField;
    bInformesLin_Data_Tmp: TDateTimeField;
    bInformesLin_C_Usuari_Tmp: TStringField;
    HYArea2: THYArea;
    Ed_bInformesLin_Text: THYMemo;
    Ed_bInformesLin_Text_Tmp: THYMemo;
    TEXT: TLabel;
    Label4: TLabel;
    Splitter2: TSplitter;
    Panel10: TPanel;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    bAplicaFiltres: TButton;
    bNetejaFiltres: TButton;
    ScrollBox1: TScrollBox;
    fHistoria: THYEditFiltro;
    fDataSol: THYEditFiltro;
    fUsuari: THYEditFiltro;
    fTipus: THYEditFiltro;
    fEstat: THYEditFiltro;
    Panel3: TPanel;
    TabSheet2: TTabSheet;
    Memo: TMemo;
    Panel4: TPanel;
    DBNavigator2: TDBNavigator;
    bAplicaSQL: TButton;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Panel6: TPanel;
    Splitter3: TSplitter;
    HYBarra1: THYBarra;
    Panel7: TPanel;
    HYBarra2: THYBarra;
    HYGrid1: THYGrid;
    Panel8: TPanel;
    HYBarra3: THYBarra;
    bRepublica: TSpeedButton;
    HYGrid3: THYGrid;
    bInformes_Versio: TSmallintField;
    Label2: TLabel;
    bInformesLin_C0_0: TIntegerField;
    bInformesLin_C0_1: TIntegerField;
    bInformesLin_C0_2: TStringField;
    bInformesLin_C0_3: TStringField;
    bInformesLin_C0_4: TStringField;
    bInformesLin_C0_5: TSmallintField;
    bInformesLin_C0_6: TStringField;
    bInformesLin_C1_0: TStringField;
    bInformesLin_C1_1: TStringField;
    bInformesLin_C1_2: TStringField;
    bInformesLin_C1_3: TStringField;
    bInformesLin_C1_4: TStringField;
    bInformesLin_C1_5: TStringField;
    bInformesLin_C1_6: TStringField;
    bInformesLin_C1_7: TIntegerField;
    bInformesLin_C1_8: TStringField;
    bInformesLin_C1_9: TStringField;
    bInformesLin_C1_10: TSmallintField;
    bInformesLin_C1_11: TStringField;
    bInformesLin_C1_12: TStringField;
    bInformesLin_C1_13: TStringField;
    bInformesLin_C1_14: TStringField;
    bInformesLin_C1_15: TStringField;
    bInformesLin_C1_16: TIntegerField;
    bInformesLin_C1_17: TDateTimeField;
    bInformesLin_C2_0: TIntegerField;
    bInformesLin_C2_1: TStringField;
    bInformesLin_C2_2: TStringField;
    bInformesLin_C2_3: TSmallintField;
    bInformesLin_C2_4: TStringField;
    bInformesLin_C2_5: TStringField;
    bInformesLin_C2_6: TSmallintField;
    bInformesLin_C2_7: TSmallintField;
    bInformesLin_C2_8: TStringField;
    bInformesLin_C2_9: TStringField;
    bInformesLin_C2_10: TIntegerField;
    bInformesLin_C2_11: TStringField;
    bInformesLin_C3_0: TStringField;
    bInformesLin_C3_1: TStringField;
    bInformesLin_C3_2: TStringField;
    bInformesLin_C3_3: TStringField;
    bInformesLin_C3_4: TStringField;
    bInformesLin_C3_5: TStringField;
    bInformesLin_C3_6: TStringField;
    bInformesLin_C3_7: TIntegerField;
    bInformesLin_C3_8: TStringField;
    bInformesLin_C3_9: TStringField;
    bInformesLin_C3_10: TSmallintField;
    bInformesLin_C3_11: TStringField;
    bInformesLin_C3_12: TStringField;
    bInformesLin_C3_13: TStringField;
    bInformesLin_C3_14: TStringField;
    bInformesLin_C3_15: TStringField;
    bInformesLin_C3_16: TIntegerField;
    bInformesLin_C3_17: TDateTimeField;
    bInformesReg_C0_0: TIntegerField;
    bInformesReg_C0_1: TIntegerField;
    bInformesReg_C0_2: TStringField;
    bInformesReg_C0_3: TStringField;
    bInformesReg_C0_4: TStringField;
    bInformesReg_C0_5: TSmallintField;
    bInformesReg_C0_6: TStringField;
    bInformesReg_C1_0: TStringField;
    bInformesReg_C1_1: TStringField;
    bInformesReg_C1_2: TStringField;
    bInformesReg_C1_3: TStringField;
    bInformesReg_C1_4: TStringField;
    bInformesReg_C1_5: TStringField;
    bInformesReg_C1_6: TStringField;
    bInformesReg_C1_7: TIntegerField;
    bInformesReg_C1_8: TStringField;
    bInformesReg_C1_9: TStringField;
    bInformesReg_C1_10: TSmallintField;
    bInformesReg_C1_11: TStringField;
    bInformesReg_C1_12: TStringField;
    bInformesReg_C1_13: TStringField;
    bInformesReg_C1_14: TStringField;
    bInformesReg_C1_15: TStringField;
    bInformesReg_C1_16: TIntegerField;
    bInformesReg_C1_17: TDateTimeField;
    bInformesReg_C2_0: TSmallintField;
    bInformesReg_C2_1: TStringField;
    bInformesReg_C2_2: TSmallintField;
    bInformesReg_C2_3: TStringField;
    bInformesReg_C2_4: TStringField;
    bInformesReg_C2_5: TStringField;
    bInformesHC3_Republica: TStringField;
    bInformesHC3_ID_nHCE: TIntegerField;
    bInformesHC3_Publicar_HC3: TStringField;
    bInformesHC3_Publicar_APP: TStringField;
    bInformesHC3_ID_APP: TStringField;
    bEsborra: TSpeedButton;
    bInformesHC3_ID_HCCC_OLD: TStringField;
    bInformesHC3_ID_APP_OLD: TStringField;
    bInformesHC3_C0_0: TIntegerField;
    bInformesHC3_C0_1: TIntegerField;
    bInformesHC3_C0_2: TStringField;
    bInformesHC3_C0_3: TStringField;
    bInformesHC3_C0_4: TStringField;
    bInformesHC3_C0_5: TSmallintField;
    bInformesHC3_C0_6: TStringField;
    bInformes_Publicar_HC3: TStringField;
    ScrollBox2: TScrollBox;
    HYArea1: THYArea;
    Eti_bInformes_hist_NomComplet: THYLabel;
    Eti_bInformes_tipus_N_Tipus: THYLabel;
    Eti_bInformes_usuari_Metge: THYLabel;
    Eti_bInformes_usuari_Nomsencer: THYLabel;
    Eti_bInformes_tdoc_N_Codi: THYLabel;
    Eti_bInformes_entrega_N_Codi: THYLabel;
    Eti_bInformes_tract_C_Prestacio: THYLabel;
    Eti_bInformes_tract_Data_Ingres: THYLabel;
    Eti_bInformes_tract_Data_Alta: THYLabel;
    Eti_bInformes_tract_C_Coordinador: THYLabel;
    Label1: TLabel;
    Eti_bInformes_estat_N_Codi: THYLabel;
    Eti_bInformes_plantilla_N_Plantilla: THYLabel;
    Eti_bInformes_gestionat_N_Codi: THYLabel;
    Eti_bInformes_tipus_Publicar_HC3: THYLabel;
    Label3: TLabel;
    Eti_bInformes_tract_Fi_Proces: THYLabel;
    Eti_bInformes_tract_C_Proces: THYLabel;
    Eti_bInformes_tract_C_CentreFac: THYLabel;
    Eti_bInformes_hist_IDIOMA: THYLabel;
    Eti_bInformes_plantilla_Idioma: THYLabel;
    Eti_bInformes_tract_Data_PreAlta: THYLabel;
    Eti_bInformes_tipus_Publicar_APP: THYLabel;
    Eti_bInformes_tract_C_Client: THYLabel;
    HYLabel1: THYLabel;
    Ed_bInformes_C_HISTORIA: THYEdit;
    Ed_bInformes_C_USUARI: THYEdit;
    Ed_bInformes_SOLICITANT: THYEdit;
    Ed_bInformes_C_ENTREGA: THYEdit;
    Check_bInformes_URGENT: THYCheck;
    Ed_bInformes_ID_Informe: THYEdit;
    Ed_bInformes_C_Tipus: THYEdit;
    Ed_bInformes_Parentiu: THYEdit;
    Ed_bInformes_T_DOC: THYEdit;
    Ed_bInformes_NUM_DOC: THYEdit;
    Ed_bInformes_Contacte: THYEdit;
    Ed_bInformes_C_Tractament: THYEdit;
    Ed_bInformes_COMENTARI: THYMemo;
    Ed_bInformes_C_ESTAT: THYEdit;
    Ed_bInformes_Arxiu: THYEdit;
    Ed_bInformes_C_Plantilla: THYEdit;
    Ed_bInformes_Gestionat: THYEdit;
    Ed_bInformes_C_Anotacio: THYEdit;
    Ed_bInformes_Versio: THYEdit;
    Check_bInformes_Publicar_HC3: THYCheck;
    bInformes_Idioma: TSmallintField;
    Ed_bInformes_Idioma: THYEdit;
    Eti_bInformes_idioma_N_Codi: THYLabel;
    Label5: TLabel;
    bInformes_Tipus_Plantilla: TIntegerField;
    bInformes_C0_0: TIntegerField;
    bInformes_C0_1: TStringField;
    bInformes_C0_2: TStringField;
    bInformes_C0_3: TIntegerField;
    bInformes_C0_4: TStringField;
    bInformes_C0_5: TStringField;
    bInformes_C0_6: TStringField;
    bInformes_C0_7: TStringField;
    bInformes_C0_8: TSmallintField;
    bInformes_C0_9: TSmallintField;
    bInformes_C0_10: TStringField;
    bInformes_C0_11: TStringField;
    bInformes_C0_12: TDateTimeField;
    bInformes_C0_13: TStringField;
    bInformes_C0_14: TStringField;
    bInformes_C0_15: TStringField;
    bInformes_C0_16: TStringField;
    bInformes_C0_17: TSmallintField;
    bInformes_C0_18: TSmallintField;
    bInformes_C0_19: TStringField;
    bInformes_C0_20: TStringField;
    bInformes_C0_21: TStringField;
    bInformes_C0_22: TStringField;
    bInformes_C0_23: TStringField;
    bInformes_C0_24: TSmallintField;
    bInformes_C0_25: TStringField;
    bInformes_C0_26: TSmallintField;
    bInformes_C0_27: TStringField;
    bInformes_C0_28: TStringField;
    bInformes_C0_29: TStringField;
    bInformes_C0_30: TIntegerField;
    bInformes_C1_0: TStringField;
    bInformes_C1_1: TStringField;
    bInformes_C1_2: TStringField;
    bInformes_C1_3: TStringField;
    bInformes_C1_4: TSmallintField;
    bInformes_C1_5: TStringField;
    bInformes_C1_6: TStringField;
    bInformes_C1_7: TStringField;
    bInformes_C1_8: TStringField;
    bInformes_C1_9: TSmallintField;
    bInformes_C1_10: TStringField;
    bInformes_C1_11: TStringField;
    bInformes_C1_12: TStringField;
    bInformes_C2_0: TStringField;
    bInformes_C2_1: TStringField;
    bInformes_C2_2: TStringField;
    bInformes_C2_3: TStringField;
    bInformes_C2_4: TStringField;
    bInformes_C2_5: TStringField;
    bInformes_C2_6: TStringField;
    bInformes_C2_7: TIntegerField;
    bInformes_C2_8: TStringField;
    bInformes_C2_9: TStringField;
    bInformes_C2_10: TSmallintField;
    bInformes_C2_11: TStringField;
    bInformes_C2_12: TStringField;
    bInformes_C2_13: TStringField;
    bInformes_C2_14: TStringField;
    bInformes_C2_15: TStringField;
    bInformes_C2_16: TIntegerField;
    bInformes_C2_17: TDateTimeField;
    bInformes_C3_0: TStringField;
    bInformes_C3_1: TStringField;
    bInformes_C4_0: TSmallintField;
    bInformes_C4_1: TStringField;
    bInformes_C4_2: TSmallintField;
    bInformes_C4_3: TStringField;
    bInformes_C4_4: TStringField;
    bInformes_C4_5: TStringField;
    bInformes_C5_0: TSmallintField;
    bInformes_C5_1: TStringField;
    bInformes_C5_2: TSmallintField;
    bInformes_C5_3: TStringField;
    bInformes_C5_4: TStringField;
    bInformes_C5_5: TStringField;
    bInformes_C6_0: TIntegerField;
    bInformes_C6_1: TIntegerField;
    bInformes_C6_2: TStringField;
    bInformes_C6_3: TDateTimeField;
    bInformes_C6_4: TDateTimeField;
    bInformes_C6_5: TDateTimeField;
    bInformes_C6_6: TStringField;
    bInformes_C6_7: TStringField;
    bInformes_C6_8: TStringField;
    bInformes_C6_9: TFloatField;
    bInformes_C6_10: TStringField;
    bInformes_C6_11: TStringField;
    bInformes_C6_12: TStringField;
    bInformes_C6_13: TStringField;
    bInformes_C6_14: TSmallintField;
    bInformes_C6_15: TSmallintField;
    bInformes_C6_16: TSmallintField;
    bInformes_C6_17: TStringField;
    bInformes_C6_18: TStringField;
    bInformes_C6_19: TStringField;
    bInformes_C6_20: TIntegerField;
    bInformes_C6_21: TStringField;
    bInformes_C6_22: TStringField;
    bInformes_C6_23: TStringField;
    bInformes_C6_24: TStringField;
    bInformes_C6_25: TStringField;
    bInformes_C6_26: TStringField;
    bInformes_C6_27: TStringField;
    bInformes_C6_28: TDateTimeField;
    bInformes_C6_29: TIntegerField;
    bInformes_C7_0: TIntegerField;
    bInformes_C7_1: TStringField;
    bInformes_C7_2: TStringField;
    bInformes_C7_3: TSmallintField;
    bInformes_C7_4: TStringField;
    bInformes_C7_5: TIntegerField;
    bInformes_C8_0: TSmallintField;
    bInformes_C8_1: TStringField;
    bInformes_C8_2: TSmallintField;
    bInformes_C8_3: TStringField;
    bInformes_C8_4: TStringField;
    bInformes_C8_5: TStringField;
    bInformes_C9_0: TIntegerField;
    bInformes_C9_1: TDateTimeField;
    bInformes_C9_2: TStringField;
    bInformes_C9_3: TIntegerField;
    bInformes_C9_4: TIntegerField;
    bInformes_C9_5: TStringField;
    bInformes_C9_6: TStringField;
    bInformes_C10_0: TSmallintField;
    bInformes_C10_1: TStringField;
    bInformes_C10_2: TSmallintField;
    bInformes_C10_3: TStringField;
    bInformes_C10_4: TStringField;
    bInformes_C10_5: TStringField;
    Ed_bInformes_Tipus_Plantilla: THYEdit;
    Label6: TLabel;
    Splitter4: TSplitter;

    procedure bAplicaFiltresClick(Sender: TObject);
    procedure bNetejaFiltresClick(Sender: TObject);
    procedure bAplicaSQLClick(Sender: TObject);

    procedure bRepublicaClick(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bEsborraClick(Sender: TObject);
  private
  public
  end;

var
  wFitxaInformes: TwFitxaInformes;

implementation

uses DataInformes, Data, Funciones, DataCodis;

{$R *.dfm}


procedure TwFitxaInformes.bAplicaFiltresClick(Sender: TObject);
begin
    bInformes.Close;

    with qBusca do
    begin
        Close;
        SQL.Clear;
        SQL.Add('select * from INFORMES I');
        SQL.Add('left outer join INFORMES_REG R on I.ID_INFORME = R.ID_INFORME and R.LINIA = 1 and R.ACCIO = 1');
        SQL.Add('left outer join METGES M on I.C_USUARI = M.CODI');
        SQL.Add('where 1 = 1 ');
        if fHistoria.HayFiltro then SQL.Add(fHistoria.FiltroAnd);
        if fUsuari.HayFiltro   then SQL.Add(fUsuari.FiltroAnd);
        if fDataSol.HayFiltro  then SQL.Add(fDataSol.FiltroAnd);
        if fTipus.HayFiltro    then SQL.Add(fTipus.FiltroAnd);
        if fEstat.HayFiltro    then SQL.Add(fEstat.FiltroAnd);
        SQL.Add('order by I.ID_INFORME');

        Memo.Lines.Assign(SQL);

        Open;
    end;

    bInformes.Open;
    bInformesReg.Open;
    bInformesLin.Open;
    bInformesHC3.Open;

    qBusca.First;
end;

procedure TwFitxaInformes.bNetejaFiltresClick(Sender: TObject);
begin
    fHistoria.Valor1 := '';   fHistoria.Valor2 := '';
    fUsuari.Valor1   := '';   fUsuari.Valor2   := '';
    fDataSol.Valor1  := '';   fDataSol.Valor2  := '';
    fTipus.Valor1    := '';   fTipus.Valor2    := '';
    fEstat.Valor1    := '';   fEstat.Valor2    := '';
end;

procedure TwFitxaInformes.bAplicaSQLClick(Sender: TObject);
begin
    qBusca.Close;
    qBusca.SQL.Assign(Memo.Lines);
    qBusca.Open;
    bInformes.Open;
    bInformesReg.Open;
    bInformesLin.Open;
    bInformesHC3.Open;
    qBusca.First;
end;


procedure TwFitxaInformes.bRepublicaClick(Sender: TObject);
begin
    bInformesHC3.Last;
    if  (bInformes.FieldByName('tract_C_CentreFac').AsString = '04') and (bInformes.FieldByName('tract_C_Client').AsString = 'UP')
    and (not bInformesHC3.FieldByName('ID_HCCC').IsNull)
    then begin
        if bInformesHC3.FieldByName('ID_APP').IsNull
        then GutExecute('insert into INFORMES_HCCC (ID_INFORME, PUBLICAR_HC3, ID_HCCC_OLD, PUBLICAR_APP) values (%d, "R", "%s", "%s")',
                       [bInformes.FieldByName('ID_Informe').AsInteger,bInformesHC3.FieldByName('ID_HCCC').AsString,
                        bInformes.FieldByName('tipus_Publicar_APP').AsString])
        else GutExecute('insert into INFORMES_HCCC (ID_INFORME, PUBLICAR_HC3, ID_HCCC_OLD, PUBLICAR_APP, ID_APP_OLD) values (%d, "R", "%s", "%s", "%s")',
                       [bInformes.FieldByName('ID_Informe').AsInteger,bInformesHC3.FieldByName('ID_HCCC').AsString,
                        bInformes.FieldByName('tipus_Publicar_APP').AsString, bInformesHC3.FieldByName('ID_APP').AsString]);
        bInformesHC3.Refresh;
    end
    else ShowMessage('El tractament ha de ser 04-UP i ha d''haver estat publicat alguna vegada.');
end;

procedure TwFitxaInformes.bEsborraClick(Sender: TObject);
var
 op: Integer;
 opcions: Boolean;
 publicarAPP, publicarHC3, textSQL: String;
begin
    bInformesHC3.Last;  // sempre s'haurà de despublicar la última publicació, les anteriors ja no són vàlides

    publicarAPP := 'N';
    publicarHC3 := 'N';
    opcions := False;

    if (not bInformesHC3.FieldByName('ID_APP').IsNull) and (not bInformesHC3.FieldByName('ID_HCCC').IsNull)
    then opcions := True
    else if (not bInformesHC3.FieldByName('ID_APP').IsNull)
         then op := 1
         else if (not bInformesHC3.FieldByName('ID_HCCC').IsNull) then op := 2
                                                                  else FerError('No hi ha res publicat que es pugui eliminar.',True);

    if opcions then op := AvisoLista('Indica d''on vols esborrar l''informe publicat:',['1. APP','2.HC3','3.APP i HC3']) + 1;
    case op of
    1: begin
           publicarAPP := 'D';
           textSQL := 'insert into INFORMES_HCCC (ID_INFORME, PUBLICAR_HC3, ID_HCCC, PUBLICAR_APP, ID_APP_OLD) values (%d, "%s", "%s", "%s", "%s")';
       end;
    2: begin
           publicarHC3 := 'D';
           textSQL := 'insert into INFORMES_HCCC (ID_INFORME, PUBLICAR_HC3, ID_HCCC_OLD, PUBLICAR_APP, ID_APP) values (%d, "%s", "%s", "%s", "%s")';
       end;
    3: begin
           publicarAPP := 'D';
           publicarHC3 := 'D';
           textSQL := 'insert into INFORMES_HCCC (ID_INFORME, PUBLICAR_HC3, ID_HCCC_OLD, PUBLICAR_APP, ID_APP_OLD) values (%d, "%s", "%s", "%s", "%s")';
       end;
    end;

    GutExecute(textSQL,[bInformes.FieldByName('ID_Informe').AsInteger,publicarHC3,bInformesHC3.FieldByName('ID_HCCC').AsString,
                        publicarAPP, bInformesHC3.FieldByName('ID_APP').AsString]);
    bInformesHC3.Refresh;
end;

procedure TwFitxaInformes.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    CanClose := bInformes.PuedeCerrar and bInformesLin.PuedeCerrar and bInformesReg.PuedeCerrar;
end;

procedure TwFitxaInformes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

end.
