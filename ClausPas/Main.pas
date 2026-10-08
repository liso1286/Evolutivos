unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvButton, JvTransparentButton, StdCtrls, Buttons,
  ToolWin, ComCtrls, TaskBar, DB, DBTables, HYSql, QRCtrls, QuickRpt,
  ExtCtrls;

type
  TwMain = class(TForm)
    tbSortir: TJvTransparentButton;
    Label1: TLabel;
    tbAlta: TJvTransparentButton;
    Label3: TLabel;
    lUserActiu: TLabel;
    GdbInf: THyGdb;
    tbBaixaReact: TJvTransparentButton;
    Metge: TQuery;
    ScrollBox1: TScrollBox;
    qrClau: TQuickRep;
    QRBand1: TQRBand;
    LbTitol: TQRLabel;
    QRBand2: TQRBand;
    lbClaudePas: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRMemo2: TQRMemo;
    QRLabel4: TQRLabel;
    claupas: TQRLabel;
    MetgeCODI: TStringField;
    MetgeMETGE: TStringField;
    MetgeNOMSENCER: TStringField;
    MetgeCLAUPAS: TStringField;
    MetgeEMAIL: TStringField;
    MetgeEMAIL_CLAU: TStringField;
    tbLlistat: TJvTransparentButton;
    lListBaixes: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lProves: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tbSortirClick(Sender: TObject);
    procedure lUserActiuClick(Sender: TObject);
    procedure tbAltaClick(Sender: TObject);
    procedure tbLlistatClick(Sender: TObject);
    procedure tbBaixaReactClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ImprimirClau(codi:String);
  end;

var
  wMain: TwMain;

  procedure CrearParteInformatica(motiu: TMemo);

implementation

uses Funciones, Funcions, Data, FitxaAltaClau, FitxaBaixaClau, ListBaixes, FitxaBaixaClauNew;

{$R *.dfm}

procedure TwMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TwMain.FormCreate(Sender: TObject);
begin
  tbLlistat.Visible   := TeDretAcces([109]);
  lListBaixes.Visible := tbLlistat.Visible;
  
  wData.UsuariActiu   := PreguntaMetgePlus;
  lUserActiu.Caption  := 'Usuari actiu: '+ wData.UsuariActiu.NomSencer;
  lProves.Visible     := wData.ES_PROVA;
end;

procedure TwMain.tbSortirClick(Sender: TObject);
begin
  if AvisoSN('Vols sortir del programa (S/N)?') then Close;
end;

procedure TwMain.lUserActiuClick(Sender: TObject);
begin
  wData.UsuariActiu := PreguntaMetgePlus;
  if wData.UsuariActiu.Codi = '' then Exit;
  lUserActiu.Caption := 'Usuari actiu: '+ wData.UsuariActiu.NomSencer;

  if not TeDretMetge(wData.UsuariActiu.Codi, [110]) then
  begin
      FerError(Error1);
      Close;
  end;
end;

procedure TwMain.tbAltaClick(Sender: TObject);
begin
  WaitON('Obrint formulari d''alta . . .');
  if not HiEs('wFitxaAltaClau', Application.MainForm) then CrearForm(TwFitxaAltaClau)
  else begin
      ShowMessage('Ja existeix el formulari de nova clau. No es pot obrir dues vegades.');
      Abort;
  end;
  WaitOff();
end;

procedure CrearParteInformatica(motiu: TMemo);
var
  session_token: String;
begin
  if wData.ES_PROVA then ShowMessage('Es crearà parte a informàtica a Real. Motiu: '+motiu.Text)
  else begin
    session_token := wData.GetTokenGlpi;
    if (session_token <> '') then wData.CreaIncidenciaGlpi(session_token, 'CLAUS DE PAS', motiu.Lines.Text, '1')
                             else FerError('No s''ha pogut iniciar sessió al GLPI', True);
  end;
end;

{procedure TwMain.tbReactivaClick(Sender: TObject);
begin
//  TeDretAcces([109],True);
  WaitON('Obrint formulari de reactivació de claus . . .');
  if not HiEs('wFitxaReactivaClau', Application.MainForm) then CrearForm(TwFitxaReactivaClau)
  else begin
      ShowMessage('Ja existeix el formulari de reactivació de claus. No es pot obrir dues vegades.');
      Abort;
  end;
  WaitOff();
end;}

procedure TwMain.ImprimirClau(codi:String);
var
  claucurta: String;
begin
  Metge.Close;
  Metge.ParamByName('codi').asstring:= codi;
  Metge.Open;

  lbTitol.Caption := 'CLAU DE PAS DE '+ Metge.FieldByName('NOMSENCER').AsString;

  claucurta := DesxifraBF(Metge.FieldByName('ClauPas').AsString);
  claupas.Caption := claucurta;

//  claucurta := copy(claucurta,1,len(claucurta)-3);  PARTE 46834
  claucurta := copy(claucurta,1,5);  

  lbClaudePas.Caption := codi+claucurta;

  if wData.ES_PROVA then qrClau.Preview  else qrClau.Print;
end;

procedure TwMain.tbLlistatClick(Sender: TObject);
begin
  TeDretAcces([109],True);
  WaitON('Obrint formulari de consulta de baixes . . .');
  if not HiEs('wListBaixes', Application.MainForm) then CrearForm(TwListBaixes)
  else begin
      ShowMessage('Ja existeix el formulari de consulta de baixes. No es pot obrir dues vegades.');
      Abort;
  end;
  WaitOff();
end;

procedure TwMain.tbBaixaReactClick(Sender: TObject);
begin
  WaitON('Obrint formulari per donar de baixa/reactivar claus de pas . . .');
  if not HiEs('wFitxaBaixaClauNew', Application.MainForm) then CrearForm(TwFitxaBaixaClauNew)
  else begin
      ShowMessage('Ja existeix el formulari per donar de baixa/reactivar claus de pas. No es pot obrir dues vegades.');
      Abort;
  end;
  WaitOff();
end;

end.
