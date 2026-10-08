unit FitxaGestioPassis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, HYDialogConsulta, ToolWin, ComCtrls, HYEdit, Buttons,
  Data, DB, DBTables, Grids, DBGrids, HYGrids;

type
  TwFitxaGestioPassis = class(TForm)
    pcPassis: HYPanelConsulta;
    Panel1: TPanel;
    edDataInici: THYTextEdit;
    bCerrar: TSpeedButton;
    bInserta: TSpeedButton;
    bElimina: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure edDataIniciChange(Sender: TObject);
    procedure pcPassisAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);

    procedure pcPassisAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure pcPassisAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure bInsertaClick(Sender: TObject);
    procedure bEliminaClick(Sender: TObject);

    procedure bCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    MetgePassi: TMetge;
    AVUI: TDateTime;
    procedure CalculaIntervalPassi(var inici, fi: TDateTime);
    function PeriodeDeGracia(data1, data2: TDateTime): Boolean;
  public
    procedure Iniciar(filtre:String);
  end;

var
  wFitxaGestioPassis: TwFitxaGestioPassis;

implementation

uses DataAdmisio, DataBasics, Funciones, Main, InputBoxBVG;

{$R *.dfm}


procedure TwFitxaGestioPassis.FormCreate(Sender: TObject);
begin
    // Demanem la clau de pas en obrir la fitxa:

    // A Admissions ja estan identificats
    if TeDretAcces([70]) then MetgePassi := wData.UsuariActiu
    
    // A Seguretat no demanem credencials (no poden fer passis, només consulta)
    else if not TeDretAcces([74]) then
    begin
        MetgePassi := PreguntaMetge;
        if (MetgePassi.Codi = '') then Close;
    end;
    
    AVUI := DateServer;
end;


procedure TwFitxaGestioPassis.Iniciar(filtre: String);
begin
    wMain.LastTraza := 0;
    wMain.StatusTraza := '';

    if (filtre <> '') then pcPassis.SqlDic[4] := 'where TE_PASSI = "' + filtre + '"  [AND FILTRO]'
                      else pcPassis.SqlDic[4] := '[FILTRO]';

    pcPassis.SqlDicTotal[4] := pcPassis.SqlDic[4];
    edDataInici.AsDate := AVUI;
    bInserta.Visible := TeDretAcces([72]);  // "seguretat" no té el dret A72 (té l'A74)
    bElimina.Visible := bInserta.Visible;
end;


procedure TwFitxaGestioPassis.edDataIniciChange(Sender: TObject);
begin
    pcPassis.SqlDic[2]      := '"' + FormatDateTime('dd.mm.yyyy', edDataInici.AsDateTime) + '"';
    pcPassis.SqlDicTotal[2] := '"' + FormatDateTime('dd.mm.yyyy', edDataInici.AsDateTime) + '"';
    pcPassis.Execute;
    pcPassis.PanelGrid.Columns[3].Width := 70;    // coordinador
    pcPassis.PanelGrid.Columns[4].Width := 50;    // planta
    pcPassis.PanelGrid.Columns[5].Width := 50;    // llit
end;


procedure TwFitxaGestioPassis.pcPassisAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                                   State: TGridDrawState; Query: TQuery);
begin
    ColorFont := clBlack;
    ColorBrush := clWhite;

    if (Query.FieldByName('Te_Passi').AsString = 'S') then ColorFont := clGreen;

    if (gdSelected in State) then
    begin
       ColorFont  := clNavy;
       ColorBrush := $00C2DAE4;
    end;
end;


