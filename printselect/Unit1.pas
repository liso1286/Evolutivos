unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  printers,StdCtrls;



type

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    ListBox1: TListBox;
    Button3: TButton;
    ListBox2: TListBox;
    Button4: TButton;
{  ListBox1: TListBox;
  Button2: TButton;
  Button1: TButton;
  Label1: TLabel;
}
procedure Button2Click(Sender: TObject);
 procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
private
{ Private declarations }
public
{ Public declarations }
end;

var
  Form1: TForm1;
  defaultPrinter: integer;

implementation

uses unit3,utilinueva;

{$R *.DFM}

procedure TForm1.Button2Click(Sender: TObject);
var
  x : integer;
  milista:tstringlist;
begin
  milista:=tstringlist.create;
 getprinternames(milista);
  try
  for x := 0 to milista.Count -1 do begin
    If ListBox1.Selected[x] then
      begin
      if (SetPrinter(ListBox1.Items.Strings[x]))
      then label1.Caption := 'Impresora por defecto ' + ListBox1.Items.Strings[x]
      else label1.Caption := 'Error ';
    end;
  end;
  except
    label1.Caption := 'An error occured while setting the printer';
  end;
 milista.free;
end;





procedure TForm1.Button1Click(Sender: TObject);
var
milista:tstringlist;
begin
listbox1.Items.Clear;
milista:=tstringlist.create;
  GetPrinterNames(milista);
 if getosversion in [cOsWinNT,cOsWin2000,cOsWinXP] then
   Listbox1.Items.AddStrings(milista)
 ELSE  Listbox1.Items.AddStrings(printer.printers);
milista.free;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if not impresorapordefecto then showmessage('ha fallado');
end;

procedure TForm1.Button4Click(Sender: TObject);
var
mprint:tstringlist;
nprint:integer;
begin
mprint:=tstringlist.Create;
impresorasplanta('INFORMAT','PRUEBA2',mprint);
application.CreateForm(TQuickReport2,QuickReport2);
for nprint:=0 to mprint.Count -1 do
  begin
//  if SetPrinter(mprint.strings[nprint])then quickreport2.print
   if selectPrinterQr(quickreport2,mprint.strings[nprint])then
      quickreport2.print
  else showmessage('Error al intentar imprimir por '+mprint.strings[nprint]);
  end;
impresorapordefecto;
listbox2.Items:=mprint;
mprint.Free;
quickreport2.free;
end;

end.

