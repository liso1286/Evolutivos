unit DataMHDAQ;

interface

uses
  SysUtils, Classes, DB, DBTables, Graphics, HYSql, HYDialogConsulta, DBGrids, Grids,
  IBCustomDataSet, IBQuery;

type
  TwDataMHDAQ = class(TDataModule)
    dsBombes: TDataSource;
    dsBombesLin: TDataSource;
    dsRecarregues: TDataSource;
    qRecarregues: TQuery;
    bBombes: THYSqlBrowse;
    bBombes_ID_Bomba: TIntegerField;
    bBombes_C_Historia: TIntegerField;
    bBombes_C_Tractament: TIntegerField;
    bBombes_Ordre: TSmallintField;
    bBombes_Tipus_Bomba: TSmallintField;
    bBombes_Num_Serie: TStringField;
    bBombes_Data_Implantacio: TDateTimeField;
    bBombes_Observacions: TStringField;
    bBombes_Estat: TStringField;
    bBombes_C_Usuari: TStringField;
    bBombes_Data: TDateTimeField;
    bBombes_Data_A: TDateTimeField;
    InsOM: TQuery;
    InsRecarrega: TQuery;
    InsAgenda: TQuery;
    UpdOM: TQuery;
    bBombesLin: THYSqlBrowse;
    bBombesLin_ID_Bomba: TIntegerField;
    bBombesLin_Linia: TIntegerField;
    bBombesLin_Tipus_Linia: TSmallintField;
    bBombesLin_Data_Linia: TDateTimeField;
    bBombesLin_Observacions: TStringField;
    bBombesLin_C_Usuari: TStringField;
    bBombesLin_Data: TDateTimeField;
    bBombesLin_Anulat: TStringField;
    bBombesLin_Data_A: TDateTimeField;
    bBombes_C0_0: TIntegerField;
    bBombes_C0_1: TStringField;
    bBombes_C0_2: TStringField;
    bBombes_C0_3: TIntegerField;
    bBombes_C0_4: TStringField;
    bBombes_C0_5: TStringField;
    bBombes_C0_6: TStringField;
    bBombes_C0_7: TStringField;
    bBombes_C0_8: TSmallintField;
    bBombes_C0_9: TSmallintField;
    bBombes_C0_10: TStringField;
    bBombes_C0_11: TStringField;
    bBombes_C0_12: TDateTimeField;
    bBombes_C0_13: TStringField;
    bBombes_C0_14: TStringField;
    bBombes_C0_15: TStringField;
    bBombes_C0_16: TStringField;
    bBombes_C0_17: TSmallintField;
    bBombes_C0_18: TSmallintField;
    bBombes_C1_0: TIntegerField;
    bBombes_C1_1: TIntegerField;
    bBombes_C1_2: TStringField;
    bBombes_C1_3: TDateTimeField;
    bBombes_C1_4: TDateTimeField;
    bBombes_C1_5: TDateTimeField;
    bBombes_C1_6: TStringField;
    bBombes_C1_7: TStringField;
    bBombes_C1_8: TStringField;
    bBombes_C1_9: TFloatField;
    bBombes_C1_10: TStringField;
    bBombes_C1_11: TStringField;
    bBombes_C1_12: TStringField;
    bBombes_C1_13: TStringField;
    bBombes_C1_14: TSmallintField;
    bBombes_C1_15: TSmallintField;
    bBombes_C1_16: TSmallintField;
    bBombes_C1_17: TStringField;
    bBombes_C1_18: TStringField;
    bBombes_C1_19: TStringField;
    bBombes_C1_20: TIntegerField;
    bBombes_C1_21: TStringField;
    bBombes_C1_22: TStringField;
    bBombes_C1_23: TStringField;
    bBombes_C1_24: TStringField;
    bBombes_C2_0: TStringField;
    bBombes_C2_1: TStringField;
    bBombes_C2_2: TStringField;
    bBombes_C2_3: TStringField;
    bBombes_C2_4: TStringField;
    bBombes_C2_5: TStringField;
    bBombes_C2_6: TStringField;
    bBombes_C2_7: TIntegerField;
    bBombes_C2_8: TStringField;
    bBombes_C2_9: TStringField;
    bBombes_C3_0: TSmallintField;
    bBombes_C3_1: TStringField;
    bBombes_C3_2: TSmallintField;
    bBombes_C3_3: TStringField;
    bBombes_C4_0: TStringField;
    bBombes_C4_1: TStringField;
    bBombes_C4_2: TStringField;
    bBombes_C4_3: TStringField;
    bBombes_C4_4: TSmallintField;
    bBombesLin_C_Tractament: TIntegerField;
    bBombesLin_Num_Serie: TStringField;
    bBombesLin_C0_0: TStringField;
    bBombesLin_C0_1: TStringField;
    bBombesLin_C0_2: TStringField;
    bBombesLin_C0_3: TStringField;
    bBombesLin_C0_4: TStringField;
    bBombesLin_C0_5: TStringField;
    bBombesLin_C0_6: TStringField;
    bBombesLin_C0_7: TIntegerField;
    bBombesLin_C0_8: TStringField;
    bBombesLin_C0_9: TStringField;
    bBombesLin_C1_0: TSmallintField;
    bBombesLin_C1_1: TStringField;
    bBombesLin_C1_2: TSmallintField;
    bBombesLin_C1_3: TStringField;
    bBombesLin_C2_0: TIntegerField;
    bBombesLin_C2_1: TIntegerField;
    bBombesLin_C2_2: TIntegerField;
    bBombesLin_C2_3: TSmallintField;
    bBombesLin_C2_4: TSmallintField;
    bBombesLin_C2_5: TStringField;
    bBombesLin_C2_6: TDateTimeField;
    bBombesLin_C2_7: TStringField;
    bBombesLin_C2_8: TStringField;
    bBombesLin_C2_9: TStringField;
    bBombesLin_C2_10: TDateTimeField;
    bBombesLin_C2_11: TDateTimeField;
    bBombesLin_C3_0: TIntegerField;
    bBombesLin_C3_1: TIntegerField;
    bBombesLin_C3_2: TStringField;
    bBombesLin_C3_3: TDateTimeField;
    bBombesLin_C3_4: TDateTimeField;
    bBombesLin_C3_5: TDateTimeField;
    bBombesLin_C3_6: TStringField;
    bBombesLin_C3_7: TStringField;
    bBombesLin_C3_8: TStringField;
    bBombesLin_C3_9: TFloatField;
    bBombesLin_C3_10: TStringField;
    bBombesLin_C3_11: TStringField;
    bBombesLin_C3_12: TStringField;
    bBombesLin_C3_13: TStringField;
    bBombesLin_C3_14: TSmallintField;
    bBombesLin_C3_15: TSmallintField;
    bBombesLin_C3_16: TSmallintField;
    bBombesLin_C3_17: TStringField;
    bBombesLin_C3_18: TStringField;
    bBombesLin_C3_19: TStringField;
    bBombesLin_C3_20: TIntegerField;
    bBombesLin_C3_21: TStringField;
    bBombesLin_C3_22: TStringField;
    bBombesLin_C3_23: TStringField;
    bBombesLin_C3_24: TStringField;
    qTBotulinica: TQuery;
    qTBotulinicaMETGE_PAUTAT: TStringField;
    qTBotulinicaINDICACIO: TSmallintField;
    qTBotulinicaN_CODI: TStringField;
    qTBotulinicaAVAL_INDICACIO1: TStringField;
    qTBotulinicaAVAL_INDICACIO2: TStringField;
    qTBotulinicaDOSI: TFloatField;
    qTBotulinicaUNITAT_MESURA: TStringField;
    qTBotulinicaDATA_PAUTAT: TDateTimeField;
    qTBotulinicaANULAT: TStringField;
    qTBotulinicaDATA_SUSPENSIO: TDateTimeField;
    qTBotulinicaMETGE_SUSPENSIO: TStringField;
    qTBotulinicaAVAL_COMENT: TStringField;
    qTBotulinicaEscala: TStringField;
    qTBotulinicaAvaluacio: TStringField;
    qTBotulinicaID_ORIGEN: TIntegerField;
    qTBotulinicaDATA_REAVAL: TDateTimeField;
    qTBotulinicaC_USUARI: TStringField;
    qTBotulinicaDATA: TDateTimeField;
    qTBotulinicaC_ORDREMEDICA: TIntegerField;
    qTBotulinicaREAVALUAT: TStringField;
    qTBotulinicaID: TIntegerField;
    qTBotulinicaC_HISTORIA: TIntegerField;
    dsTBotulinica: TDataSource;
    dsNEepisodis: TDataSource;
    qNEepisodis: TQuery;
    qNEdetall: TQuery;
    dsNEdetall: TDataSource;
    dsNEmotius: TDataSource;
    dsNEcomplic: TDataSource;
    qNEmotius: TQuery;
    qNEcomplic: TQuery;
    updNEepisodi: TQuery;
    qEMAutoritzacio: TQuery;
    dsEMAutoritzacio: TDataSource;
    qNEautoritza: TQuery;
    dsNEautoritza: TDataSource;
    cEMRenovar: THYConsulta;
    qEMAutoritzacioQUANT: TStringField;
    qEMAutoritzacioID: TIntegerField;
    qEMAutoritzacioC_HISTORIA: TIntegerField;
    qEMAutoritzacioC_METGE: TStringField;
    qEMAutoritzacioMETGE: TStringField;
    qEMAutoritzacioDATA_RENOVA: TDateTimeField;
    qEMAutoritzacioDATA_FINALITZACIO: TDateTimeField;
    qEMAutoritzacioMOTIU_FINALITZACIO: TStringField;
    qEMAutoritzacioMETGE_FI: TStringField;
    qEMAutoritzacioDATA_INICI: TDateTimeField;
    qEMAutoritzacioDATA_PROPERA: TDateTimeField;
    qEMAutoritzacioCOMENTARI: TStringField;
    qEMAutoritzacioC_USUARI: TStringField;
    qEMAutoritzacioINFER: TStringField;
    qEMAutoritzacioC_OM: TIntegerField;
    qEMAutoritzacioMEDICAMENT: TStringField;
    qEMAutoritzacioDOSI_O: TFloatField;
    qEMAutoritzacioDOSI_P: TFloatField;
    qEMAutoritzacioUM: TStringField;
    qEMAutoritzacioN_VIA: TStringField;
    qEMAutoritzacioN_FREQ: TStringField;
    qResourceE: TQuery;
    dsResourceE: TDataSource;
    qREDisp: TQuery;
    dsREDisp: TDataSource;
    qDPE: TQuery;
    dsDPE: TDataSource;
    qBQMat: TIBQuery;
    dsBQMat: TDataSource;
    dsBQMaterial: TDataSource;
    qBQMaterial: TIBQuery;

    procedure bBombesAfterScroll(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);

    procedure qTBotulinicaCalcFields(DataSet: TDataSet);
    procedure qTBotulinicaAfterScroll(DataSet: TDataSet);

    procedure qNEepisodisAfterOpen(DataSet: TDataSet);
    procedure qNEepisodisAfterScroll(DataSet: TDataSet);
    procedure qNEdetallAfterScroll(DataSet: TDataSet);

    procedure qEMAutoritzacioCalcFields(DataSet: TDataSet);
    procedure qEMAutoritzacioAfterScroll(DataSet: TDataSet);
    procedure qEMAutoritzacioAfterOpen(DataSet: TDataSet);
    procedure qEMAutoritzacioCOMENTARIGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cEMRenovarAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cEMRenovarAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);

    procedure qResourceEAfterOpen(DataSet: TDataSet);
    procedure qResourceEAfterScroll(DataSet: TDataSet);
    procedure qDPEAfterOpen(DataSet: TDataSet);
    procedure qDPEAfterScroll(DataSet: TDataSet);
    procedure qBQMatAfterScroll(DataSet: TDataSet);
  private
  public
    procedure InitQuerys(C_Historia: String);
    procedure TancaQuerys;
  end;

