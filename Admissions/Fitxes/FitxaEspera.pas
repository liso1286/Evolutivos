unit FitxaEspera;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  HYPanels, Db, DBTables, DBGrids, HYDialogConsulta, ActnList, HYSql,
  StdCtrls, DBCtrls, HYEdit, ComCtrls, Buttons, HYLabel, ExtCtrls,
  Data, Grids, FitxaEsperasHistoriques, inputBoxBVG, DataHCE;

type
  TwFitxaEspera = class(TForm)
    tEspera: THYSqlTable;
    dsEspera: TDataSource;
    HYBarra1: THYBarra;
    Ed_tEspera_C_Espera: THYEdit;
    Bevel1: TBevel;
    Ed_tEspera_C_Prestacio: THYEdit;
    Eti_tEspera_Presta_N_Prestacio: THYLabel;
    SpeedButton1: TSpeedButton;
    ActionList: TActionList;
    accHistoria: TAction;
    PC: TPageControl;
    tsEspera: TTabSheet;
    tsHistories: TTabSheet;
    Panel1: TPanel;
    HYArea3: THYArea;
    pMetgeCoordinador: TPanel;
    Eti_tEspera_Metge_C_Especial: THYLabel;
    HYLabel3: THYLabel;
    EditMetge: THYEdit;
    pComentari: THYArea;
    Label2: TLabel;
    pEstat: TPanel;
    Eti_tEspera_Estat_N_Codi: THYLabel;
    Ed_tEspera_C_Estat: THYEdit;
    pDiaFixe: TPanel;
    Ed_tEspera_DataFixe: THYEdit;
    pFrecuencia: TPanel;
    edFrecuencia: THYEdit;
    pCaracter: TPanel;
    Eti_tEspera_Caracter_N_Codi: THYLabel;
    EditCaracter: THYEdit;
    pUnitat: TPanel;
    Eti_tEspera_Unitat_N_Unitat: THYLabel;
    edtUnitat: THYEdit;
    pProcedencia: TPanel;
    Eti_tEspera_Origen_N_Codi: THYLabel;
    EditProcedencia: THYEdit;
    pMotiuIngres: TPanel;
    Eti_tEspera_Motiu_N_Codi: THYLabel;
    EditMotiu: THYEdit;
    pIntervencio: TPanel;
    Ed_tEspera_INTERVENCIO: THYEdit;
    Comentari: THYMemo;
    pPreIngres: TPanel;
    pDadesPersonals: THYArea;
    bHistoria: TSpeedButton;
    PanelReadOnly: THYArea;
    HYEdit3: THYEdit;
    HYEdit7: THYEdit;
    HYEdit8: THYEdit;
    HYEdit9: THYEdit;
    PanelEditable: THYArea;
    HYEdit6: THYEdit;
    EditCognom1: THYEdit;
    HYEdit11: THYEdit;
    HYEdit12: THYEdit;
    EditHistoria: THYEdit;
    PanelHistoria: HYPanelConsulta;
    pDataInclusio: TPanel;
    HYEdit2: THYEdit;
    cMetgePresta: THYConsulta;
    qEspecialitatMetge: THYSqlQuery;
    dsEspecialitatMetge: TDataSource;
    HYEdit1: THYEdit;
    HYLabel1: THYLabel;
    pHoraPreIngres: TPanel;
    HYEdit10: THYEdit;
    tEspera_C_Espera: TIntegerField;
    tEspera_C_Historia: TIntegerField;
    tEspera_C_Prestacio: TStringField;
    tEspera_C_Coordinador: TStringField;
    tEspera_Data_Inclusio: TDateTimeField;
    tEspera_Data_PreIngres: TDateTimeField;
    tEspera_Hora_PreIngres: TStringField;
    tEspera_Nom: TStringField;
    tEspera_Cognom1: TStringField;
    tEspera_Cognom2: TStringField;
    tEspera_NomComplet: TStringField;
    tEspera_TELEFON: TStringField;
    tEspera_C_Unitat: TSmallintField;
    tEspera_C_Caracter: TSmallintField;
    tEspera_C_Procedencia: TSmallintField;
    tEspera_C_Motiu: TSmallintField;
    tEspera_C_Frecuencia: TStringField;
    tEspera_DataFixe: TDateTimeField;
    tEspera_Data_Exclusio: TDateTimeField;
    tEspera_MotiuExclusio: TStringField;
    tEspera_INTERVENCIO: TStringField;
    tEspera_COMENTARI: TStringField;
    tEspera_C_Estat: TSmallintField;
    tEspera_C_TractamentDesti: TIntegerField;
    tEspera_ComentariMetge: TStringField;
    tEspera_ComentariInfermera: TStringField;
    tEspera_C_MetgeAutoritzacio: TStringField;
    tEspera_Exclos: TStringField;
    tEspera_C_OM: TIntegerField;
    tEspera_Lloc: TStringField;
    tEspera_SEXO: TStringField;
    tEsperaC_TRACTAMENTORIGEN: TIntegerField;
    pPlantaPreingres: TPanel;
    HYEdit4: THYEdit;
    pDataPreingres: TPanel;
    HYEdit5: THYEdit;
    lbAvisFreq: TLabel;
    qInsEspera: TQuery;
    tEspera_IDREGISTRE: TIntegerField;
    tEspera_Metge_Programa: TStringField;
    tEspera_C_Proces: TIntegerField;
    tEspera_Data_Naix: TDateTimeField;
    tEspera_CIP: TStringField;
    tEspera_Accio_HCCC: TStringField;
    tEspera_Estat_HCCC: TStringField;
    tEspera_Sequencia_HCCC: TIntegerField;
    tEspera_CIP_Antic: TStringField;
    tEspera_C_CENTREFAC: TStringField;
    tEspera_C_HospitalOrigen: TSmallintField;
    tEspera_T_SESSIO: TSmallintField;
    pFacturacio: TPanel;
    HYEdit15: THYEdit;
    HYEdit16: THYEdit;
    tEspera_C_CLIENT: TStringField;
    Label1: TLabel;
    Eti_CentreFac_N_CentreFac: THYLabel;
    Eti_Client_N_Client: THYLabel;
    Label3: TLabel;
    tEspera_hce_person_id: TIntegerField;
    ePersonId: THYEdit;
    EditSexo: THYEdit;
    sbCreateModifyPerson: TSpeedButton;
    pAltresDades: TPanel;
    HYEdit17: THYEdit;
    HYEdit18: THYEdit;
    tEspera_hce_schedule_id: TStringField;
    tEspera_RISC_SOCIAL: TIntegerField;
    tEsperaEdat: TIntegerField;
    HYEdit19: THYEdit;
    tEspera_C_TRANSPORT_SANITARI: TSmallintField;
    HYEdit20: THYEdit;
    HYLabel2: THYLabel;
    HYLabel4: THYLabel;
    Label4: TLabel;
    pModalitat: TPanel;
    Eti_tEspera_Modalitat_N_Codi: THYLabel;
    EditModalitat: THYEdit;
    tEspera_C_Modalitat: TSmallintField;
    tEspera_C0_0: TIntegerField;
    tEspera_C0_1: TStringField;
    tEspera_C0_2: TStringField;
    tEspera_C0_3: TIntegerField;
    tEspera_C0_4: TStringField;
    tEspera_C0_5: TStringField;
    tEspera_C0_6: TStringField;
    tEspera_C0_7: TStringField;
    tEspera_C0_8: TSmallintField;
    tEspera_C0_9: TSmallintField;
    tEspera_C0_10: TStringField;
    tEspera_C0_11: TStringField;
    tEspera_C0_12: TDateTimeField;
    tEspera_C0_13: TStringField;
    tEspera_C0_14: TStringField;
    tEspera_C0_15: TStringField;
    tEspera_C0_16: TStringField;
    tEspera_C0_17: TSmallintField;
    tEspera_C0_18: TSmallintField;
    tEspera_C0_19: TStringField;
    tEspera_C0_20: TStringField;
    tEspera_C0_21: TStringField;
    tEspera_C0_22: TStringField;
    tEspera_C0_23: TStringField;
    tEspera_C0_24: TSmallintField;
    tEspera_C0_25: TStringField;
    tEspera_C0_26: TSmallintField;
    tEspera_C0_27: TStringField;
    tEspera_C0_28: TStringField;
    tEspera_C0_29: TStringField;
    tEspera_C0_30: TIntegerField;
    tEspera_C1_0: TStringField;
    tEspera_C1_1: TStringField;
    tEspera_C1_2: TStringField;
    tEspera_C1_3: TStringField;
    tEspera_C1_4: TSmallintField;
    tEspera_C1_5: TStringField;
    tEspera_C1_6: TStringField;
    tEspera_C1_7: TSmallintField;
    tEspera_C1_8: TStringField;
    tEspera_C2_0: TStringField;
    tEspera_C2_1: TStringField;
    tEspera_C2_2: TStringField;
    tEspera_C2_3: TStringField;
    tEspera_C2_4: TStringField;
    tEspera_C2_5: TStringField;
    tEspera_C2_6: TStringField;
    tEspera_C2_7: TIntegerField;
    tEspera_C2_8: TStringField;
    tEspera_C2_9: TStringField;
    tEspera_C2_10: TSmallintField;
    tEspera_C2_11: TStringField;
    tEspera_C2_12: TStringField;
    tEspera_C2_13: TStringField;
    tEspera_C2_14: TStringField;
    tEspera_C2_15: TStringField;
    tEspera_C2_16: TIntegerField;
    tEspera_C2_17: TDateTimeField;
    tEspera_C3_0: TSmallintField;
    tEspera_C3_1: TStringField;
    tEspera_C3_2: TSmallintField;
    tEspera_C3_3: TStringField;
    tEspera_C3_4: TStringField;
    tEspera_C3_5: TStringField;
    tEspera_C4_0: TSmallintField;
    tEspera_C4_1: TStringField;
    tEspera_C5_0: TSmallintField;
    tEspera_C5_1: TStringField;
    tEspera_C6_0: TSmallintField;
    tEspera_C6_1: TStringField;
    tEspera_C7_0: TSmallintField;
    tEspera_C7_1: TStringField;
    tEspera_C7_2: TSmallintField;
    tEspera_C7_3: TStringField;
    tEspera_C7_4: TStringField;
    tEspera_C7_5: TStringField;
    tEspera_C8_0: TStringField;
    tEspera_C8_1: TStringField;
    tEspera_C8_2: TStringField;
    tEspera_C8_3: TStringField;
    tEspera_C8_4: TSmallintField;
    tEspera_C9_0: TStringField;
    tEspera_C10_0: TStringField;
    tEspera_C10_1: TStringField;
    tEspera_C11_0: TStringField;
    tEspera_C11_1: TStringField;
    tEspera_C12_0: TStringField;
    tEspera_C12_1: TStringField;
    tEspera_C12_2: TStringField;
    tEspera_C13_0: TSmallintField;
    tEspera_C13_1: TStringField;
    tEspera_C13_2: TStringField;
    tEspera_C13_3: TStringField;
    tEspera_C13_4: TStringField;
    tEspera_C13_5: TStringField;
    tEspera_C13_6: TStringField;
    tEspera_C13_7: TStringField;
    tEspera_C14_0: TSmallintField;
    tEspera_C14_1: TStringField;
    tEspera_C14_2: TSmallintField;
    tEspera_C14_3: TStringField;
    tEspera_C14_4: TStringField;
    tEspera_C14_5: TStringField;
    tEspera_C15_0: TStringField;
    tEspera_C15_1: TStringField;
    tEspera_C15_2: TStringField;
    tEspera_C15_3: TStringField;
    tEspera_C15_4: TStringField;
    tEspera_C15_5: TStringField;
    tEspera_C16_0: TSmallintField;
    tEspera_C16_1: TStringField;
    tEspera_C16_2: TSmallintField;
    tEspera_C16_3: TStringField;
    tEspera_C16_4: TStringField;
    tEspera_C16_5: TStringField;
    tEspera_C17_0: TSmallintField;
    tEspera_C17_1: TStringField;
    tEspera_C17_2: TSmallintField;
    tEspera_C17_3: TStringField;
    tEspera_C17_4: TStringField;
    tEspera_C17_5: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tEsperaAlConsultarCampoFiltro(Sender: TObject;
      NombreConsulta: String; var SubFiltro: String; CampoDb: String;
      ValueDb: Variant);
    procedure EditHistoriaExit(Sender: TObject);
    procedure accHistoriaExecute(Sender: TObject);
    procedure tEsperaAfterInsert(DataSet: TDataSet);
    procedure tEspera_Data_PreIngresChange(Sender: TField);
    procedure PCChange(Sender: TObject);
    procedure tEspera_C_MotiuChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure tEsperaAlConsultarCampo(Sender: TObject;
      NombreConsulta: String; var Ejecutada: Boolean; SubFiltro: String);
    procedure cMetgePrestaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tEspera_Data_InclusioChange(Sender: TField);
    procedure PanelHistoriaAlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Query: TQuery);
    procedure tEspera_C_CoordinadorChange(Sender: TField);
    procedure PanelHistoriaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure tEspera_C_PrestacioChange(Sender: TField);
    procedure tEsperaBeforePost(DataSet: TDataSet);
    procedure tEsperaAfterCancel(DataSet: TDataSet);
    procedure tEsperaAfterPost(DataSet: TDataSet);
    procedure tEsperaBeforeCancel(DataSet: TDataSet);
    procedure tEspera_Cognom1Change(Sender: TField);
    procedure tEspera_C_ProcedenciaChange(Sender: TField);
    procedure tEspera_C_CaracterChange(Sender: TField);
    procedure tEspera_SexoChange(Sender: TField);    
    procedure HYEdit5Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure HYBarra1AlPost(Sender: TObject);
    procedure CarregaPacient(id: Integer);
    procedure sbCreateModifyPersonClick(Sender: TObject);
    procedure tEsperaCalcFields(DataSet: TDataSet);
    procedure tEspera_C_ModalitatChange(Sender: TField);
  private
    function MirarExistenciaEspera(C_Historia: String; C_Motiu: String = ''; Prestacio: String = ''): Integer;
    procedure setPanelEditable(b: Boolean);
  public
    Recuperant,Surt: boolean; //VFO- PARTE 31413.
    PrestacioaIncloure :String;
    PreguntaHistoria:Boolean;
    c_espera_intern: Integer;
    procedure MostrarPaneles(Prestacion:String);
    function FiliacionOk(Historia: String; Prestacio:String): Boolean;
    procedure RecalcularObligaciones;
    procedure OmplirHistoria(c_historia: integer);
    procedure OmplirPacient(person: TPerson);
  end;

