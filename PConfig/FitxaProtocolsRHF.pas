unit FitxaProtocolsRHF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, HYSql, Grids, DBGrids, HYGrids, ExtCtrls, ComCtrls,
  HYPanels, StdCtrls, DBCtrls, HYLabel, HYEdit;

type
  TwFitxaProtocolsRHF = class(TForm)
    brwPerfils: THYSqlBrowse;
    dsPerfils: TDataSource;
    brwProtocols: THYSqlBrowse;
    dsProtocols: TDataSource;
    brwItems: THYSqlBrowse;
    dsItems: TDataSource;
    brwPerfils_C_Patologia: TIntegerField;
    brwPerfils_N_Patologia: TStringField;
    brwProtocols_ID_Protocol: TIntegerField;
    brwProtocols_C_Patologia: TIntegerField;
    brwProtocols_C_Protocol: TStringField;
    brwProtocols_N_Protocol: TStringField;
    brwItems_ID_Protocol: TIntegerField;
    brwItems_Subordre: TIntegerField;
    brwItems_C_Item: TIntegerField;
    brwItems_N_Item: TStringField;
    brwProtocols_C0_0: TIntegerField;
    brwProtocols_C0_1: TStringField;
    brwItems_C0_0: TStringField;
    brwItems_C0_1: TStringField;
    brwItems_C0_2: TIntegerField;
    brwItems_C0_3: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    HYBarra1: THYBarra;
    HYGrid1: THYGrid;
    HYBarra2: THYBarra;
    HYGrid2: THYGrid;
    HYBarra3: THYBarra;
    HYGrid3: THYGrid;
    brwProtocolsNR: THYSqlBrowse;
    dsProtocolsNR: TDataSource;
    brwProtocolsNR_ID: TIntegerField;
    brwProtocolsNR_C_Motiu: TSmallintField;
    brwProtocolsNR_C_CentreFac: TStringField;
    brwProtocolsNR_Protocol: TStringField;
    brwProtocolsNR_Inicial5D: TSmallintField;
    brwProtocolsNR_Maxim5D: TSmallintField;
    brwProtocolsNR_Inicial4D: TSmallintField;
    brwProtocolsNR_Maxim4D: TSmallintField;
    brwProtocolsNR_Inicial3D: TSmallintField;
    brwProtocolsNR_Maxim3D: TSmallintField;
    brwProtocolsNR_Inicial2D: TSmallintField;
    brwProtocolsNR_Maxim2D: TSmallintField;
    brwProtocolsNR_Inicial1D: TSmallintField;
    brwProtocolsNR_Maxim1D: TSmallintField;
    brwProtocolsNR_DuradaMax: TIntegerField;
    brwProtocolsNR_DuradaFixa: TStringField;
    Panel1: TPanel;
    HYBarra4: THYBarra;
    HYGrid4: THYGrid;
    HYArea1: THYArea;
    Eti_brwProtocolsNR_centrefac_N_CentreFac: THYLabel;
    Eti_brwProtocolsNR_motiu_N_Codi: THYLabel;
    Ed_brwProtocolsNR_ID: THYEdit;
    Ed_brwProtocolsNR_C_Motiu: THYEdit;
    Ed_brwProtocolsNR_C_CentreFac: THYEdit;
    Ed_brwProtocolsNR_Protocol: THYEdit;
    Ed_brwProtocolsNR_Inicial5D: THYEdit;
    Ed_brwProtocolsNR_Maxim5D: THYEdit;
    Ed_brwProtocolsNR_Inicial4D: THYEdit;
    Ed_brwProtocolsNR_Maxim4D: THYEdit;
    Ed_brwProtocolsNR_Inicial3D: THYEdit;
    Ed_brwProtocolsNR_Maxim3D: THYEdit;
    Ed_brwProtocolsNR_Inicial2D: THYEdit;
    Ed_brwProtocolsNR_Maxim2D: THYEdit;
    Ed_brwProtocolsNR_Inicial1D: THYEdit;
    Ed_brwProtocolsNR_Maxim1D: THYEdit;
    Ed_brwProtocolsNR_DuradaMax: THYEdit;
    Check_brwProtocolsNR_DuradaFixa: THYCheck;
    PerfilsNR: THYSqlBrowse;
    PerfilsNR_C_Perfil: TSmallintField;
    PerfilsNR_N_Perfil: TStringField;
    PerfilsNR_Durada: TSmallintField;
    dsPerfilNR: TDataSource;
    UMPerfilNR: THYSqlBrowse;
    UMPerfilNR_C_UnitatMedica: TSmallintField;
    UMPerfilNR_Severitat: TSmallintField;
    UMPerfilNR_C_Perfil: TSmallintField;
    dsUMPerfilNR: TDataSource;
    SeveritatUM: THYSqlBrowse;
    dsSeveritatUM: TDataSource;
    SeveritatUM_C_UnitatMedica: TSmallintField;
    SeveritatUM_C_Severitat: TSmallintField;
    SeveritatUM_N_Severitat: TStringField;
    UnitatM: THYSqlBrowse;
    UnitatM_C_UNITATM: TSmallintField;
    UnitatM_N_UNITATM: TStringField;
    UnitatM_C_UNITATA: TSmallintField;
    UnitatM_C_UNITATRM: TSmallintField;
    UnitatM_BAIXA: TStringField;
    UnitatM_C_GRUP: TStringField;
    UnitatM_N_GRUP: TStringField;
    UnitatM_Diagnostic_UM: TSmallintField;
    UnitatM_Lesio_REC: TSmallintField;
    dsUnitatM: TDataSource;
    Panel3: TPanel;
    Panel2: TPanel;
    HYBarra5: THYBarra;
    HYGrid5: THYGrid;
    Panel4: TPanel;
    HYBarra6: THYBarra;
    HYGrid6: THYGrid;
    brwProtocolsNR_C0_0: TSmallintField;
    brwProtocolsNR_C0_1: TStringField;
    brwProtocolsNR_C0_2: TSmallintField;
    brwProtocolsNR_C0_3: TStringField;
    brwProtocolsNR_C0_4: TStringField;
    brwProtocolsNR_C0_5: TStringField;
    brwProtocolsNR_C1_0: TStringField;
    brwProtocolsNR_C1_1: TStringField;
    brwProtocolsNR_C1_2: TStringField;
    UMPerfilNR_C0_0: TSmallintField;
    UMPerfilNR_C0_1: TStringField;
    UMPerfilNR_C0_2: TSmallintField;
    UMPerfilNR_C0_3: TSmallintField;
    UMPerfilNR_C0_4: TStringField;
    UMPerfilNR_C0_5: TStringField;
    UMPerfilNR_C0_6: TSmallintField;
    UMPerfilNR_C1_0: TSmallintField;
    UMPerfilNR_C1_1: TStringField;
    UMPerfilNR_C1_2: TSmallintField;
    UnitatM_C0_0: TSmallintField;
    UnitatM_C0_1: TStringField;
    UnitatM_C0_2: TSmallintField;
    UnitatM_C0_3: TStringField;
    UnitatM_C0_4: TStringField;
    UnitatM_C0_5: TStringField;
    UnitatM_C1_0: TSmallintField;
    UnitatM_C1_1: TStringField;
    SeveritatUM_C0_0: TSmallintField;
    SeveritatUM_C0_1: TStringField;
    SeveritatUM_C0_2: TSmallintField;
    SeveritatUM_C0_3: TSmallintField;
    SeveritatUM_C0_4: TStringField;
    SeveritatUM_C0_5: TStringField;
    SeveritatUM_C0_6: TSmallintField;
    Panel5: TPanel;
    HYGrid8: THYGrid;
    Panel6: TPanel;
    HYBarra7: THYBarra;
    HYGrid7: THYGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
  end;

var
  wFitxaProtocolsRHF: TwFitxaProtocolsRHF;

implementation

uses Data, DataSeguiment, DataPerfilsNR, DataCodis;

{$R *.DFM}

procedure TwFitxaProtocolsRHF.FormCreate(Sender: TObject);
begin
  brwPerfils.Open;
  brwProtocols.Open;
  brwItems.Open;
  brwProtocolsNR.Open;
  PerfilsNR.Open;
  UMPerfilNR.Open;
  UnitatM.Open;
  SeveritatUM.Open;
end;

procedure TwFitxaProtocolsRHF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (brwPerfils.PuedeCerrar and brwProtocols.PuedeCerrar and brwItems.PuedeCerrar and brwProtocolsNR.PuedeCerrar and PerfilsNR.PuedeCerrar and UMPerfilNR.PuedeCerrar and SeveritatUM.PuedeCerrar);
end;

procedure TwFitxaProtocolsRHF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
