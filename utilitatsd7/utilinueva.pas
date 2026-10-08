unit utilinueva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables,dbctrls,tlhelp32,dbgrids,registry,extctrls,dbgrideh,
  avisounit,nb30 ,variants,shellapi,idmessage,idsmtp,ibdatabase,ibquery,printers,winspool,stdctrls,idattachment,
  idattachmentfile ,IdSSLOpenSSL,IdExplicitTLSClientServerBase,IdIOHandlerStream,JvCipher,inifiles,
  JvComputerInfoEx,WinSock, QuickRpt,Sockets;




var
ID_NIC: String;
ID_LOGIN: String;
ID_LOGINWIN: String;
ID_COMPUTER: String;
ID_REMOTE: String;
ES_PROVA: Boolean;
NO_ACCES: String;
qparametres:tquery;
qdretsacces:tquery;
errorfalso:exception;
dretsaccessarray:tstringlist;
ultimerror:string;
rutaAliesIB: String;
Entorn: String;



  const
    cOsUnknown : Integer = -1;
    cOsWin95 : Integer = 0;
    cOsWin98 : Integer = 1;
    cOsWin98SE : Integer = 2;
    cOsWinME : Integer = 3;
    cOsWinNT : Integer = 4;
    cOsWin2000 : Integer = 5;
    cOsWinXP : Integer = 6;
    MAXPRINTERBUFFER = 8000;
    MAXPRINTERNAME = 500;
    MAXPRINTERINFO = 50;

type
  PTOKEN_USER = ^TOKEN_USER;
  _TOKEN_USER = record
    User: TSidAndAttributes;
  end;
  TOKEN_USER = _TOKEN_USER;
  TPrinterBuffer = array[0..MAXPRINTERBUFFER - 1] of char;




type
  TEchoReply=packed record
    Addr:in_addr;
    Status:DWORD;
    RoundTripTime:DWORD;
    //DataSize:
    //Reserved:
    //Data:pointer;
    //Options:
  end;
  PEchoReply=^TEchoReply;



procedure inicia(basedatos:string);
function TeDretAcces(ListDrets: Array Of Const; FerRaise: Boolean=False; MirarDretTotal: Boolean = True): Boolean;
function GetUserName (Cadena: PChar): String;
function siestaexe(FileName:String;tope:integer;primerplano:boolean;check_user_domain:bool=False):boolean;

function NIF(DNI: String): Char;
function biencuenta(Cuentatot: string):boolean;
function dnibien(Sender: TObject):boolean;
function checkdni(dni:string):boolean;
function vacio(sender:tobject):boolean;
function llamaconsulta(base2,sqltexto2,orden2,wheretexto2,camporetorno,imp:string;sender:tobject):string;
function llamaconsultanew(base2,sqltexto2,orden2,wheretexto2,camporetorno,imp:string;sender:tobject;mititul:string):string;
function llamaconsultafib(base2:tibdatabase;sqltexto2,orden2,wheretexto2,camporetorno,imp:string;
         sender:tobject;mititul:string):string;
function cambia(subs1,subs2:string;var cadena:string):boolean;
function cambia2(subs1,subs2:string;var cadena:string):boolean;
function cambiaBVG(subs1,subs2:string;var cadena:string):boolean;
function cambiaentre(inicio,final,cadenanueva:string;var cadena:string):boolean;
function exportatxt(mem1,mem2,mem3,base1,base2,base3,formatofecha,fichero,campsepara,relleno:string;decsepara:char):boolean;
function exportatxt2(mem1,mem2,mem3,base1,base2,base3,formatofecha,fichero,campsepara,rellenonumero,rellenostring,formatonumero:string;decsepara:char):boolean;
function exportatxt3(mem1,mem2,mem3,base1,base2,base3,formatofecha,fichero,campsepara,rellenonumero,rellenostring,formatonumero:string;decsepara:char):boolean;

function exportatxtib(mem1,mem2,mem3,base1,base2,base3,formatofecha,fichero,campsepara,relleno:string;decsepara:char):boolean;
function inserta(cade1,bloc:string;tipo:tfieldtype;tama:integer):string;
procedure mitrazaerrores(sender:tobject;e:exception);
function  selecta(campo,sel,comillas:string):string;
function ValidaCIF(Cif: string):boolean;
procedure calcolumn(migrid: tdbgrideh);
procedure calcolumn2(migrid: tdbgrid);
procedure mandaerror(sender:tobject;e:exception;mensaje:string;acaba:boolean;gravedad:integer=1);
procedure mandaerror2(sender:tobject;e:exception;mensaje:string;acaba:boolean;gravedad:integer);
procedure mandaerrorporemail(e:exception;mensaje:string;acaba:boolean;
           nomsmtp,remite,listadestinosentrecomas,login,password:string);
function cambiames(fecha:tdatetime;salto:integer):tdatetime;
function sacatabla(elsql: string): string;
function NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
function sacames(fecha:tdatetime):integer;
function sacaanyo(fecha:tdatetime):integer;
procedure separa(cadena:string;var lista:tstringlist);
procedure separa2(cadena:string;var lista:tstringlist;charsepara:char);


procedure mimensaje(mensaje:string;tiempo:integer);
function GetAdapterInfo(Lana: Char): String;
function GetMACAddress: string;
function sacatablaconinner(elsql: string): string;
function GetOSVersion : Integer;
procedure copiafacil(permitelocal:boolean=false);
procedure iniciaresumido;
function enviaemail(nomsmtp,remite,listadestinosentrecomas,asunto,ficheroadjunto,cuerpomensaje,login,contra:string;SSL:boolean;puerto:integer):boolean;
function cogederechos:boolean;
function TeDretAccesram(mdrets:string; mensaje: Boolean=False; MirarDretTotal: Boolean = True): Boolean;
function SetPrinter(const PrinterName: String): boolean;
function selectPrinterQr(qrep:TQuickRep;impresora:string):boolean;
procedure impresorasplanta(planta:string;norma:string;var limpresoras:tstringlist);
function impresorapordefecto:boolean;
procedure GetPrinterNames(var listaprinters:tstringlist);
function ParseNames(const namebuffer: TPrinterBuffer; var startPos: integer): string;
function leereg_multi_sz(raiz:hkey;clave,valor:string):string;
function guardareg_multi_sz(raiz:hkey;clave,valor,contenido:string):boolean;
procedure BuscaFicheros(path, mask : AnsiString; var Value : TStringList; brec : Boolean);
procedure BuscaFicheros2(path: AnsiString; var Value : TStringList; FileAttrs:integer);
procedure estoyvivo(activo:boolean;proceso:string='';minutos:integer=0);
function estavivo(mensaje:boolean):boolean;
function misalidaauto:integer;
function cifra(cadena:string):string;
function descifra(cadena:string):string;
function entrabaseparams(alias:string; var mibase:tibdatabase):boolean;
function entrabaseparamsBDE( alias:string;var mibase:tdatabase):boolean;
function creadir(ruta: string): boolean;
function NIFOK(numi:string):boolean;
function DelTree(const Directory: TFileName):boolean;
function evitanulo(valor:tfield):variant;
function Generar_IBAN(Pais, Cuenta: string): string;

function Generar_acreedor(pais,acreetot:string):string;

function EsAlfanumerico(Caracter: Char): boolean;
function EsNumerico(Caracter: Char): boolean;
function StrippedOfNonAscii(const s: string): string;
function entravariablessql(sql:string):string;
function GetSizeOfFile(FileName: string): Int64;
function FormatFileSize(AValue: Int64): string;
function GetUserAndDomainFromPID(ProcessId: DWORD;
  var User, Domain: string): Boolean;

procedure GetNicAddress (NIC : pchar); cdecl; external 'NIC.DLL';

procedure resinstalaimpresorared(impresora:string);
function borraimpresora(impresora:string):boolean;
function addimpresora(impresora:string):boolean;
function PingHost(const HostName:string;TimeoutMS:cardinal=500):boolean;
function damedirectori(nom:string;mibase:tibdatabase):string;
function QuitarCaracteres(Str: String): String;
function KillTask(FileName:String;espera:boolean):boolean;
function QuitarCaracteresEsp(Str: String): String;

{

function SetSuspendState(
   Hibernate: Boolean;
   ForceCritical: Boolean;
   DisableWakeEvent: Boolean):boolean;

function LinkAPI(const module; functionname: string): Pointer;
// funciones ib
  }


implementation



uses fichaconsulta_7,fichaconsulta_7fib, IdTCPConnection, IdTCPClient, IdBaseComponent, HYDialogLista;



function IcmpCreateFile:THandle; stdcall; external 'iphlpapi.dll';
function IcmpCloseHandle(icmpHandle:THandle):boolean; stdcall; external 'iphlpapi.dll'
function IcmpSendEcho(IcmpHandle:THandle;DestinationAddress:In_Addr;RequestData:Pointer;
  RequestSize:Smallint;RequestOptions:pointer;ReplyBuffer:Pointer;ReplySize:DWORD;
  Timeout:DWORD):DWORD; stdcall; external 'iphlpapi.dll';
  

procedure inicia(basedatos:string);
var
  Tmp: PChar;
   Longi,dwi: DWORD;
   MaxLen: longword;
   cCode: Integer;
   LocalName: PChar;
   RemoteName: PChar;
   UserName: PChar;
   PCName: PChar;
   JvComputerInfoEx1: TJvComputerInfoEx;

begin
    // Obrir els parametres del aplicatiu


   // Predefinim opcions per l'aplicatiu. Const de SysUtils

    Application.UpdateFormatSettings:=False; // No permetem el cambi en Panel de Control / Configuraciones Regionales

    DateSeparator:= '/'; // Separador de datas.
    ShortDateFormat := 'dd/MM/yyyy'; // 4 digits a l'any,
    LongDateFormat:= 'dddd d" de "MMMM" de "yyyy';
    TwoDigitYearCenturyWindow:=10;

    TimeSeparator   := ':';
    TimeAMString    := 'Pm';
    TimePMString    := 'Am';
    ShortTimeFormat := 'H:mm:ss';
    LongTimeFormat  := 'H:mm:ss';

    ShortMonthNames[ 1]:='Gen';
    ShortMonthNames[ 2]:='Feb';
    ShortMonthNames[ 3]:='Mar';
    ShortMonthNames[ 4]:='Abr';
    ShortMonthNames[ 5]:='Mai';
    ShortMonthNames[ 6]:='Jun';
    ShortMonthNames[ 7]:='Jul';
    ShortMonthNames[ 8]:='Ago';
    ShortMonthNames[ 9]:='Set';
    ShortMonthNames[10]:='Oct';
    ShortMonthNames[11]:='Nov';
    ShortMonthNames[12]:='Des';

    LongMonthNames[ 1]:='Gener' ;
    LongMonthNames[ 2]:='Febrer' ;
    LongMonthNames[ 3]:='Març' ;
    LongMonthNames[ 4]:='Abril' ;
    LongMonthNames[ 5]:='Maig' ;
    LongMonthNames[ 6]:='Juny' ;
    LongMonthNames[ 7]:='Juliol' ;
    LongMonthNames[ 8]:='Agost' ;
    LongMonthNames[ 9]:='Setembre' ;
    LongMonthNames[10]:='Octubre' ;
    LongMonthNames[11]:='Novembre' ;
    LongMonthNames[12]:='Desembre' ;

    ShortDayNames[2]:='DiL';
    ShortDayNames[3]:='DiM';
    ShortDayNames[4]:='DiN';
    ShortDayNames[5]:='DiJ';
    ShortDayNames[6]:='DiV';
    ShortDayNames[7]:='DiS';
    ShortDayNames[1]:='DiU';

    LongDayNames[2]:='Dilluns';
    LongDayNames[3]:='Dimarts';
    LongDayNames[4]:='Dimecres';
    LongDayNames[5]:='Dijous';
    LongDayNames[6]:='Divendres';
    LongDayNames[7]:='Dissabte';
    LongDayNames[1]:='Diumenge';

    // Busquem el login i la maquina(pc)

    MaxLen := 255;
    GetMem(UserName,MaxLen);
    GetMem(LocalName,MaxLen);
    GetMem(PCName,MaxLen);
    GetMem(RemoteName,MaxLen);


   StrCopy(LocalName,PChar('F:'));


    cCode := WNetGetUser(LocalName,UserName,MaxLen);
    if cCode=0
    then ID_LOGIN := UpperCase(GetUserName(UserName))
    else ID_LOGIN:='**';

    cCode := WNetGetConnection(LocalName,RemoteName,MaxLen);
    if cCode=0 then ID_REMOTE := String(RemoteName) else ID_REMOTE:= '**';

    GetMem(Tmp,MaxLen);
    GetNicAddress(Tmp);
    ID_NIC := String(Tmp);
    IF (ID_NIC='000000000001') OR (ID_NIC='') or (trim(uppercase(ID_NIC))='MAC NOT FOUND') THEN
    ID_NIC:=GetMACAddress;

    GetComputerName(pcName,maxlen);
    ID_COMPUTER:= String(PCName);


JvComputerInfoEx1:=TJvComputerInfoEx.Create(application);

id_loginwin:=JvComputerInfoEx1.Identification.LocalUserName;

JvComputerInfoEx1.Free;

if ((ID_LOGIN='') OR (ID_LOGIN='**')) and (id_loginwin<>'') then id_login:=uppercase(id_loginwin);

//   ID_LOGINWIN   := GetEnvironmentVariable('USERNAME');

{    dwI := MAX_PATH;
    SetLength (ID_LOGINWIN, dwI + 1);
    if WNetGetUser (Nil, PChar (ID_LOGINWIN), dwI) = NO_ERROR then
        SetLength (ID_LOGINWIN, StrLen (PChar (ID_LOGINWIN)));
 }


    try

   qparametres:=tquery.create(application);
    qdretsacces:=tquery.create(application);
    with qparametres do
      begin
      databasename:=basedatos;
      sql.text:='select * from config';
      end;
    with qdretsacces do
      begin
      databasename:=basedatos;
      sql.text:='SELECT A.C_ACCES, DA.C_DRET,D.DESCRIPCIO'+
        ' FROM ACCESOS A '+
        ' left join DRETSACCES DA on a.c_acces=da.c_acces'+
        ' left join drets d on da.c_dret=d.c_dret'+
        ' WHERE ((upper(A.C_LOGIN) = upper(:LOGIN) ) AND (A.C_PLACA = :PLACA)'+
        ' AND a.C_LOGIN IS NOT NULL AND a.C_PLACA IS NOT NULL )'+
        ' OR'+
        ' (UPPER(a.C_LOGIN)=UPPER(:LOGIN) AND (a.C_PLACA IS NULL or f_lrtrim(c_placa)=''))'+
        ' OR'+
        ' (UPPER(a.C_PLACA)=UPPER(:PLACA) AND (a.C_LOGIN IS NULL or f_lrtrim(c_login)=''))'+
        ' ORDER BY C_PLACA DESC';
      end;

    QParametres.Open;

   StrCopy(LocalName,PChar(QParametres.FieldByName('UnitatRed').AsString));

   if ID_NIC = ''
   then QDretsAcces.ParamByName('placa').Clear
   else QDretsAcces.ParamByName('placa').AsString := ID_NIC;

   if ID_LOGIN = ''
   then QDretsAcces.ParamByName('login').Clear
   else QDretsAcces.ParamByName('login').AsString := ID_LOGIN;

   QDretsAcces.Open;

   NO_ACCES := QDretsAcces.FieldByName('C_ACCES').AsString;

   except
   end;

    freeMem(UserName,MaxLen);
    freeMem(LocalName,MaxLen);
    freeMem(PCName,MaxLen);
    freeMem(RemoteName,MaxLen);

end;

function TeDretAcces(ListDrets: Array Of Const; FerRaise: Boolean=False; MirarDretTotal: Boolean = True): Boolean;
var
   Dret: Integer;
   Bucle: Integer;
begin

{ funcion que le pasas en listdrets ejm ('A25','A1','A4') los derechos que
  quieres que te mire, si tiene algun derecho de estos te devuelve true
  si le ponemos ferRaise true entonces da error en la aplicacion si no tiene
  ninguno de los derechos parados en listDrets.
  Si le ponemos mirardrettotal si tiene el A100 , entonces siempre devuelve
   true}

     Result := False;

       //Primer Mirem si te el dret A100 . dret total.
       if MirarDretTotal then
       begin
           QDretsAcces.First;
           While not QDretsAcces.Eof do
           begin
                if QDretsAcces.FieldByName('C_Dret').AsString='A100'
                then Result := True;
                if Result then Break;
                QDretsAcces.Next;
           end;
           if Result then Exit;
       end;

       // Recorrem els drets de l'acces per mirar si els te
       QDretsAcces.First;
       While not QDretsAcces.Eof do
       begin
            For Bucle := 0 to High(ListDrets) do
            begin
                 Dret := ListDrets[Bucle].vInteger;
                 // Simplement que trovem un dret (positiu) ja es valit.
                 if (Dret>0) and (QDretsAcces.FieldByName('C_Dret').AsString='A'+IntToStr(Dret) )
                 then Result := True;
            end;
            // Si ja hem trovat un, no continuem buscant
            if Result then Break;
            QDretsAcces.Next;
       end;

       // Ara fem lo mateix per mirar els que no te que tindre
       if Result then
       begin
            QDretsAcces.First;
            While not QDretsAcces.Eof do
            begin
                 For Bucle := 0 to High(ListDrets) do
                 begin
                      Dret := ListDrets[Bucle].vInteger;
                      // Simplement que trovem un dret (negatiu) tot ja sera invalit.
                      if (Dret<0) and (QDretsAcces.FieldByName('C_Dret').AsString='A'+IntToStr(Abs(Dret)))
                      then Result := False;
                 end;
                 // Si ja hem trovat un, no continuem buscant
                 if not Result then Break;
                 QDretsAcces.Next;
            end;
       end;

       // Si no te el dret fem el Raise.
       if FerRaise and not Result
       then showmessage('No drets per fer aixo');
end;


function GetUserName (Cadena: PChar): String;
var
  contCadena, ContCN: integer;
  CN: PChar;
  Guardar: Boolean;
begin
    CN := 'CN='; Result := ''; Guardar := False; ContCN := 0;
    For contCadena := 0 to length (cadena)  do
    begin
         If Guardar Then
         begin
              If cadena[contCadena] <> '.'
              Then Result  := result + cadena[contCadena]
              Else guardar := False;
         end;
         If cadena[contCadena] = CN[contCN] Then
         begin
              If contCN = length (CN)-1
              Then Guardar := True
              Else Inc (contCN);
         end else contCN := 0;
    end;
end;



function siestaexe(FileName:String;tope:integer;primerplano:boolean;check_user_domain:bool=False):boolean;
 var
     ContinueLoop:BOOL;
     FSnapshotHandle:THandle;
     FProcessEntry32:TProcessEntry32;
     exes,exesdom:integer;
     Domain, User: string;
     currentDomain, currentUser: string;
     currentPid: Cardinal;
 const
     PROCESS_TERMINATE=$0001;
 begin
 exes:=0;
 // funcion que busca si se esta ejecutando un programa dado por el nombre