var
  wFitxaEspera: TwFitxaEspera;
  miFtxEspHist: TwFitxaEsperasHistoriques;

implementation

uses DataAdmisio, Funciones, DataBasics, DataCodis, FitxaLlistaEspera, FitxaPendents, Main;


{$R *.DFM}

procedure TwFitxaEspera.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
   Bucle: Integer;
begin
    For Bucle := 0 to Screen.FormCount-1 do
    begin
       if Screen.Forms[Bucle] is TwFitxaLlistaEspera
       then with Screen.Forms[Bucle] as TwFitxaLlistaEspera do Todos.Execute;

       if Screen.Forms[Bucle] is TwFitxaPendents
       then with Screen.Forms[Bucle] as TwFitxaPendents do PanelPendents.RefreshSQL;
    end;
    if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza); // parte 61974
    Action := caFree;
end;


procedure TwFitxaEspera.MostrarPaneles(Prestacion: String);
begin

    pPlantaPreingres.Visible    := TeDretPresta(prestacion, [13]);
    pDataPreIngres.Visible      := TeDretPresta(prestacion, [14]);
    pHoraPreIngres.Visible      := TeDretPresta(prestacion, [15]);
//-    pMotiuIngres.Visible        := TeDretPresta(prestacion, [16]);
    pMotiuIngres.Visible        := PrestaTeCodiCamps(prestacion, 'MOTIU');
    pModalitat.Visible          := PrestaTeCodiCamps(prestacion, 'ATENCIO.MODALITAT');
    pProcedencia.Visible        := PrestaTeCodiCamps(prestacion, 'ORIGEN');  //-TeDretPresta(prestacion, [17]);
    pUnitat.Visible             := TeDretPresta(prestacion, [18]);
    pCaracter.Visible           := TeDretPresta(prestacion, [19]);
    pFrecuencia.Visible         := TeDretPresta(prestacion, [21]);
    pIntervencio.Visible        := TeDretPresta(prestacion, [23]);
    pEstat.Visible              := TeDretPresta(prestacion, [27]);
    pComentari.Visible          := TeDretPresta(prestacion, [20]);

    // No poden modificar la freqüència de processos NR amb pauta
    edFrecuencia.Enabled := pFrecuencia.Visible and (0 = GutSelect('select COUNT(*) from PROCESNR_PAUTES P ' +
                                                                   'join TRACTAMENTS T on P.C_TRACTAMENT = T.C_TRACTAMENT ' +
                                                                   'JOIN DRETSPRESTA DP ON T.C_PRESTACIO = DP.C_PRESTACIO AND DP.C_DRET="P33" ' +
                                                                   'where T.C_HISTORIA = %d and P.ESTAT = "V" and P.DATA_PREALTA > "TODAY"',
                                                                   [tEspera.FieldbyName('C_Historia').AsInteger]));
    edFrecuencia.Ctl3D := edFrecuencia.Enabled;
    lbAvisFreq.Visible := not edFrecuencia.Enabled;

    // No podem modificar el motiu de tractaments pre-programats (F8) en la inserció del tractament
    EditMotiu.Enabled := tEspera.FieldByName('C_TractamentOrigen').AsInteger = 0;
    EditMotiu.Ctl3D := EditMotiu.Enabled;
