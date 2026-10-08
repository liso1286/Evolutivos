unit uEquipAssistencial;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  HYDialogConsulta, Db, DBTables, DbGrids,QRCtrls, jpeg;

procedure Inicia(grid: TDBGrid);

implementation

uses Data, Funciones, PrintRtfLogo, PrintEquipAssistencial, utili16;


procedure Inicia(grid: TDBGrid);
var
  impressio: Boolean;
  canvia_impresora: Boolean;
  planta,impresora: string;
  Impressores: TStringList;
  i: Integer;
begin

  impressio := AvisoSN('Imprimir directament?');
  TRY grid.DataSource.DataSet.First; EXCEPT END;
  if grid.DataSource.DataSet.Eof then ShowMessage('Heu de seleccionar alguna història');
  canvia_impresora := false;

  try

    //Si se imprimeix desde les unitats
    if grid.DataSource.DataSet.FieldByName('C_PRESTACIO').AsString = '1004' then
    begin
        canvia_impresora := true;

        planta := '';
        if      TeDretAcces([181]) then planta := 'UH-1'
        else if TeDretAcces([182]) then planta := 'UH-2'
        else if TeDretAcces([183]) then planta := 'UH-3'
        else if TeDretAcces([184]) then planta := 'UH-4'
        else if TeDretAcces([185]) then planta := 'UH-5'
        else if TeDretAcces([186]) then planta := 'UH-6'
        else FerError('No té impressora a color assignada.');

    Impressores := TStringList.Create;
        try
          impresorasplanta(planta, 'EQUIP_ASSIST', Impressores);
          for i:=0 to Impressores.Count - 1 do impresora:=Impressores.Strings[i];
        finally
            Impressores.Free;
        end;
    end;

    while not grid.DataSource.DataSet.Eof do
    begin

      if not grid.DataSource.DataSet.FieldByName('C_HISTORIA').IsNull
      then begin
          with TwPrintEquipAssistencial.Create(Application) do
          try
             if impresora<>'' then selectPrinterQr(Qr,impresora);
              ImprimirEquipAssist(grid.DataSource.DataSet.FieldByName('C_TRACTAMENT').AsInteger, impressio);
          finally
           Free;
          end;
      end;
      grid.DataSource.DataSet.Next;
    end;

  finally
    if (canvia_impresora) then
    begin
 {     if not NT7OK or not INFORMATICA_OK or not impresorapordefecto
      then FerError('No s''ha pogut posar la impressora per defecte.' + NLine + 'Actualitzeu-la manualment o aviseu a INFORMÀTICA'); }
    end

  end;

end;

end.

