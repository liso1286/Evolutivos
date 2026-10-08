unit FitxaAgendaProgramacio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, HYEdit, HYDialogConsulta, Buttons, ActnList, ExtCtrls,
  db, DBTables, clcalendario, Grids, Data, DBGrids, Diccionari, Variants,
  Hy_Misc;

const
  ERRORMETGEBAIXA = 'AQUEST METGE ESTÀ DE BAIXA!';

type
  TwFitxaAgendaProgramacio = class(TForm)
    PanelCalendario: TPanel;
    PanelBotonesInferiores: TPanel;
    PanelLista: HYPanelConsulta;
    Actions: TActionList;
    Filiar: TAction;
    Pendents: TAction;
    ImprimirNota: TAction;
    Afegir: TAction;
    Modificar: TAction;
    Eliminar: TAction;
    Tancar: TAction;
    PanelBotones: TPanel;
    bFiliar: TSpeedButton;
    bPendents: TSpeedButton;
    bImprimirNota: TSpeedButton;
    bAfegir: TSpeedButton;
    bModificar: TSpeedButton;
    bEliminar: TSpeedButton;
    bTancar: TSpeedButton;
    qFestivos: TQuery;
    pBotoCalendari: TPanel;
    bCalendari: TSpeedButton;
    Panel1: TPanel;
    GBCalendaris: TGroupBox;
    BtnPrevMes: TSpeedButton;
    BtnPrevAny: TSpeedButton;
    BtnAvMes: TSpeedButton;
    BtnAvAny: TSpeedButton;
    Cal1: TclCalendario;
    Cal2: TclCalendario;
    cal3: TclCalendario;
    cal4: TclCalendario;
    bRefrescar: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    EditData: THYTextEdit;
    CercarData: TAction;
    CercardiaLliure: TAction;
    accIncrementarMes: TAction;
    accDecrementarMes: TAction;
    accIncrementarAny: TAction;
    accDecrementarAny: TAction;
    qCompletosM: TQuery;
    qCompletosP: TQuery;
    sbLocalitzar: TSpeedButton;
    accLocalitzar: TAction;
    PanelCalendarios: TPanel;
    eMetge: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ePresta: TEdit;
    accIraPrestacio: TAction;
    accIraMetge: TAction;
    ListMetgePresta: THYConsulta;
    DiaActual: TStaticText;
    Q: TQuery;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PrintTiquet: TAction;
    Cancela: TAction;
    sbCanviCoord: TSpeedButton;
    moveCanviCoordinador: THyMoveGroupControl;
    edCCoord: THYTextEdit;
    edCSubst: THYTextEdit;
    edRangDates: THYEditFiltro;
    sbCanviCoord2: TSpeedButton;
    sbTanca: TSpeedButton;
    edNCoord: THYTextEdit;
    edNSubst: THYTextEdit;
    cCoordinador: THYConsulta;
    cSubstitut: THYConsulta;
    bNovaHCE: TSpeedButton;
    procedure FormResize(Sender: TObject);
    procedure PanelListaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure ModificarExecute(Sender: TObject);
    procedure AfegirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FiliarExecute(Sender: TObject);
    procedure CalSeleccionarDia(sender: TObject; dia, mes, anyo: Word);
    procedure bCalendariClick(Sender: TObject);
    procedure bRefrescarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure EditDataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CercarDataExecute(Sender: TObject);
    procedure CercardiaLliureExecute(Sender: TObject);
    procedure EliminarExecute(Sender: TObject);
    procedure PanelListaAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure PanelListaAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure TancarExecute(Sender: TObject);
    procedure accIncrementarMesExecute(Sender: TObject);
    procedure accDecrementarMesExecute(Sender: TObject);
    procedure accIncrementarAnyExecute(Sender: TObject);
    procedure accDecrementarAnyExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ImprimirNotaExecute(Sender: TObject);
    procedure accLocalitzarExecute(Sender: TObject);
    procedure eMetgeKeyPress(Sender: TObject; var Key: Char);
    procedure ePrestaKeyPress(Sender: TObject; var Key: Char);
    procedure eMetgeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ListMetgePrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure ePrestaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eMetgeDblClick(Sender: TObject);
    procedure ePrestaDblClick(Sender: TObject);
    procedure eMetgeEnter(Sender: TObject);
    procedure ePrestaEnter(Sender: TObject);
    procedure accIraPrestacioExecute(Sender: TObject);
    procedure accIraMetgeExecute(Sender: TObject);
    procedure PendentsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PanelListaAlBeforePrint(Sender: TObject);
    procedure PanelListaAlAfterPrint(Sender: TObject);
    procedure PrintTiquetExecute(Sender: TObject);
    procedure CancelaExecute(Sender: TObject);
    procedure sbCanviCoordClick(Sender: TObject);
    procedure cCoordinadorAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure sbTancaClick(Sender: TObject);
    procedure sbCanviCoord2Click(Sender: TObject);
    procedure cSubstitutAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure bNovaHCEClick(Sender: TObject);
  private
    Selectedcal : TclCalendario;
    C_Metge : TMetge;
    C_Presta: TPrestacio;
//-    PotGestionarAgenda: Boolean;

    Procedure PonerMetge(CodiMetge: String);
    Procedure PonerPresta(CodiPresta: String);

    procedure IncrementarAny;
    procedure DecrementarAny;
    procedure IncrementarMes;
    procedure DecrementarMes;
    function  PrimerdiaCal: TDateTime;
    procedure MarcarComFestiu(d1: TDateTime);
    procedure PintarDiasFestivos;
    procedure PintarDiasLlenos(Datos: TDataSet);
    procedure IniciarColorCalendario;
    procedure MarcarDiaColor(d1   : TDate; Color: TColor);
    procedure RecalcularDadesPanel(Fecha: TDate; Metge: String = ''; Prestacio: String = ''); // Actualitza les visites per dia al Panel Consulta
    procedure consultametge;
    procedure consultaPresta;
    procedure VaciarFiltros;
    function esFestivo(Dia: TDate): Boolean;

  public
    procedure Agendar(Datos: TDataSet = nil);
    Procedure IniciarAgenda(Fecha : TDateTime; Espera: String = '');
    procedure IniciarCalendarios(aDia: TDate);
    procedure ActualitzaCalendari;
  end;
const
  Titulo = 'Agenda Programació dia (%s)';

var
  wFitxaAgendaProgramacio: TwFitxaAgendaProgramacio;
  SQLMetgeAmbPrestacio, SQLMetgeSensePrestacio,
  SQLPrestacioAmbMetge, SQLPrestacioSenseMetge :String;

  procedure IniciarSQLDeConsultas(metge: String; prestacio: String; Derecho:String; SubFiltre: String='');     


implementation

uses DataBasics, Funciones, DataAdmisio, FitxaInclusioConsultaaAgenda,
  FitxaLlistaEspera, FitxaEspera, DialogExcsioEspera, Main,
  FitxaConsultaAgenda, DataCodis, FitxaPendents, FuncionsCues, DataHCE;

{$R *.DFM}

procedure IniciarSQLDeConsultas(metge: String; prestacio: String; Derecho: String; SubFiltre: String='');
begin
    if EsPle(SubFiltre) then SubFiltre := Format(' ( %s ) AND ',[SubFiltre]);

    SQLMetgeAmbPrestacio  := Format(' SELECT M.Codi, M.Metge, M.C_Grup ' +
                                    ' FROM METGES M JOIN METGEPRESTA MP ON M.CODI = MP.CODI ' +
                                    ' JOIN PRESTACION P ON MP.C_PRESTACIO = P.C_PRESTACIO ' +
                                    ' JOIN DRETSPRESTA DP ON DP.C_PRESTACIO = MP.C_PRESTACIO ' +
                                    ' WHERE %s M.BAIXA = "N" ' +
                                    ' AND MP.C_PRESTACIO = "%s" ' +
                                    ' AND DP.C_DRET = "'+Derecho+'" [AND FILTRO] [ORDEN]', [SubFiltre, prestacio]);

    SQLMetgeSensePrestacio:= Format(' SELECT M.Codi, M.Metge, M.C_Grup FROM [DIC1] M ' +
                                    ' JOIN METGEPRESTA MP ON M.CODI = MP.CODI ' +
                                    ' JOIN DRETSPRESTA DP ON DP.C_PRESTACIO = MP.C_PRESTACIO ' +
                                    ' WHERE %s M.BAIXA = "N" ' +
                                    ' AND DP.C_DRET = "%s" ' +
                                    ' [AND FILTRO] ' +
                                    ' GROUP BY M.Codi, M.Metge, M.C_Grup ' +
                                    ' [ORDEN] ', [SubFiltre, Derecho]);

    SQLPrestacioAmbMetge  := Format(' SELECT P.C_Prestacio, P.N_Prestacio ' +
                                    ' FROM PRESTACION P JOIN METGEPRESTA MP ON P.C_PRESTACIO = MP.C_PRESTACIO ' +
                                    ' JOIN METGES M ON M.CODI = MP.CODI ' +
                                    ' JOIN DRETSPRESTA D ON D.C_PRESTACIO = P.C_PRESTACIO' +
                                    ' WHERE %s M.BAIXA = "N" ' +
                                    ' AND D.C_DRET = "' + Derecho + '" ' +
                                    ' AND M.CODI = "%s"  [AND FILTRO] [ORDEN]', [subfiltre, metge]);

    SQLPrestacioSenseMetge:= Format(' SELECT P.C_Prestacio, P.N_Prestacio FROM DRETSPRESTA D ' +
                                    ' JOIN PRESTACION P ON D.C_PRESTACIO = P.C_PRESTACIO ' +
                                    ' WHERE %s D.C_DRET = "%s" [AND FILTRO] [ORDEN]', [SubFiltre, Derecho]);