// si esta mas veces que el numero tope entonces devuelve true
// si primerplano es true entonces pone en primer plano la aplicacion
 // si primerplano es true la pone en primer plano
     FSnapshotHandle:=CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);
     FProcessEntry32.dwSize:=Sizeof(FProcessEntry32);
     ContinueLoop:=Process32First(FSnapshotHandle,FProcessEntry32);

    currentPid := GetCurrentProcessId();
    GetUserAndDomainFromPID(currentPid, currentUser, currentDomain);


     while integer(ContinueLoop)<>0 do
      begin
       //compara todos los procesos
       if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))=UpperCase(FileName))
          or (UpperCase(FProcessEntry32.szExeFile)=UpperCase(FileName)))   then
          begin
            if (GetUserAndDomainFromPID(FProcessEntry32.th32ProcessID , User, Domain)) then
            begin
                if (user=currentUser) and (domain=currentDomain) then
                begin
                    inc(exesdom,1);  //incrementa el contador de los que encuentra en usuario dominio
                end
            end;

          inc(exes,1);  //incrementa el contador de los que encuentra en maquina
          end;

           // si ha encontrado mas del numero de exes como tope
           // si es asi cierra la aplicacion
           if ( check_user_domain and (exesdom>tope))   or (not check_user_domain and (exes>tope)) then
              begin
              // pone la aplicacion existente en primer plano
              if (primerplano) and
                  (setfocus(OpenProcess(PROCESS_ALL_ACCESS,BOOL(0),
                  FProcessEntry32.th32ProcessID))<>null) then
                    application.bringtofront;
              result:=true;
              exit
              end;

        ContinueLoop:=Process32Next(FSnapshotHandle,FProcessEntry32);


 //      showmessage('ID: '+inttostr(FProcessEntry32.th32ProcessID)+', EJECUTABLE: '+
 //      extractfilename(FProcessEntry32.szExeFile)+' , RESULT: '+ inttostr(result));
      end;
     CloseHandle(FSnapshotHandle);

 result:=false;
 end;


function NIF(DNI: String): Char;
begin
  Result := Copy('TRWAGMYFPDXBNJZSQVHLCKET',StrToInt(DNI) mod 23+1,1)[1];

end;


function NIF_NIE(numeroDocumento: String): Char;
var
    numero: Integer;
begin
    // Convertir la primera letra del NIE (si existe) a un número
    if numeroDocumento[1] in ['X', 'Y', 'Z'] then   // si es NIE paso la letra primera a numero
      begin
      numero := Ord(numeroDocumento[1]) - Ord('X');  // calcula el codigo primero segun letra del NIE X=0 Y=1 Z=2 restando el cocigo ASCII con la funcion ord()
      numerodocumento:= inttostr(numero)+copy(numerodocumento,2,length(numerodocumento)-1); //asignamos el numero al documento
      end;
      try
      numero:=strtoint(numerodocumento);
      except
      result:=' ';
      exit;
      end;

    // Calcular el módulo según el número obtenido y devolver la letra
     Result := Copy('TRWAGMYFPDXBNJZSQVHLCKET',StrToInt(numerodocumento) mod 23+1,1)[1];

end;

function biencuenta(Cuentatot: string):boolean;
  const
    Pesos: array[0..9] of integer=(6,3,7,9,10,5,8,4,2,1);
  var
    n      : byte;
    iTemp,codicont  : integer;
    banco,cuenta:string;

  begin

    if (length(trim(cuentatot))=0) then
      begin
      result:=true;
      exit
      end;

     if (length(cuentatot)<>20) then
       begin
       result:=false;
       exit
       end;
    banco:=copy(cuentatot,1,8);
    cuenta:=copy(cuentatot,11,10);
    iTemp:=0;
    for n := 0 to 7 do
       iTemp := iTemp + StrToInt(Copy(Banco, 8 - n, 1)) * Pesos[n];

    codicont:=11 - iTemp mod 11;
    if (codicont > 9) then codicont:=1-codicont mod 10;
    iTemp:=0;
    for n := 0 to 9 do
       iTemp := iTemp + StrToInt(Copy(Cuenta, 10 - n, 1)) * Pesos[n];
    iTemp:=11 - iTemp mod 11;
    if (iTemp > 9) then iTemp:=1-iTemp mod 10;
    codicont:=codicont*10+iTemp;

    result:=codicont=strtoint(copy(cuentatot,9,2));
  end;

function dnibien(Sender: TObject):boolean;
var
DNI:string;
begin
result:=true;
tedit(sender).color:=clwindow;
if trim(Tedit(sender).text)='' then // si en blanco
  begin
//   showmessage('Camp obligatori');
//   dbedit6.setfocus;
   exit
  end;
DNI:=trim(copy(Tedit(sender).text,1,9));
{try
  dninum:=strtoint(dni);
except
  showmessage('DNI no valid');
  result:=false;
  tedit(sender).color:=clred;
  exit;
end;}

// desactivada funciona GLPI 15683
{
if letra='' then  // si no tiene letra la calcula y la pone
   begin
    Tedit(sender).text:=dni+nif(dni);
    exit
   end;
 }

if checkdni(dni)  then // si tiene letra la comprueba
  begin
  showmessage('NIF o NIE erroni');
//  tedit(sender).setfocus;
  result:=false;
  tedit(sender).color:=clred;
  end;
end;

function checkdni(dni:string):boolean;
var
letra,numeros:string;
dninum:integer;
begin
dni:=uppercase(dni);
letra:=copy(dni,9,1);
numeros:=trim(copy(dni,1,8));
{try
 dninum:=strtoint(numeros);
except;
 result:=false;
 exit;
end;}
if nif_nie(numeros)<>letra then
  result:=false
  else result:=true;
exit;
end;

function vacio(sender:tobject):boolean;
begin
if tedit(sender).text='' then
   begin
   showmessage('Camp obligatori');
   tedit(sender).setfocus;
   result:=true;
   exit;
   end;
result:=false;
end;

function llamaconsulta(base2,sqltexto2,orden2,wheretexto2,camporetorno,imp:string;sender:tobject):string;
var
miconsulta:tconsultaform;
//xl,ancho:integer;
begin
// base = nombre interno de la base de datos normalmente inter
// sqltexto poner el select campos from tabla sin condicion ni orden
// orden es el orden de la table osea order by
// wheretexto es la condicion del sql
// camporetorno es el campo del sql que quieres meter en el campo de edicion
// sender es el control que llama a la funcion, tiene que ser o un tdbedit o
// un tdbgrid
// imp 'S' muertra el boton imprimir en otro caso no lo muestra

miconsulta:=tconsultaform.create(application);

//  Application.CreateForm(Tconsultaform, consultaform);
  if imp<>'S' then
     miconsulta.bitbtn1.visible:=false;
  with miconsulta do
     begin
     baseinterna:=base2;
     sqltexto:=sqltexto2;



   // calcula el ancho de las columnas y ajusta la ficha


  if (pos('UNION',uppercase(sqltexto))>0) then
    begin

      speedbutton1.visible:=false;

    end;
  orden:=orden2;
  wheretexto:=wheretexto2;
  wheretextoantic:=wheretexto2;
  miconsulta.ejecutasql;
{  ancho:=0;
  for xl:=0 to DBGrid1xlt.Columns.Count-1 do
     inc(ancho,miconsulta.DBGrid1xlt.Columns[xl].Width);
   miconsulta.Width:=ancho+40;
   miconsulta.Height:=300;    }
{  if (sender is tdbgrideh) then
    miconsulta.top:=DBGrid1xlt.SelectedRows      }

  result:='';
  miconsulta.showmodal;
  if esclick and (trim(camporetorno)<>'') then
   begin
   if (sender.classnameis('tedit')) or (sender.classnameis('tdbedit')) then
      begin
      if sender.classnameis('tdbedit') then
         tdbedit(sender).datasource.edit;
      tedit(sender).text:=miconsulta.qconsulta[camporetorno];
      end
     else
     if  (sender.classnameis('tdbgrid')) then
      begin
      tdbgrid(sender).datasource.edit;
      tdbgrid(sender).selectedfield.text:=miconsulta.qconsulta[camporetorno];
      end
     else
     if (sender.classnameis('tdbgrideh')) then
      begin
      tdbgrideh(sender).datasource.edit;
      tdbgrideh(sender).selectedfield.text:=miconsulta.qconsulta[camporetorno];
      end
      else
      if uppercase(imp)<>'S' then
        if miconsulta.qconsulta[camporetorno]<>null then
        result:=miconsulta.qconsulta[camporetorno]
        else result:='';
   end;
   free;
  end //with miconsulta
end;

function cambia(subs1,subs2:string;var cadena:string):boolean;
var
posi:integer;
cadena2:string;
begin
//sustituye la cadena subs1 por subs2 en el string cadena
result:=true;
while pos(subs1,cadena)>0 do
  begin
  posi:=pos(subs1,cadena);
  cadena2:=copy(cadena,1,posi-1)+subs2+copy(cadena,posi+length(subs1),length(cadena));
  cadena:=cadena2;
  result:=true
  end;
end;

function cambia2(subs1,subs2:string;var cadena:string):boolean;
var
posi:integer;
cadena2:string;
begin
//sustituye la cadena subs1 por subs2 en el string cadena només 1 vegada
posi:=pos(subs1,cadena);
if posi<>0 then
begin
    cadena2:=copy(cadena,1,posi-1)+subs2+copy(cadena,posi+length(subs1),length(cadena));
    cadena:=cadena2;
end;
result:=posi<>0;
end;



function cambiaBVG(subs1,subs2:string;var cadena:string):boolean;
begin
  Result := cambia(subs1,subs2,cadena);
end;

function exportatxt(mem1,mem2,mem3,base1,base2,base3,formatofecha,fichero,campsepara,relleno:string;decsepara:char):boolean;
var
incre,campx:integer;
tipo:tfieldtype;
qmio:tquery;
f:textfile;
linea,campi,lineavacia:string;
respuesta:word;
ext:string;
mitabla:ttable;
i:integer;
bloque:pchar;
begin
{Funcion que exporta fichero a formato texto, pasando un array de 3x2
 los 3 elementos son cada sql de cabecera,cuerpo y pie, especificando
 para cada uno el alias de la base de datos, si solo tiene el primero
 los demas toman este valor.
 Los datos se guardaran el el fichero especificado en la variable fichero}
// ultima actualizacion el formato pues ser dbf

result:=false;

qmio:=tquery.create(application);
if base2='' then
   base2:=base1;
if base3='' then
   base3:=base1;

ext:=uppercase(copy(trim(fichero),length(trim(fichero))-2,3));
if ext<>'DBF' then
assignfile(f,fichero);




if fileexists(fichero) then
   begin //01
{   respuesta:=MessageDlg('Fichero existente, '+
   '¿ Sobreescribir (Yes), Añadir (No) o Cancelar ?',
    mtWarning, [mbYes,mbNo,mbCancel], 0);}


{   if respuesta=MrCancel then
      begin //02
      result:=false;
      exit;
      end   //02
   else
     begin  //03
       if respuesta=MrYes then
         begin // Mryes
         if ext='TXT' then
            rewrite(f)
         else
           if ext='DBF' then
              deletefile(fichero);
         end
       else // si no Mryes , eso es que es MrNo osea añadir}
       if ext<>'DBF' then
         append(f)
//     end  //03
   end //01
  else
  if ext<>'DBF' then
     rewrite(f);

decimalseparator:=decsepara;

for incre:=1 to 3 do
  begin  //1
  with qmio do
    begin //2
    close;
    databasename:='';
    sql.clear;
    if incre=1 then
      begin
      if mem1='' then
         continue;
      databasename:=base1;
      sql.text:=mem1
      end
    else
       if incre=2 then
        begin
        if mem2='' then
          continue;
        databasename:=base2;
        sql.text:=mem2
        end
       else
         begin
         if mem3='' then
           continue;
         databasename:=base3;
         sql.text:=mem3
         end;
    try
    open;
    except
     result:=false;
     if ext<>'DBF' then
        closefile(f);
     qmio.close;
     qmio.free;
     showmessage('error en sql');
     exit;
    end;

    end; //2
    // si ha encontrado registros
    if qmio.recordcount>0 then
       begin //3
          //va rellendo el fichero

        if ext='DBF' then
          begin
          mitabla:=ttable.create(application);
          with mitabla do
            begin  //35
            Active := False;
            TableType := ttdefault;
            TableName := fichero;
            if not fileexists(fichero) then
               begin
               FieldDefs:=qmio.FieldDefs;
               createtable;
               end;
             mitabla.open;
             end;   // 35
           end; // si dbf

          qmio.first;
          while not qmio.eof do
            begin //4
             if ext<>'DBF' then
              begin  // ext='TXT'
             linea:='';
             lineavacia:='';
            for campx:=0 to qmio.fieldcount -1 do
              begin //5
              tipo:=qmio.fielddefs[campx].datatype;
              campi:='';
              if tipo in [ftinteger,ftsmallint,ftcurrency,ftword,ftautoinc] then
                 campi:=inserta(inttostr(qmio.fields[campx].asinteger),relleno,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat)));
              if tipo in [ftfloat,ftlargeint] then
                 campi:=inserta(floattostr(qmio.fields[campx].asfloat),relleno,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat)));
              if tipo in [ftstring,ftFixedChar] then
                 campi:=inserta(qmio.fields[campx].asstring,relleno,
                 qmio.fields[campx].datatype,
                 qmio.fields[campx].size);

             if (tipo in [ftmemo,ftblob,ftfmtmemo]) then
                 campi:=qmio.fields[campx].value;

              if tipo in [ftdate,ftdatetime] then
                 campi:=inserta(formatdatetime(formatofecha,
                 qmio.fields[campx].asdatetime),relleno,
                 qmio.fields[campx].datatype,
                 length(formatofecha));
              lineavacia:=lineavacia+campi; // para que no ponga lineas vacias
              cambia('0','',lineavacia);
              lineavacia:=trim(lineavacia);
              linea:=linea+campi+campsepara;
              end;  //5
            if (trim(lineavacia)<>'') and
            (lineavacia<>'           0                                      0                                                           ')
            and
            (lineavacia<>'           0                                       0                                                           ')
             then //mira primero si lo campos estan vacios
               writeln(f,linea);
            end; // ext='TXT'

            if ext='DBF' then
               begin
               with mitabla do
                 begin
                 append;
                 for i:=0 to fieldcount-1 do
                   mitabla.fields[i].value:=qmio.Fields[i].Value;
                 post;
                 end; //mitabla
               end;
            qmio.next;
            end;  //4
           if ext='DBF' then
             begin
             mitabla.close;
             mitabla.free;
             end;
       end;  //3
  end;   //1

//cierra el fichero de texto
if ext<>'DBF' then
   begin
   writeln(f,#26);
   closefile(f);
   end;
qmio.close;
qmio.free;
result:=true;
end;


function exportatxt2(mem1,mem2,mem3,base1,base2,base3,formatofecha,fichero,campsepara,rellenonumero,rellenostring,formatonumero:string;decsepara:char):boolean;
var
incre,campx:integer;
tipo:tfieldtype;
qmio:tquery;
f:textfile;
linea,campi,lineavacia:string;
respuesta:word;
ext:string;
mitabla:ttable;
i:integer;
begin
{ exportacion a fichero de texto de 3 querys que son cabecera detalle y pie
o totales. Funcion pensada para traspaso de datos domiciliaciones o hacienda
mem1, mem2, mem2 son las querys de cabecera detalle y pie y se añaden los valores
de los campos con eses orden al fichero de texto
base1,... son las bases de datos nombre interno del objeto tdatabase
formato fecha es el formato psado a funcion formatdatetime por ejm dd/mm/yyyy hh:nn
campsepara es el separados entre campos que puede ser , ; espacio o nada u otro caracter
rellenonumero caracter de relleno de numero que se rellenara a las izquerda co la longitud del campo de la base de datos , tambien las fechas
rellenostring caracter que se rellenara con la longuitud del campo en caso de que sea alfanumerico y se rellena a la derecha
formatonumero es el formato numero de todos los numeros en caso de que el numero no sea entero y sea double, se le pasa a formatfloat
decsepara es el caracter decimal, si no se pasa nada lo pasa con el formato por defecto a string     }

result:=false;

qmio:=tquery.create(application);
if base2='' then
   base2:=base1;
if base3='' then
   base3:=base1;

ext:=uppercase(copy(trim(fichero),length(trim(fichero))-2,3));
if ext<>'DBF' then
assignfile(f,fichero);




if fileexists(fichero) then
   begin //01

       if ext<>'DBF' then
         append(f)

   end //01
  else
  if ext<>'DBF' then
     rewrite(f);

decimalseparator:=decsepara;

for incre:=1 to 3 do
  begin  //1
  with qmio do
    begin //2
    close;
    databasename:='';
    sql.clear;
    if incre=1 then
      begin
      if mem1='' then
         continue;
      databasename:=base1;
      sql.text:=mem1
      end
    else
       if incre=2 then
        begin
        if mem2='' then
          continue;
        databasename:=base2;
        sql.text:=mem2
        end
       else
         begin
         if mem3='' then
           continue;
         databasename:=base3;
         sql.text:=mem3
         end;
    try
    open;
    except
      on  e:exception do
        begin
        result:=false;
        if ext<>'DBF' then
           closefile(f);
        qmio.close;
        qmio.free;
        showmessage('error en sql, '+e.message);
        exit;
     end;
    end; //try

    end; //2
    // si ha encontrado registros
    if qmio.recordcount>0 then
       begin //3
          //va rellendo el fichero

        if ext='DBF' then
          begin
          mitabla:=ttable.create(application);
          with mitabla do
            begin  //35
            Active := False;
            TableType := ttdefault;
            TableName := fichero;
            if not fileexists(fichero) then
               begin
               FieldDefs:=qmio.FieldDefs;
               createtable;
               end;
             mitabla.open;
             end;   // 35
           end; // si dbf

          qmio.first;
          while not qmio.eof do
            begin //4
             if ext<>'DBF' then
              begin  // ext='TXT'
             linea:='';
             lineavacia:='';
            for campx:=0 to qmio.fieldcount -1 do
              begin //5
              tipo:=qmio.fielddefs[campx].datatype;
              campi:='';
              if tipo in [ftinteger,ftsmallint,ftcurrency,ftword,ftautoinc] then
                 campi:=inserta(inttostr(qmio.fields[campx].asinteger),rellenonumero,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat)));

              if tipo in [ftfloat,ftlargeint] then
                 if formatonumero<>'' then
                 begin
                 campi:=inserta(FormatFloat(formatonumero,qmio.fields[campx].asfloat),rellenonumero,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat))   ) 
                 end
                 else
                 campi:=inserta(floattostr(qmio.fields[campx].asfloat),rellenonumero,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat)));

              if tipo in [ftstring,ftFixedChar] then
                 begin
                   if qmio.Fields[campx].size=254 then
                    campi:=inserta(qmio.fields[campx].asstring,rellenostring,
                    qmio.fields[campx].datatype,length(qmio.Fields[campx].asstring))
                  else
                   campi:=inserta(qmio.fields[campx].asstring,rellenostring,
                    qmio.fields[campx].datatype,qmio.fields[campx].Size);

                 end;

             if (tipo in [ftmemo,ftblob,ftfmtmemo]) then
                 campi:=qmio.fields[campx].value;

              if tipo in [ftdate,ftdatetime] then
                 campi:=inserta(formatdatetime(formatofecha,
                 qmio.fields[campx].asdatetime),rellenonumero,
                 qmio.fields[campx].datatype,
                 length(formatofecha));
              lineavacia:=lineavacia+campi; // para que no ponga lineas vacias
              cambia('0','',lineavacia);
              lineavacia:=trim(lineavacia);
              linea:=linea+campi+campsepara;
              end;  //5
            if (trim(lineavacia)<>'') and
            (lineavacia<>'           0                                      0                                                           ')
            and
            (lineavacia<>'           0                                       0                                                           ')
             then //mira primero si lo campos estan vacios
               writeln(f,linea);
            end; // ext='TXT'

            if ext='DBF' then
               begin
               with mitabla do
                 begin
                 append;
                 for i:=0 to fieldcount-1 do
                   mitabla.fields[i].value:=qmio.Fields[i].Value;
                 post;
                 end; //mitabla
               end;
            qmio.next;
            end;  //4
           if ext='DBF' then
             begin
             mitabla.close;
             mitabla.free;
             end;
       end;  //3
  end;   //1

