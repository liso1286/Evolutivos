{ Invokable implementation File for TServiceX which implements IEchoService }

unit SOAPGUTTimpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, SOAPGUTTIntf, SysUtils, Classes,
   DB, IBCustomDataSet, IBQuery, IBDatabase,dialogs,variants,forms,strutils;

type
  { TServiceX }
  TSOAPGUTTSERVICE = class(TInvokableClass, ISOAPGUTTSERVICES)

  public


    function recepcion_pedido(const value:tpedido): tpedido; stdcall;
    function proveedor(const value:tproveedor): tproveedor; stdcall;
    function producto (const value:tproducto): tproducto; stdcall;
    function nuevo_pedido (const value:tpedidonuevo): tpedidonuevo; stdcall;
    function envia_mov_armario(const value:tmov_armario) : tmov_armario; stdcall;
    function comunicacion_consumos(const value:tconsumos): trespuesta_consumos; stdcall;
    function test:boolean; stdcall;
    function testmail:boolean; stdcall;
    function estado_factura(const value : testatfact):trespuesta_basica; stdcall ;


  end;

    procedure entralog(xml,sqls,mensaje_resultado,gdb:string;ok:boolean);


implementation

uses utili2007, WebModule_U;


procedure entralog(xml,sqls,mensaje_resultado,gdb:string;ok:boolean);
var
baselog:tibdatabase;
mitrans:TIBTransaction;
miq:tibquery;
OKS:char;
begin
if ok then oks:='S' else oks:='N';

baselog:=tibdatabase.create(nil);
if not entrabaseparams('ANALITLOG',baselog) then
 begin
 mandaerror3(nil,errorfalso,inimensaje+'Fallo al intentar conectar con gdb analitlog',false,2);
 exit;
 end;
mitrans:=TIBTransaction.create(nil);
baselog.DefaultTransaction:=mitrans;

miq:=tibquery.create(nil);

with miq  do
 begin
   database:=baselog;
   sql.text:='insert into logsoapgutt (xml,data,ok,mensaje_resultado,sql,gdb) '+
   ' values (:xml,''NOW'',:ok1,:mens,:sqlin,:gdb)';

   parambyname('xml').AsBlob:=xml;
   parambyname('ok1').asstring:=oks;
   parambyname('mens').asstring:=copy(mensaje_resultado,1,253);
   parambyname('sqlin').asstring:=copy(sqls,1,3000);
   parambyname('gdb').asstring:=copy(gdb,1,250);


//    try
     execsql;

{    except
     on e:exception do
         begin
         mandaerror3(nil,errorfalso,'error: '+msql,false,1);
         exit;
         end;
    end;}

 end;   //with


if baselog.DefaultTransaction.InTransaction
   then baselog.DefaultTransaction.CommitRetaining;

miq.close;
baselog.close;
miq.free;
mitrans.free;
baselog.free;
end;


function TSOAPGUTTSERVICE.nuevo_pedido(
  const value: tpedidonuevo): tpedidonuevo;
var
basecompras:tibdatabase;
mitrans:TIBTransaction;
miq:tibquery;
sqltexto:string;
begin

if (value.c_producto='') or (value.c_producto='0') then
  begin
  value.ok:=false;
  value.mensaje_resultado:='Datos aportados incompletos';
  entralog(mixml,sqltexto,'Funcion Nuevo_pedido: '+value.mensaje_resultado,basedatos,value.ok);
  result:=value;
  exit;
  end;

value.mensaje_resultado:='Datos procesados correctamente';
value.ok:=true;

miq:=tibquery.Create(nil);
basecompras:=tibdatabase.create(nil);
if not entrabaseparams(basedatos,basecompras) then
 begin
 mandaerror3(self,errorfalso,inimensaje+'No se puede abrir la base de datos '+basedatos,true,1);
 value.ok:=false;
 value.mensaje_resultado:='Fallo al intentar conectar con gdb de compras';
 entralog(mixml,sqltexto,'Funcion Nuevo_pedido: '+value.mensaje_resultado,basedatos,value.ok);
 result:=value;
 exit;
 end;

mitrans:=TIBTransaction.create(nil);
basecompras.DefaultTransaction:=mitrans;

with miq  do
 begin
  Database:=basecompras;
  sql.text:='select * from  P_PRODUCTES_SAP_COMANDA ' +
  '(:PRODUCTO,:DIFERENCIA)';
{
  sqltexto:='select * from  P_PRODUCTES_SAP_COMANDA ' +
  '( ''PRODUCTO'' ,''DIFERENCIA'')';
  cambia('PRODUCTO',value.c_producto,sqltexto);
  cambia('DIFERENCIA', value.diferencia ,sqltexto);
  sql.text:=sqltexto;                              }
  parambyname('producto').asstring:=value.c_producto;
  parambyname('diferencia').asstring:=value.diferencia;

  //solo tiene efecto para el log
  sqltexto:=sql.text;
  cambia(':PRODUCTO',value.c_producto,sqltexto);
  cambia(':DIFERENCIA', value.diferencia ,sqltexto);

  try
  open;
  if  miq['error']<>'' then
    begin
    value.ok:=false;
    value.mensaje_resultado:=formatdatetime('dd/mm/yyy hh:nn',now)+': '+miq['error']+' codigo: '+inttostr(miq['codi'])+' / '+' fallo en funcion -nuevo_pedido- al volcar en compres.gdb ';
    mandaerror3(self,errorfalso,inimensaje+formatdatetime('dd/mm/yyy hh:nn',now)+ value.mensaje_resultado,false,1);
