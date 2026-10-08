unit Atesos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, HYDialogConsulta, StdCtrls, Buttons, HYEdit, ExtCtrls;

type
   TwAtesos = class(TForm)
    Panel1: TPanel;
    eInici: THYTextEdit;
    eFinal: THYTextEdit;
    bbLlistar: TBitBtn;
    pPacientsAtesos: HYPanelConsulta;
    Panel2: TPanel;
    Panel3: TPanel;
    pPrestacio: HYPanelConsulta;
    memofiltres: TMemo;
    Panel4: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbLlistarClick(Sender: TObject);
    procedure pPrestacioSeleccionar;
  private
    fPresta: string;
  public
    DonVe: Smallint;
    procedure Iniciar;
  end;

var
  wAtesos: TwAtesos;

implementation

{$R *.dfm}

uses Data;

procedure TwAtesos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TwAtesos.bbLlistarClick(Sender: TObject);
begin
  memoFiltres.Lines.Clear;
  memoFiltres.Lines.Add('FILTRES APLICATS:');

  if (eInici.asDatetime = 0) or (eFinal.asdatetime = 0) then FerError('És obligatori informar les dates inici i final del període a llistar.',True)
  else begin
    // 2/7/2014: es demana fecha_nac i edat calculada a final del període indicat
    if DonVe=1
    then pPacientsAtesos.SqlDic[0] := Format('Select distinct(f.num_hist),f.fecha_nac,("%s"-f.fecha_nac)/365 as edat_fi_periode,f.edat,   '+
                                             'f.codigo,f.pais,f.c_unitatmedica,f.c_origen,c.n_codi as origen,f.c_causa,c2.n_codi as causa,'+
                                             'f.c_causa_detall,c3.n_codi as causa_detall,f.um_antiga,f.sexo',
                                             [FormatDateTime('dd.mm.yyyy',eFinal.AsDateTime)]);
    pPacientsAtesos.SqlDic[8] := ' where ((t.data_ingres <= '''+FormatDateTime('dd.mm.yyyy',eFinal.AsDateTime)+
                               ''' and (t.data_alta >= '''+FormatDateTime('dd.mm.yyyy',eInici.AsDateTime)+''' or t.data_alta is null))';

    pPacientsAtesos.SqlDicTotal[5] := 'where ((t.data_ingres <= '''+FormatDateTime('dd.mm.yyyy',eFinal.AsDateTime)+
                               ''' and (t.data_alta >= '''+FormatDateTime('dd.mm.yyyy',eInici.AsDateTime)+''' or t.data_alta is null))';
    pPrestacioSeleccionar;
    pPacientsAtesos.SqlDic[9] := fPresta;
    pPacientsAtesos.SqlDicTotal[6] := fPresta;
    pPacientsAtesos.Execute('','');
  end;
end;

procedure TwAtesos.Iniciar;
begin
// 14.02.2008  ELENA DEMANA QUE TRAIEM EL FILTRE 'WHERE TIPUS <> 0'. AFEGEIXO EL CAMP TIPUS PER A QUE ELLA PUGUI TRIAR QUINS VOL I QUINS NO.
  pPacientsAtesos.VerSimple := not TeDretAcces([99]);
  pPrestacio.execute('','');
end;

procedure TwAtesos.pPrestacioSeleccionar;
var
  i: Integer;
begin
  if pPrestacio.PanelGrid.SelectedRows.Count <= 0 then fPresta := ')'
  else if pPrestacio.PanelGrid.SelectedRows.Count = 1 then
       begin
         fPresta := 'and (p.c_prestacio = "'+pPrestacio.datos.FieldByName('C_PRESTACIO').Value+'") )';
         memoFiltres.Lines.Add('Prestació: '+pPrestacio.datos.fieldbyname('n_prestacio').value);
       end
  else begin
    pPrestacio.Datos.Bookmark := pPrestacio.PanelGrid.SelectedRows[0];
    fPresta := 'and (p.c_prestacio in("'+pPrestacio.datos.FieldByName('C_PRESTACIO').Value+'"';
    memoFiltres.Lines.Add('Prestacions: '+pPrestacio.datos.fieldbyname('n_prestacio').value);

    for i := 1 to pPrestacio.PanelGrid.SelectedRows.Count - 1 do
    begin
       pPrestacio.Datos.Bookmark := pPrestacio.PanelGrid.SelectedRows[i];
       fPresta := fPresta + ',"'+ pPrestacio.datos.FieldByName('C_PRESTACIO').Value+'"';
       memoFiltres.Lines.Add('                    '+pPrestacio.datos.fieldbyname('n_prestacio').value);
    end;

    fPresta := fPresta +')) )';
  end;
  pPrestacio.PanelGrid.SelectedRows.Clear;
end;

end.
