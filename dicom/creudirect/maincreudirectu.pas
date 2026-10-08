unit maincreudirectu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Buttons, RXShell,
   DCM_Connection, DCM_View, DCM_Client, DCM_Server,JvComponentBase,DCM_Attributes,
  JvThreadTimer, Menus, JvAppStorage, JvAppRegistryStorage, JvFormPlacement,
  JvBaseDlg, JvSelectDirectory, IBDatabase, IBCustomDataSet, IBQuery, Variants,
  ExtCtrls,dcm_uid;

type
  Tmaincreudirect = class(TForm)
    Edit1: TEdit;
    ListBox1: TListBox;
    Memo1: TMemo;
    RxTrayIcon1: TRxTrayIcon;
    timer_trespasa: TJvThreadTimer;
    JvFormStorage1: TJvFormStorage;
    JvAppRegistryStorage1: TJvAppRegistryStorage;
    PopupMenu1: TPopupMenu;
    Cerrar1: TMenuItem;
    Button2: TButton;
    JvSelectDirectory1: TJvSelectDirectory;
    SpeedButton1: TSpeedButton;
    baseguttmann: TIBDatabase;
    transguttmann: TIBTransaction;
    timer_solicita_informerx: TJvThreadTimer;
    timerlistadnimal: TJvThreadTimer;
    basecreublanca: TDatabase;
    timer_reenvia_dicom: TJvThreadTimer;
    checkreenviadicom: TCheckBox;
    checktimersolicitainf: TCheckBox;
    check_timertraspasaOLD: TCheckBox;
    timer_control_estado_timers: TJvThreadTimer;
    timercontrolerrorescreu: TJvThreadTimer;
    timer_reintenta: TJvThreadTimer;
    timerlimpialogcreu: TJvThreadTimer;
    labelerror: TLabel;
    SpeedButton6: TSpeedButton;
    exe: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label13: TLabel;
    Label12: TLabel;
    SpeedButton4: TSpeedButton;
    Checktimeruros: TCheckBox;
    Splitter1: TSplitter;
    Edit2: TEdit;
    SpeedButton5: TSpeedButton;
    timerinformesuros: TJvThreadTimer;
    SpeedButton7: TSpeedButton;
    checktimerFSA: TCheckBox;
    SpeedButton8: TSpeedButton;
    Edit3: TEdit;
    timerinformesFSA: TJvThreadTimer;
    SpeedButton9: TSpeedButton;
    checktimerbaclofen: TCheckBox;
    timerinformesbaclofen: TJvThreadTimer;
    Edit4: TEdit;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    checktimerinfer: TCheckBox;
    Edit5: TEdit;
    SpeedButton12: TSpeedButton;
    timerinformesINFER: TJvThreadTimer;
    botonEMG: TSpeedButton;
    checktimerEMG: TCheckBox;
    editrutaemg: TEdit;
    SpeedButton14: TSpeedButton;
    timerEMG: TJvThreadTimer;
    procedure Button1Click(Sender: TObject);
    procedure muevepdfuros;
    procedure muevepdfFSA;
    procedure muevepdfBACLOFEN;
    procedure mueveinformesINFER;
    procedure mueveinformesEMG;

    procedure SpeedButton1Click(Sender: TObject);
    procedure timer_trespasaTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cerrar1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure trazaini(sender:tobject;e:exception);
    procedure RxTrayIcon1DblClick(Sender: TObject);
    procedure baseguttmannBeforeConnect(Sender: TObject);
    procedure timer_solicita_informerxTimer(Sender: TObject);
    procedure timerlistadnimalTimer(Sender: TObject);
   procedure  timer_reenvia_dicomTimer(Sender: TObject);
   procedure  timer_reenvia_dicomTimer_por_intercon(Sender: TObject);
   function enviadicom(servidor, remoteaetitle, localaetitle, studyuid,
       accesionnumber,studydesc: string; puerto: integer): boolean;
   procedure checktimersolicitainfClick(Sender: TObject);
   procedure timer_control_estado_timersTimer(Sender: TObject);
   function TestDcmFileDir(AQuery: TDataset; var AImageDir: string): Boolean;
   function TestFile(Query1: TDataset; basedir: string): string;
   function dameruta(midat: tdatetime): string;
    procedure check_timertraspasaOLDClick(Sender: TObject);
    procedure checkreenviadicomClick(Sender: TObject);
    procedure timercontrolerrorescreuTimer(Sender: TObject);
    procedure timer_reintentaTimer(Sender: TObject);
   procedure timerlimpialogcreuTimer(Sender: TObject);
    procedure r(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ChecktimerurosClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure timerinformesFSATimer(Sender: TObject);
    procedure checktimerFSAClick(Sender: TObject);
    procedure timerinformesbaclofenTimer(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure checktimerbaclofenClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure checktimerinferClick(Sender: TObject);
    procedure timerinformesINFERTimer(Sender: TObject);
    procedure botonEMGClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure timerEMGTimer(Sender: TObject);
    procedure checktimerEMGClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    listadnimal:tstringlist;
    locati:integer;
  end;

var
  maincreudirect: Tmaincreudirect;
  flagprocesando1,flagprocesando2,flagprocesando3,flagprocesando4,flagprocesando5,flagprocesando6,flagprocesando7,flagprocesando8:boolean;

implementation

uses utilinueva;

{$R *.dfm}

procedure Tmaincreudirect.Button1Click(Sender: TObject);
var
losficheros:tstringlist;
minum,mhist,minter:integer;
mnombre,estado,estadodr,accion,fechainformestr:string;
x1,x2:extended;
nomfich,nomfichtemp,nomfichdestino,numfilicreu1,numfilicreu2,carpeta,carpetahccc,destinohccc,rutainfcreu:string;
qint,qexec:tibquery;
micodcreu:string;
begin
if flagprocesando3 then exit;
flagprocesando3:=true;
rutainfcreu:=damedirectori('INFCREU',baseguttmann);
carpetahccc:=damedirectori('INFCREUHCCC',baseguttmann);

if rutainfcreu='' then
  begin
  mandaerror(application,errorfalso,'ruta INFCREU vuida de la tabla DIRECTORIS',false);
  exit;
  end;

if carpetahccc='' then
  begin
  mandaerror(application,errorfalso,'ruta INFCREUHCCC vuida de la tabla DIRECTORIS',false);
  exit;
  end;

if not directoryexists(rutainfcreu) then
  begin  //1
  winexec('net use g: \\gutfs2\dadesg Gut1415926535 /user:Administrador /persistent:yes',sw_normal);
  sleep(10000);
  end;  //1

losficheros:=tstringlist.create;
qint:=tibquery.create(application);
qint.database:=baseguttmann;
qexec:=tibquery.create(application);
qexec.Database:=baseguttmann;

// BUCLE PUBLICACION HC3 INFORMES PRUEBAS ESPECIALES

with qint do
  begin
  close;         //revisa estudios publicados sin informe los ultimos 30 dias
  sql.text:='select dr.c_intercon,i.c_historia,i.data_prova,dr.status  from dicomris dr'+
            ' inner join intercon i on i.c_intercon=dr.c_intercon and I.c_tipus="PROVESP"'+
            ' where dr.c_trans="HC3_PUBLICA"  and dr.status="F" '+
            ' and (dr.codigo_afili_creublanca is null or f_lrtrim(dr.codigo_afili_creublanca)="") and dr.data>"TODAY"-30';
  open;
  while  not eof and (qint['c_intercon']<>null)  do
    begin
    minter:=qint['c_intercon'];
    mhist:=qint['c_historia'];
    losficheros.Text:='';
    // busca en la carpeta hist-hist+500 del paciente todos los de esa historia y luego mira la fecha
    x1:=int(mhist/500)*500;
    x2:=x1+499;
    carpeta:=rutainfcreu+'\'+formatfloat('0',x1)+'-'+formatfloat('0',x2);
    buscaficheros(carpeta,formatfloat('00000',mhist)+'-'+formatfloat('000000',minter)+'-*.pdf',losficheros,false);
    if (qint['data_prova']<>null ) then
      begin  //0
    // si no encuentra con la interconsulta busca solo por historia y cotejara luego la fecha
    if losficheros.count=0 then   buscaficheros(carpeta,inttostr(mhist)+'-*.pdf',losficheros,false);
    for minum:=0 to losficheros.count-1 do
      begin //1
       nomfich:=losficheros.Strings[minum];
       fechainformestr:=formatdatetime('dd/mm/yyyy',  filedatetodatetime(fileage(nomfich)));
    // si fecha coincide y si no tiene parentesis y no encuentra por interconsulita copia fichero a hccc y pone codigo en mensaje dicomris y pone lo ponependiente
    // o si encuentra por interconsulta
       if  ( (fechainformestr=datetostr(qint['data_prova']))  and (pos('(',nomfich)=0) and (pos(')',nomfich)=0) and ( pos(inttostr(mhist)+'-'+inttostr(minter)+'-',nomfich)=0) ) or
         ( pos(inttostr(mhist)+'-'+inttostr(minter)+'-',nomfich)>0)  then
         begin // 2
         micodcreu:='PROVESP'+inttostr(minter);

         //copia el fichero a hccc

          if not DirectoryExists(carpetahccc) then
            begin  //1
            winexec('net use V: /delete',sw_normal);
            sleep(1000);
            winexec('net use V: \\10.168.105.120\c$ Clave1415926535 /user:administrador /persistent:yes',sw_normal);
            sleep(10000);
            end; //1
          nomfichtemp:=quitarcaracteresEsp(nomfich);
          destinohccc:=carpetahccc+'\'+formatfloat('00000',mhist)+'-'+formatfloat('000000',minter)+'-'+'('+micodcreu+')-'+ExtractFileName(nomfichtemp);
          if copyFile(pchar(nomfich),pchar(destinohccc),false) then
            begin
             if (qint['status']='F') then
                begin
                qexec.close;
                qexec.SQL.text:='update dicomris set codigo_afili_creublanca=:codicreu,status="P",STUDY_DESCRIPTION="I" where c_intercon=:c_intercon and c_trans="HC3_PUBLICA"';
                end
             else
                begin
                qexec.close;
                qexec.SQL.text:='update dicomris set codigo_afili_creublanca=:codicreu where c_intercon=:c_intercon and c_trans="HC3_PUBLICA"';
                end;
             qexec.ParamByName('codicreu').asstring:=micodcreu;
             qexec.ParamByName('c_intercon').asinteger:=minter;
             qexec.ExecSQL;
            end;
            break;
         end; //2

      end;  //1  for

     end //0 if data_prova=null
     else // si tiene data_prova null
         if (qint['data_prova']= null ) then
          enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com'
                 ,'Aviso creudirect estudio sin data_prova ','','Estudio sin data_prova hist:'+inttostr(mhist)+' intercon:'+inttostr(minter),'','',false,25);
      if transguttmann.InTransaction then transguttmann.CommitRetaining;
      qint.next;
    end;  //while
    qexec.free;
  end; //with

// FIN  BUCLE PUBLICACION HC3 INFORMES PRUEBAS ESPECIALES

losficheros.Text:='';
buscaficheros(edit1.text,'*.pdf',losficheros,false);
ListBox1.Items:=losficheros;
if losficheros.count<1 then
  begin
  losficheros.free;
  flagprocesando3:=false;
//  check_timertraspasa.Caption:='timer recibe pdf, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
  qint.free;
  estoyvivo(true,'Timer pdf',round(timer_trespasa.interval/60000));
  exit;
  end;


for minum:=0 to losficheros.count-1 do
  begin //1
  nomfich:=losficheros.Strings[minum];
  numfilicreu1:=copy(nomfich,pos('(',nomfich)+1,length(nomfich));
  numfilicreu2:=copy(numfilicreu1,1,pos(')',numfilicreu1)-1);
  if trim(numfilicreu2)='' then continue;
  qint.sql.text:='select d.*,f.nomcomplet from dicomstudies d'+
  ' left join filiacio f on d.c_historia=f.num_hist'+
  ' where totupper(d.codigo_afili_creublanca)='''+uppercase(numfilicreu2)+'''';
  qint.Open;
  if qint['c_historia']<>null then
    begin //2
    minter:=qint['c_intercon'];
    mhist:=qint['c_historia'];
    mnombre:=qint['nomcomplet'];
    estado:=evitanulo(qint.FieldByName('estado_publica_hccc'));
    // falla en <500
    x1:=int(mhist/500)*500;
    x2:=x1+499;
    carpeta:=rutainfcreu+'\'+formatfloat('0',x1)+'-'+formatfloat('0',x2);
    memo1.Lines.add(numfilicreu2+'------g:\usr\infcreu\'+carpeta);
    //comprueba que exista la carpeta destino, sino existe la crea
    if not DirectoryExists(carpeta)  then
    if (pos('G:\USR\',carpeta)=0) then
       begin
       mandaerror(application,errorfalso,'intento de crear carpeta en ubicación incorrecta '+carpeta,false);
       continue;
       end
      else
       CreateDir(carpeta);

    //renombra para comprobar que no esta bloqueado y si no puede salta al siguiente fichero
    nomfichtemp:=copy(nomfich,1,length(nomfich)-4)+'_temp.pdf';
    if not RenameFile(nomfich,nomfichtemp) then
        continue;
    nomfich:=nomfichtemp;
    nomfichdestino:=carpeta+'\'+formatfloat('00000',mhist)+'-'+formatfloat('000000',minter)+' '+ExtractFileName(nomfich);
    cambia('_temp','',nomfichdestino);

    if not DirectoryExists(carpetahccc) then
      begin  //1
      winexec('net use V: /delete',sw_normal);
      sleep(1000);
      winexec('net use V: \\10.168.105.120\c$ Clave1415926535 /user:administrador /persistent:yes',sw_normal);
      sleep(10000);
      end; //1

    destinohccc:=carpetahccc+'\'+formatfloat('00000',mhist)+'-'+formatfloat('000000',minter)+' '+quitarcaracteresEsp(ExtractFileName(nomfich));
    cambia('_temp','',destinohccc);

     //en caso de que envien mas de un pdf para el mismo estudio y si el pdf se llama igual y ya existe le pone numeros de hora
    if FileExists(nomfichdestino) then
     nomfichdestino:=copy(nomfichdestino,1, length(nomfichdestino)-4)+formatdatetime('yymmddhhnnss',now)+'.pdf';




    if FileExists(destinohccc) then
     DeleteFile(destinohccc);


    if copyFile(pchar(nomfich),pchar(nomfichdestino),true) and copyFile(pchar(nomfich),pchar(destinohccc),true) then
       begin //3
    // despues de copiar el informe a la carpeta tiene que indicar que
    // el informe a llegado y la fecha poniendola en campo
    // data_informe_radiologo en dicomstudies

     // comprueba que se haya movido y si no lo se ha movido borra todo y salta

      deletefile(nomfich);

    if  fileexists(nomfich) and not  deletefile(nomfich) then
        begin
        mandaerror(application,errorfalso,'No se puede mover el fichero '+nomfich,false);
        deletefile(nomfichdestino);
        deletefile(destinohccc);

{        mandaerrorporemail(errorfalso,'No se puede mover el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');}
        continue;
      end;

      qint.close;


    // si ya ha enviado un informe a hccc estado_pu....=P cambia el estado y lo pone en M
 //    incidencia 218 hago update por interconsulta para que si tiene mas de un estudio la interconsulta de todos los informes como llegados
 //   qint.sql.text:='update dicomstudies set data_informe_radiologo=''NOW'' where totupper(codigo_afili_creublanca)='''+uppercase(numfilicreu2)+''' and data_informe_radiologo is null';

   qint.sql.text:='update dicomstudies set data_informe_radiologo=''NOW'' where c_intercon='+inttostr(minter)+' and data_informe_radiologo is null';
    qint.ExecSQL;

// publicacion con PACSRAIM
   qint.SQL.text:='select c_intercon,status,study_description,codigo_afili_creublanca from dicomris where c_trans="HC3_PUBLICA" and c_intercon='+inttostr(minter);
   qint.open;
   if qint.Eof and qint.Bof then    // SI NO TIENE REGISTRO CREA UN I porque sino el publicador intentar enviar el studio que es indicador E, con  I no hace nada pero despues pondra E al registrar
                                    // estudio y como tiene codicreu ya pasa todo eetudio e informe
      begin
      qint.close;
      qint.sql.Text:='insert into dicomris (c_historia,data,c_intercon,c_trans,status,study_description,codigo_afili_creublanca) values(:c_historia,"NOW",:c_intercon,"HC3_PUBLICA","I","I",:codicreu)';
      qint.ParamByName('codicreu').asstring:='PROVESP'+uppercase(numfilicreu2);
      qint.ParamByName('c_historia').asinteger:=mhist;
      qint.ParamByName('c_intercon').asinteger:=minter;
      qint.ExecSQL;
      end
   else
     begin
     if qint['codigo_afili_creublanca']<>uppercase(numfilicreu2) then
       begin
      if (qint['status']='F') then
         begin
         qint.close;
         qint.SQL.text:='update dicomris set codigo_afili_creublanca=:codicreu,status="P",STUDY_DESCRIPTION="I" where c_intercon=:c_intercon and c_trans="HC3_PUBLICA" and (codigo_afili_creublanca="" or codigo_afili_creublanca is null)';
         end
      else
         begin
         qint.close;
         qint.SQL.text:='update dicomris set codigo_afili_creublanca=:codicreu where c_intercon=:c_intercon and c_trans="HC3_PUBLICA" and (codigo_afili_creublanca="" or codigo_afili_creublanca is null)';
         end;
      end;


      qint.ParamByName('codicreu').asstring:='PROVESP'+uppercase(numfilicreu2);
      qint.ParamByName('c_intercon').asinteger:=minter;
      qint.ExecSQL;

      end;// si codicreu es diferente al que a encontrado


// FIN DE PUBLICACION CON PACSRAIM


     if estado='P' then
      begin
      qint.SQL.text:='update dicomstudies set estado_publica_hccc="M"'+
      ' where totupper(codigo_afili_creublanca)='''+uppercase(numfilicreu2)+'''';
      qint.execsql;
      end;
      qint.SQL.text:='update intercon set estat=35,data2=''NOW'' WHERE  c_intercon='+inttostr(minter);
      qint.execsql;
      qint.sql.text:='insert into dicomlog2 (ok,datarec,id_paciente,nombre_paciente,tipo_movimiento,c_historia,c_intercon,log)'+
      ' values("S",''NOW'',:idpaciente,:nombre_paciente,:tipo_movimiento,:c_historia,:c_intercon,:log)';
      qint.parambyname('idpaciente').AsString:=inttostr(mhist);
      qint.parambyname('nombre_paciente').AsString:=mnombre;;
      qint.parambyname('tipo_movimiento').AsString:='INFORMERECIBIDO';
      qint.ParamByName('c_historia').asstring:=inttostr(mhist);
      qint.ParamByName('c_intercon').asstring:=inttostr(minter);
      qint.ParamByName('log').asstring:='Informe en '+nomfichdestino;
      qint.execsql;

    // despues lo borra de la carpeta recepcion general
{      if not deleteFile(pchar(nomfich)) then
        begin
        mandaerror(application,errorfalso,'No se puede borrar el fichero '+nomfich,true);
        mandaerrorporemail(errorfalso,'No se puede borrar el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');
        end;}
      end //3
      else
      begin
        deletefile(nomfichdestino);
        deletefile(destinohccc);
        mandaerror(application,errorfalso,'No se puede mover el fichero '+nomfich,false);
{        mandaerrorporemail(errorfalso,'No se puede mover el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');
}
      end;

    end; //2 qint['c_historia']<>null

  end; //1 for

if transguttmann.InTransaction then transguttmann.CommitRetaining;







flagprocesando3:=false;
qint.close;
qint.Free;
losficheros.free;
estoyvivo(true,'Timer pdf',round(timer_trespasa.interval/60000));
//check_timertraspasa.Caption:='timer recibe pdf, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
end;



procedure Tmaincreudirect.muevepdfuros;
var
losficheros:tstringlist;
minum,mhist,minter:integer;
mnombre,numhist,nomfich,nomfich2,nomfichdestino,carpetaraiz,carpetauro,carpeta,carpetahccc,destinohccc,anio,mes,dia,parte:string;
fechainformestr:string;
x1,x2:extended;
midat:tdatetime;

qint:tibquery;
begin
if flagprocesando4 then exit;
flagprocesando4:=true;

carpetauro:=damedirectori('INFORMES_URO',baseguttmann);
if carpetauro='' then
  begin
  mandaerror(application,errorfalso,'ruta INFORMES_URO vuida de la tabla DIRECTORIS',false);
  exit;
  end;

if not directoryexists(carpetauro) then
  begin  //1
  winexec('net use g: \\gutfs2\dadesg Gut1415926535 /user:Administrador /persistent:yes',sw_normal);
  sleep(10000);
  end;  //1

carpetahccc:=damedirectori('LABORATORI_HC3_DESTI',baseguttmann);

if carpetahccc='' then
  begin
  mandaerror(application,errorfalso,'ruta LABORATORI_HC3_DESTI vuida de la tabla DIRECTORIS',false);
  exit;
  end;

losficheros:=tstringlist.create;
buscaficheros(carpetauro,'*.pdf',losficheros,false);
ListBox1.Items:=losficheros;
if losficheros.count<1 then
  begin
  losficheros.free;
  flagprocesando4:=false;
  Checktimeruros.Caption:='timer recibe pdf uros, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
  estoyvivo(true,'Timer pdf uros',round(timerinformesuros.interval/60000));
  exit;
  end;
qint:=tibquery.create(application);
qint.database:=baseguttmann;


for minum:=0 to losficheros.count-1 do
  begin //1
  nomfich:='';
  nomfich2:='';
  anio:='';
  mes:='';
  dia:='';
  nomfich:=losficheros.Strings[minum];
  nomfich2:=extractfilename(nomfich);
  numhist:=copy(nomfich2,1,pos('-',nomfich2)-1);
  parte:=copy(nomfich2,pos('-',nomfich2)+1,length(nomfich2));
  anio:=copy(parte,1,4);
  mes:=copy(parte,6,2);
  dia:=copy(parte,9,2);
  fechainformestr:=dia+'.'+mes+'.'+anio;

  try
  midat:=strtodate(dia+'/'+mes+'/'+anio);
  except
  fechainformestr:=formatdatetime('dd.mm.yyyy',  filedatetodatetime(fileage(nomfich)));
  end;


  if trim(numhist)='' then continue;
  qint.sql.text:='select i.*,f.nomcomplet,f.tsi from intercon i'+
  ' inner join filiacio f on i.c_historia=f.num_hist '+
  ' where i.c_historia='+numhist+
   ' and   ("' +fechainformestr+'" BETWEEN f_date0(DATA1) and DATA_PROVA or f_date0(data_prova) = "'+fechainformestr+'")'+
   ' and i.c_tipus="UROS"';

  qint.Open;
  if qint['c_historia']<>null then
    begin //2
    minter:=qint['c_intercon'];
    mhist:=qint['c_historia'];
    mnombre:=qint['nomcomplet'];
    x1:=int(mhist/500)*500;
    x2:=x1+499;
    carpeta:=carpetauro+'\'+formatfloat('0',x1)+'-'+formatfloat('0',x2);
    memo1.Lines.add(numhist+'------'+carpetauro+'---->'+carpeta);
    //comprueba que exista la carpeta destino, sino existe la crea
    if not DirectoryExists(carpeta)  then
    if (pos('G:\USR\',carpeta)=0) then
       begin
       mandaerror(application,errorfalso,'intento de crear carpeta en ubicación incorrecta '+carpeta,false);
       continue;
       end
      else
       CreateDir(carpeta);
    cambia(',','',mnombre);
    cambia('*','',mnombre);
    cambia('?','',mnombre);
    cambia('>','',mnombre);
    cambia('<','',mnombre);
    cambia('|','',mnombre);
    cambia('/','',mnombre);
    cambia('\','',mnombre);


    nomfichdestino:=carpeta+'\'+formatfloat('00000',mhist)+'-'+formatfloat('000000',minter)+'-'+mnombre+'.pdf';

    // copia en HCCC


  if (evitanulo(qint.fieldbyname('tsi'))<>'') then   // tiene que tener tsi
    begin
    if not directoryexists(carpetahccc) then
      begin  //1
       winexec('net use V: /delete',sw_normal);
        sleep(1000);
        winexec('net use V: \\10.168.105.120\c$ Clave1415926535 /user:administrador /persistent:yes',sw_normal);
        sleep(10000);
      end;  //1
    destinohccc:=carpetahccc+'\H'+formatfloat('00000',mhist)+'I'+formatfloat('000000',minter)+'URO.pdf';
    if FileExists(destinohccc) then
    DeleteFile(destinohccc);
    if not copyFile(pchar(nomfich),pchar(destinohccc),true) then
       begin
       mandaerror(application,errorfalso,'No se puede copiar el fichero el fichero '+nomfich+' a HCCC',false);
{       mandaerrorporemail(errorfalso,'No se puede copiar el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');}
       end;

    end; // si tiene TSI




  //en caso de que envien mas de un pdf para el mismo estudio y si el pdf se llama igual y ya existe le pone numeros de hora
    if FileExists(nomfichdestino) then nomfichdestino:=copy(nomfichdestino,1, length(nomfichdestino)-4)+formatdatetime('yymmddhhnnss',now)+'.pdf';
    moveFile(pchar(nomfich),pchar(nomfichdestino));



    if  NOT FileExists(nomfichdestino) then
      begin //3
       mandaerror(application,errorfalso,'No se puede mover el fichero '+nomfich,FALSE);
{       mandaerrorporemail(errorfalso,'No se puede mover el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');}
      continue

      END;

      qint.SQL.text:='update intercon set informerx="U" WHERE c_intercon='+inttostr(minter);
      qint.execsql;


    end; //2 qint['c_historia']<>null

  end; //1 for

if transguttmann.InTransaction then transguttmann.CommitRetaining;
flagprocesando4:=false;
qint.close;
qint.Free;
losficheros.free;
estoyvivo(true,'Timer pdf uros',round(timerinformesuros.interval/60000));
Checktimeruros.Caption:='timer recibe pdf uros, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);

end;


procedure Tmaincreudirect.muevepdfFSA;
var
losficheros:tstringlist;
minum,mhist,minter,numinterint,numhistint:integer;
mnombre,numhist,numinter,nomfich,nomfich2,nomfichdestino,carpetafsa,carpeta,carpetahccc,destinohccc:string;
fechainformestr:string;
x1,x2:extended;

qint:tibquery;
begin
if flagprocesando5 then exit;
flagprocesando5:=true;

carpetahccc:=damedirectori('LABORATORI_HC3_DESTI',baseguttmann);

if carpetahccc='' then
  begin
  mandaerror(application,errorfalso,'ruta LABORATORI_HC3_DESTI vuida de la tabla DIRECTORIS',false);
  exit;
  end;

carpetafsa:=damedirectori('INFORMES_FSA',baseguttmann);
if carpetafsa='' then
  begin
  mandaerror(application,errorfalso,'ruta INFORMES_FSA vuida de la tabla DIRECTORIS',false);
  exit;
  end;

if not directoryexists(carpetafsa) then
  begin  //1
  winexec('net use g: \\gutfs2\dadesg Gut1415926535 /user:Administrador /persistent:yes',sw_normal);
  sleep(10000);
  end;  //1


losficheros:=tstringlist.create;
buscaficheros(carpetafsa,'*.pdf',losficheros,false);
ListBox1.Items:=losficheros;
if losficheros.count<1 then
  begin
  losficheros.free;
  flagprocesando5:=false;
  checktimerFSA.Caption:='timer recibe pdf FSA, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
  estoyvivo(true,'Timer pdf FSA',round(timerinformesFSA.interval/60000));
  exit;
  end;



qint:=tibquery.create(application);
qint.database:=baseguttmann;


for minum:=0 to losficheros.count-1 do
  begin //1
  nomfich:='';
  nomfich2:='';
  nomfich:=losficheros.Strings[minum];
  nomfich2:=extractfilename(nomfich);
  cambia(' ','',nomfich2); // quita todos los espacios
  numhist:=trim(copy(nomfich2,1,pos('-',nomfich2)-1));
  cambia(numhist+'-','',nomfich2);  // quita la historia
  // busca si tiene la interconsulta
  numinter:='';
  if pos('-',nomfich2)> 0 then
     begin
     numinter:=trim(copy(nomfich2,1,pos('-',nomfich2)-1));
     try
     numinterint:=strtoint(numinter);
     except
     numinter:='';
     end;
     cambia(numinter+'-','',nomfich2);
     end
    else
     begin

     end;

   if  not trystrtoint(numhist,numhistint) then numhistint:=0;

   if (numhistint=0) and (numinterint=0) then continue;

  fechainformestr:=copy(nomfich2,1,8);
  try
  fechainformestr:=formatdatetime('dd.mm.yyyy',strtodate(copy(nomfich2,7,2)+'/'+copy(nomfich2,5,2)+'/'+copy(nomfich2,1,4)));
  except;
  fechainformestr:=formatdatetime('dd.mm.yyyy',  filedatetodatetime(fileage(nomfich)));
  end;

  if numinterint=0 then // si solo tiene historia en el nombre de fichero busca por las fechas de la interconsulta
  qint.sql.text:='select i.*,f.nomcomplet,f.tsi from intercon i'+
  ' inner join filiacio f on i.c_historia=f.num_hist '+
  ' where i.c_historia='+numhist+
   ' and  estat<28 and  ("' +fechainformestr+'" BETWEEN f_date0(DATA1) and DATA_PROVA or f_date0(data_prova) = "'+fechainformestr+'"  or (f_date0(DATA1)<="'+fechainformestr+'"  and  data_prova is null )    )'+
   ' and i.c_tipus="FSA"'
   else // si tiene la interconsulta en el nombre de fichero busca por interconsulta e historia
  qint.sql.text:='select i.*,f.nomcomplet,f.tsi from intercon i'+
  ' inner join filiacio f on i.c_historia=f.num_hist '+
  ' where i.c_intercon='+numinter+' and c_historia='+numhist;


  qint.Open;
  if qint['c_historia']<>null then
    begin //2
    minter:=qint['c_intercon'];
    mhist:=qint['c_historia'];
    mnombre:=qint['nomcomplet'];
    x1:=int(mhist/500)*500;
    x2:=x1+499;
    carpeta:=carpetafsa+'\'+formatfloat('0',x1)+'-'+formatfloat('0',x2);
    memo1.Lines.add(numhist+'------'+carpetafsa+'---->'+carpeta);
    //comprueba que exista la carpeta destino, sino existe la crea
    if not DirectoryExists(carpeta)  then
    if (pos('G:\USR\',carpeta)=0) then
       begin
       mandaerror(application,errorfalso,'intento de crear carpeta en ubicación incorrecta '+carpeta,false);
       continue;
       end
      else
       CreateDir(carpeta);
    cambia(',','',mnombre);
    cambia('*','',mnombre);
    cambia('?','',mnombre);
    cambia('>','',mnombre);
    cambia('<','',mnombre);
    cambia('|','',mnombre);
    cambia('/','',mnombre);
    cambia('\','',mnombre);    


    nomfichdestino:=carpeta+'\'+formatfloat('00000',mhist)+'-'+formatfloat('000000',minter)+'-'+mnombre+'.pdf';


    // copia en HCCC

//  10.11.2017 DESACTIVADO MODULO QUE COPIA A HCCC , QUITAR COMENTADO PARA ACTIVAR , ESTA OK SIN PROBAR

// 20/06/2018 activado modulo de copia a HCCC


  if (evitanulo(qint.fieldbyname('tsi'))<>'') then   // tiene que tener tsi
    begin
    if not directoryexists(carpetahccc) then
      begin  //1
       winexec('net use V: /delete',sw_hide);
        sleep(1000);
        winexec('net use V: \\10.168.105.120\c$ Clave1415926535 /user:administrador /persistent:yes',sw_hide);
        sleep(10000);
      end;  //1
    destinohccc:=carpetahccc+'\H'+formatfloat('00000',mhist)+'I'+formatfloat('000000',minter)+'FSA.pdf';
    if FileExists(destinohccc) then
    DeleteFile(destinohccc);
    if not copyFile(pchar(nomfich),pchar(destinohccc),true) then
       begin
       mandaerror(application,errorfalso,'No se puede copiar el fichero el fichero '+nomfich+' a HCCC',false);
       mandaerrorporemail(errorfalso,'No se puede copiar el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');
       end;

     end; // si tiene TSI

    //en caso de que envien mas de un pdf para el mismo estudio y si el pdf se llama igual y ya existe le pone numeros de hora

    if FileExists(nomfichdestino) then nomfichdestino:=copy(nomfichdestino,1, length(nomfichdestino)-4)+formatdatetime('yymmddhhnnss',now)+'.pdf';
    moveFile(pchar(nomfich),pchar(nomfichdestino));
    if  NOT FileExists(nomfichdestino) then
      begin //3
       mandaerror(application,errorfalso,'No se puede mover el fichero '+nomfich,FALSE);
{       mandaerrorporemail(errorfalso,'No se puede mover el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');}
      continue

      END;
{  no se que estado hay que poner para que se ponga como realizada

en curso clinico pone la linea de ver informe asi :
            // Si ja està fet l'informe, afegir-ho per a poder fer el link
            if  (FieldByName('Estat').AsInteger >= 28) and (FieldByName('Estat').AsInteger <> 80)
            and (FieldByName('Diag_definitiu').AsString <> 'No procedeix') then
            begin
                L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure informe(s) ' + #1 + 'ul0' + #1 + 'b0' +
                                          #1 + 'cf16 [' + FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine + NLine;
            if (DataSet = qInterConMarxa) then
               if  (vartype(qinterconvideos['filename'])>1 ) then
                L := L + NLine + #1 + 'cf6'+ #1 + 'ul' + #1 + 'b Veure video(s) ' + #1 + 'ul0' + #1 + 'b0' +
                                          #1 + 'cf16 [' + FieldByName('C_Intercon').AsString + '] ' + #1 + 'cf0 '  + NLine + NLine;

hay que ponerle estado 28 que significa prueba realizada pendiente de reponder pero solo en el caso que el estado sea <28
tambien se tendria que poner data_prova si data prova es null,  ahora no se pone data prova
cuando esta contestada el estado es 90, todas las cerradas es estado 90, las anuladas son 80

para que se vea el link tiene que estar en estado >=28 <>80

}
      qint.SQL.text:='update intercon set estat=28 WHERE c_intercon='+inttostr(minter)+' and estat<28';
      qint.execsql;
      qint.SQL.text:='update intercon set data_prova="'+fechainformestr+'" WHERE c_intercon='+inttostr(minter)+' and data_prova is null';
      qint.execsql;


     { dejo pendiente que se guarde log de proceso de informe de uros
      qint.sql.text:='insert into dicomlog2 (ok,datarec,id_paciente,nombre_paciente,tipo_movimiento,c_historia,c_intercon,log)'+
      ' values("S",''NOW'',:idpaciente,:nombre_paciente,:tipo_movimiento,:c_historia,:c_intercon,:log)';
      qint.parambyname('idpaciente').AsString:=inttostr(mhist);
      qint.parambyname('nombre_paciente').AsString:=mnombre;;
      qint.parambyname('tipo_movimiento').AsString:='INFORMERECIBIDO';
      qint.ParamByName('c_historia').asstring:=inttostr(mhist);
      qint.ParamByName('c_intercon').asstring:=inttostr(minter);
      qint.ParamByName('log').asstring:='Informe en '+nomfichdestino;
      qint.execsql; }




  //    end;


    end; //2 qint['c_historia']<>null
  if transguttmann.InTransaction then transguttmann.CommitRetaining;
  end; //1 for


flagprocesando5:=false;
qint.close;
qint.free;
losficheros.free;
estoyvivo(true,'Timer pdf FSA',round(timerinformesFSA.interval/60000));
checktimerFSA.Caption:='timer recibe FSA, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);

end;






procedure Tmaincreudirect.SpeedButton1Click(Sender: TObject);
begin
//if opendialog1.Execute then edit1.text:=opendialog1.GetNamePath;
JvSelectDirectory1.InitialDir:=edit1.text;
if JvSelectDirectory1.Execute then edit1.text:=JvSelectDirectory1.Directory;
end;

procedure Tmaincreudirect.timer_trespasaTimer(Sender: TObject);
begin
Button1Click(Sender);
end;

procedure Tmaincreudirect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
self.Visible:=false;
action:=canone;
end;

procedure Tmaincreudirect.Cerrar1Click(Sender: TObject);
begin
application.terminate;
end;

procedure Tmaincreudirect.Button2Click(Sender: TObject);
begin
//memo1.Lines.SaveToFile('logcreudirect'+formatdatetime('yyyymmddhhnnss',now)+'.txt');
application.terminate;
end;

procedure Tmaincreudirect.FormCreate(Sender: TObject);
begin
application.onexception:=trazaini;
timer_reintentaTimer(sender);
end;

procedure Tmaincreudirect.trazaini  (sender: tobject; e: exception);
begin
flagprocesando2:=false;
flagprocesando3:=false;
flagprocesando1:=false;
mandaerror(application,errorfalso,e.Message,false);
timer_reintenta.Enabled:=true;
labelerror.Caption:=datetimetostr(now)+' fallo '+e.Message+'... reintentando, timer reintenta activado';

end;

procedure Tmaincreudirect.RxTrayIcon1DblClick(Sender: TObject);
begin
self.visible:=not self.visible;
end;

procedure Tmaincreudirect.baseguttmannBeforeConnect(Sender: TObject);
begin
if not entrabaseparams('GUTTMANN_REAL',baseguttmann) then
  begin
  mandaerror(application,errorfalso,'No se puede abrir la base de datos',true);
  application.terminate;
  end;
end;


procedure Tmaincreudirect.timer_solicita_informerxTimer(Sender: TObject);
var
mcue,mcue2:tibquery;
querycb:tquery;
dni,dnimal:string;
idpaci:integer;
misolicita:string;
begin
if flagprocesando1 then exit;
flagprocesando1:=true;

mcue:=tibquery.Create(application);
mcue.database:=baseguttmann;

  mcue.sql.text:= 'select i.c_intercon,i.c_historia,t.c_prestacio,i.urgent,i.solicita,f.apellido1,'+
  ' f.apellido2,f.nombre,f.dni,f.sexo,f.fecha_nac,m.metge,d.studyuid,p.n_prestacio,d.STUDIES_IMAGE_TYPE'+
  ' ,di.BODYPART,ft.cdi from intercon i'+
  ' inner join interconrx ir on ir.c_intercon=i.c_intercon and ir.c_provarx<>14'+
  ' inner join dicomstudies d on i.c_intercon=d.c_intercon and d.studyuid is not null and (d.enviado_radiologo_ok in ("N","F") or d.enviado_radiologo_ok is null)'+
  ' inner join dicomimages di on d.studyuid=di.studyuid'+
  ' inner join filiacio f on i.c_historia=f.num_hist'+
  ' left join fili_tdi ft on ft.c_historia=f.num_hist and ft.tdi="DNE"'+
  ' left join metges m on i.c_metge1=m.codi'+
  ' left join tractaments t on i.c_tractament=t.c_tractament'+
  ' left join prestacion p on t.c_prestacio=p.c_prestacio'+
  ' where i.c_tipus="RX" and i.informerx="C" and i.estat="52"'+ //32 realizada o 52 entrada estadistica
  ' and d.studyuid not in (select studyuid from dicomimages where studyuid=d.studyuid and imagetype in ("RF","CT","US","RM","XA"))';

  mcue.open;


  if vartype(mcue['c_historia'])>1 then
    begin  //1
    mcue.first;
    mcue2:=tibquery.create(application);
    mcue2.Database:=baseguttmann;
    querycb:=tquery.create(application);
    querycb.DatabaseName:='internacb';

    while not mcue.eof do
      begin //2
      // crear un estado nuevo en la interconsulta 32 y lo ponemos en 34 ejm para indicar que esta solicitado el informe externamente y asi no
      // sigue pidiendolo y mirandolo
      // c_estat 34 informe radiologo solicitado pendiente de recibir
      // c_estat 35 informe radiologo ya realizado

     {03/06/2011 cambios politicos. Se tiene que convivir con informes de radilogo de guttmann
     en el campo informerx en vez de S se mirara cuando sea C para diferenciar los que se
     piden para el radiologo de creublanca de los de guttmann que tendran S, estos no se prodesan }



     // comprueba el DNI

      // 25/08/2011 en el campo dni ponen tambien pasaporte
         // si no es dni porque no pasa funcion de comprobacion lo pasa como
         // id alternativo
         // mira si esta vacio el campo
         // si esta vacio no se puede enviar

     dni:='';
     dnimal:='';
     if (mcue['dni']<>null) and (mcue['dni']<>'')  then
         begin //1
          try
             if NIFOk(mcue['dni']) then dni:=mcue['dni']
               else
                if (mcue['cdi']<>null) and (mcue['cdi']<>'') then dnimal:=mcue['cdi']
                 else  dnimal:=mcue['dni'];
           except
               if (mcue['cdi']<>null) and (mcue['cdi']<>'') then dnimal:=mcue['cdi']
                 else  dnimal:=mcue['dni'];
           end;
          end //1
          else
          if (mcue['cdi']<>null) and (mcue['cdi']<>'') then  dnimal:=mcue['cdi'];

{          else
        begin
        mcue.Next;
        logcreu.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' paciente sin dni '+mcue.fieldbyname('c_historia').asstring);
        mandaerror2(application,errorfalso,' paciente sin dni '+mcue.fieldbyname('c_historia').asstring,false,3);
        enviaemail(editservidorsmtp.text,editemailremite.text,editemaildnimal.text,
         ' paciente sin dni '+mcue.fieldbyname('c_historia').asstring,
          '',' paciente sin dni '+mcue.fieldbyname('c_historia').asstring+#13+#10+ 'Aviso desde '+ID_COMPUTER+#13+#10,
          '','',false,25);


        continue;
        end;          }



      if (dni='') and (dnimal='')  then
       begin

        if (listadnimal = nil) then listadnimal:=tstringlist.create;

        if  not listadnimal.find(mcue.fieldbyname('c_historia').asstring,locati) then
          begin
          listadnimal.add(mcue.fieldbyname('c_historia').asstring);
          memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' paciente sin dni '+mcue.fieldbyname('c_historia').asstring);
          if not timerlistadnimal.enabled then    timerlistadnimal.enabled:=true;
          end;
        mcue.Next;
        estoyvivo(true,'timer solicita informe',round(timer_solicita_informerx.Interval/60000));
        continue;
        end;


     // fin de comprobacion de DNI


     with querycb do
        begin //3




     if not basecreublanca.Connected then
       begin
         try
         basecreublanca.open;
         except
         memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' fallo conectando MYSQL creublanca ');
         flagprocesando1:=false;
         mcue.free;
         mcue2.free;
         querycb.Free;
         exit;
         end; //try conecta cd
       end;

      //añade la cabecera y peticion y si no existe la peticion


      Close;
      sql.Text:='select * from peticion  where study_uid='''+mcue['studyuid']+''' and estado_error_cb=0';
      open;

      if (vartype(querycb['historia_clinica_mutua'])<2) then
        begin //4b

       // mira si no existe peticion con esa interconsulta para añadir el paciente, mira tambien que no tenga error
       // si tiene error es como si no existiera.

        Close;
        sql.Text:='select * from peticion  where interconsulta_mutua='''+inttostr(mcue['c_intercon'])+''' and estado_error_cb=0';
        open;
        if (vartype(querycb['historia_clinica_mutua'])<2) then
          begin // #3



          try //t1
          memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+'   encontradas '+inttostr(mcue.recordcount)+' interconsultas con peticion de informe a creu blanca');
          close;
          sql.text:='start transaction';
          execsql;
          Close;
          SQL.text:='insert into paciente (numero_asegurado_mutua,historia_clinica_mutua,dni_mutua,id_alternativo_mutua,apellido1_mutua,apellido2_mutua,'
          +' nombre_mutua,sexo_mutua,fecha_nacimiento_mutua,fecha_alta_mutua)'+
          ' values (:numero_asegurado_mutua,:historia_clinica_mutua,:dni_mutua,:id_alternativo_mutua,:apellido1_mutua,:apellido2_mutua,'
          +' :nombre_mutua,:sexo_mutua,:fecha_nacimiento_mutua,now())';
          ParamByName('historia_clinica_mutua').asstring:=mcue['c_historia'];
          Parambyname('dni_mutua').asstring:=dni;
          Parambyname('id_alternativo_mutua').asstring:=dnimal;
          Parambyname('apellido1_mutua').asstring:=mcue['apellido1'];
          Parambyname('apellido2_mutua').asstring:=mcue['apellido2'];
          Parambyname('nombre_mutua').asstring:=mcue['nombre'];
          Parambyname('numero_asegurado_mutua').asstring:=mcue['c_historia'];
          if mcue['sexo']='D' then
            Parambyname('sexo_mutua').asstring:='H'
            else if mcue['sexo']='H' then Parambyname('sexo_mutua').asstring:='V'
            else Parambyname('sexo_mutua').asstring:='';
          Parambyname('fecha_nacimiento_mutua').asstring:=formatdatetime('yyyy-mm-dd',mcue.fieldbyname('fecha_nac').asdatetime);
          execsql;
         memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' insertando paciente en tabla paciente '+mcue.fieldbyname('c_historia').asstring+' creu blanca');
          close;
//          sql.text:='select last_insert_id() as ultimid' ; 12/02/2014 quitado no funciona bien sale 0 muchas veces y se ha creado en realidad
            sql.text:='select max(id) as ultimid from paciente';
          open;
          idpaci:=querycb['ultimid'];
        except // si falla la comunicacion con cb aborta el proceso
        on e:exception do
          begin
          sql.Text:='rollback';
          execsql;
          memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' fallo insertando paciente en tabla paciente '+mcue.fieldbyname('c_historia').asstring+' creu blanca'+#13+#10+'Error: '+e.Message);
          mandaerrorporemail(e,'Fallo insertando paciente en tabla paciente '+mcue.fieldbyname('c_historia').asstring+' creu blanca'+#13+#10+'Error: '+e.Message,false,'10.168.105.45','avisos@guttmann.com','informatica@guttmann.com,admissions@guttmann.com','','');
          mandaerror2(application,e,'Fallo insertando paciente en tabla paciente '+mcue.fieldbyname('c_historia').asstring+' creu blanca',false,2);
          if mcue2.Database.DefaultTransaction.InTransaction then mcue2.Database.DefaultTransaction.Rollback;
{          flagprocesando1:=false;
          mcue.free;
          mcue2.free;
          querycb.Free;
          exit;        }
          mcue.next;
          continue;
          end;
        end; // try

      end // #3

     else
          idpaci:=querycb['paciente_id']; // si esa interconsuta ya tiene ficha de paciente creada
                                        // es una peticion pero tiene varios estudios de imagenes asociados, caso raro

        if idpaci=0 then
          begin
          sql.Text:='rollback';
          execsql;
          memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' fallo al insertar paciente en tabla paciente, id 0 '+mcue.fieldbyname('c_historia').asstring+' creu blanca');
          if mcue2.Database.DefaultTransaction.InTransaction then mcue2.Database.DefaultTransaction.Rollback;
          flagprocesando1:=false;
          mcue.free;
          mcue2.free;
          querycb.Free;
          exit;
          end;

        close;
        sql.text:='insert into peticion (numero_asegurado_mutua,codigo_autorizacion_mutua,paciente_id,historia_clinica_mutua'+
        ',interconsulta_mutua,fecha_solicitud_mutua,tipo_peticion_mutua,'+
        'codigo_prueba_solicitada_mutua,codigo_prueba_realizada_mutua, descripcion_prueba_solicitada_mutua,'+
        'inf_adicional_prueba_mutua, medico_solicitud_mutua,study_uid,modality_mutua,body_part_mutua) '+

        ' values (:numero_asegurado_mutua,:codigo_autorizacion_mutua,:paciente_id,:historia_clinica_mutua'+
        ',:interconsulta_mutua,now(),:tipo_solicitud_mutua,'+
        ':codigo_prueba_solicitada_mutua,:codigo_prueba_realizada_mutua,:descripcion_prueba_solicitada_mutua,'+
        ':inf_adicional_prueba_mutua, :medico_solicitud_mutua,:study_uid,:modality_mutua,:body_part_mutua)';
        misolicita:=mcue['solicita'];
        cambia('',' ',misolicita);
        ParamByName('historia_clinica_mutua').asstring:=mcue['c_historia'];
        Parambyname('numero_asegurado_mutua').asstring:=mcue['c_historia'];
        Parambyname('codigo_autorizacion_mutua').asstring:=mcue['c_intercon'];
        ParamByName('paciente_id').asinteger:=idpaci;
        ParamByname('interconsulta_mutua').asstring :=mcue['c_intercon'];
        if mcue['urgent']='S' then  ParamByname('tipo_solicitud_mutua').AsString:='INFURG' else  ParamByname('tipo_solicitud_mutua').AsString:='INF';
        Parambyname('medico_solicitud_mutua').asstring:=mcue['metge'];
        parambyname('codigo_prueba_realizada_mutua').AsString:=mcue['c_prestacio'];
        parambyname('codigo_prueba_solicitada_mutua').AsString:='informe';
        parambyname('descripcion_prueba_solicitada_mutua').AsString:=mcue['n_prestacio'];
        parambyname('inf_adicional_prueba_mutua').AsString:=mcue['solicita'];
        Parambyname('study_uid').AsString:=mcue['studyuid'];
        Parambyname('modality_mutua').AsString:=mcue['STUDIES_IMAGE_TYPE'];
        Parambyname('body_part_mutua').AsString:=mcue['BODYPART'];
        try
        execsql;
        sql.text:='update  paciente set peticion_finalizada_mutua=1 where id='+inttostr(idpaci);
        execsql;
        sql.text:='update  peticion set peticion_finalizada_mutua=1 where study_uid='''+mcue['studyuid']+'''';
        execsql;


        memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' insertando en tabla peticion '+mcue.fieldbyname('c_intercon').asstring+' creu blanca');
       except // si falla la comunicacion con cb aborta el proceso
          on e:exception do
            begin
            sql.Text:='rollback';
            execsql;
            memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' fallo insertando peticion '+mcue.fieldbyname('c_historia').asstring+' creu blanca'+#13+#10+'Error: '+e.message);
            if mcue2.Database.DefaultTransaction.InTransaction then mcue2.Database.DefaultTransaction.Rollback;
            mandaerrorporemail(e,'Fallo insertando peticion '+mcue.fieldbyname('c_historia').asstring+' creu blanca'+#13+#10+'Error: '+e.Message,false,'10.168.105.45','avisos@guttmann.com','informatica@guttmann.com,admissions@guttmann.com','','');
            mandaerror2(application,e,'Fallo insertando peticion paciente '+mcue.fieldbyname('c_historia').asstring+' creu blanca',false,2);
            if mcue2.Database.DefaultTransaction.InTransaction then mcue2.Database.DefaultTransaction.CommitRetaining;
  {         flagprocesando1:=false;
            mcue.free;
            mcue2.free;
            querycb.Free;
            exit;               }
            mcue.Next;
            continue;
            end;
          end; // try

        if not transguttmann.InTransaction then  transguttmann.StartTransaction;
        // si todo lo anterior a funcionado pone el estudio dicom como enviado
        mcue2.close;
        mcue2.sql.text:=' update intercon set estat=''34'' where c_intercon='+inttostr(mcue['c_intercon']);
        mcue2.execsql;
        mcue2.sql.text:=' update dicomstudies set  enviado_radiologo_ok=''P'' where c_intercon='+inttostr(mcue['c_intercon']); //pone estado de peticion P pendiente
        mcue2.execsql;
        memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' interconsulta '+inttostr(mcue['c_intercon'])+' pasa a estado 34');




        try

        sql.text:='commit';
        execsql;

        if mcue2.Database.DefaultTransaction.InTransaction then mcue2.Database.DefaultTransaction.CommitRetaining;



        except; // si falla la comunicacion con cb aborta el proceso
        sql.Text:='rollback';
        execsql;
        memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' fallo al enviar transaccion '+mcue.fieldbyname('c_historia').asstring+' creu blanca');
        if mcue2.Database.DefaultTransaction.InTransaction then mcue2.Database.DefaultTransaction.Rollback;
        flagprocesando1:=false;
        mcue.free;
        mcue2.free;
        querycb.Free;
        exit;
        end; // try



        end //4b
      else
        begin // 4c  la peticion ya esta creada  en creu, cambia el estado de la interconsulta
        end;
        mcue2.close;
        mcue2.sql.text:=' update intercon set estat=''34'' where c_intercon='+inttostr(mcue['c_intercon']);
        mcue2.execsql;
        mcue2.sql.text:=' update dicomstudies set  enviado_radiologo_ok=''P'' where c_intercon='+inttostr(mcue['c_intercon']); //pone estado de peticion P pendiente
        mcue2.execsql;
        if mcue2.Database.DefaultTransaction.InTransaction then mcue2.Database.DefaultTransaction.CommitRetaining;
        memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' interconsulta '+inttostr(mcue['c_intercon'])+' pasa a estado 34');
        end; //3 with querycb


        // cambia el estado de la interconsulta
       mcue.Next;
      end; //2 while
    end;  //1


flagprocesando1:=false;
estoyvivo(true,'timer solicita informe',round(timer_solicita_informerx.interval/60000));
checktimersolicitainf.Caption:='timer sol. informes creu, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
mcue.free;
mcue2.Free;
querycb.Free;
if basecreublanca.Connected then basecreublanca.Close;
exit;
end;

procedure Tmaincreudirect.timerlistadnimalTimer(Sender: TObject);
begin
if (listadnimal<>nil) and (listadnimal.text<>'')  then
  begin
  if flagprocesando1 then exit;
  mandaerror2(application,errorfalso,' paciente sin dni '+listadnimal.Text,false,3);
  enviaemail('zserver','avisos@guttmann.com','admissions@guttmann.com'
            ,'Aviso creudirect Paciente sin DNI ','','Paciente sin DNI, no se enviaran las imagens RX a creublanca '+#13+#10+listadnimal.Text,'','',false,25);
  listadnimal.free;
  end;
timerlistadnimal.Enabled:=false;
end;


procedure  Tmaincreudirect.timer_reenvia_dicomTimer(Sender: TObject);
var
qcb,qcb2:tquery;
mque,mqueexec:tibquery;
midesc,mstudyuid:string;
begin
  if flagprocesando2 then exit;
flagprocesando2:=true;

qcb:=tquery.create(application);
qcb.DatabaseName:='internacb';
qcb.SQL.text:='select * from peticion where  estado_alta_cb=1 and codigo_afiliacion_cb is not null and (estado_enviado_dicom_mutua=0 or estado_enviado_dicom_mutua is null)';
qcb.Open;
mque:=tibquery.create(application);
mque.database:=baseguttmann;

if vartype(qcb['codigo_afiliacion_cb'])>1 then
  begin //>0
  memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+'   encontrada cod.creu '+qcb['codigo_afiliacion_cb']+' peticion de informe en creu blanca procesadas y listas para enviar imagen dicom');
  qcb2:=tquery.create(application);
  qcb2.DatabaseName:='internacb';
  while not qcb.eof do
    begin
    midesc:=qcb['inf_adicional_prueba_mutua'];
    cambia('',' ',midesc);
    cambia(#$D#$A,' ',midesc);
    try //try1
     qcb2.sql.text:='start transaction';
     qcb2.execsql;
     if (baseguttmann.Connected) and  (not transguttmann.InTransaction) then  transguttmann.StartTransaction;



    if  enviadicom('pacscreublanca', 'DCRGUTTMANN', 'PACSIG', qcb['study_uid'],qcb['codigo_afiliacion_cb'],midesc,104) then
      begin // marca como enviado el dicom en peticiones en creu blanca
      qcb2.SQL.text:='update peticion set estado_enviado_DICOM_mutua=1,fecha_finalizacion_envio_DICOM_mutua=now() where  study_uid = '''+qcb['study_uid']+'''';
      qcb2.execsql;
      mque.sql.Text:=' update dicomstudies set data_envio_rx_creu=''NOW'',enviado_radiologo_ok=''S'',codigo_afili_creublanca='''+qcb['codigo_afiliacion_cb']+'''  where studyuid='''+qcb['study_uid']+'''';
      mque.ExecSQL;
      memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+ 'dicom enviado ok a creublanca studyuid '+qcb['study_uid']);
      end
      else
      memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+ 'fallo al enviar dicom a creublanca studyuid '+qcb['study_uid']);

     qcb2.SQL.Text:='commit';
     qcb2.ExecSQL;
     if transguttmann.InTransaction then transguttmann.CommitRetaining;


     except //try1
      on  e:exception do
        begin
//        if ibtransguttmann.InTransaction then ibtransguttmann.Rollback;
        qcb2.sql.text:='rollback';
        qcb2.execsql;
        memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' '+e.Message+ ' fallo al enviar dicom a creublanca studyuid '+qcb['study_uid']+' transaccion abortada');

        mandaerror2(application,errorfalso,formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' '+e.Message+
             ' fallo al enviar dicom a creublanca studyuid '+qcb['study_uid']+' transaccion abortada' ,false,3);

            enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com',
            formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' '+e.Message+
             ' fallo al enviar dicom a creublanca studyuid '+qcb['study_uid']+' transaccion abortada',
              '',formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' '+e.Message+
              ' fallo al enviar dicom a creublanca studyuid '+qcb['study_uid']+' transaccion abortada , ID_COMPUTER:'+ID_COMPUTER+#13+#10,
              '','',false,25);
         qcb2.free;
         qcb.free;
         mque.free;
         flagprocesando2:=false;
         exit;

        end;
     end;   //try1
    qcb.next;
    end; //while not qcb.eof
    qcb2.free;
  end // fin si encuentra
  else
   begin  // REENVIO FORMAZADO DE IMAGENES
    // si falla en envio de imagenes , para Reenviear poner R en  ENVIADO_RADIOLOGO_OK y dejar codi_afili_creublanca
   mstudyuid:='';
   mque.SQL.text:='select d.*,i.solicita from dicomstudies d '+
   ' inner join intercon i on d.c_intercon=i.c_intercon '+
   ' where d.enviado_radiologo_ok ="R"';
   mque.Open;

   if vartype(mque['c_historia'])>1 then
     begin //1
     mqueexec:=tibquery.Create(application);
     mqueexec.database:=baseguttmann;
     mqueexec.SQL.Text:='update dicomimages set envio_ok_cb="R"  where studyuid="'+mque['studyuid']+'"';
     mqueexec.ExecSQL;
     if transguttmann.InTransaction then transguttmann.CommitRetaining;

//    if  enviadicom('127.0.0.1', 'DICOMSERVER', 'CR850', mque['studyuid'],mque['codigo_afili_creublanca'],midesc,3320) then

     END  //1  si esta marcado el estudio entero para reenviar
    else
     begin // mira si esta marcada una imagen para reenviar

     mque.SQL.text:='select d.*,i.solicita from dicomimages di '+
     ' inner join dicomstudies d on di.studyuid=d.studyuid '+
     ' inner join intercon i on d.c_intercon=i.c_intercon '+
     ' where di.envio_ok_cb ="R"';
     mque.Open;
     end;

     mstudyuid:=evitanulo(mque.fieldbyname('studyuid'));

     if mstudyuid <>'' then
       begin

       midesc:=mque['solicita'];
       cambia('',' ',midesc);
       cambia(#$D#$A,' ',midesc);

       if enviadicom('pacscreublanca', 'DCRGUTTMANN', 'PACSIG', mque['studyuid'],mque['codigo_afili_creublanca'],midesc,104) then
         begin
         mque.close;
         mque.sql.Text:=' update dicomstudies set data_envio_rx_creu=''NOW'',enviado_radiologo_ok=''S'' where studyuid="'+mstudyuid+'"';
         end
        else
         begin
         mque.close;
         mque.sql.Text:=' update dicomstudies set data_envio_rx_creu=''NOW'',enviado_radiologo_ok=''F'' where studyuid="'+mstudyuid+'"';
         end;
       mque.ExecSQL;
       end;

     if transguttmann.InTransaction then transguttmann.CommitRetaining;




   end;  //REENVIO SI R


qcb.Close;
qcb.free;
mque.free;
flagprocesando2:=false;
estoyvivo(true,'timer envia imatge dicom',round(timer_reenvia_dicom.Interval/60000));
checkreenviadicom.Caption:='timer envia dicom creu, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
end;




procedure  Tmaincreudirect.timer_reenvia_dicomTimer_por_intercon(Sender: TObject);
var
mque,mqueexec:tibquery;
midesc,mstudyuid:string;
c_intercon,c_historia:integer;
begin
  if flagprocesando2 then exit;
flagprocesando2:=true;


mque:=tibquery.create(application);
mque.database:=baseguttmann;
mqueexec:=tibquery.create(application);
mqueexec.database:=baseguttmann;
mque.sql.text:= 'select i.c_intercon,i.c_historia,t.c_prestacio,i.urgent,i.solicita,f.apellido1,'+
   ' f.apellido2,f.nombre,f.dni,f.sexo,f.fecha_nac,m.metge,d.studyuid,p.n_prestacio,d.STUDIES_IMAGE_TYPE,'+
   ' ft.cdi from intercon i'+
   ' inner join dicomstudies d on i.c_intercon=d.c_intercon and d.studyuid is not NULL'+
   ' inner join filiacio f on i.c_historia=f.num_hist'+
   ' left join fili_tdi ft on ft.c_historia=f.num_hist and ft.tdi="DNE"'+
   ' left join metges m on i.c_metge1=m.codi'+
   ' left join tractaments t on i.c_tractament=t.c_tractament'+
   ' left join prestacion p on t.c_prestacio=p.c_prestacio'+
   ' where i.c_tipus="RX" and i.informerx="C" and i.estat="52" AND i.data_prova>"20.01.2026"';

mque.open;


if vartype(mque['c_intercon'])>1 then
  begin //>0
  while not mque.eof do
    begin

 //   try //try1
    midesc:=mque['solicita'];
    cambia('',' ',midesc);
    cambia(#$D#$A,' ',midesc);
    mstudyuid:=mque['studyuid'];
    c_historia:=mque['c_historia'];
    c_intercon:=mque['c_intercon'];

    if  enviadicom('pacscreublanca', 'DCRGUTTMANN', 'PACSIG', mstudyuid,intToStr(c_intercon),midesc,104) then
      begin // marca como enviado el dicom en peticiones en creu blanca

      memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+ 'dicom enviado ok a creublanca, se procede a marcar la base de datos, c_historia:'+inttostr(c_historia)+', c_intercon= '+inttostr(c_intercon)  );
{      mqueexec.sql.Text:='update dicomstudies set data_envio_rx_creu=''NOW'',enviado_radiologo_ok=''S''   where studyuid="'+mque['studyuid']+'"';
      mqueexec.ExecSQL;}

      mqueexec.sql.Text:=' update intercon set estat=53 where c_intercon=:c_intercon';
      mqueexec.ParamByName('c_intercon').AsInteger:=c_intercon;
      mqueexec.ExecSQL;
      end
      else
      memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+ 'fallo al enviar dicom a creublanca , c_historia:'+inttostr(c_historia)+', c_intercon= '+inttostr(c_intercon)  );

{
     except //try1
      on  e:exception do
        begin

        memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' '+e.Message+ ' fallo al enviar dicom a creublanca studyuid '+mque['studyuid']+' transaccion abortada');

        mandaerror2(application,errorfalso,formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' '+e.Message+
             ' fallo al enviar dicom a creublanca studyuid '+mque['studyuid']+' transaccion abortada' ,false,3);

            enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com',
            formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' '+e.Message+
             ' fallo al enviar dicom a creublanca studyuid '+mque['studyuid']+' transaccion abortada',
              '',formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' '+e.Message+
              ' fallo al enviar dicom a creublanca studyuid '+mque['studyuid']+' transaccion abortada , ID_COMPUTER:'+ID_COMPUTER+#13+#10,
              '','',false,25);
         mque.free;
         flagprocesando2:=false;
         exit;

        end;
     end;   //try1 }
     memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+ 'Envio dicom a crueblanca completado, c_historia:'+inttostr(c_historia)+', c_intercon= '+inttostr(c_intercon));
    mque.next;
    end; //while not qcb.eof
  end; // fin si encuentra

if mque.Database.DefaultTransaction.InTransaction then mque.Database.DefaultTransaction.CommitRetaining;

mque.free;
mqueexec.free;
flagprocesando2:=false;
estoyvivo(true,'timer envia imatge dicom',round(timer_reenvia_dicom.Interval/60000));
checkreenviadicom.Caption:='timer envia dicom creu, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
end;



function  Tmaincreudirect.enviadicom(servidor, remoteaetitle, localaetitle, studyuid,
  accesionnumber,studydesc: string; puerto: integer): boolean;
var
CnsDicomConnection2: TCnsDicomConnection;
datosestudio:tdicomdataset;
attrib:TDicomAttributes;
miruta,nombrefichero:string;
queryimages,qlog:tibquery;
ultimo:integer;
logstring:tstringlist;
fallo:boolean;
c_historiastr,c_interconstr:string;
begin
fallo:=false;
// Envia un estudio dicom al servidor dado cogiendolo directamente del disco duro de imagenes de almacenamiento dicompacs
// y lo busca por el numero de estudio que se pasa a la funcion, cambiandole el accesionnumber y poniendole el dato en parametros
logstring:=tstringlist.create;
CnsDicomConnection2:=TCnsDicomConnection.Create(self);
CnsDicomConnection2.Host := servidor; //'127.0.0.1';//CnsDBTable1.FieldByName('REMOTE_IP').AsString;
CnsDicomConnection2.Port := puerto; //CnsDBTable1.FieldByName('REMOTE_PORT').AsInteger;                                 S
CnsDicomConnection2.CalledTitle :=remoteaetitle; //CnsDBTable1.FieldByName('REMOTE_AET').AsString;
CnsDicomConnection2.CallingTitle := localaetitle;
//CnsDicomConnection2.ReceiveTimeout:=360000;


queryimages:=tibquery.create(application);

qlog:=tibquery.create(application);
qlog.Database:=baseguttmann;

with queryimages do
  begin  //1
  database:=baseguttmann;


  sql.text:='select * from dicomimages where studyuid='''+studyuid+''' and (   ((envio_ok_cb<>"S" or envio_ok_cb is null ) and (envioscreublanca <5 or envioscreublanca is null)) or envio_ok_cb="R")';

  open;
  while not eof do
    begin //2
    logstring.Text:='';
    // abre fichero en pacs guttmann
    if TestDcmFileDir(queryimages, miruta) then
      begin //leido exitoso de fichero pacs local
      nombrefichero:=testfile(queryimages, miruta);

      datosestudio:=TDicomDataset.Create;
      datosestudio.LoadFromFile(nombrefichero);


      // el formato guardado no le gusta al servidor de creublanca que solo coge la priemra imagen
      // esto pasa desde que se guardan las imagenes con 1.2.840.10008.1.2.4.70 JPEG Lossless
      // antes <18/08/2015 no pasaba guardando con 1.2.840.10008.1.2.1 Explicit VR Little Endian
      // para evitar el problema se guarda en disco en fichero temporal con explicit y luego se coge el fichoer temporal



//      if FileExists('dicomtemp.dcm') then DeleteFile('dicomtemp.dcm');
//      datosestudio.SaveToFile('dicomtemp.dcm', true, ExplicitVRLittleEndian, 100,false,true);
//      datosestudio.LoadFromFile('dicomtemp.dcm');


      c_historiastr:=datosestudio.Attributes.GetString($10, $20);
      c_interconstr:=datosestudio.Attributes.GetString($8, $50);
      if c_interconstr='' then  c_interconstr:=datosestudio.Attributes.GetString($20, $10);

      if (c_historiastr='') or (c_interconstr='') then
        begin
        mandaerror2(self, errorfalso, 'Imagen dicom mal no se puede leer el c_historia o el c_intercon en la cabecera, acces num '+accesionnumber+
        ' historia: '+c_historiastr+' c_intercon: '+c_interconstr,False,3);

        mandaerrorporemail(errorfalso,'Imagen dicom mal no se puede leer el c_historia o el c_intercon en la cabecera, acces num '+accesionnumber+
        ' historia: '+c_historiastr+' c_intercon: '+c_interconstr,false,
           'zserver','avisos@guttmann.com',
           'informatica@guttmann.com','','');

        result:=false;
        datosestudio.free;
        CnsDicomConnection2.Free;
        qlog.free;
        queryimages.free;
        logstring.free;
        exit;
        end;

      //cambia c_intercon por codigo afiliacion creu en accesion number
      datosestudio.Attributes.AddVariant($8,$50,accesionnumber);
      //30/06/2011 se pone limitacion de 250 caracteres por fallos en receptor
      //avisa epor mail si pasa de tamaño y lo envia iguamente
      // se cambia texto por aviso



      if Length(studydesc)>249 then
        begin
      //28/09/2021 glpi 18620   no llaman si no hay texto, en casi todos los casos no hacen el informe, cortare el texto a 250
        studydesc:=copy(studydesc,1,249);
{         studydesc:='Texto omitido por tamaño superior a 250, llamar para consultar';
        mandaerror2(self, errorfalso,'Imagen dicom de creu blanca enviada sin descripcion para tamaño>250, codigo cb: '+accesionnumber,False,3);

        mandaerrorporemail(errorfalso,'Imagen dicom de creu blanca enviada sin descripcion para tamaño>250, codigo cb: '+accesionnumber,false,
           'zserver','avisos@guttmann.com',
           'informatica@guttmann.com','','');   }

        end;
      datosestudio.attributes.AddVariant($0008,$1030,studydesc);

      // inicia log de envio
      qlog.sql.text:='insert into dicomlog2 (ok,datarec,data_dicom,id_paciente,nombre_paciente,instanceuid,modality,tipo_movimiento,studyuid,c_historia,c_intercon)'+
      ' values("P",''NOW'',:datadicom,:idpaciente,:nombre_paciente,:instanceuid,:modality,:tipo_movimiento,:studyuid,:c_historia,:c_intercon)';
      qlog.parambyname('datadicom').Asdatetime:=strtodate(datosestudio.Attributes.Getstring($8, $20));
      qlog.parambyname('idpaciente').AsString:=datosestudio.Attributes.GetString($10, $20);
      qlog.parambyname('nombre_paciente').AsString:=datosestudio.Attributes.GetString($10, $10);
      qlog.parambyname('instanceuid').AsString:=datosestudio.Attributes.GetString($8, $18);
      qlog.parambyname('modality').AsString:=datosestudio.Attributes.GetString($8, $60);
      qlog.parambyname('tipo_movimiento').AsString:='ENVIOCREUBLANCA';
      qlog.ParamByName('c_historia').asstring:=c_historiastr;
      qlog.ParamByName('c_intercon').asstring:=c_interconstr;
      qlog.ParamByName('studyuid').asstring:=studyuid;
      logstring.add('AccessionNumber o codigo_afiliacion_cb '+accesionnumber);
      qlog.execsql;
      if baseguttmann.DefaultTransaction.InTransaction then baseguttmann.DefaultTransaction.CommitRetaining;
      qlog.close;
      qlog.sql.text:='select max(id) ultimo from dicomlog2';
      qlog.open;
      ultimo:=qlog['ultimo'];
      // envia el dicom
      try
 //    CnsDicomConnection2.SetTransferSyntax([ExplicitVRLittleEndian]);
       CnsDicomConnection2.SetTransferSyntax([JPEGLossless]);
//     memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+ 'Enviando dicom a creublanca studyuid '+studyuid  );
     if not CnsDicomConnection2.C_STORAGE(datosestudio.Attributes) then fallo:=true;

   if not fallo then
//        memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+ 'Envio exitoso de dicom a creublanca studyuid '+studyuid )
      else
       memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+ 'Fallo en el envio dicom a creublanca studyuid '+studyuid );
     except
      on  e:exception do
         begin
       memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+ 'Fallo en el envio dicom a creublanca studyuid '+studyuid  );
         trazaini(self,e);
         fallo:=true;
         result:=false;
         end;
      end;

      // marca las imagenes como enviadas para no volver a enviarlas todas si falla una
      if not fallo then
        qlog.SQL.text:='update dicomimages set envio_ok_cb="S",envioscreublanca=:envios where instanceuid=:instanceuid'
      else
        qlog.SQL.text:='update dicomimages set envio_ok_cb="F",envioscreublanca=:envios where instanceuid=:instanceuid';
      qlog.parambyname('envios').asinteger:=evitanulo(queryimages.FieldByName('envioscreublanca'))+1;
      qlog.parambyname('instanceuid').asstring:=queryimages['instanceuid'];
      qlog.ExecSQL;


      qlog.sql.text:='update dicomlog2 set OK=:OK,log=:milog where id=:miid';
      if not fallo then
        begin
        qlog.parambyname('OK').AsString:='S';
        logstring.add('Envio ok a creublanca');
        end
      else
        begin
        qlog.parambyname('OK').AsString:='N';
        logstring.add('Envio fallido a creublanca');
        end;

      qlog.parambyname('milog').AsString:=logstring.Text;
      qlog.parambyname('miid').asinteger:=ultimo;
      qlog.execsql;

      if baseguttmann.DefaultTransaction.InTransaction then baseguttmann.DefaultTransaction.CommitRetaining;

     datosestudio.free;


    end  //leido exitoso de fichero pacs local

    else
    begin // no puede leer el fichero en pacs local

    // guarda  log fallo
    qlog.sql.text:='insert into dicomlog2 (ok,datarec,log,tipo_movimiento)'+
    ' values("N",''NOW'',:milog,:TIPO_MOVIMIENTO)';
    qlog.parambyname('tipo_movimiento').AsString:='ENVIOCREUBLANCA';
    logstring.add('No se ha podido enviar estudio al servidor: '+servidor+' puerto: '+inttostr(puerto)+' remote AETITLE: '+remoteaetitle+
    #13+#10+'No se puede localizar el estudio '+studyuid+' en PACS LOCAL GUTTMANN');
    qlog.ParamByName('milog').asstring:=logstring.text;
    qlog.execsql;
    if baseguttmann.DefaultTransaction.InTransaction then baseguttmann.DefaultTransaction.CommitRetaining;
    end;   // no puede leer el fichero en pacs local

    next;
    end; //while 2
   free;
  end; //1 with

result:=not fallo;

if baseguttmann.DefaultTransaction.InTransaction then baseguttmann.DefaultTransaction.CommitRetaining;
CnsDicomConnection2.Free;
qlog.free;
logstring.free;


end;






procedure Tmaincreudirect.timer_control_estado_timersTimer(Sender: TObject);
begin
if flagprocesando1 then
  begin
  checktimersolicitainf.font.Color:=clred;
  end
else
  begin
  checktimersolicitainf.font.Color:=clblack;
  end;

if flagprocesando2 then
  begin
  checkreenviadicom.font.Color:=clred;
  end
else
  begin
  checkreenviadicom.font.Color:=clBlack;
  end;

if flagprocesando3 then
  begin
//  check_timertraspasa.font.Color:=clred;
  end
else
  begin
//  check_timertraspasa.font.Color:=clBlack;
  end;

if flagprocesando4 then
  begin
  Checktimeruros.font.Color:=clred;
  end
else
  begin
  Checktimeruros.font.Color:=clBlack;
  end;
if flagprocesando5 then
  begin
  checktimerFSA.font.Color:=clred;
  end
else
  begin
  checktimerFSA.font.Color:=clBlack;
  end;
if flagprocesando6 then
  begin
  checktimerbaclofen.font.Color:=clred;
  end
else
  begin
  checktimerbaclofen.font.Color:=clBlack;
  end;
if flagprocesando7 then
  begin
  checktimerinfer.font.Color:=clred;
  end
else
  begin
  checktimerinfer.font.Color:=clBlack;
  end;

if flagprocesando8 then
  begin
  checktimerEMG.font.Color:=clred;
  end
else
  begin
  checktimerEMG.font.Color:=clBlack;
  end;


end;



function Tmaincreudirect.TestDcmFileDir(AQuery: TDataset; var AImageDir: string): Boolean;
  function TestDir(ADir: string; ADate: TDatetime; ImageType: string): Boolean;
  var
    y, m, d: Word;
    str1: string;
  begin
    DecodeDate(adate, y, m, d);
    Result := false;
    if ADir[Length(ADir)] <> '\' then
      adir := adir + '\';
    if ImageType <> '' then
    begin
    //26/10/2006 se añade directorio de historia
      str1 := trim(adir) + trim(ImageType) + '\' + IntToStr(y) + '\' + IntToStr(m) + '\' + IntToStr(d) + '\' +
        ('HIST'+inttostr(aquery['c_historia']))+'\'+trim(AQuery.FieldByName('STUDYUID').AsString) + '\';
    end
    else
    begin
      str1 := trim(adir) + trim(AQuery.FieldByName('STUDYUID').AsString) + '\';
    end;
    if DirectoryExists(str1) then
    begin
      AImageDir := str1;
      Result := true;
    end
    else
    begin
      str1 := trim(adir) + trim(AQuery.FieldByName('STUDYUID').AsString) + '\';
      if DirectoryExists(str1) then
      begin
        AImageDir := str1;
        Result := true;
      end;
    end;
  end;
var
  i: Integer;
  date1: TDatetime;
  ImageType: string;
  f1: TField;
  midir:string;
begin
  {  if AQuery.FieldByName('IMAGEDATE').IsNull then
      date1 := AQuery.FieldByName('LDATE').AsDatetime
    else}
//  AQuery.First;
//  while not AQuery.Eof do

//19/03/2012 modificado para que monte la ruta de imagen, cambiado el orden
// a partir de la fecha de la imagen
 begin
 result:=false;
  f1 := AQuery.FindField('IMAGEDATE');
  if not assigned(f1) then
    f1 := AQuery.FindField('STUDIESDATE');


    date1 := f1.AsDatetime;
    //  ImageType := AQuery.FieldByName('ImageType').AsString;

    midir:=dameruta(date1);
    ImageType := trim(AQuery.FieldByName('IMAGETYPE').AsString);
    Result := TestDir(trim(midir), date1, trim(ImageType));
    if Result then
      exit;
    {for i := 0 to KXConfig.ImagePathList.Count - 1 do
    begin
      if KXConfig.ImagePathList[i] <> '' then
      begin
        Result := TestDir(KXConfig.ImagePathList[i], date1, ImageType);
        if Result then
          exit;
      end;
    end; }
    //    AQuery.Next;
  end;
  //  AQuery.First;
end;

function Tmaincreudirect.TestFile(Query1: TDataset; basedir: string): string;
var
  pname: string;
begin
  pname := basedir + Query1.FieldByName('SERIESUID').AsString + '\' + trim(Query1.FieldByName('IMGNO').asstring) + '.dcm';
  if FileExists(pname) then
    Result := pname
  else
  begin
    pname := basedir + trim(Query1.FieldByName('SERIESUID').AsString) + '\' + trim(Query1.FieldByName('INSTANCEUID').asstring) + '.dcm';
    if FileExists(pname) then
      Result := pname
    else
    begin
      pname := basedir + ' ' + trim(Query1.FieldByName('SERIESUID').AsString) + '\' + trim(Query1.FieldByName('IMGNO').asstring) + '.dcm';
      if FileExists(pname) then
        Result := pname
      else
        Result := '';
    end;
  end;
end;

function Tmaincreudirect.dameruta(midat: tdatetime): string;
var
miqui:tibquery;
comando:string;
begin
result:='';
miqui:=tibquery.create(application);
with miqui do
  begin
  database:=baseguttmann;
  sql.texT:='select * from dicompaths Where '+
    ' Dataini is not null and :data >=dataini and (datafin is not null and :data <=datafin'+
    ' Or datafin is null) and copiahccc="N"';
  parambyname('data').asdate:=midat;
  open;
  if miqui['ruta']<>null then
    begin  //1
    // comprueba el directorio y si no existe conecta la unidad
    if not DirectoryExists(miqui['ruta']) then
      begin //2
      // si no esta la unidad la conecta con el comando correspondiente
      if vartype(miqui['commando_conecta'])>1 then
         begin //3
         // el contenido esta encriptado por lo que lo desencripta
         comando:=trim(lowercase(descifra(miqui['commando_conecta'])));
         if pos('net use',comando)>0 then
           begin //4
            winexec(pchar(copy(comando,1,10) + ' /delete /Y'),sw_normal);
            sleep(5000);
           end; //4
           winexec(pchar(comando),sw_normal);
           sleep(10000);
         end; //3
      end; //2
     if not DirectoryExists(miqui['ruta']) then
       begin
       mandaerror2(application,errorfalso,' ruta de imagenes dicom no encontrada '+miqui['ruta'],false,3);
       mandaerrorporemail(errorfalso,' ruta de imagenes dicom no encontrada '+miqui['ruta'],false,
         '10.168.105.45','avisos@guttmann.com',
         'informatica@guttmann.com','','');
       end;
      result:=miqui['ruta'];
    end    //1
  else
    begin
    memo1.lines.add('No se encuentra ruta de imagen con data '+datetostr(midat));
    memo1.lines.add('');
    mandaerror2(application,errorfalso,'No se encuentra ruta de imagen con data '+datetostr(midat),false,4);
    end;
  close;
  free;
end; // with miqui
end;


procedure Tmaincreudirect.checktimersolicitainfClick(Sender: TObject);
begin
timer_solicita_informerx.enabled:=checktimersolicitainf.Checked;
timercontrolerrorescreu.Enabled:=checktimersolicitainf.Checked;
end;


procedure Tmaincreudirect.check_timertraspasaOLDClick(Sender: TObject);
begin
//timer_trespasa.Enabled:=check_timertraspasa.Checked;
end;



procedure Tmaincreudirect.checkreenviadicomClick(Sender: TObject);
begin
timer_reenvia_dicom.enabled:=checkreenviadicom.Checked;
end;


procedure Tmaincreudirect.timercontrolerrorescreuTimer(Sender: TObject);
var
qcb,qcb2b:tquery;
qcb2:tibquery;

begin
qcb:=tquery.create(application);
qcb.DatabaseName:='internacb';
timercontrolerrorescreu.Enabled:=false;
with qcb do
  begin //1
  SQL.text:='select * from peticion where estado_error_cb=1 and estado_enviado_dicom_mutua is null';
  Open;
  last;
  first;
  if qcb.RecordCount>0 then
   begin //1b
    mandaerror2(application,errorfalso,'Fallo de '+inttostr(qcb.RecordCount)+' peticiones de informe a creublanca',false,3);

    qcb2b:=tquery.create(application);
    qcb2b.databasename:='internacb';

    qcb2:=tibquery.Create(application);
    qcb2.Database:=baseguttmann;


    while not eof do
      begin   //2
              mandaerror2(application,errorfalso,'Fallo peticion informe RX creublanca, historia:'+
              fieldbyname('historia_clinica_mutua').asstring+', interconsulta:'+qcb['interconsulta_mutua']
              +', error:'+qcb['descripcion_error_cb'],false,3);
              mandaerrorporemail(errorfalso,'Fallo peticion informe RX creublanca, historia:'+
              fieldbyname('historia_clinica_mutua').asstring+', interconsulta:'+qcb['interconsulta_mutua']
              +', error:'+qcb['descripcion_error_cb'],false,
                 'zserver','avisos@guttmann.com',
           'informatica@guttmann.com','','');
       memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+
       'Fallo peticion informe RX creublanca, historia:'+
              fieldbyname('historia_clinica_mutua').asstring+', interconsulta:'+qcb['interconsulta_mutua']
              +', error:'+qcb['descripcion_error_cb'] );

             // 29/08/2011 utilizo el campo enviado_radiologo_ok en F de dicomestudies
             // para dejar con fallo el registro
             // estados en campo enviado enviado_radiologo_ok
             // P peticion hecha y esta pendiente de codigo filiacion creu blanca
             // N todavia no se ha enviado imagen, F la peticion de informe tiene fallo, A peticion anulada ya no se procesa mas.
             // S se ha enviado la imagen y esta pendiente de recepcion de informe
             // estado_enviado_dicom_mutua null proceso activo y no enviado dicom, 0 fallo, 1 ok dicom enviado

            qcb2.sql.text:='update dicomstudies set enviado_radiologo_ok=''F'' where studyuid='+qcb['study_uid'];
            qcb2.ExecSQL;
            qcb2b.SQL.Text:='update peticion set estado_enviado_dicom_mutua=0 where id='+inttostr(qcb['id']);
            qcb2b.execsql;
            memo1.Lines.add(formatdatetime('dd/mm/yyyy hh:nn:ss',now)+
                     'Marcado en creublanca como erroneo set estado_enviado_dicom_mutua=0 where id='+inttostr(qcb['id']));

       next
      end;  //2
     qcb2.free;
     qcb2b.free;
   end;  //1b
  end; //with qcb  //1
//descripcion_error_cb  estado_error_cb

qcb.Free;
timercontrolerrorescreu.Enabled:=true;
end;

procedure Tmaincreudirect.timer_reintentaTimer(Sender: TObject);
begin
//timer_trespasa.Enabled:=check_timertraspasa.Checked;
//timer_solicita_informerx.enabled:=checktimersolicitainf.Checked;
//timercontrolerrorescreu.Enabled:=checktimersolicitainf.Checked;
timer_reenvia_dicom.Enabled:=checkreenviadicom.Checked;
timerinformesuros.enabled:=Checktimeruros.Checked;
TIMERinformesfsa.Enabled:=checktimerFSA.Checked;
timerinformesbaclofen.Enabled:=checktimerbaclofen.Checked;
timerinformesINFER.Enabled:=checktimerinfer.Checked;
timerEMG.Enabled:=checktimerEMG.Checked;

timer_reintenta.Enabled:=false;
flagprocesando1:=false;
flagprocesando2:=false;
flagprocesando3:=false;
flagprocesando4:=false;
flagprocesando5:=false;
flagprocesando6:=false;
flagprocesando7:=false;
flagprocesando8:=false;

labelerror.caption:='sense error';
end;



procedure Tmaincreudirect.timerlimpialogcreuTimer(Sender: TObject);
var
lt:integer;
begin

if memo1.Lines.Count>10000 then
  begin
//   memo1.Lines.SaveToFile('logcreudirect'+formatdatetime('yyyymmddhhnnss',now)+'.txt');
  for lt:=0 to memo1.Lines.Count-1000 do // borra las 1000 mas antiguas
    begin
    memo1.Lines.Delete(lt);
    end;

  end;

end;

procedure Tmaincreudirect.muevepdfBACLOFEN;
var
losficheros:tstringlist;
numhist,fechainformestr,nomfich,nomfich2,nomfichdestino,carpetabaclo,carpeta:string;
x1,x2:extended;
fechaestudio:tdatetime;
minum,mhist:integer;

begin
if flagprocesando6 then exit;
flagprocesando6:=true;
carpetabaclo:=damedirectori('INFORMES_BACLO',baseguttmann);
if carpetabaclo='' then
  begin
  mandaerror(application,errorfalso,'ruta INFORMES_BACLO vuida de la tabla DIRECTORIS',false);
  exit;
  end;

if not directoryexists(carpetabaclo) then
  begin  //1
  winexec('net use g: \\gutfs2\dadesg Gut1415926535 /user:Administrador /persistent:yes',sw_normal);
  sleep(10000);
  end;  //1

losficheros:=tstringlist.create;
buscaficheros(carpetabaclo,'*.pdf',losficheros,false);
ListBox1.Items:=losficheros;
if losficheros.count<1 then
  begin
  losficheros.free;
  flagprocesando6:=false;
  checktimerbaclofen.Caption:='timer recibe pdf BACLOFEN, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
  estoyvivo(true,'Timer pdf BACLOFEN',round(timerinformesbaclofen.interval/60000));
  exit;
  end;

for minum:=0 to losficheros.count-1 do
  begin //1
  nomfich:='';
  nomfich2:='';
  nomfich:=losficheros.Strings[minum];
  nomfich2:=extractfilename(nomfich);
  numhist:=copy(nomfich2,1,pos('-',nomfich2)-1);
  cambia(numhist+'-','',nomfich2);  // quita la historia

  if trim(numhist)='' then continue;

   try
   mhist:=strtoint(numhist)
   except
   continue;
   end;

  // busca si tiene la fecha en nombre fichero
  cambia(lowercase('.pdf'),'',nomfich2);
  fechainformestr:='';
  if pos(')',nomfich2)> 0 then
  fechainformestr:=trim(copy(nomfich2,pos(')',nomfich2)+1,length(nomfich2) ));
  cambia('-','/',fechainformestr);


  try
  fechaestudio:=strtodate(fechainformestr);
  except
  fechaestudio:=filedatetodatetime(fileage(nomfich));
  end;



    x1:=int(mhist/500)*500;
    x2:=x1+499;
    carpeta:=carpetabaclo+'\'+formatfloat('0',x1)+'-'+formatfloat('0',x2);
    memo1.Lines.add(numhist+'------'+carpetabaclo+'---->'+carpeta);
    //comprueba que exista la carpeta destino, sino existe la crea
    if not DirectoryExists(carpeta)  then
    if (pos('G:\USR\',carpeta)=0) then
       begin
       mandaerror(application,errorfalso,'intento de crear carpeta en ubicación incorrecta '+carpeta,false);
       continue;
       end
      else
       CreateDir(carpeta);



    nomfichdestino:=carpeta+'\'+formatfloat('00000',mhist)+formatdatetime('yyyymmdd',fechaestudio)+'.pdf';


    //en caso de que envien mas de un pdf para el mismo estudio y si el pdf se llama igual y ya existe le pone numeros de hora

    if FileExists(nomfichdestino) then nomfichdestino:=carpeta+'\'+formatfloat('00000',mhist)+formatdatetime('yyyymmdd',fechaestudio)+formatdatetime('hhnnss',now)+'.pdf';
    moveFile(pchar(nomfich),pchar(nomfichdestino));
    if  NOT FileExists(nomfichdestino) then
      begin //3
       mandaerror(application,errorfalso,'No se puede mover el fichero '+nomfich,FALSE);
{       mandaerrorporemail(errorfalso,'No se puede mover el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');}
      continue

      END;



  end; //1 for

flagprocesando6:=false;
losficheros.free;
estoyvivo(true,'Timer pdf BACLOFEN',round(timerinformesbaclofen.interval/60000));
checktimerbaclofen.Caption:='timer recibe BACLOFEN, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);

end;

procedure Tmaincreudirect.mueveinformesINFER;
var
losficheros:tstringlist;
numhist,fechainformestr,nomfich,nomfich2,nomfichdestino,carpetainfer,carpeta,tipofich:string;
x1,x2:extended;
fechaestudio:tdatetime;
minum,mhist:integer;

begin
if flagprocesando7 then exit;
flagprocesando7:=true;

carpetainfer:=damedirectori('INFORMES',baseguttmann);
if carpetainfer='' then
  begin
  mandaerror(application,errorfalso,'ruta INFORMES vuida de la tabla DIRECTORIS',false);
  exit;
  end;


if not directoryexists(carpetainfer) then
  begin  //1
  winexec('net use g: \\gutfs2\dadesg Gut1415926535 /user:Administrador /persistent:yes',sw_normal);
  sleep(10000);
  end;  //1

losficheros:=tstringlist.create;
buscaficheros(carpetainfer,'*.pdf',losficheros,false);
ListBox1.Items:=losficheros;
if losficheros.count<1 then
  begin
  losficheros.free;
  flagprocesando7:=false;
  checktimerinfer.Caption:='timer recibe pdf INFERMERIA, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
  estoyvivo(true,'Timer pdf INFERMERIA',round(timerinformesINFER.interval/60000));
  exit;
  end;

for minum:=0 to losficheros.count-1 do
  begin //1
  nomfich:='';
  nomfich2:='';
  nomfich:=losficheros.Strings[minum];
  nomfich2:=extractfilename(nomfich);
  numhist:=copy(nomfich2,1,5);
   try
   mhist:=strtoint(numhist)
   except
   continue;
   end;

  // busca si tiene la fecha en nombre fichero
  cambia(lowercase('.pdf'),'',nomfich2);
  fechainformestr:='';
  fechainformestr:=copy(nomfich2,15,2)+'/'+copy(nomfich2,13,2)+'/'+copy(nomfich2,9,4);
  try
  fechaestudio:=strtodate(fechainformestr);
  except
  fechaestudio:=filedatetodatetime(fileage(nomfich));
  end;

  tipofich:=copy(nomfich2,6,3);

    x1:=int(mhist/500)*500;
    x2:=x1+499;
    carpeta:=carpetainfer+'\'+formatfloat('0',x1)+'-'+formatfloat('0',x2);
    memo1.Lines.add(numhist+'------'+carpetainfer+'---->'+carpeta);
    //comprueba que exista la carpeta destino, sino existe la crea
    if not DirectoryExists(carpeta)  then
    if (pos('G:\USR\',carpeta)=0) then
       begin
       mandaerror(application,errorfalso,'intento de crear carpeta en ubicación incorrecta '+carpeta,false);
       continue;
       end
      else
       CreateDir(carpeta);

    nomfichdestino:=carpeta+'\'+formatfloat('00000',mhist)+tipofich+formatdatetime('yyyymmdd',fechaestudio)+'.pdf';

    //en caso de que envien mas de un pdf para el mismo estudio y si el pdf se llama igual y ya existe le pone numeros de hora

    if FileExists(nomfichdestino) then nomfichdestino:=carpeta+'\'+formatfloat('00000',mhist)+tipofich+formatdatetime('yyyymmdd',fechaestudio)+formatdatetime('hhnnss',now)+'.pdf';
    moveFile(pchar(nomfich),pchar(nomfichdestino));
    if  NOT FileExists(nomfichdestino) then
      begin //3
       mandaerror(application,errorfalso,'No se puede mover el fichero '+nomfich,FALSE);
{      mandaerrorporemail(errorfalso,'No se puede mover el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');}
      continue

      END;



  end; //1 for

flagprocesando7:=false;
losficheros.free;
estoyvivo(true,'Timer pdf INFERMERIA',round(timerinformesINFER.interval/60000));
checktimerinfer.Caption:='timer recibe INFERMERIA, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);

end;


procedure Tmaincreudirect.r(Sender: TObject);
begin
muevepdfuros;
end;

procedure Tmaincreudirect.SpeedButton4Click(Sender: TObject);
begin
muevepdfuros;
end;

procedure Tmaincreudirect.ChecktimerurosClick(Sender: TObject);
begin
timerinformesuros.Enabled:=Checktimeruros.Checked;
end;

procedure Tmaincreudirect.SpeedButton5Click(Sender: TObject);
begin
JvSelectDirectory1.InitialDir:=edit2.text;
if JvSelectDirectory1.Execute then edit2.text:=JvSelectDirectory1.Directory;
end;

procedure Tmaincreudirect.SpeedButton8Click(Sender: TObject);
begin
JvSelectDirectory1.InitialDir:=edit3.text;
if JvSelectDirectory1.Execute then edit3.text:=JvSelectDirectory1.Directory;
end;

procedure Tmaincreudirect.timerinformesFSATimer(Sender: TObject);
begin
muevepdfFSA;
end;

procedure Tmaincreudirect.checktimerFSAClick(Sender: TObject);
begin
TIMERinformesfsa.Enabled:=checktimerFSA.Checked;
end;

procedure Tmaincreudirect.timerinformesbaclofenTimer(Sender: TObject);
begin
muevepdfBACLOFEN
end;

procedure Tmaincreudirect.SpeedButton9Click(Sender: TObject);
begin
muevepdfBACLOFEN
end;

procedure Tmaincreudirect.checktimerbaclofenClick(Sender: TObject);
begin
timerinformesbaclofen.Enabled:=checktimerbaclofen.Checked;
end;

procedure Tmaincreudirect.SpeedButton7Click(Sender: TObject);
begin
muevepdfFSA;
end;

procedure Tmaincreudirect.SpeedButton11Click(Sender: TObject);
begin
mueveinformesINFER;
end;

procedure Tmaincreudirect.checktimerinferClick(Sender: TObject);
begin
timerinformesINFER.Enabled:=checktimerinfer.Checked;
end;

procedure Tmaincreudirect.timerinformesINFERTimer(Sender: TObject);
begin
mueveinformesINFER;
end;

procedure Tmaincreudirect.botonEMGClick(Sender: TObject);
begin
mueveinformesEMG;
end;


procedure Tmaincreudirect.mueveinformesEMG;
var
losficheros:tstringlist;
numhist,intercon,nomfich,nomfich2,nomfichdestino,carpetaEMG,carpetahccc,destinohccc:string;
x1,x2:extended;
minum,mhist,c_intercon:integer;

begin
if flagprocesando8 then exit;
flagprocesando8:=true;

carpetaEMG:=damedirectori('INFORMES_EMG_HCCC',baseguttmann);
if carpetaEMG='' then
  begin
  mandaerror(application,errorfalso,'ruta INFORMES_EMG_HCCC vuida de la tabla DIRECTORIS',false);
  exit;
  end;

if not directoryexists(carpetaEMG) then
  begin  //1
  winexec('net use g: \\gutfs2\dadesg Gut1415926535 /user:Administrador /persistent:yes',sw_normal);
  sleep(10000);
  end;  //1

carpetahccc:=damedirectori('LABORATORI_HC3_DESTI',baseguttmann);

if carpetahccc='' then
  begin
  mandaerror(application,errorfalso,'ruta LABORATORI_HC3_DESTI vuida de la tabla DIRECTORIS',false);
  exit;
  end;

    
losficheros:=tstringlist.create;
buscaficheros(carpetaEMG,'*.pdf',losficheros,false);
ListBox1.Items:=losficheros;
if losficheros.count<1 then
  begin
  losficheros.free;
  flagprocesando8:=false;
  checktimerEMG.Caption:='Timer envia pdf EMG a HCCC, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);
  estoyvivo(true,'Timer envia pdf EMG a HCCC',round(timerEMG.interval/60000));
  exit;
  end;

for minum:=0 to losficheros.count-1 do
  begin //1
  nomfich:='';
  nomfich2:='';

  // estructura de fichero hhhhh-iiiiii h C_historia - i c_interconsulta
  nomfich:=losficheros.Strings[minum];
  nomfich2:=extractfilename(nomfich);
  numhist:=copy(nomfich2,1,5);
  intercon:=copy(nomfich2,7,6);
  try
   mhist:=strtoint(numhist);
   c_intercon:=strtoint(intercon);
  except
   continue;
  end;

  if not directoryexists(carpetahccc) then
    begin  //1
     winexec('net use V: /delete /y',sw_normal);
      sleep(1000);
      winexec('net use V: \\10.168.105.120\c$ Clave1415926535 /user:administrador /persistent:yes',sw_normal);
      sleep(10000);
    end;  //1

  destinohccc:=carpetahccc+'\H'+formatfloat('00000',mhist)+'I'+formatfloat('000000',c_intercon)+'EMG.pdf';
  if FileExists(destinohccc) then
  DeleteFile(destinohccc);
  moveFile(pchar(nomfich),pchar(destinohccc));
  If not FileExists(destinohccc)  THEN
     begin
       mandaerror(application,errorfalso,'No se puede mover el fichero '+nomfich,FALSE);
{       mandaerrorporemail(errorfalso,'No se puede mover el fichero '+nomfich,false,
                 '10.168.105.45','avisos@guttmann.com',
                      'informatica@guttmann.com,admissions@guttmann.com','','');}
       continue;
     end;
   memo1.Lines.add(numhist+'------'+nomfich+'---->'+destinohccc);
  end; //1 for

flagprocesando8:=false;
losficheros.free;
estoyvivo(true,'Timer envia pdf EMG a HCCC',round(timerEMG.interval/60000));
checktimerEMG.Caption:='Timer envia pdf EMG a HCCC, ultim '+formatdatetime('dd/mm/yyyy hh:nn:ss',now);

end;

procedure Tmaincreudirect.SpeedButton14Click(Sender: TObject);
begin
JvSelectDirectory1.InitialDir:=editrutaemg.text;
if JvSelectDirectory1.Execute then editrutaemg.text:=JvSelectDirectory1.Directory;
end;

procedure Tmaincreudirect.SpeedButton12Click(Sender: TObject);
begin
JvSelectDirectory1.InitialDir:=edit5.text;
if JvSelectDirectory1.Execute then edit5.text:=JvSelectDirectory1.Directory;
end;

procedure Tmaincreudirect.SpeedButton10Click(Sender: TObject);
begin
JvSelectDirectory1.InitialDir:=edit4.text;
if JvSelectDirectory1.Execute then edit4.text:=JvSelectDirectory1.Directory;
end;

procedure Tmaincreudirect.timerEMGTimer(Sender: TObject);
begin
mueveinformesEMG;
end;

procedure Tmaincreudirect.checktimerEMGClick(Sender: TObject);
begin
timerEMG.Enabled:=checktimerEMG.Checked;
end;

end.
