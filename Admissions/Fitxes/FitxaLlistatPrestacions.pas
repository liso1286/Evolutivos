unit FitxaLlistatPrestacions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ExtCtrls, Buttons, HYDialogConsulta, StdCtrls, HYEdit,
  ActnList, db, Variants, kbmMemTable, DBTables, HYCalendari, QRCtrls,
  QuickRpt;

type
  TwFitxaLlistatPrestacions = class(TForm)
    pPrestacions: HYPanelConsulta;
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    bFiltrar: TSpeedButton;
    Filtro: THYEditFiltro;
    SpeedButton1: TSpeedButton;
    PrestaAction: TActionList;
    accFiltrar: TAction;
    accHistorial: TAction;
    SpeedButton2: TSpeedButton;
    acc1004: TAction;
    bAltes: TSpeedButton;
    sbEtiquetes: TSpeedButton;
    accEtiquetes: TAction;
    mtEtiquetes: TkbmMemTable;
    mtEtiquetesNUM_HIST: TIntegerField;
    mtEtiquetesNomComplet: TStringField;
    mtEtiquetesFECHA_NAC: TDateTimeField;
    SpeedButton5: TSpeedButton;
    accCoord2004: TAction;
    cCoordinador: THYConsulta;
    sbAlta: TSpeedButton;
    accCanviarAlta: TAction;
    mtEtiquetesTSI: TStringField;
    Panel4: TPanel;
    mtEtiquetessexe: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure accFiltrarExecute(Sender: TObject);
    procedure pPrestacionsAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure accHistorialExecute(Sender: TObject);
    procedure pPrestacionsAlChangeRegistro(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure acc1004Execute(Sender: TObject);
//-    procedure acc2006Execute(Sender: TObject);
    procedure bAltesClick(Sender: TObject);
    procedure FiltroChange(Sender: TObject);
    procedure accEtiquetesExecute(Sender: TObject);
    procedure accCoord2004Execute(Sender: TObject);
    procedure cCoordinadorAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure pPrestacionsConsultaGetSqlField(Sender: THYConsulta;
      var SqlField: String);
//-    procedure acc2016Execute(Sender: TObject);
    procedure accCanviarAltaExecute(Sender: TObject);
  private
    c_nou_metge : string;
  public
    { Public declarations }
  end;

var
  wFitxaLlistatPrestacions: TwFitxaLlistatPrestacions;

implementation

uses Data, DataAdmisio, DataBasics, funciones, Main, FitxaFiliacio,
  FitxaPendents;

{$R *.DFM}

procedure TwFitxaLlistatPrestacions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TwFitxaLlistatPrestacions.FormCreate(Sender: TObject);
begin

  if wMain.Nivell < 2 then
  begin
     acc1004.Enabled := False;
     accCoord2004.Enabled := False;
     pPrestacions.VerExcel := False;
     pPrestacions.CamposOculta.Add('N_Codi');
  end;

  if TeDretAcces([79,590]) then pPrestacions.VerExcel := True;  //vfo - parte 35245

  Filtro.Valor1 := DateToStr(DateServer);
  Filtro.Valor2 := DateToStr(DateServer);
{ Filtro.Valor1 := ('01/'+FormatFloat('00',mes(dateServer))+'/'+IntToStr(any(dateServer)));
  Filtro.Valor2 := ('01/'+FormatFloat('00',mes(dateServer))+'/'+IntToStr(any(dateServer)));}
//  Filtro.Valor2 := (IntToStr(DaysPerMonth(any(DateServer), mes(dateServer)))+'/'+FormatFloat('00', mes(DateServer))+'/'+IntToStr(any(dateServer)));
  pPrestacions.Execute('','');
  bFiltrar.Down := True;

end;

procedure TwFitxaLlistatPrestacions.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TwFitxaLlistatPrestacions.accFiltrarExecute(Sender: TObject);
begin
     if pPrestacions.Datos.Active then pPrestacions.Datos.Close;
     pPrestacions.SqlDic[10]     := Format('where DATA_INGRES between "%s" and "%s"', [FechaIB(StrToDate(Filtro.Valor1)), FechaIB(StrToDate(Filtro.Valor2))]);
     pPrestacions.SqlDicTotal[8] := Format('where DATA_INGRES between "%s" and "%s"', [FechaIB(StrToDate(Filtro.Valor1)), FechaIB(StrToDate(Filtro.Valor2))]);
     pPrestacions.Execute('','');

//     if bAltes.Down
//     then bAltes.Down := False
end;

procedure TwFitxaLlistatPrestacions.pPrestacionsAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  i: integer;
begin
  mtEtiquetes.Close;
  mtEtiquetes.Open;

  For i := 0 to pPrestacions.PanelGrid.SelectedRows.Count -1 do
  begin

      pPrestacions.Datos.BookMark := pPrestacions.PanelGrid.SelectedRows[i];

      if (not pPrestacions.Datos.FieldbyName('C_Historia').isNull)
      and ((pPrestacions.Datos.FieldbyName('C_Prestacio').asstring = '2005') or
           (pPrestacions.Datos.FieldbyName('C_Prestacio').asstring = '2006'))  // NOMÉS IMPRIMIM ETIQUETES DE LES '2005' i '2006'
      then
      begin
            mtEtiquetes.Insert;
            mtEtiquetes.FieldByName('Num_Hist'      ).Value := pPrestacions.Datos.FieldbyName('C_Historia').Value;
            mtEtiquetes.FieldByName('NomComplet'    ).Value := pPrestacions.Datos.FieldbyName('NomComplet').Value;
            mtEtiquetes.FieldByName('Fecha_Nac'     ).Value := pPrestacions.Datos.FieldbyName('Fecha_Nac' ).Value;
            mtEtiquetes.FieldByName('TSI'           ).Value := pPrestacions.Datos.FieldbyName('TSI'       ).Value;
            mtEtiquetes.FieldByName('SEXE'          ).Value := pPrestacions.Datos.FieldbyName('SEXO'      ).Value;
      end;
  end;
  ImprimirEtiquetes(mtEtiquetes, 3);
end;


procedure TwFitxaLlistatPrestacions.accHistorialExecute(Sender: TObject);
begin
   VerHistoria(pPrestacions.Datos.FieldbyName('C_Historia').asInteger, pPrestacions.Datos.FieldbyName('NomComplet').asString);
end;


procedure TwFitxaLlistatPrestacions.pPrestacionsAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin

  accHistorial.enabled := not (Datos.Eof and Datos.Bof);

  acc1004.Enabled := TeDretPresta(Datos.FieldbyName('C_Prestacio').asString, [106])
                 and (not TeIngres(Datos.FieldbyName('C_Historia').asString))
                 and (Datos.FieldbyName('Data_Ingres').asDateTime = DateServer)
                 and (Datos.FieldbyName('C_EstatFac').asString <> '80')
                 and (wMain.Nivell > 1);

  accCoord2004.Enabled := TeDretPresta(Datos.FieldByName('c_prestacio').AsString, [189])
                      and (wMain.Nivell > 1);

  accEtiquetes.Enabled := (Datos.FieldbyName('C_Prestacio').asString = '2005') or (Datos.FieldbyName('C_Prestacio').asString = '2006');

  sbAlta.Enabled := TeDretPresta(Datos.FieldbyName('C_Prestacio').asString, [186])
                and TeDretMetge(wData.UsuariActiu.Codi, [253]);
end;


procedure TwFitxaLlistatPrestacions.acc1004Execute(Sender: TObject);
var
  Espera: String;
  qMotiu: TQuery;
  Op: Integer;
begin

    // BVG 15-2-2011:
    // Hem de mirar la compatibilitat excloent el tractament que s'està convertint (pq se substituirà o bé hauran de conviure):
    if PrestacionCompatible(pPrestacions.Datos.FieldbyName('C_Historia').AsString,
                            '1004',
                            pPrestacions.Datos.FieldByName('C_Tractament').AsInteger) then
    begin

        with TwFitxaFiliacio.Create(Application) do
        begin
            SUBSTITUEIX := TeDretPresta(pPrestacions.Datos.FieldByName('C_Prestacio').AsString, [116]);
            if SUBSTITUEIX then Caption := 'Convertir la prestació [' + pPrestacions.Datos.FieldByName('C_Prestacio').AsString  + '] a ingrés'
                           else Caption := 'Generar un ingrés a partir d''una [' + pPrestacions.Datos.FieldByName('C_Prestacio').AsString + ']';

            lPrestacio.EditValue := '1004 - Ingrés';
            eNHCNovaHCE.Text := pPrestacions.Datos.FieldbyName('C_Historia').AsString;

            Espera := GutSelect('select C_ESPERA from ESPERA where C_TRACTAMENTDESTI = %s', [pPrestacions.Datos.FieldByName('C_Tractament').AsString]);

            NUMESPERA := Espera;
            C_TractamentOrigen := 0;  // no ve de cap pre-programació (F8)
            AUTOGENERACIONINGRESO := True;
// PARTE 48014 - I.
//            ResultadoFiliacion := -1;
            ResultadoFiliacion := 90;  // Si no és 90, no obliga a informar la planta !!
// PARTE 48014 - F.

            tFiliacio.Open;
            tFiliacio.FindKey(VarArrayOf([pPrestacions.Datos.FieldByName('C_Historia').AsVariant]));
            tFiliacio.Edit;

            tTractaments.Open;
            tParent.Open;

            if SUBSTITUEIX then
            begin
                tTractaments.FindKey(VarArrayOf([pPrestacions.Datos.FieldByName('C_Tractament').AsVariant]));
                tTractaments.Edit;

                tTractaments.FieldByName('C_Caracter'   ).AsInteger := 1;   // urgent
//                tTractaments.FieldByName('C_Motiu'      ).AsInteger := 1;   // tractament de complicació
                tTractaments.FieldByName('Data_Alta'    ).Clear;

                tTractaments.FieldByName('c_motiu'      ).Clear;              // netegem motiu cirurgia i demanem un de complicació
            end
            else begin
                tTractaments.Insert;

                tTractaments.FieldbyName('Data_Ingres'  ).AsDateTime := DateServer;
                tTractaments.FieldbyName('Hora'         ).AsString   := FormatDateTime('hh:nn', NowServer);
                tTractaments.FieldbyName('C_Historia'   ).Assign(pPrestacions.Datos.FieldByName('C_Historia'   ));
                tTractaments.FieldbyName('C_Coordinador').Assign(pPrestacions.Datos.FieldByName('C_Coordinador'));
                tTractaments.FieldbyName('C_Caracter'   ).Assign(pPrestacions.Datos.FieldByName('C_Caracter'   ));
                tTractaments.FieldbyName('C_Origen'     ).Assign(pPrestacions.Datos.FieldByName('C_Origen'     ));
                tTractaments.FieldbyName('C_Solicitud'  ).Assign(pPrestacions.Datos.FieldByName('C_Solicitud'  ));
            end;

            tTractaments.FieldbyName('C_Prestacio'      ).AsString := '1004';
            tTractaments.FieldbyName('C_PrestacioOrigen').AsString := pPrestacions.Datos.FieldByName('C_Prestacio').AsString;

            if SUBSTITUEIX then
            begin
                qMotiu := TQuery.Create(wFitxaPendents);
                TRY
                    qMotiu.DataBaseName := wData.GDB.DataBaseName;
                    qMotiu.SQL.Text :=  ' SELECT C.R_CODI, C.N_CODI, P.C_CODI                     '+
                                        ' FROM PRESTACODICAMPS P, CODICAMPS C, DRETSMOTIU D       '+
                                        ' WHERE P.C_CODI = C.C_CODI AND P.TIPUSCODI = C.TIPUSCODI '+
                                        ' AND P.C_CODI = D.C_MOTIU AND D.C_DRET = "X3"            '+
                                        ' AND C_PRESTACIO = "1004" AND P.TIPUSCODI = "MOTIU"      '+
                                        ' ORDER BY P.C_CODI                                       ';
                    qMotiu.Open;
                    qMotiu.First;

                    Op := AvisoListaBd('Triar el motiu de complicació', qMotiu, 0, 2);
                    if (Op <> -1) then tTractaments.FieldByName('C_Motiu').AsInteger := qMotiu.FieldbyName('C_CODI').AsInteger
                                  else Exit;
                FINALLY
                    qMotiu.Free;
                END;
            end;

            mostrarPaneles('1004');
            consulta:=Self.Caption;  // parte 52244
        end;

    end

    else FerError(' * * HI HA UN TRACTAMENT ACTIU INCOMPATIBLE AMB LA PRESTACIÓ [1004]  * * ', True);
end;



procedure TwFitxaLlistatPrestacions.bAltesClick(Sender: TObject);
begin
   if pPrestacions.Datos.Active then pPrestacions.Datos.Close;
   pPrestacions.SqlDic[10]     := Format('where DATA_ALTA between "%s" and "%s"', [FechaIB(StrToDate(Filtro.Valor1)), FechaIB(StrToDate(Filtro.Valor2))]);
   pPrestacions.SqlDicTotal[8] := Format('where DATA_ALTA between "%s" and "%s"', [FechaIB(StrToDate(Filtro.Valor1)), FechaIB(StrToDate(Filtro.Valor2))]);
   pPrestacions.Execute('','');

//   if bFiltrar.Down
//   then bFiltrar.Down := False

end;

procedure TwFitxaLlistatPrestacions.FiltroChange(Sender: TObject);
begin
   bFiltrar.Down := False;
   bAltes.Down := False;
end;

procedure TwFitxaLlistatPrestacions.accEtiquetesExecute(Sender: TObject);
begin
  pPrestacions.Seleccionar;
end;


procedure TwFitxaLlistatPrestacions.accCoord2004Execute(Sender: TObject);
begin
  cCoordinador.ExecuteModal('','');
end;


procedure TwFitxaLlistatPrestacions.cCoordinadorAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  qHist: TQuery;
begin
  c_nou_metge := Datos.FieldByName('codi').AsString;
  if (pPrestacions.Datos.FieldbyName('C_COORDINADOR').asString = c_nou_metge)
  then FerError('S''ha de triar un coordinador diferent de l''actual.',True);

  // canviar coordinador revisió
  if AvisoSN('Voleu canviar el metge coordinador: '+pPrestacions.Datos.FieldbyName('C_COORDINADOR').asString+' pel '+c_nou_metge+' (S/N)?') then
  begin
      // canviem el coordinador del tractament
      GutExecute('update tractaments set c_coordinador = "%S" where c_tractament = %d',
                 [c_nou_metge,pPrestacions.Datos.FieldByName('C_TRACTAMENT').AsInteger]);

      // parte 52244 - i
      if wData.UsuariActiu.Codi = '' then PreguntaMetge; wMain.StatusTraza := '';
      wMain.LastTraza := wData.ObraTrazaControl(pPrestacions.Datos.FieldbyName('C_Historia').AsInteger,Self.Caption,wMain.Aplica,
                                                pPrestacions.Datos.FieldByName('C_TRACTAMENT').AsInteger);
      wMain.AddStatusTraza('k');
      if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);
      // parte 52244 - f

      // canviem el coordinador de les anotacions associades al tractament
      // per les peticions d'interconsultes automàtiques cal canviar també l'usuari
      qHist := TQuery.Create(wFitxaLlistatPrestacions);
      qHist.DatabaseName := 'interna';
      qHist.SQL.Text := 'select c_anotacio, estat_intercon, c_intercon from historia where c_tractament = '+pPrestacions.Datos.FieldByName('C_TRACTAMENT').AsString;
      qHist.Open;

      while not qHist.Eof do
      begin
          if (qHist.FieldByName('Estat_Intercon').AsInteger = 5)  // petició analítica
          or (qHist.FieldByName('Estat_Intercon').AsInteger = 6)  // petició rx
          or (qHist.FieldByName('Estat_Intercon').AsInteger = 12) // petició uro
          then begin
              GutExecute('update historia set c_coordinador = "%S", c_usuari ="%S" where c_anotacio = %d',
                         [c_nou_metge, c_nou_metge,qHist.FieldByName('c_anotacio').AsInteger]);

              // la interconsulta d'ECOS no actualitza el metge sol·licitant, per tant, cal fer-ho a mà
              if (qHist.FieldByName('Estat_Intercon').AsInteger = 12)
              then GutExecute('update intercon set c_metge1 = "%S" where c_intercon = %d',
                              [c_nou_metge,qHist.FieldByName('c_Intercon').AsInteger]);
          end
          else GutExecute('update historia set c_coordinador = "%S" where c_anotacio = %d',
                          [c_nou_metge, qHist.FieldByName('c_anotacio').AsInteger]);

          qHist.Next;
      end;

      qHist.Free;
      pPrestacions.Execute('','');    // per refrescar les dades del panel consulta
      ShowMessage('Canvi de coordinador realitzat correctament.');
  end;