//    entralog(miq.sql.text,value.mensaje_resultado,value.ok);
    result:=value;
    end;

  except
  on e:exception do
    begin
    value.ok:=false;
    value.mensaje_resultado:=e.message+' / fallo en funcion -nuevo_pedido- al volcar en compres.gdb '+sqltexto;
    mandaerror3(self,e,inimensaje+formatdatetime('dd/mm/yyy hh:nn',now)+ ' '+value.mensaje_resultado,false,1);
//    entralog(miq.sql.text,value.mensaje_resultado,value.ok);
    result:=value;
    end;
  end;
 end;


Result := value;

if basecompras.DefaultTransaction.InTransaction
   then basecompras.DefaultTransaction.CommitRetaining;

entralog(mixml,sqltexto,'Funcion Nuevo_pedido: '+value.mensaje_resultado,basedatos,value.ok);
miq.close;
basecompras.close;
miq.free;
mitrans.free;
basecompras.free;
end;


function TSOAPGUTTSERVICE.estado_factura(const value : testatfact):trespuesta_basica; stdcall ;
var
baseguttmann:tibdatabase;
mitrans:TIBTransaction;
miq:tibquery;
sqltexto:string;
codigoint:integer;

{$IFDEF WEBDEBUG}
  f:textfile;
  fichero,linea:string;
{$ENDIF}
begin
result:=Trespuesta_basica.Create;
{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' entrada en funcion estado_factura '+
'estado :'+value.estado+'  codigo:'+value.codigo;
fichero:=extractfilepath(application.exename)+'debugitems.log';
assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}


// revisa que tenga todos los valores obligatorios
if (trim(value.estado)='')   then
  begin
  Result.ok:=false;
  result.mensajeresultado:='Falta estado';
  entralog(mixml,sqltexto,'funcion estado_factura:  Falta estado'+ result.mensajeresultado,basedatosguttmann,result.ok);
  exit;
  end;

if  (trim(value.codigo)='')  then

  begin
  Result.ok:=false;
  result.mensajeresultado:='Falten codigo';
  entralog(mixml,sqltexto,'funcion estado_factura:  Falta codigo'+ result.mensajeresultado,basedatosguttmann,result.ok);
  exit;
  end;


{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' funcion estado_factura  despues de comprobar datos ok ';
fichero:=extractfilepath(application.exename)+'debugitems.log';
assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}


baseguttmann:=tibdatabase.create(nil);
if not entrabaseparams(basedatosguttmann,baseguttmann) then
 begin
 mandaerror3(self,errorfalso,inimensaje+'No se puede abrir la base de datos '+basedatos,true,1);
 {$IFDEF WEBDEBUG}
  linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' no se puede abrir la base de datos '+basedatos;
  fichero:=extractfilepath(application.exename)+'debugitems.log';
  fichero:=extractfilepath(application.exename)+'debugitems.log';
  assignfile(F,fichero);
  if not fileexists(fichero) then rewrite(f);
      system.append(f);
   writeln(f,linea);
   closefile(f);
 {$ENDIF}
 result.ok:=false;
 result.mensajeresultado:='Error interno, Fallo al intentar conectar con gdb de guttmann';
 entralog(mixml,'open','Fallo al intentar conectar con gdb de guttmann',basedatosguttmann,false);
 baseguttmann.free;
 exit;
 end;


{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' despues de abrir base de datos ';
fichero:=extractfilepath(application.exename)+'debugitems.log';

fichero:=extractfilepath(application.exename)+'debugitems.log';

assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}




miq:=tibquery.Create(nil);
mitrans:=TIBTransaction.create(nil);
baseguttmann.DefaultTransaction:=mitrans;
try
with miq  do
 begin
  Database:=baseguttmann;
  if leftstr(value.codigo,1)='T' then
     miq.SQL.text:=' update tractaments set c_estatfac=80 where data_alta is not null '+ // cambiado update 04/02/2022
 ' and (data_alta<"TODAY" or (data_alta = data_ingres and data_alta = "TODAY"))'+
 ' and c_tractament='+copy(value.codigo,2,length ( value.codigo))

// update anterior 04/02/2022
  {    ' update tractaments set c_estatfac=80 where data_alta<"TODAY" and data_alta is not null'+
     ' and  c_tractament='+copy(value.codigo,2,length ( value.codigo))}
   else
  if leftstr(value.codigo,1)='Q' then
     miq.SQL.text:=' update bquirurgic set c_estatfac=80 where c_interv='+copy(value.codigo,2,length ( value.codigo))
     else
  if (leftstr(value.codigo,1)='A') and ((value.estado='C') or (value.estado='F')) then
     miq.SQL.text:=' update interconortesislin set c_estatfac2=80 where c_ortesislin='+copy(value.codigo,2,length ( value.codigo))
   else
  if (leftstr(value.codigo,1)='O') then
        miq.SQL.text:=' update interconortesislin set estatfac=80 where c_ortesislin='+copy(value.codigo,2,length ( value.codigo))
    else
  if leftstr(value.codigo,1)='P' then
           miq.SQL.text:=' update InterconProvaEsp set estatfac=80 where c_intercon='+copy(value.codigo,2,length ( value.codigo));
{      else
   if leftstr(value.codigo,1)='F' then
       miq.SQL.text:=' update interf   set c_estatfac=80 where pk='+copy(value.codigo,2,length ( value.codigo));}

   if miq.sql.text<>'' then execsql;

  end;
 if mitrans.InTransaction then mitrans.CommitRetaining;



 result.ok:=true;

except
on e:exception do
 begin
 result.ok:=false;
 result.mensajeresultado:='try: '+e.Message;
 end;
end;  // try

if miq.sql.text<>'' then
  entralog(mixml,sqltexto,'funcion estado_factura: '+ result.mensajeresultado,basedatosguttmann,result.ok)
  else
  entralog(mixml,sqltexto,'funcion estado_factura: no se realiza ninguna acción, estado '+ value.estado+', codigo '+value.codigo,basedatosguttmann, result.ok);