//cierra el fichero de texto
if ext<>'DBF' then
   begin
  // writeln(f,#26);
   {17/01/2016  esto pone el caracter SUB substitucion, no se porque lo pongo
    en exportacion a hacienda de donaciones amics esta caracter da fallo de fichero no valido
    para codificacion ISO-8859-1 si quitamos este caracter si funciona
    lo dejo comentado para que no se ponga en cierre de fichero  }

   closefile(f);
   end;
qmio.close;
qmio.free;
result:=true;



end;

function exportatxt3(mem1,mem2,mem3,base1,base2,base3,formatofecha,fichero,campsepara,rellenonumero,rellenostring,formatonumero:string;decsepara:char):boolean;
var
incre,campx:integer;
tipo:tfieldtype;
qmio:tquery;
f:textfile;
linea,campi,lineavacia:string;
respuesta:word;
ext:string;
mitabla:ttable;
i:integer;
listtext:tstringlist;
begin
// 26/4/2022 igual que exportatxt2 pero solo txt sin dbf y crear fichero con tstringlist para compatiblidad caracteres ISO-8859

{ exportacion a fichero de texto de 3 querys que son cabecera detalle y pie
o totales. Funcion pensada para traspaso de datos domiciliaciones o hacienda
mem1, mem2, mem2 son las querys de cabecera detalle y pie y se añaden los valores
de los campos con eses orden al fichero de texto
base1,... son las bases de datos nombre interno del objeto tdatabase
formato fecha es el formato psado a funcion formatdatetime por ejm dd/mm/yyyy hh:nn
campsepara es el separados entre campos que puede ser , ; espacio o nada u otro caracter
rellenonumero caracter de relleno de numero que se rellenara a las izquerda co la longitud del campo de la base de datos , tambien las fechas
rellenostring caracter que se rellenara con la longuitud del campo en caso de que sea alfanumerico y se rellena a la derecha
formatonumero es el formato numero de todos los numeros en caso de que el numero no sea entero y sea double, se le pasa a formatfloat
decsepara es el caracter decimal, si no se pasa nada lo pasa con el formato por defecto a string     }

result:=false;

qmio:=tquery.create(application);
if base2='' then
   base2:=base1;
if base3='' then
   base3:=base1;

ext:=uppercase(copy(trim(fichero),length(trim(fichero))-2,3));

listtext:=tstringlist.create;



if fileexists(fichero) then listtext.loadfromfile(fichero);

decimalseparator:=decsepara;

for incre:=1 to 3 do
  begin  //1
  with qmio do
    begin //2
    close;
    databasename:='';
    sql.clear;
    if incre=1 then
      begin
      if mem1='' then
         continue;
      databasename:=base1;
      sql.text:=mem1
      end
    else
       if incre=2 then
        begin
        if mem2='' then
          continue;
        databasename:=base2;
        sql.text:=mem2
        end
       else
         begin
         if mem3='' then
           continue;
         databasename:=base3;
         sql.text:=mem3
         end;
    try
    open;
    except
      on  e:exception do
        begin
        result:=false;
        qmio.close;
        qmio.free;
        showmessage('error en sql, '+e.message);
        listtext.Free;
        exit;
     end;
    end; //try

    end; //2
    // si ha encontrado registros
    if qmio.recordcount>0 then
       begin //3

          qmio.first;
          while not qmio.eof do
            begin //4
             linea:='';
             lineavacia:='';
            for campx:=0 to qmio.fieldcount -1 do
              begin //5
              tipo:=qmio.fielddefs[campx].datatype;
              campi:='';
              if tipo in [ftinteger,ftsmallint,ftcurrency,ftword,ftautoinc] then
                 campi:=inserta(inttostr(qmio.fields[campx].asinteger),rellenonumero,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat)));

              if tipo in [ftfloat,ftlargeint] then
                 if formatonumero<>'' then
                 begin
                 campi:=inserta(FormatFloat(formatonumero,qmio.fields[campx].asfloat),rellenonumero,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat))   ) 
                 end
                 else
                 campi:=inserta(floattostr(qmio.fields[campx].asfloat),rellenonumero,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat)));

              if tipo in [ftstring,ftFixedChar] then
                 begin
                   if qmio.Fields[campx].size=254 then
                    campi:=inserta(qmio.fields[campx].asstring,rellenostring,
                    qmio.fields[campx].datatype,length(qmio.Fields[campx].asstring))
                  else
                   campi:=inserta(qmio.fields[campx].asstring,rellenostring,
                    qmio.fields[campx].datatype,qmio.fields[campx].Size);

                 end;

             if (tipo in [ftmemo,ftblob,ftfmtmemo]) then
                 campi:=qmio.fields[campx].value;

              if tipo in [ftdate,ftdatetime] then
                 campi:=inserta(formatdatetime(formatofecha,
                 qmio.fields[campx].asdatetime),rellenonumero,
                 qmio.fields[campx].datatype,
                 length(formatofecha));
              lineavacia:=lineavacia+campi; // para que no ponga lineas vacias
              cambia('0','',lineavacia);
              lineavacia:=trim(lineavacia);
              linea:=linea+campi+campsepara;
              end;  //5
            if (trim(lineavacia)<>'') and
            (lineavacia<>'           0                                      0                                                           ')
            and
            (lineavacia<>'           0                                       0                                                           ')
             then //mira primero si lo campos estan vacios
               listtext.Add(linea);
            qmio.next;
            end;  //4
            listtext.SaveToFile(fichero);
       end;  //3
  end;   //1


qmio.close;
qmio.free;
result:=true;

listtext.free;

end;




function inserta(cade1,bloc:string;tipo:tfieldtype;tama:integer):string;
var
retorno,relleno:string;
prueba:extended;
xlt:integer;
numerico:boolean;
begin
// devuelve el valor como string con la longuitud tamaño
// si es numerico rellena a la izquierda y si es alfa a la derecha

for xlt:=1 to tama-length(cade1) do
  begin //1
  relleno:=relleno+bloc
  end;  //1

if  (tipo in [ftinteger,ftsmallint,ftcurrency,ftword,ftautoinc] )then
   result:=copy(relleno+cade1,1,tama)
   else
   result:=copy(cade1+relleno,1,tama);

end;

procedure mitrazaerrores(sender:tobject;e:exception);
begin
application.onexception:=nil;

mandaerror(sender,e,'-',true);
end;


procedure mandaerror(sender:tobject;e:exception;mensaje:string;acaba:boolean;gravedad:integer=1);
var
f:textfile;
linea,fitxer,descrip:string;
databaseprovi:tibdatabase;
transprovi:tibtransaction;
miq:tibquery;


begin

// FUNCION PARA EL CONTROL DE ERRORES DE LAS APLICACIONES
{  incluir esta funcion en el main y llamarla desde application.onexception:=trazaini
procedure tmain.trazaini(sender:tobject;e:exception);
begin
mitrazaerrores(sender,e);
end;}

if  ( e<>nil) and (pos('Operation aborted',e.Message)>0) then
    exit;

if mensaje=ultimerror then exit
  else ultimerror:=mensaje;

iniciaresumido;


if (pos('tdbedit',lowercase(sender.classname))>0) or (pos('tdbgrid',lowercase(sender.classname))>0) and
   (pos('is not a valid date and time',e.message)<>0) then
   begin
   showmessage('Data no correcta');
   exit
   end;


if e<>nil then
linea:=formatdatetime('dd,mm,yyyy hh:mm:ss', now)+' '+e.message+#13+#10+mensaje
else
linea:=formatdatetime('dd,mm,yyyy hh:mm:ss', now)+' '+mensaje;
linea:=linea+'  / placa de estacion='+ID_NIC+'   NOMPC: '+ID_COMPUTER;

fitxer:=extractfilepath(application.exename)+'errorlis.log';
assignfile(F,Fitxer);
if not fileexists(fitxer) then rewrite(f);
    append(f);
 writeln(f,linea);
 closefile(f);

if  (e<>nil ) and (pos('NTGUTTMANN7/3050',e.message)>0) then   exit
else
begin

try
databaseprovi:=tibdatabase.Create(application);
transprovi:=tibtransaction.create(application);

except
if acaba then application.terminate
else
begin
databaseprovi.free;
transprovi.free;
exit;
end;
end;
with databaseprovi do
   begin
   DefaultTransaction:=transprovi;
   LoginPrompt:=false;
   if not entrabaseparams('LOGS',databaseprovi) then
       mandaerror(application,errorfalso,'No se puede abrir la base de datos '+databaseprovi.DatabaseName,false);
  try
   open;
   except
   if acaba then  application.terminate
    else
    begin
    databaseprovi.free;
    transprovi.free;
    exit;
    end;
   end;
if e<>nil then
 descrip:=copy(e.message+' / '+mensaje,1,200)
 else
 descrip:=copy(mensaje,1,200);

descrip:=StrippedOfNonAscii(descrip);

