unit OrdreCompra_SAP;


interface


uses Rio, InvokeRegistry,SOAPHTTPClient, WSDLNode ,variants, classes, dialogs,
     PurchaseOrderDES, SysUtils, Forms, StdCtrls;


type


  TOrdreCompraLinConditionsSap = class(TObject)
  public
    Code: WideString;
    Percent: WideString;
  end;


  TOrdreCompraLinSap = class(TObject)
  private
     fConditions: tlist;
  public
    Center: WideString;
    MaterialNumber: WideString;
    PositionNumber: Widestring;
    Quantity: Double;
    Price: Double;
    TaxIndicator: WideString;
    Multiplier: WideString;
    VendorMaterialCode: WideString;
    constructor Create;
    destructor Destroy; override;
    function AddConditions(): TOrdreCompraLinConditionsSap;
  end;


  TOdreCompraSap = class
  private
     fRio: THTTPRIO;
     fLineas: TList;

    procedure Rio_BeforeExecuteEventDES(const MethodName: string; var SOAPRequest: InvString);
    procedure Rio_BeforeExecuteEventPRE(const MethodName: string; var SOAPRequest: InvString);
    procedure Rio_BeforeExecuteEventPRO(const MethodName: string; var SOAPRequest: InvString);
    function  cambiarequest(SOAPREQUEST:invstring;modo:string):invstring;
  public
    OrderType: Widestring;
    SupplierCode: Widestring;
    DocumentDate: TDateTime;
    Partnership: Widestring;
    PurchasingOrg: Widestring;
    PurchasingGroup: Widestring;
    //New fields
    HeaderText: Widestring;
    Reference: Widestring;
    OurReference: Widestring;

    constructor CreateDES;
    constructor CreatePRE;
    constructor CreatePRO;
    destructor Destroy; Override;
    function AddLinea: TOrdreCompraLinSap;
    function EnviaDades: String;
   
  end;

implementation

uses utili16;

{ TOrdreCompraLinSap }


constructor TOrdreCompraLinSap.Create;
begin
    fConditions := TList.Create;
end;

destructor TOrdreCompraLinSap.Destroy;
var
  i: Integer;
begin
    for I := 0 to fConditions.Count - 1 do TOrdreCompraLinConditionsSap(fConditions.Items[i]).Free;
    fConditions.Free;
    inherited Destroy;
end;

function TOrdreCompraLinSap.AddConditions: TOrdreCompraLinConditionsSap;
begin
    Result := TOrdreCompraLinConditionsSap.Create;
    fConditions.Add(result);
end;


{ TOdreCompraSap }


