unit DataInfermeriaQ;

interface

uses
  SysUtils, Classes, DB, DBTables, kbmMemTable, HYSql, HYDialogConsulta,
  IBCustomDataSet, IBQuery, IBSQL, IdIOHandler, IdIOHandlerSocket,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  TwDataInfermeriaQ = class(TDataModule)
    qInferTasques: TQuery;
    dsInferTasques: TDataSource;
    qInferTasquesSusp: TQuery;
    dsInferTasquesSusp: TDataSource;
    InsInferTasques_Eliminar: TQuery;
    dsDocsInfer: TDataSource;
    qDocsInfer: TQuery;
    InsDocsInfer: TQuery;
    qInferIng: TQuery;
    dsInferIng: TDataSource;
    qInferDies: TQuery;
    dsInferDies: TDataSource;
    qInferDadesDia: TQuery;
    qInferDadesDiaC_ITEM: TIntegerField;
    qInferDadesDiaN_ITEM: TStringField;
    qInferDadesDiaVALOR: TStringField;
    qInferDadesDiaUNITAT_MESURA: TStringField;
    qInferDadesDiaHORA: TDateTimeField;
    qInferDadesDiaUSUARI: TStringField;
    qInferDadesDiaCOLOR: TStringField;
    qInferDadesDiaANULAT: TStringField;
    qInferDadesDiaBALANSHIDRIC: TStringField;
    qInferDadesDiaC_TRACTAMENT: TIntegerField;
    qInferDadesDiaID: TIntegerField;
    qInferDadesDiaDATA: TDateTimeField;
    dsInferDadesDia: TDataSource;
    qInferParams: TQuery;
    dsInferParams: TDataSource;
    qInferEvol: TQuery;
    dsInferEvol: TDataSource;
    qInferDolor: TQuery;
    dsInferDolor: TDataSource;
    qGrafInfer: TQuery;
    MTEvolFC: TkbmMemTable;
    MTEvolFCVALOR: TFloatField;
    MTEvolFCDATA_VALOR: TDateTimeField;
    MTEvolFR: TkbmMemTable;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    MTEvolTC: TkbmMemTable;
    FloatField2: TFloatField;
    DateTimeField2: TDateTimeField;
    MTEvolPAS: TkbmMemTable;
    FloatField3: TFloatField;
    DateTimeField3: TDateTimeField;
    qInferOmpleMT: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField4: TDateTimeField;
    FloatField4: TFloatField;
    MTEvolPAD: TkbmMemTable;
    FloatField5: TFloatField;
    DateTimeField5: TDateTimeField;
    qRegistresInfer: TQuery;
    dsRegistresInfer: TDataSource;
    qUPPCap: TQuery;
    qOMAdmDies: TQuery;
    dsOMAdmDies: TDataSource;
    qAdmDia: TQuery;
    dsAdmDia: TDataSource;
    qOM: TQuery;
    dsOM: TDataSource;
    qAdmOM: TQuery;
    dsAdmOM: TDataSource;
    qOMC_TRACTAMENT: TIntegerField;
    qOMC_ORDREMEDICA: TIntegerField;
    qOMC_MEDICAMENT: TStringField;
    qOMN_MEDICAMENT: TStringField;
    qOMC_PRODUCTE: TIntegerField;
    qOMDOSI: TFloatField;
    qOMUNITAT_MESURA: TStringField;
    qOMC_VIA: TStringField;
    qOMC_FREQUENCIA: TStringField;
    qOMC_FREQUENCIA_INF: TStringField;
    qOMDATA_INICI: TDateTimeField;
    qOMDATA_PAUTAT: TDateTimeField;
    qOMHORA_INICI: TSmallintField;
    qOMHORA_INICI_INF: TSmallintField;
    qOMHORA_I: TFloatField;
    qOMOBSERVACIONS: TStringField;
    qOMC_ESTAT: TStringField;
    qOMMETGE_PAUTA: TStringField;
    qOMDATA_SUSPENSIO: TDateTimeField;
    qOMDATA_INICI_INF: TDateTimeField;
    qOMMETGE_S: TStringField;
    qOMMETGE_SUSPEN: TStringField;
    qInferIngC_TRACTAMENT: TIntegerField;
    qInferIngC_PRESTACIO: TStringField;
    qInferIngDATA_INGRES: TDateTimeField;
    qInferIngDATA_ALTA: TDateTimeField;
    qInferIngRESUM: TStringField;
    qOMAdmDiesDIA: TDateTimeField;
    qOMAdmDiesC_TRACTAMENT: TIntegerField;
    qAdmDiaID: TIntegerField;
    qAdmDiaDATA_PRESA: TDateTimeField;
    qAdmDiaADMINISTRACIO: TStringField;
    qAdmDiaMOTIU: TStringField;
    qAdmDiaU_INSULINA: TSmallintField;
    qAdmDiaDATA_ADMIN: TDateTimeField;
    qAdmDiaC_USUARI_ADMIN: TStringField;
    qAdmDiaC_TRACTAMENT: TIntegerField;
    qAdmDiaC_ORDREMEDICA: TIntegerField;
    qAdmDiaC_MEDICAMENT: TStringField;
    qAdmDiaN_MEDICAMENT: TStringField;
    qAdmDiaC_PRODUCTE: TIntegerField;
    qAdmDiaDOSI: TFloatField;
    qAdmDiaUNITAT_MESURA: TStringField;
    qAdmDiaC_VIA: TStringField;
    qAdmDiaC_FREQUENCIA: TStringField;
    qAdmDiaC_FREQUENCIA_INF: TStringField;
    qAdmDiaC_FREQ: TStringField;
    qInferIngPRESTACIO: TStringField;
    qOMC_FREQ: TStringField;
    qOMRISC: TStringField;
    qAdmOMDATA_PRESA: TDateTimeField;
    qAdmOMADMINISTRACIO: TStringField;
    qAdmOMU_INSULINA: TSmallintField;
    qAdmOMC_USUARI_ADMIN: TStringField;
    qAdmOMDATA_ADMIN: TDateTimeField;
    qAdmOMUSUARI: TStringField;
    qAdmOMC_USUARI_RISC: TStringField;
    qAdmDiaC_USUARI_RISC: TStringField;
    qAdmDiaUSUARI: TStringField;
    qInferDadesDiaORDRE: TIntegerField;
    qInferDadesDiaUM: TStringField;
    qInferEvolVALOR: TStringField;
    qInferEvolUNITAT_MESURA: TStringField;
    qInferEvolDATA_VALOR: TDateTimeField;
    qInferEvolNORMALITAT: TFloatField;
    qInferEvolUM: TStringField;
    qInferEvolC_ITEM: TIntegerField;
    qAdmOMMOTIU: TStringField;
    qAdmOMCOMENTARI: TStringField;
    qDrenaCap: TQuery;
    qDrenaLin: TQuery;
    dsDrenaCap: TDataSource;
    dsDrenaLin: TDataSource;
    qDrenaLinVALOR: TIntegerField;
    qDrenaLinDATA_VALOR: TDateTimeField;
    qDrenaLinINFER: TStringField;
    qDrenaLinCANVI: TStringField;
    qDrenaLinANULAT: TStringField;
    qDrenaLinDATA_REGISTRE: TDateTimeField;
    qDrenaLinUSUARI: TStringField;
    qDrenaLinID: TIntegerField;
    qDrenaLinLINIA: TIntegerField;
    qRegModal_eliminar: TQuery;
    qRegMotiu_eliminar: TQuery;
    qOMC_FAMILIA4: TStringField;
    dsCatVPQ: TDataSource;
    bCatVPQ_Eliminar: THYSqlBrowse;
    bCatVPQ_Eliminar_ID: TIntegerField;
    bCatVPQ_Eliminar_ECOGNITIU: TStringField;
    bCatVPQ_Eliminar_ESPASTICITAT: TStringField;
    bCatVPQ_Eliminar_ATB: TStringField;
    bCatVPQ_Eliminar_VOLUM: TStringField;
    bCatVPQ_Eliminar_PERFUSIONS: TStringField;
    bCatVPQ_Eliminar_UBICACIO: TSmallintField;
    bCatVPQ_Eliminar_C0_0: TSmallintField;
    bCatVPQ_Eliminar_C0_1: TStringField;
    bCatVPQ_Eliminar_C0_2: TSmallintField;
    bCatVPQ_Eliminar_C0_3: TStringField;
    cInfInferValidar: THYConsulta;
    cDocsInfer: THYConsulta;
    qUPPLin: TQuery;
    qUPPRisc: TQuery;
    dsUPPCap: TDataSource;
    dsUPPRisc: TDataSource;
    dsUPPLin: TDataSource;
    qUPPImatge: TQuery;
    dsUPPImatge: TDataSource;
    qUPPCapID: TIntegerField;
    qUPPCapC_HISTORIA: TIntegerField;
    qUPPCapC_TRACTAMENT: TIntegerField;
    qUPPCapDATA_CREACIO: TDateTimeField;
    qUPPCapINT_EXT: TStringField;
    qUPPCapESTAT: TSmallintField;
    qUPPCapLOCALITZACIO: TSmallintField;
    qUPPCapDATA_FINALITZA: TDateTimeField;
    qUPPCapUSER_FINALITZA: TStringField;
    qUPPCapDATA_ANULA: TDateTimeField;
    qUPPCapUSER_ANULA: TStringField;
    qUPPCapDATA_FINALITZA_AUTO: TDateTimeField;
    qUPPCapMOTIU_FINALITZACIO: TSmallintField;
    qUPPCapVISTO: TStringField;
    qUPPCapC_USER_VISTO: TStringField;
    qUPPCapDATA_VISTO: TDateTimeField;
    qUPPCapN_LOCALITZACIO: TStringField;
    qUPPCapRESUM: TStringField;
    qUPPCapDATA_INGRES: TDateTimeField;
    qUPPCapDATA_ALTA: TDateTimeField;
    qUPPCapMOTIU_FI: TStringField;
    qUPPCapEMINA: TIntegerField;
    insUPPLoc: TQuery;
    qUPPCapUPP: TStringField;
    qInferEvolID: TIntegerField;
    qTractOM: TQuery;
    IntegerField1: TIntegerField;
    StringField3: TStringField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    dsTractOM: TDataSource;
    qCatVPQ: TQuery;
    qAillaGermens: TQuery;
    dsAillaGermens: TDataSource;
    insInferTasques: TIBSQL;
    cNoEvacua: THYConsulta;
    _qCodiAparell: TQuery;
    _dsCodiAparell: TDataSource;
    cMaterialIncont: THYConsulta;
    cTancamentAcollida: THYConsulta;
    _qCodiAparellID: TIntegerField;
    _qCodiAparellCODI_APARELL: TStringField;
    cDesnutricio: THYConsulta;
    cContencions: THYConsulta;
    cContencionsPacient: THYConsulta;
    qContencions: TQuery;
    procedure DataModuleCreate(Sender: TObject);

    procedure qInferIngAfterScroll(DataSet: TDataSet);
    procedure qInferIngCalcFields(DataSet: TDataSet);

    procedure qInferTasquesAfterOpen(DataSet: TDataSet);

    procedure qInferDiesAfterScroll(DataSet: TDataSet);
    procedure qInferCalcFields(DataSet: TDataSet);
    procedure qInferDadesDiaAfterScroll(DataSet: TDataSet);
    procedure qInferParamsAfterScroll(DataSet: TDataSet);

    procedure qRegistresInferAfterScroll(DataSet: TDataSet);

    procedure qUPPCapCalcFields(DataSet: TDataSet);
    procedure qUPPCapAfterScroll(DataSet: TDataSet);
    procedure qUPPLinAfterScroll(DataSet: TDataSet);

    procedure qDrenaCapAfterScroll(DataSet: TDataSet);
    procedure qDrenaLinAfterScroll(DataSet: TDataSet);

    procedure qTractOMAfterScroll(DataSet: TDataSet);
    procedure qTractOMCalcFields(DataSet: TDataSet);
    procedure qOMCalcFields(DataSet: TDataSet);
    procedure qOMAfterScroll(DataSet: TDataSet);
    procedure qAdmCalcFields(DataSet: TDataSet);

    procedure cInfInferValidarAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure ConsultesAlTancar(Sender: THYConsulta);
    procedure cInfInferValidarConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
    procedure cDocsInferAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure qInferEvolAfterScroll(DataSet: TDataSet);
    procedure qAillaGermensAfterScroll(DataSet: TDataSet);
    procedure cNoEvacuaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cNoEvacuaConsultaGetSqlField(Sender: THYConsulta;
      var SqlField: String);
    procedure cMaterialIncontAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cMaterialIncontEnClicAltreBoto(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cTancamentAcollidaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cDesnutricioAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cContencionsAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cContencionsPacientAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cContencionsPacientAlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);

  private
    VeDeAlarma: Boolean;
    RutaInferValidar: String;
    RutaImatges: String;
    pathImgH: String;
  public
    Procedure InitQuerys(c_historia: String);
    Procedure TancaQuerys;
    procedure RefrescarUPP;
  end;

