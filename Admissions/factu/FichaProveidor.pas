unit FichaProveidor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, HYSql, ExtCtrls, HYPanels, StdCtrls, DBCtrls, HYEdit,
  ComCtrls, HYDialogConsulta, Grids, DBGrids, HYGrids, HYLabel, Variants;

type
  TwFichaProveidor = class(TForm)
    Prov: THYSqlTable;
    Prov_C_Prov: TStringField;
    Prov_N_Prov: TStringField;
    Prov_Direccio: TStringField;
    Prov_Poblacio: TStringField;
    Prov_CPostal: TStringField;
    Prov_Cif: TStringField;
    Prov_Telefon: TStringField;
    Prov_Rappel: TFloatField;
    Prov_SN: TStringField;
    Prov_C_Banc: TStringField;
    Prov_N_Banc: TStringField;
    Prov_Dir_Banc: TStringField;
    Prov_Pob_Banc: TStringField;
    Prov_CP_Banc: TStringField;
    Prov_C_Agencia: TStringField;
    Prov_DC: TStringField;
    Prov_Compte: TStringField;
    Prov_ProvaEsp: TStringField;
    Prov_Ortesis: TStringField;
    dsProv: TDataSource;
    HYBarra1: THYBarra;
    HYArea1: THYArea;
    Ed_Prov_C_Prov: THYEdit;
    Ed_Prov_N_Prov: THYEdit;
    Ed_Prov_Cif: THYEdit;
    Ed_Prov_Rappel: THYEdit;
    Check_Prov_SN: THYCheck;
    Check_Prov_ProvaEsp: THYCheck;
    Check_Prov_Ortesis: THYCheck;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    HYArea2: THYArea;
    HYEdit3: THYEdit;
    HYEdit4: THYEdit;
    HYEdit5: THYEdit;
    HYEdit7: THYEdit;
    HYArea3: THYArea;
    HYEdit25: THYEdit;
    HYEdit26: THYEdit;
    HYEdit27: THYEdit;
    HYEdit28: THYEdit;
    HYEdit29: THYEdit;
    HYEdit30: THYEdit;
    HYEdit31: THYEdit;
    HYEdit32: THYEdit;
    TabSheet3: TTabSheet;
    TarifaProvaEsp: THYSqlBrowse;
    TarifaProvaEsp_C_Prov: TStringField;
    TarifaProvaEsp_C_ProvaEsp: TStringField;
    TarifaProvaEsp_Preu: TFloatField;
    TarifaProvaEsp_C0_0: TStringField;
    TarifaProvaEsp_C0_1: TStringField;
    TarifaProvaEsp_C0_2: TStringField;
    TarifaProvaEsp_C0_3: TFloatField;
    TarifaProvaEsp_C0_4: TStringField;
    TarifaProvaEsp_C0_5: TStringField;
    TarifaProvaEsp_C0_6: TStringField;
    TarifaProvaEsp_C0_7: TStringField;
    TarifaProvaEsp_C1_0: TStringField;
    TarifaProvaEsp_C1_1: TStringField;
    TarifaProvaEsp_C1_2: TStringField;
    TarifaProvaEsp_C1_3: TStringField;
    HYGrid1: THYGrid;
    dsProvEsp: TDataSource;
    HYBarra2: THYBarra;
    HYEdit1: THYEdit;
    HYCheck1: THYCheck;
    Label1: TLabel;
    Prov_RappelOrtesi: TStringField;
    Prov_PerRappelOrtesi: TFloatField;
    Prov_RappelProvaEsp: TStringField;
    Prov_PerRappelProvaEsp: TFloatField;
    Prov_Nacionalidad: TSmallintField;
    Ed_Prov_Nacionalidad: THYEdit;
    Eti_Prov_Prov_N_Codi: THYLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    HYCheck2: THYCheck;
    Prov_Ambulancia: TStringField;
    Prov_IvaExempt: TStringField;
    Ed_Prov_IvaExempt: THYEdit;
    HYEdit2: THYEdit;
    Prov_IvaExempt2: TStringField;
    Prov_C0_0: TSmallintField;
    Prov_C0_1: TStringField;
    Prov_C0_2: TSmallintField;
    Prov_C0_3: TStringField;
    Prov_C0_4: TStringField;
    Prov_C0_5: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CProvReadOnlyOrNot(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Init(Proveidor:String = '');
  end;

var
  wFichaProveidor: TwFichaProveidor;

implementation

uses Data, DataFactu, DataInterCon;

{$R *.DFM}

procedure TwFichaProveidor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TwFichaProveidor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     CanClose := Prov.PuedeCerrar and TarifaProvaEsp.PuedeCerrar;
end;

procedure TwFichaProveidor.Init(Proveidor: String = '');
begin
   if TeDretAcces([151],False,False)
   then TarifaProvaEsp.FieldByName('Preu').ReadOnly := False
   else TarifaProvaEsp.FieldByName('Preu').ReadOnly := True;

   If Proveidor = '' then
   begin
     Prov.Open;
     TarifaProvaEsp.Open;
   end
   else
   begin
     Prov.Open;
     Prov.FindKey(VarArrayof([Proveidor]));
     TarifaProvaEsp.Open;
   end;
end;

procedure TwFichaProveidor.CProvReadOnlyOrNot(DataSet: TDataSet);
begin
    Ed_Prov_C_Prov.ReadOnly := DataSet.State <> dsInsert;
end;

end.
