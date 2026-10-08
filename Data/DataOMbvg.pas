unit DataOMbvg;

interface

uses
  SysUtils, Classes, Diccionari, DB, HYSql, DBTables, Math, DateUtils, Variants, ImgList, Controls,
  uComunicatsEpi, uGuiaFarmacologica, HYDialogConsulta;

type
  TwDataOMbvg = class(TDataModule)
    P_Caduca: THYSqlProc;
    P_CaducaInf: THYSqlProc;
    Fili: TQuery;
    dsFili: TDataSource;
    qryTract: TQuery;
    dsTract: TDataSource;
    qryDiag: TQuery;
    dsDiag: TDataSource;
    qryOMInf: TQuery;
    qryOM: TQuery;
    qEpiLink: TQuery;
    qEpi: TQuery;
    qFactPredis: TQuery;
    dsqEpi: TDataSource;
    qryTractH: TQuery;
    qryOMH: TQuery;
    dsOMH: TDataSource;
    dsTractH: TDataSource;
    qryDiagH: TQuery;
    dsDiagH: TDataSource;
    dsEpiTots: TDataSource;
    qFPITots: TQuery;
    dsFPITots: TDataSource;
    dsFPETots: TDataSource;
    qFPETots: TQuery;
    dsOM: TDataSource;
    dsOMInf: TDataSource;
    EpiTots: THYSqlBrowse;
    qOMInfH: TQuery;
    dsOMInfH: TDataSource;
    T_DiferenciaPresa_I: THYSqlTrigger;
    T_DiferenciaPresa_U: THYSqlTrigger;
    P_DiferenciaPresa: THYSqlProc;
    EpiTots_C_Historia: TIntegerField;
    EpiTots_C_Tractament: TIntegerField;
    EpiTots_C_Comunicat: TIntegerField;
    EpiTots_Data: TDateTimeField;
    EpiTots_C_Metge: TStringField;
    EpiTots_Nosocomial: TStringField;
    EpiTots_Tipus_Infeccio: TStringField;
    EpiTots_Diagnostic: TStringField;
    EpiTots_Fact_Predis_I: TStringField;
    EpiTots_Fact_Predis_E: TStringField;
    EpiTots_EstatAntibiograma: TStringField;
    EpiTots_Germen1: TStringField;
    EpiTots_Germen2: TStringField;
    qAntibiotics: TQuery;
    dsAntibiotics: TDataSource;
    T_DPI_tmp: THYSqlTrigger;
    T_DPU_tmp: THYSqlTrigger;
    P_DP_tmp: THYSqlProc;
    mbIcones: TImageList;
    P_Hores: THYSqlProc;
    T_ActivaSeguent: THYSqlTrigger;
    qryOMC_TRACTAMENT: TIntegerField;
    qryOMC_ORDREMEDICA: TIntegerField;
    qryOMGTN: TStringField;
    qryOMN_MEDICAMENT: TStringField;
    qryOMDOSI: TFloatField;
    qryOMUNITAT_MESURA: TStringField;
    qryOMC_VIA: TStringField;
    qryOMC_FREQUENCIA: TStringField;
    qryOMDATA_INICI: TDateTimeField;
    qryOMDURADA: TIntegerField;
    qryOMDIES: TIntegerField;
    qryOMHORA_INICI: TSmallintField;
    qryOMHORA_INICISD: TSmallintField;
    qryOMHORA_INICI_T: TSmallintField;
    qryOMRESTEN: TIntegerField;
    qryOMOBSERVACIONS: TStringField;
    qryOMMETGE: TStringField;
    qryOMC_ESTAT: TStringField;
    qryOMHORA_PROPERA: TSmallintField;
    qryOMMOTIU_ANTIBIOTIC: TSmallintField;
    qryOMN_MOTIU: TStringField;
    qryOMC_PROFILAXI: TStringField;
    qryOMANULA_SEGUENT: TStringField;
    qryOMMOTIU_EPF: TStringField;
    qryOMN_MEDICAMENT_FG: TStringField;
    qryOMMOTIU_FG_UR: TStringField;
    qryOMDATA_SUSPENSIO: TDateTimeField;
    qryOMMETGE_SUSPEN: TStringField;
    qryOMDATA_CADUCITAT: TDateTimeField;
    qryOMOM_GENERA: TIntegerField;
    qryOMFREQ_GENERA: TStringField;
    qryOMOCURRENCIES: TIntegerField;
    qryOMCADUCITAT: TDateTimeField;
    qryOMCOMENTARI_ALERGIA: TStringField;
    qryOMBMTEST: TStringField;
    qryOMESGUIA: TStringField;
    EpiTots_Multiresistent1: TStringField;
    EpiTots_Multiresistent2: TStringField;
    EpiTots_C0_0: TStringField;
    EpiTots_C0_1: TStringField;
    EpiTots_C0_2: TStringField;
    EpiTots_C1_0: TStringField;
    EpiTots_C1_1: TStringField;
    EpiTots_C1_2: TStringField;
    EpiTots_C1_3: TStringField;
    EpiTots_C2_0: TStringField;
    EpiTots_C2_1: TStringField;
    EpiTots_C2_2: TStringField;
    EpiTots_C2_3: TStringField;
    EpiTots_C3_0: TStringField;
    EpiTots_C3_1: TStringField;
    EpiTots_C3_2: TStringField;
    EpiTots_C3_3: TStringField;
    EpiTots_C3_4: TStringField;
    EpiTots_C3_5: TStringField;
    EpiTots_C3_6: TStringField;
    EpiTots_C3_7: TIntegerField;
    EpiTots_C3_8: TStringField;
    EpiTots_C3_9: TStringField;
    EpiTots_C3_10: TSmallintField;
    EpiTots_C3_11: TStringField;
    EpiTots_C3_12: TStringField;
    EpiTots_C3_13: TStringField;
    EpiTots_C3_14: TStringField;
    cOMForaFreq: THYConsulta;
    qryOMNOM_MAJ: TStringField;
    qryOMC_PRESENTACIO: TStringField;
    qryOMREG3_P1: TStringField;
    qryOMREG3_P2: TStringField;
    qryOMG_POBLACIONAL: TSmallintField;
    qryOMNUM_DOSI: TIntegerField;
    qryOMCRONICA: TStringField;
    qryOMDNEUROPATIC: TStringField;
    qVigent: TQuery;
    qVigentID: TIntegerField;
    qVigentC_HISTORIA: TIntegerField;
    qVigentC_TRACTAMENT: TIntegerField;
    qVigentMEDICAMENT: TStringField;
    qVigentDOSI: TFloatField;
    qVigentC_UM: TStringField;
    qVigentN_VIA: TStringField;
    qVigentN_FREQ: TStringField;
    qVigentDATA_CONSULTA: TDateTimeField;
    qVigentOBSERVACIONS: TStringField;
    dsVigent: TDataSource;
    procedure EpiTotsAfterScroll(DataSet: TDataSet);
    procedure EpiTotsAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean; NombreConsulta: String;
      var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure EpiTotsAlConsultaQueCamposMostrar(Sender: TObject; NombreConsulta: String; var QueCamposVer: String);
    procedure qryOMCalcFields(DataSet: TDataSet);
    procedure EpiTotsAfterEdit(DataSet: TDataSet);
    procedure cOMForaFreqAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure qryTractAfterOpen(DataSet: TDataSet);
    procedure qVigentAfterOpen(DataSet: TDataSet);
  private
  public
  end;


