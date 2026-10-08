unit FitxaBloqueigLlits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, HYDialogConsulta, HYSql, Grids, DBGrids,
  HYGrids, ExtCtrls, DB, DBTables;

type
  TwFitxaBloqueigLlits = class(TForm)
    Panel6: TPanel;
    Panel7: TPanel;
    Splitter2: TSplitter;
    HYGrid2: THYGrid;
    HYBarra1: THYBarra;
    Panel13: TPanel;
    HYBarra2: THYBarra;
    HYGrid1: THYGrid;
    qLlitsBloqueig: THYSqlQuery;
    dsLLitsBloqueig: TDataSource;
    bBloqueigs: THYSqlBrowse;
    bBloqueigs_C_Llit: TStringField;
    bBloqueigs_Data_Inici: TDateTimeField;
    bBloqueigs_Data_Fi: TDateTimeField;
    bBloqueigs_Motiu_Bloqueig: TStringField;
    dsBloqueigs: TDataSource;
    qInsLog: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure HYGrid2AlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Datos: TDataSet);
    procedure bBloqueigsAfterScroll(DataSet: TDataSet);
    procedure bBloqueigsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wFitxaBloqueigLlits: TwFitxaBloqueigLlits;

implementation

uses Funciones, Data, DataHola;

{$R *.dfm}

procedure TwFitxaBloqueigLlits.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TwFitxaBloqueigLlits.FormCreate(Sender: TObject);
begin
  if (not NT7OK) or (not HOLA_OK) then FerError('El servidor NT7 (base de dades Hola) no està disponible.', True);
  
  qLlitsBloqueig.Close;
  bBloqueigs.Close;
  qLlitsBloqueig.Open;
  bBloqueigs.Open;
end;

procedure TwFitxaBloqueigLlits.HYGrid2AlPintarGrid(var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Datos: TDataSet);
begin
  ColorFont := clBlack;

  if gdSelected in State then
  begin
      ColorFont  := clYellow;
      ColorBrush := ClNavy;
  end;
end;

procedure TwFitxaBloqueigLlits.bBloqueigsAfterScroll(DataSet: TDataSet);
begin
  // no deixem tocar dates finals de bloqueig si estan informades i són anteriors a avui
  HYGrid1.ReadOnly := (not bBloqueigs.FieldByName('Data_Fi').IsNull) and (bBloqueigs.FieldByName('Data_Fi').AsDateTime<DateServer);
  HYGrid1.Columns[0].ReadOnly := True;  // la data inici no es pot tocar mai
  HYGrid1.Columns[2].ReadOnly := True;  // el motiu no es pot tocar mai
end;

procedure TwFitxaBloqueigLlits.bBloqueigsAfterPost(DataSet: TDataSet);
var
 id:Integer;
begin
  if (not NT7OK) or (not HOLA_OK) then Exit;

  id := HolaSelect('select max(ID) from LOGBLLITSINF ', []);

  if (id=0) then id:=0;

  qInsLog.ParamByName('ID'        ).AsInteger  := id + 1;
  qInsLog.ParamByName('C_LLIT'    ).AsString   := bBloqueigs.FieldbyName('C_LLIT'    ).AsString;
  qInsLog.ParamByName('DATA_INICI').AsDateTime := bBloqueigs.FieldbyName('DATA_INICI').AsDateTime;

  if bBloqueigs.FieldbyName('DATA_FI').IsNull
  then qInsLog.ParamByName('DATA_FI').Clear
  else qInsLog.ParamByName('DATA_FI').AsDateTime := bBloqueigs.FieldbyName('DATA_FI').AsDateTime;

  qInsLog.ParamByName('MOTIU_BLOQUEIG').AsString := bBloqueigs.FieldbyName('MOTIU_BLOQUEIG').AsString;
  qInsLog.ParamByName('C_USUARI'      ).AsString := wData.UsuariActiu.Codi;

  TRY qInsLog.ExecSQL; FINALLY END;

end;

end.