miq.close;
baseguttmann.close;
miq.free;
mitrans.free;
baseguttmann.free;

end;



function TSOAPGUTTSERVICE.producto(const value: tproducto): tproducto;
var
basecompras:tibdatabase;
mitrans:TIBTransaction;
miq:tibquery;
sqltexto:string;
begin


if (value.c_producto='') or (value.c_producto='0') then
  begin
  value.ok:=false;
  value.mensaje_resultado:='Datos aportados incompletos';
  entralog(mixml,sqltexto,'Funcion producto: '+value.mensaje_resultado,basedatos,value.ok);
  result:=value;
  exit;
  end;



value.mensaje_resultado:='Datos procesados correctamente';
value.ok:=true;

miq:=tibquery.Create(nil);
basecompras:=tibdatabase.create(nil);
if not entrabaseparams(basedatos,basecompras) then
 begin
 mandaerror3(self,errorfalso,inimensaje+'No se puede abrir la base de datos '+basedatos,true,1);
 value.ok:=false;
 value.mensaje_resultado:='Fallo al intentar conectar con gdb de compras';
// entralog(mixml,'',value.mensaje_resultado,value.ok,basecompras.DatabaseName);
 result:=value;
  entralog(mixml,sqltexto,'Funcion producto: '+value.mensaje_resultado,basedatos,value.ok);
 exit;
 end;

mitrans:=TIBTransaction.create(nil);
basecompras.DefaultTransaction:=mitrans;

with miq  do
 begin
  Database:=basecompras;

{  sqltexto:='select * from  P_PRODUCTES_SAP ' +
  '( ''C_PRODUCTO'' , ''N_PRODUCTO'',''INDICADOR'')';
  cambia('C_PRODUCTO',value.c_producto,sqltexto);
  cambia('N_PRODUCTO', value.n_producto ,sqltexto);
  cambia('INDICADOR', value.baja ,sqltexto);
  sql.text:=sqltexto;     }
  sql.text:='select * from  P_PRODUCTES_SAP ' +
  '( :C_PRODUCTO , :N_PRODUCTO, :INDICADOR)';
  parambyname('c_producto').asstring:=value.c_producto;
  parambyname('n_producto').asstring:=value.n_producto;
  parambyname('indicador').asstring:=value.baja;

  // solo tiene efecto para el log
  sqltexto:=sql.text;
  cambia(':C_PRODUCTO',value.c_producto,sqltexto);
  cambia(':N_PRODUCTO', value.n_producto ,sqltexto);
  cambia(':INDICADOR', value.baja ,sqltexto);

  try
  open;

  if  miq['error']<>'' then
    begin
    value.ok:=false;
    value.mensaje_resultado:=formatdatetime('dd/mm/yyy hh:nn',now)+': '+miq['error']+' codigo: '+inttostr(miq['codi'])+' / '+' fallo en funcion -producto- al volcar en compres.gdb ';
    mandaerror3(self,errorfalso,inimensaje+formatdatetime('dd/mm/yyy hh:nn',now)+ value.mensaje_resultado,false,1);
   if pos('STOCK',uppercase(miq['error']))>0  then
      begin
      enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com,compres@guttmann.com','ERROR GUTTSOAP '+value.mensaje_resultado,
       '',  value.mensaje_resultado ,     '','',false,25);
      end;
    if pos('QUANTITAT PENDENT',uppercase(miq['error']))>0  then
      begin
      enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com,compres@guttmann.com','ERROR GUTTSOAP '+value.mensaje_resultado,
       '',  value.mensaje_resultado ,     '','',false,25);
      end;

//    entralog(mixml,miq.sql.text,value.mensaje_resultado,value.ok);
    result:=value;
    end;

  except
  on e:exception do
    begin
    value.ok:=false;
    value.mensaje_resultado:=e.message+' / fallo en funcion -producto- al volcar en compres.gdb '+sqltexto;
    mandaerror3(self,e,inimensaje+formatdatetime('dd/mm/yyy hh:nn',now)+ ' '+value.mensaje_resultado,false,1);
//    entralog(miq.sql.text,value.mensaje_resultado,value.ok);
    result:=value;
    end;
  end;
 end;

Result := value;

if basecompras.DefaultTransaction.InTransaction
   then basecompras.DefaultTransaction.CommitRetaining;

 entralog(mixml,sqltexto,'Funcion producto: '+value.mensaje_resultado,basedatos,value.ok);
miq.close;
basecompras.close;
miq.free;
mitrans.free;
basecompras.free;
end;

function TSOAPGUTTSERVICE.proveedor(const value: tproveedor): tproveedor;
var
basecompras:tibdatabase;
mitrans:TIBTransaction;
miq:tibquery;
sqltexto:string;
begin

if (value.c_proveedor='') or (value.c_proveedor='0') then
  begin
  value.ok:=false;
  value.mensaje_resultado:='Datos aportados incompletos';
  entralog(mixml,sqltexto,'Funcion proveedor: '+value.mensaje_resultado,basedatos,value.ok);
  result:=value;
  exit;
  end;



value.mensaje_resultado:='Datos procesados correctamente';
value.ok:=true;

miq:=tibquery.Create(nil);
basecompras:=tibdatabase.create(nil);
if not entrabaseparams(basedatos,basecompras) then
 begin
 mandaerror3(self,errorfalso,inimensaje+'No se puede abrir la base de datos '+basedatos,true,1);
 value.ok:=false;
 value.mensaje_resultado:='Fallo al intentar conectar con gdb de compras';
// entralog.basecompras.DatabaseName('',value.mensaje_resultado,value.ok);
 entralog(mixml,sqltexto,'Funcion proveedor: '+value.mensaje_resultado,basedatos,value.ok);
 result:=value;
 exit;
 end;