var
  wDataMHDAQ: TwDataMHDAQ;

implementation

uses DataMHDA, DataVerHis, FichaVerHis, MaterialMHDA, Data, Funciones,
  DataBasics;

{$R *.dfm}

// Funcions comunes

procedure TwDataMHDAQ.InitQuerys(C_Historia: String);
begin
    qTBotulinica.ParamByName('historia').AsString := C_Historia;
    qNEepisodis.ParamByName('historia').AsString := C_Historia;
    qEMautoritzacio.ParamByName('historia').AsString := C_Historia;
    qResourceE.ParamByName('historia').AsString := C_Historia;
    qREDisp.ParamByName('historia').AsString := C_Historia;
    qDPE.ParamByName('historia').AsString := C_Historia;
    qBQMat.ParamByName('historia').AsString := C_Historia;
end;


procedure TwDataMHDAQ.TancaQuerys;
begin
    qRecarregues.Close;
    bBombesLin.Close;
    bBombes.Close;

    qTBotulinica.Close;

    qNEautoritza.Close;
    qNEdetall.Close;
    qNEcomplic.Close;
    qNEmotius.Close;
    qNEepisodis.Close;

    qEMAutoritzacio.Close;
    
    qResourceE.Close;
    qDPE.Close;

    qBQMat.Close;
