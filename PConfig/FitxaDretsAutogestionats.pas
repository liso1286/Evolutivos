unit FitxaDretsAutogestionats;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, HYSql, StdCtrls, FileCtrl, FlCtrlEx, Grids,
  DBGrids, HYGrids, ExtCtrls, ComCtrls, HYDialogConsulta;

type
  TwFitxaDretsAutogestionats = class(TForm)
    dsDretsAutogestionats: TDataSource;
    bDretsAutogestionats: THYSqlBrowse;
    bDretsAutogestionats_C_DRET: TStringField;
    HYBarra1: THYBarra;
    HYGrid1: THYGrid;
    bDretsAutogestionats_C0_0: TStringField;
    bDretsAutogestionats_C0_1: TStringField;
    bDretsAutogestionats_C0_2: TStringField;
    cDret: THYConsulta;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure bDretsAutogestionatsAlConsultarCampoFiltro2(Sender: TObject;
      var Personalizada: Boolean; NombreConsulta: String;
      var SubFiltro: String; CampoDb: String; ValueDb: Variant);
    procedure cDretAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wFitxaDretsAutogestionats: TwFitxaDretsAutogestionats;

implementation

{$R *.dfm}

procedure TwFitxaDretsAutogestionats.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TwFitxaDretsAutogestionats.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    CanClose := bDretsAutogestionats.PuedeCerrar;
end;

procedure TwFitxaDretsAutogestionats.FormCreate(Sender: TObject);
begin
    bDretsAutogestionats.Open;
end;

procedure TwFitxaDretsAutogestionats.bDretsAutogestionatsAlConsultarCampoFiltro2(
  Sender: TObject; var Personalizada: Boolean; NombreConsulta: String;
  var SubFiltro: String; CampoDb: String; ValueDb: Variant);
begin
    Personalizada := false;
    if NombreConsulta = 'Dret' then
    begin
        Personalizada := True;
        cDret.ExecuteModal('','');
    end;
end;

procedure TwFitxaDretsAutogestionats.cDretAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if bDretsAutogestionats.State <> dsInsert then bDretsAutogestionats.Insert;
  bDretsAutogestionats.FieldByName('C_Dret').AsString := Datos.FieldByName('C_Dret').AsString;
end;

end.