mitrans:=TIBTransaction.create(nil);
basecompras.DefaultTransaction:=mitrans;

with miq  do
 begin
  Database:=basecompras;

{  sqltexto:= 'select * from P_PROVEIDORS_SAP ' +
  ' ( ''C_PROVEEDOR'' ,''N_PROVEEDOR'',''INDICADOR'')';

  cambia('C_PROVEEDOR',value.c_proveedor,sqltexto);
  cambia('N_PROVEEDOR', value.n_proveedor ,sqltexto);
  cambia('INDICADOR', value.baja ,sqltexto);
  sql.text:=sqltexto;                       }
  sql.text:='select * from P_PROVEIDORS_SAP ' +
    ' ( :C_PROVEEDOR ,:N_PROVEEDOR,:INDICADOR)';
  parambyname('c_proveedor').asstring:=value.c_proveedor;
  parambyname('n_proveedor').asstring:=value.n_proveedor;
  parambyname('indicador').asstring:=value.baja;

  // solo tiene efectos para el log
  sqltexto:=sql.text;
  cambia(':C_PROVEEDOR',value.c_proveedor,sqltexto);
  cambia(':N_PROVEEDOR', value.n_proveedor ,sqltexto);
  cambia(':INDICADOR', value.baja ,sqltexto);


  try
  open;
  if  miq['error']<>'' then
    begin
    value.ok:=false;
    value.mensaje_resultado:=formatdatetime('dd/mm/yyy hh:nn',now)+': '+miq['error']+' codigo: '+inttostr(miq['codi'])+' / '+' fallo en funcion -proveedor- al volcar en compres.gdb ';

    mandaerror3(self,errorfalso,inimensaje+formatdatetime('dd/mm/yyy hh:nn',now)+ value.mensaje_resultado,false,1);
//    entralog(miq.sql.text,value.mensaje_resultado,value.ok);
    result:=value;
    end;
  except
  on e:exception do
    begin
    value.ok:=false;
    value.mensaje_resultado:=e.message+' / fallo en funcion -proveedor- al volcar en compres.gdb '+sqltexto;
    mandaerror3(self,e,inimensaje+formatdatetime('dd/mm/yyy hh:nn',now)+ ' '+value.mensaje_resultado,false,1);
//    entralog(miq.sql.text,value.mensaje_resultado,value.ok);
    result:=value;
    end;
  end;
 end;

Result := value;

if basecompras.DefaultTransaction.InTransaction
   then basecompras.DefaultTransaction.CommitRetaining;

entralog(mixml,sqltexto,'Funcion proveedor: '+value.mensaje_resultado,basedatos,value.ok);
miq.close;
basecompras.close;
miq.free;
mitrans.free;
basecompras.free;

end;

function TSOAPGUTTSERVICE.recepcion_pedido(const value: tpedido): tpedido;
var
basecompras:tibdatabase;
mitrans:TIBTransaction;
miq:tibquery;
hora,sqltexto:string;
misep:char;
logsql:tstrings;
begin

if (value.cod_provee=null) or (value.cod_provee=0)  or
 (value.cod_material=null) or (value.cod_material=0)  then
  begin
  value.ok:=false;
  value.mensaje_resultado:='Datos aportados incompletos';
  result:=value;
  entralog(mixml,'','Funcion recepcion_pedido: datos aportados incompletos',basedatos,false);
  exit;
  end;



value.mensaje_resultado:='';
value.ok:=true;

miq:=tibquery.Create(nil);
basecompras:=tibdatabase.create(nil);
try
if not entrabaseparams(basedatos,basecompras) then
 begin
 mandaerror3(self,errorfalso,inimensaje+'No se puede abrir la base de datos '+basedatos,true,1);
 value.ok:=false;
 value.mensaje_resultado:='Fallo al intentar conectar con gdb de compras';
// entralog(mixml,value.mensaje_resultado,value.ok,basecompras.DatabaseName);
 basecompras.free;
 entralog(mixml,sqltexto,'Funcion recepcion pedido: Fallo al intentar conectar con gdb de compras',basedatos,false);
 result:=value;
 exit;
 end;
except
 mandaerror3(self,errorfalso,inimensaje+'No se puede abrir la base de datos',true,1);
 value.ok:=false;
 value.mensaje_resultado:='Fallo al intentar conectar con gdb de compras';
 result:=value;
 exit;
end;

mitrans:=TIBTransaction.create(nil);
basecompras.DefaultTransaction:=mitrans;

if int(value.iva)<>value.iva then
  begin
  // incidencia 511 se modfiica para que si entra con decimales haga *100/14
  if int(value.iva*100/14)<>value.iva*100/14 then // si no sale entero en la operacion coge solo parte entera sin operacion
    begin
    mandaerror3(self,errorfalso,inimensaje+'Recibido valor de IVA no entero '+currtostr(value.iva)+' en recepcion pedido',false,2);
     enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com,compres@guttmann.com','ERROR GUTTSOAP Recibido valor de IVA no entero '+currtostr(value.iva)+' en recepcion pedido',
     '','Recibido valor de IVA no entero '+currtostr(value.iva)+' en recepcion de pedido, no se puede aplicar *100/14, no sale entero, se procesa solo parte entera '+currtostr(value.iva) ,     '','',false,25);
    value.mensaje_resultado:='Recibido valor de IVA no entero '+currtostr(value.iva)+#13+#10;
    value.iva:=int(value.iva);
    end
    else
    begin // si la operacion *100/14 sale entero coge este valor
    mandaerror3(self,errorfalso,inimensaje+'Recibido valor de IVA no entero'+currtostr(value.iva)+' en recepcion pedido, se convierte con exito *100/14 '+currtostr(value.iva*100/14),false,2);
     enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com,compres@guttmann.com','Recibido valor de IVA no entero'+currtostr(value.iva)+' en recepcion pedido',
     '',    'Recibido valor de IVA no entero '+currtostr(value.iva)+' en recepcion de pedido, se convierte con exito *100/14'+currtostr(value.iva*100/14),'','',false,25);
    value.mensaje_resultado:='Recibido valor de IVA no entero, se convierte *100/14 '+currtostr(value.iva)+#13+#10;
    value.iva:=value.iva*100/14;
    end;

  end ;


  {
if int(value.descuento)<>value.descuento then
  begin
  mandaerror3(self,errorfalso,'Recibido valor de descuento no entero '+currtostr(value.descuento)+' en recepcion de pedido ',false,2);
  enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com','Recibido valor de descuento no entero '+currtostr(value.descuento)+' en recepcion de pedido ',
  '', 'Recibido valor de descuento no entero '+currtostr(value.descuento)+' en recepcion de pedido ',     '','',false,25);
  value.mensaje_resultado:=value.mensaje_resultado+'Recibido valor de descuento no entero '+currtostr(value.descuento)+#13+#10;
  value.descuento:=int(value.descuento);
  end;

