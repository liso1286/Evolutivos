unit FitxaPendents;

interface

uses
  Windows, Data, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, dbTables, db,
  ExtCtrls, HYDialogConsulta, ComCtrls, ActnList, ToolWin, HYEdit, StdCtrls, FitxaAgendaProgramacio, Variants,
  Grids, DBGrids;

type
  TwFitxaPendents = class(TForm)
    PanelPendents: HYPanelConsulta;
    Panel1: TPanel;
    Actions: TActionList;
    ToolBar1: TToolBar;
    accEliminar: TAction;
    accAgenda: TAction;
    accSortir: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    bHistoric: TToolButton;
    accHistoric: TAction;
    ToolButton5: TToolButton;
    procedure accEliminarExecute(Sender: TObject);
    procedure accSortirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure accAgendaExecute(Sender: TObject);
    procedure accHistoricExecute(Sender: TObject);
    procedure PanelPendentsAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
    procedure PanelPendentsConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
  private
  public
    DOnVinc: TForm;
  end;

var
  wFitxaPendents: TwFitxaPendents;

implementation

uses DataAdmisio, Funciones, DataBasics, FitxaInclusioConsultaaAgenda,
//VFO-I. - PARTE 31220
  FitxaHistoric,
//VFO-F.
  DialogExcsioEspera, Main, FitxaEspera, DataHCE;

{$R *.DFM}

procedure TwFitxaPendents.accEliminarExecute(Sender: TObject);
begin
  // BACLOFÈN - no permetre treure de pendents si té c_om informada
  if not PanelPendents.Datos.FieldByName('C_OM').IsNull then FerError('Programació pendent lligada a ordre mèdica. No es permet anul·lar.',True);

  with TwDialogExclusioEspera.Create(Application) do
  try
    tEspera.Open('','');
    tEspera.Findkey( varArrayOf([PanelPendents.Datos.fieldbyName('C_Espera').AsString]) );
    tEspera.Edit;
    Mensaje.Caption := StringReplace( Mensaje.Caption, '%', ' la Llista de Pendents ',[]);
    Mensaje.Caption := StringReplace( '¿ '+Mensaje.Caption, '@', '['+
    PanelPendents.Datos.FieldbyName('C_Espera').AsString+'] -'+
    PanelPendents.Datos.fieldbyName('NomComplet' ).AsString+' ?' ,[]);
    ShowModal;
  finally
    free;
    PanelPendents.RefreshSQL;
  end;

end;

procedure TwFitxaPendents.accSortirExecute(Sender: TObject);
begin
   Close;
end;

procedure TwFitxaPendents.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
// parte 45114-i.
  // En sortir de la finestra, mirem si trobem alguna fitxa d'Agenda oberta, i si és així, la refresquem
  if LowerCase(DOnVinc.Name) = 'wfitxaagendaprogramacio' then
  begin
      TwFitxaAgendaProgramacio(DOnVinc).PanelLista.RefreshSql;
      TwFitxaAgendaProgramacio(DOnVinc).ActualitzaCalendari;
  end;
  {
  for i:= 0 to Screen.FormCount - 1 do
  begin
      if Screen.Forms[i].Name = 'wFitxaAgendaProgramacio' then
      begin
         TwFitxaAgendaProgramacio(Screen.Forms[i]).PanelLista.RefreshSql;
         TwFitxaAgendaProgramacio(Screen.Forms[i]).ActualitzaCalendari;
      end;
  end;
// parte 45114-f.
  -}
  Action := caFree;
end;

procedure TwFitxaPendents.FormCreate(Sender: TObject);
begin

   if wMain.Nivell < 2 then  accEliminar.Enabled := False;

   PanelPendents.Execute('','');
end;

procedure TwFitxaPendents.accAgendaExecute(Sender: TObject);
var
   cuantos, Pos, Op : Integer;
   Prestacion, N_Prestacio, Centre: String;
   qPresta : TQuery;

   function BuscaPos(Presta: String; const Datos: TDataSet):Integer;
   var
     Indice : integer;
   begin
       Indice := 0;
       Datos.First;
       While not Datos.Eof do
       begin
          if CompareText(Datos.FieldbyName('C_Prestacio').asString, Presta) = 0 then Break;
          Datos.Next;
          Inc(Indice)
       end;
       Result := Indice;
   end;

