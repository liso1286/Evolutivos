unit DataCodis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Diccionari, Db, DBTables;

type
  TwDataCodis = class(TDataModule)
    Festius: TDic;
    Poblacio: TDic;
    Provincia: TDic;
    Pais: TDic;
    Hospital: TDic;
    EstatCivil: TDic;
    CodiVia: TDic;
    CodiICD: TDic;
    CodiCamps: TDic;
    GrupCodiCamps: TDic;                      
    CodiCampsAlfa: TDic;
    GrupCodiCampsAlfa: TDic;
    Regions: TDic;
    MetgePresta: TDic;
    UnitatM: TDic;
    CodiStock: TDic;
    ProcDiag: TDic;
    CodiICF: TDic;
    CodiCampsCurt: TDic;
    GrupCodiCampsCurt: TDic;
    CodiICF_CE: TDic;
    NeuroTrauma: TDic;
    CodisGuttmann: THYSqlProc;
    Inespecifics: THYSqlProc;
    ListCodificacio: THYSqlProc;
    FullAlta2005: THYSqlProc;
    RIC: TDic;
    GLF: TDic;
    CodiICD_V: TDic;
    ListIngres: THYSqlProc;
    CIM10D: TDic;
    CIM10P: TDic;
    GrupCodiCamps3: TDic;
    CodiCamps3: TDic;
    GrupsCodiCamps: TDic;
    EspecialCodiCamps: TDic;
    ICDCodiCamps: TDic;
    AragoEliminada: THYSqlProc;
    CIM9CIM10: TDic;
    LogWSCoode: TDic;
    Dispositiu: TDic;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDataCodis: TwDataCodis;

implementation

uses Data, DataBasics;

{$R *.DFM}

end.
