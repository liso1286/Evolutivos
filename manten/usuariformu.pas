unit usuariformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, DBCtrls, Mask, ExtCtrls, fichaconsulta_7fib,
  Db, DBTables, Buttons, Gridseh, DBGridEh, DBCtrlsEh
  ,variants, IBCustomDataSet,  IBDatabase, RpCon, RpConDS,
  RpDefine, RpRave, RpRender, RpRenderPDF, Menus, JvBaseDlg, JvDesktopAlert,
  IBQuery, consultaEdit7 ;

type
  Tusuariform = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Label1: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Panel3: TPanel;
    estadotext: TLabel;
    horasedit: TDBEdit;
    horaiedit: TDBEdit;
    horafedit: TDBEdit;
    urgentcheckbox: TDBCheckBox;
    motiumemo: TDBMemo;
    Panel4: TPanel;
    susuaris: TDataSource;
    qusuaris: TQuery;
    SpeedButton1: TSpeedButton;
    sparte: TDataSource;
    claveedit: TDBEdit;
    departamedit: TdbconsultaEdit;
    DBText3: TDBText;
    DBText4: TDBText;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    observamantememo: TDBMemo;
    Label4: TLabel;
    nomordedit: TDBEdit;
    Label5: TLabel;
    loginedit: TDBEdit;
    DBText5: TDBText;
    operariedit: TdbconsultaEdit;
    Label25: TLabel;
    estadopartetext: TLabel;
    SpeedButton2: TSpeedButton;
    cusuariedit: TconsultaEdit;
    labelnombre: TLabel;
    nombreedit: TEdit;
    Label6: TLabel;
    c_departamedit: TconsultaEdit;
    departamtitul: TLabel;
    botonanular: TButton;
    labelpreven: TLabel;
    idrepeedit: TdbconsultaEdit;
    dataiedit: TDBDateTimeEditEh;
    datafedit: TDBDateTimeEditEh;
    tipoedit: TdbconsultaEdit;
    estructuracheck: TDBCheckBox;
    qparteqparteDATAS: TDateTimeField;
    qparteqparteDEPARTAM: TIBStringField;
    qparteqparteTERMINI: TIBStringField;
    qparteqparteOPERARI: TIBStringField;
    qparteqparteDATAI: TDateTimeField;
    qparteqparteDATAF: TDateTimeField;
    qparteqparteDEPARR: TIBStringField;
    qparteqpartePARTE: TFloatField;
    qparteqparteHORA: TIBStringField;
    qparteqparteHORAI: TIBStringField;
    qparteqparteHORAF: TIBStringField;
    qparteqparteESTAT: TIBStringField;
    qparteqparteC_USUARI: TIntegerField;
    qparteqparteNOMPC: TIBStringField;
    qparteqparteLOGIN: TIBStringField;
    qparteqparteNOMUSUARI: TIBStringField;
    qparteqparteC_OPERARITANCA: TIBStringField;
    qparteqparteID_REPE: TIntegerField;
    qparteqparteTIPO: TIBStringField;
    qparteqparteESTRUCTURA: TIBStringField;
    qparteqparteN_DEPARTAM: TIBStringField;
    qparteqparteN_DEP_REALI: TIBStringField;
    qparteqparteN_OPERARI: TIBStringField;
    qparte: TIBDataSet;
    partestrans: TIBTransaction;
    qparteMOTIU: TIBStringField;
    qparteOBSERVACIONS_MANTENIMENT: TIBStringField;
    basepanelpartes: TIBDatabase;
    datasedit: TDBDateTimeEditEh;
    Query1: TQuery;
    RvDataSetConnection1: TRvDataSetConnection;
    RvRenderPDF1: TRvRenderPDF;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    PopupMenu1: TPopupMenu;
    info1: TMenuItem;
    alertaerror: TJvDesktopAlert;
    IBQuery1: TIBQuery;
    RvProject1: TRvProject;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qparte2AfterInsert(DataSet: TDataSet);
    procedure qparte2BeforeEdit(DataSet: TDataSet);
    procedure qparte2AfterPost(DataSet: TDataSet);
    procedure sparteDataChange(Sender: TObject; Field: TField);
    procedure qparte2BeforeClose(DataSet: TDataSet);
    procedure botonanularClick(Sender: TObject);
    procedure qparte2AfterOpen(DataSet: TDataSet);
    procedure datafeditEnter(Sender: TObject);
    procedure qparte2BeforePost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cusuarieditExit(Sender: TObject);
    procedure cusuarieditKeyPress(Sender: TObject; var Key: Char);
    procedure claveeditKeyPress(Sender: TObject; var Key: Char);
    procedure c_departameditExit(Sender: TObject);
    procedure qparte2BeforeInsert(DataSet: TDataSet);
    procedure Panel2Enter(Sender: TObject);
    procedure dataieditDblClick(Sender: TObject);
    procedure panelinDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure horafeditExit(Sender: TObject);
    procedure qparteAfterDelete(DataSet: TDataSet);
    procedure idrepeeditEnter(Sender: TObject);
    procedure idrepeeditExit(Sender: TObject);
    procedure imprimelo(sender:tobject);
    procedure qconsultaopen(dataset:tdataset);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure basepanelpartesBeforeConnect(Sender: TObject);
    procedure info1Click(Sender: TObject);
    procedure tipoeditEnter(Sender: TObject);
    procedure operarieditDblClick(Sender: TObject);
    procedure basepanelpartesAfterConnect(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    panelin:tconsultaformFIB;

  end;

var
  usuariform: Tusuariform;
  formoperariactivo:boolean;

  
implementation

uses utilinueva,  operariformu, datos, claveformu, fichawebu;

{$R *.DFM}

procedure Tusuariform.FormCreate(Sender: TObject);
begin
basepanelpartes.open;
if (udata.mantenimiento.AliasName<>'gdbmanten') then
   label25.visible:=true;


 panelin:=tconsultaformFIB.create(panel1);
           with panelin do
             begin
             DBGrid1xlt.DefaultDrawing:=false;
             dbgrid1xlt.OnDrawColumnCell:=panelinDrawColumnCell;
             dbgrid1xlt.color:=$00B3FFFD;
             panelin.BitBtn1.OnClick:=imprimelo;
             qconsulta.AfterOpen:=qconsultaopen;
             parent:=panel1;
             borderstyle:=forms.bsnone;
             baseinterna:=basepanelpartes;
             Align:=alclient;
             left:=1;
             top:=1;
             panel1xl.visible:=true;
             printdbgrideh1.PageHeader.centerText.Text
             :='Llistat de partes de manteniment';
             titulos:='Nº,Data Sol.,E,Operari,'+
             'Dep. sol·licitant,Realitzar a,Descripció'+
             ',Data Ini.,Data fin,Usuari,U,Tipus,Est,Lloc,Login,Observacions,Oper.Tanca,Nº preventiu';
             orden:='order by 1';
             sqltexto:= 'select  PARTE,DATAS,ESTAT,NOMOPERARI,'+
                          ' NOMDEPARSOL,NOMDEPAREAL,MOTIU,'+
                          'DATAI,DATAF,NOMUSUARI,TERMINI,TIPO,ESTRUCTURA,NOMPC,LOGIN,'+
                          'OBSERVACIONS_MANTENIMENT,C_OPERARITANCA,ID_REPE'+
                          ' FROM MANTEN ';
             show;
             if mic_departam='' then
               begin
               c_departamedit.visible:=true;
               departamtitul.visible:=true;
               end;
             qparte.DataSource:=panelin.DataSource1;
             // si es usuario de mant, si no le da solo para crear parte
             if derechos.recordcount>0 then
               begin //1
               departamedit.readonly:=false;
               botonanular.visible:=true;
               grafics1.visible:=true;
               Exportarseleccin1.visible:=true;
               wheretexto:='where estat="P"';
               wheretextoantic:='where datas>="01.01.01"';

               // DA ACCESO A CAMPOS DE MANTENIENTO
               dataiedit.ReadOnly:=false;
               datafedit.ReadOnly:=false;
               horaiedit.readonly:=false;
               horafedit.readonly:=false;
               operariedit.readonly:=false;
               observamantememo.readonly:=false;
               labelpreven.visible:=true;
               idrepeedit.visible:=true;
               motiumemo.ReadOnly:=false;
               urgentcheckbox.ReadOnly:=false;
               tipoedit.readonly:=false;
               tipoedit.Visible:=true;
               estructuracheck.readonly:=false;
               ejecutasql;
               qparte.open;    /// error
               end   //1
               else
               begin //2
               labelpreven.visible:=false;
               idrepeedit.visible:=false;
               botonanular.visible:=false;
               wheretexto:='where departam="'+mic_departam+
               '" and estat="P"';
               wheretextoantic:='where departam="'+mic_departam+'" ';
               panelin.BitBtn1.visible:=false;
               if mic_departam<>'' then
                  begin
                  ejecutasql;
                  qparte.open;
                  end;
               end; //2
             end;
          

end;

procedure Tusuariform.SpeedButton1Click(Sender: TObject);
begin
if  (claveedit.text<>qusuaris['clave']) then
  begin
  application.createform(Tclaveform,claveform);
  claveform.Label1.caption:='Entreu de nou la clau';
  if  not ((uppercase(trim(claveform.clavecorrecta))=uppercase(trim(claveedit.text)))) then
  begin
  showmessage('No coincideix');
  beep;
  claveedit.SetFocus;
  exit;
  end;
  qusuaris.post;
  speedbutton1.visible:=false;
  end;
end;

procedure Tusuariform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if qusuaris.state=dsedit then
  begin
if  claveedit.Modified then
  begin
  application.createform(Tclaveform,claveform);
  claveform.Label1.caption:='Entreu de nou la clau';
  if  not ((uppercase(trim(claveform.clavecorrecta))=uppercase(trim(claveedit.text)))) then
  begin
  showmessage('No coincideix');
  beep;
  claveedit.SetFocus;
  abort;
  exit;
  end;
  qusuaris.post;
  speedbutton1.visible:=false;
  end;
  end;

if (qparte.state in [dsinsert,dsedit]) then
  if MessageDlg('Dades sense guardar, ¿Segur que vols sortir  ?', mtConfirmation, [mbYes,mbNo], 0)=Mrno then
    abort;
end;

procedure Tusuariform.qparte2AfterInsert(DataSet: TDataSet);
begin
//qparte['c_usuari']:=qusuaris['c_usuari'];
qparte['departam']:=mic_departam;
qparte['deparr']:=mic_departam;
qparte['datas']:=now;
qparte['hora']:=formatdatetime('hh:nn',now);
qparte['nompc']:=ID_COMPUTER;
qparte['login']:=id_login;
qparte['termini']:='N';
qparte['estat']:='P';
qparte['nomusuari']:=nombreedit.text;
motiumemo.readonly:=false;
urgentcheckbox.readonly:=false;
departamedit.readonly:=false;
motiumemo.SetFocus;
end;

procedure Tusuariform.qparte2BeforeEdit(DataSet: TDataSet);
begin
if derechos.recordcount=0 then
  begin
  abort;
  exit;
  end;
if (qparte['estat']<>null) and (pos(qparte['estat'],'AF')>0) and (derechos['nivel']<3)then
  begin
  showmessage('No es pot modificar');
  abort;
  end;
if (not formoperariactivo)  then
  begin
  if (Mc_operari='') then
     begin
     formoperariactivo:=true;
     application.createform(Toperariform,operariform);
     Mc_operari:=operariform.sacaoperari;
     formoperariactivo:=false;
     end;
  end;
  if (Mc_operari='') or not simodifica then
  abort;
end;

procedure Tusuariform.qparte2AfterPost(DataSet: TDataSet);
begin
//qparte.refresh;
if not partestrans.InTransaction then
    partestrans.StartTransaction;
partestrans.Commit;
panelin.ejecutasql;
if not qparte.active then qparte.open;

if (derechos.recordcount=0) or not simodifica then
    begin
    motiumemo.readonly:=true;
    urgentcheckbox.readonly:=true;
    end;
if derechos.recordcount=0 then
  departamedit.readonly:=true
 else
  motiumemo.readonly:=false;
end;

procedure Tusuariform.sparteDataChange(Sender: TObject; Field: TField);
begin
estadotext.caption:='';
if sparte.State=dsinsert then  estadotext.caption:='Insertant ordre';
if sparte.State=dsedit then estadotext.caption:='Editant ordre';
panelin.enabled:=sparte.state=dsbrowse;
end;

procedure Tusuariform.qparte2BeforeClose(DataSet: TDataSet);
begin
if (sparte.state in [dsinsert,dsedit]) then
   begin
   abort;
   end;
end;

procedure Tusuariform.botonanularClick(Sender: TObject);
begin

if (not formoperariactivo)  then
  begin
  if (Mc_operari='') then
     begin
     formoperariactivo:=true;
     application.createform(Toperariform,operariform);
     Mc_operari:=operariform.sacaoperari;
     formoperariactivo:=false;
     end;
  end;

  if (Mc_operari='') then exit;

if qparte['dataf']=null then
   begin
   if   MessageDlg('¿ Segur que desitja anul·lar aquest part ?',
   mtConfirmation, [mbYes,mbNo], 0)=Mryes then
   begin
   qparte.edit;
   qparte['estat']:='A';
   qparte['c_operaritanca']:=Mc_operari;
   qparte.post;
   end;
   end
 else
   begin
   if   MessageDlg('¿ Segur que desitja finalitzar aquest part ?',
   mtConfirmation, [mbYes,mbNo], 0)=Mryes then
   begin
   qparte.edit;
   qparte['estat']:='F';
   qparte['c_operaritanca']:=Mc_operari;
   qparte.post;
   end;
   end;
end;

procedure Tusuariform.qparte2AfterOpen(DataSet: TDataSet);
begin
with qparte do begin
if (recordcount=0) and (panelin.qconsulta.recordcount>0) then
  begin
  close;
  if not Transaction.InTransaction then
     transaction.StartTransaction;
  Transaction.Commit;
  open;
  end;
end;
if (qparte['estat']='F') or (qparte['estat']='A') then
   botonanular.enabled:=false
   else
   botonanular.enabled:=true;


if (qparte['estat']='P') or (qparte['estat']=null)
    then estadopartetext.caption:='PENDENT';
if qparte['estat']='F' then estadopartetext.caption:='FINALITZAT';
if qparte['estat']='A' then estadopartetext.caption:='ANUL·LAT';

If qparte['dataf']=null then botonanular.caption:='Anul·lar'
  else botonanular.caption:='Finalitzar';
end;

procedure Tusuariform.datafeditEnter(Sender: TObject);
begin
if qparte['datai']=null  then
    begin
    dataiedit.setfocus;
    exit;
    end;

if operariedit.text='' then operariedit.setfocus;

end;

procedure Tusuariform.qparte2BeforePost(DataSet: TDataSet);
var
mimemo:string;
midat:tdatetime;
begin
if (sparte.state=dsinsert) and (motiumemo.lines.text='') then
  begin
  showmessage('Heu d''omplir la descripció');
  beep;
  motiumemo.SetFocus;
  abort;
  exit;
  end;

if (derechos.recordcount>0) and (ID_LOGIN<>'ADMIN') then
    begin
    if  (tipoedit.text='')  then
      begin
      beep;
      showmessage('Heu d''omplir el camp Tipus');
      tipoedit.setfocus;
      abort;
      exit;
      end;
{    if  (qparte['estructura']=null)  then
      begin
      beep;
      showmessage('Deu omplir el camp Estructura');
      estructuracheck.SetFocus;
      abort;
      end; }
    end;

try
mimemo:=qparte.fieldbyname('motiu').asstring;
qparte.fieldbyname('motiu').asstring:=uppercase(mimemo);
if qparte['observacions_manteniment']<>null then
   begin
   mimemo:=qparte.fieldbyname('observacions_manteniment').asstring;
   qparte.FieldByName('observacions_manteniment').asstring:=uppercase(mimemo);
   end;
except
mandaerror(self,errorfalso,'Error no se puede convetir el campo memo a mayusculas',false);
end;

if qparte['estat']='F' then
  begin
 IF trim(horaiedit.text)=':' then
  begin
  beep;
  horaiedit.SetFocus;
  abort
  end;

IF trim(horafedit.text)=':' then
  begin
  beep;
  horafedit.SetFocus;
  abort
  end;
  end;

if (qparte['dataf']=null) and
   (qparte['horaf']='  :  ') and
   (qparte['estat']='F') AND
   (MessageDlg('¿Voleu possar pendent aquest part?',
    mtConfirmation, [mbYes,mbNo], 0)=Mryes) THEN
    begin
    qparte['estat']:='P';
    end;

if (qparte['dataf']<>null) and
   (qparte['horaf']<>null) and
   (qparte['estat']<>'F') and
   (qparte['operari']<>null) and
   (MessageDlg('¿Voleu Finalitzar aquest part?',
    mtConfirmation, [mbYes,mbNo], 0)=Mryes) then
    begin
    qparte['estat']:='F';
    qparte['c_operaritanca']:=Mc_operari;
    end;

if trim(horaiedit.text)<>':' then
try
midat:=strtodatetime('01/01/01 '+horaiedit.text);
except;
showmessage('Hora inici incorrecta');
beep;
horaiedit.setfocus;
abort;
end;

if trim(horafedit.text)<>':' then
try
midat:=strtodatetime('01/01/01 '+horafedit.text);
except;
showmessage('Hora fi incorrecta');
beep;
horafedit.setfocus;
abort;
end;


end;

procedure Tusuariform.SpeedButton2Click(Sender: TObject);
var
nom,cognoms,departam:string;
cons:tquery;
begin
{
application.createform(Tnouusuariform,nouusuariform);
with nouusuariform do
  begin
  usuarinou(nom,cognoms,departam);
  end;

if (nom='') or (cognoms='') or (departam='')then exit;
cons:=tquery.create(application);
with cons do
  begin
  databasename:='interna';
  sql.text:='select * from usuaris where nom like "%'+trim(nom)+
  '%" and cognoms like "%'+trim(cognoms)+'%"';
  open;
  if recordcount>0 then
    begin
    showmessage('usuari existent');
    cusuariedit.setfocus;
    cusuariedit.text:=inttostr(cons['c_usuari']);
    end
   else
    begin
    close;
    sql.text:='insert into usuaris (nom,cognoms,c_departam) values '+
    '("'+trim(nom)+'","'+trim(cognoms)+'","'+trim(departam)+'")';
    execsql;
    close;
    sql.text:='select * from usuaris where nom like "%'+trim(nom)+
     '%" and cognoms like "%'+trim(cognoms)+'%"';
    open;
    if recordcount>0 then
      begin
      cusuariedit.setfocus;
      cusuariedit.text:=inttostr(cons['c_usuari']);
      end;
    end;
  end;}
end;

procedure Tusuariform.cusuarieditExit(Sender: TObject);
var
contra:string;
begin
claveedit.visible:=false;
labelnombre.caption:='';

if cusuariedit.text='' then exit;
  qusuaris.close;
  qusuaris.Params[0].asstring:=cusuariedit.text;
  qusuaris.open;

if (qusuaris['conclave']<>null) and (qusuaris['conclave']='S')  then
  begin  // si contraseña activada
  claveedit.visible:=true;
 if ((qusuaris['clave']=null) or (qusuaris['clave']='')) or
 ((qusuaris['reini']<>null) and (qusuaris['reini']='S'))  then
   begin   //11
   application.createform(Tclaveform,claveform);
   claveform.label1.caption:='Clau nova';
   contra:=claveform.clavecorrecta;
   application.createform(Tclaveform,claveform);
   claveform.caption:='';
   claveform.label1.caption:='Confirmeu la clau';

   if claveform.clavecorrecta=contra then
     begin
     qusuaris.edit;
     qusuaris['clave']:=contra;
     qusuaris['reini']:='N';
     qusuaris.post;
     end
     else
     begin
      showmessage('No coincideix');
      beep;
      cusuariedit.SetFocus;
      exit;
     end;
   end     //11
   else
   begin  //1
    application.createform(Tclaveform,claveform);
    if not (uppercase(trim(claveform.clavecorrecta))=uppercase(trim(qusuaris['clave']))) then
      begin
      showmessage('Clau incorrecta');
      beep;
      cusuariedit.SetFocus;
      exit;
      end;
    panelin.ejecutasql;
  end; //1

  end;  // si contraseña activada

if derechos.recordcount=0 then
  panelin.wheretexto:='where p.departam="'+qusuaris['c_departam']+'"';
  panelin.wheretextoantic:=panelin.wheretexto;
  panelin.ejecutasql;
  qparte.Open;
if qusuaris['c_usuari']<>null then
  labelnombre.caption:=trim(qusuaris['nom'])+' '+trim(qusuaris['cognoms']);
end;

procedure Tusuariform.cusuarieditKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then panel1.SetFocus;
end;

procedure Tusuariform.claveeditKeyPress(Sender: TObject; var Key: Char);
begin
  SpeedButton1.visible:=true;
end;

procedure Tusuariform.c_departameditExit(Sender: TObject);
var
mibusca:tquery;
begin
if ID_NIC<>'' then
  begin
  mibusca:=tquery.create(application);
  with mibusca do
    begin
    databasename:='interna';
    sql.text:='select * from departamplaca where placa="'+ID_NIC+
    '"';
    open;
    if recordcount=0 then
      begin //1
      close;
      sql.text:=' insert into departamplaca (c_departam,placa) '+
      ' values ("'+c_departamedit.text+'","'+ID_NIC+'")';
      execsql;
      mic_departam:=c_departamedit.text;
      end //1
    else
      mic_departam:=mibusca['c_departam'];
    free;
    end;
    c_departamedit.visible:=false;
    departamtitul.visible:=false;
   end; // si ID_NIC<>'' 
if derechos.recordcount=0 then
  begin
  panelin.wheretexto:='where p.departam="'+mic_departam+
     '" and estat="P"';
  panelin.wheretextoantic:=panelin.wheretexto;
  panelin.ejecutasql;
  qparte.Open;
  end;
end;

procedure Tusuariform.qparte2BeforeInsert(DataSet: TDataSet);
begin
if nombreedit.text='' then
  begin
  showmessage('Ha d''entrar el nom complert');
  nombreedit.setfocus;
  abort;
  end;
end;

procedure Tusuariform.Panel2Enter(Sender: TObject);
begin
if c_departamedit.Visible then
   c_departamedit.setfocus;
end;

procedure Tusuariform.dataieditDblClick(Sender: TObject);
begin
// peta esta funcion , access violation. Se anula.

{with tdbedit(sender) do
  begin
   if not (datasource.dataset.state in [dsinsert,dsedit]) then
    DataSource.DataSet.edit;
    field.value:=null;
  end;}
end;

procedure Tusuariform.panelinDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
// recalcula colores del grid


with panelin do
  begin


with dbgrid1xlt do
    begin

  // aqui pone los urgentes en rojo
  if (pos('TERMINI',qconsulta.sql.text)>0) and (evitanulo(qconsulta.fieldbyname('termini'))='U') then
     begin
       if (canvas.brush.color<>clhighlight) then
           begin
           canvas.brush.color:=$009297FE;
//           canvas.Font.color:=clYellow;
           end
     end
   else

  // aqui pone los partes de garcilaso en azul

  if (pos('NOMDEPAREAL',qconsulta.sql.text)>0) and (copy(evitanulo(qconsulta.fieldbyname('NOMDEPAREAL')),1,5)='(BCN)') then
       if (canvas.brush.color<>clhighlight) then
           begin
           canvas.brush.color:=$00FDBF97;
           end;

    DefaultDrawColumnCell(Rect, DataCol, Column, State);

    end; // with dbgrid1xlt

    end; // with panelin


end;

procedure Tusuariform.horafeditExit(Sender: TObject);
var
miedit:tedit;
midat:tdatetime;
begin
miedit:=tedit(sender);
if trim(miedit.text)<>':' then
  begin
  try
  midat:=strtodatetime('01/01/01 '+miedit.text);
  except;
  showmessage('hora incorrecta');
  beep;
  miedit.setfocus;
  end;
  end;
end;

procedure Tusuariform.qparteAfterDelete(DataSet: TDataSet);
begin
qparte.refresh;
partestrans.Commit;
panelin.ejecutasql;
qparte.open;
end;

procedure Tusuariform.idrepeeditEnter(Sender: TObject);
begin
idrepeedit.ReadOnly:=((derechos.recordcount=0));
end;

procedure Tusuariform.idrepeeditExit(Sender: TObject);
var
qrepes:tquery;
begin
if (idrepeedit.text<>'') and (qparte.state=dsinsert) then
  begin
  qrepes:=tquery.create(application);
  with qrepes do
    begin
    databasename:='interna';
    sql.text:='select * from partesrepe where  id='+idrepeedit.text;
    open;
    if qrepes['datai']<>null then
      begin
      qparte['motiu']:=qrepes['motiu'];
      qparte['tipo']:=qrepes['tipo'];
      qparte['departam']:=qrepes['c_departams'];
      qparte['deparr']:=qrepes['c_departamr'];
      end;
    datasedit.ReadOnly:=false;
    free;
    end; // with qrepres

  end;
end;

procedure Tusuariform.imprimelo(sender: tobject);
begin
RvDataSetConnection1.DataSet:=panelin.qconsulta;
RvProject1.execute;
end;

procedure Tusuariform.qconsultaopen(dataset: tdataset);
begin
ibquery1.Close;
ibquery1.SQL.Text:=panelin.qconsulta.SQL.text;

end;

procedure Tusuariform.DBComboBox1Enter(Sender: TObject);
begin
dbcombobox1.ReadOnly:=derechos['nivel']<3;
end;

procedure Tusuariform.basepanelpartesBeforeConnect(Sender: TObject);
begin
if not entrabaseparams('MANTENPARTES',basepanelpartes) then
  begin
  mandaerror(application,errorfalso,'No se puede abrir la base de datos',true);
  application.terminate;
  end;
end;

procedure Tusuariform.info1Click(Sender: TObject);
begin
alertaerror.MessageText:='ID_LOGINWIN='+ID_LOGIN+#13+#10+
'ID_LOGINWINWIN='+ID_LOGINWIN+#13+#10+
'ID_NIC='+ID_NIC+#13+#10+
'ID_COMPUTER='+ID_COMPUTER;
alertaerror.Execute;
end;

procedure Tusuariform.tipoeditEnter(Sender: TObject);
begin
if derechos.recordcount=0 then
  begin
  abort;
  exit;
  end;
if (qparte['estat']<>null) and (pos(qparte['estat'],'AF')>0) and (derechos['nivel']<3)then
  begin
  showmessage('No es pot modificar');
  abort;
  end;

end;

procedure Tusuariform.operarieditDblClick(Sender: TObject);
begin
if derechos.recordcount=0 then
  begin
  abort;
  exit;
  end;
if (qparte['estat']<>null) and (pos(qparte['estat'],'AF')>0) and (derechos['nivel']<3)then
  begin
  showmessage('No es pot modificar');
  abort;
  end;
if (not formoperariactivo)  then
  begin
  if (Mc_operari='') then
     begin
     formoperariactivo:=true;
     application.createform(Toperariform,operariform);
     Mc_operari:=operariform.sacaoperari;
     formoperariactivo:=false;
     end;
  end;
  if (Mc_operari='') or not simodifica then
  abort;
end;

procedure Tusuariform.basepanelpartesAfterConnect(Sender: TObject);
begin
if (
pos('NTGUTTMANN7',uppercase(TIBDatabase(sender).DatabaseName) )=0
) then label25.Visible:=true;

end;

end.

