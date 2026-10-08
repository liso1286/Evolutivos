unit FichaListOrtesis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, HYDialogConsulta, Buttons, Db, Grids, DbGrids, DbTables,
  Diccionari,FichaOrtesis, HYEdit, StdCtrls;

CONST
   CampsTots = ' IO2.C_Intercon, F.NUM_HIST, F.NOMCOMPLET, F.EDAT, T.C_PRESTACIO, P.ESEASE, T.DATA_PREALTA,                                   '+  // pacient
               ' I.DATA1, I.C_Metge1, I.URGENT, I.ESTAT,                                                                                      '+  // petició
               ' IO2.C_ortesis, IO2.n_ortesis, IO2.C_ORTESISLIN, IO2.CODISERVEI, IO1.C_grup, IO1.N_grup, CO.C_FAMILIA,                        '+  // ortesi
               ' IO2.DATA_PETICIOMUTUA, IO2.DATA_CONFORMITATMUTUA, IO2.ESTATFAC, IO2.C_CENTREFAC, IO2.C_CLIENT, IO2.C_DELEGACIO,              '+  // facturació client
               ' IO2.IVAVENTA, IO2.PREUVENTA, CO.PREUMAXIMSERVEI as PREU_SCS, IO2.PREUCOMPRA, (IO2.PREUCOMPRA - IO2.PREUVENTA) as DIFERENCIA, '+  // preus
               ' IO2.C_PROV, IO2.DATA_COMANDA, Max(IOR.DATA) as DATA_ENTREGA, IO2.ALBARA,                                                     '+  // comanda i entrega
               ' IO2.APORTACIOPACIENT, IO2.PREU2 as APORTACIO_PACIENT, IO2.C_EstatFac2, IO2.Data_CobroPacient, IO2.ALBARAPACIENT,             '+  // aportació pacient
               ' IO2.C_CENTREFAC2, IO2.C_CLIENT2, IO2.C_DELEGA2,                                                                              '+  // aportació pacient
               ' IO2.Referencia2, IO2.Observacions , IO2.TeNotes                                                                              ';

   CampsAgrupa = ' IO2.C_Intercon, F.NUM_HIST, F.NOMCOMPLET, F.EDAT, T.C_PRESTACIO, P.ESEASE, T.DATA_PREALTA,                                   '+  // pacient
                 ' I.DATA1, I.C_Metge1, I.URGENT, I.ESTAT,                                                                                      '+  // petició
                 ' IO2.C_ortesis, IO2.n_ortesis, IO2.C_ORTESISLIN, IO2.CODISERVEI, IO1.C_grup, IO1.N_grup, CO.C_FAMILIA,                        '+  // ortesi
                 ' IO2.DATA_PETICIOMUTUA, IO2.DATA_CONFORMITATMUTUA, IO2.ESTATFAC, IO2.C_CENTREFAC, IO2.C_CLIENT, IO2.C_DELEGACIO,              '+  // facturació client
                 ' IO2.IVAVENTA, IO2.PREUVENTA, CO.PREUMAXIMSERVEI, IO2.PREUCOMPRA, IO2.PREUVENTA,                                              '+  // preus
                 ' IO2.C_PROV, IO2.DATA_COMANDA, IO2.ALBARA,                                                                                    '+  // comanda i entrega
                 ' IO2.APORTACIOPACIENT, IO2.PREU2, IO2.C_EstatFac2, IO2.Data_CobroPacient, IO2.ALBARAPACIENT,                                  '+  // aportació pacient
                 ' IO2.C_CENTREFAC2, IO2.C_CLIENT2, IO2.C_DELEGA2,                                                                              '+  // aportació pacient
                 ' IO2.Referencia2, IO2.Observacions , IO2.TeNotes                                                                              ';

   CamposOcultos   = ' c_intercon   '+#13+
                     ' c_tractament '+#13+
                     ' C_OrtesisLin ';

   CamposOcultosPrint = ' C_Intercon   '+#13+
                        ' C_Tractament '+#13+
                        ' C_OrtesisLin '+#13+
                        ' N_Grup       '+#13+
                        ' C_Grup       '+#13+
                        ' Estat        '+#13+
                        ' Observacions '+#13+
                        ' Data_PreAlta ';

   // excloem anul·lats i finalitzats (80..89, 94), facturats, facturats directament a proveïdor i pacients bloquejats
   FiltrePendents = 'WHERE ((I.ESTAT < 80 or I.ESTAT = 213) and IO2.ESTATFAC <> 80 and IO2.ESTATFAC <> 54 and F.BLOQUEIG IS NULL) ';

   FiltrePteMutua  = ' WHERE ((IO2.DATA_CONFORMITATMUTUA IS NULL) '+
                     '   AND  (IO2.C_CENTREFAC <> "04")           '+
                     '   AND  (I.ESTAT BETWEEN 10 AND 11))        '+
                     '   AND F.bloqueig is null                   ';

   FiltrePteProv   = ' WHERE ((IO2.DATA_COMANDA IS NULL )  '+
                     '   AND  (I.ESTAT IN (10,11,213))  '+
                     '   AND  (NOT IO2.C_PROV IS NULL   )) '+
                     '   AND F.Bloqueig is null            ';

   FiltrePteFactu  = ' WHERE ((IO2.ESTATFAC Between 10 and 19) '+
                     '   AND (IO2.C_PROV IS NOT NULL)          '+
                     '   AND (IO2.ALBARA IS NOT NULL)          '+
                     '   AND (I.ESTAT = 46 OR I.ESTAT = 94)    '+
                     '   AND (IO2.PREUVENTA <> 0))             '+
                     '   AND (F.Bloqueig is null)              ';

   FiltrePteAporta = ' WHERE ((IO2.APORTACIOPACIENT = "S")         '+
                     '   AND  (IO2.C_ESTATFAC2 BETWEEN 10 AND 19)) '+
                     '   AND F.bloqueig is null                    ';

   FiltrePteEntrega= ' WHERE ((I.ESTAT < 46 or I.ESTAT = 213)) '+
                     '   AND (F.bloqueig is null)              ';

