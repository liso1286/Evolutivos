unit DataInterConQ;

interface

uses
  SysUtils, Classes, ComCtrls, DB, DBTables, DataVerHis, HYDialogConsulta,
  kbmMemTable, Graphics, HYCalendari, Grids, DBGrids, HYGrids, variants, Forms,
  IBCustomDataSet, IBQuery;

type
  TwDataInterconQ = class(TDataModule)
    qInsInterCon: TQuery;
    qFiInterCon: TQuery;
    qRespostaInterCon: TQuery;
    dsInterConProvEsp: TDataSource;
    qInterConProvEsp: TQuery;
    qInterConAnal: TQuery;
    dsInterConAnal: TDataSource;
    qAnalitica: TQuery;
    qAnaliticaUsra: TQuery;
    dsInterCon: TDataSource;
    qInterCon: TQuery;
    qInterConRx: TQuery;
    dsInterConRx: TDataSource;
    qInsProvaEsp: TQuery;
    qInterConProvEsp2: TQuery;
    dsInterConOrtesis: TDataSource;
    qInterConOrtesis: TQuery;
    qInterConOrtesis2: TQuery;
    qInterConUro: TQuery;
    qInterconEco: TQuery;
    dsInterconUro: TDataSource;
    dsInterconEco: TDataSource;
    qRespostaInterconV: TQuery;
    qInterConProvEspDicom: TQuery;
    dsInterConProvEspDicom: TDataSource;
    dsBancSang: TDataSource;
    qBancSang: TQuery;
    qInsBancSang: TQuery;
    dsInterConProvEspDicomRx: TDataSource;
    qInterConProvEspDicomRx: TQuery;
    qInterConOrtesisReg: TQuery;
    qInterConOrtesisRegC_INTERCON: TIntegerField;
    qInterConOrtesisRegORDRE: TIntegerField;
    qInterConOrtesisRegTIPUS: TSmallintField;
    qInterConOrtesisRegC_USUARI: TStringField;
    qInterConOrtesisRegDATA: TDateTimeField;
    qInterConOrtesisRegTEXT: TMemoField;
    qInterConOrtesisRegN_CODI: TStringField;
    qInterConOrtesisRegMETGE: TStringField;
    qInterConOrtesisRegDIES: TIntegerField;
    dsInterconOrtesisReg: TDataSource;
    qInsInterconOrtesisReg: TQuery;
    dsInterConProvEspDicomEcos: TDataSource;
    qInterConProvEspDicomEcos: TQuery;
    qInterconEMG: TQuery;
    dsInterconEMG: TDataSource;
    qInterconFarma: TQuery;
    dsInterconFarma: TDataSource;
    dsInterconEASE: TDataSource;
    qInterconEASE: TQuery;
    qDispCap: TQuery;
    dsDispCap: TDataSource;
    qTractHistoric: TQuery;
    qInterconNF: TQuery;
    dsInterconNF: TDataSource;
    cProvesNF: THYConsulta;
    tInformes: TkbmMemTable;
    tInformesFileName: TStringField;
    dsInformes: TDataSource;
    tInformesTitol: TStringField;
    qTract: TQuery;
    qInterconFSA: TQuery;
    dsInterconFSA: TDataSource;
    qInterconMarxa: TQuery;
    dsInterconMarxa: TDataSource;
    cFSAPend: THYConsulta;
    cMarxaPend: THYConsulta;
    cInformeProvEsp: THYConsulta;
    cInterconNF: THYConsulta;
    qinterconvideos: TQuery;
    cMarxaPendFin: THYConsulta;
    qInterconPSG: TQuery;
    dsInterconPSG: TDataSource;
    qValidaSol: TQuery;
    qValidaResp: TQuery;
    qDispLin: TQuery;
    dsDispLin: TDataSource;
    cTRespPend: THYConsulta;
    qInsInterconResposta: TQuery;
    qInterconRespostes: TQuery;
    qInsInterconSeguiment: TQuery;
    qUpInterconSeguiment: TQuery;
    qValidaRespMultiples: TQuery;
    qInterconPROA: TQuery;
    dsInterconPROA: TDataSource;
    insDiag: TIBQuery;
    qcodrsana_apa: TQuery;
    cPacientsUH: THYConsulta;
    procedure qInterConAfterScroll(DataSet: TDataSet);
    procedure qInterConAltresAfterScroll(DataSet: TDataSet);
    procedure qBancSangAfterScroll(DataSet: TDataSet);
    procedure qInterconEMGBeforeOpen(DataSet: TDataSet);
    procedure qInterConOrtesisAfterClose(DataSet: TDataSet);
    procedure qInterConOrtesisAfterOpen(DataSet: TDataSet);
    procedure qInterConOrtesisRegCalcFields(DataSet: TDataSet);
    procedure qInterConProvEspAfterClose(DataSet: TDataSet);
    procedure qInterConRxAfterOpen(DataSet: TDataSet);
    procedure qInterconEcoAfterOpen(DataSet: TDataSet);
    procedure qInterconFarmaBeforeOpen(DataSet: TDataSet);
    procedure qInterConProvEspAfterOpen(DataSet: TDataSet);
    procedure qInterconNFAfterScroll(DataSet: TDataSet);
    procedure cProvesNFAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cProvesNFEnActivar(Sender: TObject);
    procedure tInformesAfterScroll(DataSet: TDataSet);
    procedure PendAlTancar(Sender: THYConsulta);
    procedure cFSAPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cMarxaPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure PendEnActivar(Sender: TObject);
    procedure PendEnDesactivar(Sender: TObject);
    procedure cInformeProvEspAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cInterconNFAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cInterconNFEnClicAltreBoto(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cInterconNFAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Query: TQuery);
    procedure qInterconMarxaAfterOpen(DataSet: TDataSet);
    procedure cMarxaPendConsultaGetSqlField(Sender: THYConsulta;
      var SqlField: String);
    procedure cMarxaPendEnClicAltreBoto(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cMarxaPendFinAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure qInterconPSGBeforeOpen(DataSet: TDataSet);
    procedure qDispCapAfterOpen(DataSet: TDataSet);
    procedure cTRespPendAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cPacientsUHAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
  private
    NoMirisEMG, NoMirisPSG: Boolean;
    NoMirisFarma: Boolean;
  public
    informescarregats: Boolean;
    procedure InitQuerys(c_Historia: String);
    procedure TancaQuerys;
  end;

var
  wDataInterconQ: TwDataInterconQ;

implementation

uses Funciones, Data, DataMHDAQ, MaterialMHDA, FichaVerHis, DialogListInterconRF, FuncionsCurs, DataInterCon, FitxaComunicatEpidemiologic, Controls,
  DataBasics;

{$R *.dfm}


procedure TwDataInterconQ.qInterConAfterScroll(DataSet: TDataSet);
var
  L: String;
  MiMemo: TRichEdit;
  espeCOORD, espeSOLIC: String;
  metgeresp, metgevalida: TMetge;
  primer: Boolean;
begin

    if (wDataVerHis.F = Nil) then Exit;

    MiMemo := Nil;
    wDataVerHis.F.pComunicatEpi.Hide;

    if (DataSet = qInterCon) then
    begin
        with wDataVerHis.F do
        begin
          MiMemo := wDataVerHis.F.MemoInterCon;
          bAnulaInterCon.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');

          // Interconsultes a Neurofisiologia:
          if (Dataset.FieldByName('C_Especial').AsString = '61') then
          begin
              if not qInterconNF.Active then qInterconNF.Open;
              // No poden respondre la interconsulta genèrica, sinó que han de contestar-les una per una:
              bRespondreIntercon.Enabled := False;
              bSeguimentIntercon.Enabled := False;
              // Poden finalitzar-la si està en curs
              bFiInterCon.Enabled := (DataSet.FieldByName('Estat').AsInteger = 36);
              // mostrem el grid de proves associades, si n'hi ha
              pInterconNF.Visible := (qInterconNF.RecordCount > 0);
              SplitterInterconNF.Visible := wDataVerHis.F.pInterconNF.Visible;
              // Poden afegir proves si la interconsulta està pendent:
              bAfegirProvaNF.Enabled := (DataSet.FieldByName('Estat').AsInteger in [3,36]);
          end
          // Altres interconsultes a especialistes:
          else begin
              bRespondreInterCon.Enabled := (DataSet.FieldByName('Estat').AsInteger in [1,30,50]);
              bSeguimentIntercon.Enabled := (DataSet.FieldByName('Estat').AsInteger in [1,2,30,50]); // també poden fer seguiment si intercon a consultor pendent de programar
              bFiInterCon.Enabled := (DataSet.FieldByName('Estat').AsInteger = 50);
              pInterconNF.Hide;
              SplitterInterconNF.Hide;
              bRespondreIntercon.Show;
          end;
        end;
    end

    else if (DataSet = qInterConPROA) then
    begin
        with wDataVerHis.F do
        begin
          MiMemo := wDataVerHis.F.MemoInterconPROA;
          bAnulaInterConPROA.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');
          bRespondreInterConPROA.Enabled := (DataSet.FieldByName('Estat').AsInteger in [1,50]);
          bSeguimentInterconPROA.Enabled := bRespondreInterConPROA.Enabled;
          bFiInterConPROA.Enabled := (DataSet.FieldByName('Estat').AsInteger <> 80) and (DataSet.FieldByName('Estat').AsInteger <> 90);
          bRespondreInterconPROA.Show;

          // Comunicat epidemiològic només visible si està generat
          pComunicatEpi.Visible := not DataSet.FieldByName('C_EPI').IsNull;

          if pComunicatEpi.Visible then
          begin
              if not Assigned(FormFitxaComunicatEpi) then
              begin
                  WaitON('Obrint comunicat epidemiològic . . .');
                  TRY
                    FormFitxaComunicatEpi := TwFitxaComunicatEpidemiologic.Create(pComunicatEpi);
                    FormFitxaComunicatEpi.Parent      := pComunicatEpi;
                    FormFitxaComunicatEpi.FormStyle   := fsNormal;
                    FormFitxaComunicatEpi.Visible     := False;
                    FormFitxaComunicatEpi.BorderStyle := Forms.bsNone;
                    FormFitxaComunicatEpi.Align       := alClient;
                    FormFitxaComunicatEpi.Show;
                  FINALLY
                    WaitOff;
                  END;
              end;
              FormFitxaComunicatEpi.Inicia(qInterconPROA.FieldByName('C_Intercon').AsInteger);
          end;
        end;
    end

    else if (DataSet = qInterconFarma) then
    begin
        MiMemo := wDataVerHis.F.MemoInterconFarma;
        wDataVerHis.F.bAnulaInterconFarma.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');
        wDataVerHis.F.bRespondreInterconFarma.Enabled := (DataSet.FieldByName('Estat').AsInteger in [15,16]);  // ConcilMed i Intercon
        wDataVerHis.F.bFiInterconFarma.Enabled := (DataSet.FieldByName('Estat').AsInteger = 51);               // ConcilMed

        // Marquem la interconsulta com a VISTA si toca:
        if  (noMirisFarma = False)                                // que no sigui el 1r scroll, que és automàtic
        and (DataSet.FieldByName('Vista').AsString = 'N')         // intercon no vista
        and (DataSet.FieldByName('Estat').AsInteger in [51,90])   // concilmed contestada o intercon farma finalitzada
        and (not TeDretMetge(wData.UsuariActiu.Codi, [999]))      // usuari no de proves
        then begin
            // busquem especialitats
            espeCOORD := GutSelect('select C_ESPECIAL from METGES where CODI = "%s"', [DataSet.FieldByName('C_Coordinador').AsString]);
            espeSOLIC := GutSelect('select C_ESPECIAL from METGES where CODI = "%s"', [DataSet.FieldByName('C_Metge1').AsString]);
            // si és de l'especialitat del Coordinador o del Sol·licitant:
            if (wData.UsuariActiu.Especial = espeCOORD) or (wData.UsuariActiu.Especial = espeSOLIC) then
            begin
                // posem VISTA = 'S' i refresquem alarmes
                GutExecute('update INTERCON set VISTA = "S", METGEVISTA = "%s", DATAVISTA = "%s" where C_INTERCON = %d',
                           [wData.UsuariActiu.Codi, FormatDateTime('dd.mm.yyyy hh:nn:ss', NowServer), DataSet.FieldByName('C_Intercon').AsInteger]);
            end;
        end;
        noMirisFarma := False;
    end

    else if (DataSet = qInterconEASE) then
    begin
        MiMemo := wDataVerHis.F.MemoInterconEASE;
        wDataVerHis.F.bAnulaInterconEASE.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');
        wDataVerHis.F.bRespondreInterconEASE.Enabled := (DataSet.FieldByName('Estat').AsInteger = 1);
        wDataVerHis.F.bFiInterconEASE.Enabled := (DataSet.FieldByName('Estat').AsInteger = 50);
    end

    else if (DataSet = qInterconEco) then
    begin
        MiMemo := wDataVerHis.F.MemoInterConEco;
        wDataVerHis.F.bRespondreEco.Enabled := (DataSet.FieldByName('Estat').AsInteger in [12,38]);
        wDataVerHis.F.bAnulaEco.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');
    end

    else if (DataSet = qInterconUro) then
    begin
        wDataVerHis.F.pnluro.visible := False;
        MiMemo := wDataVerHis.F.MemoInterConUro;
        wDataVerHis.F.bRespondreUro.Enabled := (DataSet.FieldByName('Estat').AsInteger = 13);
        wDataVerHis.F.bAnulaUro.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');
    end

    else if (DataSet = qInterconEMG) then
    begin
        MiMemo := wDataVerHis.F.MemoInterConEMG;
        wDataVerHis.F.bAnulaEMG.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');
        wDataVerHis.F.pnlEMG.Visible := False;
        wDataVerHis.F.bImpEMG.Enabled := False;

        // Marquem la interconsulta com a VISTA si toca:
        if  (NoMirisEMG = False)                                  // que no sigui el 1r scroll, que és automàtic
        and (DataSet.FieldByName('Vista').AsString = 'N')         // Prova interna no vista
        and (DataSet.FieldByName('Estat').AsInteger = 98)         // Prova interna finalitzada
        and (not TeDretMetge(wData.UsuariActiu.Codi, [999]))      // usuari no de proves
        then begin
            // busquem especialitats
            espeCOORD := GutSelect('select C_ESPECIAL from METGES where CODI = "%s"', [DataSet.FieldByName('C_Coordinador').AsString]);
            espeSOLIC := GutSelect('select C_ESPECIAL from METGES where CODI = "%s"', [DataSet.FieldByName('C_Metge1').AsString]);
            // si és de l'especialitat del Coordinador o del Sol·licitant:
            if (wData.UsuariActiu.Especial = espeCOORD) or (wData.UsuariActiu.Especial = espeSOLIC) then
            begin
                // posem VISTA = 'S' i refresquem alarmes
                GutExecute('update INTERCON set VISTA = "S", METGEVISTA = "%s", DATAVISTA = "%s" where C_INTERCON = %d',
                           [wData.UsuariActiu.Codi, FormatDateTime('dd.mm.yyyy hh:nn:ss', NowServer), DataSet.FieldByName('C_Intercon').AsInteger]);
            end;
        end;
        noMirisEMG := False;
    end

    else if (DataSet = qInterconPSG) then
    begin
        MiMemo := wDataVerHis.F.MemoInterConPSG;
        wDataVerHis.F.bAnulaPSG.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');
        wDataVerHis.F.pnlPSG.Visible := False;
        wDataVerHis.F.bImpPSG.Enabled := False;

        // Marquem la interconsulta com a VISTA si toca:
        if  (NoMirisPSG = False)                                  // que no sigui el 1r scroll, que és automàtic
        and (DataSet.FieldByName('Vista').AsString = 'N')         // Prova interna  no vista
        and (DataSet.FieldByName('Estat').AsInteger = 98)         // Prova interna finalitzada
        and (not TeDretMetge(wData.UsuariActiu.Codi, [999]))      // usuari no de proves
        then begin
            // busquem especialitats
            espeCOORD := GutSelect('select C_ESPECIAL from METGES where CODI = "%s"', [DataSet.FieldByName('C_Coordinador').AsString]);
            espeSOLIC := GutSelect('select C_ESPECIAL from METGES where CODI = "%s"', [DataSet.FieldByName('C_Metge1').AsString]);
            // si és de l'especialitat del Coordinador o del Sol·licitant:
            if (wData.UsuariActiu.Especial = espeCOORD) or (wData.UsuariActiu.Especial = espeSOLIC) then
            begin
                // posem VISTA = 'S' i refresquem alarmes
                GutExecute('update INTERCON set VISTA = "S", METGEVISTA = "%s", DATAVISTA = "%s" where C_INTERCON = %d',
                           [wData.UsuariActiu.Codi, FormatDateTime('dd.mm.yyyy hh:nn:ss', NowServer), DataSet.FieldByName('C_Intercon').AsInteger]);
            end;
        end;
        noMirisPSG := False;
    end;

    if (MiMemo = Nil) then Exit;

    MiMemo.Lines.Clear;
    if DataSet.FieldByName('C_Historia').IsNull then
    begin
        MiMemo.Hide;
        Exit;
    end;

    with DataSet do
    begin

        // PROVA ANUL·LADA

        if (FieldByName('Estat').AsInteger in [80,87]) then
        begin
            L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'b ANUL·LADA ' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 per ' +
                     BuscaMetge(FieldByName('C_Metge2').AsString).Desc + '  el ' + FieldByName('Data2').AsString + NLine;
            if not FieldByName('Resposta').IsNull then L := L + 'Motiu anul·lació: ' + FieldByName('Resposta').AsString + NLine;
        end;

        // prova anul·lada administrativament (secres mèdiques) - parte 35472
        if (FieldByName('Estat').AsInteger = 86) then
        begin
            L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'b ANUL·LADA ADMINISTRATIVAMENT ' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 per ' +
                 BuscaMetge(FieldByName('C_Metge2').AsString).Desc + '  el ' + FieldByName('Data2').AsString + NLine;
            L := L + '' + NLine;
        end;

        // SOL·LICITUD

        L:= L + #1 + 'fs30' + #1 + 'b SOL·LICITUD INTERCONSULTA: ' + FieldByName('N_Especial').AsString;
        if (FieldByName('Urgent').AsString = 'S') then L := L + #1 + 'cf7  (Urgent) ' + #1 + 'cf0 ';
        L := L + #1 + 'fs20' + #1 + 'b0 ' + NLine;
        // Gener 2019-i  Validació residents
        // Si la sol·licitud està pendent de validar, ho indiquem i la pintem de blau
        if (FieldByName('Estat').AsInteger < 0)
        then L := L + #1 + 'cf6' + #1 + 'ul' + #1 + 'fs30' + #1 + 'b Sol·licitud pendent de validar' + #1 + 'fs20' + #1 + 'ul0' + #1 + 'b0 ' + NLine
        else begin
           qValidaSol.Close;
           qValidaSol.ParamByName('C_intercon').AsInteger := FieldByName('C_Intercon').AsInteger;
           qValidaSol.Open;
           // Si està validada, mostrem la validació
           if (qValidaSol.FieldByName('Estat_Valida').AsString = 'V') then
           begin
               if (Trim(qValidaSol.FieldByName('Obs_Valida').AsString) <> '')
               then L := L + '*** Validada per ' + Buscametge(qValidaSol.FieldByName('C_Validador').AsString).Desc +
                             ' el ' + qValidaSol.FieldByName('Data_Valida').AsString + ' ***' + NLine +
                                     'Observacions: ' + qValidaSol.FieldByName('Obs_Valida').AsString + NLine
               else L := L + '*** Validada per ' + Buscametge(qValidaSol.FieldByName('C_Validador').AsString).Desc +
                             ' el ' + qValidaSol.FieldByName('Data_Valida').AsString + ' ***' + NLine;
           end;
        end;
        // Gener 2019-f

        L := L + 'Data: ' + FieldByName('Data1').AsString + '      ';
        L := L + 'Sol·licitant: ' + BuscaMetge(FieldByName('C_Metge1').AsString).Desc + NLine;
        L := L + 'Prestació a la que fa referència: ' + DescripcioPrestacio(FieldByName('C_Prestacio').AsString, False) + ' del ' +
                                                        FieldByName('Data_Ingres').AsString + NLine;

        if (Trim(FieldByName('Diag_Inicial').AsString) <> '')
        then L := L + #1 + 'b Impressió diagnòstica: ' + #1 + 'b0 ' + FieldByName('Diag_Inicial').AsString + NLine
        else L := L + NLine;

        L := L + FieldByName('Solicita').AsString + NLine;

        // PROVA PREVISTA

        if ((DataSet = qInterconEco) or (DataSet = qInterconUro))
        and (FieldByName('Data_Prevista').AsDateTime <> 0)
        then L := L + 'Prova prevista: ' + FieldByName('Data_Prevista').AsString + NLine + NLine;

        L := L + #1 + 'cf0 ';

        // PROVA REALITZADA

        if ((DataSet = qInterconEco) or (DataSet = qInterconUro) or (DataSet = qInterconEMG) or (DataSet = qInterconPSG))
        and (FieldByName('Data_Prova').AsDateTime <> 0)
        then L := L + 'Prova realitzada: ' + FieldByName('Data_Prova').AsString + NLine + NLine;

        if (FieldByName('C_TIPUS').AsString = 'CONCILMED') then L := L + NLine;   // per conciliació mèdica  afegim un intro (ens falta)

        // RESPOSTA
        if (not(FieldByName('Estat').AsInteger in [80..89])) then
        begin
            with qInterconRespostes do
            begin
                Close;
                ParamByName('C_intercon').AsInteger := DataSet.FieldByName('C_Intercon').AsInteger;
                Open;
                primer:=true;

                //Si no hi ha registres de interconrespostes, mostrem la unica resposta de intercon
                if eof and bof then
                begin

                    if (DataSet.FieldByName('Data2').AsDateTime <> 0)  then
                    begin
                        // Gener 2019-i
                        qValidaResp.Close;
                        qValidaResp.ParamByName('C_intercon').AsInteger := DataSet.FieldByName('C_Intercon').AsInteger;
                        qValidaResp.Open;

                        metgeresp := BuscaMetge(DataSet.FieldByName('C_Metge2').AsString);
                        metgevalida := Buscametge(qValidaResp.FieldByName('C_Validador').AsString);

                        // Gener 2019-f
                        // si la resposta està pendent de validar (resident), ho indiquem i la pintem de blau:
                        if (DataSet.FieldByName('Estat').AsInteger in [40..49]) and (DataSet.FieldByName('Pendent').AsString = 'Validar') then
                        begin
                            L := L + #1 + 'cf6'+ #1 + 'ul' + #1 + 'fs30' + #1 + 'b Resposta pendent de validar' + #1 + 'fs20' + #1 + 'ul0' + #1 + 'b0 ' + NLine;
                            L := L + 'Data: ' + DataSet.FieldByName('Data2').AsString + '      ';
                            L := L + 'Especialista: ' + metgeresp.Desc + ' [' + metgeresp.DescEspecial + ']' + NLine;
                            L := L + DataSet.FieldByName('Resposta').AsString + #1 + 'cf0 ' + NLine;
                        end
                        else begin
                            L := L + #1 + 'fs30' + #1 + 'b Resposta' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
                            L := L + 'Data: ' + DataSet.FieldByName('Data2').AsString + '      ';
                            L := L + 'Especialista: ' + metgeresp.Desc + ' [' + metgeresp.DescEspecial + ']' + NLine;
                            L := L + DataSet.FieldByName('Resposta').AsString;
                            // si la resposta est? validada ho indiquem:
                            if (qValidaResp.FieldByName('Estat_Valida').AsString = 'V') then
                            begin
                                if (Trim(qValidaResp.FieldByName('Obs_Valida').AsString) <> '')
                                then L := L + '*** Revisat i conforme per ' + Buscametge(qValidaResp.FieldByName('C_Validador').AsString).Desc +
                                              ' el ' + qValidaResp.FieldByName('Data_Valida').AsString + ' ***' + NLine +
                                              'Observacions: ' + qValidaResp.FieldByName('Obs_Valida').AsString + NLine
                                else L := L + '*** Revisat i conforme per ' + metgevalida.Desc + ' [' + metgevalida.DescEspecial + ']' + 
                                              ' el ' + qValidaResp.FieldByName('Data_Valida').AsString + ' ***' + NLine;
                            end;
                            L := L + NLine;
                        end;
                    end;

                end
                else while not Eof do
                begin

                  if primer=true then L := L +NLine+  #1 + 'fs30' + #1 + 'b Resposta / Procés:' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
                  primer:=false;

                  if (FieldByName('resposta').asstring <> '') then
                  begin
                       L := L + NLine;
                      // Gener 2019-i
                      qValidaRespMultiples.Close;
                      qValidaRespMultiples.ParamByName('C_intercon').AsInteger := Dataset.FieldByName('C_Intercon').AsInteger;
                      qValidaRespMultiples.ParamByName('data_resposta').AsDateTime := FieldByName('Data_resposta').AsDateTime;
                      qValidaRespMultiples.ParamByName('metge_resposta').AsString := FieldByName('C_Metge_Resposta').AsString;
                      qValidaRespMultiples.Open;

                      metgeresp   := BuscaMetge(FieldByName('C_Metge_Resposta').AsString);
                      metgevalida := BuscaMetge(qValidaRespMultiples.FieldByName('C_Validador').AsString);


                      if (qValidaRespMultiples.FieldByName('ESTAT_VALIDA').AsString='P')
                      then L := L + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Resposta pendent de validar' + #1 + 'fs20' + #1 + 'ul0' + #1 + 'b0 ' + #1 + NLine;

                      L := L + #1+'b Data: ' + FieldByName('Data_resposta').AsString + '      ';
                      L := L + 'Especialista: ' + metgeresp.Desc + ' [' + metgeresp.DescEspecial + ']' + #1 + 'b0 ' + NLine;
                      L := L + FieldByName('Resposta').AsString;
                      L := L + NLine + #1 + 'cf0';

                      // si la resposta està validada ho indiquem:
                      if (qValidaRespMultiples.FieldByName('Estat_Valida').AsString = 'V') then
                      begin
                          if (Trim(qValidaRespMultiples.FieldByName('Obs_Valida').AsString) <> '')
                          then L := L + '*** Revisat i conforme per ' + metgevalida.Desc + ' [' + metgeresp.DescEspecial + ']' + 
                                        ' el ' + qValidaRespMultiples.FieldByName('Data_Valida').AsString + ' ***' + NLine +
                                        'Observacions: ' + qValidaRespMultiples.FieldByName('Obs_Valida').AsString + NLine
                          else L := L + '*** Revisat i conforme per ' + metgevalida.Desc + ' [' + metgevalida.DescEspecial + ']' + 
                                        ' el ' + qValidaRespMultiples.FieldByName('Data_Valida').AsString + ' ***' + NLine;
                      end;
                  end;
                  Next;
                end;
                close;
            end;
        end;


        // Anul·lació
        if (FieldByName('Estat').AsInteger = 86) then
        begin
            if (FieldByName('Data2').AsDateTime <> 0) then
            begin
                L := L + #1 + 'fs30' + #1 + 'b Motiu anul·lació' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
                L := L + 'Data: ' + FieldByName('Data2').AsString + '      ';
                L := L + 'Especialista: ' + BuscaMetge(FieldByName('C_Metge2').AsString).Desc + NLine;
                L := L + FieldByName('Resposta').AsString;
                L := L + NLine;
            end;
        end;

        // Si l'EMG o la PSG té informe associat posem el link a l'informe:
        if ((DataSet = qInterconEMG) or (DataSet = qInterconPSG))
        and (FieldByName('InformeRX').AsString = 'S')
        then L := L + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure informe' + #1 + 'ul0' + #1 + 'b0' +
                      #1 + 'cf16 [' + FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine + NLine;

        // Fi de procés
        if (FieldByName('Data3').AsDateTime <> 0) then
        begin
            // Conciliació medicació - Conclusions mèdiques
            if  (FieldByName('C_TIPUS').AsString = 'CONCILMED')
            and (FieldByName('Diag_Definitiu').AsString <> '' ) then
            begin
                L := L + #1 + 'fs30' + #1 + 'b Conclusions mèdiques ' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
                L := L + 'Data: ' + FieldByName('Data3').AsString + '      ';
                L := L + 'Especialista: ' + BuscaMetge(FieldByName('C_Metge3').AsString).Desc + NLine;
                if   (FieldByName('Diag_Definitiu').AsString = 'S') then L := L + 'D''acord '
                                                                    else L := L + 'En desacord ';
                L := L + 'amb la Conciliació de Medicació proposada pel Servei de Farmàcia.' + NLine;
                L := L + FieldByName('Comentari').AsString + NLine;
            end
            else begin
                L := L + #1 + 'fs30' + #1 + 'b Fi de procés' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
                L := L + 'Data: ' + FieldByName('Data3').AsString + '      ';
                L := L + 'Especialista: ' + BuscaMetge(FieldByName('C_Metge3').AsString).Desc + NLine;
                L := L + FieldByName('Comentari').AsString + NLine;
                if (FieldByName('Diag_Definitiu').AsString <> '')
                then L := L + #1 + 'fs30' + #1 + 'b' + #1 + 'i Diagnòstic definitiu: ' + #1 + 'fs20' + #1 + 'b0' + #1 + 'i0 ' +
                          FieldByName('Diag_Definitiu').AsString + NLine;
            end;
        end;

        if (DataSet = qInterconUro) and  (qInterConuro.FieldByName('informerx').asstring='U') then
        begin
            L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure informe(s) Uròleg' + #1 + 'ul0' + #1 + 'b0' +
                 #1 + 'cf16 [' + dataset.FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine + NLine;
        end;

      // link visor imagenes ecos
      if (DataSet = qInterconEco) and not qInterconEco.FieldByName('data_prova').Isnull  then
         begin
         L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure imatges' + #1 + 'ul0' + #1 + 'b0' +
         #1 + 'cf16 [' + qInterConECO.FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine+ NLine;
         end;

        ConstruirRtf(MiMemo, L, True, True);
    end;
end;


procedure TwDataInterconQ.qInterConAltresAfterScroll(DataSet: TDataSet);
var
  L: String;
  MiMemo: TRichEdit;
  espeCOORD, espeSOLIC: String;
begin
    if (wDataVerHis.F = nil) then Exit;
    MiMemo := Nil;
    if (DataSet = qInterConRx) then
    begin
        wDataVerHis.F.bRespondreRx.Enabled := (qInterConRx.FieldByName('Estat').AsInteger in [32,33,34,35,52,53]);    //9.2026: afegeixo el 33..35 i 53
        wDataVerHis.F.bAnulaRx.Enabled     := (qInterConRx.FieldByName('Anulable').AsString = 'S');
        wDataVerHis.F.bSolicitaCB.Enabled  := (qInterConRx.FieldByName('Estat').AsInteger in [6,32,52]) and  // realitzada   //9.2026 afegeixo 52
                                              (qInterConRx.FieldByName('InformeRX').AsString <> 'C');        // no demanat a creu blanca

        MiMemo := wDataVerHis.F.MemoInterConRx;
        wDataVerHis.F.pnlRX.Visible := False;
        wDataVerHis.F.bImpRX.Enabled := False;

        // Si ha arribat l'informe del radiòleg (pendent de veure'l), la finalitzem
        // (sempre que sigui un METGE, no de proves, de l'especialitat que toqui):
        if (wData.UsuariActiu.Grup = 'ME') and (not TeDretMetge(wData.UsuariActiu.Codi, [999])) then
        begin
            // busquem especialitats
            espeCOORD := GutSelect('select C_ESPECIAL from METGES where CODI = "%s"', [DataSet.FieldByName('C_Coordinador').AsString]);
            espeSOLIC := GutSelect('select C_ESPECIAL from METGES where CODI = "%s"', [DataSet.FieldByName('C_Metge1').AsString]);
            // si és de l'especialitat del Coordinador o del Sol·licitant:
            if (wData.UsuariActiu.Especial = espeCOORD) or (wData.UsuariActiu.Especial = espeSOLIC) then
            begin
                // Si està pendent de veure informe => la finalitzem
                if (DataSet.FieldByName('ESTAT').AsInteger in [35,37])
                then GutExecute('update INTERCON set ESTAT = 92 where C_INTERCON = %d', [DataSet.FieldByName('C_Intercon').AsInteger]);
            end;
        end
    end;

    if (DataSet = qInterConAnal) then
    begin
        wDataVerHis.F.bRespondreAnal.Enabled := (qInterConAnal.FieldByName('Estat').AsInteger = 31);
        wDataVerHis.F.bAnulaAnal.Enabled := (qInterConAnal.FieldByName('Anulable').AsString = 'S');
        wDataVerHis.F.tbCultiusMassiu.Visible := (qInterconAnal.FieldByName('Data1').AsDateTime >= AVUI) and   // CULTIUS MASSIUS
                                                 (1 = GutSelect('select count(*) from ANALIT_SOLICITUD S join CODRSANA_APA C on S.CODI = C.CODI ' +
                                                                'where S.C_INTERCON = %d and (C.GRUP = "MI" or C.CODI = "AAAA")',
                                                                 [qInterconAnal.FieldByName('C_Intercon').AsInteger]));
        MiMemo := wDataVerHis.F.MemoInterConAnal;
    end;

    if (DataSet = qInterConProvEsp) then
    begin
        wDataVerHis.F.bRespondreProvEsp.Enabled := (qInterConProvEsp.FieldByName('Estat').AsInteger = 33);
        wDataVerHis.F.bAnulaProvEsp.Enabled := (qInterConProvEsp.FieldByName('Anulable').AsString = 'S') and
                                   (qInterConProvEsp.FieldByName('Data_Prevista').AsDateTime = 0);
        MiMemo := wDataVerHis.F.MemoInterConProvEsp;
        wDataVerHis.F.PanelInfProvesp.Visible := False;
        wDataVerHis.F.bImpInfProvesp.Enabled := False;
    end;

    if (DataSet = qInterconFSA) then
    begin
        MiMemo := wDataVerHis.F.MemoInterconFSA;
        wDataVerHis.F.bAnulaInterconFSA.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');
        wDataVerHis.F.bRespondreInterconFSA.Enabled := (DataSet.FieldByName('Estat').AsInteger = 28);
        wDataVerHis.F.bFiInterconFSA.Enabled := (DataSet.FieldByName('Estat').AsInteger = 50);

        wDataVerHis.F.pnlFSA.Visible := False;
        wDataVerHis.F.bImpFSA.Enabled := False;
    end;

    if (DataSet = qInterconMarxa) then
    begin
        MiMemo := wDataVerHis.F.MemoInterconMarxa;
        wDataVerHis.F.bAnulaInterconMarxa.Enabled := (DataSet.FieldByName('Anulable').AsString = 'S');
        wDataVerHis.F.bRespondreInterconMarxa.Enabled := (DataSet.FieldByName('Estat').AsInteger = 27);
        wDataVerHis.F.bFiInterconMarxa.Enabled := (DataSet.FieldByName('Estat').AsInteger = 50);

        wDataVerHis.F.pnlMarxa.Visible := False;
        wDataVerHis.F.bImpMarxa.Enabled := False;
    end;

    if (DataSet = qInterConOrtesis) then
    begin
      if (qInterConOrtesis2.Active = False) then qInterConOrtesis2.Open;

      with wDataVerHis.F.FormMaterialMHDA do
      begin
        bAnulaInterConOrtesi.Enabled := (qInterConOrtesis.FieldByName('Anulable').AsString = 'S')
                                         and
                                        (qInterConOrtesis.FieldByName('estat').AsInteger = 11);

        bValidaOrtesi.Enabled := (qInterConOrtesis.FieldByName('estat').AsInteger = -11);
        
        // Poden prendre mides si hi ha una sol·licitud en curs i no les han pres.
        bOrtesiMides.Enabled := (qInterConOrtesis.FieldByName('Estat').AsInteger in [11,213])
                                 and
                                (GutSelect('select COUNT(*) from INTERCONORTESISREG where C_INTERCON = %d and TIPUS = 204',
                                           [DataSet.FieldByName('C_Intercon').AsInteger]) = 0);

        // Poden fer proves si hi ha una sol·licitud en curs i han pres mides i no han fet proves
        // CANVI 01.2009: Només poden si la comanda està feta [reg 203]
        // MILLORA 02.2014: o bé si no es fa control per part d'admissions
        bOrtesiProva.Enabled := (qInterConOrtesis.FieldByName('Estat').AsInteger in [11,213])
                                 and
                                (GutSelect('select COUNT(*) from INTERCONORTESISREG where C_INTERCON = %d and TIPUS = 204',
                                           [DataSet.FieldByName('C_Intercon').AsInteger]) > 0)
                                 and
                                (GutSelect('select COUNT(*) from INTERCONORTESISREG where C_INTERCON = %d and TIPUS = 205',
                                           [DataSet.FieldByName('C_Intercon').AsInteger]) = 0)
                                 and
                                ((qInterConOrtesis.FieldByName('CONTROLPROCES').AsString = 'N') or
                                 (GutSelect('select COUNT(*) from INTERCONORTESISREG where C_INTERCON = %d and TIPUS = 203',
                                            [DataSet.FieldByName('C_Intercon').AsInteger]) > 0));

        // Poden fer modificacions si hi ha una sol·licitud en curs i han fet proves . O bé si ja l'han entregada. Poden fer-ne vàries.
        // CANVI: 01.2009 Només poden si la comanda està feta [reg 203]
        // MILLORA 02.2014: o bé si no es fa control per part d'admissions
        bOrtesiModificacions.Enabled := (  (   (qInterConOrtesis.FieldByName('Estat').AsInteger in [11,213])
                                               and
                                               (GutSelect('select COUNT(*) from INTERCONORTESISREG where C_INTERCON = %d and TIPUS = 205',
                                                          [DataSet.FieldByName('C_Intercon').AsInteger]) > 0)
                                            )
                                           or
                                           (qInterConOrtesis.FieldByName('Estat').AsInteger in [46])  )
                                         and
                                        ((qInterConOrtesis.FieldByName('CONTROLPROCES').AsString = 'N') or
                                        (GutSelect('select COUNT(*) from INTERCONORTESISREG where C_INTERCON = %d and TIPUS = 203',
                                                   [DataSet.FieldByName('C_Intercon').AsInteger]) > 0));

        // Poden fer l'entrega si hi ha una sol·licitud en curs i [no es fa control o bé la comanda està tota feta].
        bOrtesiEntrega.Enabled := (qInterConOrtesis.FieldByName('Estat').AsInteger in [11,213])
                                   and
                                  (   (GutSelect('select COUNT(*) from INTERCONORTESISLIN where C_INTERCON = %d and (DATA_COMANDA is null or C_PROV is null)',
                                                 [DataSet.FieldByName('C_Intercon').AsInteger]) = 0)
                                       or
                                      (qInterConOrtesis.FieldByName('CONTROLPROCES').AsString = 'N')
                                   );
                                   
        // Poden validar l'ortesi si està entregada i pendent de validar
        bOrtesiValida.Enabled := (qInterConOrtesis.FieldByName('Estat').AsInteger in [48]);

        // Poden tancar el procés si està feta l'entrega:
        bOrtesiTancament.Enabled := (qInterConOrtesis.FieldByName('Estat').AsInteger in [46]);

        // Poden modificar la petició si està pendent de validar pel cap clínic
        bUpdateOrtesi.Enabled := qInterConOrtesis.FieldByName('Estat').AsInteger = 11;
      end;

      Exit;  // Sortim aquí, ja no muntem el memo pq no el necessitem per les ortesis
    end;

    
    if (MiMemo = Nil) then Exit;
    MiMemo.Lines.Clear;
    if DataSet.FieldByName('C_Historia').IsNull then Exit;

    with DataSet do
    begin
        // Interconsulta anulada
        if (FieldByName('Estat').AsInteger = 80) then
        begin
            L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'b ANUL·LADA ' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 per ' +
                     BuscaMetge(FieldByName('C_Metge2').AsString).Desc + '  el ' + FieldByName('Data2').AsString + NLine;
            if not FieldByName('Resposta').IsNull then L := L + 'Motiu anul·lació: ' + FieldByName('Resposta').AsString + NLine;
        end;

        // prova anul·lada administrativament (secres mèdiques) - parte 35472
        if (FieldByName('Estat').AsInteger = 86) then
        begin
            L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'b ANUL·LADA ADMINISTRATIVAMENT ' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 per ' +
                 BuscaMetge(FieldByName('C_Metge2').AsString).Desc + '  el ' + FieldByName('Data2').AsString + NLine;
            L := L + '' + NLine;
        end;

        // Prova Especial cancelada
        if (FieldByName('Estat').AsInteger = 82)
        then L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'b CANCEL·LADA (NO REALITZADA)' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 ' + NLine;

        // Ortesis cancelada administrativament
        if (FieldByName('Estat').AsInteger = 84) then
        begin
            L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'b CANCEL·LADA ADMIN ' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 per ' +
                 BuscaMetge(FieldByName('C_Metge2').AsString).Desc + '  el ' + FieldByName('Data2').AsString + NLine;
            L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'b MOTIU ' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 ' + FieldByName('Resposta').AsString + NLine;
        end;

        // Ortesis no gestionada per admissions
        if (FieldByName('Estat').AsInteger = 85) then
        begin
            L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'NO GESTIONADA PER ADMISSIONS ' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 per ' +
                 BuscaMetge(FieldByName('C_Metge2').AsString).Desc + '  el ' + FieldByName('Data2').AsString + NLine;
            L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'b MOTIU ' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 ' + FieldByName('Resposta').AsString + NLine;
        end;

        L := L + #1 + 'fs30' + #1 + 'b SOL·LICITUD ' + FieldByName('N_Especial').AsString;
        if (FieldByName('Urgent').AsString = 'S') then L := L + #1 + 'cf7  (Urgent) ' + #1 + 'cf0 ';
        L := L + #1 + 'fs20' + #1 + 'b0 ' + NLine;
        // Gener 2019-i  Validació residents
        // Si la sol·licitud està pendent de validar, ho indiquem i la pintem de blau
        if (FieldByName('Estat').AsInteger < 0)
        then L := L + #1 + 'cf6' + #1 + 'ul' + #1 + 'fs30' + #1 + 'b Sol·licitud pendent de validar' + #1 + 'fs20' + #1 + 'ul0' + #1 + 'b0 ' + NLine
        else begin
           qValidaSol.Close;
           qValidaSol.ParamByName('C_intercon').AsInteger := FieldByName('C_Intercon').AsInteger;
           qValidaSol.Open;
           // Si està validada, mostrem la validació
           if (qValidaSol.FieldByName('Estat_Valida').AsString = 'V') then
           begin
               if (Trim(qValidaSol.FieldByName('Obs_Valida').AsString) <> '')
               then L := L + '*** Validada per ' + Buscametge(qValidaSol.FieldByName('C_Validador').AsString).Desc +
                             ' el ' + qValidaSol.FieldByName('Data_Valida').AsString + ' ***' + NLine +
                                     'Observacions: ' + qValidaSol.FieldByName('Obs_Valida').AsString + NLine
               else L := L + '*** Validada per ' + Buscametge(qValidaSol.FieldByName('C_Validador').AsString).Desc +
                             ' el ' + qValidaSol.FieldByName('Data_Valida').AsString + ' ***' + NLine;
           end;
        end;
        // Gener 2019-f
        L := L + 'Data: ' + FieldByName('Data1').AsString + '      ';
        L := L + 'Sol·licitant: ' + BuscaMetge(FieldByName('C_Metge1').AsString).Desc + NLine;
        L := L + 'Prestació a la que fa referència: ' + DescripcioPrestacio(FieldByName('C_Prestacio').AsString, False) +
                 ' del ' + FieldByName('Data_Ingres').AsString + NLine;
                 
        L := L + FieldByName('Solicita').AsString + NLine;

        // Si és RX, posem dades sol·licitud informe
        if      (FieldByName('INFORMERX').AsString = 'S') then L := L + 'El radiòleg ha de fer l''informe. '  + NLine
        else if (FieldByName('INFORMERX').AsString = 'C') then L := L + 'Informe sol·licitat a Creu Blanca. ' + NLine;

        // Si es una prova especial, a més posarem el preu (estimat o real)
        if (DataSet = qInterConProvEsp) then
        begin
            if qInterConProvEsp2.FieldByName('Data_Preu').IsNull then L := L + 'Preu estimat de la prova: '
                                                                             else L := L + 'Preu real de la prova: ';
            L := L + FormatFloat('#,###.##', qInterConProvEsp2.FieldByName('Preu').AsFloat) + NLine;

        end;

        // Si es una ortesis, li posarem més dades
        if (DataSet = qInterConOrtesis) then
        begin
            if not qInterConOrtesis2.FieldByName('N_DiagnosticNeurologic').IsNull
            then L := L + #1 + 'fs30' + #1 + 'b' + #1 + 'i Diagnòstic neurològic: ' + #1 + 'fs20' + #1 + 'b0' + #1 + 'i0 ' +
                      qInterConOrtesis2.FieldByName('N_DiagnosticNeurologic').AsString + NLine;

            if (qInterConOrtesis2.FieldByName('Data_Indica').AsDateTime <> 0) then
            begin
                 L := L + #1 + 'fs30' + #1 + 'b Indicacions Rehabilitació' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
                 L := L + 'Data: ' + qInterConOrtesis2.FieldByName('Data_Indica').AsString + '      ';
                 L := L + 'Especialista: ' + BuscaMetge(qInterConOrtesis2.FieldByName('C_MetgeIndica').AsString).Desc + NLine;
                 L := L + qInterConOrtesis2.FieldByName('Indicacions').AsString + NLine;
            end;

            if (qInterConOrtesis.FieldByName('Data_Prova').AsDateTime <> 0)
            then L := L + 'Ortesi lliurada el dia ' + qInterConOrtesis.FieldByName('Data_Prova').AsString + NLine;

            ConstruirRtf(MiMemo, L, True, True, False);   //Ortesis No mostrem el memo per les interconsultes d'ortesis.
                                                          //        De fet, ni tan sols el muntarem, fem un exit abans
            Exit;
        end;


        if (FieldByName('Data_Prevista').AsDateTime <> 0) then L := L + 'Prova prevista: ' + FieldByName('Data_Prevista').AsString + NLine;

        L := L + #1 + 'cf0 ';

        if (FieldByName('Data_Prova').AsDateTime <> 0) then L := L + 'Prova realitzada: ' + FieldByName('Data_Prova').AsString + NLine;


        // Si RX o PROVESP té informe associat, posem el link a l'informe:
        if (((DataSet = qInterConRx) or (DataSet=qInterConProvEsp)) and ( FieldByName('estat').AsInteger in [35,37,92,93] ) ) then  //10.9.2026: afegeixo el 37
            L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure informe(s)' + #1 + 'ul0' + #1 + 'b0' +
                                     #1 + 'cf16 [' + FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine + NLine;



        // Si URO té informe associat, posem el link a l'informe:
        if (DataSet = qInterConUro) and  (qInterConuro.FieldByName('informerx').asstring='U') then
           begin
              L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure informe(s) Uròleg' + #1 + 'ul0' + #1 + 'b0' +
                      #1 + 'cf16 [' + FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine + NLine;

           end;

        if (FieldByName('Data2').AsDateTime <> 0) and not (FieldByName('Estat').AsInteger in [80..89]) then
        begin
            // Gener 2019-i
            qValidaResp.Close;
            qValidaResp.ParamByName('C_intercon').AsInteger := FieldByName('C_Intercon').AsInteger;
            qValidaResp.Open;
            // Gener 2019-f
            // si la resposta està pendent de validar (resident), ho indiquem i la pintem de blau:
            if (FieldByName('Estat').AsInteger in [40..49]) and (FieldByName('Pendent').AsString = 'Validar') then
            begin
                L := L + #1 + 'cf6'+ #1 + 'ul' + #1 + 'fs30' + #1 + 'b Resposta pendent de validar' + #1 + 'fs20' + #1 + 'ul0' + #1 + 'b0 ' + NLine;
                L := L + 'Data: ' + FieldByName('Data2').AsString + '      ';
                L := L + 'Especialista: ' + BuscaMetge(FieldByName('C_Metge2').AsString).Desc + NLine;
                L := L + FieldByName('Resposta').AsString + #1 + 'cf0 ' + NLine;
            end
            else begin
                L := L + #1 + 'fs30' + #1 + 'b Resposta' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
                L := L + 'Data: ' + FieldByName('Data2').AsString + '      ';
                L := L + 'Especialista: ' + BuscaMetge(FieldByName('C_Metge2').AsString).Desc + NLine;
                L := L + FieldByName('Resposta').AsString;
                // si la resposta està validada ho indiquem:
                if (qValidaResp.FieldByName('Estat_Valida').AsString = 'V') then
                begin
                    if (Trim(qValidaResp.FieldByName('Obs_Valida').AsString) <> '')
                    then L := L + '*** Revisat i conforme per ' + Buscametge(qValidaResp.FieldByName('C_Validador').AsString).Desc +
                                  ' el ' + qValidaResp.FieldByName('Data_Valida').AsString + ' ***' + NLine +
                                  'Observacions: ' + qValidaResp.FieldByName('Obs_Valida').AsString + NLine
                    else L := L + '*** Revisat i conforme per ' + Buscametge(qValidaResp.FieldByName('C_Validador').AsString).Desc +
                                  ' el ' + qValidaResp.FieldByName('Data_Valida').AsString + ' ***' + NLine;
                end;
                L := L + NLine;
            end;
        end;

        // Anul·lació
        if (FieldByName('Estat').AsInteger = 86) then
        begin
            if (FieldByName('Data2').AsDateTime <> 0) then
            begin
                L := L + #1 + 'fs30' + #1 + 'b Motiu anul·lació' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
                L := L + 'Data: ' + FieldByName('Data2').AsString + '      ';
                L := L + 'Especialista: ' + BuscaMetge(FieldByName('C_Metge2').AsString).Desc + NLine;
                L := L + FieldByName('Resposta').AsString;
                L := L + NLine;
            end;
        end;

        if (DataSet = qInterConMarxa) or (DataSet = qInterConFSA) then
        begin
            // Si ja està fet l'informe, afegir-ho per a poder fer el link
            if  (FieldByName('Estat').AsInteger >= 27) and (FieldByName('Estat').AsInteger <> 80)
            and (FieldByName('Diag_definitiu').AsString <> 'No procedeix') then
            begin
                L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure informe(s) ' + #1 + 'ul0' + #1 + 'b0' +
                                          #1 + 'cf16 [' + FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine + NLine;
            if (DataSet = qInterConMarxa) then
               if  (vartype(qinterconvideos['filename'])>1 ) then
                L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure video(s) ' + #1 + 'ul0' + #1 + 'b0' +
                                          #1 + 'cf16 [' + FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine + NLine;
            end;

            // Fi de procés
            if (FieldByName('Data3').AsDateTime <> 0) then
            begin
                L := L + #1 + 'fs30' + #1 + 'b Fi de procés' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
                L := L + 'Data: ' + FieldByName('Data3').AsString + '      ';
                L := L + 'Especialista: ' + BuscaMetge(FieldByName('C_Metge3').AsString).Desc + NLine;
                L := L + FieldByName('Comentari').AsString + NLine;
                if (FieldByName('Diag_Definitiu').AsString <> '')
                then L := L + #1 + 'fs30' + #1 + 'b' + #1 + 'i Diagnòstic definitiu: ' + #1 + 'fs20' + #1 + 'b0' + #1 + 'i0 ' +
                          FieldByName('Diag_Definitiu').AsString + NLine;
            end;
        end;

     if (DataSet = qInterConRx) and not qinterconrx.FieldByName('data_prova').Isnull  then
         L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure imatges' + #1 + 'ul0' + #1 + 'b0' +
         #1 + 'cf16 [' + qInterConRx.FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine;

      if (DataSet = qInterConProvEsp) and not qInterConProvEsp.FieldByName('data_prova').Isnull  then
             L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure imatges' + #1 + 'ul0' + #1 + 'b0' +
                 #1 + 'cf16 [' + qInterConProvEsp.FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine;

        ConstruirRtf(MiMemo, L, True, True);
    end;

end;


procedure TwDataInterconQ.qBancSangAfterScroll(DataSet: TDataSet);
var
  L: String;
  unMemo: TRichEdit;
begin
    if (wDataVerHis.F = Nil) then Exit;

    unMemo := wDataVerHis.F.MemoBancSang;

    // 100 petició anul·lada (interconsulta anul·lada)
    // 101 sol·licitud al Banc de Sang i Teixits
    // 102 extracció realitzada (o no)
    // 103 transfusió realitzada
    // 104 transfusió no realitzada
    // 105 reaccions transfusionals

    with wDataVerHis.F do
    begin
      bExtraccioBS.Enabled  := (DataSet.FieldByName('Estat').AsInteger = 101);
      bTransfusioBS.Enabled := (DataSet.FieldByName('Estat').AsInteger = 102);
      bAnularBS.Enabled     := (DataSet.FieldByName('Estat').AsInteger in [101..102]);
      bReaccionsBS.Enabled  := (DataSet.FieldByName('Estat').AsInteger = 103);
      bReImprimirBS.Enabled := (DataSet.FieldByName('Estat').AsInteger in [101, 102]);  // feta sol·licitud o feta extracció (si ja han fet la transfusió és q ja han enviat els papers)
    end;

    if (unMemo = Nil) then Exit;
    unMemo.Lines.Clear;
    if DataSet.FieldByName('C_Historia').IsNull then Exit;

    L := '';
    with DataSet do
    begin
        // Petició anul·lada
        if (FieldByName('Estat').AsInteger = 100) then
        begin
            L := L + #1 + 'cf7' + #1 + 'fs30' + #1 + 'b ANUL·LADA ' + #1 + 'cf0' + #1 + 'fs20' + #1 + 'b0 per ' +
                     BuscaMetge(FieldByName('C_Metge2').AsString).Desc + '  el ' + FieldByName('Data2').AsString + NLine;
            if not FieldByName('Resposta').IsNull then L := L + 'Motiu anul·lació: ' + FieldByName('Resposta').AsString + NLine;
        end;


        // Petició:
        L := L + #1 + 'fs30' + #1 + 'b SOL·LICITUD AL BANC DE SANG I TEIXITS';
        if (FieldByName('Urgent').AsString = 'S') then L := L + #1 + 'cf7  (Urgent) ' + #1 + 'cf0 ';
        L := L + #1 + 'fs20' + #1 + 'b0 ' + NLine;
        L := L + 'Data: ' + FieldByName('Data1').AsString + '      ';
        L := L + 'Sol·licitant: ' + BuscaMetge(FieldByName('C_Metge1').AsString).Desc + NLine;
        L := L + 'Prestació a la que fa referència: ' + DescripcioPrestacio(FieldByName('C_Prestacio').AsString, False) + ' del ' +
                                                        FieldByName('Data_Ingres').AsString + NLine;
        L := L + NLine;

        L := L + #16 + #1 + 'b  Grau d''urgència: ' + FieldByName('N_Urgencia').AsString;

        if (FieldByName('Urgencia').AsInteger = 4)
        then L := L + ' pel dia ' + FormatDateTime('dd/mm/yyyy "a les" hh:nn', FieldByName('Data_Prevista').AsDateTime);

        L := L + #1 + 'b0 ' + NLine;

        L := L + #16 + ' Producte sol·licitat:' + #1 + 'fs28' + '  ' +  #1 + 'fs20 ';
        if (FieldByName('Hematies'       ).AsInteger > 0) then L := L + 'Hematies        ' + FieldByName('Hematies'       ).AsString + ' unitat(s)' + NLine + Spaces(24);
        if (FieldByName('PlasmaFresc'    ).AsInteger > 0) then L := L + 'Plasma fresc    ' + FieldByName('PlasmaFresc'    ).AsString + ' unitat(s)' + NLine + Spaces(24);
        if (FieldByName('Plaquetes'      ).AsInteger > 0) then L := L + 'Plaquetes       ' + FieldByName('Plaquetes'      ).AsString + ' unitat(s)' + NLine + Spaces(24);
        if (FieldByName('Crioprecipitats').AsInteger > 0) then L := L + 'Crioprecipitats ' + FieldByName('Crioprecipitats').AsString + ' unitat(s)' + NLine + Spaces(24);

        L := L + NLine;


        // Extracció:
        if (FieldByName('Estat').AsInteger >= 102) then
        begin
            if (FieldByName('Extraccio').AsString = 'S')
            then L := L + #1 + 'fs30' + #1 + 'b Extracció realitzada' + #1 + 'fs20' + #1 + 'b0 ' + NLine
            else L := L + #1 + 'fs30' + #1 + 'b Extracció no realitzada' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
            L := L + 'Data: ' + FieldByName('Data_Extraccio').AsString + '      ';
            L := L + 'Especialista: ' + BuscaMetge(FieldByName('Infer_Extraccio').AsString).Desc + NLine;
        end;

        L := L + NLine;

        // Transfusió:
        if (FieldByName('Estat').AsInteger >= 103) then
        begin
            if (FieldByName('Transfusio').AsString = 'S')
            then L := L + #1 + 'fs30' + #1 + 'b ' + 'Transfusió realitzada' + #1 + 'fs20' + #1 + 'b0 ' + NLine
            else L := L + #1 + 'fs30' + #1 + 'b ' + 'Transfusió no realitzada' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
            L := L + 'Data: ' + FieldByName('Data_Transfusio').AsString + '      ';
            L := L + 'Especialista: ' + BuscaMetge(FieldByName('Infer_Transfusio').AsString).Desc + NLine;
        end;

        L := L + NLine;

        // Reaccions transfusionals
        if (FieldByName('Estat').AsInteger >= 105) then
        begin
            L := L + #1 + 'fs30' + #1 + 'b Reaccions transfusionals' + #1 + 'fs20' + #1 + 'b0 ' + NLine;
            L := L + 'Data: ' + FieldByName('Data_Reaccions').AsString + '      ';
            L := L + 'Especialista: ' + BuscaMetge(FieldByName('Infer_Reaccions').AsString).Desc + NLine;
            if (FieldByName('ReaccionsSN').AsString = 'N') then L := L + 'No'
                                                           else L := L + 'Sí' + Nline + FieldByName('Reaccions').AsString;
        end;

        L := L + NLine;
    end;

    ConstruirRtf(unMemo, L, True, True);
end;


procedure TwDataInterconQ.qInterconEMGBeforeOpen(DataSet: TDataSet);
begin
    NoMirisEMG :=  True;
end;


procedure TwDataInterconQ.qInterConOrtesisAfterClose(DataSet: TDataSet);
begin
    qInterConOrtesis2.Close;
    qInterConOrtesisReg.Close;
end;


procedure TwDataInterconQ.qInterConOrtesisAfterOpen(DataSet: TDataSet);
begin
    qInterConOrtesis2.Open;
    qInterConOrtesisReg.Open;
end;


procedure TwDataInterconQ.qInterConOrtesisRegCalcFields(DataSet: TDataSet);
var
  data_comanda: TDateTime;
begin
    data_comanda := GutSelect('select DATA from INTERCONORTESISREG where C_INTERCON = %d and TIPUS = 203',
                              [DataSet.FieldByName('C_INTERCON').AsInteger]);
    if (data_comanda = 0) or not (DataSet.FieldByName('TIPUS').AsInteger in [204..208]) or (qInterConOrtesis.FieldByName('ControlProces').AsString = 'N')
    then DataSet.FieldByName('DIES').Clear
    else DataSet.FieldByName('DIES').AsInteger := Truncar(DataSet.FieldByName('DATA').AsDateTime) - Truncar(data_comanda);
end;


procedure TwDataInterconQ.qInterConProvEspAfterOpen(DataSet: TDataSet);
begin
    qInterConProvEsp2.Open;
    qInterConProvEspDicom.Open;
end;

procedure TwDataInterconQ.qInterConProvEspAfterClose(DataSet: TDataSet);
begin
    qInterConProvEsp2.Close;
end;


procedure TwDataInterconQ.qInterConRxAfterOpen(DataSet: TDataSet);
begin
    qInterConProvEspDicomRx.Open;
end;


procedure TwDataInterconQ.qInterconEcoAfterOpen(DataSet: TDataSet);
begin
    qInterConProvEspDicomEcos.Open;
end;


procedure TwDataInterconQ.qInterconFarmaBeforeOpen(DataSet: TDataSet);
begin
    NoMirisFarma := True;
end;


procedure TwDataInterconQ.qInterconNFAfterScroll(DataSet: TDataSet);
begin
    // Poden respondre una prova si no ho han fet i la interconsulta està pendent:
    wDataVerHis.F.bResponProvaNF.Enabled := (qInterCon.FieldByName('Estat').AsInteger in [3,36]) and
                                            (qInterconNF.FieldByName('Realitzada').AsString = 'P');
end;


procedure TwDataInterconQ.InitQuerys(c_Historia: String);
begin
    qTractHistoric.ParamByName('Historia').AsString := c_historia;
    qTract.ParamByName('Historia').AsString := c_historia;
    qInterCon.ParamByName('Historia').AsString := c_historia;
    qInterconFarma.ParamByName('Historia').AsString := c_historia;
    qInterconEASE.ParamByName('Historia').AsString := c_historia;
    qInterconFSA.ParamByName('Historia').AsString := c_historia;
    qInterconMarxa.ParamByName('Historia').AsString := c_historia;
    qInterConPROA.ParamByName('Historia').AsString := c_historia;
    qInterConRx.ParamByName('Historia').AsString := c_historia;
    qInterConUro.ParamByName('Historia').AsString := c_historia;
    qInterConEco.ParamByName('Historia').AsString := c_historia;
    qInterconEMG.ParamByName('Historia').AsString := c_historia;
    qInterconPSG.ParamByName('Historia').AsString := c_historia;
    qInterConAnal.ParamByName('Historia').AsString := c_historia;
    qInterConProvEsp.ParamByName('Historia').AsString := c_historia;
    qInterConOrtesis.ParamByName('Historia').AsString := c_historia;
    qBancSang.ParamByName('Historia').AsString := c_historia;
    qDispCap.ParamByName('Historia').AsString := c_historia;
end;


procedure TwDataInterconQ.TancaQuerys;
begin
    qTractHistoric.Close;
    qTract.Close;
    qInterCon.Close;
    qInterconFarma.Close;
    qInterconEASE.Close;
    qInterconFSA.Close;
    qInterconMarxa.Close;        
    qInterconPROA.Close;
    qInterConRx.Close;
    qInterconUro.Close;
    qInterconEco.Close;
    qInterconEMG.Close;
    qInterconPSG.Close;
    qInterConAnal.Close;
    qInterConProvEsp.Close;
    qInterConOrtesis.Close;
    qInterconNF.Close;
    qBancSang.Close;
    qDispCap.Close;
    qDispLin.Close;
    qInterconRespostes.Close;
    qValidaRespMultiples.Close;
end;


procedure TwDataInterconQ.cProvesNFEnActivar(Sender: TObject);
begin
    TxHYDialogConsulta(Sender).Grid.Columns[1].Width := 600;
end;


procedure TwDataInterconQ.cProvesNFAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  i: Integer;
begin
    if (Sender.Grid.SelectedRows.Count = 0)
    then GutExecute('insert into INTERCONNFPROVES (ID, C_INTERCON, C_PROVA, SOLICITADA) values (%d, %d, %d, "N")',
                    [Gen_ID('interna', 'G_INTERCONNFPROVES', 1),
                     qInterCon.FieldByName('C_Intercon').AsInteger,
                     Datos.FieldByName('C_Prova').AsInteger])

    else for i := 0 to Sender.Grid.SelectedRows.Count -1 do
    begin
         Datos.Bookmark := Sender.Grid.SelectedRows[i];
         GutExecute('insert into INTERCONNFPROVES (ID, C_INTERCON, C_PROVA, SOLICITADA, METGE_SOLICITA, DATA_SOLICITA) ' +
                    'values (%d, %d, %d, "N", "%s", "%s")',
                    [Gen_ID('interna', 'G_INTERCONNFPROVES', 1),
                     qInterCon.FieldByName('C_Intercon').AsInteger,
                     Datos.FieldByName('C_Prova').AsInteger,
                     wDataVerHis.F.MetgeCrea.Codi,
                     FormatDateTime('dd.mm.yyyy hh:nn.ss', NowServer)]);
    end;

    qInterconNF.Close;
    qInterconNF.Open;
end;


procedure TwDataInterconQ.tInformesAfterScroll(DataSet: TDataSet);
begin
    if not informescarregats then Exit;
    wDataVerHis.F.MostraDocument(tInformes.Tag, tInformes.FieldByName('FileName').AsString);
end;


procedure TwDataInterconQ.PendAlTancar(Sender: THYConsulta);
begin
    FLAG_FORM := False;
end;


procedure TwDataInterconQ.cFSAPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    WaitOn('Obrint . . .');
    try
      FLAG_FORM := True;
      with AbrirForm(TwDialogListInterconRF) as TwDialogListInterconRF do
      begin
          Pacient   := Datos.FieldByName('C_HISTORIA').AsString+' '+Datos.FieldByName('NOMCOMPLET').AsString+#13+
                      'Data sol·licitud: '+FormatDateTime('dd-mm-yyyy',Datos.FieldByName('DATA1').AsDateTime)+#13+
                      'Metge:            '+Datos.FieldByName('C_METGE1').AsString;
          Historia  := Datos.FieldByName('C_HISTORIA').AsInteger;
          Espe      := Datos.FieldByName('C_ESPECIAL').AsInteger;
          CIntercon := Datos.FieldByName('C_Intercon').AsInteger;
          ConsultaDonVinc := Sender;
          Iniciar;
      end;
    finally
      WaitOff;
    end;
end;


procedure TwDataInterconQ.cMarxaPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    WaitOn('Obrint . . .');

    try
      FLAG_FORM := True;
      with AbrirForm(TwDialogListInterconRF) as TwDialogListInterconRF do
      begin
          Pacient   := Datos.FieldByName('C_HISTORIA').AsString+' '+Datos.FieldByName('NOMCOMPLET').AsString+#13+
                      'Data sol·licitud: '+FormatDateTime('dd-mm-yyyy',Datos.FieldByName('DATA1').AsDateTime)+#13+
                      'Metge:            '+Datos.FieldByName('C_METGE1').AsString;
          Historia  := Datos.FieldByName('C_HISTORIA').AsInteger;
          Espe      := Datos.FieldByName('C_ESPECIAL').AsInteger;
          CIntercon := Datos.FieldByName('C_Intercon').AsInteger;
          ConsultaDonVinc := Sender;
          Iniciar;
      end;
    finally
      WaitOff;
    end;
end;


procedure TwDataInterconQ.PendEnActivar(Sender: TObject);
begin
   if (not TeDretAcces([99], False, False)) and Assigned(wDataVerHis.F) then
   begin
       TxHYDialogConsulta(Sender).Enabled := False;
       wDataVerHis.F.Show;
       Exit;
   end;
end;


procedure TwDataInterconQ.PendEnDesactivar(Sender: TObject);
begin
    TxHYDialogConsulta(Sender).Enabled := True;
end;


procedure TwDataInterconQ.cInformeProvEspAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin
    WaitOn('Obrint . . ');

    TRY F:= TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        // Obrim la història (ens quedem a Estado = 2)
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        // Obrim interconsultes Proves Especials i ens situem a la sol·licitada:
        Tabs.ActivePage := TabSolExt;
        TabsSolExt.ActivePage := TabProvCompExt;
        wDataInterconQ.qInterConProvEsp.Open;
        wDataInterconQ.qInterConProvEsp.Locate('C_Intercon', Datos.FieldByName('C_Intercon').AsInteger, []);
    end;
    Refrescar;
end;

procedure TwDataInterconQ.cInterconNFAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin
    WaitOn('Obrint . . ');

    TRY F:= TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;

        // Obrim la història (ens quedem a Estado = 2)
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        
        // Obrim interconsultes i ens situem a la sol·licitada:
        Tabs.ActivePage := TabInterconsultes;
        TabsChange(Sender);
        PagIntercon.ActivePage := tabInterconEspMed;

        if not wDataInterconQ.qInterCon.Locate('C_InterCon', Datos.FieldByName('C_InterCon').Value, [])
        then FerError('Interconsulta no trobada!!', True);

    end;
    Refrescar;
end;


procedure TwDataInterconQ.cInterconNFEnClicAltreBoto(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  data_prev, data_repr: TDateTime;
  pregunta: String;
  Usuari: TMetge;
begin

    Usuari := PreguntaMetge;
    if (Usuari.Codi = '') then Exit;
    TeDretMetge(Usuari.Codi, [188], True);       

    data_prev := Datos.FieldByName('Data_Prevista').AsDateTime;

    if Datos.FieldByName('Data_Prevista').IsNull then pregunta := 'Programeu la prova de NF'
                                                 else pregunta := 'Programeu la prova de NF';

    data_repr := Calendario(data_prev, Catala, False, pregunta);

    if (data_repr <> 0) and (data_repr <> data_prev)
    then GutExecute('update INTERCON set DATA_PREVISTA = "%s", PROGRAMATPER = "%s", DATAPROGRAMAT = "NOW" where C_INTERCON = %d',
                    [FormatDateTime('dd.mm.yyyy', data_repr),
                     Usuari.Codi,
                     Datos.FieldByName('C_Intercon').AsInteger]);

    Sender.Refresca;
end;


procedure TwDataInterconQ.cInterconNFAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                                  State: TGridDrawState; Query: TQuery);
begin
    ColorBrush := clWhite;
    ColorFont  := clBlack;

    if (UpperCase(Column.Field.FieldName) = 'URGENT') and (Column.Field.AsString = 'S') then
    begin
        ColorBrush := clRed;
        ColorFont  := clWhite;
    end;

    if (gdSelected in State) then
    begin
        ColorBrush := clGray;
        ColorFont := clWhite;
    end;
end;

procedure TwDataInterconQ.qInterconMarxaAfterOpen(DataSet: TDataSet);
begin
qinterconvideos.Open;
end;

procedure TwDataInterconQ.cMarxaPendConsultaGetSqlField(
  Sender: THYConsulta; var SqlField: String);
begin
  if SqlField = 'DATA_PREVISTA' then SqlField := 'I.DATA_PROVA';
end;

procedure TwDataInterconQ.cMarxaPendEnClicAltreBoto(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
var
 Data: TDateTime;
 F: TwFichaVerHis; 
begin
  // Permetre informa la DATA_PROVA (= data prevista)
  Data := DateServer;
  Data := Calendario(Data, Catala, False, 'Data prevista');
  if (Data <> 0) then
  begin
      // Desem la DATA_PREVISTA
      GutExecute('update INTERCON set DATA_PREVISTA = "%s" where C_INTERCON=%d',
                 [FormatDateTime('dd.mm.yyyy',Data),Datos.FieldByName('c_intercon').AsInteger]);

      // Gravar anotació al curs clínic
      WaitOn('Obrint . . ');

      TRY F:= TwFichaVerHis(AbrirForm(TwFichaVerHis));
      FINALLY WaitOff;
      END;

      with F do
      begin
          MiConsulta := Sender;
          // Obrim la història (ens quedem a Estado = 2)
          ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
          MetgeCrea := wData.UsuariActiu;
          VeDeInterconRF := True;
          GrabarHistoria('Data prevista: '+FormatDateTime('dd-mm-yyyy',Data),
                         Datos.FieldByName('C_Prestacio'  ).AsString,
                         Datos.FieldByName('C_Coordinador').AsString,
                         Datos.FieldByName('Data_Ingres'  ).AsDateTime,
                         Datos.FieldByName('C_Tractament' ).AsInteger,
                         False,   // No és Epicrisi
                         False);  // No és normal (és Interconsulta)
          VeDeInterconRF := False;
      end;
      Refrescar;  
  end;

end;

procedure TwDataInterconQ.cMarxaPendFinAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin  
  // Viatgem a la interconsulta per a que pugui ser finalitzada
  WaitOn('Obrint . . ');

  TRY F:= TwFichaVerHis(AbrirForm(TwFichaVerHis));
  FINALLY WaitOff;
  END;

  with F do
  begin
      MiConsulta := Sender;
      // Obrim la història (ens quedem a Estado = 2)
      ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
      // Obrim interconsultes Anàlisi del moviment i ens situem a la sol·licitada:
      Tabs.ActivePage := TabInterconsultes;
      PagIntercon.ActivePage := TabInterconMarxa;
      wDataInterconQ.qInterconMarxa.Open;
      wDataInterconQ.qInterconMarxa.Locate('C_Intercon', Datos.FieldByName('C_Intercon').AsInteger, []);
  end;
  Refrescar;
end;


procedure TwDataInterconQ.qInterconPSGBeforeOpen(DataSet: TDataSet);
begin
    NoMirisPSG :=  True;
end;


procedure TwDataInterconQ.qDispCapAfterOpen(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormMaterialMHDA) then
    begin
        wDataVerHis.F.FormMaterialMHDA.bMatIncontModi.Visible := (qDispCap.FieldByName('C_Lote').AsInteger = -1)             and (not FT_ON);
        wDataVerHis.F.FormMaterialMHDA.bMatIncontNova.Visible := (not wDataVerHis.F.FormMaterialMHDA.bMatIncontModi.Visible) and (not FT_ON);
    end;
end;

procedure TwDataInterconQ.cTRespPendAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin
    WaitOn('Obrint . . ');

    TRY F:= TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;

        // Obrim la història (ens quedem a Estado = 2)
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        
        // Obrim interconsultes i ens situem a la sol·licitada:
        Tabs.ActivePage := TabInterconsultes;
        TabsChange(Sender);
        PagIntercon.ActivePage := tabInterconEspMed;

        if not wDataInterconQ.qInterCon.Locate('C_InterCon', Datos.FieldByName('C_InterCon').Value, [])
        then FerError('Interconsulta no trobada!!', True);

    end;
    Refrescar;
end;

procedure TwDataInterconQ.cPacientsUHAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  C_Intercon: Integer;
  Anotacio: String;
  Quants: Integer;
begin
    ARA := NowServer;
    Anotacio := GutSelect('SELECT ANOTACIO FROM HISTORIA WHERE C_INTERCON = %d AND ESTAT_INTERCON=5', [qInterconAnal.FieldByName('C_Intercon').AsInteger]);

    Datos.First;
    Quants := 0;
    while not Datos.Eof do
    begin
        if cPacientsUH.PanelGrid.SelectedRows.CurrentRowSelected then
        begin
            C_Intercon := GutGen_ID('ContaIntercon');

            GutExecute('insert into INTERCON (C_INTERCON, C_ESPECIAL, C_TIPUS, URGENT, C_HISTORIA, C_TRACTAMENT, DATA1, C_METGE1, SOLICITA, ESTAT, DATA_PREVISTA) ' +
                       'select %d, C_ESPECIAL, C_TIPUS, URGENT, %d, %d, "%s", "%s", SOLICITA, 5, "%s" ' +
                       'from INTERCON where C_INTERCON = %d',
                       [C_Intercon,
                        Datos.FieldByName('C_Historia').AsInteger,
                        Datos.FieldByName('C_Tractament').AsInteger,
                        FormatDateTime('dd.mm.yyyy hh:nn:ss', ARA),
                        wDataVerHis.F.MetgeCrea.Codi,
                        FormatDateTime('dd.mm.yyyy', ARA),
                        qInterconAnal.FieldByName('C_Intercon').AsInteger],
                       False);

            GutExecute('insert into ANALIT_SOLICITUD (ID, CODI, DATA, C_INTERCON, OBSERVACIONES, URGENTE, MOTIVO) ' +
                       'select Gen_ID(ANALIT_SOLICITUD_ID_GEN, 1), CODI, "%s", %d, OBSERVACIONES, URGENTE, MOTIVO ' +
                       'from ANALIT_SOLICITUD where C_INTERCON = %d' ,
                       [FormatDateTime('dd.mm.yyyy hh:nn:ss', ARA),
                        C_Intercon,
                        qInterconAnal.FieldByName('C_Intercon').AsInteger],
                       False);

            // Faig commit o no puc desar anotació amb referència a C_Intercon
            wData.IBTransGutt.CommitRetaining;

            with wDataVerHis.qAppend do
            begin
                ParamByName('C_Anotacio').AsInteger     := SelectGenId(wData.Gdb.DataBaseName, 'CONTAHISTORIA', 1);
                ParamByName('C_Historia').AsString      := Datos.FieldByName('C_Historia').AsString;
                ParamByName('C_Tractament').AsInteger   := Datos.FieldByName('C_Tractament').AsInteger;
                ParamByName('C_Prestacio').AsString     := Datos.FieldByName('C_Prestacio').AsString;
                ParamByName('Data_Ingres').AsDateTime   := Datos.FieldByName('Data_Ingres').AsDateTime;
                ParamByName('C_Coordinador').AsString   := Datos.FieldByName('C_Coordinador').AsString;
                ParamByName('Data').AsDateTime          := Ara;
                ParamByName('C_Usuari').AsString        := wDataVerHis.F.MetgeCrea.Codi;
                ParamByName('Anotacio').AsString        := Anotacio;
                ParamByName('C_Grup').AsString          := wDataVerHis.F.MetgeCrea.Grup;
                ParamByName('EsEpicrisi').AsString      := 'N';
                ParamByName('C_InterCon').AsInteger     := C_Intercon;
                ParamByName('Estat_Intercon').AsInteger := 5;
                ParamByName('EsNormal').AsString        := 'N';
                ParamByName('QueEs').Clear;
                ParamByName('Link').Clear;
                ExecSql;
            end;

            Quants := Quants + 1;
        end;
        Datos.Next;
    end;

    wData.IBTransGutt.CommitRetaining;
    if (Quants > 0) then ShowMensaje(Format('%d sol·licituds realitzades.', [Quants]));
end;

end.