if int(value.recargo)<>value.recargo then
  begin
  mandaerror3(self,errorfalso,'Recibido valor de recargo no entero '+currtostr(value.recargo)+' en recepcion de pedido ',false,2);
  enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com','Recibido valor de recargo no entero '+currtostr(value.recargo)+' en recepcion de pedido ',
  '', 'Recibido valor de recargo no entero '+currtostr(value.recargo)+' en recepcion de pedido ',     '','',false,25);
  value.mensaje_resultado:=value.mensaje_resultado+ 'Recibido valor de recargo no entero '+currtostr(value.recargo)+#13+#10;
  value.recargo:=int(value.recargo);
  end;
}


hora:=' '+copy(value.hora_registro,1,2)+':'+copy(value.hora_registro,3,2)+':'+copy(value.hora_registro,5,2);

with miq  do
 begin
  Database:=basecompras;

  sqltexto:='select * from  P_MOVIMENTS_SAP_RECEPCIO ' +
  ' ( :QUE_ES ,      '+
  '  ''DATA_ALBARA'' , '+
  '  ''DATA_DOCUMENT'', '+
  '  :SAP_PROVEIDOR ,'+
  '  :SAP_PRODUCTE ,'+
  '  :QUANTITAT ,'+
  '  :PREU,      '+
  '  :IVA,       '+
  '  '':C_REGISTRE1'' ,'+
  ' '':C_REGISTREANULA'') ';

  misep:=DecimalSeparator;
  DecimalSeparator:='.';
  cambia(':QUE_ES',inttostr(value.tipo_mov),sqltexto);
  cambia('DATA_ALBARA', value.fecha_albaran+hora ,sqltexto);
  cambia('DATA_DOCUMENT',value.fecha_registro+hora ,sqltexto);
  cambia(':SAP_PROVEIDOR',inttostr(value.cod_provee),sqltexto);
  cambia(':SAP_PRODUCTE',inttostr(value.cod_material),sqltexto);
  cambia(':QUANTITAT',inttostr(value.cantidad),sqltexto);
  cambia(':PREU',floatToStr(value.precioneto-(value.descuento/100*value.precioneto)
     +(value.recargo/100*value.precioneto)+value.raee),sqltexto);
  cambia(':IVA',CurrToStr(value.iva),sqltexto);
  cambia(':C_REGISTRE1',value.docmaterial+value.posdocmaterial,sqltexto);
  if not ((value.docorigen+value.posdocorigen)='') then
    cambia(':C_REGISTREANULA',value.docorigen+value.posdocorigen,sqltexto)
    else     cambia(':C_REGISTREANULA','NULL',sqltexto);

  sql.text:=sqltexto;

  try
  open;
  if  miq['error']<>'' then
    begin
    value.ok:=false;
    value.mensaje_resultado:=value.mensaje_resultado+#13+#10+formatdatetime('dd/mm/yyy hh:nn',now)+': '+miq['error']+' codigo: '+miq['codi']+' / '+' fallo en funcion -recepcion_pedido- al volcar en compres.gdb ';
    if pos('PERÍODE ACTIU',miq['error'])>0  then
      begin
      enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com,compres@guttmann.com','ERROR GUTTSOAP '+value.mensaje_resultado,
       '',  value.mensaje_resultado ,     '','',false,25);
      end;

    mandaerror3(self,errorfalso,inimensaje+value.mensaje_resultado,false,1);
    result:=value;
    end;

  except
  on e:exception do
    begin
    value.ok:=false;
    value.mensaje_resultado:=value.mensaje_resultado+#13+#10+e.message+' /  fallo en funcion -recepcion_pedido- al volcar en compres.gdb '+miq.sql.text;
    mandaerror3(self,e,inimensaje+formatdatetime('dd/mm/yyy hh:nn',now)+ ' '+value.mensaje_resultado,false,1);
    result:=value;
    end;
  end;

 end;

if basecompras.DefaultTransaction.InTransaction
   then basecompras.DefaultTransaction.CommitRetaining;

if value.ok then  value.mensaje_resultado:='Datos procesados correctamente';

logsql:=tstringlist.create;
logsql.add('valores de precio:');
logsql.add('');
logsql.add('');
logsql.add('Precio neto:'+FloatToStr(value.precioneto));
logsql.add('IVA: '+currtostr(value.iva));
logsql.add('Descuento: '+currtostr(value.descuento));
logsql.add('Recargo: '+currtostr(value.recargo));
logsql.add('RAEE: '+CurrtoStr(value.raee));
logsql.add('');
logsql.add('');
logsql.add(miq.sql.text);

entralog(mixml,miq.sql.text,'Funcion recepcion_pedido: '+value.mensaje_resultado,basedatos,value.ok);
logsql.free;