type
  TwFichaListOrtesis = class(TForm)
    Consulta: HYPanelConsulta;
    Panel: TPanel;
    bPendents: TSpeedButton;
    bPteMutua: TSpeedButton;
    bPteProv: TSpeedButton;
    bPteFactu: TSpeedButton;
    bHistoric: TSpeedButton;
    bPteAporta: TSpeedButton;
    SpeedButton7: TSpeedButton;
    bPteEntrega: TSpeedButton;
    bTotals: TSpeedButton;
    Panel1: TPanel;
    edFiltreData: THYTextEdit;
    pLlegenda: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanviaList(Sender: TObject);
    procedure ConsultaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure ConsultaAlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Query: TQuery);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ConsultaAlAfterPrint(Sender: TObject);
    procedure ConsultaAlBeforePrint(Sender: TObject);
    procedure bTotalsClick(Sender: TObject);
    procedure ConsultaConsultaGetSqlField(Sender: THYConsulta;
      var SqlField: String);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FormOrtesi: TwFichaOrtesis;  // parte 56828
  public
    procedure Iniciar(opcion: Integer = -1);
    { Public declarations }
  end;

var
  wFichaListOrtesis: TwFichaListOrtesis;

implementation

uses Data, DataInterCon, {FichaOrtesis,} DataOrtesis, Funciones, DataFactu,
  DataBasics, Funcions, Main;


{$R *.DFM}

Procedure TwFichaListOrtesis.Iniciar(opcion: Integer = -1);
begin
   edFiltreData.AsDate := DateServer - 365;
   CanviaList(bPendents);

   Panel.Left := Consulta.LastLeftButton;
   edFiltreData.Left := Panel.Left + Panel.Width + 30;
   pLlegenda.Left := edFiltreData.Left + edFiltreData.Width + 30;
end;

procedure TwFichaListOrtesis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TwFichaListOrtesis.CanviaList(Sender: TObject);
var i: Integer;
begin

{
     1. Pendents d'alguna cosa
     2. Pte. Mútua: Pendents autorització de mútua
     3. Pte. Prov: Sense data de comanda
     4. Pte. Factu: entregades pendents de facturar (10..19)
     5. Pte. Aporta: Aportació pacient pendent de facturar
     9. Històric: Tots
}

     if Consulta.Abierta then Consulta.Datos.Close;

     with (Sender as TSpeedButton) do
     begin
          Consulta.Titulo := 'Llistat Ortesis: ' + Caption;

          Consulta.SqlDicTotal.Clear;
          
          Consulta.SqlDicTotal.Add('select');
          Consulta.SqlDicTotal.Add('COUNT(*)                    as REGISTRES      ,');
          Consulta.SqlDicTotal.Add('SUM(PREUCOMPRA)             as SUM_PREU_COMPRA,');
          Consulta.SqlDicTotal.Add('SUM(PREUVENTA)              as SUM_PREU_VENTA ,');
          Consulta.SqlDicTotal.Add('SUM(PREU2)                  as SUM_PREU_APORTA,');
          Consulta.SqlDicTotal.Add('SUM(PREUCOMPRA - PREUVENTA) as SUM_DIFERENCIA'  );

          Consulta.SqlDicTotal.Add('from INTERCONORTESISLIN IO2');
          Consulta.SqlDicTotal.Add('join INTERCONORTESIS    IO1 on  IO2.C_INTERCON =  IO1.C_INTERCON');
          Consulta.SqlDicTotal.Add('join INTERCON           I   on  I.C_INTERCON   =  IO1.C_INTERCON');
          Consulta.SqlDicTotal.Add('join TRACTAMENTS        T   on  T.C_TRACTAMENT =  I.C_TRACTAMENT');
          Consulta.SqlDicTotal.Add('join FILIACIO           F   on  F.NUM_HIST     =  T.C_HISTORIA');