var
  wDataOMbvg: TwDataOMbvg;
  CaducitatInfermeria: Integer;
  CaducitatOM: Integer;
  CaducitatOMCronica: Integer;
//-  FormOM: TwFitxaOM;
  FormComunicats: TwComunicatsEpi;
  FitxaGuia: TwGuiaFarmacologica;
  SenseAntibiotic: Boolean;

implementation

uses Data, DataBasics, Funciones, DataOMComun, DataProductes, DataOMdics,
  DataVerHis, FichaVerHis, FuncionsCurs;

{$R *.dfm}

{ TwDataOMbvg }


// Poden modificar l'antibiograma dels comunicats amb estat "PENDENT" (encara q el pacient no tingui prestació activa)
procedure TwDataOMbvg.EpiTotsAfterScroll(DataSet: TDataSet);
begin
  FormOM.tbAntibiograma.Enabled := (Trim(EpiTots.FieldByName('ESTATANTIBIOGRAMA').AsString) = 'PENDENT');
  FormOM.tbNoProcedeix.Enabled  := (Trim(EpiTots.FieldByName('ESTATANTIBIOGRAMA').AsString) = 'PENDENT');
end;


// Consulta de gèrmens:
procedure TwDataOMbvg.EpiTotsAlConsultarCampoFiltro2(Sender: TObject; var Personalizada: Boolean; NombreConsulta: String;
  var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
  Personalizada := False;

  // Si estem modificant un comunicat:
  if (EpiTots.State in [dsEdit]) then
  begin
    if (UpperCase(NombreConsulta) = 'GERMENS1') then
    begin
      if FormOM.eGermen1.ReadOnly then Exit;
      Subfiltro := 'C_ESTAT = "V"';
    end
    else if (UpperCase(NombreConsulta) = 'GERMENS2') then
    begin
      if FormOM.eGermen2.ReadOnly then Exit;
      SubFiltro := Format('C_ESTAT = "V" and C_GERMEN <> "%s"', [EpiTots.FieldByName('Germen1').AsString]);
    end;
  end
  else SubFiltro := '';
end;

procedure TwDataOMbvg.EpiTotsAlConsultaQueCamposMostrar(Sender: TObject; NombreConsulta: String; var QueCamposVer: String);
begin
  if (UpperCase(NombreConsulta) = 'GERMEN1')
  or (UpperCase(NombreConsulta) = 'GERMEN2') then QueCamposVer := 'C_GERMEN, N_GERMEN'
end;



procedure TwDataOMbvg.qryOMCalcFields(DataSet: TDataSet);
var
  Ocurrencies: Integer;
  Cadencia: Integer;
  dia_caduca: TDateTime;
begin
    if qryOM.FieldByName('OM_GENERA').IsNull
    then qryOM.FieldByName('CADUCITAT').AsDateTime := qryOM.FieldByName('DATA_CADUCITAT').AsDateTime

    else begin
        Ocurrencies := qryOM.FieldByName('OCURRENCIES').AsInteger;
        Cadencia := GutSelect('select CONTROLFREQ from FREQUENCIES where C_FREQUENCIA = "%s"', [qryOM.FieldByName('C_FREQUENCIA').AsString]);

        if (qryOM.FieldByName('FREQ_GENERA').AsString = '1MES')
        then dia_caduca := SumarMes(qryOM.FieldByName('DATA_INICI').AsDateTime, Ocurrencies-1)
        else dia_caduca := qryOM.FieldByName('DATA_INICI').AsDateTime + (Cadencia * (Ocurrencies-1));

        // afegim l'hora de caducitat (hora inici + cinc minuts)
        qryOM.FieldByName('CADUCITAT').AsDateTime := dia_caduca + qryOM.FieldByName('HORA_INICI').AsInteger/24 + 5/1440;
    end;
end;

procedure TwDataOMbvg.EpiTotsAfterEdit(DataSet: TDataSet);
begin
  DataSet.FieldByName('Multiresistent1').Clear;
  DataSet.FieldByName('Multiresistent2').Clear;    
end;

procedure TwDataOMbvg.cOMForaFreqAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  historia: string;
  F: TwFichaVerHis;
begin
    historia := Datos.FieldByName('C_HISTORIA').AsString;

    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(historia, False);
        Tabs.ActivePage := TabOM;
        TabsChange(Sender);
    end;
    qryOM.Locate('C_ORDREMEDICA', Datos.FieldByName('C_OrdreMedica').AsInteger, []);
end;

procedure TwDataOMbvg.qryTractAfterOpen(DataSet: TDataSet);
begin
    qryTract.Last;
    qryTract.First;
    // Si hi ha més d'una prestació activa amb dret de tenir ordres mèdiques, evitem la 0000
    if (qryTract.FieldByName('C_Prestacio').AsString = '0000') then qryTract.Next;  // si era últim (únic) registre, no farà res, ok. (evito RecordCount, que porta problemes de vegades)
end;

procedure TwDataOMbvg.qVigentAfterOpen(DataSet: TDataSet);
begin
  FormOM.panelVigents.Visible := not qVigent.FieldByName('data_consulta').IsNull;
end;

end.



======================================================
CONSULTES DEL DICCIONARI "ORDRES MÈDIQUES"

Via             **
Frequencia
FrequenciaSF    **
UnitatMesura    **
UnitatMesuraP   **
UnitatMesuraP2  **
Medicament      **
MetgePauta
MetgeSuspen
Producte        **
Producte2       **










