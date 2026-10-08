unit mainconsultesu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, ComCtrls,fichaconsulta_7fib,
  ExtCtrls, DBGridEh, DBCtrls, Buttons, StdCtrls, Mask, IBCustomDataSet,
  IBDatabase, IBQuery, DBCtrlsEh, JvComponentBase, JvThreadTimer,
  JvAppStorage, JvAppRegistryStorage, JvFormPlacement,strutils,
  IBUpdateSQL, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdMessage, GridsEh, consultaEdit7;

type
  Tmainconsultes = class(TForm)
    databaseresultados: TIBDatabase;
    JvFormStorage1: TJvFormStorage;
    JvAppRegistryStorage1: TJvAppRegistryStorage;
    pagegeneral: TPageControl;
    tabconsulta: TTabSheet;
    panelresultados: TPanel;
    Label10: TLabel;
    sconsultassql: TDataSource;
    Database1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    qconsultassql: TIBDataSet;
    quserlogins: TIBDataSet;
    Panel2: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    labelusuarisql: TLabel;
    botonedita: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Splitter1: TSplitter;
    tabmestres: TTabSheet;
    Panel5: TPanel;
    Memo1: TMemo;
    ibupdatederechos: TIBUpdateSQL;
    qlistagdb: TQuery;
    slistagdb: TDataSource;
    panelpruebas: TPanel;
    labelproves: TLabel;
    panellistaresultados: TPanel;
    panelsql: TPanel;
    Splitter4: TSplitter;
    panelselect: TPanel;
    Panelletreroselect: TPanel;
    DBMemo1: TDBMemo;
    panelwhere: TPanel;
    DBMemo2: TDBMemo;
    panelletrerowhere: TPanel;
    Panelcampos: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    labelalias: TLabel;
    labelusuari: TLabel;
    SpeedButton4: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText3: TDBText;
    Label17: TLabel;
    DBText4: TDBText;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    editalias: TDBEdit;
    editusuari: TDBEdit;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Button2: TButton;
    DBCheckBox2: TDBCheckBox;
    DBEdit7: TDBEdit;
    DBDateTimeEditEh4: TDBDateTimeEditEh;
    checkqueryexec: TDBCheckBox;
    DBEdit8: TDBEdit;
    panelvelocidad: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    labeltime: TLabel;
    checkboxproves: TDBCheckBox;
    gdbedit: TdbconsultaEdit;
    Splitter2: TSplitter;
    Database2: TDatabase;
    checkbloqueado: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure botoneditaClick(Sender: TObject);
    procedure trazaini(sender: tobject; e: exception);
    procedure DBMemo1Exit(Sender: TObject);
    procedure qconsultassqlAfterInsert(DataSet: TDataSet);
    procedure clickcell(sender:tobject);
    procedure sconsultassqlDataChange(Sender: TObject; Field: TField);
    procedure qconsultassqlAfterOpen(DataSet: TDataSet);
    procedure qconsultassqlAfterDelete(DataSet: TDataSet);
    procedure qconsultassqlAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure qconsultassqlBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure refresca(sender:tobject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    function miraderechosql(derecho:string):boolean;
    procedure PanelcamposEnter(Sender: TObject);
    procedure DBDateTimeEditEh1Enter(Sender: TObject);
    procedure editusuariEnter(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure inicioconsulta(DataSet: TDataSet);
    procedure refrescamemos(DataSet: TDataSet);
    procedure Database1BeforeConnect(Sender: TObject);
    procedure DBGrid1xltDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure checkboxprovesEnter(Sender: TObject);
    procedure qconsultassqlBeforePost(DataSet: TDataSet);
    procedure DBMemo2Exit(Sender: TObject);
    procedure databaseresultadosBeforeConnect(Sender: TObject);
    procedure Database2BeforeConnect(Sender: TObject);
{   procedure fillgrid(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);   }

  private
    { Private declarations }
      timerdescuento:ttimer;
      timersalida:ttimer;
      tiemporest:integer;
      primera:boolean;
      nombre:string;
      sintimer:boolean;
      procedure apliactiva(var Msg: TMsg; var Handled: Boolean);
      procedure apliinactiva(Sender: TObject; var Done: Boolean);
      procedure idledescuento(Sender: TObject);
      procedure salidatimer(Sender: TObject);
      procedure salidaauto(segs:integer);
    
  public
    { Public declarations }
    resultados:tconsultaformfib;
    selectpanel:tconsultaformfib;
    maestros:tconsultaformfib;
  end;

var
  mainconsultes: Tmainconsultes;
  logininterno:string;


implementation

uses utilinueva, asistente, Umain, DateUtils;

{$R *.dfm}

procedure Tmainconsultes.FormCreate(Sender: TObject);
begin
{descripcio de derechos de acceso campo nivelacceso
los derechos con numero superior comprenden todos los derechos con numero inferior
0 solo ver las consultas asignadas a su usuario, no ve ningun botón  (ver)
1 puede cambiar el filtro (where) y hacer graficos                   (filtro)
2 cambiar sql                                                        (sql)
4 puede añadir y borrar  consultas y cambiar nombre de la consulta pero siempre
 desde pruebas                                                       (insert)
                                                                     (del)

5 puede crear avisos sobre la consulta, ve lista de consulta con todos los campos
   (ver) puede ejecutar la consulta
   (filtro) puede cambiar el campo  de filtro (where)
   (sql) puede cambiar el select y los campos que se ven
   (insert) puede crear una consulta nueva
   (del) puede borrar una consulta
  (aviso) cambiar campos de aviso automatico y programarlo para que avise
  (listacompleta) la lista de consulta salen todos los campos
  (alias) con este derecho no apuntara a pruebas al cambiar la sql solo la primera vez ,
      tambien permite cambiar a real si la consulta es mas lenta.
      Si no se tiene este derecho modificacaciones de consulta siempre se cambia a pruebas
      y si no sale en verde o les deja pasar a real
  (execsql) puede crear query para ejecucion y tiene visible el check
  (derechos) puede cambiar el campo de usuaris y dar derechos o quitar


9 administrador todos los derechos cambiar a donde apunta consulta   (admin)
    si pone admin le da todos los derechos

25/11/2009 cambio campo niveldeacceso y se ponen literales en minusculas
si el literal aparece en la cadena se da el derecho. Los derechos no se heredan
puede tener un derecho superior nivel 5 sin los inferiores

}
application.HintHidePause:=25000;
salidaauto(1800);
database1.open;
iniciaresumido;

application.onexception:=trazaini;
IF ((ID_LOGIN<>'**') and (ID_LOGIN<>'')) then
logininterno:=UpperCase(ID_LOGIN)
else
logininterno:=uppercase(ID_LOGINWIN);

quserlogins.ParamByName('id_login').AsString:=logininterno;


quserlogins.Open;

if quserlogins.RecordCount=0 then
  begin
  mandaerror(self,errorfalso,'El usuario '+logininterno+' no tiene derechos',true);
  end;
if quserlogins.RecordCount>1 then
  begin
  mandaerror(self,errorfalso,'El usuario '+logininterno+' esta repetido '+
  inttostr(quserlogins.RecordCount)+' veces en tabla DERECHOSSQL',true);
  end;

//editalias.readonly:=not miraderechosql('alias');

checkqueryexec.Visible:= miraderechosql('execsql');
labelusuarisql.Caption:=quserlogins['usuarisql'];

//puede añadir consultas
if miraderechosql('insert') then  dbnavigator1.visiblebuttons:=[nbInsert,nbPost,nbCancel]
else  dbnavigator1.visiblebuttons:=[nbPost,nbCancel];

// puede borrar consultas
SpeedButton3.visible:=miraderechosql('del');
tabmestres.TabVisible:=miraderechosql('admin');

// check de bloquear consutlas
checkbloqueado.visible:=miraderechosql('admin');


// diferencia si es por bde o ib
if false then

else
begin


resultados:=tconsultaformfib.create(panellistaresultados);


databaseresultados.Params.Strings[0]:='user_name='+quserlogins['usuarisql'];
databaseresultados.Params.Strings[1]:='password='+quserlogins['clau'];


with resultados do
  begin
//  botonmuestramemos.Visible:=true;
  qconsulta.AfterOpen:=refrescamemos;
  qconsulta.beforeopen:=inicioconsulta;
  opciondeetiquetas.visible:=true;
  Exportarseleccin1.Visible:=True;
  baseinterna:=databaseresultados;
  if miraderechosql('ver') then   grafics1.visible:=true;
//  databaseoculta.Params.strings[0]:='SERVER NAME='+databaseresultados.DatabaseName;
//  databaseoculta.Open;
  parent:=panellistaresultados;
  borderstyle:=forms.bsnone;
  Align:=alclient;
  left:=1;
  top:=1;
  show;
  end;
end;




selectpanel:=tconsultaformfib.create(panel1);
with selectpanel do
  begin
  playbutton.OnClick:=refresca;
  DBGrid1xlt.Hint:='Doble click per executar';
  DBGrid1xlt.OndblClick:=clickcell;
  dbgrid1xlt.RowHeight:=40;
  dbgrid1xlt.DefaultDrawing:=false;
  DBGrid1xlt.OnDrawColumnCell:=DBGrid1xltDrawColumnCell;
  baseinterna:=database1;
  parent:=panel1;
  borderstyle:=forms.bsnone;
  Align:=alclient;
  left:=1;
  top:=1;
  show;
  if miraderechosql('listacompleta') then
     begin
     sqltexto:='select descripcio,gdb,login_usuari,sqltexto,id'+
         ',wheretexto,aviso_datainici,aviso_datafin,aviso_min,aviso_max,'+
         'aviso_emails,aviso_tiempociclo,aviso_ultimoaviso,aviso_en_tabla_errorcontrol,execsql,ult_dataini,ult_datafin,num_execs,enproves,c_gdb from consultassql';
//       titulos:='Descripció,GDB,Login,SQL,ID,WHERE';
       wheretexto:='';
       wheretextoantic:='';
     end
   else
   begin
    sqltexto:='select descripcio,sqltexto,wheretexto,id,ult_dataini,ult_datafin,num_execs,enproves,c_gdb from consultassql';
    titulos:='Descripció,SQL,WHERE,ID';
    wheretexto:=' where login_usuari like "%,'+logininterno+',%"';
    wheretextoantic:=wheretexto;
   end;
  orden:=' order by num_execs desc,descripcio';
  ejecutasql;
  qconsulta.First;
  end;
  
//qconsultassql.ParamByName('id_login').AsString:=ID_LOGIN;

qconsultassql.datasource:=selectpanel.datasource1;
qconsultassql.open;
qlistagdb.Open;


maestros:=tconsultaformfib.create(application);
with maestros do
 begin  //1
  playbutton.OnClick:=refresca;
  baseinterna:=database1;
  sqltexto:='select * from derechossql';
  miupdatesql:=ibupdatederechos;
  parent:=panel5;
  borderstyle:=forms.bsnone;
  Align:=alclient;
  left:=1;
  top:=1;
  show;
  ejecutasql;
 end; //  1 with mestres do

//panelsqlsetup.Height:=23;

end;

procedure Tmainconsultes.botoneditaClick(Sender: TObject);
begin



if botonedita.Down then
   begin //1
   if  not (
   ( ( (vartype(qconsultassql['aviso_emails'])>1) or (vartype(qconsultassql['aviso_en_tabla_errorcontrol'])>1)) and miraderechosql('aviso') )

  or
    (
   (miraderechosql('filtro') or miraderechosql('sql') or miraderechosql('insert') ) and (vartype(qconsultassql['aviso_emails'])<2) and (vartype(qconsultassql['aviso_en_tabla_errorcontrol'])<2)   )
    ) then

     begin
     botonedita.down:=false;
     panelsql.Visible:=false;
     end
     else
      begin
      panelsql.Visible:=true;
      Splitter2.Top:=panelsql.Height+2;
      end
   end //1
   else panelsql.Visible:=false;




{
if botonedita.Down then
   panelsqlsetup.Height:=295
   else
   panelsqlsetup.Height:=23;
}

end;

procedure Tmainconsultes.trazaini(sender: tobject; e: exception);
begin
  mitrazaerrores(sender,e);
end;

procedure Tmainconsultes.DBMemo1Exit(Sender: TObject);
var
mitexto:string;
begin
mitexto:=uppercase(dbmemo1.Text);

if checkqueryexec.Visible and checkqueryexec.Checked THEN exit;

if (pos('SELECT',mitexto)=0) or
  (pos('INSERT',mitexto)>0) or
  (pos('DELETE',mitexto)>0) or
  (pos('UDPATE',mitexto)>0) or
  (pos('RIGHT JOIN',mitexto)>0)then
  begin
  showmessage('Instrucción no autoritzada');
  dbmemo1.SetFocus;
  end;



end;

procedure Tmainconsultes.qconsultassqlAfterInsert(DataSet: TDataSet);
begin
qconsultassql['login_usuari']:=','+logininterno+',';
//qconsultassql['gdb']:='proves2:e:\dades\guttmann.gdb';

qconsultassql['c_gdb']:=1;

if not miraderechosql('alias') then
   begin
   qconsultassql['enproves']:='S';
   showmessage('ATENCIÓ, la consulta està dirigida a la base de dades de proves'+#13+#10+
  'Després de provar la consulta es podrà canviar a real desmarcant proves ');
  end;
end;

procedure Tmainconsultes.clickcell(sender:tobject);
var
mialias:string;
begin
if databaseresultados.Connected then  databaseresultados.close;

  databaseresultados.Open;

with resultados do
  begin
{  if databaseoculta.Connected then
    begin
    decisionquery1.close;
    databaseoculta.Close;
    PageControl1.TabHeight:=1;
    PageControl1.ActivePage:=Dadessheet;
    end;

  databaseoculta.Params.strings[0]:='SERVER NAME='+databaseresultados.DatabaseName;
  databaseoculta.Open;}
  tituloconsulta:=qconsultassql['descripcio'];
  wheretexto:=qconsultassql['wheretexto'];
  wheretextoantic:=wheretexto;
  sqltexto:=qconsultassql['sqltexto'];
  orden:='';
  ejecutasql;
  end;  //with resultados
end;

procedure Tmainconsultes.sconsultassqlDataChange(Sender: TObject;
  Field: TField);
begin
panel1.Enabled:=not (sconsultassql.State in [dsinsert,dsedit]);



end;

procedure Tmainconsultes.qconsultassqlAfterOpen(DataSet: TDataSet);
var
segundos:integer;

begin

// cambia color de velocidad
if  (qconsultassql['ult_datafin']<>null) and (qconsultassql['ult_dataini']<>null) then
   begin
     panelvelocidad.Visible:=true;
     segundos:=trunc(MilliSecondSpan(qconsultassql.fieldbyname('ult_datafin').asdatetime,qconsultassql.fieldbyname('ult_dataini').asdatetime)/1000)+1;
     labeltime.caption:=inttostr(segundos)   +' secs';

      case segundos OF
      0..30 : panelvelocidad.Color:=clgreen;
      31..120 : panelvelocidad.Color:=clYellow;
      else panelvelocidad.Color:= clred;
      end;


   end
 else
 panelvelocidad.visible:=false;

labelalias.visible:=vartype(qconsultassql['c_gdb'])<2;
editalias.visible:=vartype(qconsultassql['c_gdb'])<2;

// si no tiene derecho de hacer avisos no puede modificar una consulta de avisos aunque si la pueda ejecutar

//panelsqlsetup.Visible:=

if botonedita.Down then
panelsql.visible:=
( ( (vartype(qconsultassql['aviso_emails'])>1) or (vartype(qconsultassql['aviso_en_tabla_errorcontrol'])>1)) and miraderechosql('aviso') )

or
  (
 (miraderechosql('filtro') or miraderechosql('sql') or miraderechosql('insert') ) and (vartype(qconsultassql['aviso_emails'])<2) and (vartype(qconsultassql['aviso_en_tabla_errorcontrol'])<2)   )
;







with qconsultassql do begin
if (recordcount=0) and (selectpanel.qconsulta.recordcount>1) then
  begin
  close;
  if not Transaction.InTransaction then
     transaction.StartTransaction;
  Transaction.Commit;
  open;
  end;
end;
end;

procedure Tmainconsultes.qconsultassqlAfterDelete(DataSet: TDataSet);
begin
selectpanel.ejecutasql;
dataset.EnableControls;
end;

procedure Tmainconsultes.qconsultassqlAfterPost(DataSet: TDataSet);
var
  el_des:string;
begin
//qconsultassql.Refresh;

{
if not miraderechosql('alias') then
   begin
   qconsultassql.Edit;
   qconsultassql['enproves']:='S';
//   showmessage('ATENCIÓ, la consulta està dirigida a la base de dades de proves'+#13+#10+
//  'Després de provar la consulta es podrà canviar a real desmarcant proves ');
  qconsutlassql.post;
  end;
 }

IBTransaction1.CommitRetaining;
el_des := qConsultassql.FieldByName('descripcio').Asstring;
selectpanel.ejecutasql;
selectpanel.qconsulta.locate('descripcio',el_des,[]);
//qconsultassql.Open;
quserlogins.Open;
end;

procedure Tmainconsultes.SpeedButton1Click(Sender: TObject);
begin
if panel2.Align=alleft then
  begin

  panel2.align:=altop;
  panel2.Height:=250;
//  splitter1.Top:=panel2.Height;
  panel1.Align:=alclient;
  end
  else
  panel2.align:=alleft;
  panel2.Width:=350;
  panel1.Align:=alclient;
 // Splitter1.Align:=alleft;
//  splitter1.Left:=panel2.Width;
  begin
  end;
  Splitter1.Align:=panel2.Align;

  splitter1.Left:=panel2.Width;

end;

procedure Tmainconsultes.SpeedButton2Click(Sender: TObject);
begin
if qconsultassql.state=dsbrowse then qconsultassql.Edit;
  qconsultassql['wheretexto']:=resultados.wheretexto;
  qconsultassql.Post;
end;

procedure Tmainconsultes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (sconsultassql.state in [dsinsert,dsedit]) and
  (messagedlg('Dades sense guardar, ¿segur que voleu sortir?',mtconfirmation,[mbyes,mbno],0)=mrno) then
  begin
  abort;
  exit;
  end;

application.Terminate;
application.Free;


end;

procedure Tmainconsultes.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
botonedita.Down:=true;
botoneditaClick(sender);
end;

procedure Tmainconsultes.qconsultassqlBeforeDelete(DataSet: TDataSet);
begin

enviaemail('zserver','avisos@guttmann.com','adelso@guttmann.com',
      'Consulta SQL Obert esborrada '+DataSet.FieldByName('descripcio').AsString,'','S ''ha esborrat la consulta sql obert '+DataSet.FieldByName('descripcio').AsString+#13+#10+
      'Usuari: '+ID_LOGIN+#13+#10+
      'Consulta esborrada: '+DataSet.FieldByName('sqltexto').AsString+#13+#10+DataSet.FieldByName('wheretexto').AsString ,'','',false,25);

dataset.disablecontrols;
end;

procedure Tmainconsultes.SpeedButton3Click(Sender: TObject);
var
qborra:tibquery;
begin


if messagedlg('Segur que vol esborralo?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com',
      'Consulta SQL Obert esborrada "'+qconsultassql.FieldByName('descripcio').AsString+'"','','S ''ha esborrat la consulta sql obert "'+qconsultassql.FieldByName('descripcio').AsString+'"'#13+#10+
      'Usuari: '+ID_LOGIN+#13+#10+
      'Consulta esborrada: '+qconsultassql.FieldByName('sqltexto').AsString+#13+#10+qconsultassql.FieldByName('wheretexto').AsString ,'','',false,25);

qborra:=tibquery.create(application);
with qborra do
  begin
  database:=database1;
  sql.Text:='delete from consultassql where id='+inttostr(selectpanel.qconsulta['id']);
  execsql;
  free;
  end;  //with
IBTransaction1.Commit;
//qconsultassql.Refresh;
quserlogins.Open;
selectpanel.ejecutasql;
selectpanel.qconsulta.First;
qconsultassql.close;
qconsultassql.Open;

end;

procedure Tmainconsultes.refresca(sender: tobject);
begin

if not IBTransaction1.Active then IBTransaction1.Active:=True;
//if not ibtransaction1.InTransaction then
//    ibtransaction1.StartTransaction;
ibtransaction1.CommitRetaining;
qconsultassql.close;
qconsultassql.open;
quserlogins.Open;
end;

procedure Tmainconsultes.DBMemo1Enter(Sender: TObject);
begin
if  (not miraderechosql('sql')) or ( (qconsultassql['bloqueado']='S')  and not miraderechosql('admin') ) then  panel1.SetFocus;
end;


{
CONJUNTO DE FUNCIONES PARA SALIDA AUTOMATICA DEL PROGRAMA


HAY QUE DECLARAR EN PRIVATE LAS VARIAS SIGUIENTES

Private
      timerdescuento:ttimer;
      timersalida:ttimer;
      tiemporest:integer;
      primera:boolean;
      nombre:string;
      sintimer:boolean;
      procedure apliactiva(var Msg: TMsg; var Handled: Boolean);
      procedure apliinactiva(Sender: TObject; var Done: Boolean);
      procedure idledescuento(Sender: TObject);
      procedure salidatimer(Sender: TObject);
      procedure salidaauto(segs:integer);

      renombrar la implementacion de las funciones con el nombre de
      formulacio  procedure tmain.apliac... tmain cambiar por nombre del main

FUNCIONES NECESARIAS apliactiva,apliinactiva,idledescuento,salidatimer,
                     salidaauto

Copiar todo esto en el main de la aplicacion y en el create del form main
poner salidaauto(segundos);


}



procedure Tmainconsultes.apliactiva(var Msg: TMsg; var Handled: Boolean);
begin

//         WM_KEYDOWN,WM_LBUTTONDOWN,WM_MOUSEMOVE:
   Case Msg.Message of
         WM_KEYDOWN,WM_LBUTTONDOWN,WM_MOUSEMOVE:
          begin
          if timersalida.Enabled and not primera then
             begin
             application.MainForm.caption:=nombre;
             timersalida.Enabled:=False;
             end;
           timerdescuento.Enabled:=false;
           primera:=false;
          end;
   end;

end;

procedure Tmainconsultes.apliinactiva(Sender: TObject; var Done: Boolean);
begin
     Timerdescuento.Enabled := not timersalida.enabled and not sintimer;
end;

procedure tmainconsultes.idledescuento(Sender: TObject);
begin
     Application.Restore;
     Application.BringToFront;
     Timerdescuento.Enabled := False;
     tiemporest:=10;
     timersalida.Enabled:=true;
     primera:=true;
end;


procedure Tmainconsultes.salidatimer(Sender: TObject);
begin
if (application.MainForm.caption<>'') and (copy(application.MainForm.caption,1,5)<>'Tanca')
    then nombre:=application.MainForm.caption;
application.MainForm.caption:='Tancant aplicació en '+inttostr(tiemporest);
if tiemporest=0 then
   begin
   application.MainForm.caption:=nombre;
   timersalida.Enabled:=false;
   application.MainForm.Close;
   end;
tiemporest:=tiemporest-1;
beep;
end;

procedure Tmainconsultes.salidaauto(segs:integer);
begin
// asigna funciones que mirar si esta inactivo para cerra programa
Application.OnIdle    := apliinactiva;
Application.OnMessage := apliactiva;
if timerdescuento<>nil then exit;
timerdescuento:=ttimer.create(self);
timerdescuento.enabled:=false;
timerdescuento.ontimer:=idledescuento;
timerdescuento.Interval:=segs*1000;
timersalida:=ttimer.create(self);
timersalida.Enabled:=false;
timersalida.OnTimer:=salidatimer;
timersalida.Interval:=1000;
end;




procedure Tmainconsultes.SpeedButton4Click(Sender: TObject);
var
//miq:tibquery;
mitrans:TIBTransaction;
wherestr:string;
begin
try

if not miraderechosql('sql') or ( (qconsultassql['bloqueado']='S')  and not miraderechosql('admin') ) then exit;

{if databaseresultados.Connected then
  begin
  databaseresultados.Close;
  resultados.databaseoculta.close;
  end;
}

if databaseresultados.Connected then  databaseresultados.close;

if databaseresultados.DefaultTransaction=nil then
  begin
  mitrans:=TIBTransaction.create(application);
  databaseresultados.DefaultTransaction:=mitrans;
  end;

databaseresultados.open;

application.CreateForm(Tfichaasistente,fichaasistente);
with fichaasistente do
  begin
  acQBIBExMetadataProvider1.Connection:=databaseresultados;
  acQueryBuilder1.RefreshMetadata;
  if dbmemo1.Lines.text<>'' then
     begin
     try
     acQueryBuilder1.SQL:=dbmemo1.Lines.text+' '+dbmemo2.Lines.text;
     except
     try
     acQueryBuilder1.SQL:=dbmemo1.Lines.text;
     except
     end;
     end;
     end;
  fichaasistente.Caption:=selectpanel.qconsulta['descripcio'];
  showmodal;
  if (acSQLBuilderPlainText1.SQL<>'') and
      (acSQLBuilderPlainText1.SQL<>'Select *'#$D#$A'From')then
     begin
{     miq:=tibquery.create(application);
     with miq do
       begin
       database:=databaseresultados;
       miq.Transaction:=databaseresultados.DefaultTransaction;
       sql.text:=acSQLBuilderPlainText1.SQL;
       try
       open;
       except;
       showmessage('error en sql');
       exit;
       end;
       end; }

    if     (messagedlg('Vols sustituir la sql anterior?',mtconfirmation,[mbYes,mbNo],0)=mrYes) then
     begin // cambia la query
     dbmemo1.DataSource.DataSet.Edit;
     if pos('Where',acSQLBuilderPlainText1.SQL)>0 then
       begin
       DBMemo1.Lines.text:=leftStr(acSQLBuilderPlainText1.SQL,pos('Where',acSQLBuilderPlainText1.SQL)-1);;
       wherestr:=copy(fichaasistente.acSQLBuilderPlainText1.SQL,
           pos('Where',fichaasistente.acSQLBuilderPlainText1.SQL),length(fichaasistente.acSQLBuilderPlainText1.SQL)) ;
       DBMemo2.Lines.text:=wherestr;
       end
      else
       DBMemo1.Lines.text:=acSQLBuilderPlainText1.SQL;

      dbmemo1.Modified:=true;
      dbmemo1.DataSource.DataSet.post;
      end;




     end;
  end; // with fichaasistente
finally
//miq.free;
fichaasistente.Free;
if databaseresultados.DefaultTransaction=mitrans then
  begin
  databaseresultados.DefaultTransaction:=nil;
  mitrans.free;
  end;
end;

end;

procedure Tmainconsultes.DBMemo2Enter(Sender: TObject);
begin
if not miraderechosql('filtro') or ( (qconsultassql['bloqueado']='S')  and not miraderechosql('admin') ) then panel1.SetFocus;
end;

procedure Tmainconsultes.DBEdit1Enter(Sender: TObject);
begin
if not miraderechosql('insert') then panel1.SetFocus;
end;

function Tmainconsultes.miraderechosql(derecho: string): boolean;

begin
//
result:=(
 (pos(derecho,quserlogins.fieldbyname('niveldeacceso').asstring)>0)
 or
 (pos('admin',quserlogins.fieldbyname('niveldeacceso').asstring)>0) );

end;

procedure Tmainconsultes.PanelcamposEnter(Sender: TObject);
begin
if miraderechosql('aviso') then
Panelcampos.Height:=208
else panelcampos.Height:=120;
end;

procedure Tmainconsultes.DBDateTimeEditEh1Enter(Sender: TObject);
begin
if not miraderechosql('aviso') then panel1.SetFocus;
end;

procedure Tmainconsultes.editusuariEnter(Sender: TObject);
begin
if not miraderechosql('derechos') then panel1.SetFocus;
end;

procedure Tmainconsultes.Button2Click(Sender: TObject);
begin
if not enviaemail('zserver','avisos@guttmann.com',qconsultassql['aviso_emails'],
      'email test avisos sqlobert','','email test avisos sqlobert','','',false,25) then
      showmessage('fallo al enviar email')
      else showmessage('envio ok');

end;


procedure Tmainconsultes.inicioconsulta(DataSet: TDataSet);
var
miq:tibquery;

begin


miq:=tibquery.Create(self);

if not IBTransaction1.InTransaction then
     IBTransaction1.StartTransaction;
with miq do
  begin
  Database:=database1;
  SQL.text:='update consultassql set ult_dataini="NOW" where id='+qconsultassql.fieldbyname('id').asstring;
  execsql;

{qconsultassql.edit;
qconsultassql['ult_dataini']:=now;
qconsultassql.post;               }
  IBTransaction1.CommitRetaining;
  free;
  end;

selectpanel.qconsulta.Database.DefaultTransaction.CommitRetaining;
selectpanel.ejecutasql;
end;





procedure Tmainconsultes.refrescamemos(DataSet: TDataSet);
var
execs:integer;
miq:tibquery;

begin
//
//dbmemo2.DataSource.Edit;
miq:=tibquery.Create(self);
If not IBTransaction1.InTransaction then
     IBTransaction1.StartTransaction;
with miq do
  begin
  Database:=database1;



if qconsultassql['num_execs']<>null then
      execs:=qconsultassql['num_execs']+1
   else execs:=1;

  SQL.text:='update consultassql set ult_datafin="NOW", num_execs='+inttostr(execs)+' where id='+qconsultassql.fieldbyname('id').asstring;
  execsql;
  IBTransaction1.CommitRetaining;
  free;
  end;

{
qconsultassql.edit;
qconsultassql['ult_datafin']:=now;
if qconsultassql['num_execs']<>null then
      qconsultassql['num_execs']:=qconsultassql['num_execs']+1
   else qconsultassql['num_execs']:=1;
qconsultassql.post;

IBTransaction1.CommitRetaining; }

dbmemo1.Lines.text:=resultados.sqltexto;
dbmemo2.Lines.text:=resultados.wheretexto;

selectpanel.qconsulta.Database.DefaultTransaction.CommitRetaining;
selectpanel.ejecutasql;



end;

procedure Tmainconsultes.Database1BeforeConnect(Sender: TObject);
begin
if not entrabaseparams('INFORMATICACONSULTESSQL',database1) then
  begin
  showmessage('no se puede entrar en informatica.gdb');
  end;
end;

{
procedure Tmainconsultes.fillgrid(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  var
  segundos:integer;
begin
with selectpanel do
  begin

  with dbgrid1xlt do
     begin
  if qconsulta.recordcount>0 then
    begin

    // aqui pone los inactivos en gris
    if (pos('',qconsulta.sql.text)>0) and (qconsulta['prioridad']<>null) and (qconsulta['prioridad']<>'') and (canvas.brush.color<>clhighlight) then
      begin



if  (qconsulta['ult_datafin']<>null) and (qconsulta['ult_dataini']<>null) then
   begin
     segundos:=trunc(MilliSecondSpan(qconsulta.fieldbyname('ult_datafin').asdatetime,qconsulta.fieldbyname('ult_dataini').asdatetime)/1000)+1;
     case segundos OF
      0..30 : canvas.brush.color:=clgreen;
      31..120 : canvas.brush.color:=clYellow;
      else canvas.brush.color:= clred;
      end;
   end
   else canvas.brush.color:=clwindow;

    end; // si hay registros


    DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end; // with dbgrid1xlt


end; // with panelin
end;     }



procedure Tmainconsultes.DBGrid1xltDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
  var
  segundos:integer;
begin
with selectpanel do
  begin

  with dbgrid1xlt do
     begin
  if qconsulta.recordcount>0 then
    begin


if  (qconsulta['ult_datafin']<>null) and (qconsulta['ult_dataini']<>null) then
   begin
     segundos:=trunc(MilliSecondSpan(qconsulta.fieldbyname('ult_datafin').asdatetime,qconsulta.fieldbyname('ult_dataini').asdatetime)/1000)+1;
     case segundos OF
      0..30 :
        begin
        canvas.brush.color:=clgreen;
        canvas.Font.Color:=clwhite;
        end;
      31..120 :
        begin
        canvas.brush.color:=clYellow;
        canvas.Font.Color:=clblack;
        end;
      else
        begin
        canvas.brush.color:= clred;
        canvas.Font.Color:=clblack;
        end;
      end;
   end
   else
    begin
    canvas.brush.color:=clwindow;
    canvas.Font.Color:=clblack;
    end;

    end; // si hay registros


    DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end; // with dbgrid1xlt


end; // with selectpanel

end;

procedure Tmainconsultes.checkboxprovesEnter(Sender: TObject);
var
segundos:integer;
begin
if  (qconsultassql['ult_dataini']=null) or (qconsultassql['ult_datafin']=null) then
   begin
   dbedit1.setfocus;
   showmessage('ATENCIÓ, la consulta està dirigida a la base de dades de proves'+#13+#10+
      'Després de provar la consulta es podrà canviar a real desmarcant proves ');
   end
   else
   begin
   segundos:=trunc(MilliSecondSpan(qconsultassql.fieldbyname('ult_datafin').asdatetime,qconsultassql.fieldbyname('ult_dataini').asdatetime)/1000)+1;
   if (segundos>180) and not miraderechosql('alias') then
     begin
    showmessage('Aquesta consulta es molt lenta, mes de 3 minuts'+#13+#10+
        'Per posar-la a real es te que demanar a informàtica');
      dbedit1.setfocus;
     end;
   end;


end;

procedure Tmainconsultes.qconsultassqlBeforePost(DataSet: TDataSet);
var
mitexto:string;
begin


if DBMemo1.Modified or dbmemo2.Modified then
   begin

if not checkqueryexec.Visible or not checkqueryexec.Checked THEN
  begin //1

  mitexto:=uppercase(dbmemo1.Text);
  if (pos('SELECT',mitexto)=0) or
    (pos('INSERT',mitexto)>0) or
    (pos('DELETE',mitexto)>0) or
    (pos('UDPATE',mitexto)>0) or
    (pos('RIGHT JOIN',mitexto)>0)then
    begin
    showmessage('Instrucción no autoritzada al select');
    dbmemo1.SetFocus;
    abort;
    end;

  mitexto:=uppercase(dbmemo2.Text);
  if (pos('SELECT',mitexto)>0) or
      (pos('INSERT',mitexto)>0) or
      (pos('DELETE',mitexto)>0) or
      (pos('UDPATE',mitexto)>0) or
      (pos('RIGHT JOIN',mitexto)>0)then
      begin
      showmessage('Instrucción no autoritzada al where');
      dbmemo2.SetFocus;
      abort;
      end;

  end; //1



  if not miraderechosql('alias') and (qlistagdb['ruta_gdb_proves']<>null) and  (qlistagdb['ruta_gdb_proves']<>'') then
     begin
     qconsultassql['ult_dataini']:=null;
     qconsultassql['ult_datafin']:=null;
     qconsultassql['enproves']:='S';

  //   showmessage('ATENCIÓ, la consulta està dirigida a la base de dades de proves'+#13+#10+
  //  'Després de provar la consulta es podrà canviar a real desmarcant proves ');
    end;
  end;  // cambioa

dbmemo1.Modified:=false;
dbmemo2.Modified:=false;

end;

procedure Tmainconsultes.DBMemo2Exit(Sender: TObject);
var
mitexto:string;
begin
mitexto:=uppercase(dbmemo2.Text);

if checkqueryexec.Visible and checkqueryexec.Checked THEN exit;

if (pos('SELECT',mitexto)>0) or
  (pos('INSERT',mitexto)>0) or
  (pos('DELETE',mitexto)>0) or
  (pos('UDPATE',mitexto)>0) or
  (pos('RIGHT JOIN',mitexto)>0)then
  begin
  showmessage('Instrucción no autoritzada');
  dbmemo2.SetFocus;
  end;



end;

procedure Tmainconsultes.databaseresultadosBeforeConnect(Sender: TObject);
begin
  panelpruebas.Visible:=false;

  if  (qlistagdb['ruta_gdb_real']<>null) and (qlistagdb['ruta_gdb_real']<>'') then
     begin
     if ( (qconsultassql['enproves']='S') or
               (qconsultassql['ult_dataini']=null) or (qconsultassql['ult_datafin']=null) ) and
                  (qlistagdb['ruta_gdb_proves']<>null) and  (qlistagdb['ruta_gdb_proves']<>'') then
            begin
            databaseresultados.DatabaseName:=qlistagdb['ruta_gdb_proves'];
            panelpruebas.visible:=true;
            end

          else  databaseresultados.DatabaseName:=qlistagdb['ruta_gdb_real'];
     end
     else  databaseresultados.DatabaseName:=qconsultassql['gdb'];
end;

procedure Tmainconsultes.Database2BeforeConnect(Sender: TObject);
begin
entrabaseparamsBDE('GDBINFORMATICA',database2);
end;

end.