// MIRAR QUE NO HAYA "" ni '
if pos('"',descrip)>0 then cambia('"',' ',descrip);
if pos('''',descrip)>0 then cambia('''',' ',descrip);

 miq:=tibquery.create(application);
   with miq do
    begin
    database:=databaseprovi;
    sql.text:='insert into errorcontrol (gravedad, n_exe,n_error,n_placa,n_nompc,dia,n_login) '+
    'values (1,"'+copy(application.exename,length(application.exename)-49,50)
    +'","'+descrip+'","'+ID_NIC+'","'+ID_COMPUTER+'","'+formatdatetime('dd.mm.yyyy hh:mm', now)+'","'+ID_LOGIN+'")';
    execsql;
    if transprovi.InTransaction then transprovi.CommitRetaining;
    if acaba then
     begin
     showmessage(descrip);
     application.terminate;
     end
     else
      begin
      databaseprovi.free;
      transprovi.free;
      exit;
      end;
    free;

  end;  // end with miq

 end;   //end de with databaseprovi
databaseprovi.close;
databaseprovi.free;
transprovi.free;

end; // SI no es fallo de conexion NT7
end;

function  selecta(campo,sel,comillas:string):string;
var
posit1,posit2,le:integer;
ope,cade,ultsepar:string;
primer,fin:boolean;
begin
// funcion que le pasa un string con el campo para hacer un rango
// de SEleccion sobre este campo en un sql.
// la funcion devuelve las cadena entre parentesis que se pone en el
// where , las clausula where no la pone
// sel es la seleccion
// la cadena seleccion contiene el rango introducido por el usuario,
// - signica intervalo y la , significa selecciones sueltas
// 1001-1020 significa del 1001 al 1020 ambos inclusibe
// 1001,1002,1009,1008 significa que coge solo estos valores indicados
// comillas es si el campo de seleccion es alfanumerico le pasaremos el caracter
// comillas le indicamos los delimitadores, esto nos permite tratar los
// numericos (seria '') como los alfanumericos (seria '''' o '"')
le:=length(sel);
posit1:=1;
posit2:=1;
primer:=true;

if pos(',',sel)<>0 then
   begin
   ultsepar:=',';
   posit2:=pos(',',copy(sel,1,le));
   cade:=campo+'='+comillas+copy(sel,1,posit2-1)+comillas;
   end
 else
  if pos('-',sel)<>0 then
     begin
     ultsepar:='-';
     primer:=false;
     posit2:=pos('-',copy(sel,1,le));
     cade:='('+campo+'>='+comillas+copy(sel,1,posit2-1)+comillas;
     end
   else
     begin
     if le>0 then
       result:='('+campo+'='+comillas+trim(sel)+comillas+')'
       else
       result:='';
     exit
     end;
posit1:=posit1+posit2;
fin:=false;
while not fin  do
  begin
  if pos(',',copy(sel,posit1,le))<>0 then
     begin
     posit2:=pos(',',copy(sel,posit1,le));
     ope:=' or '+campo+'='+comillas+copy(sel,posit1,posit2-1)+comillas;
     end
   else
     begin
      if pos('-',copy(sel,posit1,le))<>0 then
        begin
        posit2:=pos('-',copy(sel,posit1,le));
        if primer then
           ope:='( '+campo+'>='+comillas+copy(sel,posit1,posit2-1)+
            comillas
           else
            ope:=' and '+campo+'<='+comillas+copy(sel,posit1,posit2-1)+
            comillas+' ) ';
        end
      else
        begin
          if ultsepar='-' then
           ope:=' and '+campo+'<='+comillas+copy(sel,posit1,le)+
            comillas+ ') '
          else
            ope:=' or '+campo+'='+comillas+copy(sel,posit1,le)+comillas;
        fin:=true
        end;
     end;
  cade:=cade+ope;
  ultsepar:=copy(sel,posit1,1);
  posit1:=posit1+posit2;
  if primer then
     primer:=false
     else
     primer:=true;
end;
result:='('+trim(cade)+')';
end;

function ValidaCIF(Cif: string):boolean;
var Suma, Control : integer;
       n : byte;
begin
Result:=False;
Cif:=UpperCase(Cif);
{El cif debe ser de 9 cifras}
if Length(Cif)=9 then
   begin
        Suma:= StrToInt(Cif[3])+
                         StrToInt(Cif[5])+
                         StrToInt(Cif[7]);
        for n:=1 to 4 do
                begin
                        Suma:=Suma+ ( (2*StrToInt(Cif[2*n])) mod 10 )+
                                        ( (2*StrToInt(Cif[2*n])) div 10 );
                end;
        Control := 10-(Suma mod 10);
        if Pos(Cif[1],'XP')<>0
                then
                        {Control tipo letra}
                        Result:= ( Cif[9] = Chr(64+ Control))
                else
                    begin
                        {Control tipo número}
                        if Control =10 then Control := 0;
                        Result:= ( StrToInt(Cif[9]) = Control);
                   end;
   end;
end;




procedure calcolumn(migrid: tdbgrideh);
var
midata:TDataSet;
maxim: array of integer;
pink:integer;
misource:tdatasource;
columnas:integer;
begin
// pasandole un grid, en el cual no hemos puesto columnas definidas
// nos añade las columnas para los campos de la dataset asignada a esta
// y ajusta las columnas a su ancho
midata:=migrid.datasource.dataset;
if not (midata.active) or  (midata.recordcount=0) then exit;


if midata.fieldcount<>migrid.Columns.count then
   migrid.Columns.RebuildColumns;

if midata.fieldcount<>migrid.Columns.count then exit;



columnas:=migrid.columns.count;
SetLength(maxim,columnas); //dimensiona el array con nº de columnas

misource:=migrid.datasource;
//migrid.datasource:=nil;
misource.enabled:=false;
midata.DisableControls;
if migrid.columns.count=0 then     //si no tiene columnas
   begin
// busca la longuitud maxima para cada campo del dataset
{  midata.first;
midata.first;
while not midata.eof do
  begin
  for pink:=0 to columnas-1 do
    begin
      if midata.fields.fields[pink].DataType=ftmemo then
          maxim[pink]:=35
        else
        if (vartype(midata.Fields.Fields[pink].Value)>1) and
           (length(trim(midata.Fields.Fields[pink].Value))>maxim[pink]) then
            maxim[pink]:=length(midata.Fields.Fields[pink].Value);
    end; //end for
  midata.next;
  end;

// crea las columnas para el dbgrid
  for pink:=0 to midata.fields.count-1 do
    begin
    migrid.columns.Add;
    migrid.columns[pink].field:=midata.fields.Fields[pink];
    end; //end for            }
   end // si no tiene columnas
else
  begin // si tiene columnas
  //busca la maxima dimension para cada campo del dbgrid
  midata.first;
  while not midata.eof do
    begin
    for pink:=0 to columnas-1 do
      begin
      if (midata.fields[pink].DataType=ftmemo) then     maxim[pink]:=35
          else
      if  vartype(midata.fields[pink].value)>1 then
        begin

           if  (midata.fields[pink].DataType=ftdate) then maxim[pink]:=8
             else
               if   (midata.fields[pink].DataType=ftdatetime) then  maxim[pink]:=13
           else
           if (length(trim(midata.fields[pink].asstring))>maxim[pink]) then
             maxim[pink]:=length(trim(midata.fields[pink].asstring));

    if maxim[pink]>50 then maxim[pink]:=50;
      end;

    end; //end for

   midata.next;
   end; // end while not eof
  end; //si tiene columnas


//migrid.datasource:=misource;
midata.enablecontrols;
misource.enabled:=true;

  // dimensiona las columnas
 for pink:=0 to migrid.columns.count-1 do
  begin

  // cambia el ancho de la columna

try
{  if maxim[pink]=0  then  migrid.columns[pink].width:=25 else
  if maxim[pink]=1  then  migrid.columns[pink].width:=10 else
  if (maxim[pink]<7)  then
    migrid.columns[pink].width:=round(int(8*maxim[pink]))
   else
  if (maxim[pink]<20)  then
    migrid.columns[pink].width:=round(int(7.4*maxim[pink]))
   else
    migrid.columns[pink].width:=round(int(7*maxim[pink]));  }
  if maxim[pink]<length(trim(migrid.columns[pink].Title.caption)) THEN
      maxim[pink]:=length(trim(migrid.columns[pink].Title.caption));
  case maxim[pink] of
    0 :  migrid.columns[pink].width:=25 ;
    1 :  migrid.columns[pink].width:=15 ;
    2..8 : migrid.columns[pink].width:=round(int(8*maxim[pink]));
    9..12 : migrid.columns[pink].width:=round(int(7.5*maxim[pink]));
    13..20 : migrid.columns[pink].width:=round(int(7.2*maxim[pink]));
    21..40 : migrid.columns[pink].width:=round(int(7*maxim[pink]))
    else migrid.columns[pink].width:=round(int(6.5*maxim[pink]));
  end;


except
end;


  end; //end for


end;

function cambiames(fecha:tdatetime;salto:integer):tdatetime;
var
xl:smallint;
mes,anyo:integer;
begin
// cambia el mes de la fecha dada el numero dado sato

if salto>0 then
   begin
    for xl:=1 to salto do
      begin
      mes:=strtoint(formatdatetime('mm',fecha));
      anyo:=strtoint(formatdatetime('yyyy',fecha));
      if mes=12 then
         fecha:=strtodate('01/01/'+inttostr(anyo+1))
        else
         fecha:=strtodate('01/'+inttostr(mes+1)+'/'+inttostr(anyo));
      end
   end
  else
    begin
    for xl:=1 to abs(salto) do
      begin
      mes:=strtoint(formatdatetime('mm',fecha));
      anyo:=strtoint(formatdatetime('yyyy',fecha));
      if mes=1 then
         fecha:=strtodate('01/12/'+inttostr(anyo-1))
        else
         fecha:=strtodate('01/'+inttostr(mes-1)+'/'+inttostr(anyo));
      end;
    end;
result:=fecha;
end;



function sacatabla(elsql: string): string;
var
partic:string;
begin
// saca la tabla principal del sql dado
elsql:=uppercase(elsql);
partic:=copy(elsql,pos('FROM ',elsql)+5,length(elsql)-pos('FROM ',elsql)-4);
if pos(' ',partic)>0 then
result:=copy(trimleft(partic),1,pos(' ',trimleft(partic)))
else
result:=partic;

end;

function sacatablaconinner(elsql: string): string;
var
partic:string;
begin
// saca la tabla principal del sql dado
elsql:=uppercase(elsql);
partic:=copy(elsql,pos('FROM ',elsql)+5,length(elsql)-pos('FROM ',elsql)-5);
if pos('where',partic)>0 then
result:=copy(trimleft(partic),1,pos('WHERE',partic)-1)
else
result:=copy(trimleft(partic),1,pos(' ',trimleft(partic)));

end;

(**************************************)
(* Conversión Número -> Letra         *)
(*                                    *)
(* Parámetros:                        *)
(*                                    *)
(*   mNum:    Número a convertir      *)
(*   iIdioma: Idioma de conversión    *)
(*            1 -> Castellano         *)
(*            2 -> Catalán            *)
(*   iModo:   Modo de conversión      *)
(*            1 -> Masculino          *)
(*            2 -> Femenino           *)
(*                                    *)
(* Restricciones:                     *)
(*                                    *)
(* - Redondeo a dos decimales         *)
(* - Rango: 0,00 a 999.999.999.999,99 *)
(*                                    *)
(**************************************)

function NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
const
  iTopFil: Smallint = 6;
  iTopCol: Smallint = 10;
  aCastellano: array[0..5, 0..9] of PChar =
  ( ('UNA ','DOS ','TRES ','CUATRO ','CINCO ',
    'SEIS ','SIETE ','OCHO ','NUEVE ','UN '),
    ('ONCE ','DOCE ','TRECE ','CATORCE ','QUINCE ',
    'DIECISEIS ','DIECISIETE ','DIECIOCHO ','DIECINUEVE ',''),
    ('DIEZ ','VEINTE ','TREINTA ','CUARENTA ','CINCUENTA ',
    'SESENTA ','SETENTA ','OCHENTA ','NOVENTA ','VEINTI'),
    ('CIEN ','DOSCIENTAS ','TRESCIENTAS ','CUATROCIENTAS ','QUINIENTAS ',
    'SEISCIENTAS ','SETECIENTAS ','OCHOCIENTAS ','NOVECIENTAS ','CIENTO '),
    ('CIEN ','DOSCIENTOS ','TRESCIENTOS ','CUATROCIENTOS ','QUINIENTOS ',
    'SEISCIENTOS ','SETECIENTOS ','OCHOCIENTOS ','NOVECIENTOS ','CIENTO '),
    ('MIL ','MILLON ','MILLONES ','CERO ','Y ',
    'UNO ','DOS ','CON ','','') );
  aCatalan: array[0..5, 0..9] of PChar =
  ( ( 'UNA ','DUES ','TRES ','QUATRE ','CINC ',
    'SIS ','SET ','VUIT ','NOU ','UN '),
    ( 'ONZE ','DOTZE ','TRETZE ','CATORZE ','QUINZE ',
    'SETZE ','DISSET ','DIVUIT ','DINOU ',''),
    ( 'DEU ','VINT ','TRENTA ','QUARANTA ','CINQUANTA ',
    'SEIXANTA ','SETANTA ','VUITANTA ','NORANTA ','VINT-I-'),
    ( 'CENT ','DOS-CENTES ','TRES-CENTES ','QUATRE-CENTES ','CINC-CENTES ',
    'SIS-CENTES ','SET-CENTES ','VUIT-CENTES ','NOU-CENTES ','CENT '),
    ( 'CENT ','DOS-CENTS ','TRES-CENTS ','QUATRE-CENTS ','CINC-CENTS ',
    'SIS-CENTS ','SET-CENTS ','VUIT-CENTS ','NOU-CENTS ','CENT '),
    ( 'MIL ','MILIO ','MILIONS ','ZERO ','-',
    'UN ','DOS ','AMB ','','') );
var
  aTexto: array[0..5, 0..9] of PChar;
  cTexto, cNumero: String;
  iCentimos, iPos: Smallint;
  bHayCentimos, bHaySigni: Boolean;

  (*************************************)
  (* Cargar Textos según Idioma / Modo *)
  (*************************************)

  procedure NumLetra_CarTxt;
  var
    i, j: Smallint;
  begin
    (* Asignación según Idioma *)

    for i := 0 to iTopFil - 1 do
      for j := 0 to iTopCol - 1 do
        case iIdioma of
          1: aTexto[i, j] := aCastellano[i, j];
          2: aTexto[i, j] := aCatalan[i, j];
        else
          aTexto[i, j] := aCastellano[i, j];
        end;

    (* Asignación si Modo Masculino *)

    if (iModo = 1) then
    begin
      for j := 0 to 1 do
        aTexto[0, j] := aTexto[5, j + 5];

      for j := 0 to 9 do
        aTexto[3, j] := aTexto[4, j];
    end;
  end;

  (****************************)
  (* Traducir Dígito -Unidad- *)
  (****************************)

  procedure NumLetra_Unidad;
  begin
    if not( (cNumero[iPos] = '0') or (cNumero[iPos - 1] = '1')
     or ((Copy(cNumero, iPos - 2, 3) = '001') and ((iPos = 3) or (iPos = 9))) ) then
      if (cNumero[iPos] = '1') and (iPos <= 6) then
        cTexto := cTexto + aTexto[0, 9]
      else
        cTexto := cTexto + aTexto[0, StrToInt(cNumero[iPos]) - 1];

    if ((iPos = 3) or (iPos = 9)) and (Copy(cNumero, iPos - 2, 3) <> '000') then
      cTexto := cTexto + aTexto[5, 0];

    if (iPos = 6) then
      if (Copy(cNumero, 1, 6) = '000001') then
        cTexto := cTexto + aTexto[5, 1]
      else
        cTexto := cTexto + aTexto[5, 2];
  end;

  (****************************)
  (* Traducir Dígito -Decena- *)
  (****************************)

  procedure NumLetra_Decena;
  begin
    if (cNumero[iPos] = '0') then
      Exit
    else if (cNumero[iPos + 1] = '0') then
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
    else if (cNumero[iPos] = '1') then
      cTexto := cTexto + aTexto[1, StrToInt(cNumero[iPos + 1]) - 1]
    else if (cNumero[iPos] = '2') then
      cTexto := cTexto + aTexto[2, 9]
    else
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
        + aTexto[5, 4];
  end;

  (*****************************)
  (* Traducir Dígito -Centena- *)
  (*****************************)

  procedure NumLetra_Centena;
  var
    iPos2: Smallint;
  begin
    if (cNumero[iPos] = '0') then
      Exit;

    iPos2 := 4 - Ord(iPos > 6);

    if (cNumero[iPos] = '1') and (Copy(cNumero, iPos + 1, 2) <> '00') then
      cTexto := cTexto + aTexto[iPos2, 9]
    else
      cTexto := cTexto + aTexto[iPos2, StrToInt(cNumero[iPos]) - 1];
  end;

  (**************************************)
  (* Eliminar Blancos previos a guiones *)
  (**************************************)

  procedure NumLetra_BorBla;
  var
    i: Smallint;
  begin
    i := Pos(' -', cTexto);

    while (i > 0) do
    begin
      Delete(cTexto, i, 1);
      i := Pos(' -', cTexto);
    end;
  end;

begin
  (* Control de Argumentos *)

  if (mNum < 0.00) or (mNum > 999999999999.99) or (iIdioma < 1) or (iIdioma > 2)
    or (iModo < 1) or (iModo > 2) then
  begin
    Result := 'ERROR EN ARGUMENTOS';
    Abort;
  end;

  (* Cargar Textos según Idioma / Modo *)

  NumLetra_CarTxt;

  (* Bucle Exterior -Tratamiento Céntimos-     *)
  (* NOTA: Se redondea a dos dígitos decimales *)

  cNumero := Trim(Format('%12.0f', [Int(mNum)]));
  cNumero := StringOfChar('0', 12 - Length(cNumero)) + cNumero;
  iCentimos := Trunc((Frac(mNum) * 100) + 0.5);

  repeat
    (* Detectar existencia de Céntimos *)

    if (iCentimos <> 0) then
      bHayCentimos := True
    else
      bHayCentimos := False;

    (* Bucle Interior -Traducción- *)

    bHaySigni := False;

    for iPos := 1 to 12 do
    begin
      (* Control existencia Dígito significativo *)

      if not(bHaySigni) and (cNumero[iPos] = '0') then
        Continue
      else
        bHaySigni := True;

      (* Detectar Tipo de Dígito *)

      case ((iPos - 1) mod 3) of
        0: NumLetra_Centena;
        1: NumLetra_Decena;
        2: NumLetra_Unidad;
      end;
    end;

    (* Detectar caso 0 *)

    if (cTexto = '') then
      cTexto := aTexto[5, 3];

    (* Traducir Céntimos -si procede- *)

    if (iCentimos <> 0) then
    begin
      cTexto := cTexto + aTexto[5, 7];
      cNumero := Trim(Format('%.12d', [iCentimos]));
      iCentimos := 0;
    end;
  until not (bHayCentimos);

  (* Eliminar Blancos innecesarios -sólo Catalán- *)

  if (iIdioma = 2) then
    NumLetra_BorBla;

  (* Retornar Resultado *)

  Result := Trim(cTexto);
end;
function sacames(fecha:tdatetime):integer;
begin
result:=strtoint(formatdatetime('mm',fecha));
end;

function sacaanyo(fecha:tdatetime):integer;
begin
result:=strtoint(formatdatetime('yyyy',fecha));
end;


procedure calcolumn2(migrid: tdbgrid);
var
midata:TDataSet;
maxim: array of integer;
pink:integer;
misource:tdatasource;
columnas:integer;
begin
// pasandole un grid, en el cual no hemos puesto columnas definidas
// nos añade las columnas para los campos de la dataset asignada a esta
// y ajusta las columnas a su ancho
midata:=migrid.datasource.dataset;
if not (midata.active) or  (midata.recordcount=0) then exit;

if midata.fieldcount<>migrid.Columns.count then
   migrid.Columns.RebuildColumns;

if midata.fieldcount<>migrid.Columns.count then exit;

columnas:=migrid.columns.count;
SetLength(maxim,columnas); //dimensiona el array con nº de columnas

misource:=migrid.datasource;
//migrid.datasource:=nil;
misource.enabled:=false;
midata.DisableControls;
if migrid.columns.count=0 then     //si no tiene columnas
   begin
// busca la longuitud maxima para cada campo del dataset
{  midata.first;
midata.first;
while not midata.eof do
  begin
  for pink:=0 to columnas-1 do
    begin
      if midata.fields.fields[pink].DataType=ftmemo then
          maxim[pink]:=35
        else
        if (vartype(midata.Fields.Fields[pink].Value)>1) and
           (length(trim(midata.Fields.Fields[pink].Value))>maxim[pink]) then
            maxim[pink]:=length(midata.Fields.Fields[pink].Value);
    end; //end for
  midata.next;
  end;

// crea las columnas para el dbgrid
  for pink:=0 to midata.fields.count-1 do
    begin
    migrid.columns.Add;
    migrid.columns[pink].field:=midata.fields.Fields[pink];
    end; //end for            }
   end // si no tiene columnas
else
  begin // si tiene columnas
  //busca la maxima dimension para cada campo del dbgrid
  midata.first;
  while not midata.eof do
    begin
    for pink:=0 to columnas-1 do
      begin
      if  vartype(midata.fields[pink].value)>1 then
        begin
         if (midata.fields[pink].DataType=ftmemo) then
             maxim[pink]:=35
          else
           if (length(trim(midata.fields[pink].asstring))>maxim[pink]) then
             maxim[pink]:=length(trim(midata.fields[pink].asstring));
     end;

    end; //end for
   midata.next;
   end; // end while not eof
  end; //si tiene columnas


//migrid.datasource:=misource;
midata.enablecontrols;
misource.enabled:=true;

  // dimensiona las columnas
 for pink:=0 to migrid.columns.count-1 do
  begin
try
{  if maxim[pink]=0  then  migrid.columns[pink].width:=25 else
  if maxim[pink]=1  then  migrid.columns[pink].width:=10 else
   if (maxim[pink]<7)  then
    migrid.columns[pink].width:=round(int(8*maxim[pink]))
   else
  if (maxim[pink]<20)  then
    migrid.columns[pink].width:=round(int(7.4*maxim[pink]))
   else
    migrid.columns[pink].width:=round(int(7*maxim[pink]));  }
  case maxim[pink] of
    0 :  migrid.columns[pink].width:=25 ;
    1 :  migrid.columns[pink].width:=15 ;
    2..7 : migrid.columns[pink].width:=round(int(8*maxim[pink]));
    8..12 : migrid.columns[pink].width:=round(int(7.5*maxim[pink]));
    13..20 : migrid.columns[pink].width:=round(int(7.2*maxim[pink]));
    21..40 : migrid.columns[pink].width:=round(int(7*maxim[pink]))
    else migrid.columns[pink].width:=round(int(6.5*maxim[pink]));
  end;



except
end;
  end; //end for

end;
procedure separa(cadena:string;var lista:tstringlist);
var
semi:string;
begin
// pasa la cadena separada por comas y separa cada campo de las comas y lo
// pone en lista como elementos del array
if cadena='' then exit;
if (pos(',',cadena)>0) then
   lista.add(copy(cadena,1,pos(',',cadena)-1)) ;
semi:=copy(cadena,pos(',',cadena)+1,length(cadena)-pos(',',cadena));
while pos(',',semi)>0 do
   begin
   lista.add(copy(semi,1,pos(',',semi)-1) ) ;
   semi:=copy(semi,pos(',',semi)+1,length(semi)-pos(',',semi));
   end;

   lista.add(semi);
end;


procedure separa2(cadena:string;var lista:tstringlist;charsepara:char);
var
semi:string;
begin
// pasa la cadena separada por comas y separa cada campo de las comas y lo
// pone en lista como elementos del array
// charsepara caracter indicador de separacion de cadenas
if cadena='' then exit;
if (pos(charsepara,cadena)>0) then
   lista.add(copy(cadena,1,pos(charsepara,cadena)-1)) ;
semi:=copy(cadena,pos(charsepara,cadena)+1,length(cadena)-pos(charsepara,cadena));
while pos(charsepara,semi)>0 do
   begin
   lista.add(copy(semi,1,pos(charsepara,semi)-1) ) ;
   semi:=copy(semi,pos(charsepara,semi)+1,length(semi)-pos(charsepara,semi));
   end;

   lista.add(semi);
end;


function llamaconsultanew(base2,sqltexto2,orden2,wheretexto2,camporetorno,imp:string;
         sender:tobject;mititul:string):string;
begin
// base = nombre interno de la base de datos normalmente inter
// sqltexto poner el select campos from tabla sin condicion ni orden
// orden es el orden de la table osea order by
// wheretexto es la condicion del sql
// camporetorno es el campo del sql que quieres meter en el campo de edicion
// sender es el control que llama a la funcion, tiene que ser o un tdbedit o
// un tdbgrid
// imp 'S' muertra el boton imprimir en otro caso no lo muestra

  Application.CreateForm(Tconsultaform, consultaform);
  if imp<>'S' then
     consultaform.bitbtn1.visible:=false;
  with consultaform do
     begin
     titulos:=mititul;
     baseinterna:=base2;
     sqltexto:=sqltexto2;

  if (pos('UNION',uppercase(sqltexto))>0) then
    begin
     with consultaform do
      begin
      speedbutton1.visible:=false;
      end;
    end;
  orden:=orden2;
  wheretexto:=wheretexto2;
  wheretextoantic:=wheretexto2;
  consultaform.ejecutasql;
  result:='';
  consultaform.showmodal;
  if esclick and (trim(camporetorno)<>'') then
   begin
   if (sender.classnameis('tedit')) or (sender.classnameis('tdbedit')) then
      begin
      if sender.classnameis('tdbedit') then
         tdbedit(sender).datasource.edit;
      tedit(sender).text:=consultaform.qconsulta[camporetorno];
      end
     else
     if  (sender.classnameis('tdbgrid')) then
      begin
      tdbgrid(sender).datasource.edit;
      tdbgrid(sender).selectedfield.text:=consultaform.qconsulta[camporetorno];
      end
     else
     if (sender.classnameis('tdbgrideh')) then
      begin
      tdbgrideh(sender).datasource.edit;
      tdbgrideh(sender).selectedfield.text:=consultaform.qconsulta[camporetorno];
      end
      else
      if uppercase(imp)<>'S' then
        result:=consultaform.qconsulta[camporetorno];
   end;
    // free;
  end //with consultaform


end;


function llamaconsultafib(base2:tibdatabase;sqltexto2,orden2,wheretexto2,camporetorno,imp:string;
         sender:tobject;mititul:string):string;
begin
// base = nombre de tibdatabase
// sqltexto poner el select campos from tabla sin condicion ni orden
// orden es el orden de la table osea order by
// wheretexto es la condicion del sql
// camporetorno es el campo del sql que quieres meter en el campo de edicion
// sender es el control que llama a la funcion, tiene que ser o un tdbedit o
// un tdbgrid
// imp 'S' muertra el boton imprimir en otro caso no lo muestra

  Application.CreateForm(Tconsultaformfib, consultaformfib);
  if imp<>'S' then
     consultaformFIB.bitbtn1.visible:=false;
  with consultaformfib do
     begin
     titulos:=mititul;
     baseinterna:=base2;
     sqltexto:=sqltexto2;

  if (pos('UNION',uppercase(sqltexto))>0) then
    begin
     with consultaformfib do
      begin
      speedbutton1.visible:=false;
      end;
    end;
  orden:=orden2;
  wheretexto:=wheretexto2;
  wheretextoantic:=wheretexto2;
  consultaformfib.ejecutasql;
  result:='';
  consultaformfib.showmodal;
  if esclick2 and (trim(camporetorno)<>'') then
   begin
   if (sender.classnameis('tedit')) or (sender.classnameis('tdbedit')) then
      begin
      if sender.classnameis('tdbedit') then
         tdbedit(sender).datasource.edit;
      tedit(sender).text:=consultaformfib.qconsulta[camporetorno];
      end
     else
     if  (sender.classnameis('tdbgrid')) then
      begin
      tdbgrid(sender).datasource.edit;
      tdbgrid(sender).selectedfield.text:=consultaformfib.qconsulta[camporetorno];
      end
     else
     if (sender.classnameis('tdbgrideh')) then
      begin
      tdbgrideh(sender).datasource.edit;
      tdbgrideh(sender).selectedfield.text:=consultaformfib.qconsulta[camporetorno];
      end
      else
      if uppercase(imp)<>'S' then
        result:=consultaformfib.qconsulta[camporetorno];
   end;
    // free;
  end //with consultaformfib



end;

procedure mimensaje(mensaje:string;tiempo:integer);
begin
// pantalla con mensaje de texto que dura tiempo en secs
if tiempo<1 then exit;
application.BringToFront;
application.createform(taviso,aviso);
aviso.timer1.Interval:=tiempo*1000;
aviso.label1.caption:=mensaje;
aviso.Height:=aviso.Label1.Height;
aviso.showmodal;
aviso.BringToFront;
end;

function GetAdapterInfo(Lana: Char): String;
var  
 Adapter: TAdapterStatus;  
 NCB: TNCB;  
begin  
 FillChar(NCB, SizeOf(NCB), 0);  
 NCB.ncb_command := Char(NCBRESET);  
 NCB.ncb_lana_num := Lana;  
 if Netbios(@NCB) <> Char(NRC_GOODRET) then  
 begin  
   Result := 'mac not found';  
   Exit;  
 end;  
 
 FillChar(NCB, SizeOf(NCB), 0);  
 NCB.ncb_command := Char(NCBASTAT);  
 NCB.ncb_lana_num := Lana;  
 NCB.ncb_callname := '*';  
 
 FillChar(Adapter, SizeOf(Adapter), 0);  
 NCB.ncb_buffer := @Adapter;  
 NCB.ncb_length := SizeOf(Adapter);  
 if Netbios(@NCB) <> Char(NRC_GOODRET) then  
 begin  
   Result := 'mac not found';
   Exit;  
 end;

 Result :=
   IntToHex(Byte(Adapter.adapter_address[0]), 2) +
   IntToHex(Byte(Adapter.adapter_address[1]), 2) +
   IntToHex(Byte(Adapter.adapter_address[2]), 2) +
   IntToHex(Byte(Adapter.adapter_address[3]), 2) +
   IntToHex(Byte(Adapter.adapter_address[4]), 2) +
   IntToHex(Byte(Adapter.adapter_address[5]), 2);
 {
 Result :=
   IntToHex(Byte(Adapter.adapter_address[0]), 2) + '-' +
   IntToHex(Byte(Adapter.adapter_address[1]), 2) + '-' +
   IntToHex(Byte(Adapter.adapter_address[2]), 2) + '-' +
   IntToHex(Byte(Adapter.adapter_address[3]), 2) + '-' +
   IntToHex(Byte(Adapter.adapter_address[4]), 2) + '-' +
   IntToHex(Byte(Adapter.adapter_address[5]), 2);}
end;

function GetMACAddress: string;
var
 AdapterList: TLanaEnum;
 NCB: TNCB;
begin
 FillChar(NCB, SizeOf(NCB), 0);
 NCB.ncb_command := Char(NCBENUM);
 NCB.ncb_buffer := @AdapterList;
 NCB.ncb_length := SizeOf(AdapterList);
 Netbios(@NCB);
 if Byte(AdapterList.length) > 0 then
   Result := GetAdapterInfo(AdapterList.lana[0])
 else
   Result := 'mac not found';
end;

// para ovternet versionde sist. oper
function GetOSVersion : Integer;
  var
    osVerInfo : TOSVersionInfo;
    majorVer, minorVer : Integer;
  begin
    osVerInfo.dwOSVersionInfoSize := SizeOf( TOSVersionInfo );

    if ( GetVersionEx( osVerInfo ) ) then
    begin
      majorVer := osVerInfo.dwMajorVersion;
      minorVer := osVerInfo.dwMinorVersion;

      case ( osVerInfo.dwPlatformId ) of

        VER_PLATFORM_WIN32_NT : { Windows NT/2000 }
        begin
          if ( majorVer <= 4 ) then Result := cOsWinNT
          else
          if ( ( majorVer = 5 ) and ( minorVer= 0 ) ) then Result := cOsWin2000
          else
          if ( ( majorVer = 5) and ( minorVer = 1 ) ) then Result := cOsWinXP
          else
          Result := cOsUnknown;
        end;

        VER_PLATFORM_WIN32_WINDOWS : { Windows 9x/ME }
        begin
          if ( ( majorVer = 4 ) and ( minorVer = 0 ) ) then Result := cOsWin95

          else
          if ( ( majorVer = 4 ) and ( minorVer = 10 ) ) then
          begin
            if ( osVerInfo.szCSDVersion[ 1 ] = 'A' ) then Result := cOsWin98SE

            else Result := cOsWin98;
           end
         else
          if ( ( majorVer = 4) and ( minorVer = 90 ) ) then Result := cOsWinME

          else Result := cOsUnknown;
        end;

      else
        Result := cOsUnknown;
      end; { Final del Case}
    end else Result := cOsUnknown; {Final del if}
  end;

// para ovternet versionde sist. oper


procedure copiafacil(permitelocal:boolean=false);
var
nombreexe,nombreruta:string;
midatabase:tibdatabase;
mitrans:tibtransaction;
qslal:tibquery;
parte1:string;
slal:boolean;
begin
// funcion que hace la ejecucion en local para que se copie facilmente el exe
// se tiene que utilizar conjuntamente con la funcion siestaexe

// si estas debugando en delphi no hace nada

if (siestaexe('delphi32.exe',0,false)) then exit;

iniciaresumido;

if (pos('C:',GetCurrentDir)>0) and not (ID_LOGIN='**') and
   not (extractfilename(application.ExeName)='vigila.exe' ) and
   not (extractfilename(application.ExeName)='copiazip2.exe' )  and
   not (extractfilename(application.ExeName)='autorecep.exe' ) then
  begin  //1
  midatabase:=tibdatabase.create(application);
  mitrans:=tibtransaction.create(application);
  with midatabase do
    begin
    defaulttransaction:=mitrans;
    LoginPrompt:=false;
   if not entrabaseparams('INFORMATICA',midatabase) then
       mandaerror(application,errorfalso,'No se puede abrir la base de datos '+midatabase.DatabaseName,false);
    open;
    end;  //with midatabase
  iniciaresumido;
  qslal:=tibquery.Create(application);
  with qslal do
    begin
    database:=midatabase;
    sql.text:='select nompc,slal_activado from maquines where F_LRTRIM(NOMPC)="'+
    trim(ID_COMPUTER)+'"';
    open;
    slal:=((recordcount=1) and (qslal['slal_activado']<>null) and
     ((qslal['slal_activado']='S') or
     ((qslal['slal_activado']='A') and (  ID_LOGIN='**' ))));
    free;
    end; // with qimpres

  midatabase.close;
  midatabase.free;
  mitrans.free;
  end; //1

    //no permite que se ejecute directamente desde la c:
if (pos('C:',GetCurrentDir)>0) and not (extractfilename(application.ExeName)='goinit.exe' ) and
   not (extractfilename(application.ExeName)='vigila.exe' ) and
   not (extractfilename(application.ExeName)='copiazip2.exe' )   and
   not (extractfilename(application.ExeName)='autorecep.exe' )
    and not (pos('C:\DOCUMENTS AND SETTINGS\ALL USERS\GOINIT\',
     uppercase(getcurrentdir))>0) and not slal and not permitelocal then
        begin
        mandaerror(application,errorfalso,'No esta permitido ejecutar '+application.exename+' por la ubicación '+
             ' / ESTACION:'+ID_COMPUTER,true);
        application.terminate;
        end;


// si no se esta ejecutando desde la c:\
if (pos('C:\TEMPEXES',uppercase(copy(application.ExeName,1,11)))=0) then
   begin

   if not DirectoryExists('c:\tempexes') then
      if not CreateDir('C:\tempexes') then
           mandaerror(application,errorfalso,'No se puede crear el directorio c:\tempexes '+
             ' / ESTACION:'+ID_COMPUTER,true);

   nombreruta:=ExtractFilePath(application.exename);
   nombreexe:=extractfilename(application.ExeName);


   // si es diferente o no existe lo copia
     if ( not fileexists('c:\tempexes\'+nombreexe) or (fileexists('c:\tempexes\'+nombreexe) and
       (fileage('c:\tempexes\'+nombreexe)<>fileage(application.exename)))) then
      begin
      copyfile(pchar(application.exename),pchar('c:\tempexes\'+nombreexe),false);
      end; // fin de copia

       if  (fileage('c:\tempexes\'+nombreexe)=fileage(application.exename)) then
         shellexecute(application.handle,'open',pchar('c:\tempexes\'+nombreexe),'',pchar(nombreruta),SW_SHOWNORMAL)
 //        WinExec(pchar('c:\tempexes\'+nombreexe),SW_SHOWNORMAL)
         else
         mandaerror(application, errorfalso, 'No se ha podido copiar '+'c:\tempexes\'+nombreexe+' , la aplicacion no se ejecutará'+
                                                      ' / ESTACION:'+ID_COMPUTER,true);


    application.Terminate;
    exit;
//   while true do;

   end;  // si no se esta ejecutando en la c:

end;

procedure iniciaresumido;
var
   Tmp: PChar;
   Longi,DwI: DWORD;
   MaxLen: longword;
   cCode: Integer;
   LocalName: PChar;
   RemoteName: PChar;
   UserName: PChar;
   PCName: PChar;
   r:TRegistry;
   JvComputerInfoEx1: TJvComputerInfoEx;
begin

    // Busca el login i la maquina(pc)

    MaxLen := 255;
    GetMem(UserName,MaxLen);
    GetMem(LocalName,MaxLen);
    GetMem(PCName,MaxLen);
    GetMem(RemoteName,MaxLen);


   StrCopy(LocalName,PChar('F:'));


    cCode := WNetGetUser(LocalName,UserName,MaxLen);
    if cCode=0
    then ID_LOGIN := UpperCase(GetUserName(UserName))
    else ID_LOGIN:='**';

JvComputerInfoEx1:=TJvComputerInfoEx.Create(application);

id_loginwin:=JvComputerInfoEx1.Identification.LocalUserName;

JvComputerInfoEx1.Free;

if ((ID_LOGIN='') OR (ID_LOGIN='**')) and (id_loginwin<>'') then id_login:=uppercase(id_loginwin);


//    ID_LOGINWIN   := GetEnvironmentVariable('USERNAME');

 {   dwI := MAX_PATH;
    SetLength (ID_LOGINWIN, dwI + 1);

    if WNetGetUser (Nil, PChar (ID_LOGINWIN), dwI) = NO_ERROR then
        SetLength (ID_LOGINWIN, StrLen (PChar (ID_LOGINWIN)));


  }

    cCode := WNetGetConnection(LocalName,RemoteName,MaxLen);
    if cCode=0 then ID_REMOTE := String(RemoteName) else ID_REMOTE:= '**';

    GetMem(Tmp,MaxLen);
    GetNicAddress(Tmp);
    ID_NIC := String(Tmp);
    IF (ID_NIC='000000000001') OR (ID_NIC='') or (trim(uppercase(ID_NIC))='MAC NOT FOUND') THEN
    ID_NIC:=GetMACAddress;

    GetComputerName(pcName,maxlen);
    ID_COMPUTER:= String(PCName);
    freeMem(UserName,MaxLen);
    freeMem(LocalName,MaxLen);
    freeMem(PCName,MaxLen);
    freeMem(RemoteName,MaxLen);
    if ID_COMPUTER='' then
      begin
      r:=tregistry.create;
      r.rootkey:=HKEY_LOCAL_MACHINE;
      r.Access:=KEY_ALL_ACCESS;
      r.openkey('system\currentcontrolset\control\computername\computername',false);
      ID_COMPUTER:=r.readstring('computername');
      r.free;
      end;
if (ID_NIC=null) or (ID_NIC='') then showmessage('NO SE LEE LA MAC');
if (ID_LOGIN=null) or (ID_LOGIN='') then showmessage('NO SE LEE LOGIN DE USUARIO');
if (ID_COMPUTER=null) or (ID_COMPUTER='') then showmessage('NO SE LEE NOMPC');      

end;

function enviaemail(nomsmtp,remite,listadestinosentrecomas,asunto,ficheroadjunto,cuerpomensaje,login,contra:string;SSL:boolean;puerto:integer):boolean;
var
mensaje:TIdMessage;
adjunto:TIdAttachmentfile;
pl:integer;
destinatarios:tstringlist;
IdSSL1: TIdSSLIOHandlerSocketOpenSSL;
begin
result:=false;
//fallos.SaveToFile('c:\windows\temp\fallostemp.txt');
mensaje:=tidmessage.create(nil);
destinatarios:=tstringlist.create;
with mensaje do
  begin
  From.Address:=remite;
  separa(listadestinosentrecomas,destinatarios);
  for pl:=0 to destinatarios.count-1 do
   Recipients.add.Address:=destinatarios.strings[pl];
  if (ficheroadjunto<>'') then
    begin
    MessageParts.Add;
    adjunto:=tidattachmentfile.Create(mensaje.MessageParts,
    ficheroadjunto);
    end;
  Subject:=asunto;
  body.text:=cuerpomensaje;
  end;
with tidsmtp.create(nil) do
  begin
  host:=nomsmtp;
  port:=puerto;
//  IOHandler:=TIdIOHandlerStream.Create;
//  ConnectTimeout:=4000;
  if trim(contra)<>'' then
    begin
    AuthType:=atdefault;
    username:=login;
    password:=contra;
    if ssl then
      begin
      idssl1:=TIdSSLIOHandlerSocketOpenSSL.Create;
      idssl1.Port:=puerto;
      IOHandler:=idSSL1;
      UseTLS:=utUseRequireTLS;
      idssl1.StartSSL;
      end;
    end
    else  Authtype:=atnone;
  try
  if not connected then
if trim(contra)<>'' then
   begin
   Connect;
   Authenticate;
   end;
   connect;

{
if trim(contra)<>'' then
  begin
  AuthType:=atdefault;
  username:=login;
  password:=contra;
  end
  else  Authtype:=atnone;
           }



//  connect;
//  if DidAuthenticate then
//     begin

//     connect;
     send(mensaje);
     result:=true;

  except
   on  e:exception do
    begin
    mandaerror2(application,e,'Error al enviar correo',false,1);
    result:=false;
    end;

  end;
  disconnect;
  free;
  end;
destinatarios.free;
if ssl then idSSL1.free
end;

function cogederechos:boolean;
var
midatabase:tibdatabase;
mitrans:tibtransaction;
qderechos:tibquery;
begin
if (ID_NIC=null) or (ID_NIC='') then showmessage('NO SE LEE LA MAC');
if (ID_LOGIN=null) or (ID_LOGIN='') then showmessage('NO SE LEE LOGIN DE USUARIO');
if (ID_COMPUTER=null) or (ID_COMPUTER='') then showmessage('NO SE LEE NOMPC');
if vartype(ID_LOGIN)<2 then
 begin
 showmessage('no se ha leido el login de usuario');
 application.terminate;
 end;
if vartype(ID_NIC)<2 then
  begin
  showmessage('no se ha leido el numero de placa');
  application.terminate;
  end;

if vartype(ID_COMPUTER)<2 then
  begin
  showmessage('no se ha leido el ID_COMPUTER');
  application.terminate;
  end;


// pasa los derchos de acceso a un stringlist    dretsaccessarray:tstringlist
if dretsaccessarray<>nil then dretsaccessarray.Clear;
midatabase:=tibdatabase.create(application);
mitrans:=tibtransaction.create(application);
TRY
with midatabase do
  begin
  defaulttransaction:=mitrans;
  LoginPrompt:=false;
  if not entrabaseparams('GUTTMANN_REAL',midatabase) then
       mandaerror(application,errorfalso,'No se puede abrir la base de datos '+midatabase.DatabaseName,false);
  open;
  qderechos:=tibquery.create(application);
  with qderechos do
    begin
    database:=midatabase;
    sql.texT:='SELECT A.C_ACCES, DA.C_DRET,D.DESCRIPCIO'+
        ' FROM ACCESOS A '+
        ' left join DRETSACCES DA on a.c_acces=da.c_acces'+
        ' left join drets d on da.c_dret=d.c_dret'+
        ' WHERE ((upper(A.C_LOGIN) = upper(:LOGIN) ) AND (A.C_PLACA = :PLACA)'+
        ' AND a.C_LOGIN IS NOT NULL AND a.C_PLACA IS NOT NULL )'+
        ' OR'+
        ' (UPPER(a.C_LOGIN)=UPPER(:LOGIN) AND a.C_PLACA IS NULL)'+
        ' OR'+
        ' (UPPER(a.C_PLACA)=UPPER(:PLACA) AND a.C_LOGIN IS NULL)'+
        ' ORDER BY C_PLACA DESC';
    parambyname('LOGIN').asstring:=ID_LOGIN;
    parambyname('PLACA').asstring:=ID_NIC;
    qderechos.open;

    if recordcount>0 then
      begin //1
      first;
      if dretsaccessarray=nil then dretsaccessarray:=tstringlist.create;
      while not eof do
        begin //2
        if qderechos['c_dret']<>null then
        dretsaccessarray.add(trim(copy(qderechos['c_dret'],2,9)));
        next;
        end; //2
      dretsaccessarray.Sort;
      end; //1
    end; //qderechos
  end; //midatabase
  result:=true;
except
result:=false;
end;
qderechos.Free;
midatabase.Free;
mitrans.free;
end;


function TeDretAccesram(mdrets:string; mensaje: Boolean=False; MirarDretTotal: Boolean = True): Boolean;
var
pio,pio2:integer;
mldrets:tstringlist;
begin
//funcion que mira los derechos pero el array de derechos
// utilizar conjuntamente con iniciaresumido y con cogederechos
result:=false;
if dretsaccessarray=nil then
  begin
  if not result and mensaje then showmessage('No drets per fer aixo');
  exit;
  end;
mldrets:=tstringlist.create;
separa(mdrets,mldrets);
if (dretsaccessarray.Find('100',pio2)) and    mirardrettotal then
  result:=true
else
begin // si no superuser

  for pio:=0 to mldrets.count-1 do
    begin
    if dretsaccessarray.Find(mldrets.strings[pio],pio2) then
      begin
      result:=true;
      break;
      end;
    end; // for

end;  // si no superuser


mldrets.free;
if not result and mensaje then showmessage('No drets per fer aixo');
end;




// control de impresoras
{
ejemplo
procedure TForm1.Button4Click(Sender: TObject);
var
mprint:tstringlist;
nprint:integer;
begin
mprint:=tstringlist.Create;
impresorasplanta('UH-1','OM',mprint);
application.CreateForm(TQuickReport2,QuickReport2);
for nprint:=0 to mprint.Count -1 do
  begin
  if SetPrinter(mprint.strings[nprint])then quickreport2.print
  else showmessage('Error al intentar imprimir por '+mprint.strings[nprint]);
  // el error se puede utilizar ademas la funcion mandaerror(sener,errorfalso,'errror...',false);
  end;
impresorapordefecto;
//listbox2.Items:=mprint;
mprint.Free;
quickreport2.free;
end;

}

function SetPrinter(const PrinterName: String): boolean;
var
  s2 : string;
  dum1 : Pchar;
  xx, qq : integer;
  NombreImpresora   : string;
  Ok                : boolean;
  MangoPrinter      : thandle;
  PrinterInfo2      : ^TPRINTERINFO2;
  Defaults          : TPRINTERDEFAULTS;
  Ocupa             : DWORD;
  PrinterNumber ,xl    : Integer;
const
  cs1 : pchar = 'Windows';
  cs2 : pchar = 'Device';
  cs3 : pchar = 'Devices';
  cs4 : pchar = #0;

begin
printer.printerindex:=-1;
// 09/03/2012
{
if (getosversion in [cOsWinNT,cOsWin2000,cOsWinXP]) then
  begin}
 xx := 254;
  GetMem( dum1, xx);
  Result := False;
   try
     qq := GetProfileString( cs3, pchar( printerName ), #0, dum1, xx);
     if (qq > 0) and (trim( strpas( dum1 )) <> '')
       then begin
          s2 := PrinterName + ',' + strpas( dum1 );
          while GetProfileString( cs1, cs2, cs4, dum1, xx) > 0 do
            WriteProfileString( cs1, cs2, #0);
          WriteProfileString( cs1, cs2, pchar( s2 ));
          case Win32Platform of
           VER_PLATFORM_WIN32_NT :
            // SendMessage( HWND_BROADCAST, WM_WININICHANGE, 0, LongInt(cs1));
            // VER_PLATFORM_WIN32_WINDOWS :
            // SendMessage( HWND_BROADCAST, WM_SETTINGCHANGE, 0, LongInt(cs1));
         end;
      result:=(printername=printer.printers[printer.printerindex]);
    end;
    finally
      FreeMem( dum1 );
    end;

//end // si es win32
{else

begin  // si no es win-32

result:=false;
   {Numero de impresora a seleccionar}
   {Printer Number to select}
{   PrinterNumber :=0;
   for xl:=0 to printer.printers.count-1 do
     begin
     nombreimpresora:=printername;
     if printername=copy(printer.printers[xl],1,pos(' on ',printer.Printers[xl])-1) then
       begin
        printernumber:=xl;
        break;
       end;
     end;
 }  {Eliminamos el "on LPT"}
{   if Pos(' on ',NombreImpresora)<>0 then
     NombreImpresora:=Copy (NombreImpresora,1,Pos(' on ',NombreImpresora)-1);

   Defaults.DesiredAccess := PRINTER_ALL_ACCESS;
   Defaults.pDatatype := nil;
   Defaults.pDevMode := nil;
   Ok := OpenPrinter(PChar(NombreImpresora), MangoPrinter, @Defaults);

   if Ok then
   begin
     {Reservamos memoria, inicialmente 1000 bytes}
{     GetMem(PrinterInfo2, 1000);
      Ok := GetPrinter(Integer(MangoPrinter), 2, PrinterInfo2, 1000, @Ocupa);
 }     {Si no cabe en 1000 bytes, reservamos más}
 {     if not Ok then
        if (Ocupa > 1000) then
        begin
          FreeMem(PrinterInfo2);
          GetMem(PrinterInfo2, Ocupa);
          GetPrinter(MangoPrinter, 2, PrinterInfo2, Ocupa,@Ocupa);
        end
        else ShowMessage('Error en GetPrinter:' +IntToStr(GetLastError));

        {La ponemos como impresora predeterminada para Windows}
        {Set printer like default printer system}
 {       PrinterInfo2^.Attributes := PrinterInfo2^.Attributes +
                                   PRINTER_ATTRIBUTE_DEFAULT;
        result := WinSpool.SetPrinter(MangoPrinter,  2,  PrinterInfo2 , 0);
        if not result then
          ShowMessage('Error en SetPrinter:' + IntToStr(GetLastError));
        FreeMem(PrinterInfo2);
      end
   else
      ShowMessage('Error en OpenPrinter:' + IntToStr(GetLastError));
   ClosePrinter(MangoPrinter);
  }
//end; // si no es win-32
end;

function selectPrinterQr(qrep:TQuickRep;impresora:string):boolean;
var index:integer;
begin
Index := Printer.Printers.IndexOf(impresora);
if index > -1 then
  begin
  qrep.PrinterSettings.PrinterIndex := Index;
  end;
result:= index>-1
end;

procedure impresorasplanta(planta:string;norma:string;var limpresoras:tstringlist);
var
midatabase:tibdatabase;
mitrans:tibtransaction;
qimpres:tibquery;
begin
{Función que pasandole la planta y la norma que queremos aplicar
 nos devolverá una lista (stringlist) de las impresoras asociadas
  a esa planta y con esa norma. Las impresoras inactivas
  no se pasarán aunque figuren en la norma.         }


midatabase:=tibdatabase.create(application);
mitrans:=tibtransaction.create(application);
with midatabase do
  begin
  defaulttransaction:=mitrans;
  LoginPrompt:=false;
 if not entrabaseparams('GUTTMANN_REAL',midatabase) then
    mandaerror(application,errorfalso,'No se puede abrir la base de datos '+midatabase.DatabaseName,false);
  open;
  end;  //with midatabase
qimpres:=tibquery.create(application);
with qimpres do
  begin
  database:=midatabase;
  sql.text:='select i.nombreimpresora  from plantanormaimpresoras pi'+
  ' inner join impresoras i on pi.c_impresora=i.c_impresora'+
  ' where pi.c_planta="'+planta+'" and pi.c_norma="'+norma+'" and i.activa="S"';
  open;
  if recordcount>0 then
    begin
    first;
    while not eof do
      begin
 {     if getosversion in [cOsWinNT,cOsWin2000,cOsWinXP] then
      limpresoras.add('\\GUTTMANN2\'+qimpres['nombreimpresora'])
      else }
      limpresoras.add(qimpres['nombreimpresora']) ;
      next;
      end;
    end;
  end;  //with qimpres
midatabase.close;
midatabase.free;
mitrans.Free;
end;

function impresorapordefecto:boolean;
var
midatabase:tibdatabase;
mitrans:tibtransaction;
qimpres:tibquery;
parte1:string;
begin
// pone la impresora por defecto para ese ordenador indicada en maquines

result:=false;
iniciaresumido;
midatabase:=tibdatabase.create(application);
mitrans:=tibtransaction.create(application);
with midatabase do
  begin
  defaulttransaction:=mitrans;
  LoginPrompt:=false;
 if not entrabaseparams('INFORMATICA',midatabase) then
     mandaerror(application,errorfalso,'No se puede abrir la base de datos '+midatabase.DatabaseName,false);
  open;
  end;  //with midatabase
qimpres:=tibquery.Create(application);
with qimpres do
  begin
  database:=midatabase;
  sql.text:='select impresorapordefecto from maquines where F_LRTRIM(NOMPC)="'+
  trim(ID_COMPUTER)+'"  and impresorapordefecto is not null and f_lrtrim(impresorapordefecto)<>""';
  open;

  if (recordcount=1) and (qimpres['impresorapordefecto']<>null) then
    begin
  {  if getosversion in [cOsWinNT,cOsWin2000,cOsWinXP] then parte1:='\\GUTTMANN2\'
    else} parte1:='';

    if not SetPrinter(trim(parte1+''+qimpres['impresorapordefecto'])) then
      begin
      if not SetPrinter(trim(qimpres['impresorapordefecto'])) then
        begin
        showmessage('Impresora '+ parte1+''+qimpres['impresorapordefecto']+' no se puede seleccionar');
        result:=false;
        end
       else result:=true;
      end
      else result:=true;

    end
    else    result:=true;  // si no tiene marcada impresora por defecto devuelve un true

  free;
  end; // with qimpres

printer.printerindex:=-1;
midatabase.close;
midatabase.free;
mitrans.free;
end;



//  ------------------------FUNCIONES IB  ---------------------------------


function exportatxtib(mem1,mem2,mem3,base1,base2,base3,formatofecha,fichero,campsepara,relleno:string;decsepara:char):boolean;
var
incre,campx:integer;
tipo:tfieldtype;
qmio:tibquery;
f:textfile;
linea,campi,lineavacia:string;
respuesta:word;
ext:string;
mitabla:ttable;
i:integer;
bloque:pchar;
mibaseib:tibdatabase;
mitrans:tibtransaction;
begin
{Funcion que exporta fichero a formato texto, pasando un array de 3x2
 los 3 elementos son cada sql de cabecera,cuerpo y pie, especificando
 para cada uno el alias de la base de datos, si solo tiene el primero
 los demas toman este valor.
 Los datos se guardaran el el fichero especificado en la variable fichero}
// ultima actualizacion el formato pues ser dbf

mibaseib:=tibdatabase.Create(application);
mitrans:=tibtransaction.create(application);
mibaseib.DefaultTransaction:=mitrans;
mibaseib.DatabaseName:=base1;
mibaseib.LoginPrompt:=true;

result:=false;

qmio:=tibquery.create(application);
qmio.database:=mibaseib;
if base2='' then base2:=base1;
if base3='' then base3:=base1;

ext:=uppercase(copy(trim(fichero),length(trim(fichero))-2,3));
if ext<>'DBF' then

assignfile(f,fichero);

if fileexists(fichero) then
   begin //01
{   respuesta:=MessageDlg('Fichero existente, '+
   '¿ Sobreescribir (Yes), Añadir (No) o Cancelar ?',
    mtWarning, [mbYes,mbNo,mbCancel], 0);}


{   if respuesta=MrCancel then
      begin //02
      result:=false;
      exit;
      end   //02
   else
     begin  //03
       if respuesta=MrYes then
         begin // Mryes
         if ext='TXT' then
            rewrite(f)
         else
           if ext='DBF' then
              deletefile(fichero);
         end
       else // si no Mryes , eso es que es MrNo osea añadir}
       if ext<>'DBF' then
         append(f)
//     end  //03
   end //01
  else
  if ext<>'DBF' then
     rewrite(f);

decimalseparator:=decsepara;

for incre:=1 to 3 do
  begin  //1
  with qmio do
    begin //2
    close;
    database.Close;
    sql.clear;
    if incre=1 then
      begin
      if mem1='' then
         continue;
      database.DatabaseName:=base1;
      sql.text:=mem1
      end
    else
       if incre=2 then
        begin
        if mem2='' then
          continue;
        database.databasename:=base2;
        sql.text:=mem2
        end
       else
         begin
         if mem3='' then
           continue;
         database.databasename:=base3;
         sql.text:=mem3
         end;
    try
    open;
    except
     result:=false;
     if ext<>'DBF' then
        closefile(f);
     qmio.close;
     qmio.free;
     mibaseib.free;
     mitrans.free;
     showmessage('error en sql');
     exit;
    end;

    end; //2
    // si ha encontrado registros
    if qmio.recordcount>0 then
       begin //3
          //va rellendo el fichero

        if ext='DBF' then
          begin
          mitabla:=ttable.create(application);
          with mitabla do
            begin  //35
            Active := False;
            TableType := ttdefault;
            TableName := fichero;
            if not fileexists(fichero) then
               begin
               FieldDefs:=qmio.FieldDefs;
               createtable;
               end;
             mitabla.open;
             end;   // 35
           end; // si dbf

          qmio.first;
          while not qmio.eof do
            begin //4
             if ext<>'DBF' then
              begin  // ext='TXT'
             linea:='';
             lineavacia:='';
            for campx:=0 to qmio.fieldcount -1 do
              begin //5
              tipo:=qmio.fielddefs[campx].datatype;
              campi:='';
              if tipo in [ftinteger,ftsmallint,ftcurrency,ftword,ftautoinc] then
                 campi:=inserta(inttostr(qmio.fields[campx].asinteger),relleno,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat)));
              if tipo in [ftfloat,ftlargeint] then
                 campi:=inserta(floattostr(qmio.fields[campx].asfloat),relleno,
                 qmio.fields[campx].datatype,
                 length(floattostr(qmio.fields[campx].asfloat)));
              if tipo in [ftstring,ftFixedChar] then
                 campi:=inserta(qmio.fields[campx].asstring,relleno,
                 qmio.fields[campx].datatype,
                 qmio.fields[campx].size);

             if (tipo in [ftmemo,ftblob,ftfmtmemo]) then
                 campi:=qmio.fields[campx].value;

              if tipo in [ftdate,ftdatetime] then
                 campi:=inserta(formatdatetime(formatofecha,
                 qmio.fields[campx].asdatetime),relleno,
                 qmio.fields[campx].datatype,
                 length(formatofecha));
              lineavacia:=lineavacia+campi; // para que no ponga lineas vacias
              cambia('0','',lineavacia);
              lineavacia:=trim(lineavacia);
              linea:=linea+campi+campsepara;
              end;  //5
            if (trim(lineavacia)<>'') and
            (lineavacia<>'           0                                      0                                                           ')
            and
            (lineavacia<>'           0                                       0                                                           ')
             then //mira primero si lo campos estan vacios
               writeln(f,linea);
            end; // ext='TXT'

            if ext='DBF' then
               begin
               with mitabla do
                 begin
                 append;
                 for i:=0 to fieldcount-1 do
                   mitabla.fields[i].value:=qmio.Fields[i].Value;
                 post;
                 end; //mitabla
               end;
            qmio.next;
            end;  //4
           if ext='DBF' then
             begin
             mitabla.close;
             mitabla.free;
             end;
       end;  //3
      if qmio.Database.DefaultTransaction.InTransaction then
         qmio.Database.DefaultTransaction.Commit;
  end;   //1

//cierra el fichero de texto
if ext<>'DBF' then
   begin
   writeln(f,#26);
   closefile(f);
   end;
qmio.close;
qmio.free;
mibaseib.free;
mitrans.Free;
result:=true;
end;

procedure mandaerrorporemail(e:exception;mensaje:string;acaba:boolean;
           nomsmtp,remite,listadestinosentrecomas,login,password:string);
var
linea,asunto,descrip:string;
begin

// FUNCION PARA EL CONTROL DE ERRORES DE LAS APLICACIONES por email
{  incluir esta funcion en el main y llamarla desde application.onexception:=trazainiporemail
procedure tmain.trazainiporemail(sender:tobject;e:exception);
begin
mitrazaerroresporemail(sender,e);
end;

procedure mitrazaerroresporemail(sender:tobject;e:exception);
begin
application.onexception:=nil;
mandaerrorporemail(e,mensaje,acaba,nomsmtp,remite,listadestinosentrecomas);
end;


}

iniciaresumido;

asunto:='ERROR EN '+application.exename;

if e<>nil then
linea:='ERROR EN '+application.exename+' - '+formatdatetime('dd,mm,yyyy hh:mm:ss', now)+' '+e.message+#13+#10+mensaje
else
linea:='ERROR EN '+application.exename+' - '+formatdatetime('dd,mm,yyyy hh:mm:ss', now)+' '+mensaje;
linea:=linea+'  / placa de estacion='+ID_NIC+'   NOMPC: '+ID_COMPUTER;
enviaemail(nomsmtp,remite,listadestinosentrecomas,asunto,'',linea,login,password,false,25);
end;



procedure GetPrinterNames(var listaprinters:tstringlist);
var
  buffer: TPrinterBuffer;
  currPos: integer;
  printerName: string;
begin
  if GetProfileString(PChar('PrinterPorts'), nil, '', buffer, MAXPRINTERBUFFER) > 0 then
  begin
    currPos := 0;
    while (true) do
      begin
        printerName := ParseNames(buffer, currPos);
        if printerName <> '' then
        listaprinters.Add(printerName)
    else
      break;
    end;
  end;
end;

function ParseNames(const namebuffer: TPrinterBuffer;
var startPos: integer): string;
var
  i, j, NameLength: integer;
  str: string;
begin
  result := '';
  if (startPos > High(namebuffer)) or (namebuffer[startPos] = Chr(0))  
  then
    exit;
  for i := startPos to High(namebuffer) do begin
    if namebuffer[i] = Chr(0)
    then begin
      nameLength := i - startPos;
      SetLength(str, nameLength);
      for j := 0 to nameLength - 1 do
      str[j+1] := namebuffer[startPos + j];
      result := str;
      startPos := i + 1;
      break;
    end;
  end;
end;

procedure mandaerror2(sender:tobject;e:exception;mensaje:string;acaba:boolean;gravedad:integer);
var
f:textfile;
linea,fitxer,nplaca,descrip:string;
databaseprovi:tibdatabase;
transprovi:tibtransaction;
miq:tibquery;
begin

if  ( e<>nil) and  (pos('Operation aborted',e.Message)>0) then
    exit;
if (gravedad<2) and (mensaje=ultimerror) then exit
  else ultimerror:=mensaje;

// FUNCION PARA EL CONTROL DE ERRORES DE LAS APLICACIONES
{  incluir esta funcion en el main y llamarla desde application.onexception:=trazaini
procedure tmain.trazaini(sender:tobject;e:exception);
begin
mitrazaerrores(sender,e);
end;}

{26/01/06  se incorpora la variable gracidad del 1 al 5 1 la menor
}

if (pos('tdbedit',lowercase(sender.classname))>0) or (pos('tdbgrid',lowercase(sender.classname))>0) and
   (pos('is not a valid date and time',e.message)<>0) then
   begin
   showmessage('Data no correcta');
   exit
   end;

iniciaresumido;



if e<>nil then
linea:=formatdatetime('dd,mm,yyyy hh:mm:ss', now)+' '+e.message+#13+#10+mensaje
else
linea:=formatdatetime('dd,mm,yyyy hh:mm:ss', now)+' '+mensaje;
linea:=linea+'  / placa de estacion='+ID_NIC+'   NOMPC: '+ID_COMPUTER;

fitxer:=extractfilepath(application.exename)+'errorlis.log';
assignfile(F,Fitxer);
if not fileexists(fitxer) then rewrite(f);
    append(f);
 writeln(f,linea);
 closefile(f);


if  (e<>nil ) and (pos('NTGUTTMANN7/3050',e.message)>0) then   exit
else
begin

try
databaseprovi:=tibdatabase.Create(application);
transprovi:=tibtransaction.create(application);

except
if acaba then application.terminate
else
begin
databaseprovi.free;
transprovi.free;
exit;
end;
end;
with databaseprovi do
   begin
   DefaultTransaction:=transprovi;
   databaseprovi.LoginPrompt:=false;
   if not entrabaseparams('LOGS',databaseprovi) then
       mandaerror(application,errorfalso,'No se puede abrir la base de datos '+databaseprovi.DatabaseName,false);
  try
   open;
   except
   if acaba then  application.terminate
    else
    begin
    databaseprovi.free;
    transprovi.free;
    exit;
    end;
   end;
if e<>nil then
 descrip:=copy(e.message+' / '+mensaje,1,200)
 else
 descrip:=copy(mensaje,1,200);
descrip:=StrippedOfNonAscii(descrip);
// MIRAR QUE NO HAYA "" ni '
if pos('"',descrip)>0 then cambia('"',' ',descrip);
if pos('''',descrip)>0 then cambia('''',' ',descrip);

 miq:=tibquery.create(application);
   with miq do
    begin
    database:=databaseprovi;
    sql.text:='insert into errorcontrol (gravedad, n_exe,n_error,n_placa,n_nompc,dia,n_login) '+
    'values ('+inttostr(gravedad)+',"'+copy(application.exename,length(application.exename)-49,50)
    +'","'+descrip+'","'+ID_NIC+'","'+ID_COMPUTER+'","'+formatdatetime('dd.mm.yyyy hh:mm', now)+'","'+ID_LOGIN+'")';
    execsql;
    if transprovi.InTransaction then transprovi.CommitRetaining;
    if acaba then
     begin
     showmessage(descrip);
     application.terminate;
     end
     else
      begin
      databaseprovi.free;
      transprovi.free;
      exit;
      end;
    free;

  end;  // end with miq

 end;   //end de with databaseprovi
databaseprovi.close;
databaseprovi.free;
transprovi.free;
end; // if no nt7 ko
end;

function leereg_multi_sz(raiz:hkey;clave,valor:string):string;
var
mireg:tregistry;
long:integer;
cadena:string;
begin
// funcion que lee valor string extendido en registro
result:='';
mireg:=tregistry.create;
mireg.RootKey:=raiz;
mireg.Access:=KEY_ALL_ACCESS;
if not mireg.OpenKey(clave,false) then exit;
long:=mireg.GetDataSize(valor);
setlength(cadena,long);
mireg.ReadBinaryData(valor,cadena[1],long);
result:=copy(cadena,1,length(cadena)-2);
mireg.free;
end;

function guardareg_multi_sz(raiz:hkey;clave,valor,contenido:string):boolean;
var
mireg:tregistry;
long:integer;
cadena:string;
begin
// funcion que lee valor string extendido en registro
mireg:=tregistry.create;
mireg.RootKey:=raiz;
mireg.Access:=KEY_ALL_ACCESS;
if not mireg.OpenKey(clave,false) then exit;
long:=mireg.GetDataSize(valor);
setlength(cadena,long);
mireg.ReadBinaryData(valor,cadena[1],long);
result:=true;
mireg.free;
end;

procedure BuscaFicheros(path, mask : AnsiString; var Value : TStringList; brec : Boolean);
var
  srRes : TSearchRec;
  iFound : Integer;
begin

//18/11/2009 esta es recurrente, incluye subcarpetas si brec = true

  if ( brec ) then
    begin
    if path[Length(path)] <> '\' then path := path +'\';
    iFound := FindFirst( path + '*.*', faAnyfile, srRes );
    while iFound = 0 do
      begin
      if ( srRes.Name <> '.' ) and ( srRes.Name <> '..' ) then
        if srRes.Attr and faDirectory > 0 then
          BuscaFicheros( path + srRes.Name, mask, Value, brec );
      iFound := FindNext(srRes);
      end;
    FindClose(srRes);
    end;
  if path[Length(path)] <> '\' then path := path +'\';
  iFound := FindFirst(path+mask, faAnyFile-faDirectory, srRes);
  while iFound = 0 do
    begin
    if ( srRes.Name <> '.' ) and ( srRes.Name <> '..' ) and ( srRes.Name <> '' ) then
      Value.Add(path+srRes.Name);
    iFound := FindNext(srRes);
    end;
  FindClose( srRes );
end;

procedure BuscaFicheros2(path: AnsiString; var Value : TStringList;FileAttrs:integer);
var
  srRes : TSearchRec;
  iFound : Integer;
begin
{
faReadOnly	Read-only files
faHidden	Hidden files
faSysFile	System files
faVolumeID	Volume ID files
faDirectory	Directory files
faArchive	Archive files
faAnyFile	Any file

unit sysutils
  faReadOnly  = $00000001 platform;
  faHidden    = $00000002 platform;
  faSysFile   = $00000004 platform;
  faVolumeID  = $00000008 platform;
  faDirectory = $00000010;
  faArchive   = $00000020 platform;
  faSymLink   = $00000040 platform;
  faAnyFile   = $0000003F;

EJM:  buscafichero('c:\','*.*', mistringlist,faAnyFile-faDirectory);
}

// if path[Length(path)] <> '\' then path := path +'\';
  iFound := FindFirst(path, FileAttrs, srRes);
  while iFound = 0 do
    begin
    if ( srRes.Name <> '.' ) and ( srRes.Name <> '..' ) and ( srRes.Name <> '' ) then
      Value.Add(srRes.Name);
    iFound := FindNext(srRes);
    end;
  FindClose( srRes );
end;

// 18/01/2007 añado parametro activo, ponerlo a false
// para desactivar el aviso, con esto borra el
// registro de la tabla estoyvivo y nos permite asi desactivar
// la alarma, lo normal es llamarlo con false
procedure estoyvivo(activo:boolean;proceso:string='';minutos:integer=0);
var
databaseprovi:tibdatabase;
transprovi:tibtransaction;
miq:tibquery;
midescrip:string;
begin
{ llamando a esta función se actualiza la tabla estoyvivo de informatica.gdb
con la hora actual, esto se debe haceSr cada 5 minutos,
el control de procesos si estan ok se hace con la funcion estavivo
activo es para true darlo de alta, o false darlo de baja y lo borra de la tabla estoyvivo
proceso es opcional, si no se pasa pone ''
    nos sirve para controlar varios procesos en la misma aplicacion
    esto solo añade el string dado en proceso al descriptivo creado en la tabla estoyvivo
14/02/2014 se añade parametro minutos que pone la fecha de ultimok mas el tiempo de retardo
 del timer en minutos. si queremos controlar un retardo de 5 minutos le pasamos
  un 5 y la fecha ultim ok sera now + 5 minutos
  si no se pasa nada  entonces coge por defecto 0 y sera la funcion como antes
  los avisos funcionaran como antes
    }
databaseprovi:=tibdatabase.Create(application);
transprovi:=tibtransaction.create(application);
try
with databaseprovi do
   begin
   DefaultTransaction:=transprovi;
   databaseprovi.LoginPrompt:=false;
   if not entrabaseparams('INFORMATICA',databaseprovi) then
       mandaerror(application,errorfalso,'No se puede abrir la base de datos '+databaseprovi.DatabaseName,false);
   try
   open;
   except
   databaseprovi.free;
   transprovi.free;
   exit;
   end;

   end;
 iniciaresumido;
 if proceso<>'' then
   midescrip:=ID_COMPUTER+'-'+ExtractFileName(Application.ExeName)+' / '+proceso
 else midescrip:=ID_COMPUTER+'-'+ExtractFileName(Application.ExeName);
 miq:=tibquery.create(application);
   with miq do
    begin
    database:=databaseprovi;
    if not activo then
      begin
      sql.text:='delete from estoyvivo where descriptivo="'+midescrip+'"';
      execsql;
{      databaseprovi.close;
      databaseprovi.free;
      transprovi.free;
      miq.free;
 }     exit;
      end;
    sql.text:='select * from estoyvivo where descriptivo="'+midescrip+'"';
    try
    open;
    except;
    databaseprovi.close;
    databaseprovi.free;
    transprovi.free;
    miq.free;
    exit;
    end;

    if eof and bof then
      begin // si no lo encuentra lo inserta
      close;
      sql.text:='insert into estoyvivo (descriptivo,ultimok)'+
      ' values(:descriptivo,:ultimok)';
      end
     else // si lo encuentra
      begin
      close;
      sql.text:='update estoyvivo set ultimok=:ultimok where descriptivo=:descriptivo';
      end;
    parambyname('descriptivo').asstring:=midescrip;
    // 0.00001157 es un segundo
    parambyname('ultimok').AsDateTime:=now+(0.00001157*60*minutos);
    try
    execsql;
    except;
    databaseprovi.free;
    transprovi.free;
    miq.free;
    exit;
    end;

  end;  // end with miq


finally
databaseprovi.close;
databaseprovi.free;
transprovi.free;
miq.free;
end;
end;


function estavivo(mensaje:boolean):boolean;
var
databaseprovi:tibdatabase;
transprovi:tibtransaction;
miq:tibquery;
midescrip:string;
begin
// 5 minutos son 0,002 aprox en resto de fecha 'now'- ultimok
{si han pasado mas de 5 minutos nos devuelve false, osea, no esta vivo
si ademas le ponemos true en el parametro, enviara mensajes a control de
errores de aplicaciones con funciona mandaerror;
01/04/2009 lo cambio a 15 minutos
 }
try
result:=false;
databaseprovi:=tibdatabase.Create(application);
transprovi:=tibtransaction.create(application);
with databaseprovi do
   begin
   DefaultTransaction:=transprovi;
   databaseprovi.LoginPrompt:=false;
   if not entrabaseparams('INFORMATICA',databaseprovi) then
       mandaerror(application,errorfalso,'No se puede abrir la base de datos '+databaseprovi.DatabaseName,false);
   open;
   end;

iniciaresumido;
 midescrip:=ID_COMPUTER+'-'+ExtractFileName(Application.ExeName);
 miq:=tibquery.create(application);
   with miq do
    begin
    database:=databaseprovi;
    sql.text:='select descriptivo,ultimok,(''now''-ultimok) as tiempo from estoyvivo '+
    ' where ''now''-ultimok>0.0150';  // mirar si han pasado mas de 5 mintuos sin actualizar
    open;
   if miq.recordcount >0 then
    begin

    if mensaje then
      begin
      first;
      while not eof do
        begin
        mandaerror2(application,errorfalso,miq['descriptivo']+' no respon des de les '+formatdatetime('dd/mm/yy hh:nn:ss',miq['ultimok']),false,3);
        enviaemail( 'ZSERVER','avisos@guttmann.com','informatica@guttmann.com',miq['descriptivo']+' no respon des de les '+formatdatetime('dd/mm/yy hh:nn:ss',miq['ultimok'])
        ,'',miq['descriptivo']+' no respon des de les '+formatdatetime('dd/mm/yy hh:nn:ss',miq['ultimok']),'','',false,25);
        next;
        end;
      end; // si mensaje

    result:=false;
    end // recordcount >0
   else  result:=true;

  end;  // end with miq

finally
miq.free;
transprovi.free;
databaseprovi.free;
end;
end;

function misalidaauto:integer;
var
databaseprovi:tibdatabase;
transprovi:tibtransaction;
miq:tibquery;
begin
// 5 minutos son 0,002 aprox en resto de fecha 'now'- ultimok

try
result:=0;
databaseprovi:=tibdatabase.Create(application);
transprovi:=tibtransaction.create(application);
with databaseprovi do
   begin
   DefaultTransaction:=transprovi;
   databaseprovi.LoginPrompt:=false;
   if not entrabaseparams('INFORMATICA',databaseprovi) then
       mandaerror(application,errorfalso,'No se puede abrir la base de datos '+databaseprovi.DatabaseName,false);
   open;
   end;

iniciaresumido;
miq:=tibquery.create(application);
with miq do
begin
database:=databaseprovi;
sql.text:='select tiemposalidaauto from maquines where nompc="'+ID_COMPUTER+'"';
open;
if (miq.recordcount=1) and (miq['tiemposalidaauto']<>null) and (miq['tiemposalidaauto']>0) then
     result:=miq['tiemposalidaauto'];

if result=0 then
  begin //pone el parametro por defecto si no tiene tiempo especificado
  close;
  databaseprovi.Close;
  if not entrabaseparams('GUTTMANN_REAL',databaseprovi) then
       mandaerror(application,errorfalso,'No se puede abrir la base de datos '+databaseprovi.DatabaseName,false);
  databaseprovi.Open;
  sql.text:='select * from config';
  open;
  result:=miq['minuts']*60;
  end; //fin pone el parametro por defecto si no tiene tiempo especificado

end;  // end with miq

finally
if result=0 then result:=180;
miq.free;
transprovi.free;
databaseprovi.free;
end;


end;


function cifra(cadena:string):string;
var
micifra:TJvXORCipher;
begin
// cifra la cadena y la devuelve
micifra:=TJvXORCipher.Create(application);
with micifra do
  begin
  micifra.key:='645645645645645343DS555F43RFDFFG55';
  micifra.Encoded:=cadena;
  result:=micifra.Decoded;
  free;
  end;
end;


function descifra(cadena:string):string;
var
micifra:TJvXORCipher;
begin
// descifra la cadena y la devuelve
micifra:=TJvXORCipher.Create(application);
with micifra do
  begin
  micifra.key:='645645645645645343DS555F43RFDFFG55';
  micifra.decoded:=cadena;
  result:=micifra.encoded;
  free;
  end;
end;


function entrabaseparams(alias:string; var mibase:tibdatabase):boolean;
var
inifile:tinifile;
rutaibxini:string;
pass:string;
pass2:TStringStream;
longi:integer;
begin
result:=true;
 if FileExists('G:\usr\bde\ibx.ini') then RutaIbxIni := 'G:\usr\bde\ibx.ini'
   else
   RutaIbxIni := ExtractFilePath(Application.ExeName) + 'ibx.ini';



 inifile:=TIniFile.Create(rutaibxini);
try
with inifile do
  begin
  with mibase do
     begin
//     DefaultTransaction:=transprovi;
     DatabaseName:=readstring(alias,'DataBaseName','');
     LoginPrompt:=false;
     params.Clear;
     pass:= readstring(alias,'password',''); // falla la funcion que lee parametro no coge caracteres especiales FQYY@T solo coge FQYY@T   son numero sin cifrar
     // hay que utilizar ReadBinaryStream
{     longi:=ReadBinaryStream(alias,'password',pass2);
     pass:=pass2.ReadString(longi);}

     Params.Add('password='+descifra(pass));
     Params.Add('user_name='+readstring(alias,'user_name',''));
     end; //with mibase
  free;
  end; // with inifile
  result:=mibase.databasename<>'';
except;
result:=false;
inifile.free;
end; //try

end;

function entrabaseparamsBDE(alias:string;var mibase:tdatabase):boolean;
var
inifile:tinifile;
rutaibxini:string;
pass:string;
pass2:TStringStream;
longi:integer;
begin
result:=true;
 if FileExists('G:\usr\bde\ibxbde.ini') then RutaIbxIni := 'G:\usr\bde\ibxbde.ini'
   else
   RutaIbxIni := ExtractFilePath(Application.ExeName) + 'ibxbde.ini';

if not  FileExists(rutaibxini) then // si no encuentra fichero de configuracion dejara los datos de programa de bde
  begin
  result:=true;
  exit;
  end;


 inifile:=TIniFile.Create(rutaibxini);
try
with inifile do
  begin
  with mibase do
     begin
//     DefaultTransaction:=transprovi;
     LoginPrompt:=false;
     params.Clear;
     pass:= readstring(alias,'password',''); // falla la funcion que lee parametro no coge caracteres especiales FQYY@T solo coge FQYY@T   son numero sin cifrar
     // hay que utilizar ReadBinaryStream
{     longi:=ReadBinaryStream(alias,'password',pass2);
     pass:=pass2.ReadString(longi);}

     Params.Add('USER NAME='+readstring(alias,'user_name',''));
     Params.Add('PASSWORD='+descifra(pass));

     end; //with mibase
  free;
  end; // with inifile
  result:=mibase.databasename<>'';
except;
result:=false;
inifile.free;
end; //try

end;

function creadir(ruta: string): boolean;
var
subdirs:tstringlist;
nl,nl1:integer;
corta,resto:string;
begin
{ pasandole una ruta por ejm c:\copias\temporales\20090826
 creará la ruta completa de todos los directorio uno por uno si no existen
 se tiene que poner la ruta completa con la unidad incluida
 }
subdirs:=tstringlist.create;
nl:=1;
nl1:=1;
resto:=ruta;
while true do
  begin
  nl:=pos('\',resto);
  if nl=0 then
    begin
    subdirs.Add(resto);
    break;
    end;
  corta:=copy(resto,1,nl);
  resto:=copy(resto,nl+1,length(resto));
  subdirs.add(corta);
  end;

//  bucle que crea directorio
// el 0 no lo hace porque es el raiz c:\ ejm x:\
corta:=subdirs.strings[0];
for nl:=1 to subdirs.count-1 do
  begin
  corta:=corta+subdirs.strings[nl];
  if not (DirectoryExists(corta)) and not (CreateDir(corta)) then
     begin
           mandaerror(application,errorfalso,'No se puede crear el directorio '+corta+
             ' / ESTACION:'+ID_COMPUTER,false);
     subdirs.Free;
     result:=false;
     exit;
     end;
  end;
result:=true;
subdirs.free;
end;


 {

{
  The SetSuspendState function suspends the system by shutting power down.
  Depending on the Hibernate parameter,
  the system either enters a suspend (sleep) state or hibernation.

  Syntax:
}
{
              function SetSuspendState(
   Hibernate: Boolean;
   ForceCritical: Boolean;
   DisableWakeEvent: Boolean):boolean;


{  Parameters:

   Hibernate: If this parameter is TRUE, the system hibernates.
              If the parameter is FALSE, the system is suspended.
   ForceCritical: If this parameter is TRUE, the system suspends operation immediately;
                  if it is FALSE, the system broadcasts a PBT_APMQUERYSUSPEND event to
                  each application to request permission to suspend operation.
   DisableWakeEvent: If this parameter is TRUE, the system disables all wake events.
                     If the parameter is FALSE, any system wake events remain enabled.


  Windows NT/2000/XP: Included in Windows 2000 and later.
  Windows 95/98/Me: Included in Windows 98 and later.
}
  {
var
  _SetSuspendState: function (Hibernate, ForceCritical, DisableWakeEvent: BOOL): BOOL
  stdcall = nil;

   function LinkAPI(const module, functionname: string): Pointer; forward;
   function SetSuspendState(Hibernate, ForceCritical,
    DisableWakeEvent: Boolean): Boolean;
begin
  if not Assigned(_SetSuspendState) then
    @_SetSuspendState := LinkAPI('POWRPROF.dll', 'SetSuspendState');
  if Assigned(_SetSuspendState) then
    Result := _SetSuspendState(Hibernate, ForceCritical,
      DisableWakeEvent)
  else
    Result := False;
end; }
   {
function LinkAPI(const module, functionname: string): Pointer;
var
  hLib: HMODULE;
begin
  hLib := GetModulehandle(PChar(module));
  if hLib = 0 then
    hLib := LoadLibrary(PChar(module));
  if hLib <> 0 then
    Result := getProcAddress(hLib, PChar(functionname))
  else
    Result := nil;
end;
     }
// Example Call:
// Beispielaufruf:

{
procedure TForm1.Button1Click(Sender: TObject);
begin
  SetSuspendState(True, False, False);
end;
 }


function NIFOK(numi:string):boolean;
var
letra,dnitotal:string;
dninum:integer;
begin
result:=false;
letra:=copy(numi,9,1);
DNItotal:=trim(copy(numi,1,8));
{try
  dninum:=strtoint(dnitotal);
 except
  result:=false;
  end;}
result:= letra=nif(dnitotal);
end;



function DelTree(const Directory: TFileName):boolean;
var
  DrivesPathsBuff: array[0..1024] of char;
  DrivesPaths: string;
  len: longword;
  ShortPath: array[0..MAX_PATH] of char;
  dir: TFileName;
function rDelTree(const Directory: TFileName):boolean;
// Borrar recursivamente todos los archivos y directorios
// dentro del directorio que se pasa como parámetro.
// en la ruta no hay que poner \ final
var
  SearchRec: TSearchRec;
  Attributes: LongWord;
  ShortName, FullName: TFileName;
  pname: pchar;
begin
  result:=true;
  if FindFirst(Directory + '*', faAnyFile and not faVolumeID,
     SearchRec) = 0 then begin
    try
      repeat // Procesa todos los archivos y directorios
        if SearchRec.FindData.cAlternateFileName[0] = #0 then
          ShortName := SearchRec.Name
        else
          ShortName := SearchRec.FindData.cAlternateFileName;
        FullName := Directory + ShortName;
        if (SearchRec.Attr and faDirectory) <> 0 then begin
          // Es un directorio
          if (ShortName <> '.') and (ShortName <> '..') then
            rDelTree(FullName + '\');
        end else begin
          // Es un archivo
          pname := PChar(FullName);
          Attributes := GetFileAttributes(pname);
          if Attributes = $FFFFFFFF then
            raise EInOutError.Create(SysErrorMessage(GetLastError));
          if (Attributes and FILE_ATTRIBUTE_READONLY) <> 0 then
            SetFileAttributes(pname, Attributes and not
              FILE_ATTRIBUTE_READONLY);
          if Windows.DeleteFile(pname) = False then
            begin
            raise EInOutError.Create(SysErrorMessage(GetLastError));
            end;
        end;
      until FindNext(SearchRec) <> 0;
    except
      FindClose(SearchRec);
      result:=false;
      raise;
    end;
    FindClose(SearchRec);
  end;
  if Pos(#0 + Directory + #0, DrivesPaths) = 0 then begin
    // Si no es un directorio raíz, lo remueve
    pname := PChar(Directory);
    Attributes := GetFileAttributes(pname);
    if Attributes = $FFFFFFFF then
      raise EInOutError.Create(SysErrorMessage(GetLastError));
    if (Attributes and FILE_ATTRIBUTE_READONLY) <> 0 then
      SetFileAttributes(pname, Attributes and not
        FILE_ATTRIBUTE_READONLY);
    if Windows.RemoveDirectory(pname) = False then begin
      begin
      raise EInOutError.Create(SysErrorMessage(GetLastError));
      result:=false;
      end;
    end;
  end;
end;
// ----------------
begin
if not DirectoryExists(Directory) and not fileexists(directory) then exit;
  DrivesPathsBuff[0] := #0;
  len := GetLogicalDriveStrings(1022, @DrivesPathsBuff[1]);
  if len = 0 then
    raise EInOutError.Create(SysErrorMessage(GetLastError));
  SetString(DrivesPaths, DrivesPathsBuff, len + 1);
  DrivesPaths := Uppercase(DrivesPaths);
  len := GetShortPathName(PChar(Directory), ShortPath, MAX_PATH);
  if len = 0 then
    raise EInOutError.Create(SysErrorMessage(GetLastError));
  SetString(dir, ShortPath, len);
  dir := Uppercase(dir);
  result:=rDelTree(IncludeTrailingBackslash(dir));
end;

function cambiaentre(inicio,final,cadenanueva:string;var cadena:string):boolean;
var
posi,posi2:integer;
cadena2,cadena3:string;
begin
{sub1 es inicio
sub2 es final
sub3 sera el contenido que se sustituye desde sub1 hasta sub2
}
result:=false;
while pos(inicio,cadena)>0 do
  begin
  posi:=pos(inicio,cadena);
  cadena2:=copy(cadena,posi,length(cadena));
  posi2:=pos(final,cadena2);
  cadena3:=copy(cadena2,posi2+length(final),length(cadena2));
  cadena:=copy(cadena,1,posi-1)+cadenanueva+cadena3;
  result:=true
  end;
end;


function evitanulo(valor:tfield):variant;
var
tipo:tfieldtype;
begin
  //
  if valor.AsVariant=null then
     begin
     tipo:=valor.DataType;
     if tipo in [ftinteger,ftsmallint,ftcurrency,ftword,ftautoinc,ftfloat,ftlargeint] then result:=0;

     if tipo in [ftstring,ftFixedChar,ftmemo,ftblob,ftfmtmemo] then result:='';
     if tipo in [ftdate,ftdatetime] then result:=0;
     end
   else result:=valor.asvariant;
end;


function Generar_IBAN(Pais, Cuenta: string): string;



var cAux,ccc, AuxCuenta:string;
    i:Integer;
    auxTemp: Extended;
    ESIBAN:boolean;
begin

{ pasando el codigo de cuenta ccc español y el pais nos devuelve el codigo de cuenta IBAN
si en el pais le pasamos '' lo calcula para españa}

{ si le pasamos un codigo cuenta ccc 20 digitos español lo comprueba primero
si esta mal devolvera un string vacio }

{si le pasamos un codigo iban entonces nos devuelve el codigo iban correcto
si el codigo de control no es correcto nos devuelve el correcto
por lo que si le pasamos el iban bien nos devuelve el mismo iban
si no lo pasamos bien sera diferente}




  if (Trim(Cuenta) = '') or (Length(Cuenta) > 34)
  then Result := ''
  else begin
// Fase 1: Nos aseguramos que solo contiene Letras y Numeros
    Cuenta := UpperCase(Cuenta);
    AuxCuenta := Cuenta;
    cAux := '';
    for i := 1 to Length(Cuenta) do
     if (EsAlfanumerico(Cuenta[i]) or EsNumerico(Cuenta[i]))
     then cAux := cAux + AnsiString(Cuenta[i]);

    Cuenta := cAux;

// Fase 2: Se comprueba si ya es un codigo IBAN, y si no lo es, se añade el PAIS


    if (EsAlfanumerico(Cuenta[1]) and EsAlfanumerico(Cuenta[2]))
     then
     begin  // Es IBAN
     esiban:=true;
     if (EsAlfanumerico(Cuenta[3]) or EsAlfanumerico(Cuenta[4]))
     then Result := '';
     Pais   := Copy(Cuenta, 1, 2);//Cuenta.SubString(1, 2);
     Cuenta := Copy(Cuenta, 5, Length(Cuenta));//Cuenta.SubString(5, Length(Cuenta)) + Cuenta.SubString(1, 2) + '00';
     ccc:= cuenta;
     end
     else
     begin // si no es cuenta iban comprueba que la cuenta ccc este bien
           // si no esta bien sale y devuelve ''
     if not biencuenta(cuenta) then exit;


     end;


     if (Trim(Pais) = '') then Pais := 'ES';
     Cuenta := Cuenta + Pais + '00';


// Fase 3: Se convierten las letras del pais en sus numeros equivalentes:
  //A=10, B=11, C=12 ... Z=35
    cAux := '';
    for i := 1 to Length(Cuenta) do
    begin
     if (EsAlfanumerico(Cuenta[i]))
     then cAux := cAux + FormatFloat('00', Ord(Cuenta[i])-55)//Cuenta[i - 1] - 55)
     else cAux := cAux + Copy(Cuenta, i, 1);
    end;
    Cuenta := cAux;
// Fase 4: Dividimos por 97
    auxTemp := StrToInt(Copy(Cuenta, 1, 9)) mod 97;
    cAux   := FormatFloat('0', auxTemp);//FormatFloat("0", StrToInt(Cuenta.SubString(1, 9)) % 97);
    Cuenta := Copy(Cuenta, 10, Length(Cuenta));//Cuenta.SubString(10, Cuenta.Length());
      while (Trim(Cuenta) <> '') do
      begin
        if (StrToInt(cAux) < 10)
        then begin
          cAux   := cAux + Copy(Cuenta, 1, 8);//Cuenta.SubString(1, 8);
          Cuenta := Copy(Cuenta, 9, Length(Cuenta));//Cuenta.SubString(9, Cuenta.Length());
        end
        else begin
          cAux   := cAux + Copy(Cuenta, 1, 7);//Cuenta.SubString(1, 7);
          Cuenta := Copy(Cuenta, 8, Length(Cuenta));//Cuenta.SubString(8, Cuenta.Length());
        end;
        auxTemp := StrToInt(cAux) mod 97;
        cAux := FormatFloat('0', auxTemp);
      end;
// Fase 5: Devolvemos el IBAN completo con sus digitos de control.
// Se puede cambiar para devolver solo el digito de control, o lo que se quiera.
   if esiban then
         Result := Pais + FormatFloat('00', 98 - StrToInt(cAux)) + ccc
         else
      Result := Pais + FormatFloat('00', 98 - StrToInt(cAux)) + AuxCuenta;
    end;
  end;



function Generar_acreedor(pais,acreetot:string):string;

var cAux, Auxacree,acree:string;
    i:Integer;
    auxTemp: Extended;
    EsSepa:boolean;
begin

{ pasando el pais en primer campo
en segundo campo pasamos codigo comercial acreedor (sufijo) que es 000-999 que relaciona a la entidad del acreedor y el acreedor
y a esto le unimos el NIF o NIE todo junto , ejm 001G08519100

el codigo completo de acreedor que devueve hace el mismo calculo que para el IBAN pero lo calcula con este codigo que pasamos de
acreedor y le pone pais y digito de control delante calculando con los digitos a partir del 8 osea el nif - nie con
el codigo de pais en numerico con 00 y todo convertidos a numerico y haciendo mod 97 - 10, . el resultado es por ejm ES06001G848288333 3 y 4 son dig de control

}

acree:=acreetot;


  if (Trim(acree) = '') or (Length(acree) > 34)  then
    begin
    Result:= '';
    exit;
    end;

// Fase 1: Nos aseguramos que solo contiene Letras y Numeros


    acree := UpperCase(acree);
    Auxacree := acree;
    cAux := '';
    for i := 1 to Length(acree) do
     if (EsAlfanumerico(acree[i]) or EsNumerico(acree[i]))
     then cAux := cAux + AnsiString(acree[i]);

    acree := cAux;



essepa:=false;

// Fase 2: Se comprueba si ya es un codigo acree SEPA, y si no lo es, lo
// vuelve a calcula y coge desde el caracter 8 para calcular, sino lo coge desde el 4
   if (EsAlfanumerico(acreetot[1]) and EsAlfanumerico(acreetot[2]))
     then
     begin  // Es SEPA
     // quita el sufijo para calcular
     acree:=copy(acreetot,8,length(acreetot)-8);
     essepa:=true;
     end
     else // es sufijo con NIF o NIE
     // quita el sufijo para calcular
     acree:=copy(acreetot,4,length(acreetot)-4);

     if (Trim(Pais) = '') then Pais := 'ES';

     acree := acree + Pais + '00';




// Fase 3: Se convierten las letras del pais en sus numeros equivalentes:
  //A=10, B=11, C=12 ... Z=35
    cAux := '';
    for i := 1 to Length(acree) do
    begin
     if (EsAlfanumerico(acree[i]))
     then cAux := cAux + FormatFloat('00', Ord(acree[i])-55)//acree[i - 1] - 55)
     else cAux := cAux + Copy(acree, i, 1);
    end;
    acree := cAux;



// Fase 4: Dividimos por 97
    auxTemp := StrToInt(Copy(acree, 1, 9)) mod 97;
    cAux   := FormatFloat('0', auxTemp);//FormatFloat("0", StrToInt(acree.SubString(1, 9)) % 97);
    acree := Copy(acree, 10, Length(acree));//acree.SubString(10, acree.Length());
      while (Trim(acree) <> '') do
      begin
        if (StrToInt(cAux) < 10)
        then begin
          cAux   := cAux + Copy(acree, 1, 8);//acree.SubString(1, 8);
          acree := Copy(acree, 9, Length(acree));//acree.SubString(9, acree.Length());
        end
        else begin
          cAux   := cAux + Copy(acree, 1, 7);//acree.SubString(1, 7);
          acree := Copy(acree, 8, Length(acree));//acree.SubString(8, acree.Length());
        end;
        auxTemp := StrToInt(cAux) mod 97;
        cAux := FormatFloat('0', auxTemp);
      end;

      if essepa then
      Result := Pais + FormatFloat('00', 98 - StrToInt(cAux)) + copy(acreetot,5,length(acreetot))
      else  Result := Pais + FormatFloat('00', 98 - StrToInt(cAux)) + acreetot;




end;

function EsAlfanumerico(Caracter: Char): boolean;
  begin
    Result := (AnsiChar(Caracter) in ['A'..'Z', 'a'..'z']);
  end;

function EsNumerico(Caracter: Char): boolean;
  begin
    Result := (AnsiChar(Caracter) in ['0'..'9']);
  end;


function StrippedOfNonAscii(const s: string): string;
var
  i, Count: Integer;
begin
  SetLength(Result, Length(s));
  Count := 0;
  for i := 1 to Length(s) do begin
    if ((s[i] >= #32) and (s[i] <= #127)) or (s[i] in [#10, #13]) then begin
      inc(Count);
      Result[Count] := s[i];
    end;
  end;
  SetLength(Result, Count);
end;

function entravariablessql(sql:string):string;
var
variable:string;
cuenta,posic:integer;
mivalor:string;
begin
// dentro de un string pasado como sql si ponemos #variable nos pedira
// el valor a entrar en esa variable y sustituira ese valor en la query
// por ejemplo #dataini  nos pedira entre dataini y pondremos 01/01/2016 y esto ira directo en la query
posic:=pos ('#',sql);
while posic>0 do
  begin
  cuenta:=0;
  variable:='';
  while   (copy(sql,posic+cuenta,1)<>' ')  and (copy(sql,posic+cuenta,1)<>'''') and  (copy(sql,posic+cuenta,1)<>'"') and (copy(sql,posic+cuenta,1)<>')')
   and (posic+cuenta<=length(sql))  do
    begin
    variable:=variable+copy(sql, posic+cuenta,1);
    inc(cuenta,1);
    end;
  mivalor:=inputbox('Parametro','Entre el valor: '+variable,'');
  cambia(variable,mivalor,sql);
  posic:=pos ('#',sql);
  end; // si encuetra #

result:=sql;
end;

function GetSizeOfFile(FileName: string): Int64;
var
  Handle: Integer;
  iFileSize :int64;
begin
  Handle := FileOpen(FileName, fmOpenRead);

  if Handle = -1 then
    MessageDlg('Unable to open file ' + FileName, mtError, [mbOk], 0)
  else try
    iFileSize := iFileSize + FileSeek(Handle, Int64(0), 2);
  finally
    FileClose(Handle);
  end;

  Result := iFileSize;
end;

function FormatFileSize(AValue: Int64): string;
const
  K = Int64(1024);
  M = K * K;
  G = K * M;
  T = K * G;
begin
  if AValue < K then Result := Format ( '%d bytes', [AValue] )
  else if AValue < M then Result := Format ( '%f KB', [AValue / K] )
  else if AValue < G then Result := Format ( '%f MB', [AValue / M] )
  else if AValue < T then Result := Format ( '%f GB', [AValue / G] )
  else Result := Format ( '%f TB', [AValue / T] );
end;

function GetUserAndDomainFromPID(ProcessId: DWORD;
  var User, Domain: string): Boolean;
var
  hToken: THandle;
  cbBuf: Cardinal;
  ptiUser: PTOKEN_USER;
  snu: SID_NAME_USE;
  ProcessHandle: THandle;
  UserSize, DomainSize: DWORD;
  bSuccess: Boolean;
begin
  Result := False;
  ProcessHandle := OpenProcess(PROCESS_QUERY_INFORMATION, False, ProcessId);
  if ProcessHandle <> 0 then
  begin
  //  EnableProcessPrivilege(ProcessHandle, 'SeSecurityPrivilege', True);
    if OpenProcessToken(ProcessHandle, TOKEN_QUERY, hToken) then
    begin
      bSuccess := GetTokenInformation(hToken, TokenUser, nil, 0, cbBuf);
      ptiUser  := nil;
      while (not bSuccess) and (GetLastError = ERROR_INSUFFICIENT_BUFFER) do
      begin
        ReallocMem(ptiUser, cbBuf);
        bSuccess := GetTokenInformation(hToken, TokenUser, ptiUser, cbBuf, cbBuf);
      end;
      CloseHandle(hToken);

      if not bSuccess then
      begin
        Exit;
      end;

      UserSize := 0;
      DomainSize := 0;
      LookupAccountSid(nil, ptiUser.User.Sid, nil, UserSize, nil, DomainSize, snu);
      if (UserSize <> 0) and (DomainSize <> 0) then
      begin
        SetLength(User, UserSize);
        SetLength(Domain, DomainSize);
        if LookupAccountSid(nil, ptiUser.User.Sid, PChar(User), UserSize,
          PChar(Domain), DomainSize, snu) then
        begin
          Result := True;
          User := StrPas(PChar(User));
          Domain := StrPas(PChar(Domain));
        end;
      end;

      if bSuccess then
      begin
        FreeMem(ptiUser);
      end;
    end;
    CloseHandle(ProcessHandle);
  end;
end;

procedure resinstalaimpresorared(impresora:string);
begin


if trim(impresora)='' then exit;

printer.printerindex:=-1;
printer.Refresh;
winexec(pansichar('rundll32 printui.dll PrintUIEntry /dn /n'+impresora),sw_hide);
sleep(8000);
winexec(pansichar('rundll32 printui.dll PrintUIEntry /in /n'+impresora),sw_hide);
sleep(5000);
printer.Refresh;

end;


function borraimpresora(impresora:string):boolean;
var
milista:tstringlist;
numimp:integer;

begin

if trim(impresora)='' then exit;
printer.printerindex:=-1;
printer.Refresh;
winexec(pansichar('rundll32 printui.dll PrintUIEntry /dn /n'+impresora),sw_hide);
sleep(5000);

printer.Refresh;
milista:=tstringlist.create;
GetPrinterNames(milista);
for numimp:=0 to milista.Count-1 do
  result:=not (milista.Strings[numimp]=impresora);

milista.free;

end;


function addimpresora(impresora:string):boolean;
var
milista:tstringlist;
numimp:integer;
begin



if trim(impresora)='' then exit;
printer.printerindex:=-1;
printer.Refresh;
winexec(pansichar('rundll32 printui.dll PrintUIEntry /in /n'+impresora),sw_hide);
        sleep(15000);
printer.Refresh;

milista:=tstringlist.create;
GetPrinterNames(milista);
for numimp:=0 to milista.Count-1 do
  result:=milista.Strings[numimp]=impresora;
milista.free;
end;

function PingHost(const HostName:string;TimeoutMS:cardinal=500):boolean;
const
  rSize=$400;
var
  e:PHostEnt;
  a:PInAddr;
  h:THandle;
  d:string;
  r:array[0..rSize-1] of byte;
  i:cardinal;
begin
  //assert WSAStartup called
  e:=gethostbyname(PChar(HostName));
  if e=nil then
     begin
     result:=false ;
     exit ;
     end;
  if e.h_addrtype=AF_INET then pointer(a):=e.h_addr^ else
    begin
    result:=false;
    exit
    end;

  //raise Exception.Create('Name doesn''t resolve to an IPv4 address');

  d:=FormatDateTime('yyyymmddhhnnsszzz',Now);

  h:=IcmpCreateFile;
  if h=INVALID_HANDLE_VALUE then RaiseLastOSError;
  try
    i:=IcmpSendEcho(h,a^,PChar(d),Length(d),nil,@r[0],rSize,TimeoutMS);
    Result:=(i<>0) and (PEchoReply(@r[0]).Status=0);
  finally
    IcmpCloseHandle(h);
  end;
end;


function damedirectori(nom:string;mibase:tibdatabase):string;
var
miq:tibquery;
begin
miq:=tibquery.create(application);
with miq do
  begin
  database:=mibase;
  miq.sql.text:='select RUTA from DIRECTORIS where NOM = :NOM';
  parambyname('nom').asstring:=nom;
  open;
  if miq['ruta']<>null then result:=miq['ruta'];
  close;
  free;
  end;


//
end;





function QuitarCaracteres(Str: String): String;
var
  i: Integer;
begin
//quitar caracteres no validos en nombre de fichero \/:*?"<>

  Result:= EmptyStr;
  for i:= 1 to Length(Str) do
  //  if Str[i] < #128 then
    if pos(str[i],'\/:*?"<>')>0 then continue
    else  Result:= Result + Str[i];
    
end;



function KillTask(FileName:String;espera:boolean):boolean;
 var
     ContinueLoop:BOOL;
     FSnapshotHandle:THandle;
     FProcessEntry32:TProcessEntry32;
     FirstTickCount:longint;
 const
     PROCESS_TERMINATE=$0001;
 begin
     FSnapshotHandle:=CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);
     FProcessEntry32.dwSize:=Sizeof(FProcessEntry32);
     ContinueLoop:=Process32First(FSnapshotHandle,FProcessEntry32);

     while integer(ContinueLoop)<>0 do
      begin
       if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))=UpperCase(FileName))
          or (UpperCase(FProcessEntry32.szExeFile)=UpperCase(FileName)))   then
             begin //si se lo carga
                Result:=TerminateProcess(OpenProcess(PROCESS_TERMINATE,BOOL(0),
                        FProcessEntry32.th32ProcessID),0);
                if espera then
                    begin
                    FirstTickCount:=GetTickCount;
                    repeat
                       Application.ProcessMessages;
                    until ((GetTickCount-FirstTickCount) >= Longint(2000));
                    end;
             end; // si se lo carga
        ContinueLoop:=Process32Next(FSnapshotHandle,FProcessEntry32);
      end;
     CloseHandle(FSnapshotHandle);
 end;


function QuitarCaracteresEsp(Str: String): String;
var
  i: Integer;
begin
  Result:= EmptyStr;
  for i:= 1 to Length(Str) do
    if Str[i] < #128 then
      Result:= Result + Str[i];
end;


end.



