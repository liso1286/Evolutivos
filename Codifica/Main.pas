unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, Buttons, WS_COODE,
  ExtCtrls, IBCustomDataSet, IBQuery;

type
  TwMain = class(TForm)
    Panel1: TPanel;
    eDiagTest: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    gDiagI: TDBGrid;
    gDiagA: TDBGrid;
    gDiagsI: TDBGrid;
    gDiagsA: TDBGrid;
    edDies: TEdit;
    BitBtn1: TBitBtn;
    edVersioCIM: TEdit;
    cbGeneraXML: TCheckBox;
    edMinuts: TEdit;
    cbConfirma: TCheckBox;
    dsDiagI: TDataSource;
    dsDiagA: TDataSource;
    dsDiagsI: TDataSource;
    dsDiagsA: TDataSource;
    Timer1: TTimer;
    qDiagI: TIBQuery;
    qDiagsI: TIBQuery;
    qDiagA: TIBQuery;
    qDiagsA: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edMinutsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
  public
  end;

var
  wMain: TwMain;

implementation

uses Data, Funciones, DataCoode;

{$R *.dfm}



procedure TwMain.FormCreate(Sender: TObject);
begin
    Timer1.Interval := StrToInt(edMinuts.Text) * 60 * 1000;
end;


procedure TwMain.edMinutsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if (Key = VK_RETURN) then
    begin
        Timer1.Enabled := False;
        Timer1.Interval := StrToInt(edMinuts.Text) * 60 * 1000;
        Timer1.Enabled := True;
    end;
end;


procedure TwMain.Timer1Timer(Sender: TObject);
begin
    Timer1.Enabled := False;
    TRY
      BitBtn1.Click;
    FINALLY
      Timer1.Enabled := True;
    END;
end;


procedure TwMain.BitBtn1Click(Sender: TObject);
var
  diag_anterior: String;
  CodiICD: ArrayOfAshoCoodeResponse;
begin
//-    wData.Gdb.Open;

    qDiagI.Close;
    qDiagsI.Close;
    qDiagA.Close;
//    qDiagsA.Close;

    qDiagI.ParamByName ('x').AsDateTime := DateServer - StrToInt(edDies.Text);
    qDiagsI.ParamByName('x').AsDateTime := DateServer - StrToInt(edDies.Text);
    qDiagA.ParamByName ('x').AsDateTime := DateServer - StrToInt(edDies.Text);
//    qDiagsA.ParamByName('x').AsDateTime := DateServer - StrToInt(edDies.Text);

    qDiagI.Open;
    qDiagsI.Open;
    qDiagA.Open;
