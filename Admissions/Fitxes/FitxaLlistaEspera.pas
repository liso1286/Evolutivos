unit FitxaLlistaEspera;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, HYSql, Grids, DBGrids, HYGrids, HYPanels, StdCtrls, Buttons,
  HYDialogConsulta, ActnList, db, Menus, ComCtrls, ToolWin, HYEdit,
  DBTables, FitxaFiliacio, FitxaEspera, Main, Variants, Hy_Misc;

type
  TwFitxaLlistaEspera = class(TForm)
    PanelBotones: TPanel;
    SpeedButton1: TSpeedButton;
    bModificar: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ActionList1: TActionList;
    Incloure: TAction;
    Excloure: TAction;
    Modificar: TAction;
    Filiar: TAction;
    PanelLlistaEspera: HYPanelConsulta;
    cPrestacio: THYConsulta;
    Todos: TAction;
    Presta: TQuery;
    Sortir: TAction;
    PrestaFocus: TAction;
    sbTancarPreop: TSpeedButton;
    TancarPreop: TAction;
    Panel1: TPanel;
    bTodos: TSpeedButton;
    Bevel1: TBevel;
    ePrestacio: THYTextEdit;
    eDescripcio: THYTextEdit;
    Panel2: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Shape4: TShape;
    Label3: TLabel;
    Label5: TLabel;
    Shape5: TShape;
    Label6: TLabel;
    MovePreop: THyMoveGroupControl;
    MemoPreop: TMemo;
    Shape6: TShape;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IncloureExecute(Sender: TObject);
    procedure ExcloureExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure FiliarExecute(Sender: TObject);
    procedure cPrestacioAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure TodosExecute(Sender: TObject);
    procedure PanelLlistaEsperaAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure PanelLlistaEsperaAlDespuesOpen(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure SortirExecute(Sender: TObject);
    procedure ePrestacioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrestaFocusExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PanelLlistaEsperaAlPintarGrid(var ColorFont,
      ColorBrush: TColor; DataCol: Integer; Column: TColumn;
      State: TGridDrawState; Query: TQuery);
    procedure TancarPreopExecute(Sender: TObject);
    procedure MostraComentari(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure PanelLlistaEsperaAlChangeRegistro(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure PanelLlistaEsperaAlAfterExcel(Sender: TObject);
    procedure PanelLlistaEsperaAlBeforePrint(Sender: TObject);
    procedure PanelLlistaEsperaAlAfterPrint(Sender: TObject);
    procedure ePrestacioChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Iniciar;
    { Public declarations }
  end;

var
  wFitxaLlistaEspera: TwFitxaLlistaEspera;
  qMetges: TQuery;

  procedure CrearFiliacion(EstatResultant:Integer; Datos: TDataSet=Nil; Prescriptor: String='');
  procedure EditarListaEspera(vPrestacio:String; nPrestacio:String; nUsuari:String; Historia:String;
                              Espera:Variant; Editando:Boolean = False);
  function  ExisteVentanaFiliacion(Datos:TDataSet): TwFitxaFiliacio;
  function  ExisteVentanaEspera(Datos:TDataSet):TwFitxaEspera;
  function  EsBaixa(Codi: String): Boolean;

implementation


uses DataAdmisio, Data, Funciones,  DataBasics, DialogExcsioEspera,
  utilsSoapFacturacio, DataHola;

{$R *.DFM}


procedure TwFitxaLlistaEspera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TwFitxaLlistaEspera.Iniciar;
begin
    ePrestacio.EditValue := '';
    ePrestacio.Tag := -1;
    eDescripcio.EditValue := '** Filtre No Assignat ** (Tots)';
    PanelLlistaEspera.Execute('','');
end;


procedure TwFitxaLlistaEspera.IncloureExecute(Sender: TObject);
var
  Opcion: Integer;
  Prestacio, N_Prestacio: String;
begin
     if (ePrestacio.Tag = -1) then
     begin
         Try
           presta.Open;
           opcion := AvisoListaBd('Prestació a incloure: ',presta);
           if opcion = -1 then exit;

           Prestacio   := Self.Presta.FieldbyName('C_PRESTACIO').AsString;
           N_Prestacio := Self.Presta.FieldbyName('N_PRESTACIO').AsString;

           if TeDretPresta(Prestacio, [256])
           then if not TeDretUsuari(wData.UsuariActiu.Codi, 'M315,G254')
                then FerError('La inclusió d''aquesta prestació s''ha de fer a la Nova HCE',True);
         finally
           presta.Close;
         end;
     end
     else Prestacio := ePrestacio.EditValue;

     with TwFitxaEspera.Create(Application) do
     begin
       wMain.LastTraza := 0; wMain.StatusTraza := '';
       PreguntaHistoria := True;
       PrestacioaIncloure := Prestacio;
       Mostrarpaneles(Prestacio);
       Caption := 'Inclusió de '+ N_PRESTACIO +' en Espera';
       tEspera.Open;
       qEspecialitatMetge.Open;
       tEspera.Insert;
       tEspera.FieldByName('C_PRESTACIO').AsString := Prestacio;
       EditMetge.SetFocus;

       RecalcularObligaciones;
     end;
end;


procedure TwFitxaLlistaEspera.ExcloureExecute(Sender: TObject);
var
  Dialogo : TwDialogExclusioEspera;
begin
    Dialogo := nil;
    //@ Código de Excluir de lista de Espera
    if  NOT ( PanelLlistaEspera.DataSource.DataSet.EOF and PanelLlistaEspera.DataSource.DataSet.BOF )  then
    begin
        try
          With TwDialogExclusioEspera.Create(Dialogo) do
          begin
             tEspera.Open('','');
             tEspera.Findkey( varArrayOf([PanelLlistaEspera.DataSource.DataSet.fieldbyName('C_Espera').AsString]) );
             tEspera.Edit;
             Mensaje.Caption := StringReplace( Mensaje.Caption, '%', ' la llista d''espera',[]);
             Mensaje.Caption := StringReplace( Mensaje.Caption, '@', '['+
                                       PanelLlistaEspera.Datos.FieldbyName('C_Espera').AsString+'] - '+
                                       PanelLlistaEspera.Datos.fieldbyName('Cognom1' ).AsString +' '+
                                       PanelLlistaEspera.Datos.fieldbyName('Cognom2' ).AsString+', '+
                                       PanelLlistaEspera.Datos.fieldbyName('Nom'     ).AsString, []);
             ShowModal;
          end;
        finally
          Dialogo.Free;
          PanelLlistaEspera.RefreshSql;
        end;
    end;
end;


procedure TwFitxaLlistaEspera.ModificarExecute(Sender: TObject);
begin
    //@ Ficha de Insertar en Ficha de espera pero en Edit con el registro activo de la consulta localizado
    if ExisteVentanaEspera(PanelLlistaEspera.Datos) = nil then
    EditarListaEspera(PanelLlistaEspera.Datos.FieldbyName('C_Prestacio').AsString,
                      PanelLlistaEspera.Datos.FieldbyName('N_Prestacio').AsString,
                      PanelLlistaEspera.Datos.FieldbyName('NomComplet').AsString,
                      PanelLlistaEspera.Datos.FieldbyName('C_Historia').AsString,
                      PanelLlistaEspera.Datos.FieldbyName('C_Espera').AsVariant);
end;


procedure TwFitxaLlistaEspera.FiliarExecute(Sender: TObject);
begin
    CrearFiliacion(90, PanelLlistaEspera.Datos);
end;


procedure TwFitxaLlistaEspera.cPrestacioAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    ePrestacio.EditValue  := Datos.FieldbyName('C_Prestacio').AsString;
    ePrestacio.Tag        := 0;
    eDescripcio.EditValue := Datos.FieldbyName('N_Prestacio').AsString;

    PanelLlistaEspera.Datos.Close;
    PanelLlistaEspera.SqlDic[3]      := Datos.FieldbyName('C_Prestacio').AsString;
    PanelLlistaEspera.SqlDicTotal[3] := Datos.FieldbyName('C_Prestacio').AsString;
    PanelLlistaEspera.Execute('','');
end;


procedure TwFitxaLlistaEspera.TodosExecute(Sender: TObject);
begin
    ePrestacio .EditValue := '';
    ePrestacio.Tag        := -1;
    eDescripcio.EditValue := '** Filtre No Assignat ** (Tots)';

    PanelLlistaEspera.Datos.Close;
    PanelLlistaEspera.RefreshSql;
    PanelLlistaEspera.SqlDic[3]      := 'NULL';
    PanelLlistaEspera.SqlDicTotal[3] := 'NULL';
    PanelLlistaEspera.SqlDic[6]      := '[FILTRO]';
    PanelLlistaEspera.SqlDicTotal[6] := '[FILTRO]';

    PanelLlistaEspera.Execute('','');
end;


procedure TwFitxaLlistaEspera.PanelLlistaEsperaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    Modificar.Execute;
end;


procedure TwFitxaLlistaEspera.PanelLlistaEsperaAlDespuesOpen(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    Excloure.Enabled  := not (Datos.Eof and Datos.Bof) and  (wMain.Nivell > 1);
    Filiar.Enabled    := not (Datos.Eof and Datos.Bof) and ((wMain.Nivell > 1) or TeDretUsuari(wData.UsuariActiu.Codi, 'M295,G241'));
    Modificar.Enabled := not (Datos.Eof and Datos.Bof) and  (wMain.Nivell > 1);
end;


procedure TwFitxaLlistaEspera.SortirExecute(Sender: TObject);
begin
   Close;
end;


function ExisteVentanaEspera(Datos:TDataSet):TwFitxaEspera;
var
  i: Integer;
begin
     Result := Nil;

{-
     For i:= 0 to Screen.CustomFormCount-1 do
     begin
        if Screen.CustomForms[i].ClassType = TwFitxaEspera then
        begin
            if (TwFitxaEspera(Screen.CustomForms[i]).tEspera.FieldbyName('C_Espera').asString = Datos.FieldbyName('C_Espera').asString) then
            begin //Si encontramos la ventana que teniamos que crear salimos de la búsqueda y la mostramos y asi no se crea y solo se muestra.//Si encontramos la ventana que teniamos que crear salimos de la búsqueda y la mostramos y asi no se crea y solo se muestra.
               Result := TwFitxaEspera(Screen.CustomForms[i]);
               Result.Show;
               exit;
            end
        end;
     end;
-}
    for i:= 0 to wMain.MDIChildCount-1 do
    begin
        if wMain.MDIChildren[i].ClassType = TwFitxaEspera then
        begin
            // Si trobem la finestra, sortim de la cerca i la mostrem
            if (TwFitxaEspera(wMain.MDIChildren[i]).tEspera.FieldbyName('C_Espera').asString = Datos.FieldbyName('C_Espera').asString) then
            begin
                Result := TwFitxaEspera(wMain.MDIChildren[i]);
                Result.Show;
                exit;
            end
        end;
    end;
end;


function ExisteVentanaFiliacion(Datos:TDataSet): TwFitxaFiliacio;
var
  i: Integer;
begin
    Result := Nil;
    for i := 0 to wMain.MDIChildCount-1 do
    begin
        if (wMain.MDIChildren[i].ClassType = TwFitxaFiliacio) then
        begin
            // Si trobem la finestra, sortim de la cerca i la mostrem
            if  (TwFitxaFiliacio(wMain.MDIChildren[i]).tFiliacio.FieldbyName('Num_Hist').AsString = Datos.FieldbyName('C_Historia').AsString)
            and (TwFitxaFiliacio(wMain.MDIChildren[i]).tTractaments.FieldbyName('C_Prestacio').AsString = Datos.FieldbyName('C_Prestacio').AsString)
            then begin
                Result := TwFitxaFiliacio(wMain.MDIChildren[i]);
                Result.Show;
                Exit;
            end
        end;
    end;
end;



// Creem una nova Filiació a partir dels paràmetres que li enviem.
// Si DataSet és Null es crea des de zero.
procedure CrearFiliacion(EstatResultant:Integer; Datos: TDataSet=Nil; Prescriptor: String='');
var
  OldPrestacio, NomPrestacio, TempPresta, EsPresencial: String;
  Avui, DataLesioSolIngres: TDateTime;
//-  qMotiu,
  qAux: TQuery;
  Op, DiesSolIng: Integer;
  mode: String;
  moros: String;
  DadesFac: TDadesFac;
begin

    Avui := DateServer;

    if (wMain.Nivell <= 1) and (not TeDretUsuari(wData.UsuariActiu.Codi, 'M295,G241')) then FerError(Error1, True);

    if PrestacionCompatible(Datos.Fieldbyname('C_Historia').AsString, Datos.FieldbyName('C_Prestacio').AsString) then
    begin
        // parte 69993 - i La prestació 2623 només pot filiar-se si hi ha almenys una 2123, 2223, 2323, 2523 activa
        if (Datos.FieldbyName('C_Prestacio').AsString = '2623') then
        begin
            if (0 = GutSelect('select C_TRACTAMENT from TRACTAMENTS                 ' +
                              'where  C_HISTORIA = %d                               ' +
                              'and   (C_PRESTACIO in ("2123","2223","2323","2523")) ' +
                              'and   (DATA_ALTA >= "TODAY" or DATA_ALTA is NULL)    ',
                              [Datos.FieldByName('C_Historia').AsInteger]))

            then FerError('Aquest pacient no té cap tractament de manteniment actiu ' + NLine +
                          'al qual imputar la mitja sessió de fisioterapeuta. ', True);
        end;
        // parte 69993 - f

        if ExisteVentanaFiliacion(Datos) = nil then
        begin
            with TwFitxaFiliacio.Create(Application) do
            begin
                consulta := 'TwFitxaLlistaEspera';  // per al trazacontrol

                ResultadoFiliacion := EstatResultant;

                tsPrestacio .TabVisible := not (Datos = nil);
                tsFacturacio.TabVisible := not (Datos = nil);

                tFiliacio.FieldByName('SOE' ).ValidChars := ['0'..'9'];
                tFiliacio.FieldByName('SEXO').ValidChars := ['D','H', 'd','h'];

                eNHCNovaHCE.Text := '';

                if (Datos = nil) then
                begin
                    Caption := 'Nova Filiació';
                    tFiliacio.New.OpenFisrt := True;
                    tFiliacio.Open;
                    tFiliacio.Insert;

                    tFiliacio.FieldbyName('Data_Ingres').asDateTime := Avui;
                    tFiliacio.FieldbyName('Hora').asString := '00:00';
                    tFiliacio.FieldbyName('EsViu').asString := 'S';
                    NUMESPERA := '-1';
                    C_TractamentOrigen := Datos.FieldByName('C_TractamentOrigen').AsInteger;
                    lPrestacio.Visible := False;
                end

                else begin

                    NUMESPERA :=  Datos.FieldByName('C_Espera').AsString;

                    if EsPle(Datos.FieldbyName('C_Historia').AsString)
                    then Caption :=Format('Filiant (%s) Hist. (%s)',
                                          [Datos.FieldbyName('C_Prestacio').AsString,
                                           Datos.FieldbyName('C_Historia').AsString])
                    else Caption :='Filiant ['+ Datos.FieldbyName('C_Prestacio').AsString+']';

                    if      EstatResultant = 90 then lEspera.Caption := 'Llista d''espera ('+NUMESPERA+') '+ Caption
                    else if EstatResultant = 95 then lEspera.Caption := 'Agenda ('+NUMESPERA+') '+ Caption;

                    if EsPle(Datos.FieldbyName('C_Historia').asString) then
                    begin
                        tFiliacio.New.OpenFisrt := False;
                        tFiliacio.Open;
                        tFiliacio.Findkey(vararrayof([Datos.FieldbyName('C_Historia').AsVariant]));
                        tFiliacio.Edit;
                        if EsBuit(tFiliacio.FieldbyName('TSI').asString) then
                        begin
                          if not tFiliacio.EstaEditando then tFiliacio.Edit;
                          RecalcularCIP(tFiliacio.FieldbyName('Apellido1').asString,
                                        tFiliacio.FieldbyName('Apellido2').asString,
                                        tFiliacio.FieldbyName('Sexo').asString,
                                        tFiliacio.FieldbyName('FECHA_NAC').asDateTime);
                        end;
                        if (tFiliacio.FieldByName('Unitat').isnull) or (tFiliacio.FieldByName('Unitat').asinteger = 0)
                        then tFiliacio.FieldByName('Unitat').asinteger := Datos.FieldByName('C_Unitat').AsInteger;

                        if NT7OK and (not Datos.FieldByName('IDREGISTRE').IsNull)
                        then DataLesioSolIngres := HolaSelect('SELECT DATA_LESIO FROM PACIENTS WHERE IDREGISTRE=%d', [Datos.FieldByName('IDREGISTRE').AsInteger])
                        else DataLesioSolIngres := 0;

                        if tFiliacio.FieldByName('DATA_LESSIO').IsNull and (DataLesioSolIngres <> 0)
                        then tFiliacio.FieldByName('DATA_LESSIO').AsDateTime := DataLesioSolIngres;

                        eNHCNovaHCE.Text := tFiliacio.FieldByName('NUM_HIST').AsString;
                    end
                    else begin
                        tFiliacio.New.OpenFisrt := True;
                        tFiliacio.Open;
                        PanelPrestacions.Visible := False;
                        tFiliacio.Insert;

                        tFiliacio.FieldbyName('EsViu').asString := 'S';

                        tFiliacio.FieldbyName('Nombre'   ).asString := Datos.FieldbyName('NOM'    ).asString;
                        tFiliacio.FieldbyName('Apellido1').asString := Datos.FieldbyName('Cognom1').asString;
                        tFiliacio.FieldbyName('Apellido2').asString := Datos.FieldbyName('Cognom2').asString;
                        tFiliacio.FieldbyName('Telefono' ).asString := Datos.FieldbyName('Telefon').asString;
                        tFiliacio.FieldByName('Unitat').asinteger := Datos.FieldByName('C_Unitat').AsInteger;
                        tFiliacio.FieldByName('Sexo').AsString := Datos.FieldByName('Sexe').AsString;
                        tFiliacio.FieldByName('Fecha_Nac').Value := Datos.FieldByName('Data_Naix').Value;
                        tFiliacio.FieldByName('TSI').Value := Datos.FieldByName('CIP').Value;

                        if NT7OK and (not Datos.FieldByName('IDREGISTRE').IsNull)
                        then DataLesioSolIngres := HolaSelect('SELECT DATA_LESIO FROM PACIENTS WHERE IDREGISTRE=%d', [Datos.FieldByName('IDREGISTRE').AsInteger])
                        else DataLesioSolIngres := 0;

                        if tFiliacio.FieldByName('DATA_LESSIO').IsNull and (DataLesioSolIngres <> 0)
                        then tFiliacio.FieldByName('DATA_LESSIO').AsDateTime := DataLesioSolIngres;
                    end;

                    tTractaments.New.OpenFisrt := True;
                    tTractaments.Open;
                    tTractaments.Active := True;
                    tTractaments.Insert;
                    tTractaments.FieldbyName('Data_Ingres').AsDateTime := Avui;

                    if TeDretPresta(Datos.FieldByName('C_Prestacio').AsString, [92]) // prestació de dia únic
                    then tTractaments.FieldbyName('Data_Alta').AsDateTime :=  tTractaments.fieldbyName('Data_Ingres').asDateTime;

                    tTractaments.FieldbyName('Hora'         ).AsString := FormatDateTime('hh:nn', NowServer);
                    tTractaments.FieldbyName('C_Historia'   ).Assign(Datos.FieldByName('C_Historia'   ));
                    tTractaments.FieldbyName('C_Prestacio'  ).Assign(Datos.FieldByName('C_Prestacio'  ));

                    lPrestacio. EditValue := Datos.FieldByName('C_Prestacio').AsString;

                    // feb 2025 - si el coordinador està de baixa el buidem
                    if EsBaixa(Datos.FieldByName('C_Coordinador').AsString) then
                    begin
                        qMetges := TQuery.Create(Application);
                        qMetges.DatabaseName := wData.Gdb.DatabaseName;
                        qMetges.SQL.Text := 'select M.CODI, M.METGE from METGES M   '+
                                            'join METGEPRESTA MP ON M.CODI=MP.CODI  '+
                                            'where MP.C_PRESTACIO = "'+ Datos.FieldByName('C_Prestacio').AsString +'" '+
                                            'AND M.BAIXA = "N" order by M.METGE';
                        op := -1;
                        op := AvisoListaBd('Professional de baixa. Tria el professional que realizarà aquest servei ',qMetges,0,2);
                        GutExecute('UPDATE ESPERA SET C_COORDINADOR = "%s" WHERE C_ESPERA = %s',[qMetges.FieldByName('CODI').AsString, NUMESPERA]);
                        EditCoordinador.ReadOnly := True;
                        EditCoordinador.Ctl3D    := False;
                        tTractaments.FieldbyName('C_Coordinador').AsString := qMetges.FieldByName('CODI').AsString;
                        qMetges.Free;
                    end
                    else begin
                        if ((Avui - Datos.FieldbyName('Data_Preingres').AsDateTime) <= 7) then
                        begin
                            EditCoordinador.ReadOnly := False;
                            EditCoordinador.Ctl3D    := True;
                        end
                        else begin
                            EditCoordinador.ReadOnly := True;
                            EditCoordinador.Ctl3D    := False;
                        end;
                        tTractaments.FieldbyName('C_Coordinador').Assign(Datos.FieldByName('C_Coordinador'));
                    end;

{-  canvi en la comprovació
                     // Si ha de tenir motiu, i el que ve de la llista d'espera / agenda no està entre els possibles motius de la prestació, fem triar:
                     if TeDretPresta(Datos.FieldByName('C_Prestacio').AsString, [49]) then
                     begin
                         if (0 = GutSelect('select COUNT(*) from CODICAMPS C ' +
                                           'join PRESTACODICAMPS P on P.TIPUSCODI = C.TIPUSCODI and P.C_CODI = C.C_CODI ' +
                                           'where  C.TIPUSCODI = "MOTIU" and P.C_PRESTACIO = "%s" and C.C_CODI = %d ' +
                                           'and (C.ORDRE >= 0 or C.ORDRE is Null)',
                                           [Datos.FieldByName('C_Prestacio').AsString,
                                            Datos.FieldByName('C_Motiu').AsInteger]))
                         then begin
                             qMotiu := TQuery.Create(wFitxaLlistaEspera);
                             TRY
                               qMotiu.DataBaseName := 'interna';
                               qMotiu.SQL.Text := Format('select C.R_CODI, C.N_CODI, P.C_CODI                     '+
                                                         'from PRESTACODICAMPS P, CODICAMPS C                     '+
                                                         'where P.C_CODI = C.C_CODI AND P.TIPUSCODI = C.TIPUSCODI '+
                                                         'and P.C_PRESTACIO = "%s" AND P.TIPUSCODI = "MOTIU"      '+
                                                         'order by C.ORDRE, C.C_CODI                              ',
                                                         [Datos.FieldByName('C_Prestacio').AsString]);
                               qMotiu.Open;
                               qMotiu.First;
                               if (qMotiu.RecordCount = 1) then Op := 0
                                                           else Op := AvisoListaBd('Trieu el motiu d''assistència', qMotiu, 0, 2);

                               if (Op <> -1) then tTractaments.FieldByName('C_Motiu').AsInteger := qMotiu.FieldbyName('C_CODI').AsInteger
                                             else Exit;
                             FINALLY
                               qMotiu.Free;
                             END;
                         end
                         else tTractaments.FieldbyName('C_Motiu').Assign(Datos.FieldByName('C_Motiu'));
                     end

                    // 2006: si és recàrrega de bomba baclofèn, arrosseguem el motiu
                    else if (Datos.FieldByName('C_Prestacio').AsString = '2006') and (Datos.FieldByName('C_Motiu').AsInteger <> 0)
                    then tTractaments.FieldbyName('C_Motiu').Assign(Datos.FieldByName('C_Motiu'))
-}
                    // Si ha de tenir motiu, el bolquem, però si el que ve de la llista d'espera/agenda no està entre els possibles per la prestació, el buidem
                    if PrestaTeCodiCamps(Datos.FieldByName('C_Prestacio').AsString, 'MOTIU') then
                    begin
                        qAux := TQuery.Create(wFitxaLlistaEspera);
                        TRY
                          qAux.DataBaseName := 'interna';
                          qAux.SQL.Text := Format('select C.R_CODI, C.N_CODI, P.C_CODI from PRESTACODICAMPS P            ' +
                                                  'join CODICAMPS C on P.TIPUSCODI = C.TIPUSCODI and P.C_CODI = C.C_CODI ' +
                                                  'where P.TIPUSCODI = "MOTIU" and P.C_PRESTACIO = "%s"                  ' +
                                                  'and C.ORDRE >= 0                                                      ' +
                                                  'order by C.ORDRE, C.C_CODI                                            ',
                                                  [Datos.FieldByName('C_Prestacio').AsString]);
                          qAux.Open;
                          qAux.First;
                          if qAux.Locate('C_CODI', Datos.FieldByName('C_Motiu').AsInteger, [])
                          then tTractaments.FieldbyName('C_Motiu').Assign(Datos.FieldByName('C_Motiu'))
                          else tTractaments.FieldbyName('C_Motiu').AsInteger := 0;
                        FINALLY
                          qAux.Free;
                        END;
                    end
                    // Prestacions sense motiu
                    else tTractaments.FieldbyName('C_Motiu').AsInteger := 0;

                    // Si ha de tenir modalitat, la bolquem, però si la que ve de la llista d'espera/agenda no està entre les possibles per la prestació, la buidem
                    if PrestaTeCodiCamps(Datos.FieldByName('C_Prestacio').AsString, 'ATENCIO.MODALITAT') then
                    begin
                        qAux := TQuery.Create(wFitxaLlistaEspera);
                        TRY
                          qAux.DataBaseName := 'interna';
                          qAux.SQL.Text := Format('select C.R_CODI, C.N_CODI, P.C_CODI from PRESTACODICAMPS P            ' +
                                                  'join CODICAMPS C on P.TIPUSCODI = C.TIPUSCODI and P.C_CODI = C.C_CODI ' +
                                                  'where P.TIPUSCODI = "ATENCIO.MODALITAT" and P.C_PRESTACIO = "%s"      ' +
                                                  'and C.ORDRE >= 0                                                      ' +
                                                  'order by C.ORDRE, C.C_CODI                                            ',
                                                  [Datos.FieldByName('C_Prestacio').AsString]);
                          qAux.Open;
                          qAux.First;
                          if qAux.Locate('C_CODI', Datos.FieldByName('C_Modalitat').AsInteger, [])
                          then tTractaments.FieldbyName('C_Modalitat').Assign(Datos.FieldByName('C_Modalitat'))
                          else tTractaments.FieldbyName('C_Modalitat').AsInteger := 0;
                        FINALLY
                          qAux.Free;
                        END;
                    end
                    // Prestacions sense modalitat
                    else tTractaments.FieldbyName('C_Modalitat').AsInteger := 0;

                    // Si ha de tenir origen/procedència, el bolquem, però si el que ve de la llista d'espera/agenda no està entre els possibles per la prestació, el buidem
                    if PrestaTeCodiCamps(Datos.FieldByName('C_Prestacio').AsString, 'ORIGEN') then
                    begin
                        qAux := TQuery.Create(wFitxaLlistaEspera);
                        TRY
                          qAux.DataBaseName := 'interna';
                          qAux.SQL.Text := Format('select C.R_CODI, C.N_CODI, P.C_CODI from PRESTACODICAMPS P            ' +
                                                  'join CODICAMPS C on P.TIPUSCODI = C.TIPUSCODI and P.C_CODI = C.C_CODI ' +
                                                  'where P.TIPUSCODI = "ORIGEN" and P.C_PRESTACIO = "%s"                  ' +
                                                  'and C.ORDRE >= 0                                                      ' +
                                                  'order by C.ORDRE, C.C_CODI                                            ',
                                                  [Datos.FieldByName('C_Prestacio').AsString]);
                          qAux.Open;
                          qAux.First;
                          if qAux.Locate('C_CODI', Datos.FieldByName('C_Procedencia').AsInteger, [])
                          then tTractaments.FieldbyName('C_Origen').Assign(Datos.FieldByName('C_Procedencia'))
                          else tTractaments.FieldbyName('C_Origen').AsInteger := 0;
                        FINALLY
                          qAux.Free;
                        END;
                    end
                    // Prestacions sense motiu
                    else tTractaments.FieldbyName('C_Origen').AsInteger := 0;

                    // Copiem Origen si té dret P50
                    if TeDretPresta(Datos.FieldByName('C_Prestacio').AsString, [50])
                    then tTractaments.FieldbyName('C_Origen').Assign(Datos.FieldByName('C_Procedencia'));

                    // només per llista d'espera bolquem caràcter i freqüència
                    if EstatResultant = 90 then
                    begin
                        tTractaments.FieldbyName('C_Caracter'   ).AsInteger := 3; // sempre programat (encara q a llista d'espera sigui urgent)
                        tTractaments.FieldbyName('C_Frequencia' ).Assign(Datos.FieldByName('C_Frecuencia' ));
                    end;

                    if NT7OK then DiesSolIng := HolaSelect('select DiesConsumits from PACIENTS where IDREGISTRE = %d', [Datos.FieldByName('IDREGISTRE').AsInteger])
                             else DiesSolIng := 0;
                    if (DiesSolIng <> 0) then
                    begin
                         if tTractaments.FieldbyName('DiesConsumits').IsNull then tTractaments.FieldbyName('DiesConsumits').AsInteger := DiesSolIng;
                         lDiesConsumitsSolIng.Caption := Format('(Informats a sol·licitud d''ingrés: %d)',[DiesSolIng]);
                    end;

                    tTractaments.FieldByName('C_TRANSPORT_SANITARI').AsInteger := Datos.FieldByName('C_TRANSPORT_SANITARI').AsInteger;

                    NUMESPERA :=  Datos.FieldByName('C_Espera').AsString;
                    C_TractamentOrigen := Datos.FieldByName('C_TractamentOrigen').AsInteger;

                    NomPrestacio := SelectSQL(wData.Projecte.DataBaseName, 'SELECT N_PRESTACIO FROM Prestacion WHERE C_PRESTACIO = '+
                                    Datos.FieldByName('C_Prestacio').AsString);

                    lPrestacio. EditValue := Datos.FieldByName('C_Prestacio').AsString +' - '+NomPrestacio;
                    MostrarPaneles( Datos.FieldByName('C_Prestacio').AsString );
                end;

                borrando := False;
                PC.ActivePage := tsPersonals;

                // bb-2014: Si vinc d'agenda, em situo a la pestanya de Facturació
                //          Excepte per les revisions!!
                if (EstatResultant = 95) and (Datos.FieldbyName('C_Prestacio').AsString <> '2004')  then
                begin
                    PC.ActivePage := tsFacturacio;
                    PCChange(PC);
                end;

                if tTractaments.FieldbyName('C_Centrefac').IsNull or (Datos.FieldByName('IDREGISTRE').AsInteger<>0)
                then tTractaments.FieldbyName('C_Centrefac').Assign(Datos.FieldByName('Centrefac')); // parte 70490 - 1.2.2016

                if tTractaments.FieldbyName('C_Client').IsNull or (Datos.FieldByName('IDREGISTRE').AsInteger<>0)
                then tTractaments.FieldbyName('C_Client').Assign(Datos.FieldByName('C_Client'));

                if Prescriptor <> '' then tTractaments.FieldByName('C_Prescriptor').AsString := Prescriptor;

                CopiarDadesFactu;

                // Mirem si el pacient o el garant és morós
                if wData.ES_PROVA then mode := 'PRE'  // Desactivo comprovació de morós a PROVES pq no va
                else begin
                     mode := 'PRO';

                     tGarants.Close;
                     tGarants.Open;
                     tGarants.Abierta := True;
                     tGarants.FindKey( VarArrayof([tTractaments.FieldByName('id_garant').AsInteger]));

                     moros := miramoroso(tTractaments.FieldByName('C_Historia').AsString, tGarants.FieldByName('DNI').AsString, mode);
                     if (moros = 'S') then ShowMessage('AQUEST CLIENT ÉS MORÓS')
                     else if (moros = 'E') then ShowMessage('No s''ha pogut determinar si aquest client és morós');
                end;

                CAMBIODEPRESTACION2001 := False;

                if (tTractaments.FieldbyName('C_CentreFac').asString = '04')
                and TeDretPresta(Datos.FieldbyName('C_Prestacio').asString, [145])
                then begin

                    OldPrestacio := Datos.FieldbyName('C_Prestacio'  ).asString;

                    if TeDretPresta(OldPrestacio, [185]) then EsPresencial := 'N'
                                                         else EsPresencial := 'S';

                    if esPle( Trim( Datos.FieldbyName('C_Historia').AsString) ) then
                    begin

                        // Si el motiu de la consulta és Preoperatori, serà una 1a visita sempre:
                        if (tTractaments.FieldByName('C_Motiu').AsInteger = 61) then TempPresta := '2001'

                        // Canvi d'una primera visita a segona i viceversa.
                        else begin
                            TEMPPRESTA := SelectSQLfmt(wData.Projecte.DataBaseName,
                                    ' SelecT C_Prestacio From P_TRACTAMENTS_SEGONAVISITA("%s","%s","%s","%s") WHERE C_PRESTACIO IS NOT NULL',[
                                    Datos.FieldbyName('C_HISTORIA'    ).asString,
                                    FechaIB(Datos.FieldbyName('DATA_PREINGRES').asDateTime),
                                    Datos.FieldbyName('C_COORDINADOR' ).asString, EsPresencial ]);

                            // si era una segona i segueix sent una segona, cal mantenir el tipus de segona (2002, 2011, 2012...)
                            if EsPresencial = 'N' then
                            begin
                                if (OldPrestacio <> '6001') and (TEMPPRESTA <> '6001') then TEMPPRESTA := OldPrestacio;
                            end
                            else begin
                                if (OldPrestacio <> '2001') and (TEMPPRESTA <> '2001') then TEMPPRESTA := OldPrestacio;
                            end;
                        end;

                        NomPrestacio := SelectSQL(wData.Projecte.DataBaseName, 'SELECT N_PRESTACIO FROM Prestacion WHERE C_PRESTACIO = '+
                                        TEMPPRESTA);

                        lPrestacio. EditValue := TEMPPRESTA +' - '+NomPrestacio;
                        wMain.LastTraza := 0; wMain.StatusTraza := '';
                        tTractaments.FieldbyName('C_Prestacio').asString := TempPresta;

                    end
                    else begin
                        if EsPresencial = 'N' then TEMPPRESTA := '6001'
                                              else TEMPPRESTA := '2001';
                        tTractaments.FieldbyName('C_Prestacio'  ).asString := TEMPPRESTA;
                        NomPrestacio := SelectSQL(wData.Projecte.DataBaseName, 'SELECT N_PRESTACIO FROM Prestacion WHERE C_PRESTACIO = '+TEMPPRESTA);
                        lPrestacio. EditValue := TEMPPRESTA +' - '+NomPrestacio;
                    end;

                    if OldPrestacio <> tTractaments.FieldbyName('C_Prestacio'  ).asString then
                    begin
                        CAMBIODEPRESTACION2001 := True;
                        MostrarPaneles(tTractaments.FieldbyName('C_Prestacio'  ).asString);
                    end;

                end;

                // 11.2.2016 i: si el pacient ha tingut més d'un centre de facturació al llarg de la seva història a Guttmann, mostrar-ho i permetre triar el que es vol
                if EsPle(Datos.FieldbyName('C_Historia').asString) then
                begin
                    qAux := TQuery.Create(Application);
                    qAux.DataBaseName:=wData.Gdb.DatabaseName;

                    // si tots els finançadors que té un pacient són 04, no mostrar-ho
                    qAux.SQL.text:=Format('SELECT COUNT(DISTINCT C_CENTREFAC) as QUANTS FROM TRACTAMENTS WHERE C_HISTORIA=%d '+
                                          'AND C_ESTATFAC<>50 AND C_CENTREFAC<>"04"',[Datos.FieldbyName('C_HISTORIA').AsInteger]);
                    qAux.Open;
                    if qAux.FieldByName('quants').AsInteger > 0 then
                    begin
                        qAux.Close;
                        qAux.Sql.Text:=Format('SELECT MAX(T.DATA_INGRES),T.C_CENTREFAC,C.N_CENTREFAC,T.C_CLIENT,CL.N_CLIENT,T.C_DELEGACIO,                  '+
                                              ' D.N_DELEGACIO, g.nom,g.cognom1,g.cognom2,t.id_garant,T.REFERENCIA,                                          '+
                                              '      T.CADUCAPERMIS, T.DATA_SINISTRE, T.C_ESTATFAC, T.MATRICULA_VEHICLE, T.PERCENTATGEPACIENT               '+
                                              'FROM TRACTAMENTS T                                                                                           '+
                                              'JOIN CENTREFAC   C ON T.C_CENTREFAC=C.C_CENTREFAC                                                            '+
                                              'JOIN CLIENTS    CL ON T.C_CENTREFAC=CL.C_CENTREFAC AND T.C_CLIENT=CL.C_CLIENT                                '+
                                              'JOIN DELEGACIONS D ON T.C_CENTREFAC=D.C_CENTREFAC AND T.C_CLIENT=D.C_CLIENT AND T.C_DELEGACIO=D.C_DELEGACIO  '+
                                              'LEFT JOIN GARANTS G ON T.ID_GARANT=G.ID_GARANT                                                               '+
                                              'WHERE T.C_HISTORIA=%d AND T.C_ESTATFAC<>50                                                                   '+
                                              'GROUP BY T.C_CENTREFAC,C.N_CENTREFAC,T.C_CLIENT,CL.N_CLIENT,T.C_DELEGACIO,D.N_DELEGACIO,                     '+
                                              't.id_garant,g.nom, g.cognom1, g.cognom2,                                                                     '+
                                              'T.CADUCAPERMIS, T.DATA_SINISTRE, T.C_ESTATFAC, T.MATRICULA_VEHICLE, T.PERCENTATGEPACIENT, T.REFERENCIA       '+
                                              'UNION                                                                                                        '+
                                              'SELECT MAX(T.DATA_INGRES), T.C_CENTREFAC,C.N_CENTREFAC,T.C_CLIENT,CAST("" AS VARCHAR(40)),                   '+
                                              'T.C_DELEGACIO,CAST("" AS VARCHAR(50)), g.nom,g.cognom1,g.cognom2,t.id_garant, T.REFERENCIA,                  '+
                                              'T.CADUCAPERMIS, T.DATA_SINISTRE, T.C_ESTATFAC, T.MATRICULA_VEHICLE, T.PERCENTATGEPACIENT                     '+
                                              'FROM TRACTAMENTS T                                                                                           '+
                                              'JOIN CENTREFAC C ON T.C_CENTREFAC=C.C_CENTREFAC                                                              '+
                                              'LEFT JOIN GARANTS G ON T.ID_GARANT=G.ID_GARANT                                                               '+
                                              'WHERE T.C_HISTORIA=%d AND T.C_ESTATFAC<>50 AND T.C_CENTREFAC="00"                                            '+
                                              'GROUP BY T.C_CENTREFAC,C.N_CENTREFAC,T.C_CLIENT,T.C_DELEGACIO,t.id_garant,g.nom, g.cognom1, g.cognom2,       '+
                                              'T.REFERENCIA, T.CADUCAPERMIS, T.DATA_SINISTRE, T.C_ESTATFAC, T.MATRICULA_VEHICLE, T.PERCENTATGEPACIENT       '+
                                              'ORDER BY 1 DESC',
                                              [Datos.FieldbyName('C_HISTORIA').AsInteger,Datos.FieldbyName('C_HISTORIA').AsInteger]);
                        qAux.Open;
                        if qAux.RecordCount > 1 then
                        begin
                            pc.ActivePage := tsFacturacio;
                            PCChange(PC);
                            op:=AvisoListaBd('Pacient amb diferents finançadors. Triar-ne un o fer cancel·lar per mantenir el que té assignat.',
                                             qAux,0,10,0);
                            if (op < 0) then Exit
                            else begin
                                tTractaments.FieldByName('C_CENTREFAC'  ).AsString := qAux.FieldByName('C_CENTREFAC').AsString;
                                if qAux.FieldByName('C_CENTREFAC').AsString = '00' then
                                begin
                                   tTractaments.FieldByName('C_CLIENT'   ).Clear;
                                   tTractaments.FieldByName('C_DELEGACIO').Clear;
                                end
                                else begin
                                   tTractaments.FieldByName('C_CLIENT'   ).AsString := qAux.FieldByName('C_CLIENT'   ).AsString;
                                   tTractaments.FieldByName('C_DELEGACIO').AsString := qAux.FieldByName('C_DELEGACIO').AsString;
                                end;
                                if qAux.FieldByName('id_garant').AsInteger > 0
                                then tTractaments.FieldByName('id_garant').AsInteger := qAux.FieldByName('id_garant').AsInteger
                                else tTractaments.FieldByName('id_garant').Clear;
                            end;

                            DadesFac.C_CentreFac  := tTractaments.FieldByName('C_CENTREFAC').AsString;
                            DadesFac.C_Client     := tTractaments.FieldByName('C_CLIENT'   ).AsString;
                            DadesFac.C_Delegacio  := tTractaments.FieldByName('C_DELEGACIO').AsString;
                            DadesFac.CaducaPermis := qAux.FieldByName('CADUCAPERMIS').AsDateTime;
                            DadesFac.Data_Sinistre := qAux.FieldByName('DATA_SINISTRE').AsDateTime;
                            DadesFac.EstatFac     := qAux.FieldByName('C_ESTATFAC').AsInteger;
                            DadesFac.Matricula_Vehicle := qAux.FieldByName('MATRICULA_VEHICLE').AsString;
                            DadesFac.PercentatgePacient := qAux.FieldByName('PERCENTATGEPACIENT').AsFloat;
                            DadesFac.Referencia   := qAux.FieldByName('REFERENCIA').AsString;
                            DadesFac.Garant_Id      := qAux.FieldByName('ID_GARANT').AsInteger;
                            DadesFac.Garant_Nom     := qAux.FieldByName('NOM').AsString;
                            DadesFac.Garant_Cognom1 := qAux.FieldByName('COGNOM1').AsString;
                            DadesFac.Garant_Cognom2 := qAux.FieldByName('COGNOM1').AsString;
                            OmplirCampsDadesFac(DadesFac, tTractaments);
                        end;
                    end;
                    qAux.Close;
                    qAux.Free;
                end;
                // 11.2.2016 f

            end;  //with TwFitxaFiliacio
        end;
    end
    else FerError(AVIS30, True);
end;

procedure EditarListaEspera(vPrestacio:String; nPrestacio:String; nUsuari:String; Historia:String;
                            Espera:Variant; Editando:Boolean = False);
var
  UnitatTmp :String;
begin
    with TwFitxaEspera.Create(Application) do
    begin
        PrestacioaIncloure := vPrestacio;

        if EsPle(Historia) then Caption := Format('Modificació %s Hist. (%s)', [nPrestacio, Historia])
                           else Caption := Format('Modificació %s ', [nPrestacio]);

        tEspera.Open;
        qEspecialitatMetge.Open;
        tEspera.Findkey(varArrayOf([Espera]));

        if Editando then tEspera.Edit;

        mostrarPaneles(tEspera.FieldByName('C_Prestacio').AsString);
        RecalcularObligaciones;
        if esPle(Historia) then
        begin
            // Si a Filiacio hi ha la unitat introduida, no la deixem modificar
            UnitatTmp := GutSelect('select Unitat from Filiacio where Num_Hist = %s', [Historia]);
            edtUnitat.ReadOnly := (UnitatTmp <> '0') or EsBuit(UnitatTmp);
        end;
    end;
end;


procedure TwFitxaLlistaEspera.ePrestacioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = VK_Return then
    begin
//-        if esPle(ePrestacio.EditValue) then
        if ePrestacio.Tag = -1 then
        begin
            if (1 = GutSelect('select COUNT(*) from DRETSPRESTA D join PRESTACION P on D.C_PRESTACIO = P.C_PRESTACIO ' +
                              'where P.TIPUS > -1 and D.C_DRET = "P1" and P.C_PRESTACIO = "%s"', [ePrestacio.EditValue]))
            then begin
                eDescripcio.EditValue := GutSelect('select N_Prestacio from Prestacion where C_Prestacio = %s', [ePrestacio.EditValue]);
                ePrestacio.Tag := 0;

                PanelLlistaEspera.Datos.Close;
                PanelLlistaEspera.SqlDic[3]      := ePrestacio.EditValue;
                PanelLlistaEspera.SqlDicTotal[3] := ePrestacio.EditValue;
                PanelLlistaEspera.Execute('','');
            end
            else FerError('* *  PRESTACIÓ INCORRECTA  * *' ,True);
        end
        else cPrestacio.ExecuteModal;
    end;
end;


procedure TwFitxaLlistaEspera.PrestaFocusExecute(Sender: TObject);
begin
    ePrestacio.SetFocus;
end;


procedure TwFitxaLlistaEspera.FormCreate(Sender: TObject);
var
 centre: String;
begin
   if (not NT7OK) or (not HOLA_OK) then FerError('El servidor NT7 (base de dades Hola) no està disponible. Les dades de les sol·licituds d''ingrés no es podran recuperar.', False);

   if wMain.Nivell < 2 then
   begin
      Filiar.Enabled    := TeDretUsuari(wData.UsuariActiu.Codi, 'M295,G241');
      Modificar.Enabled := False;
      Excloure.Enabled  := False;
      Incloure.Enabled  := False;
      PanelLlistaEspera.VerExcel := False;

      if not TeDretAcces([116]) then                   // 27-4-2015: els metges sí poden veure el camp COMENTARI
      PanelLlistaEspera.CamposOculta.Add('Comentari');

      PanelLlistaEspera.VerPrint := False;
   end;

   if TeDretAcces([79]) then
   begin
       PanelLlistaEspera.VerExcel := True;

       if wData.UsuariActiu.Codi = '' then PreguntaMetge; wMain.StatusTraza := '';
       if wData.UsuariActiu.Codi = '' then SortirExecute(Sender);
   end;

   centre := '';
   if      TeDretGrup(wData.UsuariActiu.Grup, [259]) then centre := 'H'
   else if TeDretGrup(wData.UsuariActiu.Grup, [260]) then centre := 'B';

   if centre <> '' then
   begin
       PanelLlistaEspera.SqlDic[6]      := 'WHERE CENTRE="'+centre+'" [AND FILTRO]';
       PanelLlistaEspera.SqlDicTotal[6] := PanelLlistaEspera.SqlDic[6];
   end;
end;


procedure TwFitxaLlistaEspera.PanelLlistaEsperaAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                                            State: TGridDrawState; Query: TQuery);
var
  motiu3: Integer;
begin
    motiu3 := Query.FieldByName('C_Motiu').AsInteger;

    if (Query.FieldByName('PREOPERATORI').AsInteger <> 0) then
    begin
        if TeDretMotiu(motiu3, [4]) then CASE Query.FieldByName('PREOPERATORI').AsInteger OF
                                            -3: ColorBrush := $00FFD9FF;  // contraindicades
                                            -2: ColorBrush := $00D1D1D1;  // caducades
                                            -1: ColorBrush := clRed;      // anul·lades
                                          1..3: ColorBrush := $006BC2ED;  // en curs i ajornades (condicionades ja no existiran)
                                             4: ColorBrush := $00FDDC86;  // pendents de validar
                                             5: ColorBrush := $0045CF87;  // autoritzades //$0000C462;
                                         END;
    end;
end;


procedure TwFitxaLlistaEspera.TancarPreopExecute(Sender: TObject);
var
  metge: TMetge;
  quants: integer;
  textAvis,historia: string;
begin

    if wData.UsuariActiu.Codi <> ''
    then metge := wData.UsuariActiu
    else metge := PreguntaMetge;
    
    historia := PanelLlistaEspera.Datos.FieldbyName('c_historia').AsString;

    // Només ho pot fer l'Elena -> té dret M56
    if not (TeDretMetge(metge.codi,[56]) or TeDretAcces([100])) then FerError(Error1,True)
    else begin
        case PanelLlistaEspera.Datos.FieldbyName('PREOPERATORI').AsInteger of
          -3: begin
                quants:=GutSelect('select count(*) from preoperatori where estat_interv = -3 and c_historia =%s',[historia]);

                if (quants = 1) then textAvis:='Vol tancar el preoperatori amb intervenció contraindicada de la història '+historia+' ?'
                else textAvis:='Vol tancar els '+inttostr(quants)+'preoperatoris amb intervenció contraindicada de la història '+historia+' ?';

                if AvisoSN(textAvis) then GutExecute('update preoperatori set estat_interv = 8 where c_historia= %s and estat_interv = -3',[historia])
                else Exit;
              end;

          -2: begin
                quants:=GutSelect('select count(*) from preoperatori where estat_interv = -2 and c_historia =%s',[historia]);

                if (quants = 1) then textAvis:='Vol tancar el preoperatori caducat de la història '+historia+' ?'
                else textAvis:='Vol tancar els '+inttostr(quants)+'preoperatoris caducats de la història '+historia+' ?';

                if AvisoSN(textAvis) then GutExecute('update preoperatori set estat_interv = 6 where c_historia= %s and estat_interv = -2',[historia])
                else Exit;
              end;
          -1: begin
                quants:=GutSelect('select count(*) from preoperatori where estat_interv = -1 and c_historia =%s',[historia]);

                if (quants = 1) then textAvis:='Vol tancar el preoperatori anul·lat de la història '+historia+' ?'
                else textAvis:='Vol tancar els '+inttostr(quants)+'preoperatoris anul·lats de la història '+historia+' ?';

                if AvisoSN(textAvis) then GutExecute('update preoperatori set estat_interv = 7 where c_historia= %s and estat_interv = -1',[historia])
                else Exit;
              end;
          else FerError('Preoperatori no anul·lat ni caducat. No es pot tancar.',True);
        end;
    end;
    PanelLlistaEspera.RefreshSql;
end;


procedure TwFitxaLlistaEspera.MostraComentari(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  qPreop: TQuery;
begin
    CASE Datos.FieldByName('PREOPERATORI').AsInteger OF
      -2,-1,1..5:
      begin
          qPreop := TQuery.Create(Self);
          TRY
            qPreop.DatabaseName := 'interna';
            qPreop.SQL.Text := Format('select C.N_CODI as ESTAT, P.DATA_ULTMODI, P.C_METGE, P.NOTIFICACIONS ' +
                                      'from PREOPERATORI P ' +
                                      'join CODICAMPS C on P.ESTAT_INTERV = C.C_CODI and TIPUSCODI = "ESTATPREOPERA"' +
                                      'where C_HISTORIA = %d and ESTAT_INTERV = %d order by DATA_ULTMODI desc',
                                      [Datos.FieldByName('C_Historia').AsInteger,
                                       Datos.FieldByName('Preoperatori').AsInteger]);
            qPreop.Open;

            MovePreop.Caption := Format('Notificacions preoperatori.  %d - %s', [Datos.FieldByName('C_Historia').AsInteger,
                                                                                 Datos.FieldByName('NomComplet').AsString]);
                                           
            MemoPreop.Text := Format('%s.   %s  %s.' + NLine + NLine + '%s',
                                     [UpperCase(qPreop.FieldByName('Estat').AsString),
                                      qPreop.FieldByName('C_Metge').AsString,
                                      qPreop.FieldByName('Data_UltModi').AsString,
                                      qPreop.FieldByName('Notificacions').AsString]);
            MovePreop.Show;
            qPreop.Close;
          FINALLY
            qPreop.Free;
          END;
      end;
    END;
end;


procedure TwFitxaLlistaEspera.PanelLlistaEsperaAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    if MovePreop.Visible then MovePreop.Hide;
end;


procedure TwFitxaLlistaEspera.PanelLlistaEsperaAlAfterExcel(Sender: TObject);
begin
    wMain.LastTraza := 0; wMain.StatusTraza := '';
    if wMain.LastTraza=0 then wMain.LastTraza := wData.ObraTrazaControl(0,Self.Name,wMain.Aplica);
    wMain.AddStatusTraza('x');
    if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);
end;


procedure TwFitxaLlistaEspera.PanelLlistaEsperaAlBeforePrint(Sender: TObject);
begin
    if wData.UsuariActiu.Codi = '' then PreguntaMetge;
    if wData.UsuariActiu.Codi = '' then Abort;
end;


procedure TwFitxaLlistaEspera.PanelLlistaEsperaAlAfterPrint(Sender: TObject);
begin
    wMain.LastTraza := 0; wMain.StatusTraza := '';
    if wMain.LastTraza=0 then wMain.LastTraza := wData.ObraTrazaControl(0,Self.Name,wMain.Aplica);
    wMain.AddStatusTraza('P');
    if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);
end;


procedure TwFitxaLlistaEspera.ePrestacioChange(Sender: TObject);
begin
    eDescripcio.EditValue := '';
end;

Function EsBaixa(Codi: String):Boolean;
var
  Res : String;
begin
    Res := GutSelect('Select Baixa from Metges where Codi = "%s"', [Codi]);

    if EsBuit(Res) then
    begin
       Res := GutSelect('Select Baixa from MetgeExtra where Codi = "%s"', [Codi]);
       Result := StrIn(Res, ['B', 'S']);
    end
    else Result := StrIn(Res, ['B', 'S']);
end;

end.