//-          Consulta.SqlDicTotal.Add('left outer join INTERCONORTESISREG IOR on I.C_INTERCON = IOR.C_INTERCON and IOR.TIPUS = 206');
          Consulta.SqlDicTotal.Add(''); // línia 11  - join interconortesisreg  NO
          Consulta.SqlDicTotal.Add(''); // línia 12  - filtre
          Consulta.SqlDicTotal.Add('[AND FILTRO]');

          Consulta.SqlDic[1] := CampsTots;

          Label2.Caption := 'Facturada (aportació)';
          CASE Tag OF
            1: begin
                 Consulta.SqlDic     [10] := FiltrePendents;
                 Consulta.SqlDicTotal[12] := FiltrePendents;
               end;
            2: begin
                 Consulta.SqlDic     [10] := FiltrepteMutua;
                 Consulta.SqlDicTotal[12] := FiltrepteMutua;
               end;
            3: begin
                 Consulta.SqlDic     [10] := FiltrePteProv;
                 Consulta.SqlDicTotal[12] := FiltrePteProv;
               end;
            4: begin
                 Consulta.SqlDic     [10] := FiltrePteFactu;
                 Consulta.SqlDicTotal[12] := FiltrePteFactu;
               end;
            5: begin
                 Consulta.SqlDic     [10] := FiltrePteAporta;
                 Consulta.SqlDicTotal[12] := FiltrePteAporta;
               end;
            6: begin
                 Consulta.SqlDic     [10] := FiltrePteEntrega;
                 Consulta.SqlDicTotal[12] := FiltrePteEntrega;
               end;
            // Històric
            else begin
                 Label2.Caption := 'Facturada (ortesi)';
                 Consulta.SqlDic     [10] := '';
                 Consulta.SqlDicTotal[12] := '';
            end;
          END;
          
          Consulta.SqlDic[12] := 'group by' + CampsAgrupa;

          if not bTotals.Down then Consulta.SqlDicTotal.Clear;

          Consulta.Filtros[0].Valor1 := edFiltreData.EditValue;

          Consulta.Execute('','');
          for i := 0 to Consulta.PanelGrid.Columns.Count-1 do
          begin
              if (Consulta.PanelGrid.Columns[i].FieldName = 'ESEASE') then Consulta.PanelGrid.Columns[i].Title.Caption := 'Centre (C=BCN)';
          end;
     end;
end;

procedure TwFichaListOrtesis.ConsultaAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
     Consulta.PanelGrid.Enabled := False;

     if not HiEs('wFichaOrtesis', Application.MainForm) then
     begin
         FormOrtesi := TwFichaOrtesis.Create(Application);
         FormOrtesi.Inicializa(Datos.FieldByName('C_Intercon'  ).AsInteger,
                               Datos.FieldByName('C_Ortesis'   ).AsString ,
                               Datos.FieldByName('C_OrtesisLin').AsInteger )
     end
     else begin
         ShowMessage('Ja existeix la fitxa d''Ortesis en curs!');
         Abort;
     end;
end;