//    qDiagsA.Open;

    if cbConfirma.Checked and not AvisoNS('Seguir') then Exit;

    // DIAGNÒSTIC PRINCIPAL A L'INGRÉS
    diag_anterior := '';
    while not qDiagI.Eof do
    begin
      TRY
        // Tenim la llista ordenada alfabèticament;
        // Si canvia el diagnòstic, cridem el WS (altrament, posem el mateix codi que ens ha retornat l'anterior crida)
        if (diag_anterior <> Trim(qDiagI.FieldByName('N_DiagnosticIngres').AsString)) then
        begin
            CodiICD := Nil;
            CodiICD := wDataCoode.CridaCoode(Trim(qDiagI.FieldByName('N_DiagnosticIngres').AsString),
                                             'Diagnòstic',
                                             edversioCIM.Text,
                                             cbGeneraXML.Checked,
                                             qDiagI.FieldByName('C_Tractament').AsString + '_000');

            diag_anterior := Trim(qDiagI.FieldByName('N_DiagnosticIngres').AsString);
        end;

        if (CodiICD <> Nil) and (CodiICD[0].Code <> '') then
        begin
            GutExecute('update TRACTAMENTS ' +
                       'set C_DIAGNOSTICINGRES = "%s", CONFIANCADPI = %d, VERSIOCIM = "%s", ID_DPI = "%d" ' +
                       'where C_TRACTAMENT = %d ',
                       [CodiICD[0].Code,
                        CodiICD[0].Confidence,
                        edVersioCIM.Text,
                        CodiICD[0].Id,
                        qDiagI.FieldByName('C_Tractament').AsInteger]);
        end
        else begin
            GutExecute('update TRACTAMENTS set CONFIANCADPI = -1 where C_TRACTAMENT = %d ',
                       [qDiagI.FieldByName('C_Tractament').AsInteger]);
        end;

      EXCEPT
      END;
      qDiagI.Next;
    end;

    // DIAGNÒSTIC PRINCIPAL A L'ALTA
    diag_anterior := '';
    while not qDiagA.Eof do
    begin
      TRY
        // Tenim la llista ordenada alfabèticament;
        // Si canvia el diagnòstic, cridem el WS (altrament, posem el mateix codi que ens ha retornat l'anterior crida)
        if (diag_anterior <> Trim(qDiagA.FieldByName('N_DiagnosticAlta').AsString)) then
        begin
            CodiICD := Nil;
            CodiICD := wDataCoode.CridaCoode(Trim(qDiagA.FieldByName('N_DiagnosticAlta').AsString),
                                             'Diagnòstic',
                                             edversioCIM.Text,
                                             cbGeneraXML.Checked,
                                             qDiagA.FieldByName('C_Tractament').AsString + '_999');

            diag_anterior := Trim(qDiagA.FieldByName('N_DiagnosticAlta').AsString);
        end;

        if (CodiICD <> Nil) and (CodiICD[0].Code <> '') then
        begin
            GutExecute('update TRACTAMENTS ' +
                       'set C_DIAGNOSTICALTA = "%s", CONFIANCADPA = %d, VERSIOCIM = "%s", ID_DPA = "%d" ' +
                       'where C_TRACTAMENT = %d ',
                       [CodiICD[0].Code,
                        CodiICD[0].Confidence,
                        edVersioCIM.Text,
                        CodiICD[0].Id,
                        qDiagA.FieldByName('C_Tractament').AsInteger]);
        end
        else begin
            GutExecute('update TRACTAMENTS set CONFIANCADPA = -1 where C_TRACTAMENT = %d ',
                       [qDiagA.FieldByName('C_Tractament').AsInteger]);
        end;

      EXCEPT
      END;
      qDiagA.Next;
    end;

    // ALTRES DIAGNÒSTICS A L'INGRÉS
    diag_anterior := '';    
    while not qDiagsI.Eof do
    begin
      TRY
        // Tenim la llista ordenada alfabèticament;
        // Si canvia el diagnòstic, cridem el WS (altrament, posem el mateix codi que ens ha retornat l'anterior crida)
        if (diag_anterior <> Trim(qDiagsI.FieldByName('N_Diagnostic').AsString)) then
        begin
            CodiICD := Nil;
            CodiICD := wDataCoode.CridaCoode(Trim(qDiagsI.FieldByName('N_Diagnostic').AsString),
                                             'Diagnòstic',
                                             edversioCIM.Text,
                                             cbGeneraXML.Checked,
                                             qDiagsI.FieldByName('C_Tractament').AsString + '_' +
                                             JustificaC(qDiagsI.FieldByName('Ordre').AsString, 3, '0'));

            diag_anterior := Trim(qDiagsI.FieldByName('N_Diagnostic').AsString);
        end;

        if (CodiICD <> Nil) and (CodiICD[0].Code <> '') then
        begin
            GutExecute('update DIAGNOSTICS ' +
                       'set C_DIAGNOSTIC = "%s", CONFIANCA = %d, VERSIOCIM = "%s", ID_DIAGNOSTIC = "%d" ' +
                       'where C_TRACTAMENT = %d and ORDRE = %d and TIPUS = "I" ',
                       [CodiICD[0].Code,
                        CodiICD[0].Confidence,
                        edVersioCIM.Text,
                        CodiICD[0].Id,
                        qDiagsI.FieldByName('C_Tractament').AsInteger,
                        qDiagsI.FieldByName('Ordre').AsInteger]);
        end
        else begin
            GutExecute('update DIAGNOSTICS set CONFIANCA = -1 where C_TRACTAMENT = %d and ORDRE = %d and TIPUS = "I" ',
                       [qDiagsI.FieldByName('C_Tractament').AsInteger,
                        qDiagsI.FieldByName('Ordre').AsInteger]);
        end;
      EXCEPT
      END;
      qDiagsI.Next;
    end;

    {
    Els diagnostics a l'alta els codifica Asho a posteriori (per ara no ens cal tenir-ho immediatament)

    // ALTRES DIAGNÒSTICS A L'ALTA
    diag_anterior := '';
    while not qDiagsA.Eof do
    begin
      TRY
        // Tenim la llista ordenada alfabèticament;
        // Si canvia el diagnòstic, cridem el WS (altrament, posem el mateix codi que ens ha retornat l'anterior crida)
        if (diag_anterior <> Trim(qDiagsA.FieldByName('N_Diagnostic').AsString)) then
        begin
            CodiICD := Nil;
            CodiICD := wDataCoode.CridaCoode(Trim(qDiagsA.FieldByName('N_Diagnostic').AsString),
                                             'Diagnòstic',
                                             edversioCIM.Text,
                                             cbGeneraXML.Checked,
                                             qDiagsA.FieldByName('C_Tractament').AsString + '_' +
                                             JustificaC(qDiagsA.FieldByName('Ordre').AsString, 3, '0'));

            diag_anterior := Trim(qDiagsA.FieldByName('N_Diagnostic').AsString);
        end;

        if (CodiICD <> Nil) and (CodiICD[0].Code <> '') then
        begin
            GutExecute('update DIAGNOSTICS ' +
                       'set C_DIAGNOSTIC = "%s", CONFIANCA = %d, VERSIOCIM = "%s", ID_DIAGNOSTIC = "%d" ' +
                       'where C_TRACTAMENT = %d and ORDRE = %d and TIPUS = "A" ',
                       [CodiICD[0].Code,
                        CodiICD[0].Confidence,
                        edVersioCIM.Text,
                        CodiICD[0].Id,
                        qDiagsA.FieldByName('C_Tractament').AsInteger,
                        qDiagsA.FieldByName('Ordre').AsInteger]);
        end
        else begin
            GutExecute('update DIAGNOSTICS set CONFIANCA = -1 where C_TRACTAMENT = %d and ORDRE = %d and TIPUS = "A" ',
                       [qDiagsA.FieldByName('C_Tractament').AsInteger,
                        qDiagsA.FieldByName('Ordre').AsInteger]);
        end;
      EXCEPT
      END;
      qDiagsA.Next;
    end;
    }

    qDiagI.Close;
    qDiagsI.Close;
    qDiagA.Close;
//    qDiagsA.Close;
//    wData.Gdb.Close;
end;


procedure TwMain.Button1Click(Sender: TObject);
var
  CodiICD: ArrayOfAshoCoodeResponse;
begin
    CodiICD := wDataCoode.CridaCoodeOld(eDiagTest.Text, 'Diagnòstic',edversioCIM.Text,cbGeneraXML.Checked,'test');
     if (CodiICD <> Nil) and (CodiICD[0].Code <> '') then
     begin
        Memo1.lines.add('Coode:     '+CodiICD[0].Code+' '+CodiICD[0].codeDescription);
     end;
end;

procedure TwMain.Button2Click(Sender: TObject);
var
  CodiICD: ArrayOfAshoCoodeResponse;
begin
    CodiICD := wDataCoode.CridaCoode(eDiagTest.Text, 'Diagnòstic',edversioCIM.Text,cbGeneraXML.Checked,'test');
     if (CodiICD <> Nil) and (CodiICD[0].Code <> '') then
     begin
        Memo1.lines.add('CoodeBox:  '+CodiICD[0].Code+' '+CodiICD[0].codeDescription);
     end;
end;

end.