Result := value;

DecimalSeparator:=misep;
miq.close;
basecompras.close;
miq.free;
mitrans.free;
basecompras.free;

end;



function TSOAPGUTTSERVICE.test: boolean;
var
baselog:tibdatabase;
mitrans:TIBTransaction;

begin

result:=true;

//prueba las conexion a las bases de datos
baselog:=tibdatabase.create(nil);
mitrans:=TIBTransaction.create(nil);
baselog.DefaultTransaction:=mitrans;

if not entrabaseparams('ANALITLOG',baselog) then
  begin
  mandaerror3(nil,errorfalso,inimensaje+'Fallo al intentar conectar con analitlog',false,2);
  result:=false;
  baselog.free;
  mitrans.free;
  exit;
  end;
baselog.open;
if not baselog.connected then
 begin
  mandaerror3(nil,errorfalso,inimensaje+'Fallo al intentar conectar con analitlog',false,2);
  result:=false;
  baselog.free;
  mitrans.free;
  exit;
 end;
baselog.close;

if not entrabaseparams(basedatos,baselog) then
   begin
   mandaerror3(nil,errorfalso,inimensaje+'Fallo al intentar conectar con  '+basedatos,false,2);
   result:=false;
   baselog.free;
   mitrans.free;
   exit;
   end;

baselog.open;

if not baselog.connected then
  begin
   mandaerror3(nil,errorfalso,inimensaje+'Fallo al intentar conectar con  '+basedatos,false,2);
   result:=false;
   baselog.free;
   mitrans.free;
   exit;
  end;

baselog.close;
baselog.free;
mitrans.free;
end;



function TSOAPGUTTSERVICE.envia_mov_armario(const value:tmov_armario) : tmov_armario; stdcall;
var
baseguttmann:tibdatabase;
mitrans:TIBTransaction;
miq:tibquery;
sqltexto:string;
midate:tdatetime;
{$IFDEF WEBDEBUG}
  f:textfile;
  fichero,linea:string;
{$ENDIF}
begin

{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' entrada en funcion envia_mov_armario  '+
'id_armari:'+inttostr(value.id_armari)+', EAN_Producto:'+value.EAN_c_producto+', T_MOV:'+value.T_MOV+
', Quantitat:'+inttostr(value.quantitat)+', Data_mov:'+value.data_mov;
fichero:=extractfilepath(application.exename)+'debugitems.log';

fichero:=extractfilepath(application.exename)+'debugitems.log';

assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}


if (value.id_armari=0) or (value.EAN_c_producto='') or (trim(value.T_MOV)='') or (value.quantitat=0) or (value.data_mov='') then
  begin
  value.ok:=false;
  value.mensaje_resultado:='Datos aportados incompletos';
  entralog(mixml,miq.sql.text,'Funcion envia_mov_armario: Datos aportados incompletos',basedatosguttmann,false);
  result:=value;
  exit;
  end;

try
  midate:=strtodatetime(value.data_mov);

except
  value.ok:=false;
  value.mensaje_resultado:='ERROR: Data_mov incorrecta';
  entralog(mixml,miq.sql.text,'Funcion envia_mov_armario: ERROR: Data_mov incorrecta',basedatosguttmann,false);
  result:=value;
  exit;

end;

//value.mensaje_resultado:='Datos procesados correctamente';
//value.ok:=true;

{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' funcion envia_mov_armario despues de comprobar datos  ';
fichero:=extractfilepath(application.exename)+'debugitems.log';
assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}



baseguttmann:=tibdatabase.create(nil);
if not entrabaseparams(basedatosguttmann,baseguttmann) then
 begin
 mandaerror3(self,errorfalso,inimensaje+'No se puede abrir la base de datos '+basedatos,true,1);
{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' no se puede abrir la base de datos '+basedatos;
fichero:=extractfilepath(application.exename)+'debugitems.log';

fichero:=extractfilepath(application.exename)+'debugitems.log';

assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}

 value.ok:=false;
 value.mensaje_resultado:='Fallo al intentar conectar con gdb de guttmann';
 entralog(mixml,'open','Funcion envia_mov_armario: '+value.mensaje_resultado,basedatosguttmann,value.ok);
 result:=value;
 baseguttmann.Free;
 exit;
 end;


{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' despues de abrir base de datos ';
fichero:=extractfilepath(application.exename)+'debugitems.log';

fichero:=extractfilepath(application.exename)+'debugitems.log';

assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}

miq:=tibquery.Create(nil);
mitrans:=TIBTransaction.create(nil);
baseguttmann.DefaultTransaction:=mitrans;

with miq  do
 begin
  Database:=baseguttmann;