end;


procedure TwFitxaAgendaProgramacio.FormResize(Sender: TObject);
begin
    CenterInClient( PanelCalendarios );
    CenterInClient( PanelBotones     );
    CenterInClient( GBCalendaris     );
    pBotoCalendari.Left := GBCalendaris.Left + (GBCalendaris.Width - pBotoCalendari.Width);
end;


procedure TwFitxaAgendaProgramacio.IniciarAgenda(Fecha: TDateTime; Espera:String = '');
begin
    FormResize(Self);
    IniciarCalendarios( Fecha );
    ActualitzaCalendari; // S'omplen les dades parametritzades

    CalSeleccionarDia(Cal1, Cal1.Dia, Cal1.mes, Cal1.Any);

    if esPle(Espera) then PanelLista.Datos.Locate('C_Espera', Espera, []);
    show;

    eMetge.SetFocus;
end;


procedure TwFitxaAgendaProgramacio.Agendar(Datos: TDataSet = Nil);
var
  comprobacion: Integer;
  tmpPresta, tmpMetge: String;
  qAux: TQuery;
begin

    // Si no hi ha sessió oberta, demano usuari i comprovo que estigui autoritzat (grups ME, PS i EA poden autoprogramar-se)
    if not wMain.eUserActiu.Visible then
    begin
        PreguntaMetge;
        if (wData.UsuariActiu.Codi = '') then Exit;
        if not TeDretUsuari(wData.UsuariActiu.Codi, 'M294,G57') then
        begin
            ClearMetge(wData.UsuariActiu);
            FerError(Error1, True);
        end;
    end;

    // Si afegeixen nou registre a l'agenda
    If Datos = Nil then
    begin
        // mirem que el dia no estigui ple del tot
        if not (EsBuit(C_Metge.Codi) and EsBuit(C_Presta.C_Prestacio)) then
        begin
            if (EsBuit(C_Metge.Codi) and EsPle(C_Presta.C_Prestacio)) then
            begin
                comprobacion := SelectSqlFmt(wData.Projecte.DataBaseName,
                                'Select count(*) from P_ESPERA_DIAPRESTAPLE2("%s", "%s", "%s") where Dia_Ple = "S"',
                                [C_Presta.C_Prestacio,
                                 FechaIB(StrToDate(DiaActual.Caption)),
                                 FechaIB(StrToDate(DiaActual.Caption))]);

                if comprobacion > 0 then
                begin
                    if not AvisoSN(Format(' El dia %s ja està ple. Voleu seguir amb la inclusió? ', [DiaActual.Caption])) then Exit;
                end;
            end
            else begin

                if EsBuit(c_Metge.Codi) then tmpMetge := 'NULL'
                                        else tmpMetge := '"'+C_Metge.Codi+'"';

                if EsBuit(C_Presta.C_Prestacio) then tmpPresta := 'NULL'
                                                else tmpPresta := '"'+C_Presta.C_Prestacio+'"';

                comprobacion := SelectSqlFmt(wData.Projecte.DataBaseName,
                                'Select count(*) from P_ESPERA_DIAMETGEPLE(%s, %s, "%s", "%s") where Dia_Ple = "S"',
                                [tmpMetge,  tmpPresta,
                                 FechaIB(StrToDate(DiaActual.Caption)),
                                 FechaIB(StrToDate(DiaActual.Caption))]);

                if (comprobacion > 0) then
                begin
                    if not AvisoSN(Format(' El dia %s ja està ple. Voleu seguir amb la inclusió? ', [DiaActual.Caption])) then Exit;
                end;
            end;
        end;
    end;

    With TwFitxaInclusioConsultaaAgenda.Create(Application) do
    begin
        DonVinc := Self;
        inicialitzant := True;

        eCentreFac.Enabled := TeDretUsuari(wData.UsuariActiu.Codi,'M252,G203');
        eCentreFac.Ctl3D   := eCentreFac.Enabled;

        tAgenda.Open;
        wMain.LastTraza := 0; wMain.StatusTraza := '';

        if Datos = Nil then
        begin
            Caption := Format('Inclusió a agenda (%s)', [DiaActual.Caption]);

            tAgenda.Insert;

            if EsPle(C_Metge.Codi) then tAgenda.Fieldbyname('C_Coordinador').asString := Self.C_Metge.Codi;
            if EsPle(C_Presta.C_Prestacio) then tAgenda.Fieldbyname('C_Prestacio').asString := Self.C_Presta.C_Prestacio;

            tAgenda.FieldByName('Data_PreIngres').asDateTime := StrToDate(DiaActual.Caption);
            tAgenda.FieldByName('Hora_PreIngres').asString   := '00:00';

            if EsPle(Self.C_Metge.Codi) then
            begin
                C_MetgeX     := Data.BuscaMetge(Self.C_Metge.Codi);
                eMetgeX.Text := C_MetgeX.Codi + ' - ' + C_MetgeX.Desc;
            end;

            PosaPresta(Self.C_Presta.C_Prestacio);

            bRecercaHoraLliure.Click;
            bHistoria.Click;
        end

        else begin
            tAgenda.Findkey(varArrayof([Datos.FieldbyName('C_Espera').asVariant]));
            tAgenda.Edit;
            C_MetgeX      := Data.BuscaMetge(tAgenda.FieldbyName('C_Coordinador').AsString);
            C_PrestaX     := Data.BuscaPresta(tAgenda.FieldbyName('C_Prestacio' ).AsString);
            eMetgeX.Text  := C_MetgeX.Codi + ' - ' + C_MetgeX.Desc;
            DataAntiga    := tAgenda.FieldByName('DATA_PREINGRES').AsDateTime;

            PosaPresta(C_PrestaX.C_Prestacio);

            Caption := Format('Modificació de l''agenda (%s)', [tAgenda.FieldbyName('C_Prestacio').AsString]);

            if EsPle(tAgenda.FieldbyName('C_Historia').asString) then
            begin
                PanelEditable.Visible := False;
                PanelEditable.Enabled := False;
                PanelCIP.Visible := False;
                PanelReadOnly.Visible := True;
                PanelReadOnly.Enabled := True;

                qAux := Tquery.Create(Self);
                TRY
                  qAux.DatabaseName := 'interna';
                  qAux.SQL.Text := Format('select INCAPACITAT, INCAPACITAT_TUTOR, INCAPACITAT_TELEFON from FILIACIO where NUM_HIST = %d',
                                          [tAgenda.FieldByName('C_Historia').AsInteger]);
                  qAux.Open;
                  pIncapacitat.Visible := (qAux.FieldByName('Incapacitat').AsString = 'S');
                  if pIncapacitat.Visible then lbDadesIncapacitat.Caption := Format('TUTOR: %s. Telèfon: %s',
                                                                                    [qAux.FieldByName('Incapacitat_Tutor').AsString,
                                                                                     qAux.FieldByName('Incapacitat_Telefon').AsString]);
                  qAux.Close;
                FINALLY
                  qAux.Free;
                END;
            end
            else begin
                PanelEditable.Visible := True;
                PanelEditable.Enabled := True;
                PanelCIP.Visible := True;
                PanelReadOnly.Visible := False;
                PanelReadOnly.Enabled := False;
            end;

            if (not tAgenda.FieldByName('c_historia').IsNull) then RefrescaDadesFactu;

            RecalcularDadesPanelInfo(tAgenda.Fieldbyname('Data_Preingres').AsDateTime,
                                     tAgenda.Fieldbyname('C_Coordinador').AsString,
                                     tAgenda.Fieldbyname('C_Prestacio').AsString);

            edtUnitat.ReadOnly := (tAgenda.FieldbyName('C_Unitat').AsInteger <> 0);
        end;

        VerificarMarges;
        
        inicialitzant := False;
    end;