end;

procedure TwFitxaLlistatPrestacions.pPrestacionsConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
begin
    if      (UpperCase(SqlField) = 'MOTIU')            then SqlField := 'D.N_CODI'
    else if (UpperCase(SqlField) = 'ESTAT_FACTURACIO') then SqlField := 'C.N_CODI'
    else if (UpperCase(SqlField) = 'C_HISTORIA')       then SqlField := 'T.C_HISTORIA'   // PARTE 61796
    else if (UpperCase(SqlField) = 'CONTINUA_NPT')     then Abort;   // SqlField := 'NP.N_CODI'; -- peta, no reconeix camp NP.N_CODI
end;


procedure TwFitxaLlistatPrestacions.accCanviarAltaExecute(Sender: TObject);
var
  DataAltaNova: TDateTime;
  C_Tractament: Variant;
begin
   if AvisoSN('ATENCIÓ! Si es modifica la data d''alta d''un tractament ja facturat es tindran incongruències amb les dades enviades al CMBD. '+#13+'Voleu continuar (S/N)?') then
   begin
       DataAltaNova := Calendario(pPrestacions.Datos.FieldbyName('DATA_ALTA').AsDateTime, Catala, False, 'Introdueix la nova data d''alta');
       if DataAltaNova > 0 then
       begin
           if DataAltaNova < pPrestacions.Datos.FieldbyName('DATA_INGRES').AsDateTime then FerError('La data d''alta no pot ser anterior a la data d''ingrés.',True);

           GutExecute('Update Tractaments set Data_Alta = "%s" where C_Tractament = "%s"',
                      [FormatDateTime('dd.mm.yyyy',DataAltaNova),pPrestacions.Datos.FieldbyName('C_Tractament').asString]);

           if wData.UsuariActiu.Codi = '' then PreguntaMetge; wMain.StatusTraza := '';
           wMain.LastTraza := wData.ObraTrazaControl(pPrestacions.Datos.FieldbyName('C_Historia').AsInteger,Self.Caption,wMain.Aplica,
                                                     pPrestacions.Datos.FieldbyName('C_Tractament').asInteger);
           wMain.AddStatusTraza('k');
           if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);

           C_Tractament := pPrestacions.Datos.FieldbyName('C_Tractament').asVariant;
           pPrestacions.RefreshSQL;
           pPrestacions.Datos.Locate('C_Tractament', C_Tractament, []);
       end;
   end;
