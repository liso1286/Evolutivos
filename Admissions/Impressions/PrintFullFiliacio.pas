unit PrintFullFiliacio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Db, kbmMemTable, DBTables, HYSql, ComCtrls,
  jpeg;

type
  TwPrintFullFiliacio = class(TForm)
    qFiliacio: TQuery;
    qFiliacioNUM_HIST: TIntegerField;
    qFiliacioAPELLIDO1: TStringField;
    qFiliacioAPELLIDO2: TStringField;
    qFiliacioNOMBRE: TStringField;
    qFiliacioDNI: TStringField;
    qFiliacioNOMVIA: TStringField;
    qFiliacioTELEFONO: TStringField;
    qFiliacioTIPUSVIA: TStringField;
    qFiliacioCODIGO: TStringField;
    qFiliacioNUMERO: TStringField;
    qFiliacioBLOC: TStringField;
    qFiliacioESCALA: TStringField;
    qFiliacioPIS: TStringField;
    qFiliacioPORTA: TStringField;
    qFiliacioPOBLACIO: TStringField;
    qFiliacioPROVINCIA: TStringField;
    qFiliacioRESIDENCIA: TStringField;
    qFiliacioSEXO: TStringField;
    qFiliacioFECHA_NAC: TDateTimeField;
    qFiliacioLUGAR_NAC: TStringField;
    qFiliacioESTADO_CIV: TStringField;
    qFiliacioSOE: TStringField;
    qFiliacioTSI: TStringField;
    qFiliacioTITULAR: TStringField;
    qFiliacioPENSIONIST: TStringField;
    qFiliacioTELEFO1_FAM: TStringField;
    qFiliacioDESCRIPCIO1: TStringField;
    qFiliacioTELEFO2_FAM: TStringField;
    qFiliacioDESCRIPCIO2: TStringField;
    qFiliacioAMIC: TFloatField;
    qFiliacioMORT: TDateTimeField;
    qFiliacioUSRA: TIntegerField;
    qFiliacioBLOQUEIG: TStringField;
    qFiliacioOBJECTIUS: TIntegerField;
    qFiliacioESVIU: TStringField;
    qFiliacioN_ETIOLOGIA: TStringField;
    qFiliacioN_CODI_E: TStringField;
    qFiliacioFRANKEL: TStringField;
    qFiliacioDATA_LESSIO: TDateTimeField;
    qFiliacioC_CLASANAT: TSmallintField;
    qFiliacioC_FRACTURAVERTEBRAL: TSmallintField;
    qFiliacioC_TIPUSBUFETA: TSmallintField;
    qFiliacioC_BIPEDESTACIO: TSmallintField;
    qFiliacioC_DISREFLEXIA: TSmallintField;
    qFiliacioC_CADIRA: TSmallintField;
    qFiliacioC_FUNCIOSEXUAL: TSmallintField;
    qFiliacioC_ERECCIO: TSmallintField;
    qFiliacioC_EJACULACIO: TSmallintField;
    qFiliacioC_SEMEN: TSmallintField;
    qFiliacioC_TRACTAMENTORTOPEDIC: TSmallintField;
    qFiliacioC_DEAMBULACIO: TSmallintField;
    qFiliacioC_BITUTORS: TSmallintField;
    qFiliacioC_AJUDES: TSmallintField;
    qFiliacioC_DRENATGEURINARI: TSmallintField;
    qFiliacioALERGIES: TStringField;
    qFiliacioDATA_CONTACTE: TDateTimeField;
    qFiliacioDATA_ULTIMCONTACTE: TDateTimeField;
    qFiliacioPAIS: TStringField;
    qFiliacioC_INFECCIOURINARIA: TSmallintField;
    qFiliacioCOMODIN: TStringField;
    qFiliacioANTICSTRACTAMENTS: TMemoField;
    qFiliacioIDIOMA: TSmallintField;
    qFiliacioC_ETIOLOGIA: TStringField;
    qFiliacioC_CODI_E: TStringField;
    qFiliacioC_DIAGNOSTICNEUROLOGIC: TStringField;
    qFiliacioN_DIAGNOSTICNEUROLOGIC: TStringField;
    qFiliacioUNITAT: TSmallintField;
    qFiliacioC_UNITATMEDICA: TSmallintField;
    qFiliacioOBS_DIETA: TStringField;
    qFiliacioNOMCOMPLET: TStringField;
    qFiliacioEDAT: TIntegerField;
    qFiliacioC_DIETA: TSmallintField;
    dsFiliacio: TDataSource;
    qHistorico: TQuery;
    qFiliacioADRESA: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    qrFullFiliacio: TQuickRep;
    QRBand1: TQRBand;
    TITOL: TQRLabel;
    lCognoms: TQRLabel;
    lAdreca: TQRLabel;
    lPoblacio: TQRLabel;
    lCodi: TQRLabel;
    lHistoria: TQRLabel;
    lTelefon: TQRLabel;
    lFinancament: TQRLabel;
    lNSSocial: TQRLabel;
    lTitular: TQRLabel;
    lDiagnostic: TQRLabel;
    lMoviments: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    lDatanaix: TQRLabel;
    lLloc: TQRLabel;
    lDNI: TQRLabel;
    QRLabel6: TQRLabel;
    lSexe: TQRLabel;
    lTSI: TQRLabel;
    Exitus: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    Logo: TQRImage;
    COGNOMS: TQRDBText;
    HISTORIA: TQRDBText;
    ADRECA: TQRDBText;
    POBLACIO: TQRDBText;
    CODI: TQRDBText;
    TELEFON: TQRDBText;
    NSSOCIAL: TQRDBText;
    TITULAR: TQRDBText;
    DIAGNOSTIC: TQRDBText;
    DATANAIXE: TQRDBText;
    LLOCNAIX: TQRDBText;
    DNI: TQRDBText;
    ESTATCIVIL: TQRDBText;
    SEXE: TQRDBText;
    TSI: TQRDBText;
    PROVINCIA: TQRDBText;
    TELEFON1: TQRDBText;
    TELEFON2: TQRDBText;
    COMENTARI1: TQRDBText;
    COMENTARI2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    ChildBand1: TQRChildBand;
    QRDBRichText1: TQRDBRichText;
    qrFullFiliacio2: TQuickRep;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape14: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText29: TQRDBText;
    QRImage1: TQRImage;
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure COGNOMSPrint(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure ExitusPrint(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    CentreFac, UP: String;
  end;

var
  wPrintFullFiliacio: TwPrintFullFiliacio;

implementation

uses Funciones, DataBasics, Data;

{$R *.DFM}

procedure TwPrintFullFiliacio.QRDBText3Print(sender: TObject;
  var Value: String);
begin
   if EsBuit(Value) then Value := '-';
end;

procedure TwPrintFullFiliacio.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  if EsPle(Value) Then Value := SelectSqlFmt(wData.Projecte.DataBaseName,' Select Resum from Prestacion where C_Prestacio = %s',[Value]);
end;

procedure TwPrintFullFiliacio.COGNOMSPrint(sender: TObject;
  var Value: String);
begin
  Value := Value +' '+ qFiliacio.FieldbyName('Apellido2').asString;
end;

procedure TwPrintFullFiliacio.QRDBText4Print(sender: TObject;
  var Value: String);
begin
   case Value[1] of
    'N': Value := 'S';
    'S': Value := '';
   end;
end;

procedure TwPrintFullFiliacio.ExitusPrint(sender: TObject;
  var Value: String);
begin
   if qFiliacio.FieldbyName('esViu').asString = 'S' Then  Value := '';
end;

procedure TwPrintFullFiliacio.QRLabel4Print(sender: TObject;
  var Value: String);
begin
  Value := CentreFac;
end;

procedure TwPrintFullFiliacio.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := EsPle(qFiliacio.FieldByName('AnticsTractaments').asString);
end;

end.