var
  wDataInfermeriaQ: TwDataInfermeriaQ;

implementation

uses DataVerHis, FichaVerHis, Data, DbChart, TeEngine, Funciones, Funcions, FuncionsCurs, DataInfermeria,
  ComCtrls, ExtCtrls;

{$R *.dfm}

procedure TwDataInfermeriaQ.DataModuleCreate(Sender: TObject);
begin
    RutaInferValidar := GutSelect('select RUTA from DIRECTORIS where NOM = "INFER2"', []);
    RutaImatges := GutSelect('select RUTA from DIRECTORIS where NOM = "IMATGES"' ,[]);
    VeDeAlarma := False;
end;


procedure TwDataInfermeriaQ.InitQuerys(c_historia: String);
begin
    qInferIng.ParamByName('historia').AsString := c_historia;
    qUPPCap.ParamByName('historia').AsString := c_historia;
    
    pathImgH := IdentificaDirectori(RutaImatges, c_historia);
end;


procedure TwDataInfermeriaQ.TancaQuerys;
begin
    qInferIng.Close;
    qInferDies.Close;
    qInferDadesDia.Close;
    qInferParams.Close;
    qInferEvol.Close;
    qInferDolor.Close;
    qGrafInfer.Close;

    MTEvolTC.Close;
    MTEvolFC.Close;
    MTEvolFR.Close;
    MTEvolPAS.Close;
    MTEvolPAD.Close;

    qInferTasques.Close;
    qInferTasquesSusp.Close;