constructor TOdreCompraSap.CreateDES;
begin
fRio:=THTTPRIO.Create(nil);
fLineas := TList.Create;
Partnership := 'FIG';   //Sociedad  (ING fins el 31.12.2014, FIG a partir de l'1.1.2015)
PurchasingOrg:='GUTT';
PurchasingGroup:='GEN';
fRio.OnBeforeExecute := Self.Rio_BeforeExecuteEventDES;
fRio.HTTPWebNode.UserName:='WS_CONSUMER';
fRio.HTTPWebNode.Password:='GUTbcAdm11';
fRio.Converter.Options:=[];
//fRio.URL:='http://sap-pi-pre.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=BS_GUTT&receiverParty=&receiverService=&interface=PurchaseOrderERPRequest_In&interfaceNamespace=http%3A%2F%2Fguttmann.com%2FPruebas_MM';
fRio.URL:='http://gutsapw25-pod.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=BS_GUTT_TEST&receiverParty=&receiverService=&interface=PurchaseOrderERPRequest_In&interfaceNamespace=http://guttmann.com/MM';
fRio.Service:='BS_GUTT_PurchaseOrderERPRequest_In_x_x';
end;
constructor TOdreCompraSap.CreatePRE;
begin
fRio:=THTTPRIO.Create(nil);
fLineas := TList.Create;
Partnership := 'FIG';   //Sociedad  (ING fins el 31.12.2014, FIG a partir de l'1.1.2015)
PurchasingOrg:='GUTT';
PurchasingGroup:='GEN';
fRio.OnBeforeExecute := Self.Rio_BeforeExecuteEventPRE;
fRio.HTTPWebNode.UserName:='WS_CONSUMER';
fRio.HTTPWebNode.Password:='GUTbcAdm11';
fRio.Converter.Options:=[];
//fRio.url  := 'http://sap-pi-pre.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=BS_GUTT_TEST&receiverParty=&receiverService=&interface=PurchaseOrderERPRequest_In&interfaceNamespace=http%3A%2F%2Fguttmann.com%2FMM';
fRio.URL:='http://gutsapw25-pod.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=BS_GUTT_TEST&receiverParty=&receiverService=&interface=PurchaseOrderERPRequest_In&interfaceNamespace=http://guttmann.com/MM';
frio.service  := 'BS_GUTT_TEST_PurchaseOrderERPRequest_In_x_x';
end;
constructor TOdreCompraSap.CreatePRO;
begin
fRio:=THTTPRIO.Create(nil);
fLineas := TList.Create;
Partnership := 'FIG';   //Sociedad  (ING fins el 31.12.2014, FIG a partir de l'1.1.2015)
PurchasingOrg:='GUTT';
PurchasingGroup:='GEN';
fRio.OnBeforeExecute := Self.Rio_BeforeExecuteEventPRO;
fRio.HTTPWebNode.UserName:='WS_CONSUMER';
fRio.HTTPWebNode.Password:='GUTbcAdm11';
fRio.Converter.Options:=[];
//fRio.URL:= 'http://sap-pi-pro.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=BS_GUTT_PRO&receiverParty=&receiverService=&interface=PurchaseOrderERPRequest_In&interfaceNamespace=http%3A%2F%2Fguttmann.com%2FMM';
fRio.URL:= 'http://gutsapw25-pop.guttmann.com:50000/XISOAPAdapter/MessageServlet?senderParty=&senderService=BS_GUTT_PRO&receiverParty=&receiverService=&interface=PurchaseOrderERPRequest_In&interfaceNamespace=http://guttmann.com/MM';
fRio.Service:='BS_GUTT_PRO_PurchaseOrderERPRequest_In_x_x';
end;

destructor TOdreCompraSap.Destroy;
var
  i: Integer;
begin
    //fRio.Free; no posar free, sino peta
    for i := 0 to fLineas.Count - 1 do TOrdreCompraLinSap(fLineas.Items[i]).Free;
    fLineas.Free;
    inherited Destroy;
end;


function TOdreCompraSap.AddLinea: TOrdreCompraLinSap;
begin
    result := TOrdreCompraLinSap.Create();
    fLineas.Add(result);
end;


function TOdreCompraSap.EnviaDades: String;
var
   o: PurchaseOrderDES.PurchaseOrderGuttmann;
   mis_items: PurchaseOrderDES.Array_Of_item;
   mis_conditions : PurchaseOrderDES.Array_Of_Conditions;
   i,ii,conta: integer;
   l1: TOrdreCompraLinSap;
   c1: TOrdreCompraLinConditionsSap;
   respuesta: PurchaseOrderDES.PurchaseOrderGuttmannResponse;
