unit DataDocumentacio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Diccionari,
  DB, DBTables;

type
  TwDataDocumentacio = class(TDataModule)
    TractList2: THYSqlView;
    P_OrdreRevisions: THYSqlProc;
    P_OrdreAmbulato: THYSqlProc;
    P_Visites: THYSqlProc;
    P_Visites2: THYSqlProc;
    P_Ambulato: THYSqlProc;
    P_HtalDia: THYSqlProc;
    P_OrdreCirMajAmb: THYSqlProc;
    P_OrdreIngressos: THYSqlProc;
    P_VisitesUnitats: THYSqlProc;
    P_VisitesUnitatsT: THYSqlProc;
    P_HtalDiaUnitats: THYSqlProc;
    P_HtalDiaUnitatsT: THYSqlProc;
    P_Ingressos: THYSqlProc;
    P_IngressosT: THYSqlProc;
    P_DiagAltes: THYSqlProc;
    P_Altes: THYSqlProc;
    P_AltesT: THYSqlProc;
    P_OrdreQuirofan: THYSqlProc;
    P_Estades: THYSqlProc;
    P_Revisions: THYSqlProc;
    P_Sessions: THYSqlProc;
    P_Intervencions: THYSqlProc;
    P_Intervencions_T: THYSqlProc;
    Citologies: TDic;
    ComptaCitolog: THYSqlTrigger;
    PROVISIONAL: THYSqlTrigger;
    P_OrdreVisites: THYSqlProc;
    IngresPeriode: THYSqlProc;
    IngresMotiu2: THYSqlProc;
    SCPeriode: THYSqlProc;
    Ingres1anotacio: THYSqlProc;
    AltesMotiu2: THYSqlProc;
    EscCoord: THYSqlProc;
    EscRevi: THYSqlProc;
    PsicoIbpHad: THYSqlProc;
    EscLogopeda: THYSqlProc;
    EscTreballS: THYSqlProc;
    ReviTreballS: THYSqlProc;
    EscNeuropico2008: THYSqlProc;
    EstudiTS1aV: THYSqlProc;
    PsicoRevi: THYSqlProc;
    pArreglaNC: THYSqlProc;
    pArreglaTitolsInfer: THYSqlProc;
    trombosi: THYSqlProc;
    provesp_periode: THYSqlProc;
    anal_periode: THYSqlProc;
    ecos_periode: THYSqlProc;
    uros_periode: THYSqlProc;
    interv_periode: THYSqlProc;
    sc_reh: THYSqlProc;
    seguiment_reh: THYSqlProc;
    prog4dies: THYSqlProc;
    ReviNeuro: THYSqlProc;
    neuroingres: THYSqlProc;
    psicoingres: THYSqlProc;
    calcul_estades: THYSqlProc;
    EscNeuropsico: THYSqlProc;
    REINGRES: THYSqlProc;
    FILIACIO_UM: THYSqlProc;
    EstadisticRX: THYSqlProc;
    EstadisticAnal: THYSqlProc;
    anestesista: THYSqlProc;
    pseudomones: THYSqlProc;
    EDUCAFAM: THYSqlProc;
    AltaEpicrisi: THYSqlProc;
    resumanal_periode: THYSqlProc;
    Uro: THYSqlProc;
    ECB_medicacio: THYSqlProc;
    GdbPortal: TDatabase;
    ProjectePortal: TDicProjecto;
    Virtual_Esdev: TDic;
    Documents: TDic;
    P_EstadesMotiu: THYSqlProc;
    SessionsGym: THYSqlProc;
    Ictus: THYSqlProc;
    Urologia: THYSqlProc;
    Uro_resum: THYSqlProc;
    gine1: THYSqlProc;
    List: THYSqlProc;
    ListFIM: THYSqlProc;
    bionexo: THYSqlProc;
    FactuBlocsCap: TDic;
    factublocs: THYSqlProc;
    InterfEM_Eliminada: THYSqlProc;
    EVSF: THYSqlProc;
    Traumes: THYSqlProc;
    estudiLM: THYSqlProc;
    ActivitatMultisensorial: THYSqlProc;
    N_DiagIng: THYSqlProc;
    UpdCodificatRevisat: THYSqlProc;
    DasiProfessionals: THYSqlProc;
    DasiPacients: THYSqlProc;
    DasiVisites: THYSqlProc;
    List_NP: THYSqlProc;
    RevisioEscalesPendentsAlta: THYSqlProc;
    VitaminaD: THYSqlProc;
    AltesBCN: THYSqlProc;
    IngressatsADataX: THYSqlProc;
    procedure GdbPortalBeforeConnect(Sender: TObject);
  private
  public
  end;

var
  wDataDocumentacio: TwDataDocumentacio;
  Procedure HolaExecute(Sentencias: String; const Args: array of const);

implementation

uses Data, DataBasics, DataAnalit, DataIntercon, DataEscales, DataBlocQuirurgic, IniFiles;

{$R *.DFM}

procedure TwDataDocumentacio.GdbPortalBeforeConnect(Sender: TObject);
var
  fileAliesIB: TIniFile;
begin
{-
    if wData.ES_PROVA then gdbPortal.AliasName := 'HOLAPROVES'
                      else gdbPortal.AliasName := 'HOLA';
-}

    TRY
      fileAliesIB := TIniFile.Create(wData.rutaAliesIB);
      TRY gdbPortal.AliasName := fileAliesIB.ReadString(wData.Alias, 'AliesHola', '');
      FINALLY fileAliesIB.Free;
      END;
    EXCEPT
      on e: Exception do
      begin
          ShowMessage('No s''ha pogut identificar la BD HOLA de l''entorn de treball corresponent.' + #13#10 + e.Message);
          Abort;
      end;
    END;

end;

Procedure HolaExecute(Sentencias: String; const Args: array of const);
var
   Q: TQuery;
begin
     Q := TQuery.Create(wDataDocumentacio);
     try
      Q.DataBaseName := wDataDocumentacio.GdbPortal.DatabaseName;
      Q.SQL.Text := Format(Sentencias,Args);
      Q.ExecSQL;
     finally
      Q.Free;
     end;
end;


end.