end;



procedure TwDataInfermeriaQ.qInferIngAfterScroll(DataSet: TDataSet);
begin
    if (wDataVerHis.F.PageControlInfer.ActivePage = wDataVerHis.F.TabTasques) then
    begin
        qInferTasques.Close;
        qInferTasquesSusp.Close;
        qInferTasques.ParamByName('c_tractament').AsInteger := qInferIng.FieldByName('C_Tractament').AsInteger;
        qInferTasquesSusp.ParamByName('c_tractament').AsInteger := qInferIng.FieldByName('C_Tractament').AsInteger;
        qInferTasques.Open;
        qInferTasquesSusp.Open;
        wDataVerHis.F.gOMInf.Visible := (qInferIng.FieldByName('C_Tractament').AsInteger = wDataVerHis.F.IngresActiu.C_Tractament);
        wDataVerHis.F.splitOMInf.Visible := wDataVerHis.F.gOMInf.Visible;
        wDataVerHis.F.splitOMInf.Top := wDataVerHis.F.gOMInf.Top + wDataVerHis.F.gOMInf.Height;
    end
    else if (wDataVerHis.F.PageControlInfer.ActivePage = wDataVerHis.F.TabGrafica) then
    begin
        wDataVerHis.F.VeureGrafica := False;
        wDataVerHis.F.GraficInfer.SendToBack;
        qInferParams.Close;
        qInferEvol.Close;
        qGrafInfer.Close;
        qInferEvol.SQL[3]  := Format('where ID.C_TRACTAMENT = %d', [qInferIng.FieldByName('C_Tractament').AsInteger]);
        qGrafInfer.SQL[3]  := Format('where ID.C_TRACTAMENT = %d', [qInferIng.FieldByName('C_Tractament').AsInteger]);
        wDataVerHis.F.CarregaGraficaInfer;
    end
    else if (wDataVerHis.F.PageControlInfer.ActivePage = wDataVerHis.F.TabDrenatges) then
    begin
        qDrenaCap.Close;
        qDrenaCap.ParamByName('c_tractament').AsInteger := qInferIng.FieldByName('C_Tractament').AsInteger;
        qDrenaCap.Open;
    end
    else if (wDataVerHis.F.PageControlInfer.ActivePage = wDataVerHis.F.TabRegistres) then
    begin
        qAillaGermens.Close;
        qCatVPQ.Close;
//-        qCodiAparell.Close;
        qRegistresInfer.Close;
        qRegistresInfer.ParamByName('c_tractament').AsInteger := qInferIng.FieldByName('C_Tractament').AsInteger;
        qRegistresInfer.Open;
//-        qCodiAparell.Open;
        qCatVPQ.Open;
        qAillaGermens.Open;
    end
    else if (wDataVerHis.F.PageControlInfer.ActivePage = wDataVerHis.F.TabDocumInf) then
    begin
        qDocsInfer.Close;
        qDocsInfer.ParamByName('c_tractament').AsInteger := qInferIng.FieldByName('C_Tractament').AsInteger;
        qDocsInfer.Open;
    end;
end;


