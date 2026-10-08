unit DataInterCon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Diccionari, HYDialogConsulta;

type

  TwDataIntercon = class(TDataModule)
    InterCon: TDic;
    IC_Tipus: TDic;
    IC_Conta: THYSqlTrigger;
    InterconRx: TDic;
    CodiRx: TDic;
    IC_Items: TDic;
    IC_Estats: TDic;
    vIntercon: TDic;
    ProvaEsp: TDic;
    ProvaList: THYSqlProc;
    ProvaIns: THYSqlTrigger;
    PosaPrevista: THYSqlProc;
    CodiProvaEsp: TDic;
    ProvaModi: THYSqlTrigger;
    ProvProvaEsp: THYSqlView;
    L_ProvProvaEsp: TDic;
    vInterconbis: TDic;
    InterConValida: TDic;
    BancSang: TDic;
    ECOS2: THYSqlProc;
    InterconEspecialitat: THYSqlProc;
    P_TancaEcoRevi: THYSqlProc;
    ProvaEspProvPreu: THYSqlView;
    vProvaEspProvPreu: TDic;
    BSTVirtual: TDic;
    ConcilFarma: THYSqlProc;
    InterconNFEstudis: TDic;
    NFProves: TDic;
    InterconNFProves: TDic;
    NFEstudis: TDic;
    NFEstudisProves: TDic;
    ConcilFarmaCurt: THYSqlProc;
    Estadistiques: THYSqlProc;
    ConcilFarmaDesacord: THYSqlProc;
    interconANAL: THYSqlView;
    interconANALMUESTRA: THYSqlProc;
    InterconValidaSol: TDic;
    ProvaList1: THYSqlProc;
    T_BancSang_AU: THYSqlTrigger;
    T_Intercon_AI: THYSqlTrigger;
    UpdCF: THYSqlProc;
    InterconLlista: THYSqlView;
    T_GeneraCE: THYSqlTrigger;
    T_AU_DicomRis: THYSqlTrigger;
    HC3TipusDocumentRX: TDic;
    T_AI_DicomRis: THYSqlTrigger;
    DICOMRIS: TDic;
    InterconLlistaSM: THYSqlView;
    InterconLlista2: THYSqlView;
    ProvaUpd: THYSqlTrigger;
    InterconRespostes: TDic;
    ComunicatEpi: TDic;
    CEpi_Germen: TDic;
    CEpi_FactPredis: TDic;
    Germen: TDic;
    CEPI_Germen_BI: THYSqlTrigger;
    CEpi_FactPredis_BI: THYSqlTrigger;
    CEpi_Prescripcio: TDic;
    CEpi_Presc_BI: THYSqlTrigger;
    FactPredis: TDic;
    TipusInfeccio: TDic;
    MotiuAntibiotic: TDic;
  private
  public
  end;

var
  wDataIntercon: TwDataIntercon;

implementation

uses Data, DataFactu, DataOrtesis, DataFarmatools;

{$R *.DFM}

end.