end;


end.




// ACCIONS OBSOLETES, PODEN CANVIAR AQUESTESPRESTACIONS DES D'ALTRES LLOCS
{
procedure TwFitxaLlistatPrestacions.acc2016Execute(Sender: TObject);
begin

    // BVG 15-2-2011:
    // Hem de mirar la compatibilitat excloent el tractament que s'està convertint (pq se substituirà o bé hauran de conviure):
    if PrestacionCompatible(pPrestacions.Datos.FieldbyName('C_Historia').AsString,
                            '2016',
                            pPrestacions.Datos.FieldByName('C_Tractament').AsInteger) then
    begin
       if AvisoSN('passar de ['+pPrestacions.Datos.FieldbyName('C_Prestacio').asString+'] a [2016] ?') then
       begin
           With TwFitxaFiliacio.Create(Application) do
           begin
                Caption := 'Canvi de Prestació ['+pPrestacions.Datos.FieldbyName('C_Prestacio').asString+'] a [2016]';
                lPrestacio.EditValue := '2016 - Pielografia ';
                eNHCNovaHCE.Text := pPrestacions.Datos.FieldbyName('C_Historia').AsString;

                NUMESPERA := '-1';

                tFiliacio.Open;
                tFiliacio.FindKey( VarArrayof([pPrestacions.Datos.FieldbyName('C_Historia').asVariant]));
                tFiliacio.Edit;
                tTractaments.Open;
                tTractaments.FindKey( VarArrayof([pPrestacions.Datos.FieldbyName('C_Tractament').asVariant]));
                tTractaments.Edit;
                tParent.Open;

                tTractaments.FieldbyName('C_Prestacio').asString := '2016';


                // ***>>******>>** BORRAMOS LOS CAMPOS QUE NO SEAN NECESARIOS EN LA PRIMERA PRESTACION ****>>**********>>
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 40 ]) then tTractaments.FieldbyName('Data_Ingres'  ).Clear;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 41 ]) then tTractaments.FieldbyName('Hora'         ).asString := '00:00';
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 50 ]) then tTractaments.FieldbyName('C_Origen'     ).asInteger := 0;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 52 ]) then tTractaments.FieldbyName('C_Caracter'   ).asInteger := 0;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 53 ]) then tTractaments.FieldbyName('C_Solicitud'  ).asInteger := -1;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 54 ]) then tTractaments.FieldbyName('C_Llit'       ).Clear;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 55 ]) then tTractaments.FieldbyName('C_Planta'     ).Clear;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 66 ]) then tTractaments.FieldbyName('C_Frequencia' ).Clear;
                // <<******<<***** BORRAMOS LOS CAMPOS QUE NO SEAN NECESARIOS EN LA PRIMERA PRESTACION ****<<*******<<***<<

                CAMBIODEPRESTACION2016 := True;
                mostrarPaneles('2016');
                consulta:=Self.Caption;  // parte 52244
           end;
       end;
     end
     else
    begin
        FerError(' * * HI HA UN TRACTAMENT ACTIU INCOMPATIBLE AMB LA PRESTACIÓ [2016]  * * ', True);
    end;