procedure TwDataInfermeriaQ.qInferIngCalcFields(DataSet: TDataSet);
begin
    // Mostrem la prestació i data d'ingrés del tractament
    qInferIng.FieldByName('PRESTACIO').AsString := ' ' + qInferIng.FieldByName('RESUM').AsString + ' del ' +
                                                   FormatDateTime('dd-mm-yyyy', qInferIng.FieldByName('DATA_INGRES').AsDateTime);
end;


// --------------- //
// --  TASQUES  -- //
// --------------- //

procedure TwDataInfermeriaQ.qInferTasquesAfterOpen(DataSet: TDataSet);
begin
    wDataVerHis.F.tbSuspendre.Enabled := (qInferIng.FieldByName('C_Tractament').AsInteger = wDataVerHis.F.IngresActiu.C_Tractament)
                                         and (qInferTasques.RecordCount > 0);
end;


// --------------- //
// --  GRÀFICA  -- //
// --------------- //

procedure TwDataInfermeriaQ.qInferDiesAfterScroll(DataSet: TDataSet);
begin
    wDataVerHis.F.pRegistres.Caption := ' REGISTRES DEL DIA ' + FormatDateTime('dd/mm/yyyy', qInferDies.FieldByName('DIA').AsDateTime)
end;


// Mostrem els literals corresponents en funció dels valors introduïts:
procedure TwDataInfermeriaQ.qInferCalcFields(DataSet: TDataSet);
var
  P1, P2, pctl: String;
begin
    // Cetonúria
    if (DataSet.FieldByName('C_Item').AsInteger = 22) then
    begin
        DataSet.FieldByName('UM').AsString := GutSelect('select N_CODI from CODICAMPS where TIPUSCODI = "INFERCETONURIA" and C_CODI = %s',
                                                        [DataSet.FieldByName('Valor').AsString]);
    end
    // Alimentació
    else if (DataSet.FieldByName('C_Item').AsInteger = 26) then
    begin
        DataSet.FieldByName('UM').AsString := GutSelect('select N_CODI from CODICAMPS where TIPUSCODI = "INFERALIMENTACIO" and C_CODI = %s',
                                                        [DataSet.FieldByName('Valor').AsString]);
    end
    // Percentil IMC
    else if (DataSet.FieldByName('C_Item').AsInteger = 57) then
    begin
        // Busquem el valor a la taula de percentils
        // inferior immediat
        P1 := GutSelect('select PERCENTIL from IMC_PERCENTILS where VALORZ = (select Max(VALORZ) from IMC_PERCENTILS where VALORZ <= %s)',
                        [DataSet.FieldByName('Valor').AsString]);
        // superior immediat
        P2 := GutSelect('select PERCENTIL from IMC_PERCENTILS where VALORZ = (select Min(ValorZ) from IMC_PERCENTILS where ValorZ >= %s)',
                        [DataSet.FieldByName('Valor').AsString]);

        if      (P1 = P2) then pctl := P1
        else if (P1 = '') then pctl := 'Per sota de ' + P2
        else if (P2 = '') then pctl := 'Per sobre de ' + P1
        else                   pctl := 'Entre ' + P1 + ' i ' + P2;

        DataSet.FieldByName('UM').AsString := pctl;
    end
    // Per a la resta, mostrem la unitat de mesura
    else DataSet.FieldByName('UM').AsString := DataSet.FieldByName('Unitat_Mesura').AsString;
end;


// Ens col·loquem al paràmetre corresponent, per veure'n l'evolució:
procedure TwDataInfermeriaQ.qInferDadesDiaAfterScroll(DataSet: TDataSet);
begin
    wDataVerHis.F.pActuacio.Hide;

    qInferParams.Locate('C_ITEM', DataSet.FieldByName('C_ITEM').AsInteger, []);

    with wDataVerHis.F do
    begin
        mActuacio.Lines.Clear;
        if (DataSet.FieldByName('C_ITEM').AsInteger = 20)
        then mActuacio.Text := GutSelect('select RESPOSTA from IMCRESPONDRE where ID = %d', [DataSet.FieldByName('ID').AsInteger]);

        pActuacio.Visible := (mActuacio.Text <> '');
    end;
end;


// Muntem la gràfica, si n'hi ha d'haver:
procedure TwDataInfermeriaQ.qInferParamsAfterScroll(DataSet: TDataSet);
begin
    if not qInferEvol.Active then Exit;

    wDataVerHis.F.GDolor.Hide;
    wDataVerHis.F.splitDolor.Hide;

    wDataVerHis.F.GraficInfer.Title.Text.Text := qInferParams.FieldByName('N_Item').AsString;

    if (qGrafInfer.RecordCount = 0) or (qInferParams.FieldByName('TEGRAFICA').AsString = 'N') then
    begin
      wDataVerHis.F.GraficInfer.SendToBack;
      wDataVerHis.F.VeureGrafica := False;
    end
    else begin
      with wDataVerHis.F do
      begin
        GraficInfer.LeftAxis.Automatic := False;
        GraficInfer.LeftAxis.Minimum := -MaxInt;
        GraficInfer.LeftAxis.Maximum := MaxInt;
        GraficInfer.LeftAxis.Minimum := qInferParams.FieldByName('ValorMin').AsFloat;
        GraficInfer.LeftAxis.Maximum := qInferParams.FieldByName('ValorMax').AsFloat;
        GraficInfer.LeftAxis.Increment := qInferParams.FieldByName('Increment').AsInteger;
        GraficInfer.LeftAxis.LabelStyle := talValue;

        // gràfica
        SFuncio.DataSource := qGrafInfer;
        SFuncio.Title := qInferParams.FieldByName('N_Item').AsString;
        SFuncio.XValues.ValueSource := 'DATA_VALOR';
        SFuncio.YValues.ValueSource := 'VALOR';

        SFuncio.Marks.Style := smsValue;
        SFuncio.Marks.Visible := False;

        // normalitat
        SNormalitat.DataSource := qGrafInfer;
        SNormalitat.Title := 'Normalitat';
        SNormalitat.XValues.ValueSource := 'DATA_VALOR';
        SNormalitat.YValues.ValueSource := 'NORMALITAT';

        SNormalitat.Marks.Style := smsXValue;
        SNormalitat.Marks.Visible := False;

        GraficInfer.Legend.Visible := False;

        // si hi ha normalitat, la mostrem:
        if (not qInferParams.FieldByName('Normalitat').IsNull) then SNormalitat.SeriesColor := $0003EF32
        else SNormalitat.SeriesColor := GraficInfer.Color;

        GraficInfer.BottomAxis.LabelStyle := talValue;

        sbEvolucio.Down := False;
        sbEvolucioClick(sbEvolucio);

        if VeureGrafica then GraficInfer.CheckDatasource(SFuncio);
      end;
    end;

    if (qInferParams.FieldByName('C_ITEM').AsInteger = 35) then
    begin
      if (0 < GutSelect('select count(*) from INFERDADES where C_TRACTAMENT = %d and C_ITEM = 35 and VALOR ="S" and ANULAT = "N" ',
                        [qInferIng.FieldByName('C_Tractament').AsInteger]))
      then begin
        qInferDolor.Close;
        qInferDolor.SQL[3] := Format('where ID.C_TRACTAMENT = %d', [qInferIng.FieldByName('C_Tractament').AsInteger]);
        qInferDolor.Open;
        wDataVerHis.F.GDolor.Show;
        wDataVerHis.F.splitDolor.Show;
      end;
    end;

    wDataVerHis.F.lDiuresi.Visible:=qInferParams.FieldByName('C_Item').AsInteger=10; // parte 59372