end;


procedure TwFitxaAgendaProgramacio.PanelListaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    Modificar.Execute;
end;


procedure TwFitxaAgendaProgramacio.ModificarExecute(Sender: TObject);
begin
    Agendar(PanelLista.Datos);
end;


procedure TwFitxaAgendaProgramacio.AfegirExecute(Sender: TObject);
begin
    Agendar;
end;


procedure TwFitxaAgendaProgramacio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;


procedure TwFitxaAgendaProgramacio.FiliarExecute(Sender: TObject);
label
   filia;
var
  DTRevi: TDateTime;  // parte 62303
begin
    if PanelLista.Datos.FieldbyName('C_Historia').IsNull then goto filia;

    // Si estem filiant una visita de consulta externa facturable
    if (PanelLista.Datos.FieldbyName('Tipus').AsInteger = 2) and (PanelLista.Datos.FieldbyName('Facturar').AsString = 'S') then
    begin
        // Mirem si n'hi ha alguna altra d'activa de la mateixa especialitat (només per a SCS):
        Q.Close;
        Q.ParamByName('c_historia').AsInteger := PanelLista.Datos.FieldbyName('C_Historia').AsInteger;
        Q.SQL[10] := Format('and T.DATA_INGRES = "TODAY" ' +
                           'and T.C_CENTREFAC = "04" ' +                 
                           'and M.C_ESPECIAL  = "%s" ' +
                           'and P.TIPUS = 2 and P.FACTURAR = "S"',
                           [PanelLista.Datos.FieldByName('C_Especial').AsString]);
        Q.Open;
        Q.First;
        if (not Q.Eof)
        then FerError('Aquest pacient ja té una prestació activa (%s) amb %s . ', [Q.FieldbyName('N_Prestacio').AsString,
                                                                                   Q.FieldbyName('N_Especial' ).AsString], True);

        // Mirem si hi ha una 2008 de la mateixa especialitat (la 2008 no és incompatible d'entrada amb les consultes externes)
        // (excepte si filiem una 2006, que sí que pot coexistir amb la 2008 per facturar medicació, o una 2003, que sempre és compatible amb la 2008)
        if (PanelLista.Datos.FieldbyName('C_Prestacio').asString <> '2006')
        and (PanelLista.Datos.FieldbyName('C_Prestacio').asString <> '2003')
        then begin
            Q.Close;
            Q.ParamByName('c_historia').AsInteger := PanelLista.Datos.FieldbyName('C_Historia').AsInteger;
            Q.SQL[10] := Format('and T.DATA_ALTA is NULL ' +
                               'and T.C_PRESTACIO = "2008" ' +
                               'and M.C_ESPECIAL  = "%s" ',
                               [PanelLista.Datos.FieldByName('C_Especial').AsString]);
            Q.Open;
            Q.First;
            if (not Q.Eof)
            then FerError('Aquest pacient té un tractament actiu (%s) ' + NLine +
                          'amb data d''ingrés %s, amb %s. ',
                          [Q.FieldbyName('N_Prestacio').AsString,
                           FormatDateTime('dd.mm.yyyy', Q.FieldByName('Data_Ingres').AsDateTime),
                           Q.FieldbyName('N_Especial').AsString],
                          True);
        end;
    end;

    // Si filien una 2003, hi ha d'haver una 2008 o una 2014 activa
    if (PanelLista.Datos.FieldbyName('C_Prestacio').AsString = '2003') then
    begin
        if (0 = GutSelect('select C_TRACTAMENT from TRACTAMENTS ' +
                          'where  C_HISTORIA = %d ' +
                          'and   (C_PRESTACIO = "2014" or C_PRESTACIO = "2008") ' +
                          'and   (DATA_ALTA >= "TODAY" or DATA_ALTA is NULL)',
                          [PanelLista.Datos.FieldByName('C_Historia').AsInteger]))

        then FerError('Aquest pacient no té cap tractament ambulatori actiu ' + NLine +
                      'al qual imputar una visita de seguiment. ', True);
    end

    // Si filien una 2002 i hi ha una 2021 (tractament afàsia) activa amb el mateix coordinador,
    // preguntem si volen filiar una 2026 (seguiment afàsia) en comptes de la 2002
    else if (PanelLista.Datos.FieldbyName('C_Prestacio').asString = '2002') then
    begin

        if (0 < GutSelect('select C_TRACTAMENT from TRACTAMENTS ' +
                          'where  C_HISTORIA = %d ' +
                          'and    C_PRESTACIO = "2021" ' +
                          'and    C_COORDINADOR = "%s" ' +
                          'and   (DATA_ALTA >= "TODAY" or DATA_ALTA is NULL)',
                          [PanelLista.Datos.FieldByName('C_Historia').AsInteger,
                           PanelLista.Datos.FieldByName('C_Coordinador').AsString]))

        then if not AvisoSN('Aquest pacient té un tractament d''afàsia amb estimulació transcranial actiu. ' + NLine +
                            'Les visites de seguiment d''afàsia s''han de registrar amb una "2026". '+ Nline + NLine +
                            'Voleu continuar amb l''admissió de la "2002"? ')
             then Abort;
    end

    //  Si filien una revisió (també les no presencials) i va venir a revisió fa menys d'un any, avisem
    else if TeDretPresta(PanelLista.Datos.FieldbyName('C_Prestacio').AsString, [193]) then
    begin
        DTRevi := GutSelect('select DATA_INGRES from TRACTAMENTS T ' +
                            'join   DRETSPRESTA D on T.C_PRESTACIO = D.C_PRESTACIO and D.C_DRET = "P193" ' +
                            'where  T.C_HISTORIA = %d ' +
                            'and    T.C_PRESTACIO = "2004" ' +
                            'and   (T.DATA_INGRES >= "TODAY" - 365)',
                            [PanelLista.Datos.FieldByName('C_Historia').AsInteger]);
        if (DTRevi > 0)
        and not AvisoSN(Format('Aquest pacient ha vingut a revisió fa menys d''un any ("%s"). '+ Nline + NLine +
                               'Voleu continuar amb l''admissió d''aquesta revisió? ', [FormatDateTime('dd-mm-yyyy', DTRevi)]))
        then Abort;
    end;

    filia:
    
    // Si no hi ha hagut cap error, continuem amb la Filiació
    CrearFiliacion(95, PanelLista.Datos);
end;


procedure TwFitxaAgendaProgramacio.CalSeleccionarDia(sender: TObject; dia, mes, anyo: Word);
var
  EsFestiu: Boolean;
begin

    cal1.DiaVisible := false;
    cal2.DiaVisible := false;
    cal3.DiaVisible := false;
    cal4.DiaVisible := false;

    if Sender is TClCalendario then selectedcal := Tclcalendario(sender);

    DiaActual.Caption := DateToStr(EncodeDate(anyo,mes,dia));
    PanelLista.Titulo := Format(Titulo, [DateToStr(EncodeDate(anyo,mes,dia))]);
    Selectedcal.DiaVisible := true;

    RecalcularDadesPanel(StrToDate(DiaActual.Caption), C_Metge.Codi, C_Presta.C_Prestacio);

    EsFestiu := esFestivo(StrToDate(DiaActual.Caption));

    Afegir.Enabled := False; {wMain.PotGestionarAgenda
                      and (not EsFestiu)
                      and (StrToDate(DiaActual.Caption) >= DateServer);}

    Filiar.Enabled := ((wMain.Nivell > 1) or TeDretUsuari(wData.UsuariActiu.Codi, 'M295,G241'))
                      and (not EsFestiu)
                      and (StrToDate(DiaActual.Caption) = DateServer)
                      and (PanelLista.Datos.FieldbyName('Visitat').asString = 'N');

    PrintTiquet.Enabled := (GestorCues = 'BUTTON')
                           and (wMain.Nivell > 1)
                           and (not EsFestiu)
                           and (StrToDate(DiaActual.Caption) = DateServer)
                           and (PanelLista.Datos.FieldbyName('Visitat').asString <> 'N');
                           
    Cancela.Enabled := PrintTiquet.Enabled; 