end;


procedure TwFitxaLlistatPrestacions.acc2006Execute(Sender: TObject);
begin

    // BVG 15-2-2011:
    // Hem de mirar la compatibilitat excloent el tractament que s'està convertint (pq se substituirà o bé hauran de conviure):
    if PrestacionCompatible(pPrestacions.Datos.FieldbyName('C_Historia').AsString,
                            '2006',
                            pPrestacions.Datos.FieldByName('C_Tractament').AsInteger) then
    begin

       if AvisoSN('passar de ['+pPrestacions.Datos.FieldbyName('C_Prestacio').asString+'] a [2006] ?') then
       begin

           With TwFitxaFiliacio.Create(Application) do
           begin

                Caption := 'Canvi de Prestació ['+pPrestacions.Datos.FieldbyName('C_Prestacio').asString+'] a [2006]';
                lPrestacio.EditValue := '2006 - Intervenció menor ambulatòria';
                eNHCNovaHCE.Text := pPrestacions.Datos.FieldbyName('C_Historia').AsString;

                NUMESPERA := '-1';

                tFiliacio.Open;
                tFiliacio.FindKey( VarArrayof([pPrestacions.Datos.FieldbyName('C_Historia').asVariant]));
                tFiliacio.Edit;
                tTractaments.Open;
                tTractaments.FindKey( VarArrayof([pPrestacions.Datos.FieldbyName('C_Tractament').asVariant]));
                tTractaments.Edit;
                tParent.Open;

                tTractaments.FieldbyName('C_Prestacio').asString := '2006';


                // ***>>******>>** BORRAMOS LOS CAMPOS QUE NO SEAN NECESARIOS EN LA PRIMERA PRESTACION ****>>**********>>
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 40 ]) then tTractaments.FieldbyName('Data_Ingres'  ).Clear;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 41 ]) then tTractaments.FieldbyName('Hora'         ).asString := '00:00';
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 50 ]) then tTractaments.FieldbyName('C_Origen'     ).asInteger := 0;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 52 ]) then tTractaments.FieldbyName('C_Caracter'   ).asInteger := 0;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 53 ]) then tTractaments.FieldbyName('C_Solicitud'  ).asInteger := -1;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 54 ]) then tTractaments.FieldbyName('C_Llit'       ).Clear;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 55 ]) then tTractaments.FieldbyName('C_Planta'     ).Clear;
                if not TeDretPresta(tTractaments.FieldbyName('C_Prestacio').asString, [ 66 ]) then tTractaments.FieldbyName('C_Frequencia' ).Clear;
                // <<******<<***** BORRAMOS LOS CAMPOS QUE NO SEAN NECESARIOS EN LA PRIMERA PRESTACION ****<<*******<<***<<

                CAMBIODEPRESTACION2006 := True;

                mostrarPaneles('2006');
                consulta:=Self.Caption;  // parte 52244
           end;
       end;
    end

    else FerError(' * * HI HA UN TRACTAMENT ACTIU  INCOMPATIBLE AMB LA PRESTACIÓ [2006]  * * ', True);
end;
}