end;


// ----------------- //
// --  REGISTRES  -- //
// ----------------- //

procedure TwDataInfermeriaQ.qRegistresInferAfterScroll(DataSet: TDataSet);
begin
  with wDataVerHis.F do
  begin
    tbFinalA.Enabled := qRegistresInfer.FieldByName('DataFinal_Real').IsNull;
    tbAnula.Enabled  := tbFinalA.Enabled;
    pCatVPQ.Visible  := (qRegistresInfer.FieldByName('T_Reg').AsInteger = 12) and (qRegistresInfer.FieldByName('c_motiu').AsInteger in [2,4]);
    pGermens.Visible := (qRegistresInfer.FieldByName('T_Reg').AsInteger = 2);
    splitGermens.Visible := pGermens.Visible;
    tbAfegeixGermen.Enabled := pGermens.Visible and tbFinalA.Enabled;
  end;
end;

procedure TwDataInfermeriaQ.qAillaGermensAfterScroll(DataSet: TDataSet);
begin
  with wDataVerHis.F do
  begin
    tbFinalitzaGermen.Enabled := (not qAillaGermens.FieldByName('ID').IsNull) and qAillaGermens.FieldByName('Data_Fi').IsNull;
    tbAnulaGermen.Enabled := tbFinalitzaGermen.Enabled;
  end;
end;


// ----------- //
// --  UPP  -- //
// ----------- //

procedure TwDataInfermeriaQ.RefrescarUPP;
begin
    qUPPImatge.Close;
    qUPPRisc.Close;
    qUPPLin.Close;
    qUPPCap.Close;
    qUPPCap.Open;
    qUPPLin.Open;
    qUPPRisc.Open;
    qUPPImatge.Open;

    wDataVerHis.F.pUPPcap.Visible := not qUPPCap.FieldByName('Localitzacio').IsNull;

    qUPPCap.First;
end;


// Emina en el moment de la creació de la UPP
procedure TwDataInfermeriaQ.qUPPCapCalcFields(DataSet: TDataSet);
var
  emina: String;
begin
    if (qUPPCap.FieldByName('UPP').AsString = 'N') 
    then emina := ''

    else emina := GutSelect('select VALOR from INFERDADES ' +
                            'where C_TRACTAMENT = %d and C_ITEM = 50 and DATA_VALOR >= "%s" and ANULAT = "N" ' +
                            'order by DATA_VALOR ROWS 1',
                            [qUPPCap.FieldByName('C_Tractament').AsInteger,
                             FormatDateTime('dd.mm.yyyy', qUPPCap.FieldByName('Data_Creacio').AsDateTime)]);

    if (emina = '') then qUPPCap.FieldByName('Emina').Clear
                    else qUPPCap.FieldByName('Emina').AsInteger := StrToInt(emina);
end;


// UPPCap AfterScroll
procedure TwDataInfermeriaQ.qUPPCapAfterScroll(DataSet: TDataSet);
var
  tracta: string;
  qAux : TQuery;