begin

     qPresta := TQuery.Create(wFitxaPendents);
     try

        // Si és una 2006 per recàrrega de baclofèn, posem directament 2006
        if  (PanelPendents.Datos.FieldbyName('C_Prestacio').AsString  = '2006')
        and (PanelPendents.Datos.FieldbyName('C_Motiu').AsInteger = 19) then
        begin
            Prestacion := '2006';
            N_Prestacio := 'Int.Amb';
            Centre := 'H';
        end

        // Si és una 2001 programada des de Sol·licituds d'ingrés, posem directament 2001
        else if (PanelPendents.Datos.FieldbyName('C_Prestacio').AsString  = '2001')
            and (PanelPendents.Datos.FieldbyName('C_Estat').AsInteger = 18) then
        begin
            Prestacion := '2001';
            N_Prestacio := '1 Visita';
            Centre := 'H';
        end

        // Altrament, tractament normal
        else begin
            qPresta.DataBaseName := wData.GDB.DataBaseName;
            qPresta.SQL.Text :=  ' SELECT  C_PRESTACIO, RESUM, CENTRE   '+
                                 ' FROM PRESTACION P, DRETSPRESTA DP    '+
                                 ' WHERE P.C_PRESTACIO = DP.C_PRESTACIO '+
                                 ' AND C_DRET = "P4"                    '+   // prestacions programables
                                 ' ORDER BY C_PRESTACIO                 ';
            qPresta.Open;
            qPresta.First;

            if EsPle(PanelPendents.Datos.FieldbyName('C_Prestacio').AsString)
            then Pos := BuscaPos(PanelPendents.Datos.FieldbyName('C_Prestacio').AsString, qPresta)
            else Pos := 0;
           
            Op := AvisoListaBd('Prestació a programar', qPresta, Pos, 2);

            if (Op <> -1) then
            begin
                Prestacion  := qPresta.FieldbyName('C_Prestacio').AsString;
                N_Prestacio := qPresta.FieldbyName('Resum').asString;
                Centre      := qPresta.FieldbyName('Centre').asString;
            end
            else Exit;
        end;

        if TeDretPresta(Prestacion, [2]) then
        begin

          if Centre = 'H' then
          begin
              // això no passarà mai perquè al PanelPendents només es mostren registres amb C_Estat entre 10 i 19
              if PanelPendents.Datos.FieldbyName('C_Espera').AsInteger = 30 then FerError('No es poden realitzar canvis en una agenda processada.', True);
              wDataHCE.ObrirNovaHCE(PanelPendents.Datos.FieldbyName('C_Historia').AsInteger,'ADM-PENDING-PROCESS',PanelPendents.Datos.FieldbyName('C_Espera').AsString);
          end
          else begin

              With TwFitxaInclusioConsultaaAgenda.Create(Application) do
              begin
                     inicialitzant := True;
                     DOnVinc := Self;

                     tAgenda.Open;
                     wMain.LastTraza := 0; wMain.StatusTraza := '';

                     tAgenda.Findkey(varArrayof([PanelPendents.Datos.FieldbyName('C_Espera').asVariant]));
                     tAgenda.Edit;

                     Caption := 'Inserció a l''Agenda';

                     if EsPle(tAgenda.FieldbyName('C_Historia').asString) then
                     begin
                        PanelEditable.Visible := False;
                        PanelEditable.Enabled := False;
                        PanelReadOnly.Visible := True;
                        PanelReadOnly.Enabled := True;
                     end
                     else
                     begin
                        PanelEditable.Visible := True;
                        PanelEditable.Enabled := True;
                        PanelReadOnly.Visible := False;
                        PanelReadOnly.Enabled := False;
                     end;

                     RecalcularDadesPanelInfo(tAgenda.Fieldbyname('Data_Preingres').asDateTime, tAgenda.Fieldbyname('C_Coordinador').asString, tAgenda.Fieldbyname('C_Prestacio').asString);
                     edtUnitat.ReadOnly := (tAgenda.FieldbyName('C_Unitat').asString <> '0') or EsBuit(tAgenda.FieldbyName('C_Unitat').asString);

                     Cuantos := SelectSQL(wData.Projecte.DataBaseName,
                     'SELECT COUNT( C_METGE ) FROM P_METGEPRESTA_LIST WHERE C_METGE = "'+PanelPendents.Datos.FieldbyName('c_coordinador').asString+'"');

                     C_MetgeX  := Data.BuscaMetge(tAgenda.FieldbyName('C_Coordinador').asString);
                     if cuantos = 0 then
                     begin
                       FerError(Format(Avis54, [C_MetgeX.codi+' - '+C_MetgeX.Desc]));
                     end
                     else begin
                        C_MetgeX  := Data.BuscaMetge(tAgenda.FieldbyName('C_Coordinador').asString);
                        eMetgeX.Text  := C_MetgeX.codi + ' - ' + C_MetgeX.Desc;

                        VerificarMarges;
                     end;

                     C_PrestaX := Data.BuscaPresta(Prestacion);                                //BVG
                     ePrestaX.Text := C_PrestaX.C_Prestacio + ' - ' + C_PrestaX.N_Prestacio;   //BVG

                     EsPendent := True;

                     inicialitzant := False;
              end;
          end;

        end;

        if TeDretPresta(Prestacion, [1]) then
        begin

              with TwFitxaEspera.Create(Application) do
              begin

                N_PRESTACIO := GutSelect('Select N_Prestacio from Prestacion where C_Prestacio = %s',[Prestacion]);
                PreguntaHistoria := True;
                PrestacioaIncloure := Prestacion;
                // Mostrarpaneles(Prestacion);
                Caption := 'Inclusió de '+ N_PRESTACIO +' a la Llista d''Espera';
                tEspera.Open;
                qEspecialitatMetge.Open;
                tEspera.Findkey(varArrayof([PanelPendents.Datos.FieldbyName('C_Espera').asVariant]));
                tEspera.Edit;
                tEspera.FieldByName('C_PRESTACIO'  ).AsString := Prestacion;
                tEspera.FieldByName('C_ESTAT'      ).AsInteger:= 20;
                tEspera.FieldByName('C_Procedencia').AsInteger:= 3;
                Mostrarpaneles(Prestacion);

                EditMetge.SetFocus;

                RecalcularObligaciones;
              end;

        end;

     finally
       qPresta.Free;
     end