end;


// BACLOFÈN INTRATECAL: Activem o desactivem actions

procedure TwDataMHDAQ.bBombesAfterScroll(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA)
    then with wDataVerHis.F.FormMaterialMHDA do
    begin
        if      (DataSet.FieldByName('ESTAT').AsString = 'A') then edEstatBomba.EditInterno.Font.Color := clRed
        else if (DataSet.FieldByName('ESTAT').AsString = 'R') then edEstatBomba.EditInterno.Font.Color := clBlack
        else if (DataSet.FieldByName('ESTAT').AsString = 'V') then edEstatBomba.EditInterno.Font.Color := clBlue;

        if bBombesLin.Active then bBombesLin.Last;

        // Març 2026: Permetem recàrrega i canvi de dosi encara que no tinguem bomba identificada
//-        // Es pot fer una recàrrega, un canvi de dosi o retirar la bomba, si està vigent:
        bBCFRetirada.Enabled      := (DataSet.FieldByName('ESTAT').AsString = 'V');
        bBCFRecarrega.Enabled     := True;
        bBCFCanviDosi.Enabled     := True;

        // Es poden entrar complicacions de bombes vigents o retirades
        bBCFComplicacions.Enabled := (DataSet.FieldByName('ESTAT').AsString = 'V') or (DataSet.FieldByName('ESTAT').AsString = 'R');
    end;