{  sqltexto:= 'select * from P_PROVEIDORS_SAP ' +
  ' ( ''C_PROVEEDOR'' ,''N_PROVEEDOR'',''INDICADOR'')';

  cambia('C_PROVEEDOR',value.c_proveedor,sqltexto);
  cambia('N_PROVEEDOR', value.n_proveedor ,sqltexto);
  cambia('INDICADOR', value.baja ,sqltexto);
  sql.text:=sqltexto;                       }

  // comprueba si existe c_historia incidencia 18379
  if trim(value.c_historia)<>'' then
    begin
    sql.text:='select num_hist from filiacio where num_hist='+value.c_historia;
    open;
    if eof and bof then// SI NO EXISTE
      begin
      value.mensaje_resultado:='c_historia no existe';
      value.c_historia:='';
      end;
    close;
    end;
  sql.text:='insert into mov_armarisuh (id,ean,t_mov,quantitat,datamov,id_armari,c_historia,c_usuari) ' +
    ' values (Gen_ID(G_MOVARMARISUH, 1), :ean ,:tmov,:quantitat,:datamov,:id_armari,:c_historia,:c_usuari)';

  if trim(value.c_historia)='' then
     begin
     sqltexto:=SQL.text;
     cambia(',:c_historia',' ',sqltexto);
     cambia(',c_historia',' ',sqltexto);
     sql.text:=sqltexto;
     end
    else  parambyname('c_historia').asinteger:=strtoint(value.c_historia);
  if trim(value.c_usuari)='' then
       begin
       sqltexto:=SQL.text;
       cambia(',:c_usuari',' ',sqltexto);
       cambia(',c_usuari',' ',sqltexto);
       sql.text:=sqltexto;
       end
     else
     // se convierte codificacion a la nuestra
     parambyname('c_usuari').AsString:=
     chr(strtoint( copy(value.c_usuari,1,2) ))+
     chr(strtoint( copy(value.c_usuari,4,2) ))+
     chr(strtoint( copy(value.c_usuari,7,2) ));

  parambyname('ean').asstring:=value.EAN_c_producto;

  if value.T_MOV='E' then
    parambyname('tmov').asinteger:=1
    ELSE     parambyname('tmov').asinteger:=-1;
  parambyname('quantitat').asinteger:=value.quantitat;
  parambyname('datamov').asdatetime:=StrToDatetime(value.data_mov);
  parambyname('id_armari').asinteger:=value.id_armari;


  try
  execsql;
  value.ok:=true;
  value.mensaje_resultado:=value.mensaje_resultado+' '+'Datos procesados correctamente';
  except
  on e:exception do
    begin
    value.ok:=false;
    value.mensaje_resultado:=value.mensaje_resultado+' '+e.message+' / fallo en funcion envia_mov_armario '+sqltexto;
    mandaerror3(self,e,inimensaje+formatdatetime('dd/mm/yyy hh:nn',now)+ ' '+value.mensaje_resultado,false,2);
    entralog(mixml,miq.sql.text,value.mensaje_resultado,basedatosguttmann,value.ok);
    result:=value;
    end;
  end;
 end;

Result := value;

if baseguttmann.DefaultTransaction.InTransaction
   then baseguttmann.DefaultTransaction.CommitRetaining;

entralog(mixml,sqltexto,'Funcion envia_mov_armario: '+value.mensaje_resultado,basedatosguttmann,value.ok);
miq.close;
baseguttmann.close;
miq.free;
mitrans.free;
baseguttmann.free;

end;


function TSOAPGUTTSERVICE.testmail: boolean;
begin
result:=true;
{enviaemail('zserver','avisos@guttmann.com','informatica@guttmann.com','Email test soapgutt',
     '', 'email test soapgutt' ,'','',false,25);}
try
mandaerrorporemail(errorfalso,inimensaje+' test email',false,'zserver','avisos@guttmann.com','informatica@guttmann.com','','');
except
result:=false;
end;
end;



function TSOAPGUTTSERVICE.comunicacion_consumos(const value:tconsumos): trespuesta_consumos; stdcall;
var
baseguttmann:tibdatabase;
mitrans:TIBTransaction;
miq:tibquery;
sqltexto:string;
midate:tdatetime;
FECHASTR:string;

{$IFDEF WEBDEBUG}
  f:textfile;
  fichero,linea:string;
{$ENDIF}
begin

{ segun documentacion 16/02/2017 Integración Pick To Light_v.1.5.pdf


Mensaje
ID TIPO OBL. DESCRIPCIÓN
COD_APP_ORIGEN CHAR SI Identificador de la aplicación emisora (PTL)
COD_APP_DESTINO CHAR SI Identificador de la aplicación receptora (ERP)
COD_MENSAJE CHAR SI MS5_CCN
ID_MENSAJE CHAR SI Identificador del mensaje
FECHA_OPERACION CHAR SI AAAAMMDDhhmmssnnn
TIPO_OPERACIÓN CHAR SI SP=Consumo de artículos por OM (Paciente).
SA=Consumo de artículos para la reposición a
los armarios de planta
RC=Retirada de artículos caducados
RP=Retirada de artículos a devolver al
proveedor
DP=Devolución de artículos no consumidos en
planta (paciente)
DA=Devolución de artículos de los armarios de
planta
COD_CENTRO_COSTE CHAR NO Código de centro de coste (*)
DESC_CENTRO_COSTE CHAR NO Descripción de centro de coste (*)
NHC CHAR NO Número historia clínica paciente (**)
ORDEN_MEDICA CHAR NO Número de orden de prescripción médica (***)
CODIGO_PEDIDO CHAR NO Número de pedido de devolución de material a
proveedor (****)
Pág. 12 de 14
COD_PROD CHAR SI Código de producto. Codificación EAN
CANTIDAD INT SI Cantidad consumida o retirada
(*) Este dato se informará obligatoriamente en los casos en que el tipo de operación sea SA y DA.
(**) Este dato se informará obligatoriamente en los casos en que el tipo de operación sea SP y DP.
(***) Este dato se informará obligatoriamente en los casos en que el tipo de operación sea SP.
(****) Este dato se informará obligatoriamente en los casos en que el tipo de operación sea RP.

Respuesta
ID TIPO OBL. DESCRIPCIÓN
COD_APP_ORIGEN CHAR SI Identificador de la aplicación emisora (ERP)
COD_APP_DESTINO CHAR SI Identificador de la aplicación receptora (PTL)
COD_MENSAJE CHAR SI MS5_CCN
ID_MENSAJE CHAR SI Identificador del mensaje
ID_MENSAJE_ORIG CHAR SI Identificador del mensaje al que se responde
FECHA_OPERACION CHAR SI AAAAMMDDhhmmssnnn
COD_ACK BOOLEAN SI true=aceptación del mensaje / false=error
DESC_ACK CHAR NO Descripción
  }



