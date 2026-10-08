unit DialegIntroduccioPreusOrtesis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  HYEdit, StdCtrls, Buttons;

type
  TwDialegIntroduccioPreusOrtesis = class(TForm)
    GroupBox1: TGroupBox;
    edIvaVenta: THYTextEdit;
    GroupBox2: TGroupBox;
    edIvaCompra: THYTextEdit;
    edPreuVenta: THYTextEdit;
    edPreuCompra: THYTextEdit;
    edPreuMaxim: THYTextEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    edAportacioServei: THYTextEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure capturakeypress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
  public
    aportacio: Double;
    masc: String;
    indicador_farmacia: String;
  end;

var
  wDialegIntroduccioPreusOrtesis: TwDialegIntroduccioPreusOrtesis;

implementation

uses Data, Funciones;

{$R *.DFM}

procedure TwDialegIntroduccioPreusOrtesis.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TwDialegIntroduccioPreusOrtesis.FormCreate(Sender: TObject);
begin
   edIvaVenta.EditValue := '4';
end;

procedure TwDialegIntroduccioPreusOrtesis.capturakeypress(Sender: TObject; var Key: Char);
begin
   if Key = '.' then Key := DecimalSeparator;
end;

procedure TwDialegIntroduccioPreusOrtesis.Button1Click(Sender: TObject);
begin
    if (edIvaVenta.EditValue = '') then edIvaVenta.EditValue := edIvaCompra.EditValue;

    // només si el pacient NO està excempt d'aportació, restem aquesta del preu de compra
    if indicador_farmacia = 'TSI 001'
    then begin                                                                                     // PreuMaximServei         AportacioServei
        // si el pacient està exempt d'aportació, el preu serà el màxim entre (el preu compra) i (el preu màxim de la ortesis + preu aportació ortesis)
        if edPreuCompra.AsFloat < edPreuMaxim.AsFloat + edAportacioServei.AsFloat
        then edPreuVenta.EditValue := FormatFloat(masc, edPreuCompra.AsFloat)
        else edPreuVenta.EditValue := FormatFloat(masc, (edPreuMaxim.AsFloat + edAportacioServei.AsFloat)/(1 + edIvaVenta.AsFloat/100));
    end
    else edPreuVenta.EditValue := FormatFloat(masc, edPreuCompra.AsFloat - (aportacio/(1 + edIvaVenta.AsFloat/100)));
end;

end.