end;


procedure TwFitxaEspera.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TwFitxaEspera.tEsperaAlConsultarCampoFiltro(Sender: TObject;
  NombreConsulta: String; var SubFiltro: String; CampoDb: String;
  ValueDb: Variant);
begin

   if NombreConsulta = 'Fili' then Abort; //SubFiltro := 'EsViu = "S" and Bloqueig is Null';
{   begin
       if nHCE_ON then
       begin
           if not AvisoSN('És un pacient nou (S/N)?') then wDataHCE.BuscaPacient(0);
           Abort;
       end
       else SubFiltro := 'EsViu = "S" and Bloqueig is Null';
   end; }

   if CompareText(NombreConsulta,'Metge')=0 then
   begin
//     Ejh:= False;
     if SubFiltro<>'' then Subfiltro := SubFiltro + ' and  ';
     Subfiltro := SubFiltro +
                  Format(' BAIXA = "N" and codi in (select codi from metgepresta m ' +
                                                   'join prestacion p on m.c_prestacio = p.c_prestacio and p.tipus > -1 ' +
                                                   'where c_prestacio = "%s" )',
                  [tEspera.FieldByName('C_Prestacio').asString]);
//     cMetgePresta.ExecuteModal('','');
//     qEspecialitatMetge.Refresh;
   end;

end;

procedure TwFitxaEspera.EditHistoriaExit(Sender: TObject);
begin
  //AQUI FEM EDITABLE O NO EL NOMB, COGNOMS... TELF.. DEL PACIENT, MIRANT SI ESTA O NO FILIAT
  if esPle(tEspera.FieldbyName('C_Historia').asString) then
  begin
    setPanelEditable(False);
    EditMetge.SetFocus;
  end;
end;

function TwFitxaEspera.FiliacionOk(Historia: String; Prestacio:String):Boolean;
begin

    //if EsPle(Motiu) then Motiu := 'and C_Motiu = '+Motiu;

    //No es pot fer una prestacio d'inserció d'aquesta Historia perque ja existeix una
    if Integer ( SelectSQl(wData.Projecte.DataBaseName,'Select Tipus from Prestacion where c_Prestacio = '+Prestacio))
       in [1,3] then
    begin
        if ( SelectSQLfmt(wData.Projecte.DataBaseName,
              ' SELECT COUNT(*) FROM ESPERA WHERE C_HISTORIA = %s and C_Prestacio = %s and (C_Estat = 20 or C_Estat = 21)'
                , [Historia, Prestacio]) <> 0 )
        then  Result := False
        else Result := True;
    end else Result := True;
end;

procedure TwFitxaEspera.accHistoriaExecute(Sender: TObject);
var
  opcio: Integer;
  idPacient: Integer;
  R_Historia: TFili;
begin