end;


procedure TwFitxaAgendaProgramacio.RecalcularDadesPanel(Fecha: TDate; Metge: String = ''; Prestacio: String = '');
begin
     if EsPle(Metge)
     then PanelLista.SqlDic[2] := ' "'+Metge+'", '
     else PanelLista.SqlDic[2] := ' NULL, ';

     if EsPle(Prestacio)
     then PanelLista.SqlDic[3] := ' "'+Prestacio+'", '
     else PanelLista.SqlDic[3] := ' NULL, ';

     PanelLista.SqlDic[4] := ' "'+FechaIB(Fecha)+'" ,';
     PanelLista.SqlDic[5] := ' "'+FechaIB(Fecha)+'" ';

     PanelLista.Execute('','');
     PanelLista.PanelGrid.Columns[1].Title.Caption  := 'Hora';
     PanelLista.PanelGrid.Columns[2].Title.Caption  := 'Núm. Hist.';
     PanelLista.PanelGrid.Columns[3].Title.Caption  := 'Nom complet';
     PanelLista.PanelGrid.Columns[3].Width  := 250;
     PanelLista.PanelGrid.Columns[4].Width  := 35;   // Edat
     PanelLista.PanelGrid.Columns[7].Title.Caption  := 'Telèfon';
     PanelLista.PanelGrid.Columns[9].Title.Caption  := 'Espec.';
     PanelLista.PanelGrid.Columns[12].Width  := 80;  // Motiu
     PanelLista.PanelGrid.Columns[13].Width  := 80;  // Modalitat
     PanelLista.PanelGrid.Columns[17].Title.Caption := 'C.Fact.';
end;


procedure TwFitxaAgendaProgramacio.DecrementarMes;
begin
    cal1.AnteriorMes;
    cal2.AnteriorMes;
    cal3.AnteriorMes;
    cal4.AnteriorMes;
    ActualitzaCalendari;
end;


procedure TwFitxaAgendaProgramacio.DecrementarAny;
begin
    cal1.AnteriorAny;
    cal2.AnteriorAny;
    cal3.AnteriorAny;
    cal4.AnteriorAny;
    ActualitzaCalendari;
end;


procedure TwFitxaAgendaProgramacio.IncrementarMes;
begin
    cal1.SiguienteMes;
    cal2.SiguienteMes;
    cal3.SiguienteMes;
    cal4.SiguienteMes;
    ActualitzaCalendari;
end;


procedure TwFitxaAgendaProgramacio.IncrementarAny;
begin
    cal1.SiguienteAny;
    cal2.SiguienteAny;
    cal3.SiguienteAny;
    cal4.SiguienteAny;
    ActualitzaCalendari;
end;


procedure TwFitxaAgendaProgramacio.ActualitzaCalendari;
begin
    if qFestivos.Active then qFestivos.Close;

    qFestivos.ParambyName('Fecha_Desde').AsDateTime := EncodeDate(Cal1.any,Cal1.mes,1);    //EncodeDate(2001,1,1);
    qFestivos.ParambyName('Fecha_Hasta').AsDateTime := EncodeDate(Cal4.Any,Cal4.mes, daysperMonth(Cal4.any, Cal4.mes));    //EncodeDate(2001,12,31);

    if (EsBuit(C_Metge.Codi) and EsPle(c_Presta.C_Prestacio)) then
    begin
        if qCompletosP.Active then qCompletosP.Close;
        qCompletosP.ParambyName('Fecha_Desde').AsDateTime := EncodeDate(Cal1.any,Cal1.mes,1);                                //EncodeDate(2001,1,1);
        qCompletosP.ParambyName('Fecha_Hasta').AsDateTime := EncodeDate(Cal4.Any,Cal4.mes, daysperMonth(Cal4.any, Cal4.mes));//EncodeDate(2001,12,31);

        qFestivos.ParambyName('Prestacio').asString   := C_Presta.C_Prestacio;
        qCompletosP.ParambyName('Prestacio').asString := C_Presta.C_Prestacio;

        qFestivos.Open;
        qCompletosP.Open;

        IniciarColorCalendario;
        PintarDiasLlenos(qCompletosP);
    end
    else begin
        if qCompletosM.Active then qCompletosM.Close;
        qCompletosM.ParambyName('Fecha_Desde').AsDateTime := EncodeDate(Cal1.any,Cal1.mes,1);    //EncodeDate(2001,1,1);
        qCompletosM.ParambyName('Fecha_Hasta').AsDateTime := EncodeDate(Cal4.Any,Cal4.mes, daysperMonth(Cal4.any, Cal4.mes));    //EncodeDate(2001,12,31);

        if EsVuit(C_Presta.C_Prestacio) then
        begin
            qFestivos.ParambyName('Prestacio').Clear;
            qCompletosM.ParambyName('Prestacio').Clear;
        end
        else begin
            qFestivos.ParambyName('Prestacio').asString := C_Presta.C_Prestacio;
            qCompletosM.ParambyName('Prestacio').asString := C_Presta.C_Prestacio;
        end;

        if EsVuit(C_Metge.Codi) then
        begin
            qFestivos.ParambyName('Metge').Clear;
            qCompletosM.ParambyName('Metge').Clear;
        end
        else begin
            qFestivos.ParambyName('Metge').asString := C_Metge.Codi;
            qCompletosM.ParambyName('Metge').asString := C_Metge.Codi;
        end;
        qFestivos.Open;
        qCompletosM.Open;
        IniciarColorCalendario;
        PintarDiasLlenos(qCompletosM);
    end;

    PintarDiasFestivos;
    RecalcularDadesPanel(StrToDate(DiaActual.Caption), C_Metge.Codi, C_Presta.C_Prestacio);
end;


procedure TwFitxaAgendaProgramacio.PintarDiasLlenos(Datos:TDataSet);
var
  color: TColor;
begin

  Datos.First;
  While not Datos.Eof do
  begin
     if Datos.FieldbyName('Dia_Ple').asString = 'S'
     then Color := clGray
     else Color := clGreen;

     MarcarDiaColor(Datos.FieldbyName('Fecha').asDateTime, Color);
     Datos.Next;
  end;

end;


procedure TwFitxaAgendaProgramacio.PintarDiasFestivos;
var
  SurtDeGuardia: Boolean;
begin
    qFestivos.First;
    While not qFestivos.Eof do
    begin
        SurtDeGuardia:=False;
        if (0 = GutSelect('select count(*) from FESTIUS where DATA = "%s"',
                          [FormatDateTime('dd.mm.yyyy', qFestivos.FieldByName('fecha').AsDateTime)]))
        then begin
            if (not qFestivos.ParamByName('metge').IsNull) and (qFestivos.ParamByName('metge').AsString <> '') then
            begin
                SurtDeGuardia:=('G' = GutSelect('select TIPUS from CALENDARI_AM where C_METGE = "%s" and DIA = "%s"',
                                                [qFestivos.ParamByName('metge').AsString,
                                                 FormatDateTime('dd.mm.yyyy', qFestivos.FieldByName('fecha').AsDateTime-1)]));
            end;
        end;
        if SurtDeGuardia then MarcarDiaColor(qFestivos.FieldByName('fecha').AsDateTime,$000080FF)
                         else MarcarComFestiu(qFestivos.FieldbyName('Fecha').asDateTime);
        qFestivos.Next;
    end;
end;


procedure  TwFitxaAgendaProgramacio.MarcarDiaColor(d1: TDate; Color:TColor);
var
  y, m, d : word;
begin
    decodedate(d1, y, m, d);
    If (cal1.Any = y) And (cal1.mes = m) Then Cal1.MarcarDiaColor(d, Color);
    If (cal2.Any = y) And (cal2.mes = m) Then Cal2.MarcarDiaColor(d, Color);
    If (cal3.Any = y) And (cal3.mes = m) Then Cal3.MarcarDiaColor(d, Color);
    If (cal4.Any = y) And (cal4.mes = m) Then Cal4.MarcarDiaColor(d, Color);
end;


procedure TwFitxaAgendaProgramacio.IniciarColorCalendario;
var
  TotalDias, Bucle :Integer;
  Fecha: TDate;