procedure TwFitxaGestioPassis.pcPassisAlChangeRegistro(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    if bInserta.Visible then
    begin
        bInserta.Enabled := (Datos.FieldByName('Te_Passi').AsString = 'N');
        bElimina.Enabled := (Datos.FieldByName('Te_Passi').AsString = 'S');
    end;
end;


procedure TwFitxaGestioPassis.pcPassisAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
    if not bInserta.Visible  then Exit;

    if      bInserta.Enabled then bInsertaClick(bInserta)
    else if bElimina.Enabled then bEliminaClick(bElimina);
end;


procedure TwFitxaGestioPassis.bInsertaClick(Sender: TObject);
var
  inici, fi: TDateTime;
  qui: String;
  ok: Boolean;
  qDarrerPassi: TQuery;
  PrimerPassi: Boolean;
begin
    if not TeDretGrup(MetgePassi.Grup, [48]) then TeDretMetge(MetgePassi.Codi, [93], True);

    // JULIOL 2021-i
    // Si l'últim passi del pacient no té medicació administrada per passi, ens assegurem que el pacient efectivament va marxar:
    qDarrerPassi := TQuery.Create(Self);
    TRY
      qDarrerPassi.DatabaseName := 'interna';
      qDarrerPassi.SQL.Text := Format('select INICI, ADM_INICI from PASSIS ' +
                                      'where C_HISTORIA = %d and FI >= "TODAY" - 15 ' +
                                      'order by INICI desc ' +
                                      'ROWS 1',
                                      [pcPassis.Datos.FieldByName('C_Historia').AsInteger]);
      qDarrerPassi.Open;
      if (not qDarrerPassi.FieldByName('INICI').IsNull)
      and qDarrerPassi.FieldByName('ADM_INICI').IsNull
      and (not AvisoNS(Format('Confirmeu que el pacient ja va marxar per passi el dia %s ?',
                              [FormatDateTime('dd.mm.yyyy', qDarrerPassi.FieldByName('Inici').AsDateTime)])))
      then begin
          ShowMessage('En aquest cas, heu d''anul·lar primer el passi no realitzat');
          edDataInici.AsDate := qDarrerPassi.FieldByName('Inici').AsDateTime;
          Exit;
      end;
      qDarrerPassi.Close;
    FINALLY
      qDarrerPassi.Free;
    END;
    // JULIOL 2021-f

    // Comprovar que no se solapi amb un passi existent
    //...//


    qui := pcPassis.Datos.FieldByName('C_HISTORIA').AsString + ' - ' + pcPassis.Datos.FieldByName('NOMCOMPLET').AsString;

    inici := edDataInici.AsDateTime;
    fi    := inici;
    CalculaIntervalPassi(inici, fi);

    ok := False;
    while not ok do
    begin
        if DemanaPeriode(inici, fi, qui, 'Introduïu les dates del passi de cap de setmana:', False) then
        begin
            if (inici < AVUI) then ShowMessage('La data d''inici del passi no pot ser anterior a avui.')   // i tornem a demanar dates
            else if (fi > inici + 6) then ShowMessage('El passi no pot durar més de 5 dies.')              // i tornem a demanar dates
            else if (pcPassis.Datos.FieldByName('C_CENTREFAC').AsString = '02')
               and ((DiaDeLaSemana(inici) <> 6) or (DiaDeLaSemana(fi) <> 7))
               and  not PeriodeDeGracia(inici, fi)  // algunes dates es permet sortir fora de dissabte/diumenge
               and not TeDretMetge(MetgePassi.Codi,[331])
               then ShowMessage('Pacient de mútua: només pot sortir de passi de dissabte a diumenge. Demaneu-ho als caps de l`àrea mèdica')    // i tornem a demanar dates
            else begin
                ok := True;
                PrimerPassi := (0 = GutSelect('select count(*) from PASSIS where C_TRACTAMENT = %d', [pcPassis.Datos.FieldByName('C_Tractament').AsInteger]));

                GutExecute('insert into PASSIS (C_Tractament, C_Historia, Inici,    Fi, Infer_Passi, Data_Passi) ' +
                           '            values (          %d,         %d,  "%s",  "%s",        "%s",       "%s")',
                           [pcPassis.Datos.FieldByName('C_Tractament').AsInteger,
                            pcPassis.Datos.FieldByName('C_Historia').AsInteger,
                            FormatDateTime('dd.mm.yyyy', inici),
                            FormatDateTime('dd.mm.yyyy', fi),
                            MetgePassi.Codi,
                            FormatDateTime('dd.mm.yyyy hh:nn:ss', NowServer)]);

                GutExecute('update TRACTAMENTS set C_INFERMERAPASSI = "%s" where C_TRACTAMENT = %d',
                           [MetgePassi.Codi, pcPassis.Datos.FieldByName('C_Tractament').AsInteger]);

                pcPassis.RefreshData;

                if PrimerPassi then ShowMessage('Recordeu imprimir el CI, fer-lo signar al pacient/família i escanejar-lo per penjar-lo a l''HCE');
            end;
        end
        else begin
            // JULIOL 2021: Pot haver sortit perquè han posat data fi = data inici (avisem)
            ShowMessage('Recordeu que per sortides de mig dia no heu de registrar passis de cap de setmana sinó permisos de sortida (passi verd)');
            // o bé perquè han cancel·lat voluntàriament (sortim)
            ok := True;
        end;
    end;

end;


procedure TwFitxaGestioPassis.CalculaIntervalPassi(var inici, fi: TDateTime);
  function EsFestiu (Dia: TDate): Boolean;
  begin
    Result := (GutSelect('select COUNT(*) from FESTIUS where DATA = "%s"', [FormatDateTime('dd.mm.yyyy', Dia)]) <> 0);
  end;
var
  Dia: TDate;
  Festa: Boolean;
begin
    inici := inici + 6 - DiaDeLaSemana(inici);   // inicialitzem a dissabte que ve
    fi := inici + 1;                             // inicialitzem a diumenge que ve

    // anem tirant enrere mentre sigui festiu (fins que topem amb un no festiu)
    Festa := True;
    Dia   := inici - 1;    // divendres

    while Festa do
    begin
        Festa := EsFestiu(Dia);

        if Festa then Dia := Dia - 1
                 else Dia := Dia + 1;      // ==> retorna el tram començant amb festiu.
    end;

    inici := Dia;

    // anem tirant endavant mentre sigui festiu (fins que topem amb un no festiu)
    Festa := True;
    Dia   := fi + 1;       // dilluns

    while Festa do
    begin
        Festa := EsFestiu(Dia);

        if Festa then Dia := Dia + 1
                 else Dia := Dia - 1;      // ==> retorna el tram acabant amb festiu.
    end;

    fi := Dia;
end;


procedure TwFitxaGestioPassis.bEliminaClick(Sender: TObject);
begin
    if not TeDretGrup(MetgePassi.Grup, [48]) then TeDretMetge(MetgePassi.Codi, [93], True);

    // Comprovem que no hi hagi medicació administrada per passi:
    if (pcPassis.Datos.FieldByName('Medicacio').AsString = 'S') then
    begin
        FerError('Cal que anul·leu primer la medicació administrada per passi');
        Exit;
    end;

    // No deixo eliminar-lo si ja ha tornat de passi:
    if (pcPassis.Datos.FieldByName('Data_Fi').AsDateTime < DateServer) then
    begin
        FerError('No es pot eliminar aquest passi perquè la data de tornada ja ha passat.');
        Exit;
    end;

    // Demanem confirmació per eliminar el passi:
    if not AvisoSN(Format('Voleu treure el pacient ' + NLine + NLine + '%d - %s' + NLine + NLine + 'de la llista de passis?',
                          [pcPassis.Datos.FieldByName('C_Historia').AsInteger,
                           pcPassis.Datos.FieldByName('NomComplet').AsString]))
    then Exit;

    GutExecute('delete from PASSIS where C_TRACTAMENT = %d and INICI = "%s"',
               [pcPassis.Datos.FieldByName('C_Tractament').AsInteger,
                FormatDateTime('dd.mm.yyyy', pcPassis.Datos.FieldByName('Data_Inici').AsDateTime)]);

    GutExecute('update TRACTAMENTS set C_INFERMERAPASSI = "%s" where C_TRACTAMENT = %d',
               [MetgePassi.Codi,
                pcPassis.Datos.FieldByName('C_Tractament').AsInteger]);

    pcPassis.RefreshData;
end;



procedure TwFitxaGestioPassis.bCerrarClick(Sender: TObject);
begin
    Close;
end;

procedure TwFitxaGestioPassis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    // A "seguretat" no demanem la clau de pas
    if not TeDretAcces([74], False, False) then
    begin
        if (wMain.LastTraza <> 0) then wData.TancaTrazaControl(wMain.LastTraza, wMain.StatusTraza);  // guardem registre accessos
    end;

    Action := caFree;
end;


function TwFitxaGestioPassis.PeriodeDeGracia(data1, data2: TDateTime): Boolean;
begin
    // Si estem dins d'un període de gràcia, permetem el passi
    Result := (0 < GutSelect('select count(*) from PASSIS_FESTIUS where DATA_INICI <= "%s" and DATA_FI >= "%s"',
                             [FormatDateTime('dd.mm.yyyy', data1), FormatDateTime('dd.mm.yyyy', data2)]));
end;

end.