end;


procedure TwDataMHDAQ.AfterPost(DataSet: TDataSet);
begin
    DataSet.AfterScroll(DataSet);
end;


// TOXINA BOTULÍNICA

procedure TwDataMHDAQ.qTBotulinicaCalcFields(DataSet: TDataSet);
begin
    case DataSet.FieldByName('indicacio').AsInteger of
    1: begin
           DataSet.FieldByName('Escala'   ).AsString:='Ashworth';
           DataSet.FieldByName('Avaluacio').AsString:='To muscular: '+DataSet.FieldByName('AVAL_INDICACIO1').AsString;
       end;
    2: begin
           DataSet.FieldByName('Escala'   ).AsString:='Sialorrea';
           DataSet.FieldByName('Avaluacio').AsString:='Intensitat: ' +DataSet.FieldByName('AVAL_INDICACIO1').AsString+
                                                      ' - Freqüència: '+DataSet.FieldByName('AVAL_INDICACIO2').AsString;
       end;
    3: begin
           DataSet.FieldByName('Escala').AsString:='FOIS';
           if (DataSet.FieldByName('c_ordremedica').AsInteger=0)
           then DataSet.FieldByName('Avaluacio').AsString:='FOIS: '+DataSet.FieldByName('AVAL_INDICACIO2').AsString
           else DataSet.FieldByName('Avaluacio').AsString:='Videofluoroscòpia feta? ' +DataSet.FieldByName('AVAL_INDICACIO1').AsString+
                                                           ' - FOIS: '+DataSet.FieldByName('AVAL_INDICACIO2').AsString;
       end;
    4: begin
           DataSet.FieldByName('Escala').AsString:='ROMA II';
           if (DataSet.FieldByName('c_ordremedica').AsInteger=0)
           then DataSet.FieldByName('Avaluacio').AsString:='Restrenyiment: '+DataSet.FieldByName('AVAL_INDICACIO2').AsString
           else DataSet.FieldByName('Avaluacio').AsString:='Manometria feta? ' +DataSet.FieldByName('AVAL_INDICACIO1').AsString+
                                                           ' - Restrenyiment: '+DataSet.FieldByName('AVAL_INDICACIO2').AsString;
       end;
    5: begin
           DataSet.FieldByName('Escala').AsString:='';
           if (DataSet.FieldByName('c_ordremedica').AsInteger=0)
           then DataSet.FieldByName('Avaluacio').AsString:='Residu: '+DataSet.FieldByName('AVAL_INDICACIO2').AsString+' ml'
           else DataSet.FieldByName('Avaluacio').AsString:='Urodinàmica feta? ' +DataSet.FieldByName('AVAL_INDICACIO1').AsString+
                                                           ' - Residu: '+DataSet.FieldByName('AVAL_INDICACIO2').AsString+' ml';
       end;
    end;