begin
    TotalDias := DaysPerMonth(Cal1.any, Cal1.mes) + DaysPerMonth(Cal2.any, Cal2.mes) +
                 DaysPerMonth(Cal3.any, Cal3.mes) + DaysPerMonth(Cal4.any, Cal4.mes) ;

    Fecha := PrimerDiaCal;

    for Bucle := 0 to ( TotalDias ) do MarcarDiaColor(Fecha + Bucle, clWhite);
end;


Procedure TwFitxaAgendaProgramacio.MarcarComFestiu (d1: TDateTime);
var
  y, m, d : word;
begin
    decodedate(d1, y, m, d);
    If (cal1.Any = y) And (cal1.mes = m) Then cal1.MarcarDiafiesta(d);
    If (cal2.Any = y) And (cal2.mes = m) Then cal2.MarcarDiaFiesta(d);
    If (cal3.Any = y) And (cal3.mes = m) Then cal3.MarcarDiaFiesta(d);
    If (cal4.Any = y) And (cal4.mes = m) Then cal4.MarcarDiaFiesta(d);
end;


Function TwFitxaAgendaProgramacio.PrimerdiaCal(): TDateTime;
var
  d,m,y: word;
begin
    d := 1;
    m := cal1.mes;
    y := cal1.any;
    result := EncodeDate(y,m,d);
end;


procedure TwFitxaAgendaProgramacio.IniciarCalendarios(aDia: TDate);
begin
    cal1.DiaVisible := True;
    cal2.DiaVisible := false;
    cal3.DiaVisible := false;
    cal4.DiaVisible := false;

    cal1.fecha := adia;  // Situa el primer calendari a la data especificada

    cal2.mes := cal1.mes;
    cal2.any := cal1.Any;
    cal2.SiguienteMes;

    cal3.mes := cal2.mes;
    cal3.Any := cal2.any;
    cal3.SiguienteMes;

    cal4.mes := cal3.mes;
    cal4.any := cal3.Any;
    cal4.SiguienteMes;
end;


procedure TwFitxaAgendaProgramacio.bCalendariClick(Sender: TObject);
begin
    Panel1.Visible := bCalendari.Down;
end;


procedure TwFitxaAgendaProgramacio.bRefrescarClick(Sender: TObject);
begin
    ActualitzaCalendari;
end;


procedure TwFitxaAgendaProgramacio.SpeedButton4Click(Sender: TObject);
begin
    IniciarCalendarios(DateServer);
    ActualitzaCalendari;
end;


procedure TwFitxaAgendaProgramacio.EditDataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Fecha: TDate;
begin
    Fecha := DateServer;

    if Key = $0D then {Cuando Apretemos el Enter en el Edit...}
    begin
        try    Fecha := StrToDate(EditData.EditValue);
        except FerError('Data no vàlida', True);
        end;
        IniciarCalendarios(Fecha);
        ActualitzaCalendari;

        EditData.EditValue := '';
    end;
end;


procedure TwFitxaAgendaProgramacio.CercarDataExecute(Sender: TObject);
begin
    EditData.SetFocus;
end;


procedure TwFitxaAgendaProgramacio.CercardiaLliureExecute(Sender: TObject);
var
  FechaPrimerHuecoLibre: TDate;
  Metge, Presta: String;
begin
    if (EsBuit(C_Metge.Codi) and EsBuit(C_Presta.C_Prestacio)) then Exit;


    if EsBuit(C_Metge.Codi) then Metge := 'NULL'
                            else Metge := '"'+C_Metge.Codi+'"';

    if EsBuit(C_Presta.C_Prestacio) then Presta := 'NULL'
                                    else Presta := '"'+C_Presta.C_Prestacio+'"';

    FechaPrimerHuecoLibre := GutSelect('select FECHA from P_TRACTAMENTS_BUSCARDIALLIURE(%s,%s,"%s")',
                                       [METGE, PRESTA, FechaIB(StrToDate(DiaActual.Caption))]);

    IniciarCalendarios(FechaPrimerHuecoLibre);
    ActualitzaCalendari;
end;


procedure TwFitxaAgendaProgramacio.EliminarExecute(Sender: TObject);
var
  Dialogo : TwDialogExclusioEspera;
begin
    // BACLOFÈN - no permetre treure de pendents si té c_om informada
    if not PanelLista.Datos.FieldByName('C_OM').IsNull then FerError('Agenda lligada a ordre mèdica. No es permet anul·lar.',True);

    // Si no hi ha sessió oberta, comprovem drets d'usuari
    if not wMain.eUserActiu.Visible then
    begin
        PreguntaMetge;
        if (wData.UsuariActiu.Codi = '') then Exit;
        if not TeDretUsuari(wData.UsuariActiu.Codi, 'M294,G57') then
        begin
            ClearMetge(wData.UsuariActiu);
            FerError(Error1, True);
        end;
    end;

    Dialogo := nil;
    if  NOT ( PanelLista.Datos.EOF and PanelLista.DataSource.DataSet.BOF )  then
    begin
        try
          With TwDialogExclusioEspera.Create(Dialogo) do
          begin
             tEspera.Open('','');
             tEspera.Findkey( varArrayOf([PanelLista.Datos.fieldbyName('C_Espera').AsString]) );
             Mensaje.Caption := StringReplace( Mensaje.Caption, '%', ' la Programació d''Agenda ',[]);
             Mensaje.Caption := StringReplace( '¿ '+Mensaje.Caption, '@', '['+
                                       PanelLista.Datos.FieldbyName('C_Espera').AsString+'] -'+
                                       PanelLista.Datos.fieldbyName('NomComplet' ).AsString+' ?' ,[]);
             ShowModal;
          end;
        finally
          Dialogo.Free;
          PanelLista.RefreshSql;
          ActualitzaCalendari;
        end;
    end;
end;


function TwFitxaAgendaProgramacio.esFestivo(Dia:TDate):Boolean;
var
  Metge, prestacio: String;
  Festa: TDateTime;
begin

    Metge     := C_Metge.Codi;
    Prestacio := C_Presta.C_Prestacio;

    if esBuit(Metge)
    then Metge := 'NULL'
    else Metge := '"'+ Metge +'"';

    if esBuit(Prestacio)
    then Prestacio := 'NULL'
    else Prestacio := '"'+ Prestacio +'"';

    // En afegir les guàrdies, passa el següent:
    //     pel dia de guàrdia, ha de deixar afegir però la procedure torna el dia següent
    //     pel dia següent de guàrdia, no ha de deixar afegir però la procedure torna null
    // Per tant, hem de dir que és festiu, si el dia que retorna la procedure coincideix amb el dia amb el que se la crida
    // excepte per les guàrdies que caldrà mirar si té guàrdia el dia anterior
    Festa:=GutSelect('Select fecha from P_TRACTAMENTS_AGENDAFESTIVOS("%s","%s",%s,%s)',[FechaIB(Dia),FechaIB(Dia),Metge,Prestacio]);
    Result:=(Festa=Dia);

    if (Festa=0) and (Metge <> 'NULL') then
    begin
        Festa:=GutSelect('select dia from CALENDARI_AM where c_metge=%s and tipus="G" and dia between "%s" and "%s"',
                         [Metge,FechaIB(Dia-1),FechaIB(Dia-1)]);
        Result:=(Festa=Dia-1);
    end;
end;


procedure TwFitxaAgendaProgramacio.PanelListaAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    if esFestivo( StrToDate(DiaActual.Caption)) then
    begin
      Modificar.Enabled    := wMain.PotGestionarAgenda and
                             (Datos.FieldbyName('Data_PreIngres').AsDateTime >= DateServer) and
                             (Datos.FieldbyName('Visitat').AsString = 'N');
      Eliminar.Enabled     := False;
      Filiar.Enabled       := False;
      PrintTiquet.Enabled  := False;
      Cancela.Enabled      := False;
    end

    else begin
        // Si està pendent de filiar
        if (Datos.FieldbyName('Visitat').AsString = 'N') then
        begin
          Modificar.Enabled    := wMain.PotGestionarAgenda;
          Eliminar.Enabled     := wMain.PotGestionarAgenda;
          Filiar.Enabled       := ((wMain.Nivell > 1) or TeDretUsuari(wData.UsuariActiu.Codi, 'M295,G241'))
                                  and (Datos.FieldbyName('Data_PreIngres').AsDateTime = DateServer);
          PrintTiquet.Enabled  := False;
          Cancela.Enabled      := False;
        end
        // Ja està filiat (visitat = F o S)
        else begin
          Modificar.Enabled   := False;
          Eliminar.Enabled    := False;
          Filiar.Enabled      := False;
          PrintTiquet.Enabled := (wMain.Nivell > 1) and (Datos.FieldbyName('Data_PreIngres').AsDateTime = DateServer) and (GestorCues = 'BUTTON');
          Cancela.Enabled     := (wMain.Nivell > 1) and (Datos.FieldbyName('Data_PreIngres').AsDateTime = DateServer); // PrintTiquet.Enabled;
        end;
    end;

    // SETEMBRE 2026 Les agendes ja estan totes traspassades a la nova HCE, per tant, ja no s'ha de poder afegir ni modificar ni eliminar cap registre a admissions delphi
    Afegir.Enabled    := False;
    Modificar.Enabled := False;
    Eliminar.Enabled  := False;
    Cancela.Enabled   := False;