procedure TwFichaListOrtesis.ConsultaAlPintarGrid(var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Query: TQuery);
begin

    ColorFont := clBlack;
    ColorBrush := clWhite;

    if (Query.FieldByName('ESTAT').AsInteger = 10) then ColorFont := clGray    // pendents validar cap clínic - obsolet
                                                   else ColorFont := clBlack;

    TRY
      // Pendents aportació pacient: Font rosa
      if (Query.FieldbyName('C_EstatFac2').AsInteger < 50) then ColorFont  := clFuchsia;
    EXCEPT
    END;

    // Històric
    if bHistoric.Down then
    begin
        // Facturats o facturats directament a proveïdor: Font blava
        if (Query.FieldbyName('EstatFac').AsInteger in [54,80]) then ColorFont  := clBlue;
    end
    // Registres pendents
    else begin
        TRY
          // Aportaciò pacient facturada: Font blava
          if (Query.FieldbyName('C_EstatFac2').AsInteger = 80) then ColorFont  := clBlue;
        EXCEPT
        END;
    end;

    // Pendent validació mèdica a l'entrega: Font taronja
    if (Query.FieldbyName('Estat').asInteger = 48) then ColorFont  := $000066CC;


    // Urgents: cel·la vermella
    if (UpperCase(Column.Field.FieldName) = 'URGENT') and (Column.Field.AsString = 'S') then
    begin
        ColorBrush := clRed;
        ColorFont  := clWhite;
    end

    // No té notes: cel·la groga
    else if (UpperCase(Column.Field.FieldName) = 'TENOTES') and (Column.Field.AsString = 'N') then
    begin
        ColorBrush := clYellow;
        ColorFont  := clBlack;
    end

    // Columnes aportació -> fons blau clar
    else if StrIn(Column.Field.FieldName, ['APORTACIO_PACIENT', 'APORTACIOPACIENT', 'C_ESTATFAC2', 'C_CENTREFAC2',
                                      'C_CLIENT2', 'C_DELEGA2', 'DATA_COBROPACIENT', 'ALBARAPACIENT'])
    then ColorBrush := $00FEF5E0

    // Columnes facturació client -> fons verd clar
    else if StrIn(Column.Field.FieldName, ['DATA_PETICIOMUTUA', 'DATA_CONFORMITATMUTUA', 'ESTATFAC', 'C_CENTREFAC', 'C_CLIENT', 'C_DELEGACIO'])
    then ColorBrush := $00E0FEEE

    // Columnes proveïdor -> fons groc clar
    else if StrIn(Column.Field.FieldName, ['C_PROV', 'DATA_COMANDA', 'DATA_ENTREGA', 'ALBARA'])
    then ColorBrush := $00E0FEFD;

    if (gdSelected  in State) then
    begin
        ColorFont := clYellow;
        ColorBrush := clNavy;
    end;
end;

procedure TwFichaListOrtesis.SpeedButton7Click(Sender: TObject);
begin
  Close;
end;

procedure TwFichaListOrtesis.ConsultaAlAfterPrint(Sender: TObject);
var
  i: Integer;
begin
    For i:= 0 to Consulta.PanelGrid.Columns.Count - 1 do
    begin
       if Consulta.PanelGrid.Columns[i].Visible = False
       then Consulta.PanelGrid.Columns[i].Visible := Pos(UpperCase(Consulta.PanelGrid.Columns[i].Field.FieldName), UpperCase(Consulta.CamposOculta.Text)) <> 0;
    end;

    Consulta.CamposOculta.Text := CamposOcultos;
end;

procedure TwFichaListOrtesis.ConsultaAlBeforePrint(Sender: TObject);
var
  i    : Integer;
  Texto: String;
begin
    Consulta.CamposOculta.Text := CamposOcultosPrint;

    For i:= 0 to Consulta.PanelGrid.Columns.Count - 1
    do Consulta.PanelGrid.Columns[i].Visible := Pos(UpperCase(Consulta.PanelGrid.Columns[i].Field.FieldName), UpperCase(Consulta.CamposOculta.Text)) = 0;
end;

procedure TwFichaListOrtesis.bTotalsClick(Sender: TObject);
begin
  if      bPendents.Down then CanviaList(bPendents)  
  else if bPteMutua.Down then CanviaList(bPteMutua)
  else if bPteProv.Down then CanviaList(bPteProv)
  else if bPteFactu.Down then CanviaList(bPteFactu)
  else if bPteAporta.Down then CanviaList(bPteAporta)
  else if bPteEntrega.Down then CanviaList(bPteEntrega)
  else if bHistoric.Down then CanviaList(bHistoric);
end;

procedure TwFichaListOrtesis.ConsultaConsultaGetSqlField(
  Sender: THYConsulta; var SqlField: String);