end;


// TOXINA BOTULÍNICA: segons la INDICACIÓ s'han de mostrar unes dades o unes altres
procedure TwDataMHDAQ.qTBotulinicaAfterScroll(DataSet: TDataSet);
begin
   with wDataVerHis.F.FormMaterialMHDA do
   begin
      mLlegenda.Lines.Clear;
      mLlegenda.Lines.Add('');
      case DataSet.FieldByName('INDICACIO').AsInteger of
      1: begin  // Espasticitat
             mLlegenda.Lines.Add(' VALORS ESCALA ASHWORTH');
             mLlegenda.Lines.Add(' 0. Cap increment del to muscular');
             mLlegenda.Lines.Add(' 1. Increment lleuger del to muscular');
             mLlegenda.Lines.Add(' 2. Increment acusat del to muscular en la major part del recorregut muscular tot i que el '+
                                 'membre s''aconsegueix movilitzar');
             mLlegenda.Lines.Add(' 3. Increment considerat del to muscular que dificulta la realització de moviments passius');
             mLlegenda.Lines.Add(' 4. Rigidesa del membre en flexió o extensió');
         end;
      2: begin  // Sialorrea
             mLlegenda.Lines.Add(' VALORS ESCALA SIALORREA');
             mLlegenda.Lines.Add(' INTENSITAT');
             mLlegenda.Lines.Add(' 1. Sec: mai saliva en excés.');
             mLlegenda.Lines.Add(' 2. Sialorrea lleu: solament mulla els llavis.');
             mLlegenda.Lines.Add(' 3. Sialorrea moderada: mulla els llavis i la mandíbula.');
             mLlegenda.Lines.Add(' 4. Sialorrea greu: mulla la roba.');
             mLlegenda.Lines.Add(' 5. Sialorrea profusa: mulla la roba, les mans, els objectes, el terra i està constantment moll per saliva.');
             mLlegenda.Lines.Add(' FREQÜÈNCIA');
             mLlegenda.Lines.Add(' 1. Mai saliva en excés.');
             mLlegenda.Lines.Add(' 2. Sialorrea ocasional: no succeeix cada dia.');
             mLlegenda.Lines.Add(' 3. Sialorrea freqüent: succeeix cada dia i amb freqüència.');
             mLlegenda.Lines.Add(' 4. Sialorrea constant: succeeix cada dia i contínuament.');
         end;
      3: begin  // Esfínter esofàgic
             mLlegenda.Lines.Add(' VALORS ESCALA FOIS');
             mLlegenda.Lines.Add(' 1. Res per boca');
             mLlegenda.Lines.Add(' 2. Sonda, mínim oral');
             mLlegenda.Lines.Add(' 3. Sonda, consistència oral');
             mLlegenda.Lines.Add(' 4. Dieta oral total a una consistència');
             mLlegenda.Lines.Add(' 5. Dieta oral total amb múltiples consistències i preparació/compensació');
             mLlegenda.Lines.Add(' 6. Dieta oral total amb limitació');
             mLlegenda.Lines.Add(' 7. Dieta oral total sense restriccions');
         end;
      4: begin  // Esfínter anal
             mLlegenda.Lines.Add(' VALORS ESCALA RESTRENYIMENT FUNCIONAL');
             mLlegenda.Lines.Add('   - S (Restrenyiment) ');
             mLlegenda.Lines.Add('   - N (No restrenyiment) ');
         end;
      end;
      mLlegenda.Lines.Add('');
      mLlegenda.Lines.Add('');
      mLlegenda.Lines.Add(' NP - no procedeix');
      if DataSet.FieldByName('ANULAT').AsString='S'
      then ltBotulinicaAnul.Caption := '   Toxina botulínica anul·lada el '+DataSet.FieldByName('DATA_SUSPENSIO').AsString
      else ltBotulinicaAnul.Caption := '';

      // només es poden reavaluar els que no ho estàn, no estàn anul·lats i els que vénen d'una ordre mèdica (i.e., excloem NP's)
      Reavalua.Enabled := (wDataMHDAQ.qTBotulinica.FieldByName('REAVALUAT'    ).AsString = 'N') and
                          (wDataMHDAQ.qTBotulinica.FieldByName('ANULAT'       ).AsString = 'N') and
                          (wDataMHDAQ.qTBotulinica.FieldByName('C_ORDREMEDICA').asInteger > 0);
      NoProcedeix.Enabled := Reavalua.Enabled;
   end;
