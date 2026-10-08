unit utilsSoapFacturacio;

interface

uses forms,db,DBTables,dialogs,  Rio, SOAPHTTPClient,WSDLNode ,variants, classes,
      InvokeRegistry, sysutils,xmlintf,xmldoc;


type

{TconsultaMorossos = Class(tobject)
  public
    NHC:         WideString
    DNI_GARANTE: widestring;
  end;              }
{
Trespostamorosos = Class(toject)
  public
  morositat: widestring;
  end;           }

Tconsultamorosos = class
  private
  frio:THTTPRIO;
  FNHC: string;
  FDNI_GARANTE: string;
  FMOROSITAT:string;
  fok:boolean;

  procedure Rio_BeforeExecute_morossosDES(const MethodName: string;var SOAPRequest: InvString);
  procedure Rio_BeforeExecute_morossosPRE(const MethodName: string;var SOAPRequest: InvString);
  procedure Rio_BeforeExecute_morossosPRO(const MethodName: string;var SOAPRequest: InvString);
  procedure AfterExecutemorosos_DES(const MethodName: String;  SOAPresponse: Tstream);
  function cambiamorosos(SOAPREQUEST:invstring;modo:string):invstring;


  public

  constructor createDES;
  constructor createPRE;
  constructor createPRO;
  destructor destroy; override;
  function enviadades(NHC,DNI_GARANTE:string):string;

end;



function miramoroso(NHC,DNI_GARANTE:widestring;modo:string):string;
//-function ws_sap_ortesis(factura:string;proveedor:string;modo:string;log:TStrings=nil):string;





implementation

uses utili16, ws_morosos {-, ws_ortesis};





procedure Tconsultamorosos.Rio_BeforeExecute_morossosDES(const MethodName: string;var SOAPRequest: InvString);
//var
//mistring:tstringlist;
begin

SOAPREQUEST:=cambiamorosos(soaprequest,'DES');
{
mistring:=tstringlist.create;
mistring.Text:=SOAPRequest;
TRY mistring.SaveToFile('c:\temporal\string_morossos_DES_antes.xml'); EXCEPT END;
mistring.Free;}
end;


procedure Tconsultamorosos.Rio_BeforeExecute_morossosPRE(
  const MethodName: string; var SOAPRequest: InvString);
//var
//mistring:tstringlist;
begin

SOAPREQUEST:=cambiamorosos(soaprequest,'PRE');
{
mistring:=tstringlist.create;
mistring.Text:=SOAPRequest;
TRY mistring.SaveToFile('c:\temporal\string_morossos_PRE_antes.xml'); EXCEPT END;
mistring.Free;}
end;


procedure Tconsultamorosos.Rio_BeforeExecute_morossosPRO(const MethodName: string;var SOAPRequest: InvString);
//var

//mistring:tstringlist;
begin

SOAPREQUEST:=cambiamorosos(soaprequest,'PRO');
{
mistring:=tstringlist.create;
mistring.Text:=SOAPRequest;
TRY mistring.SaveToFile('c:\temporal\string_morossos_PRO_antes.xml'); EXCEPT END;
mistring.Free;}
end;


procedure tconsultamorosos.AfterExecutemorosos_DES(const MethodName: String;  SOAPresponse: Tstream);
var
ldocument:ixmldocument;
LNodeElement, LNodesub1,lnodesub2: iXMLNode;
i,i2:integer;
//tmp: TStringList;
begin

//tmp := TStringList.Create();
LDocument := TXMLDocument.Create(application);


try
SOAPresponse.Position := 0;
ldocument.LoadFromStream(soapresponse);
ldocument.Active:=true;
lnodeelement:=ldocument.ChildNodes.FindNode('Envelope');
lnodesub1:=lnodeelement.ChildNodes.findnode('Body');


fok:=false;

lnodeelement:=lnodesub1.ChildNodes.last; // publicarImatgeDigitalResponse

if lnodeelement.LocalName='RespostaMorosos' then
    begin  //A si es fallo de certificado
//    lnodesub1:=lnodeelement.ChildNodes.last;
     for i := 0 to lnodeelement.childnodes.count - 1 do
       begin
       lnodesub1:=lnodeelement.ChildNodes[i];
       if lnodesub1.nodename='Morositat' then
          fmorositat:=lnodesub1.nodevalue  ;
          fok:=true;
        end;

    end;   //A si es fallo de datos


SOAPresponse.Position := 0;
//tmp.LoadFromStream(SOAPresponse);
//TRY tmp.SaveToFile('c:\temporal\string_morossos_DES_RESPOSTA.xml'); EXCEPT END;
finally
 // FreeAndNil(tmp);

end;



end;


function tconsultamorosos.cambiamorosos(SOAPREQUEST:invstring;modo:string):invstring;
var
  temp:string;
//  log: TStrings;
  planti:tstringlist;
  des:boolean;
begin

