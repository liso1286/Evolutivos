unit FitxaHistorial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, HYDialogConsulta, ComCtrls, ToolWin, ActnList, db, Grids, dbGrids, dbTables, Variants,
  Menus, Buttons, StdCtrls, DBCtrls, HYLabel, HYEdit, Hy_Misc;

type
  TwFitxaHistorial = class(TForm)
    pHistorial: HYPanelConsulta;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    tbAlta: TToolButton;
    Historials: TActionList;
    accConsultar: TAction;
    accEditar: TAction;
    accAlta: TAction;
    accSortir: TAction;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    qHistoria: TQuery;
    mgcDesti: THyMoveGroupControl;
    sbDesa: TSpeedButton;
    sbTanca: TSpeedButton;
    Eti_Destinacio_N_Codi: TLabel;
    Destinacio: TEdit;
    Label1: TLabel;
    pDestiCont: TPanel;
    lDestiCont: TLabel;
    Desti_cont: TEdit;
    Eti_Desti_cont: TLabel;
    pHospital: TPanel;
    Label2: TLabel;
    Hospital: TEdit;
    Eti_N_Hospital: TLabel;
    cHospital: THYConsulta;
    cDesti: THYConsulta;
    Edit1: TEdit;
    cDestiCont: THYConsulta;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pHistorialAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure accConsultarExecute(Sender: TObject);
    procedure accEditarExecute(Sender: TObject);
    procedure accSortirExecute(Sender: TObject);
    procedure pHistorialAlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Query: TQuery);
    procedure pHistorialAlChangeRegistro(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure accAltaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbTancaClick(Sender: TObject);
    procedure sbDesaClick(Sender: TObject);
    procedure HospitalEnter(Sender: TObject);
    procedure cHospitalAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure cDestiAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure pHistorialEnClicAltreBoto(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure DestinacioEnter(Sender: TObject);
    procedure Desti_contEnter(Sender: TObject);
    procedure cDestiContAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    MiFormEdit: TCustomForm;
  end;

var
  wFitxaHistorial: TwFitxaHistorial;

implementation

uses Data, DataAdmisio, DataBasics, FitxaFiliacio, Funciones, Main, FitxaEspera, FitxaLlistaEspera;

{$R *.DFM}

procedure TwFitxaHistorial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TwFitxaHistorial.pHistorialAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  accConsultar.Execute;
end;

procedure TwFitxaHistorial.accConsultarExecute(Sender: TObject);
begin
    With TwFitxaFiliacio.Create(Application) do     
    begin

      Caption := 'Consulta Filiació ('+ pHistorial.Datos.FieldbyName('C_Historia').asString+')';
      eNHCNovaHCE.Text := pHistorial.Datos.FieldbyName('C_Historia').asString;

      lPrestacio.EditValue := pHistorial.Datos.FieldbyName('C_Prestacio').asString+'-'+pHistorial.Datos.FieldbyName('N_Prestacio').asString;
      bBorrar.Enabled := False;

      tFiliacio.RequestLive    := False;
      tTractaments.RequestLive := False;
      tParent.RequestLive      := False;

      NUMESPERA := '-1';
      tFiliacio.Open;
      tFiliacio.FindKey( VarArrayof([pHistorial.Datos.FieldbyName('c_Historia').asVariant]));
      tTractaments.Open;
      tTractaments.FindKey( VarArrayof([pHistorial.Datos.FieldbyName('C_Tractament').asVariant]));
      tParent.Open;
      mostrarpaneles( pHistorial.Datos.FieldbyName('C_Prestacio').asString );
      consulta:=Self.Caption;  
end;
end;

procedure TwFitxaHistorial.accEditarExecute(Sender: TObject);
begin
   if pHistorial.DataSource.DataSet.FieldByName('C_EstatFac').asString = '80'
   then ShowMessage('Episodi facturat. S''ha de tenir en compte de cara a la factura si es modifica alguna dada.');

   With TwFitxaFiliacio.Create(Application) do
   begin
      Caption := 'Edició Filiació ('+ pHistorial.Datos.FieldbyName('C_Historia').asString+')';
      lPrestacio.EditValue := pHistorial.Datos.FieldbyName('C_Prestacio').asString+'-'+pHistorial.Datos.FieldbyName('N_Prestacio').asString;
      eNHCNovaHCE.Text := pHistorial.Datos.FieldbyName('C_Historia').asString;

      NUMESPERA := '-1';

      tFiliacio.Open;
      tFiliacio.FindKey( VarArrayof([pHistorial.Datos.FieldbyName('C_Historia').asVariant]));
      tTractaments.Open;
      tTractaments.FindKey( VarArrayof([pHistorial.Datos.FieldbyName('C_Tractament').asVariant]));
      tParent.Open;

      mostrarpaneles( pHistorial.Datos.FieldbyName('C_Prestacio').asString );
      consulta:=Self.Caption;  
   end;
end;



procedure TwFitxaHistorial.accSortirExecute(Sender: TObject);
begin
  Close;
end;

procedure TwFitxaHistorial.pHistorialAlPintarGrid(var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Query: TQuery);
begin
  if not Query.FieldbyName('Data_Ingres').isNull then
  begin
     if Query.FieldbyName('Data_Alta').isNull then ColorFont := clGreen;
  end;
end;

procedure TwFitxaHistorial.pHistorialAlChangeRegistro(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
   {-
   accGenerarIngres.Enabled := ((Datos.fieldbyName('Data_Ingres').asDateTime = DateServer)
                                 and (Datos.FieldbyName('C_EstatFac').asString <> '80'))
                                 and (not TeIngres(Datos.fieldbyName('C_Historia').asString)
                                 and (TeDretPresta(Datos.FieldbyName('C_Prestacio').asString, [106]))
                                 and (wMain.Nivell > 1));
   -}

   accEditar.Enabled := (TeDretMetge(wData.UsuariActiu.Codi, [258]) or (Datos.FieldbyName('C_EstatFac').asString <> '80'))
                        and (wMain.Nivell > 1);

   if EsVisita(Datos.fieldbyName('C_Prestacio').asString) then
   begin
      accAlta.Enabled := False;
      exit;
   end;

   if  pHistorial.Datos.fieldbyName('Data_Alta').isNull  then
   begin
      accAlta.ImageIndex := 40;
      accAlta.Enabled    := wMain.Nivell > 1;
   end
   else
   begin
      accAlta.ImageIndex := 38;
      accAlta.Enabled := ((Datos.FieldbyName('C_EstatFac').asString <> '80')
              {        and (   ( Datos.FieldbyName('Data_Alta').isNull )
                           or ( (DateServer - Datos.FieldbyName('Data_Alta').asDateTime) <= 7 ) )    }
                      and (wMain.Nivell > 1));
   end;
end;

procedure TwFitxaHistorial.accAltaExecute(Sender: TObject);
var
  C_Tractament: Variant;
  hist: String;
  presta_no_comp, errorcomp: String;  
  MesDAlta, MesAvui: Integer;
begin

  if (not pHistorial.Datos.fieldbyName('Data_Alta').isNull)
  and AvisoSN('Vols eliminar la data d''Alta?') then
  begin
      // mirem si la prestació que es torna a activar és compatible amb les que el pacient té actives. Altrament, donem error
      if (pHistorial.Datos.FieldByName('Data_Ingres').AsDateTime < DateServer)
      and EsPle(pHistorial.Datos.FieldByName('C_Historia').AsString)
      then begin
          errorcomp := '';
          TRY
             // busquem totes les prestacions que estaven actives entre la data d'ingrés del tractament a reactivar i avui, amb les seves incompatibilitats
             // i mirem si la prestació que reactiven és una d'elles (de les incompatibilitats)
             presta_no_comp := GutSelect('select T.C_PRESTACIO ' +
                                         'from TRACTAMENTS T join PRESTACOMP P on P.C_PRESTACIO = T.C_PRESTACIO ' +
                                         'join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "ESTATFACTU" and X.R_CODI <> 9 ' +  // no anul·lades
                                         'where T.C_HISTORIA = %d and T.C_TRACTAMENT <> %d ' +
                                         'and   T.DATA_ALTA >= "%s" ' +  // no cal mirar les actives pq ja ho haurà comprovat abans
                                         'and P.C_PRESTACOMP = "%s"',
                                         [pHistorial.Datos.FieldByName('C_Historia').AsInteger,
                                          pHistorial.Datos.FieldByName('C_Tractament').AsInteger,
                                          FormatDateTime('dd.mm.yyyy', pHistorial.Datos.FieldByName('Data_Ingres').AsDateTime),
                                          pHistorial.Datos.FieldByName('C_Prestacio').AsString]);
          EXCEPT
             on e: Exception do errorcomp := 'Hi ha hagut un error en comprovar compatibilitats. ' + NLine +  e.Message;
          END;
          if (errorcomp <> '') then FerError(errorcomp, True);
          if (presta_no_comp <> '') then FerError('Hi ha una prestació (%s) amb data d''alta posterior a la data d''ingrés de la que esteu filiant, ' +
                                                  'que és incompatible amb la que esteu filiant', [presta_no_comp], True);
      end;

      // SAP: si eliminen la data alta i era del mes anterior, mostrar avís de possible incongruència amb el CMBD (potser ja està facturat a SAP)
      MesDAlta := Mes(pHistorial.Datos.FieldbyName('DATA_ALTA').AsDateTime);
      MesAvui  := Mes(DateServer);
      if  ((MesDAlta < MesAvui) and
           AvisoSN('ATENCIÓ! Si es modifica la data d''alta d''un tractament ja facturat es tindran incongruències amb les dades enviades al CMBD. '+#13+'Voleu continuar (S/N)?'))
      or  (MesDAlta >= MesAvui)
      then begin
          GutExecute('Update Tractaments set Data_Alta = NULL where C_Tractament = "%s"',
                     [PHistorial.Datos.FieldbyName('C_Tractament').asString]);

          if wData.UsuariActiu.Codi = '' then PreguntaMetge; wMain.StatusTraza := '';
          wMain.LastTraza := wData.ObraTrazaControl(PHistorial.Datos.FieldbyName('C_Historia').AsInteger,Self.Caption,wMain.Aplica,
                                                    PHistorial.Datos.FieldbyName('C_Tractament').asInteger);
          wMain.AddStatusTraza('k');
          if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);

          C_Tractament := PHistorial.Datos.FieldbyName('C_Tractament').asVariant;
          pHistorial.RefreshSQL;
          PHistorial.Datos.Locate('C_Tractament', C_Tractament, []);
      end;
  end
  else begin
      hist := pHistorial.Datos.FieldbyName('C_Historia').AsString;

      With TwFitxaFiliacio.Create(Application) do
      begin
         DonarAlta(pHistorial.Datos.FieldbyName('C_Tractament').AsInteger);
      end;
  end;

end;

procedure TwFitxaHistorial.FormCreate(Sender: TObject);
begin
  if wMain.Nivell < 2 then
  begin
    accEditar.Enabled := False;
    accAlta.Enabled := False;
    pHistorial.VeureAltreBoto := False;
    pHistorial.VerSimple := True;

    pHistorial.camposOculta.Add('N_CentreFac');
    pHistorial.camposOculta.Add('ESTAT_FACTURACIO');
    
  end;
end;


procedure TwFitxaHistorial.sbTancaClick(Sender: TObject);
begin
  mgcDesti.Hide;
end;

procedure TwFitxaHistorial.sbDesaClick(Sender: TObject);
var
 cDestinacio, cDestiContInt, cDestiContExt, cHospitalDesti: Integer;
 tmp: String;
begin
  if (Destinacio.Text = '') or (Destinacio.Text = '-1') then FerError('És obligatori informar la destinació del pacient',True)
  else cDestinacio := StrToInt(Destinacio.Text);

  if pDestiCont.Visible then
  begin
      if lDestiCont.Caption = 'Destí continuïtat externa' then
      begin
          if (Desti_cont.Text = '') then FerError('És obligatori informar la destinació amb continuïtat externa del pacient',True)
          else cDestiContExt  := StrToInt(Desti_cont.Text);

          if pHospital.Visible then
          begin
              if (Hospital.Text = '') or (Hospital.Text = '-1') then FerError('És obligatori informar l''hospital destí', True)
              else cHospitalDesti := StrToInt(Hospital.Text);

              TRY GutExecute('UPDATE TRACTAMENTS SET C_DESTINACIO=%d, DESTI_CONT_EXT=%d, DESTI_CONT_INT=NULL, C_HOSPITALDESTI=%d WHERE C_TRACTAMENT=%d',
                             [cDestinacio, cDestiContExt, cHospitalDesti, pHistorial.DataSource.DataSet.FieldByName('C_TRACTAMENT').AsInteger]);
              FINALLY END;
          end
          else begin
              TRY GutExecute('UPDATE TRACTAMENTS SET C_DESTINACIO=%d, DESTI_CONT_EXT=%d, DESTI_CONT_INT=NULL, C_HOSPITALDESTI=-1 WHERE C_TRACTAMENT=%d',
                             [cDestinacio, cDestiContExt, pHistorial.DataSource.DataSet.FieldByName('C_TRACTAMENT').AsInteger]);
              FINALLY END;
          end;
      end
      else if lDestiCont.Caption = 'Destí continuïtat interna' then
      begin
          if (Desti_cont.Text = '') then FerError('És obligatori informar la destinació amb continuïtat interna del pacient',True)
          else cDestiContInt  := StrToInt(Desti_cont.Text);

          if pHospital.Visible then
          begin
              if (Hospital.Text = '') or (Hospital.Text = '-1') then FerError('És obligatori informar l''hospital destí', True)
              else cHospitalDesti := StrToInt(Hospital.Text);

              TRY GutExecute('UPDATE TRACTAMENTS SET C_DESTINACIO=%d, DESTI_CONT_EXT=NULL, DESTI_CONT_INT=%d, C_HOSPITALDESTI=%d WHERE C_TRACTAMENT=%d',
                             [cDestinacio, cDestiContInt, cHospitalDesti, pHistorial.DataSource.DataSet.FieldByName('C_TRACTAMENT').AsInteger]);
              FINALLY END;
          end
          else begin
              TRY GutExecute('UPDATE TRACTAMENTS SET C_DESTINACIO=%d, DESTI_CONT_EXT=NULL, DESTI_CONT_INT=%d, C_HOSPITALDESTI=-1 WHERE C_TRACTAMENT=%d',
                             [cDestinacio, cDestiContInt, pHistorial.DataSource.DataSet.FieldByName('C_TRACTAMENT').AsInteger]);
              FINALLY END;
          end;
      end;
  end
  else begin
      if pHospital.Visible then
      begin
          if (Hospital.Text = '') or (Hospital.Text = '-1') then FerError('És obligatori informar l''hospital destí', True)
          else cHospitalDesti := StrToInt(Hospital.Text);

          TRY GutExecute('UPDATE TRACTAMENTS SET C_DESTINACIO=%d, DESTI_CONT_EXT=NULL, DESTI_CONT_INT=NULL, C_HOSPITALDESTI=%d WHERE C_TRACTAMENT=%d',
                         [cDestinacio, cHospitalDesti, pHistorial.DataSource.DataSet.FieldByName('C_TRACTAMENT').AsInteger]);
          FINALLY END;
      end
      else begin
          TRY GutExecute('UPDATE TRACTAMENTS SET C_DESTINACIO=%d, DESTI_CONT_EXT=NULL, DESTI_CONT_INT=NULL, C_HOSPITALDESTI=-1 WHERE C_TRACTAMENT=%d',
                         [cDestinacio, pHistorial.DataSource.DataSet.FieldByName('C_TRACTAMENT').AsInteger]);
          FINALLY END;
      end;
  end;

  mgcDesti.Hide;

  if Destinacio.Text = '6' then
  begin
      // Si el fem exitus ensenyem les prestacions que s'exclouen que tenia pendents
      tmp := ExclourePrestacionsActives(pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsString);
      if EsPle(tmp) then ShowMensaje(tmp);

      TRY GutExecute('UPDATE FILIACIO SET ESVIU="N", MORT="%s" WHERE NUM_HIST=%d',
                    [FormatDateTime('dd.mm.yyyy',pHistorial.DataSource.DataSet.FieldbyName('DATA_ALTA').AsDateTime),
                     pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsInteger]);
      FINALLY END;

      // Si el fem exitus ensenyem les intervencions quirúrgiques que s'exclouen i que tenia pendents
      tmp := ExcloureAltresActives(pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsString);
      if EsPle(tmp) then ShowMensaje(tmp);

      tmp := FinalitzarProcesActiu(pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsString);
      if EsPle(tmp) then ShowMensaje(tmp);

      // 7-2-2019: afegim tractaments actius
      tmp := ExcloureTractamentsActius(pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsString, True);
      if EsPle(tmp) then ShowMensaje(tmp);
  end
  // si era Exitus i ara ja no ho és, cal desfer les exclusions per aquest motiu
  else if pHistorial.DataSource.DataSet.FieldByName('C_DESTINACIO').AsInteger = 6 then
  begin
      // Si el desfem exitus ensenyem les prestacions que es tornen a incloure que tenia pendents
      tmp := ExclourePrestacionsActives(pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsString,False);
      if EsPle(tmp) then ShowMensaje(tmp);

      TRY GutExecute('UPDATE FILIACIO SET ESVIU="S", MORT=NULL WHERE NUM_HIST=%d', [pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsInteger]);
      FINALLY END;

      // Si el desfem exitus ensenyem les intervencions quirúrgiques que s'inclouen i que tenia pendents
      tmp := ExcloureAltresActives(pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsString,False);
      if EsPle(tmp) then ShowMensaje(tmp);

      tmp := FinalitzarProcesActiu(pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsString,False);
      if EsPle(tmp) then ShowMensaje(tmp);

      // 7-2-2019: afegim tractaments actius
      tmp := ExcloureTractamentsActius(pHistorial.DataSource.DataSet.FieldbyName('C_HISTORIA').AsString, False);
      if EsPle(tmp) then ShowMensaje(tmp);
  end;

  pHistorial.RefreshSql;
end;

procedure TwFitxaHistorial.HospitalEnter(Sender: TObject);
begin
  if  (Destinacio.Text = '2') then
  begin
      cHospital.Filtros[0].Valor1 := '';
      cHospital.Filtros[0].CondiActual := 1;
      if (StrToInt(Desti_cont.Text) >= 1) and (StrToInt(Desti_cont.Text) <= 5)
      then begin
          case StrToInt(Desti_cont.Text) of
          1,3: cHospital.Filtros[0].Valor1 := '10';  // assistència hospitalària
          2:   cHospital.Filtros[0].Valor1 := '50';  // assistència sociosanitària
          4,5: cHospital.Filtros[0].Valor1 := '60';  // assistència salut mental
          end;
      end;
      cHospital.ExecuteModal;
  end;
  Edit1.SetFocus;
end;

procedure TwFitxaHistorial.cHospitalAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  Hospital.Text          := Datos.FieldByName('C_HOSPITAL').AsString;
  Eti_N_Hospital.Caption := Datos.FieldByName('N_HOSPITAL').AsString;
end;

procedure TwFitxaHistorial.cDestiAlSeleccionar(Sender: TxHYDialogConsulta;
  Datos: TDataSet);
begin
  Destinacio.Text               := Datos.FieldByName('C_CODI').AsString;
  Eti_Destinacio_N_Codi.Caption := Datos.FieldByName('N_CODI').AsString;

  // mostrar / amagagar panels
  pDestiCont.Visible := (Destinacio.Text = '2') or (Destinacio.Text = '9');
  if pDestiCont.Visible then
  begin
      if (Destinacio.Text = '2') then
      begin
          lDestiCont.Caption     := 'Destí continuïtat externa';
          Desti_cont.Text        := pHistorial.DataSource.DataSet.FieldByName('DESTI_CONT_EXT').AsString;
          Eti_Desti_cont.Caption := pHistorial.DataSource.DataSet.FieldByName('DESTI_EXTERN' ).AsString;
      end
      else if (Destinacio.Text = '9') then
      begin
          lDestiCont.Caption     := 'Destí continuïtat interna';
          Desti_cont.Text        := pHistorial.DataSource.DataSet.FieldByName('DESTI_CONT_INT').AsString;
          Eti_Desti_cont.Caption := pHistorial.DataSource.DataSet.FieldByName('DESTI_INTERN' ).AsString;
      end;
  end
  else begin
      lDestiCont.Caption     := '';
      Desti_cont.Text        := '';
      Eti_Desti_cont.Caption := '';
  end;

  pHospital.Visible := Destinacio.Text = '2';
  if pHospital.Visible then
  begin
      Hospital.Text          := pHistorial.DataSource.DataSet.FieldByName('C_HOSPITALDESTI').AsString;
      Eti_N_Hospital.Caption := pHistorial.DataSource.DataSet.FieldByName('HOSPITAL_DESTI' ).AsString;
  end
  else begin
      Hospital.Text          := '';
      Eti_N_Hospital.Caption := '';
  end;

  Edit1.SetFocus;
end;

procedure TwFitxaHistorial.pHistorialEnClicAltreBoto(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if not TeDretPresta(pHistorial.DataSource.DataSet.FieldByName('C_PRESTACIO').AsString, [102])  // només les prestacions que tenen dret
  then FerError('Per aquesta prestació no s''ha d''informar la destinació a l''alta.',True);

  // Poder modificar tant la destinació com l'hostital destí com la continuïtat externa/interna, si cal
  CenterInClient(mgcDesti);

  Destinacio.Text               := pHistorial.DataSource.DataSet.FieldByName('C_DESTINACIO').AsString;
  Eti_Destinacio_N_Codi.Caption := pHistorial.DataSource.DataSet.FieldByName('DESTINACIO').AsString;

  pDestiCont.Visible := (Destinacio.Text = '2') or (Destinacio.Text = '9');
  if pDestiCont.Visible then
  begin
      if (Destinacio.Text = '2') then
      begin
          lDestiCont.Caption     := 'Destí continuïtat externa';
          Desti_cont.Text        := pHistorial.DataSource.DataSet.FieldByName('DESTI_CONT_EXT').AsString;
          Eti_Desti_cont.Caption := pHistorial.DataSource.DataSet.FieldByName('DESTI_EXTERN' ).AsString;
      end
      else if (Destinacio.Text = '9') then
      begin
          lDestiCont.Caption     := 'Destí continuïtat interna';
          Desti_cont.Text        := pHistorial.DataSource.DataSet.FieldByName('DESTI_CONT_INT').AsString;
          Eti_Desti_cont.Caption := pHistorial.DataSource.DataSet.FieldByName('DESTI_INTERN' ).AsString;
      end;
  end
  else begin
      lDestiCont.Caption     := '';
      Desti_cont.Text        := '';
      Eti_Desti_cont.Caption := '';
  end;

  pHospital.Visible := Destinacio.Text = '2';
  if pHospital.Visible then
  begin
      Hospital.Text          := pHistorial.DataSource.DataSet.FieldByName('C_HOSPITALDESTI').AsString;
      Eti_N_Hospital.Caption := pHistorial.DataSource.DataSet.FieldByName('HOSPITAL_DESTI' ).AsString;
  end
  else begin
      Hospital.Text          := '';
      Eti_N_Hospital.Caption := '';
  end;

  mgcDesti.Show;
end;

procedure TwFitxaHistorial.DestinacioEnter(Sender: TObject);
begin
  cDesti.ExecuteModal;
end;

procedure TwFitxaHistorial.Desti_contEnter(Sender: TObject);
begin
  // disparar consulta DESTI_CONT_EXT o DESTI_CONT_INT segons toqui
  if      lDestiCont.Caption = 'Destí continuïtat externa' then cDestiCont.SqlDic[2] := 'WHERE TIPUSCODI="DESTI_CONT_EXT"'
  else if lDestiCont.Caption = 'Destí continuïtat interna' then cDestiCont.SqlDic[2] := 'WHERE TIPUSCODI="DESTI_CONT_INT"';
  cDestiCont.ExecuteModal;
end;

procedure TwFitxaHistorial.cDestiContAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  Desti_cont.Text        := Datos.FieldByName('C_CODI').AsString;
  Eti_Desti_cont.Caption := Datos.FieldByName('N_CODI').AsString;
  Hospital.Text          := '-1';
  Eti_N_Hospital.Caption := '';
end;

end.