result:=trespuesta_consumos.Create;
result.cod_ack:=false;
{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' entrada en funcion comunicacion_consumos  '+
'Cod_centro_Coste:'+value.cod_centro_coste+', Des_centro_coste:'+value.desc_centro_coste+', NHC:'+value.nhc+
', Quantitat:'+inttostr(value.cantidad)+', Data_mov:'+value.fecha_operacion;
fichero:=extractfilepath(application.exename)+'debugitems.log';
assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}

result.cod_app_origen:=value.cod_app_destino;
result.cod_app_destino:=value.cod_app_origen;
result.cod_mensaje :='MS5_CCN';
result.id_mensaje:=formatdatetime('yyyymmddnnss',now);
result.id_mensaje_orig:=value.id_mensaje;
result.fecha_operacion:=value.fecha_operacion;

// revisa que tenga todos los valores obligatorios
if (trim(value.cod_app_origen)='') or (trim(value.cod_app_destino)='')
    or (trim(value.cod_mensaje)='') or (trim(value.id_mensaje)='')
    or (trim(value.fecha_operacion)='') or (trim(value.tipo_operacion)='')
    or (trim(value.cod_prod)='')   then
  begin
  Result.cod_ack:=false;
  entralog(mixml,sqltexto,'Funcion comunicacion_consumos:  Faltan datos',basedatosguttmann,false);
  result.desc_ack:='Falten dades';
  exit;
  end;

//yyyymmddhhnnss

fechastr:=copy(value.fecha_operacion,7,2)+'/'+copy(value.fecha_operacion,5,2)+'/'+
copy(value.fecha_operacion,1,4)+' '+copy(value.fecha_operacion,9,2)+':'+
copy(value.fecha_operacion,11,2)+':'+copy(value.fecha_operacion,13,2);


// comprueba que la fecha pasada este bien
try
  midate:=strtodatetime(fechastr);


except
{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' fecha de la operacion '+value.fecha_operacion+' deberia tener formato AAAAMMDDhhmmssnn,  fecha incorrecta '+fechastr;
fichero:=extractfilepath(application.exename)+'debugitems.log';
assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}
  result.cod_ack:=false;
  result.desc_ack:='Fecha_operacion incorrecta';
  entralog(mixml,sqltexto,'Funcion comunicacion_consumos:  Fecha_operacion incorrecta',basedatosguttmann,false);
  exit;
end;



{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' funcion comunicacion_consumos despues de comprobar datos ok ';
fichero:=extractfilepath(application.exename)+'debugitems.log';
assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}

baseguttmann:=tibdatabase.create(nil);
if not entrabaseparams(basedatosguttmann,baseguttmann) then
 begin
 mandaerror3(self,errorfalso,inimensaje+'No se puede abrir la base de datos '+basedatos,true,1);
 {$IFDEF WEBDEBUG}
  linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' no se puede abrir la base de datos '+basedatos;
  fichero:=extractfilepath(application.exename)+'debugitems.log';
  fichero:=extractfilepath(application.exename)+'debugitems.log';
  assignfile(F,fichero);
  if not fileexists(fichero) then rewrite(f);
      system.append(f);
   writeln(f,linea);
   closefile(f);
 {$ENDIF}
 result.cod_ack:=false;
 result.desc_ack:='Error interno, Fallo al intentar conectar con gdb de guttmann';
 entralog(mixml,'open','Fallo al intentar conectar con gdb de guttmann',basedatosguttmann,false);
 baseguttmann.free;
 exit;
 end;


{$IFDEF WEBDEBUG}
linea:=formatdatetime('dd/mm/yyyy hh:nn:ss', now)+' despues de abrir base de datos ';
fichero:=extractfilepath(application.exename)+'debugitems.log';

fichero:=extractfilepath(application.exename)+'debugitems.log';

assignfile(F,fichero);
if not fileexists(fichero) then rewrite(f);
    system.append(f);
 writeln(f,linea);
 closefile(f);
{$ENDIF}

// pongo siempre ok glpi 18849 comentado la accion a base de datos
result.cod_ack:=true;
result.desc_ack:='OK';
// llamada funcion P_PRODUCTES_PTL_CCN
{
miq:=tibquery.Create(nil);
mitrans:=TIBTransaction.create(nil);
baseguttmann.DefaultTransaction:=mitrans;
try
with miq  do
 begin
  Database:=baseguttmann; desactivo la query 06/10/2021 glpi 18887
 sql.text:='SELECT  * FROM P_PRODUCTES_PTL_CCN' +
            '(:dataop,:tipus,:centre,:ncentre,:hist,:c_om,:ean,:quan     )';
  parambyname('dataop').asdatetime:=midate;
  parambyname('tipus').asstring:=value.tipo_operacion;
  parambyname('centre').asstring:=value.cod_centro_coste;
  parambyname('ncentre').AsString:=value.desc_centro_coste;
  parambyname('hist').AsString:=value.nhc;
  parambyname('c_om').asstring:=value.orden_medica;
  parambyname('ean').asstring:=value.cod_prod;
  parambyname('quan').asinteger:=value.cantidad;





//  open;
 if Active then
   begin
     result.cod_ack:=miq['ok']='S';
     result.desc_ack:=miq['error'];
   end;

 end;

except
on e:exception do
 begin
 result.cod_ack:=false;
 result.desc_ack:='try: '+e.Message;
 end;
end;  // try


entralog(mixml,sqltexto,'Funcion comunicacion_consumos: '+ result.desc_ack,basedatosguttmann,result.cod_ack);
miq.close;
baseguttmann.close;
miq.free;
mitrans.free; }
baseguttmann.free;

end;




initialization
  { Invokable classes must be registered }
  InvRegistry.RegisterInvokableClass(TSOAPGUTTSERVICE);

end.
