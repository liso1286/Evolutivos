unit Tractaments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, HYEdit, ExtCtrls, HYDialogConsulta, StdCtrls, DB, DBTables,
  Grids, DBGrids, HYGrids, Buttons;

type
  TwTractaments = class(TForm)
    pfiltres: TPanel;
    rgData: TRadioGroup;
    pTractaments: HYPanelConsulta;
    pPrestacio: HYPanelConsulta;
    Panel3: TPanel;
    eInici: THYTextEdit;
    eFinal: THYTextEdit;
    Panel4: TPanel;
    bbLlistar: TBitBtn;
    Panel5: TPanel;
    memoFiltres: TMemo;
    Panel1: TPanel;
    cbDC: TCheckBox;
    cbLM: TCheckBox;
    cbP: TCheckBox;
    cbAltresLM: TCheckBox;
    cbAltres: TCheckBox;
    cbTotes: TCheckBox;
    Label2: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bbLlistarClick(Sender: TObject);
    procedure pPrestacioSeleccionar;
    procedure pPrestacioConsultaGetSqlField(Sender: THYConsulta;
      var SqlField: String);
    procedure pTractamentsConsultaGetSqlField(Sender: THYConsulta;
      var SqlField: String);
    procedure cbDCClick(Sender: TObject);
  private
    fData, fPresta, fUM :string;
  public
    { Public declarations }
  end;

var
  wTractaments: TwTractaments;

implementation

{$R *.dfm}

uses Data;

procedure TwTractaments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TwTractaments.FormCreate(Sender: TObject);
begin
  pPrestacio.Execute('','');
end;

procedure TwTractaments.bbLlistarClick(Sender: TObject);
var
  fUM_bool: boolean;