end;


// NUTRICIÓ ENTERAL:  Mostrem les dades corresponents i activem o desactivem botons

procedure TwDataMHDAQ.qNEepisodisAfterOpen(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA)
    then with wDataVerHis.F.FormMaterialMHDA do
    begin
        bNENou.Enabled       := True;
        bNEModifica.Enabled  := False;
        bNEFinalitza.Enabled := False;
    end;
end;

procedure TwDataMHDAQ.qNEepisodisAfterScroll(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA)
    then with wDataVerHis.F.FormMaterialMHDA do
    begin
        scrollboxNE.Visible := (DataSet.RecordCount > 0);
        lbNEestat.Hide;
        pNEcanvis.Hide;

        if qNEdetall.Active then
        begin
            pNEcanvis.Visible := (qNEdetall.RecordCount > 1);
            qNEdetall.Last;
        end;

        if qNEmotius.Active  then gNEmotius.VertScrollBar.Visible := (qNEmotius.RecordCount > 4);
        if qNEcomplic.Active then gNEcomplicacions.VertScrollBar.Visible := (qNEcomplic.RecordCount > 4);

        if (DataSet.RecordCount > 0) then
        begin
            pNEfinalitzacio.Visible := not DataSet.FieldByName('Data_Fi').IsNull;

            bNEFinalitza.Enabled := not pNEfinalitzacio.Visible;
            bNEModifica.Enabled  := bNEFinalitza.Enabled;
        end;
    end;
end;