{  Resultados de la Función en "C_Historia":
      (-1): No encontrado
      (-2): Quiero Crearlo

   Parametros:
        *   Botón CrearNuevo
        *   Si sólo quieres los vivos'}


   if nHCE_ON then
   begin
       opcio := -1;
       opcio := AvisoListaSinCancel('Tria quin identificador tens del pacient:',['Número d''història clínica',
                                                                                 'Id de persona (usuari APP)',
                                                                                 'Cap dels anteriors'], 0);
       if (opcio < 0) then Abort;
       ePersonId.EditInterno.Field.Clear;
       EditSexo.EditInterno.Field.Clear;
       case opcio of
       0: begin
              wDataHCE.BuscaPacientAdmissions(c_espera_intern);
              R_Historia.Historia := 0;
          end;
       1: begin
              R_Historia.Historia := -2;
              if InputNumero('Id de persona', 'Entra''l', idPacient, 0, 0, True, True) then ePersonId.EditInterno.Field.AsInteger := idPacient;
          end;          
       2: R_Historia.Historia := -1;
       end;

       if not tEspera.EstaEditando then tEspera.Edit;
       tEspera.FieldbyName('C_Historia').Clear;
   end;

   if EsBuit(tEspera.FieldbyName('C_Historia').AsString) then
   begin

       if not tEspera.EstaEditando then tEspera.Edit;

       EditMetge.SetFocus;
       // EditHistoria.SetFocus;

       if not nHCE_ON then R_Historia := PreguntaFili(tEspera.FieldbyName('C_Historia').AsString, True);

       with R_Historia do
       begin

         // No han triat cap història => deixem introduir les dades (primer les buidem)
         if Historia = -1 then    
         begin
             setPanelEditable(True);

             tEspera.FieldByName('C_Historia').Clear;
             tEspera.FieldByName('Nom'       ).Clear;
             tEspera.FieldByName('Cognom1'   ).Clear;
             tEspera.FieldByName('Cognom2'   ).Clear;
             tEspera.FieldByName('Telefon'   ).Clear;
             tEspera.FieldByName('C_Unitat'  ).AsInteger := 0;
             tEspera.FieldByName('Sexo'      ).Clear;
         end
         // Han triat "id de persona" => bolquem les dades
         else if Historia = -2 then
         begin
             tEspera.FieldByName('C_Historia').Clear;
             tEspera.FieldByName('Nom'       ).Clear;
             tEspera.FieldByName('Cognom1'   ).Clear;
             tEspera.FieldByName('Cognom2'   ).Clear;
             tEspera.FieldByName('Telefon'   ).Clear;
             tEspera.FieldByName('C_Unitat'  ).AsInteger := 0;
             tEspera.FieldByName('Sexo'      ).Clear;

             setPanelEditable(False);
             CarregaPacient(idPacient);
         end

         // Han triat una història => bolquem les dades
         else begin

             tEspera.FieldByName('C_Historia').AsInteger := Historia;
             tEspera.FieldByName('Nom'       ).AsString  := Nom;
             tEspera.FieldByName('Cognom1'   ).AsString  := Cognom1;
             tEspera.FieldByName('Cognom2'   ).AsString  := Cognom2;
             tEspera.FieldByName('Telefon'   ).AsString  := Telefon;
             tEspera.FieldByName('C_Unitat'  ).AsString  := Unitat;
             tEspera.FieldByName('Sexo'      ).AsString  := Sexe;

             if EsBuit(tEspera.FieldByName('C_Unitat').AsString) then tEspera.FieldByName('C_Unitat').asInteger := 0;

             setPanelEditable(False);
         end;
       end;

       // Si a Filiacio hi ha la unitat introduïda, no la deixem modificar
       {if not tEspera.FieldByName('C_Historia').IsNull
       then edtUnitat.ReadOnly := (0 <> GutSelect('select UNITAT from FILIACIO where NUM_HIST = %s',
                                                  [tEspera.FieldByName('C_Historia').AsString]));}
       edtUnitat.ReadOnly := (opcio <> 2);

       // Filtrem la consulta
       panelHistoria.SqlDic[1]      := tEspera.FieldByName('C_Historia').AsString;
       panelHistoria.SqlDicTotal[1] := tEspera.FieldByName('C_Historia').AsString;
   end
   
   else tEspera.ConsultaCampo('Fili', 'EsViu = "S"');
   RecalcularObligaciones;

end;


procedure TwFitxaEspera.tEsperaAfterInsert(DataSet: TDataSet);
begin
    if PreguntaHistoria then accHistoria.Execute;
end;


// Data preingrés no pot ser anterior a la d'inclusió
procedure TwFitxaEspera.tEspera_Data_PreIngresChange(Sender: TField);
begin
    if tEspera.FieldByName('Data_PreIngres').IsNull or tEspera.FieldByName('Data_Inclusio' ).IsNull then Exit;

    if (tEspera.FieldByName('Data_PreIngres').AsDateTime < tEspera.FieldByName('Data_Inclusio').AsDateTime) then
    begin
        Aviso(Avis26);
        tEspera.FieldByName('Data_PreIngres').Clear;
        Abort;
    end;
end;


procedure TwFitxaEspera.PCChange(Sender: TObject);
begin
    if ((Pc.Activepage = tsHistories) and (esPle(tEspera.FieldbyName('C_Historia').asString))) then
    begin
      PanelHistoria.SqlDic[1] := tEspera.FieldbyName('C_Historia').asString;
      PanelHistoria.SqlDicTotal[1] := tEspera.FieldbyName('C_Historia').asString;
      PanelHistoria.Execute('','');
    end;
end;


// Si tenim història i motiu, mirem l'existència dels dos concurrents
// Si només tenim la història, mirem si existeix la prestació
function TwFitxaEspera.MirarExistenciaEspera(C_Historia: String; C_Motiu: String = ''; Prestacio: String = ''):Integer;
begin

    if (C_Motiu = '0') then C_Motiu := '';

    if (C_Historia <> '') then
    begin
        if tEspera.State in [dsInsert] then
        begin
            if esPle(C_Motiu)
            then Result := GutSelect('select COUNT(*)         ' +
                                     'from   ESPERA           ' +
                                     'where  C_HISTORIA = %s  ' +
                                     'and    C_PRESTACIO = %s ' +
                                     'and    C_MOTIU = %s     ' +
                                     'and    C_ESTAT >= 20    ' +
                                     'and    C_ESTAT < 29     ' +
                                     'and    EXCLOS = "N"     ',
                                     [C_Historia, Prestacio, C_Motiu])

            else Result := GutSelect('select COUNT(*)          ' +
                                     'from   ESPERA            ' +
                                     'where  C_HISTORIA = %s   ' +
                                     'and    C_PRESTACIO = %s ' +
                                     'and    C_MOTIU = 0       ' +
                                     'and    C_ESTAT >= 20     ' +
                                     'and    C_ESTAT < 29      ' +
                                     'and    EXCLOS = "N"      ',
                                     [C_Historia, Prestacio]);
        end
        else begin
            if esPle(C_Motiu)
            then Result := GutSelect('select COUNT(*)          ' +
                                     'from   ESPERA            ' +
                                     'where  C_HISTORIA = %s   ' +
                                     'and    C_MOTIU = %s      ' +
                                     'and    C_ESTAT >= 20     ' +
                                     'and    C_ESTAT < 29      ' +
                                     'and    C_ESPERA <> %s    ' +
                                     'and    EXCLOS = "N"      ',
                                     [C_Historia, C_Motiu, tEspera.FieldbyName('C_Espera').asString])

            else Result := GutSelect('select COUNT(*)           ' +
                                     'from   ESPERA             ' +
                                     'where  C_HISTORIA = %s    ' +
                                     'and    C_ESTAT >= 20      ' +
                                     'and    C_ESTAT < 29       ' +
                                     'and    C_MOTIU = 0        ' +
                                     'and    NOT C_ESPERA = %s  ' +
                                     'and    EXCLOS = "N"       ' +
                                     'and    C_PRESTACIO = "%s" ',
                                     [C_Historia, tEspera.FieldbyName('C_Espera').asString, Prestacio]);
        end;
    end

    else Result := 0;
end;


procedure TwFitxaEspera.FormCreate(Sender: TObject);
begin
  c_espera_intern := StrToInt(FormatDateTime('hhnnsszzz',now))*-1;
  PC.ActivePage := tsEspera;
  Surt:=False;
end;


procedure TwFitxaEspera.tEsperaAlConsultarCampo(Sender: TObject;
  NombreConsulta: String; var Ejecutada: Boolean; SubFiltro: String);
begin
//   //QUAN CONSULTEM EL METGE LLANÇEM UNA CONSULTA QUE LIMITA ALS METGES SEGONS LA PRESTACIÓ ESCOLLIDA
//   if NombreConsulta = 'Metge' then
//   begin
//     Ejecutada := False;
//     cMetgePresta.SqlDic[3] := ' AND B.C_PRESTACIO = '+ tEspera.FieldByName('C_Prestacio').asString;
//     cMetgePresta.ExecuteModal('','');
//     qEspecialitatMetge.Refresh;
//   end;

   //SI CONSULTEM EL NUM. HISTORIA LLANÇEM EL DIALEG DE FILIACIONS
//   if NombreConsulta = 'Fili' then
//   begin
//     Ejecutada := False;
//     bHistoria.click;
//   end;

end;

procedure TwFitxaEspera.cMetgePrestaAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   //AL SER UNA CONSULTA PERSONALITZADA, QUAN SELECCIONEM EL METGE L'INTRODUÏM A ESPERA
   tEspera.FieldbyName('C_Coordinador').AsString := Datos.FieldbyName('Codi').AsString;
end;

procedure TwFitxaEspera.tEspera_Data_InclusioChange(Sender: TField);
begin

   //LA DATA D'INCLUSIO NO POT SER MENOR QUE LA DATA D'AVUI

   if tEspera.FieldByName('Data_Inclusio').isNull then exit;

   if (tEspera.FieldByName('Data_Inclusio').AsDateTime < Date) then
   begin
      Aviso(AVIS27);
      Abort;
//      FerError(AVIS27);
      tEspera.FieldByName('Data_Inclusio').Clear;
   end;
end;

procedure TwFitxaEspera.PanelHistoriaAlPintarGrid(var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Query: TQuery);
begin

  if ((Query.Active) and ( not Query.FieldByName('C_ESTAT').isNull)) then
    if  ((Query.FieldByName('C_ESTAT').asInteger  >= 20)
    and  (Query.FieldByName('C_ESTAT').asInteger  <  29))  Then
    begin
      ColorFont  := clBlue;
    end
    else
    begin
      ColorFont  := clBlack;
    end;

  if (gdSelected in state) then
  begin
    ColorBrush := clNavy;
    ColorFont := clWhite;
  end

end;

procedure TwFitxaEspera.PanelHistoriaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    if not Datos.IsEmpty
    then EditarListaEspera(PrestacioaIncloure,
                           Datos.FieldbyName('N_Prestacio').asString,
                           tEspera.FieldbyName('NomComplet').asString,
                           tEspera.FieldbyName('C_Historia').asString,
                           Datos.FieldbyName('C_Espera').asVariant);
end;

procedure TwFitxaEspera.tEspera_C_PrestacioChange(Sender: TField);
begin
    MostrarPaneles(tEspera.fieldbyName('C_Prestacio').asString);
end;

procedure TwFitxaEspera.tEsperaBeforePost(DataSet: TDataSet);
var
 DataAlta: TDateTime;
begin

    if Recuperant then
    begin
        if tEspera.Fieldbyname('Data_preingres').asdatetime < DateServer then
        begin
            FerError('En recuperar Espera Històrica, la data de preingrés no pot ser passada.', True);
            abort;
        end
        else tEspera.FieldbyName('C_Estat').asString := '20';
    end
    else begin

        if (tEspera.FieldbyName('C_Estat').asString = '0')  then tEspera.FieldbyName('C_Estat').asString := '20';


        if ((EsBuit(tEspera.FieldByName('C_Coordinador').asString)) or (tEspera.FieldByName('C_Coordinador').isNull)) then
        begin
            EditMetge.SetFocus;
            FerError(FORMAT(Avis52, ['EL METGE COORDINADOR ']), True);
        end;

//-        if TeDretPresta(tEspera.FieldByName('C_Prestacio').asString, [16]) then
        if PrestaTeCodiCamps(tEspera.FieldByName('C_Prestacio').AsString, 'MOTIU') then
        begin
            if (tEspera.FieldByName('C_Motiu').AsInteger = 0) then
            begin
                EditMotiu.SetFocus;
                FerError(Avis25, True)
            end;
        end;

        if PrestaTeCodiCamps(tEspera.FieldByName('C_Prestacio').AsString, 'ATENCIO.MODALITAT') then
        begin
            if (tEspera.FieldByName('C_Modalitat').AsInteger = 0) then
            begin
                EditModalitat.SetFocus;
                FerError(Avis69, True)
            end;
        end;

        if PrestaTeCodiCamps(tEspera.FieldByName('C_Prestacio').AsString, 'ORIGEN') then
        begin
            if (tEspera.FieldByName('C_Procedencia').AsInteger = 0) then
            begin
                editProcedencia.SetFocus;
                FerError(FORMAT(Avis52, ['EL CAMP PROCEDÈNCIA']), True);
            end;
        end;

        if TeDretPresta(tEspera.FieldByName('C_Prestacio').asString, [19]) then
        begin
            if (tEspera.FieldByName('C_Caracter').AsInteger = 0) then
            begin
                editCaracter.SetFocus;
                FerError(FORMAT(Avis52, ['EL CAMP CARÀCTER']), True);
            end;
        end;

        // MIREM QUE NO EXISTEIXI JA UNA INCLUSIÓ A ESPERA DE LA MATEIXA FILIACIO I MOTIU.
        // Per a la 2023 poden entrar múltiples llistes d'espera amb mateix pacient i motiu
        if not TeDretPresta(tEspera.FieldByName('C_Prestacio').asString, [120]) then
        begin
            if ( MirarExistenciaEspera(
                      tEspera.FieldbyName('C_Historia' ).asString,
                      tEspera.FieldbyName('C_Motiu'    ).asString,
                      tEspera.FieldbyName('C_Prestacio').asString) <> 0)  then
            begin
                Aviso(AVIS23);
                Abort;
            end;
        end;
    end;

    if tEspera.FieldByName('sexo').IsNull then FerError('El sexe del pacient ha d''estar informat obligatòriament.',True)
                                          else if  (tEspera.FieldByName('sexo').AsString <> 'D')
                                               and (tEspera.FieldByName('sexo').AsString <> 'H')
                                               then FerError('Camp sexe només admet valors "D" o "H".',True);

    // No es pot afegir una 2014 motiu 103 si n'hi ha algun altre en l'últim any - només mirar-ho si la data preIngrés està informada
    if  (tEspera.FieldbyName('C_Prestacio'   ).AsString  = '2014')
    and (tEspera.FieldbyName('C_Motiu'       ).AsInteger = 103)
    and (tEspera.FieldbyName('Data_PreIngres').AsDateTime <> 0)
    then begin
        DataAlta := GutSelect('select data_alta from tractaments where c_prestacio="2014" and c_motiu=103 and c_historia=%d '+
                              'and c_estatfac <> 55 order by data_ingres desc rows 1',
                              [tEspera.FieldbyName('C_Historia').AsInteger]);

        if (DataAlta <> 0) and (tEspera.FieldbyName('Data_PreIngres').AsDateTime - DataAlta <= 365)
        then FerError('No es pot incloure una 2014 motiu 103 perquè en té una de fa menys d''un any.', True);
    end;

    // Registrem usuari última modificació
    tEspera.FieldByName('Metge_Programa').AsString := wData.UsuariActiu.Codi;
end;

procedure TwFitxaEspera.tEsperaAfterCancel(DataSet: TDataSet);
begin
  Close;
end;

procedure TwFitxaEspera.tEsperaAfterPost(DataSet: TDataSet);
begin
//VFO-I. - PARTE 31413
  IF Recuperant then
  begin
    ShowMessage('Espera Històrica de la NHC: '+tEspera.FieldbyName('C_Historia').asString+' recuperada.');
    Recuperant := False;
    miFtxEspHist.pEsperesHistoriques.RefreshSQL;
  end;
//VFO-F.
  // parte 61974 - i
  if wMain.LastTraza=0 then wMain.LastTraza := wData.ObraTrazaControl(tEspera.FieldbyName('C_Historia').asInteger,Self.Name,wMain.Aplica,tEspera.FieldbyName('C_Espera').asInteger);
  wMain.AddStatusTraza('ë');
  // parte 61974 - f
  Close;
end;

procedure TwFitxaEspera.tEsperaBeforeCancel(DataSet: TDataSet);
var
  Accion: String;
begin
  if Surt then Exit;

  If tEspera.State in [dsInsert]
  then  Accion := ' inclusió '
  else  Accion := ' modificació ';

  if not AvisoSN('Voleu cancel·lar la'+Accion+'?') then
  begin
    Abort;
  end;
end;

procedure TwFitxaEspera.tEspera_Cognom1Change(Sender: TField);
begin
   if EsPle(tEspera.FieldbyName('Cognom1').asString)
   then EditCognom1.EtiFontColor := clWindowText
   else EditCognom1.EtiFontColor := clRed;
end;

// parte 49933 - i.
procedure TwFitxaEspera.tEspera_SexoChange(Sender: TField);
begin
   if EsPle(tEspera.FieldbyName('Sexo').asString)
   then EditSexo.EtiFontColor := clWindowText
   else EditSexo.EtiFontColor := clRed;
end;
// parte 49933 - f.

procedure TwFitxaEspera.tEspera_C_ProcedenciaChange(Sender: TField);
begin

   if ((EsPle(tEspera.FieldbyName('C_Procedencia').asString))  and (tEspera.FieldbyName('C_Procedencia').asString <> '0'))
   then EditProcedencia.EtiFontColor := clWindowText
   else EditProcedencia.EtiFontColor := clRed;

end;

procedure TwFitxaEspera.tEspera_C_CaracterChange(Sender: TField);
begin
   if ((EsPle(tEspera.FieldbyName('C_Caracter').asString))  and (tEspera.FieldbyName('C_Caracter').asString <> '0'))
   then EditCaracter.EtiFontColor := clWindowText
   else EditCaracter.EtiFontColor := clRed;
end;

procedure TwFitxaEspera.tEspera_C_MotiuChange(Sender: TField);
begin

   if ((EsPle(tEspera.FieldbyName('C_Motiu').asString))  and (tEspera.FieldbyName('C_Motiu').asString <> '0'))
   then EditMotiu.EtiFontColor := clWindowText
   else EditMotiu.EtiFontColor := clRed;

//AL OMPLIR EL MOTIU AVISEM SI JA EXISTEIX O NO UNA INCLUSIÓ A LLISTA D'ESPERA AMB LA FILIACIO Y EL MOTIU INTRODUÏTS
     if tEspera.FieldbyName('C_Motiu').asInteger <> 0
     then  if (MirarExistenciaEspera(tEspera.FieldbyName('C_Historia' ).asString,
                                     tEspera.FieldbyName('C_Motiu'    ).asString,
                                     tEspera.FieldbyName('C_Prestacio').asString)) <> 0
           then FerError( AVIS23, True );

end;

procedure TwFitxaEspera.tEspera_C_ModalitatChange(Sender: TField);
begin
   if ((EsPle(tEspera.FieldbyName('C_Modalitat').asString))  and (tEspera.FieldbyName('C_Modalitat').asString <> '0'))
   then EditModalitat.EtiFontColor := clWindowText
   else EditModalitat.EtiFontColor := clRed;
end;


procedure TwFitxaEspera.tEspera_C_CoordinadorChange(Sender: TField);
begin

   if EsPle(tEspera.FieldbyName('C_Coordinador').asString)
   then EditMetge.EtiFontColor := clWindowText
   else EditMetge.EtiFontColor := clRed;

   qEspecialitatMetge.Refresh;
end;

procedure TwFitxaEspera.RecalcularObligaciones;
begin
    tEspera_C_MotiuChange(       tEspera.FieldbyName('C_Motiu'      ));
    tEspera_C_ModalitatChange(   tEspera.FieldbyName('C_Modalitat'  ));
    tEspera_C_ProcedenciaChange( tEspera.FieldbyName('c_Procedencia'));
    tEspera_C_CaracterChange(    tEspera.FieldbyName('C_Caracter'   ));
    tEspera_C_CoordinadorChange( tEspera.FieldbyName('C_Coordinador'));
    tEspera_Cognom1Change(       tEspera.FieldbyName('Cognom1'      ));
    tEspera_SexoChange(          tEspera.FieldByName('Sexo'         )); // parte 49933
end;

//VFO-I. - PARTE 31413
procedure TwFitxaEspera.HYEdit5Exit(Sender: TObject);
begin
  if Recuperant then Comentari.SetFocus;
end;
//VFO-F.

procedure TwFitxaEspera.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   Canclose := tEspera.PuedeCerrar;
end;

procedure TwFitxaEspera.HYBarra1AlPost(Sender: TObject);
begin
    //EditHistoria.SetFocus;
    EditMetge.SetFocus; 
    if tEspera.State in [dsInsert] then
    begin
        tEsperaBeforePost(tEspera);  // Fem el BeforePost

        qInsEspera.ParamByName('c_espera').AsInteger:=Gen_ID(wData.Projecte.DataBaseName, 'CONTALLISTAESPERA', 1);
        if tEspera.FieldByName('c_historia').IsNull     then qInsEspera.ParamByName('C_HISTORIA').Clear
                                                        else qInsEspera.ParamByName('C_HISTORIA').AsInteger:=tEspera.FieldByName('c_historia').AsInteger;
        if tEspera.FieldByName('c_prestacio').IsNull    then FerError('PRESTACIÓ obligatòria',True)
                                                        else qInsEspera.ParamByName('c_prestacio').AsString:=tEspera.FieldByName('c_prestacio').AsString;

        qInsEspera.ParamByName('data_inclusio').AsDateTime := tEspera.FieldByName('data_inclusio').AsDateTime;
        qInsEspera.ParamByName('metge_programa').AsString  := tEspera.FieldByName('metge_programa').AsString;
        qInsEspera.ParamByName('c_estat').AsInteger        := tEspera.FieldByName('c_estat').AsInteger;

        if tEspera.FieldByName('data_preingres').IsNull then qInsEspera.ParamByName('data_preingres').Clear
                                                        else qInsEspera.ParamByName('data_preingres').AsDateTime:=tEspera.FieldByName('data_preingres').AsDateTime;
        if tEspera.FieldByName('hora_preingres').IsNull then qInsEspera.ParamByName('hora_preingres').Clear
                                                        else qInsEspera.ParamByName('hora_preingres').AsString:=tEspera.FieldByName('hora_preingres').AsString;
        if tEspera.FieldByName('nom').IsNull            then qInsEspera.ParamByName('nom').Clear
                                                        else qInsEspera.ParamByName('nom').AsString:=tEspera.FieldByName('nom').AsString;
        if tEspera.FieldByName('cognom1').IsNull        then FerError('COGNOM obligatori',True)
                                                        else qInsEspera.ParamByName('cognom1').AsString:=tEspera.FieldByName('cognom1').AsString;
        if tEspera.FieldByName('cognom2').IsNull        then qInsEspera.ParamByName('cognom2').Clear
                                                        else qInsEspera.ParamByName('cognom2').AsString:=tEspera.FieldByName('cognom2').AsString;
        if tEspera.FieldByName('telefon').IsNull        then qInsEspera.ParamByName('telefon').Clear
                                                        else qInsEspera.ParamByName('telefon').AsString:=tEspera.FieldByName('telefon').AsString;
        if tEspera.FieldByName('lloc').IsNull           then qInsEspera.ParamByName('lloc').Clear
                                                        else qInsEspera.ParamByName('lloc').AsString:=tEspera.FieldByName('lloc').AsString;
        if tEspera.FieldByName('sexo').IsNull           then qInsEspera.ParamByName('sexo').Clear
                                                        else qInsEspera.ParamByName('sexo').AsString:=tEspera.FieldByName('sexo').AsString;
        if tEspera.FieldByName('c_caracter').IsNull     then FerError('CARÀCTER obligatori',True)
                                                        else qInsEspera.ParamByName('c_caracter').AsInteger:=tEspera.FieldByName('c_caracter').AsInteger;
        if tEspera.FieldByName('exclos').IsNull         then qInsEspera.ParamByName('exclos').AsString:='N'
                                                        else qInsEspera.ParamByName('exclos').AsString:=tEspera.FieldByName('exclos').AsString;
        if tEspera.FieldByName('c_unitat').IsNull       then qInsEspera.ParamByName('c_unitat').Clear
                                                        else qInsEspera.ParamByName('c_unitat').AsInteger:=tEspera.FieldByName('c_unitat').AsInteger;
        if pMotiuIngres.Visible
        and (tEspera.FieldByName('c_motiu').AsInteger = 0) then FerError('MOTIU INGRÉS obligatori',True)
                                                           else qInsEspera.ParamByName('c_motiu').AsInteger:=tEspera.FieldByName('c_motiu').AsInteger;
        if pModalitat.Visible
        and tEspera.FieldByName('c_modalitat').IsNull   then FerError('MODALITAT obligatòria',True)
                                                        else qInsEspera.ParamByName('c_modalitat').AsInteger:=tEspera.FieldByName('c_modalitat').AsInteger;
        if pProcedencia.Visible
        and (tEspera.FieldByName('c_procedencia').AsInteger = 0) then FerError('PROCEDÈNIA obligatoria',True)
                                                                 else qInsEspera.ParamByName('c_procedencia').AsInteger:=tEspera.FieldByName('c_procedencia').AsInteger;
        if tEspera.FieldByName('datafixe').IsNull       then qInsEspera.ParamByName('datafixe').Clear
                                                        else qInsEspera.ParamByName('datafixe').AsDateTime:=tEspera.FieldByName('datafixe').AsDateTime;
        if tEspera.FieldByName('c_frecuencia').IsNull   then qInsEspera.ParamByName('c_frecuencia').Clear
                                                        else qInsEspera.ParamByName('c_frecuencia').AsString:=tEspera.FieldByName('c_frecuencia').AsString;
        if tEspera.FieldByName('intervencio').IsNull    then qInsEspera.ParamByName('intervencio').Clear
                                                        else qInsEspera.ParamByName('intervencio').AsString:=tEspera.FieldByName('intervencio').AsString;
        if tEspera.FieldByName('comentari').IsNull      then qInsEspera.ParamByName('comentari').Clear
                                                        else qInsEspera.ParamByName('comentari').AsString:=tEspera.FieldByName('comentari').AsString;
        if tEspera.FieldByName('c_coordinador').IsNull  then FerError('METGE COORDINADOR obligatori',True)
                                                        else qInsEspera.ParamByName('c_coordinador').AsString:=tEspera.FieldByName('c_coordinador').AsString;
        if tEspera.FieldByName('c_centrefac').IsNull    then qInsEspera.ParamByName('c_centrefac').Clear
                                                        else qInsEspera.ParamByName('c_centrefac').AsString:=tEspera.FieldByName('c_centrefac').AsString;
        if tEspera.FieldByName('c_client').IsNull       then qInsEspera.ParamByName('c_client').Clear
                                                        else qInsEspera.ParamByName('c_client').AsString:=tEspera.FieldByName('c_client').AsString;
        if tEspera.FieldByName('HCE_PERSON_ID').IsNull  then qInsEspera.ParamByName('HCE_PERSON_ID').Clear
                                                        else qInsEspera.ParamByName('HCE_PERSON_ID').AsInteger := tEspera.FieldByName('HCE_PERSON_ID').AsInteger;

        TRY qInsEspera.ExecSQL;

            // Fem l'afterPost
            if Recuperant then
            begin
              ShowMessage('Espera Històrica de la NHC: '+qInsEspera.ParamByName('C_Historia').asString+' recuperada.');
              Recuperant := False;
              miFtxEspHist.pEsperesHistoriques.RefreshSQL;
            end;
            if wMain.LastTraza=0 then wMain.LastTraza := wData.ObraTrazaControl(qInsEspera.ParamByName('C_Historia').asInteger,Self.Name,wMain.Aplica,qInsEspera.ParamByName('C_Espera').asInteger);
            wMain.AddStatusTraza('ë');

            Surt:=True;
            tEspera.Cancel; // l'aftercancel fa Close;
        EXCEPT
            //raise Exception.Create('Error al assignar Notes de Cobraments');
            on e: Exception do ShowMessage('Error en incloure a la llista d''espera.' + NLine +
                                           'C_ESPERA: ' + qInsEspera.ParamByName('c_espera').AsString + NLine + e.Message);
        END;
    end
    
    else tEspera.Post;
end;

procedure TwFitxaEspera.OmplirHistoria(c_historia: integer);
begin
    tEspera.FieldbyName('C_Historia').AsInteger := c_historia;
    tEspera_Nom.AsString := tEspera.FieldByName('Fili_NOMBRE').AsString;
    tEspera_Cognom1.AsString := tEspera.Fieldbyname('Fili_APELLIDO1').AsString;
    tEspera_Cognom2.AsString := tEspera.Fieldbyname('Fili_APELLIDO2').AsString;
    tEspera_Telefon.AsString := tEspera.FieldByName('Fili_TELEFONO').AsString;
    tEspera_C_Unitat.AsString := tEspera.FieldByName('Fili_UNITAT').AsString;
    tEspera_Sexo.AsString := tEspera.FieldByName('Fili_SEXO').AsString;
    EditHistoriaExit(nil);
end;

procedure TwFitxaEspera.CarregaPacient(id: Integer);
var
 HttpPersonResponse: THttpResponsePerson;
begin
  if id <> 0 then HttpPersonResponse := wDataHCE.CridaRestCarregarPersonaNovaHCE(id)
             else FerError('És obligatori informar el id de persona per poder-ne consultar les dades a la nova HCE.', True);

  if      HttpPersonResponse.OK = '-1' then FerError(HttpPersonResponse.Error)
  else if HttpPersonResponse.OK = '-2' then ShowMessage(HttpPersonResponse.Error)
  else begin
      if HttpPersonResponse.Person.NHC = ''     then EditHistoria.EditInterno.Field.Clear
                                                else EditHistoria.EditInterno.Field.Value := HttpPersonResponse.Person.NHC;
      if HttpPersonResponse.Person.Nom = ''     then HYEdit6.EditInterno.Field.Clear
                                                else HYEdit6.EditInterno.Field.Value      := UpperCase(HttpPersonResponse.Person.Nom);
      if HttpPersonResponse.Person.Cognom1 = '' then EditCognom1.EditInterno.Field.Clear
                                                else EditCognom1.EditInterno.Field.Value  := UpperCase(HttpPersonResponse.Person.Cognom1);
      if HttpPersonResponse.Person.Cognom2 = '' then HYEdit11.EditInterno.Field.Clear
                                                else HYEdit11.EditInterno.Field.Value     := UpperCase(HttpPersonResponse.Person.Cognom2);
      if HttpPersonResponse.Person.Telefon = '' then HYEdit12.EditInterno.Field.Clear
                                                else HYEdit12.EditInterno.Field.Value     := HttpPersonResponse.Person.Telefon;
      if HttpPersonResponse.Person.Genere = ''  then EditSexo.EditInterno.Field.Clear
                                                else EditSexo.EditInterno.Field.Value     := HttpPersonResponse.Person.Genere;
  end;
end;

procedure TwFitxaEspera.sbCreateModifyPersonClick(Sender: TObject);
begin
//  if wData.ES_PROVA then c_espera_intern := -1234567;  // proves amb insomnia
  
  setPanelEditable(False);
  if ePersonId.EditInterno.Field.IsNull or (ePersonId.EditInterno.Field.Value='0')
  then wDataHCE.CrearPersonaEspera(c_espera_intern)
  else begin
      c_espera_intern := ePersonId.EditInterno.Field.Value;
      wDataHCE.EditarPersona(ePersonId.EditInterno.Field.Value);
  end;
end;


procedure TwFitxaEspera.OmplirPacient(person: TPerson);
begin
  EditHistoria.EditInterno.Field.Clear;
  ePersonId.EditInterno.Field.Value := person.id;

  if person.NHC = ''     then EditHistoria.EditInterno.Field.Clear
                         else EditHistoria.EditInterno.Field.Value := person.NHC;
  if person.Nom = ''     then HYEdit6.EditInterno.Field.Clear
                         else HYEdit6.EditInterno.Field.Value      := UpperCase(person.Nom);
  if person.Cognom1 = '' then EditCognom1.EditInterno.Field.Clear
                         else EditCognom1.EditInterno.Field.Value  := UpperCase(person.Cognom1);
  if person.Cognom2 = '' then HYEdit11.EditInterno.Field.Clear
                         else HYEdit11.EditInterno.Field.Value     := UpperCase(person.Cognom2);
  if person.Telefon = '' then HYEdit12.EditInterno.Field.Clear
                         else HYEdit12.EditInterno.Field.Value     := person.Telefon;
  if person.Genere = ''  then EditSexo.EditInterno.Field.Clear
                         else EditSexo.EditInterno.Field.Value     := person.Genere;
  if person.Unitat = ''  then edtUnitat.EditInterno.Field.Clear
                         else edtUnitat.EditInterno.Field.Value    := person.Unitat;
end;

procedure TwFitxaEspera.setPanelEditable(b: Boolean);
begin
  PanelEditable.Visible := b;
  PanelReadOnly.Visible := not b;
  EditSexo.ReadOnly     := not b;
  EditSexo.Ctl3D        := b;
end;

procedure TwFitxaEspera.tEsperaCalcFields(DataSet: TDataSet);
begin
  if not DataSet.FieldByName('DATA_NAIX').IsNull then DataSet.FieldByName('Edat').AsInteger := Truncar((DateServer - DataSet.FieldByName('DATA_NAIX').AsDateTime)/365)
                                                 else DataSet.FieldByName('Edat').Clear;
end;

end.