end;


procedure TwFitxaAgendaProgramacio.PanelListaAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                                          State: TGridDrawState; Query: TQuery);
begin
    // lletra blava per als ja filiats
    if (Query.FieldbyName('visitat').asString <> 'N') then ColorFont := clBlue;

    // fons verd per als privats
    if (Query.FieldByName('centrefac').AsString <> '04') then ColorBrush := $00B8FEE9;

    // lletra rosa per a les recàrregues de baclofèn
    if (Query.FieldByName('C_Motiu').AsString = '19') then ColorFont := clFuchsia;

    if gdSelected in State then
    begin
        ColorFont := ClYellow;
        ColorBrush := ClNavy;
    end;
end;


procedure TwFitxaAgendaProgramacio.TancarExecute(Sender: TObject);
begin
    Close;
end;


procedure TwFitxaAgendaProgramacio.accIncrementarMesExecute(Sender: TObject);
begin
    IncrementarMes;
end;


procedure TwFitxaAgendaProgramacio.accDecrementarMesExecute(Sender: TObject);
begin
    DecrementarMes;
end;


procedure TwFitxaAgendaProgramacio.accIncrementarAnyExecute(Sender: TObject);
begin
    IncrementarAny;
end;


procedure TwFitxaAgendaProgramacio.accDecrementarAnyExecute(Sender: TObject);
begin
    DecrementarAny;
end;


procedure TwFitxaAgendaProgramacio.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if key = $6D then accDecrementarMes.Execute;
    exit;
end;


procedure TwFitxaAgendaProgramacio.ImprimirNotaExecute(Sender: TObject);
begin
    ImprimirNotaRecordatoria(PanelLista.Datos.FieldbyName('C_Historia'    ).asString  ,
                             PanelLista.Datos.FieldbyName('Data_Preingres').asDateTime,
                             PanelLista.Datos.FieldbyName('NomComplet'    ).asString);
end;


procedure TwFitxaAgendaProgramacio.accLocalitzarExecute(Sender: TObject);
begin
    With TwFitxaConsultaAgenda.Create(Application) do
    begin
        Filtro.Valor1 := DiaActual.Caption;
        Filtro.Valor2 := DateToStr(SumarMes(StrToDate(DiaActual.Caption), 24));
        bFiltrar.Click;

//        PanelAgenda.Datos.Locate('C_Espera', PanelLista.Datos.FieldbyName('C_Espera').asVariant, []);
    end;
end;


procedure TwFitxaAgendaProgramacio.PonerPresta(CodiPresta: String);
begin
    if (CodiPresta = '') then
    begin
        ClearPresta(C_Presta);
        ePresta.Text := '';
    end
    else begin
        C_Presta := BuscaPresta(CodiPresta);
        if EsBuit(C_Presta.C_Prestacio) then Beep
        else begin
            ePresta.Text := C_Presta.C_Prestacio + ' - '+C_Presta.N_Prestacio;
            ActualitzaCalendari;
            PanelLista.PanelGrid.SetFocus;
        end;
    end;
end;


procedure TwFitxaAgendaProgramacio.PonerMetge(CodiMetge: String);
begin
    if (CodiMetge = '') then
    begin
        ClearMetge(C_Metge);
        eMetge.Text := '';
    end
    else begin
        if EsBaixa(CodiMetge) then
        begin
            ClearMetge(C_Metge);
            eMetge.Text := '';
            FerError(ERRORMETGEBAIXA, True);
        end;

        C_Metge := BuscaMetge(CodiMetge);

        if (C_Metge.Codi = '') then Beep
        else begin
            eMetge.Text := C_Metge.Codi + ' - '+C_Metge.Desc;
            ActualitzaCalendari;
            ePresta.SetFocus;
        end;
    end;
end;


procedure TwFitxaAgendaProgramacio.eMetgeKeyPress(Sender: TObject; var Key: Char);
var
  cuantos: Integer;
begin
    if Key=#13 then
    begin
        Key := #0;

        // El texte es codi o nom, codi=3 caracters, nom > 3 caracters
        if Length(eMetge.Text) = 3 then PonerMetge(eMetge.Text)
        
        else if Length(eMetge.Text) < 3 then Beep

        else if Length(eMetge.Text) > 3 then
        begin
            Cuantos := SelectSQL(wData.Projecte.DataBaseName, 'SELECT COUNT( DISTINCT C_METGE ) FROM P_METGEPRESTA_LIST WHERE UPPER(N_METGE) LIKE UPPER("%'+eMetge.Text+'%")');
            if cuantos = 0 then beep;

            if cuantos = 1 then
            begin
                C_Metge     := BuscaMetge( SelectSQL(wData.Projecte.DataBaseName, 'SELECT C_METGE FROM P_METGEPRESTA_LIST WHERE UPPER(N_METGE) LIKE UPPER("%'+eMetge.Text+'%") GROUP BY C_METGE'));
                eMetge.Text := C_Metge.Codi + ' - ' + C_Metge.Desc;
                ActualitzaCalendari;
                ePresta.SetFocus;
            end;

            if cuantos >1 then
            begin
                ListMetgePresta.Filtros[1].CondiActual := 3;
                ListMetgePresta.Filtros[1].Valor1 := eMetge.Text;
                ListMetgePresta.ExecuteModal;
                ePresta.SetFocus;
            end;
        end;
    end;

    if Key=#27 then
    begin
        Key := #0;
        PonerMetge('');
        ActualitzaCalendari;
    end;
end;


procedure TwFitxaAgendaProgramacio.ePrestaKeyPress(Sender: TObject; var Key: Char);
var
  cuantos: Integer;
begin
    if Key=#13 then
    begin
        Key := #0;
        // El texte es codi o nom, codi=3 caracters, nom > 3 caracters
        if Length(ePresta.Text)=4 then PonerPresta(ePresta.Text);
        if Length(ePresta.Text)<4 then Beep;
        if Length(ePresta.Text)>4 then
        begin
            VaciarFiltros;

            cuantos := SelectSQL(wData.Projecte.DataBaseName, 'SELECT COUNT( DISTINCT C_PRESTACIO ) FROM P_METGEPRESTA_LIST WHERE UPPER(N_PRESTACIO) LIKE UPPER("%'+ePresta.Text+'%")');

            if cuantos = 0 then beep;

            if cuantos = 1 then
            begin
                C_Presta     := BuscaPresta ( SelectSQL(wData.Projecte.DataBaseName, 'SELECT C_PRESTACIO FROM P_METGEPRESTA_LIST WHERE UPPER(N_PRESTACIO) LIKE UPPER("%'+ePresta.Text+'%") GROUP BY C_PRESTACIO'));
                ePresta.Text := C_Presta.C_Prestacio + ' - ' + C_Presta.N_Prestacio;
                ActualitzaCalendari;
                PanelLista.PanelGrid.SetFocus;
            end;

            if cuantos >1 then
            begin
                ListMetgePresta.Filtros[3].CondiActual := 3;
                ListMetgePresta.Filtros[3].Valor1 := ePresta.Text;
                ListMetgePresta.ExecuteModal;
                PanelLista.PanelGrid.SetFocus;
            end;
        end;
    end;

    if Key=#27 then
    begin
        Key := #0;
        PonerPresta('');
        ActualitzaCalendari;
    end;
end;


procedure TwFitxaAgendaProgramacio.ListMetgePrestaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    PonerMetge(Datos.FieldbyName('C_Metge').AsString);
    PonerPresta(Datos.FieldbyName('C_Prestacio').AsString);
end;