begin
    with wDataVerHis.F do
    begin
        if (qUPPCap.FieldByName('UPP').AsString = 'S') then lbUPPFerida.Caption := 'LPP  '
                                                       else lbUPPFerida.Caption := 'Ferida  ';

        // Habilitem les accions pertinents segons l'estat de la UPP/ferida
        bUPPFinalitza.Enabled := (qUPPCap.FieldByName('Estat').AsInteger = 1);                                 // en curs
        bUPPModifica.Enabled :=  (qUPPCap.FieldByName('Estat').AsInteger <> 4);                                // no anul·lada - només accessos "A159"  (TUstrell i MGarcia)
        bUPPReactiva.Enabled  := Afegir.Enabled and (qUPPCap.FieldByName('Estat').AsInteger in [2,3]);         // finalitzada o no resolta
                                // (qUPPCap.FieldByName('DATA_ALTA').IsNull or                                   //    associada a un tractament actiu
                                //  (qUPPCap.FieldByName('DATA_ALTA').AsDateTime >= AVUI));
        bUPPAnula.Enabled     := (qUPPCap.FieldByName('Estat').AsInteger in [1,3]) and                         // en curs o no resolta
                                 (0 = GutSelect('select count(*) from UPPLIN where ID = %d and ANULAT = "N"',  // i sense seguiments no anul·lats
                                                [qUPPCap.FieldByName('ID').AsInteger]));

        bUPPSeguiment.Enabled := Afegir.Enabled and (qUPPCap.FieldByName('Estat').AsInteger = 1);  // en curs
        bUPPAnulaSeg.Enabled  := False;

        // Mostrem la imatge associada a la UPP/ferida seleccionada
        qUPPImatge.Close;
        qUPPImatge.ParamByName('c_historia').AsInteger := qUPPCap.FieldByName('C_Historia').AsInteger;
        qUPPImatge.ParamByName('id').AsInteger := qUPPCap.FieldByName('ID').AsInteger;
        qUPPImatge.Open;

        pImgUPP.Visible := (qUPPImatge.FieldByName('Arxiu').AsString <> '');
        if pImgUPP.Visible then ImgUPP.Picture.LoadFromFile(ConcatFilePath(pathImgH, qUPPImatge.FieldByName('Arxiu').AsString));

        CASE qUPPCap.FieldByName('Estat').AsInteger OF
          1: begin pUPPcap.Color := lbUPPcurs.Color;  pUPPCap.Font := lbUPPcurs.Font;  end;
          2: begin pUPPcap.Color := lbUPPfi.Color;    pUPPCap.Font := lbUPPfi.Font;    end;
          3: begin pUPPcap.Color := lbUPPalta.Color;  pUPPCap.Font := lbUPPalta.Font;  end;
          4: begin pUPPcap.Color := lbUPPanula.Color; pUPPCap.Font := lbUPPanula.Font; end;
        END;
    end;

    if qUPPLin.Active then qUPPLin.Last;
end;


// UPPLin AfterScroll
procedure TwDataInfermeriaQ.qUPPLinAfterScroll(DataSet: TDataSet);
begin
    wDataVerHis.F.bUPPAnulaSeg.Enabled := (qUPPCap.FieldByName('Estat').AsInteger = 1) and (qUPPLin.FieldByName('Anulat').AsString = 'N');
end;


// ----------------- //
// --  DRENATGES  -- //
// ----------------- //

procedure TwDataInfermeriaQ.qDrenaCapAfterScroll(DataSet: TDataSet);
var
  sumaC: Integer;
  ultimA: Integer;
begin
    // DÈBIT TOTAL:
    // Suma de registres marcats amb canvi de recipient
    sumaC := GutSelect('select SUM(VALOR) from DRENALIN where ID = %d and ANULAT = "N" and CANVI = "S"',
                       [qDrenaCap.FieldByName('ID').AsInteger]);
    // Darrer valor acumulat no anul·lat, sempre i quan no sigui canvi de recipient:
    ultimA := 0;
    if not qDrenaLin.Active then qDrenaLin.Open;
    qDrenaLin.Last;
    while (qDrenaLin.FieldByName('Anulat').AsString = 'S') and not qDrenaLin.Bof do qDrenaLin.Prior;

    if  (qDrenaLin.FieldByName('Anulat').AsString = 'N')  // Comprovem que no estigui anul·lat, per si només hi hagués un únic registre i aquest estés anul·lat!
    and (qDrenaLin.FieldByName('Canvi' ).AsString = 'N') then ultimA := qDrenaLin.FieldByName('Valor').AsInteger;

    wDataVerHis.F.edDebitTotal.Text := IntToStr(sumaC + ultimA) + ' ml ';

    // Deixem finalitzar els drenatges actius:
    wDataVerHis.F.bFinalitzaDrenatge.Enabled := (qDrenaCap.FieldByName('Estat').AsInteger = 0);

    // Deixem anul·lar drenatges actius:
    if (wDataVerHis.F.Tabs.ActivePage = wDataVerHis.F.TabInfermeria)
    and (wDataVerHis.F.PageControlInfer.ActivePage = wDataVerHis.F.TabDrenatges)
    then wDataVerHis.F.AnulaAnotacio.Enabled := (qDrenaCap.FieldByName('Estat').AsInteger = 0);

    // Poden entrar valors als drenatges actius:
    wDataVerHis.F.bNouVDrenatge.Enabled := wDataVerHis.F.bFinalitzaDrenatge.Enabled;
end;


procedure TwDataInfermeriaQ.qDrenaLinAfterScroll(DataSet: TDataSet);
begin
    // Habilitem el botó anul·lar registre si estan a l'últim registre no anul·lat (i la capçalera està activa):
    wDataVerHis.F.bAnulaVDrenatge.Enabled := (qDrenaCap.FieldByName('Estat').AsInteger = 0) and
                                             (qDrenaLin.RecordCount > 0) and
                                             (qDrenaLin.fieldByName('Anulat').AsString = 'N') and
                                             (0 = GutSelect('select COUNT(*) from DRENALIN where ID = %d and ANULAT = "N" and DATA_VALOR > "%s"',
                                                            [qDrenaCap.FieldByName('ID').AsInteger,
                                                             FormatDateTime('dd.mm.yyyy hh:nn:ss', qDrenaLin.FieldByName('Data_Valor').AsDateTime)]));
end;


// ---------- //
// --  OM  -- //
// ---------- //

procedure TwDataInfermeriaQ.qTractOMAfterScroll(DataSet: TDataSet);
begin
    qOM.Close;
    qOM.ParamByName('c_tractament').AsInteger := qTractOM.FieldByName('C_Tractament').AsInteger;
    qOM.Open;
    qAdmOM.Open;
end;

procedure TwDataInfermeriaQ.qTractOMCalcFields(DataSet: TDataSet);
begin
    // Mostrem la prestació i data d'ingrés del tractament
    qTractOM.FieldByName('PRESTACIO').AsString := ' ' + qTractOM.FieldByName('RESUM').AsString + ' del ' +
                                                   FormatDateTime('dd-mm-yyyy', qTractOM.FieldByName('DATA_INGRES').AsDateTime);
end;