procedure TwDataMHDAQ.qNEdetallAfterScroll(DataSet: TDataSet);
begin
    with (wDataVerHis.F.FormMaterialMHDA) do
    begin
        // velocitat d'infusió: només si s'administra per bomba
        pNEvelocitat.Visible := (DataSet.FieldByName('Forma_Adm').AsInteger = 3);

        // estat
        if not qNEepisodis.FieldByName('Data_Fi').IsNull then
        begin
            lbNEestat.Caption := 'Episodi finalitzat';
            lbNEestat.Font.Color := clMaroon;
        end
        else begin
            if (qNEepisodis.FieldByName('Ultim').AsInteger = DataSet.FieldByName('Linia').AsInteger)
            then begin
                lbNEestat.Caption := 'Episodi actiu - dades actuals';
                lbNEmetge.Caption := 'Metge responsable del seguiment:';
                lbNEdata.Caption  := 'Data de la darrera modificació:';
            end
            else begin
                lbNEestat.Caption := 'Episodi actiu - dades antigues';
                lbNEmetge.Caption := 'Metge responsable:';
                lbNEdata.Caption  := 'Data de modificació:';
            end;
            lbNEestat.Font.Color := clGreen;
        end;
        lbNEestat.Show;
    end;
end;


// TRACTAMENT de L'ESCLEROSI MÚLTIPLE:  Mostrem les dades corresponents i activem o desactivem botons

procedure TwDataMHDAQ.qEMAutoritzacioCalcFields(DataSet: TDataSet);
begin
    if qEMAutoritzacio.FieldByName('C_OM').IsNull
    then qEMAutoritzacio.FieldByName('Quant').AsString := FormatFloat('0.##', qEMAutoritzacio.FieldByName('Dosi_P').AsFloat) +
                                                          ' ' + qEMAutoritzacio.FieldByName('UM').AsString
    else qEMAutoritzacio.FieldByName('Quant').AsString := FormatFloat('0.##', qEMAutoritzacio.FieldByName('Dosi_O').AsFloat) +
                                                          ' ' + qEMAutoritzacio.FieldByName('UM').AsString;
end;


procedure TwDataMHDAQ.qEMAutoritzacioAfterOpen(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA)
    then with wDataVerHis.F.FormMaterialMHDA do
    begin
        bEMNou.Enabled       := True;
        bEMCanviDosi.Enabled := False;
        bEMRenova.Enabled    := False;
        bEMSuspen.Enabled    := False;
        bEMFinalitza.Enabled := False;
    end;
end;


procedure TwDataMHDAQ.qEMAutoritzacioAfterScroll(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA) then
    with wDataVerHis.F.FormMaterialMHDA do
    begin
        scrollboxEM.Visible := (DataSet.RecordCount > 0);
        tSuspensioTemporal.Hide;

        with qEMAutoritzacio do
        begin
          if (RecordCount > 0) then
          begin

              // Estat
              if  not FieldByName('Data_Finalitzacio').IsNull then
              begin
                 lbEMestat.Caption := 'TRACTAMENT FINALITZAT';
                 lbEMestat.Font.Color := clBlack;
              end

              else begin
                  if      FieldByName('Data_Propera').IsNull
                  and not FieldByName('C_Usuari'    ).IsNull then lbEMestat.Caption := 'TRACTAMENT SUSPÈS TEMPORALMENT'
                                                             else lbEMestat.Caption := 'TRACTAMENT ACTIU';
                  lbEMestat.Font.Color := clGreen;
              end;

              // Mostro el comentari de suspensió temporal si cal
              tSuspensioTemporal.Visible := FieldByName('Data_Propera').IsNull  and (not FieldByName('C_Usuari').IsNull);

              pEMfinalitzacio.Visible := not FieldByName('Data_Finalitzacio').IsNull;
              pEMpropera.Visible      := (not pEMfinalitzacio.Visible) and (not FieldByName('Data_Propera').IsNull);

              // Activo botons
              bEMFinalitza.Enabled := not pEMfinalitzacio.Visible;
              bEMCanviDosi.Enabled := bEMFinalitza.Enabled;
              bEMRenova.Enabled    := bEMFinalitza.Enabled;
              bEMSuspen.Enabled    := bEMFinalitza.Enabled and (not FieldByName('Data_Propera').IsNull);
          end;
        end;
    end;
end;


procedure TwDataMHDAQ.qEMAutoritzacioCOMENTARIGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
    DisplayText := True;
    if qEMAutoritzacio.FieldByName('Data_Propera').IsNull then Text := 'Motiu: ' + TField(Sender).AsString;
end;