procedure TwFitxaAgendaProgramacio.eMetgeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = vk_F3 Then ConsultaPresta;
end;


procedure TwFitxaAgendaProgramacio.ePrestaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = vk_F3 Then ConsultaMetge;
end;


procedure TwFitxaAgendaProgramacio.consultaPresta;
begin
    VaciarFiltros;
    ListMetgePresta.SqlDic[1] := 'C_Prestacio, N_Prestacio, C_Metge, N_Metge, N_Especial';
    if (C_Metge.Codi <> '') then
    begin
        ListMetgePresta.Filtros[0].CondiActual:= 1;
        ListMetgePresta.Filtros[0].Valor1:= C_Metge.Codi;
    end;
    ListMetgePresta.ExecuteModal('','');
end;


procedure TwFitxaAgendaProgramacio.consultametge;
begin
    VaciarFiltros;
    ListMetgePresta.SqlDic[1] := 'C_Metge, N_Metge, C_Prestacio, N_Prestacio, N_Especial';
    if (C_Presta.C_Prestacio <> '') then
    begin
        ListMetgePresta.Filtros[2].CondiActual:= 1;
        ListMetgePresta.Filtros[2].Valor1:= C_Presta.C_Prestacio;
    end;
    ListMetgePresta.ExecuteModal('','');
end;


procedure TwFitxaAgendaProgramacio.VaciarFiltros;
begin
    ListMetgePresta.filtros[0].Valor1 := '';
    ListMetgePresta.filtros[1].Valor1 := '';
    ListMetgePresta.filtros[2].Valor1 := '';
    ListMetgePresta.filtros[3].Valor1 := '';
end;


procedure TwFitxaAgendaProgramacio.eMetgeDblClick(Sender: TObject);
begin
    ConsultaMetge;
end;


procedure TwFitxaAgendaProgramacio.ePrestaDblClick(Sender: TObject);
begin
    ConsultaPresta;
end;


procedure TwFitxaAgendaProgramacio.eMetgeEnter(Sender: TObject);
begin
    eMetge.SelectAll;
end;


procedure TwFitxaAgendaProgramacio.ePrestaEnter(Sender: TObject);
begin
    ePresta.SelectAll;
end;


procedure TwFitxaAgendaProgramacio.accIraPrestacioExecute(Sender: TObject);
begin
    ePresta.SetFocus;
end;


procedure TwFitxaAgendaProgramacio.accIraMetgeExecute(Sender: TObject);
begin
    eMetge.SetFocus;
end;


procedure TwFitxaAgendaProgramacio.PendentsExecute(Sender: TObject);
begin
    if (wMain.Nivell > 1) then with TwFitxaPendents.Create(Application) do DOnVinc := Self;
end;


procedure TwFitxaAgendaProgramacio.FormCreate(Sender: TObject);
begin
//-    // Admissions i certs logins (CE, metges, secre NPS...) poden modificar l'agenda (assistencials forcen visites extra)
//-    PotGestionarAgenda := (wMain.Nivell > 1) or TeDretAcces([128]);

    if wMain.Nivell < 2 then
    begin
        Filiar.Enabled       := False;
        ImprimirNota.Enabled := wMain.PotGestionarAgenda;
        Pendents.Enabled     := False;
    end;

     Afegir.Enabled    := False; // wMain.PotGestionarAgenda;
     Modificar.Enabled := False; // wMain.PotGestionarAgenda;
     Eliminar.Enabled  := False; // wMain.PotGestionarAgenda;

     if      TeDretGrup(wData.UsuariActiu.Grup, [259]) then PanelLista.Filtros[0].Valor1 := 'H'
     else if TeDretGrup(wData.UsuariActiu.Grup, [260]) then PanelLista.Filtros[0].Valor1 := 'B'
                                                       else PanelLista.Filtros.Clear;
end;


procedure TwFitxaAgendaProgramacio.PanelListaAlBeforePrint(Sender: TObject);
begin
    if wData.UsuariActiu.Codi = '' then PreguntaMetge;
    if wData.UsuariActiu.Codi = '' then Abort;

    with PanelLista.CamposOculta do
    begin
        Clear;
        Add('Data_PreIngres');
        Add('C_Estat');
        Add('Nom');
        Add('Cognom1');
        Add('Cognom2');
        Add('Idioma');
        Add('Sexo');
        Add('c_om');
        Add('C_Motiu');
        Add('C_Modalitat');
        Add('Data_Naix');
        Add('CIP');
        Add('Tipus');
        Add('C_Especial');
        Add('C_Client');

        Add('C_UNITAT');
        aDD('C_ESPERA');
        Add('N_ESPECIAL');
        Add('N_PRESTACIO');
        Add('TELEFON');
        Add('CONSULTA');
        Add('FACTURAR');
        Add('CENTREFAC');
        Add('CLIENT');
        Add('METGE_PROGRAMA');
        Add('IDREGISTRE');
    end;
    PanelLista.Hide;
    PanelLista.Execute('','');
end;


procedure TwFitxaAgendaProgramacio.PanelListaAlAfterPrint(Sender: TObject);
begin
  wMain.LastTraza := 0;   wMain.StatusTraza := '';
  if wMain.LastTraza=0    then wMain.LastTraza := wData.ObraTrazaControl(0,Self.Name,wMain.Aplica);
  wMain.AddStatusTraza('P');
  if wMain.LastTraza <> 0 then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);

  TRY
      with PanelLista.CamposOculta do
      begin
          Clear;
          Add('Data_PreIngres');
          Add('C_Estat');
          Add('C_Espera');
          Add('Nom');
          Add('Cognom1');
          Add('Cognom2');
          Add('Idioma');
          Add('Sexo');
          Add('c_om');
          Add('C_Motiu');
          Add('C_Modalitat');
          Add('Data_Naix');
          Add('CIP');
          Add('Tipus');
          Add('C_Especial');
          Add('C_Client');
      end;
      PanelLista.Execute('','');
      RecalcularDadesPanel(StrToDate(DiaActual.Caption), C_Metge.Codi, C_Presta.C_Prestacio);
      PanelLista.Show;
  EXCEPT
  on e: Exception do
    begin
      ShowMessage('No s''ha pogut eliminar camp de CamposOculta.' + NLine + e.Message);
      Abort;
    end;
  END;

end;


procedure TwFitxaAgendaProgramacio.PrintTiquetExecute(Sender: TObject);
var
  resultatAdmissio: String;
  impressora: String;
  qTract: TQuery;
  c_tractament: String;
  c_historia: String;
  Tiquet: TTiquet;
begin
    if GestorCues = 'BUTTON' then
    begin
        c_tractament := GutSelect('select C_TRACTAMENTDESTI from ESPERA where C_ESPERA = %d', [PanelLista.Datos.FieldByName('C_Espera').AsInteger]);
        if (c_tractament = '') then
        begin
            ShowMessage('Aquesta agenda no té tractament de destí. No es pot reimprimir ticket.');
            Exit;
        end;
        resultatAdmissio := AdmissioPacient(StrToInt(c_tractament), True);
        if resultatAdmissio <> '' then ShowMessage('Localitzador: ' + resultatAdmissio + ' reimprès.');
    end
    else begin
        // no es pot fer en el nou sistema. Ho deshabilitem pq cada vegada genera un nou ticket si es crida wsImprimeixTiquet que crida createVisit
        ShowMessage('Opció no disponible amb la nova versio de QMatic');
        Abort;

        // 1. Preguntem per quina impressora volen reimprimir:
        impressora := wsPreguntaImpressora;

        // si dóna error o no en trien cap, sortim
        if (impressora = 'ERROR') or (impressora = '') then Exit;

        // Busquem el c_tractament i la historia que han filiat
        qTract := tQuery.Create(Application);
        TRY
          qTract.DatabaseName := 'interna';
          qTract.SQL.Text := 'select T.C_TRACTAMENT, T.C_HISTORIA from TRACTAMENTS T ' +
                             'join ESPERA E on T.C_TRACTAMENT = E.C_TRACTAMENTDESTI ' +
                             'where C_ESPERA = ' + PanelLista.Datos.FieldByName('c_espera').AsString;
          qTract.Open;

          // si no n'hi ha, vol dir que després s'ha anul·lat (han de filiar-ne una de nova)
          if (qTract.RecordCount = 0) then
          begin
              FerError('Aquesta admissió ha estat cancel·lada, no hi ha C_Tractament de destí');
              Exit;
          end;

          c_tractament := qTract.FieldByName('C_Tractament').AsString;
          c_historia   := qTract.FieldByName('C_Historia').AsString;

        FINALLY
          qTract.Close;
          qTract.Free;
        END;

        // 2. Cridem la funció wsImprimieixTiquet amb la impressora seleccionada i els camps del c_espera
        Tiquet := wsImprimeixTiquet(PanelLista.Datos.FieldByName('C_Espera').AsString,
                                    c_tractament,
                                    c_historia,
                                    PanelLista.Datos.FieldByName('C_Coordinador').AsString,
                                    PanelLista.Datos.FieldByName('Hora_PreIngres').AsString,
                                    PanelLista.Datos.FieldByName('NomComplet').AsString,
                                    impressora);

        // Si dóna error, el mostrem
        if (Tiquet.Error <> '') then FerError('Error en imprimir el tiquet:' + NLine +
                                               Tiquet.Error + NLine +
                                              'Localitzador: ' + Tiquet.Localitzador  + NLine + NLine +
                                              '*** AVISEU A INFORMÀTICA ***')

        // altrament, mostrem el localitzador si n'hi ha
        else if (Tiquet.Localitzador <> '') then ShowMessage('Localitzador: ' + Tiquet.Localitzador);
    end;