begin
  memoFiltres.lines.Clear;
  memoFiltres.Lines.Add('FILTRES EFECTUATS:');

  if (eInici.AsDateTime = 0) or (eFinal.AsDateTime = 0) then FerError('Cal que informeu les dates inici i final del període a llistar.',True);

  case rgData.ItemIndex of
    // data ingrés dins del període
    0: begin
         fData:='and (data_ingres between '''+FormatDateTime('dd.mm.yyyy',eInici.AsDateTime)+''' and  '''+
                FormatDateTime('dd.mm.yyyy',eFinal.AsDateTime)+''')';
         memoFiltres.Lines.Add('Data d''ingrés entre '+eInici.EditValue+' i '+eFinal.EditValue);
       end;
    // data d'alta dins del període
    1: begin
         fData:='and (data_alta between '''+FormatDateTime('dd.mm.yyyy',eInici.AsDateTime)+''' and  '''+
                FormatDateTime('dd.mm.yyyy',eFinal.AsDateTime)+''')';
         memoFiltres.Lines.Add('Data d''alta entre '+eInici.EditValue+' i '+eFinal.EditValue);
       end;
    // data ingrés <= final període i data alta nul·la o posterior a la data d'ingrés
    2: begin
         fData:='and (t.data_ingres <= '''+FormatDateTime('dd.mm.yyyy',eFinal.AsDateTime)+''' and (t.data_alta >= '''+
                FormatDateTime('dd.mm.yyyy',eInici.AsDateTime)+''' or t.data_alta is null))';
         memoFiltres.Lines.Add('Atesos entre '+eInici.EditValue+' i ' +eFinal.EditValue);
       end;
    else FerError('Cal que indiqueu de quina manera es volen llistar les dades (per data d''ingrés, d''alta o per pacients atesos)',True);
  end;

  pPrestacioSeleccionar;

  // filtre unitats mèdiques
  if cbTotes.Checked then fUM := ''
  else begin
      if cbDC.Checked or cbP.Checked or cbAltres.Checked or cbLM.Checked or cbAltresLM.Checked then
      begin
        fUM:='and f.c_unitatmedica in (';
        fUM_bool := false;
        if cbDC.Checked then
        begin
          fUM_bool := true;
          fUM := fUM+'10,13,14,15,16,17,18,19';
          memoFiltres.Lines.Add('Dany cerebral: 10, 13 a 19');
        end;
        if cbP.Checked then
        begin
          if fUM_bool then fUM := fUM + ',';
          fUM:= fUM+'11,12,20,21,22';
          memoFiltres.Lines.Add('Progressives: 11,12,20 a 22');
        end;
        if cbAltres.Checked then
        begin
          if fUM_bool then fUM := fUM + ',';
          fUM:= fUM+'23';
          memoFiltres.Lines.Add('Altres DC: 23');
        end;
        if cbLM.Checked then
        begin
          if fUM_bool then fUM := fUM + ',';
          fUM:= fUM+'1,2,3,4';
          memoFiltres.Lines.Add('Lesió medul·lar: 1 a 4');
        end;
        if cbAltresLM.Checked then
        begin
          if fUM_bool then fUM := fUM + ',';
          fUM:= fUM+'5,6,7,8,9';
          memoFiltres.Lines.Add('Altres LM: 5 a 9');
        end;
        fUM:=fUM+') ';
      end;
  end;

  pTractaments.SqlDic[23] := fData;   pTractaments.SqlDicTotal[6] := fData;
  pTractaments.SqlDic[24] := fPresta; pTractaments.SqlDicTotal[7] := fPresta;
  pTractaments.SqlDic[25] := fUM;     pTractaments.SqlDicTotal[8] := fUM;

  pTractaments.Execute('','');
end;

procedure TwTractaments.pPrestacioSeleccionar;
var
  i: Integer;
begin
  if pPrestacio.PanelGrid.SelectedRows.Count <= 0 then fPresta := ''
  else if pPrestacio.PanelGrid.SelectedRows.Count = 1 then
       begin
         fPresta := 'and p.c_prestacio = '+pPrestacio.datos.FieldByName('C_PRESTACIO').Value;
         memoFiltres.Lines.Add('Prestació: '+pPrestacio.datos.fieldbyname('n_prestacio').value);
       end
  else begin
    pPrestacio.Datos.Bookmark := pPrestacio.PanelGrid.SelectedRows[0];
    fPresta := 'and p.c_prestacio in ('+pPrestacio.datos.FieldByName('C_PRESTACIO').Value;
    memoFiltres.Lines.Add('Prestacions: '+pPrestacio.datos.fieldbyname('n_prestacio').value);

    for i := 1 to pPrestacio.PanelGrid.SelectedRows.Count - 1 do
    begin
       pPrestacio.Datos.Bookmark := pPrestacio.PanelGrid.SelectedRows[i];
       fPresta := fPresta + ','+ pPrestacio.datos.FieldByName('C_PRESTACIO').Value;
       memoFiltres.Lines.Add('                    '+pPrestacio.datos.fieldbyname('n_prestacio').value);
    end;

    fPresta := fPresta +')';
  end;
  pPrestacio.PanelGrid.SelectedRows.Clear;
end;

procedure TwTractaments.pPrestacioConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
begin
  if UpperCase(SqlField) = 'CENTRE' then SqlField := 'ESEASE'
end;

procedure TwTractaments.pTractamentsConsultaGetSqlField(Sender: THYConsulta; var SqlField: String);
begin
  if (UpperCase(SqlField) = 'ORIGEN')
  or (UpperCase(SqlField) = 'MOTIU')
  or (UpperCase(SqlField) = 'DESCRIPCIO_ICD_DIAG_PRINCIPAL')
  or (UpperCase(SqlField) = 'CAUSA_DETALL')
  or (UpperCase(SqlField) = 'FACILITADOR')
  then Abort;
end;

procedure TwTractaments.cbDCClick(Sender: TObject);
begin
    if TCheckBox(Sender).Checked then cbTotes.Checked := False;
end;

end.
