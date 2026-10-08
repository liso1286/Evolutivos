unit DataBlocQuirurgic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Diccionari, Db, DBTables, HYSql, Data,
  IBCustomDataSet, IBQuery;

type
  TwDataBlocQuirurgic = class(TDataModule)
    BQuirurgic: TDic;
    BQProcediments: TDic;
    BQAjudants: TDic;
    BQObservInf: TDic;
    BQuirurgic_BI: THYSqlTrigger;
    Coordenades: TDic;
    Preoperatori: TDic;
    EnquestaCMA: TDic;
    trauma: THYSqlProc;
    BQAnestesia: TDic;
    Isquemies: TDic;
    Ulceres: THYSqlProc;
    EliminaTract: THYSqlProc;
    BQuirurgic_BU: THYSqlTrigger;
    BQCompl_PQ: TDic;
    BQCompl_PQA: TDic;
    T_BQCompl_PQ_AI: THYSqlTrigger;
    CirurgiaMultinivell: TDic;
    BQProcs_BI: THYSqlTrigger;
    BQPreinduccio: TDic;
    TraspasAnestesia: THYSqlProc;
    BQMat_Lin: TDic;
    EMDN: TDic;
    AltaMassiva: THYSqlProc;
  private
  public
  end;

var
  wDataBlocQuirurgic: TwDataBlocQuirurgic;

implementation


{$R *.DFM}

end.