planti:=tstringlist.create;
//planti.LoadFromFile('G:\BIN\Admissions\Facturació SAP\plantilla_os_ws_morosos.txt');
planti.LoadFromFile('\\gutfs2\dadesg\BIN\Admissions\Facturació SAP\plantilla_os_ws_morosos.txt');
temp:=planti.Text;
cambia('**N_H_C**',FNHC,temp);
cambia('**DNI**',FDNI_GARANTE,temp);
SOAPRequest:=temp;
{log := TStringList.Create;
log.clear;
log.text:=SOAPRequest;
TRY log.saveTofile('C:\temporal\consultamorosos_log2.xml'); EXCEPT END;
log.free;}
result:=soaprequest;

planti.free;
end;




constructor Tconsultamorosos.createDES;
begin
fRio:=THTTPRIO.Create(nil);
fRio.OnBeforeExecute := Self.Rio_BeforeExecute_morossosDES;
frio.OnAfterExecute:=self.AfterExecutemorosos_DES;
fRio.HTTPWebNode.UserName:='WS_CONSUMER';
fRio.HTTPWebNode.Password:='GUTbcAdm11';
fRio.Converter.Options:=[];
//frio.URL:='http://ANTONIO-1002:8088/mockos_ws_morosos';
//frio.Service:='os_ws_morosos';
frio.URL:='http://gutsapw25-pod.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=SIA_PID&receiverParty=&receiverService=&interface=os_ws_morosos&interfaceNamespace=http://sia.guttmann.com';
frio.Service:='SIA_PID_os_ws_morosos';
//frio.Port:='8080';
end;


constructor Tconsultamorosos.createPRE;
begin
fRio:=THTTPRIO.Create(nil);
fRio.OnBeforeExecute := Self.Rio_BeforeExecute_morossosPRE;
frio.OnAfterExecute:=self.AfterExecutemorosos_DES;
fRio.HTTPWebNode.UserName:='WS_CONSUMER';
fRio.HTTPWebNode.Password:='GUTbcAdm11';
fRio.Converter.Options:=[];
frio.URL:='http://gutsapw25-pod.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=SIA_PID&receiverParty=&receiverService=&interface=os_ws_morosos&interfaceNamespace=http://sia.guttmann.com';
//frio.URL:='http://sap-pi-pre.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=SIA_PID&receiverParty=&receiverService=&interface=os_ws_morosos&interfaceNamespace=http://sia.guttmann.com';
frio.Service:='SIA_PID_os_ws_morosos';

end;

constructor Tconsultamorosos.createPRO;
begin
fRio:=THTTPRIO.Create(nil);
fRio.OnBeforeExecute := Self.Rio_BeforeExecute_morossosPRO;
frio.OnAfterExecute:=self.AfterExecutemorosos_DES;
fRio.HTTPWebNode.UserName:='WS_CONSUMER';
fRio.HTTPWebNode.Password:='GUTbcAdm11';
fRio.Converter.Options:=[];
//frio.URL:='http://sap-pi-pro.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=SIA_PIP&receiverParty=&receiverService=&interface=os_ws_morosos&interfaceNamespace=http://sia.guttmann.com';
frio.URL:='http://gutsapw25-pop.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=SIA_PIP&receiverParty=&receiverService=&interface=os_ws_morosos&interfaceNamespace=http://sia.guttmann.com';
frio.Service:='SIA_PIP_os_ws_morosos';

end;



destructor Tconsultamorosos.destroy;
begin
    inherited Destroy;
end;


function Tconsultamorosos.enviadades(NHC,DNI_GARANTE:string):string;
var
datos:ConsultaMorosos2;
resposta:RespostaMorosos;


begin

FNHC:=NHC;
FDNI_GARANTE:=DNI_GARANTE;

datos:=ConsultaMorosos2.Create;
datos.NHC:=nhc;
datos.DNI_GARANTE:=DNI_GARANTE;



try
resposta:=Getos_ws_morosos(false,frio.url,frio).os_ws_morosos(datos);

if fok then result:=fmorositat else result:='';

except
on ei:exception do  showmessage(' fallo al enviar ejecutar os_ws_morosos en servidor '+ ei.Message);
end;

datos.free;

end;





function miramoroso(NHC,DNI_GARANTE:widestring;modo:string):string;
var
mi:tconsultamorosos;
begin
result:='';
if modo='DES' then  mi:=Tconsultamorosos.createDES
else if modo='PRE' then mi:=Tconsultamorosos.createPRE
else mi:=Tconsultamorosos.createPRO;
RESULT:= mi.enviadades(NHC,DNI_GARANTE);

end;



{-
function ws_sap_ortesis(factura:string;proveedor:string;modo:string;log:TStrings=nil):string;
var
  ws : TWSOrtesis;
begin
  ws := TWSOrtesis.Create();
  ws.factura := factura;
  ws.proveedor := proveedor;
  ws.log := log;
  if (modo='DES') then result :=  ws.run_des();
  if (modo='PRE') then result :=  ws.run_test();
  if (modo='PRO') then result :=  ws.run_pro();
end;
-}

end.