end;

//VFO.I. - PARTE 31220
procedure TwFitxaPendents.accHistoricExecute(Sender: TObject);
begin
   CrearForm(TwFitxaHistoric);
end;
//VFO-F.

procedure TwFitxaPendents.PanelPendentsAlPintarGrid(var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn; State: TGridDrawState; Query: TQuery);
begin
  if (gdSelected in State) then ColorBrush := clLtGray;
  
  if     (Query.FieldByName('C_MOTIU').AsInteger = 19)              then ColorFont := clFuchsia   // recàrrega baclofèn
  else if TeDretMotiu(Query.FieldByName('C_MOTIU').AsInteger, [15]) then ColorFont := clBlue      // atenció per validacó d'ortesi
                                                                    else ColorFont := clBlack;
end;

procedure TwFitxaPendents.PanelPendentsConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
begin
    if SqlField = 'NOMCOMPLET' then SqlField := 'E.NOMCOMPLET'
    else if SqlField = 'MOTIU' then SqlField := 'C.N_CODI';
end;

end.


        //   end
        //   else
        //   begin
        //      //Obrir fitxa Insercio Espera
        //         with TwFitxaEspera.Create(Application) do
        //         begin
        //
        //           N_PRESTACIO := GutSelect('Select N_Prestacio from Prestacion where C_Prestacio = %s',[PanelPendents.Datos.FieldbyName('C_Prestacion').asString]);
        //           PreguntaHistoria := True;
        //           PrestacioaIncloure := PanelPendents.Datos.FieldbyName('C_Prestacion').asString;
        //           Mostrarpaneles(PanelPendents.Datos.FieldbyName('C_Prestacion').asString);
        //           Caption := 'Inclusió de '+ N_PRESTACIO +' en Espera';
        //           tEspera.Open;
        //           qEspecialitatMetge.Open;
        //           tEspera.Insert;
        //           tEspera.FieldByName('C_PRESTACIO').AsString := PanelPendents.Datos.FieldbyName('C_Prestacion').asString;
        //           EditMetge.SetFocus;
        //
        //           RecalcularObligaciones;
        //         end;
        //   end;