procedure TwDataInfermeriaQ.qOMCalcFields(DataSet: TDataSet);
begin
    // mostrem "CADUCAT" a metge suspensió si la medicació ha caducat.
    if (qOM.FieldByName('C_ESTAT').AsString = 'C') or (qOM.FieldByName('C_ESTAT').AsString = 'K')
    then qOM.FieldByName('METGE_SUSPEN').AsString := 'CADUCAT'
    else qOM.FieldByName('METGE_SUSPEN').AsString := qOM.FieldByName('METGE_S').AsString;

    // mostrem també la Freqüència Segons Infermeria, si n'hi ha
    if (qOM.FieldByName('C_FREQUENCIA_INF').AsString <> '')
    then qOM.FieldByName('C_FREQ').AsString := qOM.FieldByName('C_FREQUENCIA'    ).AsString + ' (' +
                                               qOM.FieldByName('C_FREQUENCIA_INF').AsString + ')'
    else qOM.FieldByName('C_FREQ').AsString := qOM.FieldByName('C_FREQUENCIA'    ).AsString;
end;


procedure TwDataInfermeriaQ.qOMAfterScroll(DataSet: TDataSet);
begin
    // mostrem la columna Unitats d'Insulina si la pauta és d'insulina
    FormOM.gAdmOM.Columns[2].Visible := (qOM.FieldByName('C_FAMILIA4').AsString = 'A10A');
end;


procedure TwDataInfermeriaQ.qAdmCalcFields(DataSet: TDataSet);
begin
    // mostrem també l'Usuari de Risc, si n'hi ha
    if (DataSet.FieldByName('C_USUARI_RISC').AsString <> '')
    then DataSet.FieldByName('USUARI').AsString := DataSet.FieldByName('C_USUARI_ADMIN').AsString + '  (' +
                                                   DataSet.FieldByName('C_USUARI_RISC' ).AsString + ')'
    else DataSet.FieldByName('USUARI').AsString := DataSet.FieldByName('C_USUARI_ADMIN').AsString;
end;


// ---------------- //
// --  INFORMES  -- //
// ---------------- //

procedure TwDataInfermeriaQ.cInfInferValidarConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
begin
    if (SqlField = 'INFERMER') then SqlField := 'METGE';
end;


procedure TwDataInfermeriaQ.cInfInferValidarAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin
    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        Tabs.ActivePage := TabInformes;
        PCInformes.ActivePage := pagInfInt;
        TabsChange(F);
        FormControlDocumental.Mt.Locate('FILENAME', ConcatFilePath(RutaInferValidar, Datos.FieldByName('Arxiu').AsString), []);
    end;
end;

procedure TwDataInfermeriaQ.cNoEvacuaConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
begin
    if (SqlField = 'ULTIM_REGISTRE') then Abort;
end;

procedure TwDataInfermeriaQ.cNoEvacuaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin
    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        Tabs.ActivePage := TabInfermeria;
        TabsChange(F);
    end;
end;


procedure TwDataInfermeriaQ.cMaterialIncontAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin
    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        Tabs.ActivePage := TabMatMHDA;
        TabsChange(F);
        FormMaterialMHDA.PC.ActivePage := FormMaterialMHDA.TabIncontinencia; 
        FormMaterialMHDA.PCChange(FormMaterialMHDA.PC);
    end;
end;


procedure TwDataInfermeriaQ.ConsultesAlTancar(Sender: THYConsulta);
begin
    FLAG_FORM := False;
end;

procedure TwDataInfermeriaQ.cDocsInferAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    wDataVerHis.F.edDocsInfer.EditValue := Datos.FieldByName('Document').AsString;
    wDataVerHis.F.edDocsInfer.Tag       := Datos.FieldByName('C_Codi').AsInteger;
end;



procedure TwDataInfermeriaQ.qInferEvolAfterScroll(DataSet: TDataSet);
begin
    wDataVerHis.F.pActuacio.Hide;

    with wDataVerHis.F do
    begin
        mActuacio.Lines.Clear;
        if (DataSet.FieldByName('C_ITEM').AsInteger = 20)
        then mActuacio.Text := GutSelect('select RESPOSTA from IMCRESPONDRE where ID = %d', [DataSet.FieldByName('ID').AsInteger]);

        pActuacio.Visible := (mActuacio.Text <> '');
    end;
end;