procedure TwDataMHDAQ.cEMRenovarAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  historia: string;
  F: TwFichaVerHis;
begin
    historia := Datos.FieldByName('C_Historia').AsString;

    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(historia, False);
        Tabs.ActivePage := TabMatMHDA;
        TabsChange(F);
        FormMaterialMHDA.PC.ActivePage := FormMaterialMHDA.TabTractEM;
        FormMaterialMHDA.PCChange(FormMaterialMHDA.PC);
    end;
end;


procedure TwDataMHDAQ.cEMRenovarAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                             State: TGridDrawState; Query: TQuery);
begin
    ColorBrush := clWhite;
    ColorFont  := clBlack;

    // visites d'avui: verd
    if (Query.FieldByName('Data_Preingres').AsDateTime = DateServer) then
    begin
        if (Column.FieldName = 'DATA_PREINGRES') then ColorBrush := $00AEFFD7;
    end
    // renovacions anteriors a 8 mesos: groc
    else if (Query.FieldByName('Data_Renova').AsDateTime < DateServer - 240) then
    begin
        if (Column.FieldName = 'DATA_RENOVA'   ) then ColorBrush := $00AEFFFF;
    end;

    if (gdSelected in State) then
    begin
        ColorBrush := clGray;
        ColorFont := clWhite;
    end;

end;


// RESOURCE ESPESSANT

procedure TwDataMHDAQ.qResourceEAfterOpen(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA)
    then with wDataVerHis.F.FormMaterialMHDA do
    begin
        bRENou.Enabled       := True;
        bRERenova.Enabled    := False;
        bREFinalitza.Enabled := False;
    end;
end;


procedure TwDataMHDAQ.qResourceEAfterScroll(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA) then
    with wDataVerHis.F.FormMaterialMHDA do
    begin
        scrollboxRE.Visible := (DataSet.RecordCount > 0);

        with qResourceE do
        begin
          if (RecordCount > 0) then
          begin

              // Estat
              if  not FieldByName('Data_Fi').IsNull then
              begin
                 lbREestat.Caption := 'PRESCRIPCIÓ SUSPESA';
                 lbREestat.Font.Color := clBlack;
              end
              else begin
                  lbREestat.Caption := 'PRESCRIPCIÓ ACTIVA';
                  lbREestat.Font.Color := clGreen;
              end;

              qREDisp.Close;
              qREDisp.ParamByName('c_producte').AsInteger := FieldByName('c_producte').AsInteger;
              qREDisp.Open;

              pREsuspensio.Visible := not FieldByName('Data_Fi').IsNull;
              pREdarrera.Visible   := (qREDisp.RecordCount > 0);
              pREpropera.Visible   := (not pREsuspensio.Visible) and (not FieldByName('Data_Propera').IsNull);

              // Activo botons
              bREFinalitza.Enabled := not pREsuspensio.Visible;
              bRERenova.Enabled := bREFinalitza.Enabled;
          end;
        end;
    end;
end;

// PACIENT EXTERN - DPE FARMATOOLS

procedure TwDataMHDAQ.qDPEAfterOpen(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA)
    then with wDataVerHis.F.FormMaterialMHDA do
    begin
        bNouDPE.Enabled       := True;
        bModificaDPE.Enabled  := True;
        bFiDPE.Enabled        := True;
    end;
end;

procedure TwDataMHDAQ.qDPEAfterScroll(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA) then
    with wDataVerHis.F.FormMaterialMHDA do
    begin
        bNouDPE.Enabled      := True;
        bModificaDPE.Enabled := DataSet.FieldByName('Data_Alta').IsNull or (DataSet.FieldByName('Data_Alta').AsDateTime >= DateServer);
        bFiDPE.Enabled       := bModificaDPE.Enabled;
    end;
end;

procedure TwDataMHDAQ.qBQMatAfterScroll(DataSet: TDataSet);
begin
    qBQMaterial.Close;
    qBQMaterial.ParamByName('c_interv').AsInteger := DataSet.FieldByName('c_interv').AsInteger;
    qBQMaterial.Open;
end;

end.