begin

    if StrIn(SQLField, ['C_CENTREFAC', 'DATA_PETICIOMUTUA', 'ESTATFAC', 'IVAVENTA', 'ALBARA', 'C_PROV', 'PREUVENTA' ,
                        'C_ORTESISLIN', 'PREU2', 'C_EstatFac2', 'Data_CobroPacient', 'ALBARAPACIENT', 'C_CENTREFAC2',
                        'C_CLIENT', 'C_DELEGA', 'Referencia2', 'Observacions', 'TeNotes', 'C_Intercon', 'C_ortesis', 'CODISERVEI'])
    then SQLField := 'IO2.'+SQLField

    else if StrIn(SQLField, ['C_grup', 'N_grup'])            then SQLField := 'IO1.'+SQLField
    else if StrIn(SQLField, ['URGENT', 'DATA1', 'C_Metge1']) then SQLField := 'I.'+SQLField
    else if StrIn(SQLField, ['NUM_HIST', 'NOMCOMPLET'])      then SQLField := 'F.'+SQLField
    else if StrIn(SQLField, ['DATA_FACTU'])                  then SQLField := 'FC.'+SQLField
    else if StrIn(SQLField, ['C_PRESTACIO', 'DATA_PREALTA']) then SQLField := 'T.'+SQLField
    else if StrIn(SQLField, ['N_ORTESIS'])                   then SQLField := 'CO.'+SQLField
    else if (SQLField = 'APORTACIO_PACIENT')                 then SQLField := 'IO2.PREU2'
    else if (SQLField = 'PREU_SCS')                          then SQLField := 'CO.PREUMAXIMSERVEI'

    else if (SQLField = 'DATA_ENTREGA') then
    begin
        SQLField := 'IOR.DATA';
        if bTotals.Down then
        begin
            ShowMessage('No es pot filtrar per data d''entrega amb el càlcul de Totals actiu');
            Abort;
        end;
    end;
end;


procedure TwFichaListOrtesis.FormCloseQuery(Sender: TObject; var CanClose: Boolean);  // parte 56828
begin
    if HiEs('wFichaOrtesis',Application.MainForm) then FormOrtesi.Close;  // obligar a tancar la fitxa per a que guardi trazacontrol
end;

end.



NOUS CANVIS:

=====================
      PTE.MUTUA
=====================
QUE EL CF <> 04 I Data_Conformitat IS NULL

ara
'(I.ESTAT between 10 and 11)
'AND (NOT IO2.ESTATFAC between 50 and 59)
'and (IO2.DATA_PETICIOMUTUA is not null)
'and (IO2.Data_ConformitatMUTUA is null) '

nou
//'(I.ESTAT between 10 and 11)
//'AND (NOT IO2.ESTATFAC between 50 and 59)
//'and (IO2.DATA_PETICIOMUTUA is not null)
'and (IO2.Data_ConformitatMUTUA is null) '
'and IO2.C_CentreFac <> "04"'

=====================
    PTE.FACTURAR
=====================
antes...
'AND (IO2.ESTATFAC BETWEEN 1 AND 49 ) ';

ahora...
//(QUE NO ESTIGUIN RETINGUTS)
'AND (ESTAT_FACTU Between 10 and 19)'
'AND C_PROV       IS NOT NULL'
'AND ALBARA       IS NOT NULL'
'AND DATA_ENTREGA IS NOT NULL'
'AND IVA_VENTA    <> 0'
'AND PREU_VENTA   <> 0'



=====================
     APORTACIO
=====================
antes...
'AND (NOT IO2.C_EstatFac2 BETWEEN 80 AND 89)'
'AND (NOT IO2.C_EstatFac2 between 50 and 59)'
'AND (AportacioPacient = "S"'
'and Data_CobroPacient is Null) '

ahora...
NOMES PTE DE FACTURAR, ESTAT=10
ELS PENDENTS DE COBRAR, O MIRAREM PER LA GESTIO DE COBRAMENTS.
'AND AportacioPacient = "S"'
'AND (C_ESTATFACTU2 BETWEEN 10 AND 19)'

=====================
 PTE.ENTREGA (NOU)
=====================
DATA_ENTREGA IS NULL
AND NOT ANULAT
(O FERHO PER ESTAT)

'AND IO2.DATA_ENTREGA IS NULL'
'AND (I.ESTAT NOT BETWEEN 80 AND 89)'


=====================
    PTE PROVEIDOR
=====================
NOMES PELS CF=04,
 APORTACIO SI, I FACTURADA
 NO TINGUI DATA DE COMANDA
 C_PROV ESTIGUI PLE.

' AND C_CENTREFAC = "04"'
' AND ((AportacioPacient = "S") AND (C_ESTATFAC2 BETWEEN 80 AND 89))'
' AND DATA_COMANDA IS NULL'
' AND ((NOT C_PROV IS NULL) AND  (C_PROV <> ""))'