procedure TwDataInfermeriaQ.cMaterialIncontEnClicAltreBoto(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    if (Datos.FieldByName('C_Disp').AsInteger <> 0) then
    begin
        if not AvisoNS('Hi ha una sol·licitud iniciada. ' + NLine +
                       'Esteu segur que el pacient no necessita material d''incontinència?')
        then Exit;

        GutExecute('delete from DISPLIN where C_DISP = %d', [Datos.FieldByName('C_Disp').AsInteger], False);
        GutExecute('delete from DISPCAP where C_DISP = %d', [Datos.FieldByName('C_Disp').AsInteger], False);
    end

    else if not AvisoNS('Esteu segur que el pacient no necessita material d''incontinència?') then Exit;

    // Inserim un registre "buit" a DISPCAP:
    //  - durada 0
    //  - lot buit. Així no es veurà a la llista de material del Curs Clínic
    //  - estatfac 50 - no facturable. (Per defecte és 0 i passa a 10 quan confirmen)
    GutExecute('insert into DISPCAP (C_DISP, C_HISTORIA, C_TRACTAMENT, DATA_DISP, C_METGE, DURACIO, ' +
               '                     C_PRESTACIO, DATA_INGRES, C_ESTATFAC, C_CENTREFAC, C_CLIENT, C_DELEGACIO)  ' +
               'values (Gen_ID(DISPENSACIONS, 1), %d, %d, "NOW", "%s", 0, "%s", "%s", 50, "%s", "%s", "%s") ',
               [Datos.FieldByName('C_Historia').AsInteger,
                Datos.FieldByName('C_Tractament').AsInteger,
                wData.UsuariActiu.Codi,
                Datos.FieldByName('C_Prestacio').AsString,
                FormatDateTime('dd.mm.yyyy', Datos.FieldByName('Data_Ingres').AsDateTime),
                Datos.FieldByName('C_CentreFac').AsString,
                Datos.FieldByName('C_Client').AsString,
                Datos.FieldByName('C_Delegacio').AsString]);

    Datos.Close;
    Datos.Open;
end;


procedure TwDataInfermeriaQ.cTancamentAcollidaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin
    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
    end;
end;


procedure TwDataInfermeriaQ.cDesnutricioAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin
    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        Tabs.ActivePage := TabInfermeria;
        PageControlInfer.ActivePage := TabGrafica;
        TabsChange(F);
    end;
end;

procedure TwDataInfermeriaQ.cContencionsAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
  ids: String;
begin
    Datos.DisableControls;

    if AvisoSN('El pacient requereix encara d''alguna contenció física?') then
    begin
        WaitON('Obrint . . .');
        TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
        FINALLY WaitOff;
        END;

        with F do
        begin
            MiConsulta := Sender;
            ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
            MetgeCrea := wData.UsuariActiu;

            VeDeAlarma := True;
            case Sender.Consulta.Tag of
            1: wDataInfermeriaQ.cContencionsPacient.SqlDic[4] := 'AND A.C_COORDINADOR IS NOT NULL AND A.C_PLANTA IS NULL';
            2: wDataInfermeriaQ.cContencionsPacient.SqlDic[4] := 'AND A.C_COORDINADOR IS NULL AND A.C_PLANTA IS NOT NULL';
            end;
            wDataInfermeriaQ.cContencionsPacient.SqlDic[5] := 'AND R.C_HISTORIA = '+Datos.FieldByName('C_Historia').AsString;
            wDataInfermeriaQ.cContencionsPacient.ExecuteFind('','',True,False,True);
            Exit;
        end;
    end
    else begin
        case Sender.Consulta.Tag of
        1: Aviso('Recordeu valorar la retirada de la contenció');
        2: Aviso('Recordeu valorar amb el seu metge responsable la retirada de la contenció i finalitzar el registre d''infermeria corresponent');
        end;
    end;

    TRY ids := '';
        wDataInfermeriaQ.qContencions.Close;
        case Sender.Consulta.Tag of
        1: wDataInfermeriaQ.qContencions.SQL[3] := 'AND A.C_COORDINADOR = "'+Datos.FieldByName('C_Coordinador').AsString+'" ';
        2: wDataInfermeriaQ.qContencions.SQL[3] := 'AND A.C_COORDINADOR IS NULL ';
        END;
        wDataInfermeriaQ.qContencions.ParamByName('C_Historia').AsInteger := Datos.FieldByName('C_Historia').AsInteger;
        wDataInfermeriaQ.qContencions.Open;
        wDataInfermeriaQ.qContencions.First;

        if wDataInfermeriaQ.qContencions.RecordCount > 0 then ids := wDataInfermeriaQ.qContencions.FieldbyName('ID').AsString;
        wDataInfermeriaQ.qContencions.Next;
        while not wDataInfermeriaQ.qContencions.Eof do
        begin
            ids := ids + ' OR ID=' +wDataInfermeriaQ.qContencions.FieldbyName('ID').AsString;
            wDataInfermeriaQ.qContencions.Next;
        end;
        wDataInfermeriaQ.qContencions.Close;

        if ids <> '' then GutExecute('DELETE FROM REGISTRESINFER_AVIS WHERE ID = %s',[ids])
                     else Aviso('No s''ha trobat cap alarma per esborrar');
    FINALLY
        Datos.EnableControls;
    END;
    Datos.Close;
    Datos.Open;
end;

procedure TwDataInfermeriaQ.cContencionsPacientAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  i: Integer;
  ids,tipus: String;
begin
    ids := '';
    tipus := '';

    for i:=0 to Sender.Grid.SelectedRows.Count-1 do
    begin
        Datos.Bookmark := Sender.Grid.SelectedRows[i];
        if i=0 then
        begin
            ids   := '(ID='+Datos.FieldByName('ID').AsString;
            tipus := Datos.FieldByName('TIPUS').AsString;
        end
        else begin
            ids   := ids   + ' OR ID=' + Datos.FieldByName('ID').AsString;
            tipus := tipus + ',' + Datos.FieldByName('TIPUS').AsString;
        end;
    end;
    if ids <> '' then ids := ids + ')'
                 else FerError('És obligatori seleccionar com a mínim una contenció',True);

    if VeDeAlarma
    or ((not VeDeAlarma) and AvisoSN(Format('El pacient requereix encara de contenció física tipus "%s"',[tipus])))
    then begin
        TRY if wDataVerHis.F.IngresActiu.C_Tractament > 0 then  // si hi ha ingrés actiu, l'associem a l'ingrés actiu
            wDataVerHis.F.GrabarHistoria(Format('Pacient que requereix la mesura de restricció del moviment tipus "%s"',[tipus]),
                                         wDataVerHis.F.IngresActiu.C_Prestacio, wDataVerHis.F.IngresActiu.C_Coordinador,
                                         wDataVerHis.F.IngresActiu.Data_Ingres, wDataVerHis.F.IngresActiu.C_Tractament, False, True)
            else Aviso('Ingrés no actiu, l''alarma no hauria d''existir. Aviseu a Sistemes d''Informació. Gràcies');
        FINALLY
        END;
    end
    else Aviso('Recordeu valorar amb el seu metge responsable la retirada de dita indicació i finalitzar el registre d''infermeria corresponent');

    TRY GutExecute('DELETE FROM REGISTRESINFER_AVIS WHERE %s',[ids]);
    FINALLY
    END;
end;

procedure TwDataInfermeriaQ.cContencionsPacientAlDespuesOpen(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  Sender.Top := 170;
  Sender.Height := 200 + (Datos.RecordCount * 21);
  Sender.Left := 500;
  Sender.Width := 600;
end;

end.