begin

    Result := '';
    o := PurchaseOrderDES.PurchaseOrderGuttmann.Create;
    try
      o.OrderType    := self.OrderType;
      o.SupplierCode := self.SupplierCode;
      o.DocumentDate := FormatDateTime('yyyymmdd',self.DocumentDate);
      o.Partnership  := self.Partnership;
      o.PurchasingOrg := self.PurchasingOrg;
      o.PurchasingGroup := self.PurchasingGroup;
      //nous
      o.HeaderText:= self.HeaderText;
      o.Reference:= self.Reference;
      o.OurReference:= self.OurReference;


      SetLength(mis_items,fLineas.Count);
      for i := 0 to fLineas.Count - 1 do
      begin
            l1 := TOrdreCompraLinSap(fLineas[i]);
            mis_items[i] := item.Create;
            mis_items[i].Center         := l1.Center;
            mis_items[i].MaterialNumber := l1.MaterialNumber;
            mis_items[i].PositionNumber := l1.Positionnumber;
            mis_items[i].Quantity       := Floattostr(l1.Quantity);
            mis_items[i].Price          := floattostr(l1.Price);
            mis_items[i].TaxIndicator   := l1.TaxIndicator;
            mis_items[i].Multiplier     := l1.Multiplier;
            mis_items[i].VendorMaterialCode:= l1.VendorMaterialCode;

            SetLength(mis_Conditions,l1.fConditions.Count);

            for ii := 0 to l1.fConditions.Count-1 do
            begin
                 c1 := TOrdreCompraLinConditionsSap(l1.fConditions[ii]);
                  mis_Conditions[ii] :=  Conditions.Create;
                  mis_Conditions[ii].code := c1.Code;
                  mis_Conditions[ii].Percent := c1.Percent;
            end;

            mis_items[i].Condiciones :=  mis_Conditions;


      end;




      o.lineas := mis_items;

      //Aqui tenim el objecte  PurchaseOrder ple de dades, i pasem a enviarlo

          respuesta := PurchaseOrderDES.GetPurchaseOrderERPRequest_In(false,frio.url,fRio).PurchaseOrderERPRequest_In(o);
          //respuesta := PurchaseOrder2.GetPurchaseOrderERPRequest_In().PurchaseOrderERPRequest_In(o);

          Result:='';
          conta := Length(respuesta);
          for I := 0 to conta - 1 do
          begin
              Result:= Result + respuesta[i].PurchaseOrder + #13 + #10;
          end;

    finally
      o.Free;
    end;
   

end;





function TOdreCompraSap.cambiarequest(SOAPREQUEST: invstring;
  modo: string): invstring;
var
  tmp,partecambia: string;
  log: TStrings;

begin

if modo='DES' THEN partecambia:='Pruebas_MM';

if (modo='PRE') or (modo='PRO') THEN partecambia:='MM';

{with tform2.create(nil) do
 begin
 try
 memo1.lines.Text:=soaprequest;
 showmodal;
 finally
 free;
 end;
 end; }

tmp := SOAPRequest;
cambiaentre('<PurchaseOrderERPRequest_In','>','',tmp);
cambia('</PurchaseOrderERPRequest_In>','',tmp);
cambiaentre('<PurchaseOrderGuttmann','>','<ns0:PurchaseOrderGuttmann>',tmp);
cambia('</PurchaseOrderGuttmann','</ns0:PurchaseOrderGuttmann',tmp);
cambia('xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">','xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://guttmann.com/'+partecambia+'">',tmp);
cambia('<lineas>','',tmp);
cambia('</lineas>','',tmp);
cambia('<lineas/>','',tmp);
cambia('<Condiciones>','',tmp);
cambia('<Condiciones/>','',tmp);
cambia('</Condiciones>','',tmp);
SOAPRequest:=tmp;


{with tform2.create(nil) do
 begin
 try
 memo1.lines.Text:=tmp;
 showmodal;
 finally
 soaprequest:=memo1.lines.Text;
 free;
 end;
 end;}
  log := TStringList.Create;
  try
      log.text := tmp;
      log.SaveToFile('C:\tempexes\PurchaseOrderERPRequest_In_log2.xml');
   finally
    log.Free;
  end;
result:=soaprequest;
end;


procedure TOdreCompraSap.Rio_BeforeExecuteEventDES(
  const MethodName: string; var SOAPRequest: InvString);
begin
SOAPREQUEST:=cambiarequest(soaprequest,'DES');
end;

procedure TOdreCompraSap.Rio_BeforeExecuteEventPRE(
  const MethodName: string; var SOAPRequest: InvString);
begin
SOAPREQUEST:=cambiarequest(soaprequest,'PRE');
end;

procedure TOdreCompraSap.Rio_BeforeExecuteEventPRO(
  const MethodName: string; var SOAPRequest: InvString);
begin
SOAPREQUEST:=cambiarequest(soaprequest,'PRO');
end;

end.