end;


procedure TwFitxaAgendaProgramacio.CancelaExecute(Sender: TObject);
var
  c_tractament: String;
  resultat: String;
begin
    // Comprovem que tinguem el C_Tractament
    c_tractament := GutSelect('select C_TRACTAMENTDESTI from ESPERA where C_ESPERA = %d', [PanelLista.Datos.FieldByName('C_Espera').AsInteger]);
    if (c_tractament = '') then
    begin
        ShowMessage('Aquesta agenda no té tractament de destí. No es pot cancel·lar l''admissió.');
        Exit;
    end;

    // Confirmem cancel·lació
    if not AvisoNS('VOLEU CANCEL·LAR L''ADMISSIÓ DEL PACIENT ' + NLine +
                   '"' + PanelLista.Datos.FieldByName('NomComplet').AsString + '", ' + NLine +
                   '"' + PanelLista.Datos.FieldByName('C_Prestacio').AsString +
                   '" AMB "' + PanelLista.Datos.FieldByName('C_Coordinador').AsString + '"?')
    then Exit;

    if (GestorCues = 'QMATIC') then
    begin
        // Cridem la funció CancelaFiliacio passant-li el c_espera
        resultat := CancelaFiliacio(c_tractament,
                                    PanelLista.Datos.FieldByName('C_Espera').AsString,
                                    PanelLista.Datos.FieldByName('C_Historia').AsString + ' - ' + PanelLista.Datos.FieldByName('NomComplet').AsString,
                                    PanelLista.Datos.FieldByName('C_Prestacio').AsString,
                                    PanelLista.Datos.FieldByName('C_Coordinador').AsString);

        // Si dóna error, el mostrem
        if (resultat <> '') then FerError('Error en cancel·lar l''admissió: ' + resultat + NLine + NLine +
                                          'Haureu d''anul·lar el tractament manualment.')
                            else ShowMessage('Cancel·lació correcta.');
    end
    else if (GestorCues = 'BUTTON') then
    begin
        // Cridem la funció EsborrarCita passant-li el id de la cita que és el c_tractament <-- NO IMPLEMENTAT

        // Anul·lem el tractament
        TRY GutExecute('update TRACTAMENTS set C_ESTATFAC = 55 where C_TRACTAMENT = %s', [c_tractament]);
            ShowMessage('Cancel·lació correcta.');
        EXCEPT
          on e: Exception do FerError('No s''ha pogut anul·lar el tractament' + NLine + e.Message,True);
        END;
    end;

    PanelLista.RefreshSql;
end;


procedure TwFitxaAgendaProgramacio.sbCanviCoordClick(Sender: TObject);
begin
    if (wData.UsuariActiu.Codi = '') then PreguntaMetge;
    TeDretMetge(wData.UsuariActiu.Codi, [256], True);
    moveCanviCoordinador.Show;
    cCoordinador.ExecuteModal;
end;

procedure TwFitxaAgendaProgramacio.cCoordinadorAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    edCCoord.EditValue := Datos.FieldByName('Codi').AsString;
    edNCoord.EditValue := Datos.FieldByName('NomSencer').AsString;
    cSubstitut.SqlDic[4] := Format('and M.C_GRUP = "%s"', [Datos.FieldByName('C_Grup').AsString]);
    cSubstitut.SqlDic[5] := Format('and M.CODI <> "%s"', [Datos.FieldByName('Codi').AsString]);
    cSubstitut.ExecuteModal;
end;

procedure TwFitxaAgendaProgramacio.cSubstitutAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    edCSubst.EditValue := Datos.FieldByName('Codi').AsString;
    edNSubst.EditValue := Datos.FieldByName('NomSencer').AsString;
end;

procedure TwFitxaAgendaProgramacio.sbCanviCoord2Click(Sender: TObject);
var
  data_inici, data_final: TDateTime;
  numero: Integer;
begin
    if (edCCoord.EditValue = '') then begin FerError('Seleccioneu el coordinador que voleu canviar.'); Exit; end;
    if (edCSubst.EditValue = '') then begin FerError('Seleccioneu el coordinador substitut.'); Exit; end;
    if (edRangDates.Valor1 = '') or (edRangDates.Valor2 = '') then begin FerError('Introduïu el rang de dates.'); Exit; end;

    data_inici := StrToDate(edRangDates.Valor1);
    data_final := StrToDate(edRangDates.Valor2);
    if (data_inici < DateServer) then begin FerError('La data inicial del canvi no pot ser passada.'); Exit; end;
    if (data_inici > data_final) then begin FerError('La data final no pot ser anterior a la inicial.'); Exit; end;

    if not AvisoSN(Format('Esteu segur de substituïr el coordinador de les visites ' + NLine +
                          'de %s - %s ' + NLine +
                          'per %s - %s, '  + NLine +
                          'des del dia %s fins al dia %s ?',
                          [edCCoord.EditValue, edNCoord.EditValue,
                           edCSubst.EditValue, edNSubst.EditValue,
                           edRangDates.Valor1, edRangDates.Valor2]))
    then Exit;

    numero := GutSelect('select count(*) from ESPERA ' +
                        'where (C_COORDINADOR = "%s") and (DATA_PREINGRES between "%s" and "%s") ' +
                        'and (C_ESTAT between 30 and 39) and (EXCLOS = "N") ',
                        [edCCoord.EditValue,
                         FormatDateTime('dd.mm.yyyy', data_inici),
                         FormatDateTime('dd.mm.yyyy', data_final)]);

    GutExecute('update ESPERA set C_COORDINADOR = "%s" ' +
               'where (C_COORDINADOR = "%s") and (DATA_PREINGRES between "%s" and "%s") ' +
               'and (C_ESTAT between 30 and 39) and (EXCLOS = "N") ',
               [edCSubst.EditValue,
                edCCoord.EditValue,
                FormatDateTime('dd.mm.yyyy', data_inici),
                FormatDateTime('dd.mm.yyyy', data_final)]);

    wMain.StatusTraza := '';
    wMain.LastTraza := wData.ObraTrazaControl(0, 'Agenda-Programació', wMain.Aplica);
    wMain.AddStatusTraza('s');
    wData.TancaTrazaControl(wMain.LastTraza,wMain.StatusTraza);

    ShowMessage(Format('%d registres modificats', [numero]));

    CalSeleccionarDia(Cal1, Cal1.Dia, Cal1.mes, Cal1.Any);

    edCCoord.EditValue := '';
    edCSubst.EditValue := '';
    edNCoord.EditValue := '';
    edNSubst.EditValue := '';
    edRangDates.Valor1 := '';
    edRangDates.Valor2 := '';

    moveCanviCoordinador.Hide;
end;

procedure TwFitxaAgendaProgramacio.sbTancaClick(Sender: TObject);
begin
    edCCoord.EditValue := '';
    edCSubst.EditValue := '';
    moveCanviCoordinador.Hide;
end;



procedure TwFitxaAgendaProgramacio.bNovaHCEClick(Sender: TObject);
begin
    if not PanelLista.Datos.FieldbyName('C_Historia').IsNull then
    begin
        wDataHCE.ObrirNovaHCE(PanelLista.Datos.FieldbyName('C_Historia').AsInteger,'ADM-AGENDA');
    end;
end;

end.









