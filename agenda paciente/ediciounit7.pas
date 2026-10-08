unit ediciounit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, Db, DBTables, Buttons, ExtCtrls,
  Menus, DBGrids, ComCtrls, DBCtrls, Mask,
  consultaEdit7,FichaAccessindata,variants,menuu;

type
  Tagendapacient = class(TForm)
    qcolores: TQuery;
    scolores: TDataSource;
    qagenda: TQuery;
    regenera: TTimer;
    PopupMenu1: TPopupMenu;
    Fitxerdactivitats1: TMenuItem;
    qfili: TQuery;
    sfili: TDataSource;
    qtractamen: TQuery;
    stractament: TDataSource;
    Panel1: TPanel;
    paneltot: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    botonprint: TSpeedButton;
    botoncolores: TSpeedButton;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    mimedicolabel: TLabel;
    Fechalabel: TLabel;
    Label41: TLabel;
    solicitatperlabel: TLabel;
    Label55: TLabel;
    labelmetgevalida: TLabel;
    labeldatavalida: TLabel;
    Label58: TLabel;
    labelpendent: TLabel;
    bloqueadolabel: TLabel;
    gridhoras: TStringGrid;
    edit1: TconsultaEdit;
    coloresgrid: TDBGrid;
    panelcabecera: TPanel;
    panelnombre: TPanel;
    DBText1: TDBText;
    z: TDBText;
    DBText3: TDBText;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    panelresponsables: TPanel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBText2: TDBText;
    Label42: TLabel;
    DBText7: TDBText;
    Label43: TLabel;
    DBText8: TDBText;
    Label44: TLabel;
    DBText9: TDBText;
    Label45: TLabel;
    DBText10: TDBText;
    Label46: TLabel;
    DBText11: TDBText;
    Label56: TLabel;
    DBText12: TDBText;
    buscaboton: TSpeedButton;
    panelhistoricsuperior: TPanel;
    Label26: TLabel;
    labelfechaantic: TLabel;
    panelhistoricinferior: TPanel;
    editfechadebusqueda: TDateTimePicker;
    DBText13: TDBText;
    Label27: TLabel;
    edita: TdbconsultaEdit;
    Checkvirtuals: TCheckBox;
    Label36: TLabel;
    DBText4: TDBText;
    Label28: TLabel;
    DBText14: TDBText;
    Label29: TLabel;
    DBText15: TDBText;
    procedure rellenagrid;
    procedure guardadatos;
    procedure entrausuari;
    procedure gridhorasKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure gridhorasDblClick(Sender: TObject);
    procedure gridhorasDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure botonprintClick(Sender: TObject);
    procedure porareas;
    function colorconvert(netcolor:integer):Tcolor;
    procedure regeneraTimer(Sender: TObject);
    procedure Fitxerdactivitats1Click(Sender: TObject);
    procedure botoncoloresClick(Sender: TObject);
    procedure coloresgridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure coloresgridEnter(Sender: TObject);
    procedure planingpaciente;
    procedure gridhorasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText2DblClick(Sender: TObject);
    procedure editame(sender:tobject;migrup:string;campo:string);
    procedure editaExit(Sender: TObject);
    procedure editaKeyPress(Sender: TObject; var Key: Char);
    procedure DBText9DblClick(Sender: TObject);
    procedure DBText11DblClick(Sender: TObject);
    procedure DBText10DblClick(Sender: TObject);
    procedure qtractamenBeforeOpen(DataSet: TDataSet);
    procedure labelsvalida;
    procedure DBText7DblClick(Sender: TObject);
    procedure DBText12DblClick(Sender: TObject);
    procedure buscabotonClick(Sender: TObject);
    procedure editfechadebusquedaClick(Sender: TObject);
    procedure DBText13DblClick(Sender: TObject);
    procedure CheckvirtualsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function sacac_tract:integer;
  private
    { Private declarations }
  public
    { Public declarations }
    mic_historia:integer;
    frecuencia:string;
    altotot:integer;
    altosincab:integer;
  end;

var
  agendapacient: Tagendapacient;
  imprimiendo:boolean;
  bloqueado:boolean;

implementation

uses utilinueva, activitateditu, mieditu,  fichadatosu, agendaimpriu;

{$R *.DFM}

procedure Tagendapacient.rellenagrid;
var
mk:integer;
begin
// rellena el grid con los valores de la tabla;
for mk:=0 to gridhoras.colcount do
  begin
  gridhoras.cols[mk].clear;
  end;
with qagenda do
  begin
  first;
  while not eof do
    begin
    if qagenda['c_activitat']<>null then
    gridhoras.cells[qagenda['dia_semana']-1,qagenda['hora']-1]:=qagenda['c_activitat'];
    next;
    end; //not eof
  end; //with qagenda
end;

procedure Tagendapacient.guardadatos;
var
qmin:tquery;
x1,y1:integer;
trobat:boolean;
c_tract:integer;
begin
if bloqueado then exit;
qmin:=tquery.create(application);
qmin.databasename:='interna';

// guarda los datos para varias celdas



c_tract:=0;



for x1:=gridhoras.selection.left to gridhoras.selection.Right do
   begin  // 1

if (mydoctor.grup='FI') and (copy(frecuencia,x1+1,1)<>'X')
   and (edit1.text<>'') then
   begin
   showmessage('Aquest pacient no esta posat aquest dia de la setmana');
   continue;
   end;

   for y1:=gridhoras.selection.Top to gridhoras.selection.bottom do
     begin //2
     with qmin do
      begin

      // si hay cambios y se esta
      trobat:=(qagenda.locate('dia_semana;hora',vararrayof([x1+1,y1+1]),[]));
      if  trobat and ((qagenda['c_activitat']<>gridhoras.Cells[gridhoras.col,gridhoras.row])
         or (qagenda['c_grup']<>mydoctor.Grup))  then
         begin // SI LO ENCUENTRA

         // si ya existe pregunta y si dice que no pasa a siguiente bucle
       if  (mydoctor.codi<>qagenda['c_usuari_ini']) and
       (MessageDlg('¿Vol sustituir les dades?'+#13+#10+
          'Usuari: '+qagenda['c_usuari_ini']+#13+#10+
          'Activitat: '+qagenda['c_activitat'], mtConfirmation, [mbYes,mbNo], 0)=Mrno) then
          continue;
         sql.text:='update agendapacient set dataf="TODAY",c_usuari_fin="'
         +mydoctor.codi+'",data_valida=null,c_metgevalida=null where hora='+inttostr(y1+1)
         +' and dia_semana='+inttostr(x1+1)+' and c_historia='+inttostr(mic_historia);
         execsql;
         end;  // SI LO ENCUENTRA
      if (gridhoras.Cells[gridhoras.col,gridhoras.row]<>'') and
        ( (not trobat) or
      (((qagenda['c_activitat']<>gridhoras.Cells[gridhoras.col,gridhoras.row])
         or (qagenda['c_grup']<>mydoctor.Grup)) ))  then
        begin
        if c_tract=0 then c_tract:=sacac_tract;
        sql.text:='insert into agendapacient (c_historia,dia_semana,hora,datai,c_activitat,'+
        'c_usuari_ini,c_tractament) values(:c_historia,:dia_semana,:hora,"TODAY",:c_activitat,:cusuari,:c_tractament)';
        ParamByName('c_historia').asinteger:=mic_historia;
        parambyname('dia_semana').asinteger:=x1+1;
        parambyname('hora').asinteger:=y1+1;
        parambyname('c_activitat').asstring:=gridhoras.Cells[gridhoras.col,gridhoras.row];
        parambyname('cusuari').asstring:=mydoctor.codi;
        parambyname('c_tractament').asinteger:=c_tract;
        execsql;
        end // fin <>''
//        else // si no tiene valor vacia la celda
//        gridhoras.cells[x1,y1]:='';
      end;
    end; // 2 for
  end;  // 1 for
qmin.free;
qagenda.close;
qagenda.open;
qcolores.close;
qcolores.open;
labelsvalida;
rellenagrid;
end;

procedure Tagendapacient.entrausuari;
var
misderechos:tquery;
begin
//pregunta el usuari
    if mydoctor.desc='' then
       begin
       application.CreateForm(TwFichaAccessindata,wFichaAccessindata);
       with wFichaAccessindata do
         begin
         mydoctor:=PreguntaMetge(false);
         miedit.usuarilabel.caption:=mydoctor.Desc;
         free;
         end;
       end;


{ cambia el grupo asignado a la variable de mydoctor
dependiendo si tiene los derechos de es secretaria  de los
departamentos. Esto porque, ejm, la secretaria medica no pertenece
al grupo medicos, pero en este programa tiene que tener la funcionalidad
como si perteneciar, por eso a la variable mydoctor se le cambia el grupo
y se le pone el ME si tiene el derecho el usuario para hacerlo.
Los grupos asociados a un derecho por usuario estan en la tabla
codicampsalfa con el tipuscodi GRUPSPERDRET y en c_codi es el
derecho y en n_codi el grupo asociado}

if mydoctor.desc<>'' then
  begin
  misderechos:=tquery.create(application);
  with misderechos do
    begin
    databasename:='interna';
    sql.texT:='select c.n_codi,c.n_codi migrup from dretsmetges d'+
    ' inner join codicampsalfa C ON c.tipuscodi="GRUPSPERDRET" and '+
    ' d.c_dret=c.c_codi '+
    ' where c_usuari="'+mydoctor.codi+'"';
    open;
    if (recordcount>0) and (misderechos['migrup']<>null) then
     mydoctor.grup:=misderechos['migrup'];
    free;
    end;
  end;
end;

procedure Tagendapacient.gridhorasKeyPress(Sender: TObject; var Key: Char);
var
mirec:trect;
  presta, miss: String;  //*BVG AMI
  eAMI: Integer;         //*BVG AMI
  miq:tquery;
begin
if buscaboton.Down or bloqueado then exit;
if  vartype(qfili['c_prestacio'])<2 then
    begin
    showmessage('Pacient sense prestació');
    exit;
    end;
if (key<' ') and (key<>'') and (key<>#114) and (key<>#13) then exit;


if mydoctor.desc='' then entrausuari;
    //mira si tiene derecho M11 para poder editar o no

if (mydoctor.desc='') or not ((wFichaAccessindata.TeDretMetge(mydoctor.codi,[11],false))
  or wFichaAccessindata.tedretgrup(mydoctor.grup,[11],false)
        or wFichaAccessindata.TeDretEspecial(mydoctor.Especial,[11],false)) then
   begin
   if mydoctor.desc<>'' then showmessage('No te permís d''edició');
   exit
   end;

      //*BVG AMI-i
      presta := qFili.FieldByName('c_prestacio').asstring;
      if wFichaAccessindata.TeDretPresta(presta, [200], False) then
      begin
          eAMI := 0;
          miq:=tquery.create(application);
          with miq do
            begin
            databasename:='interna';
            sql.text:='select ESTATAMI from ECBCAP where C_TRACTAMENT = :mitrac';
            parambyname('mitrac').AsInteger:=qfili.FieldByName('C_Tractament').AsInteger;
            open;
            if miq['estatami']<>null then eami:=miq['estatami']
            else eAmi:=0;
            free;
            end;
//          eAMI := GutSelect('select ESTATAMI from ECBCAP where C_TRACTAMENT = %d', [qryProgramats.FieldByName('C_Tractament').AsInteger]);
          if (eAMI in [0,1]) then
          begin
              if (eAMI = 0) then miss := 'No podeu omplir l''agenda ' + #13#10+ 'perquè no existeix ANOTACIÓ MÈDICA INICIAL.'
                            else miss := 'No podeu omplir l''agenda ' + #13#10 + 'perquè l''ANOTACIÓ MÈDICA INICIAL està PENDENT DE VALIDAR.';
              wFichaAccessindata.FerError(miss);
              Exit;
          end;
      end;
      //*BVG AMI-f


with gridhoras do
  begin
  mirec:=CellRect(col,row);
  edit1.left:=mirec.Left+gridhoras.Left+1;
  edit1.top:=mirec.Top+gridhoras.top+1;
  edit1.miwhere.text:='where tipuscodi="ACTIVITAT'+mydoctor.grup+'"';
  edit1.visible:=true;
  edit1.SetFocus;
  edit1.text:='';
  if key<'1' then edit1.text:=cells[col,row]
     else edit1.text:=key;
  edit1.SelStart:=1;
  end;
end;

procedure Tagendapacient.Edit1Exit(Sender: TObject);
begin
edit1.visible:=false;
with gridhoras do
  begin
  setfocus;
  cells[col,row]:=edit1.text;
  end;
guardadatos;
end;

procedure Tagendapacient.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then gridhoras.setfocus;
if key=#27 then
   begin
   with gridhoras do
     edit1.Undo;
//   edit1.visible:=false;
   gridhoras.setfocus;
   exit;
   end;
end;

procedure Tagendapacient.gridhorasDblClick(Sender: TObject);
var
mikey:char;
begin
 if buscaboton.down or bloqueado then exit;
gridhorasKeyPress(Sender,mikey);
end;

procedure Tagendapacient.gridhorasDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
try
  with gridhoras do
  begin
  // si es fisioterapia mira la frecuencia y la marca en pantalla
  if (copy(frecuencia,acol+1,1)='X') and not imprimiendo then
//     canvas.brush.color:=$00B0FDF9     $00C5FEFB
       canvas.brush.color:=$00C5FEFB
    else
    Canvas.Brush.Color := clwindow;
    canvas.font.color:=clblack;
    canvas.font.Height:=9;

    // si es grupo FI fisioterapia le marca los dias que pueden rellenar
{if ((datacol mod 2=0) and (frecu[round((datacol/2)-1)]='X' )  ) or
       (((datacol+1) mod 2=0) and (frecu[round(((datacol+1)/2)-1)]='X' )  ))
       and (datacol<>0)                                                     }

    //mira si esta seleccionado para cambiar color
    // si no esta impriendo
    if (selection.Left<=acol) and
       (selection.right>=acol) and
       (selection.top<=arow) and
       (selection.bottom>=arow) and not imprimiendo then  Canvas.brush.color:=$00FFFFB0;
    Canvas.FillRect(Rect);
//    canvas.textOut(rect.left+1,rect.top+1,gridhoras.cells[acol,arow]);

  end;

if imprimiendo  then porareas
  else if qagenda.Active then regenera.enabled:=true;

except
showmessage('error, codi de activitat no trobat a codicamps');
mandaerror2(self,errorfalso,'error, codi de activitat no trobat a codicamps, hist'+inttostr(mic_historia),false,4);
end;

end;

procedure Tagendapacient.botonprintClick(Sender: TObject);
begin
if bloqueado then exit;
if not TeDretAccesRAM('62',false,false) then
  begin
  showmessage('No te permís d''impressió');
  exit;
  end;
if mydoctor.desc='' then entrausuari;
    //mira si tiene derecho M9 para poder editar o no

if (mydoctor.desc='') then
   begin
   exit
   end;



buscaboton.Visible:=false;
editfechadebusqueda.visible:=false;
Fechalabel.caption:=formatdatetime('dd/mm/yy hh:nn',now);
botonprint.visible:=false;
botoncolores.visible:=false;
botoncolores.down:=true;
botoncoloresClick(sender);
panelnombre.visible:=true;
panelresponsables.top:=25;
solicitatperlabel.visible:=true;
mimedicolabel.visible:=true;
mimedicolabel.caption:=mydoctor.desc;
paneltot.top:=64;
self.height:=altotot;
label41.visible:=true;
Fechalabel.visible:=true;
imprimiendo:=true;


//self.Print;
  //16/06/2010 quitado por impresion en negro de forma aleatoria
// manda imagen al formulario de impresion
application.createform(tagendaimpri,agendaimpri);
Sleep(3000);
try
  agendaimpri.QRImage1.Picture.Bitmap:=GetFormImage;
  if agendaimpri.QRImage1.Picture=nil then
    agendaimpri.QRImage1.Picture.Bitmap:=GetFormImage
    else
      if agendaimpri.QRImage1.Picture=nil then  showmessage('no se puede coger imagen de planing, avisar a informatica');



  agendaimpri.QRImage1.width:=round(screen.width*0.80);
  agendaimpri.QRImage1.Height:=round(agendaimpri.QRImage1.Width*0.65);
  agendaimpri.print;
 finally
  agendaimpri.Free;
end;




// fin de impresion





imprimiendo:=false;
if panelcabecera.visible=false then self.Height:=altosincab
   else self.Height:=altotot;
botonprint.visible:=true;
botoncolores.visible:=true;
label41.visible:=false;
Fechalabel.visible:=false;
solicitatperlabel.visible:=false;
mimedicolabel.visible:=false;
botoncolores.down:=false;
botoncoloresClick(sender);
buscaboton.Visible:=true;
editfechadebusqueda.visible:=True;
//qfili.close;
if (uppercase(extractfilename(application.ExeName))='CURSCLIN.EXE') then
  begin
  panelnombre.visible:=false;
  if paneltot.top<>1 then paneltot.top:=40;
  end;
self.Refresh;
end;

procedure Tagendapacient.porareas;
var
activ,c_grup:string;
mirect,mirect2:trect;
column,hora:integer;
salta:boolean;
micolor:integer;
pit:tbitmap;
begin
if not qagenda.active then exit;
if qagenda.recordcount=0 then exit;
//pit:=tbitmap.Create;
//pit.LoadFromFile('clubsportiu.BMP');

with qagenda do
  begin
  first;
  mirect:=gridhoras.CellRect(qagenda['dia_semana']-1,qagenda['hora']-1);
  if qagenda['c_grup']=null
    then c_grup:='***'
    else c_grup:=qagenda['c_grup'];
  activ:=qagenda['c_activitat'];
  column:=qagenda['dia_semana'];
  hora:=qagenda['hora'];
  if qagenda['color']=null then
    micolor:=0
    else micolor:=qagenda['color'];
   with gridhoras do
     begin
   if (selection.Left<=qagenda['dia_semana']-1) and
           (selection.right>=qagenda['dia_semana']-1) and
           (selection.top<=qagenda['hora']-1) and
           (selection.bottom>=qagenda['hora']-1) then  Canvas.brush.color:=$00FFFFB0
           else
            if (copy(frecuencia,qagenda.fieldbyname('dia_semana').asinteger,1)='X') and (not imprimiendo) then
                  canvas.brush.color:=$00C5FEFB
                  else
                  canvas.brush.color:=clwhite;

     end;

  mirect2:=gridhoras.CellRect(qagenda['dia_semana']-1,qagenda['hora']-1);
  gridhoras.canvas.Font.color:=colorconvert(evitanulo(qagenda.FieldByName('color')));
  gridhoras.canvas.textOut(mirect2.left+1,mirect2.top+1,activ);

  mirect.right:=gridhoras.CellRect(qagenda['dia_semana']-1,qagenda['hora']-1).right;
  mirect.bottom:=gridhoras.CellRect(qagenda['dia_semana']-1,qagenda['hora']-1).bottom;
  if (qagenda['hora']<24) then
    salta:=(gridhoras.cells[qagenda['dia_semana']-1,qagenda['hora']]='');

  next;

  while not eof do
    begin
    if (qagenda['c_activitat']<>activ) or (qagenda['c_grup']<>c_grup)
       or (qagenda['dia_semana']<>column) or salta then
       begin
       salta:=false;
       mirect2:=gridhoras.CellRect(qagenda['dia_semana']-1,qagenda['hora']-1);
       with gridhoras do
         begin
        if (selection.Left<=qagenda['dia_semana']-1) and
           (selection.right>=qagenda['dia_semana']-1) and
           (selection.top<=qagenda['hora']-1) and
           (selection.bottom>=qagenda['hora']-1) then  Canvas.brush.color:=$00FFFFB0
           else
            if (copy(frecuencia,qagenda.fieldbyname('dia_semana').asinteger,1)='X') and (not imprimiendo) then
                  canvas.brush.color:=$00C5FEFB
                  else
                  canvas.brush.color:=clwhite;

//            canvas.brush.color:=gridhoras.canvas.brush.color;



           canvas.FillRect(mirect2);
           gridhoras.canvas.Font.color:=colorconvert(evitanulo(qagenda.FieldByName('color')));
           canvas.textOut(mirect2.left+1,mirect2.top+1,qagenda['c_activitat']);
           canvas.brush.color:=colorconvert(micolor);
           Canvas.FrameRect(mirect);
//           canvas.StretchDraw(mirect, pit);
         end;
       mirect:=gridhoras.CellRect(qagenda['dia_semana']-1,qagenda['hora']-1);
       if qagenda['c_grup']=null
         then c_grup:='***'
         else c_grup:=qagenda['c_grup'];
       activ:=qagenda['c_activitat'];
       column:=qagenda['dia_semana'];
       hora:=qagenda['hora'];
       if qagenda['color']=null then
            micolor:=0
          else  micolor:=qagenda['color'];
       if (qagenda['hora']<24) then
         salta:=(gridhoras.cells[qagenda['dia_semana']-1,qagenda['hora']]='');
       end // si diferente
       else
       begin
       mirect.right:=gridhoras.CellRect(qagenda['dia_semana']-1,qagenda['hora']-1).right;
       mirect.bottom:=gridhoras.CellRect(qagenda['dia_semana']-1,qagenda['hora']-1).bottom;
       if (qagenda['hora']<24) then
         salta:=(gridhoras.cells[qagenda['dia_semana']-1,qagenda['hora']]='');
       end;
    next;
    end;  // with not eof
    gridhoras.canvas.brush.color:=colorconvert(micolor);
    gridhoras.canvas.FrameRect(mirect);
  end;  // with qagenda

//pit.Free;
end;

function Tagendapacient.colorconvert(netcolor: integer): Tcolor;
begin
// dando el numero de color de grup te devuelve el color de delphi
case netcolor of
  0: result:= clBlack;
  1: result:=  clAqua;
  2: result:=  clSilver;
  3: result:=  clTeal  ;
  4: result:=  clYellow;
  5: result:= clGreen  ;
  6: result:=  clBlue  ;
  7: result:=  clRed   ;
  8: result:=  clPurple;
  9: result:=  clNavy  ;
  10: result:= clMaroon;
  11: result:= clLime  ;
  12: result:= clOlive ;
  13: result:= clGray  ;
  14: result:= clFuchsia;
  15: result:= clWhite;
  else result:= clblack;
end;

end;

procedure Tagendapacient.regeneraTimer(Sender: TObject);
begin
porareas;
regenera.enabled:=false;
end;

procedure Tagendapacient.Fitxerdactivitats1Click(Sender: TObject);
begin
if mydoctor.desc='' then entrausuari;
    //mira si tiene derecho M9 para poder editar o no

if (mydoctor.desc='') or not ((wFichaAccessindata.tedretmetge(mydoctor.codi,[12],false))
   or wFichaAccessindata.tedretgrup(mydoctor.grup,[12],false)
        or wFichaAccessindata.TeDretEspecial(mydoctor.Especial,[12],false)) then
   begin
   if mydoctor.desc<>'' then showmessage('No te permís d''edició');
   exit
   end;

application.createform(Tactivitatedit,activitatedit);
with activitatedit do
  begin
  show;
  mygrup:=mydoctor.grup;
  qactivitat.Params[0].asstring:='ACTIVITAT'+mydoctor.grup;
  qactivitat.open;
  end;

end;

procedure Tagendapacient.botoncoloresClick(Sender: TObject);
begin
if botoncolores.down then
  begin
  coloresgrid.visible:=true;
  paneltot.Width:=912;
  self.Height:=altotot;
  coloresgrid.Repaint;
  end
else
  begin
  if panelcabecera.visible=false then self.Height:=altosincab
     else altotot:=612;
  coloresgrid.visible:=false;
  paneltot.width:=798;
  end;
end;
procedure Tagendapacient.coloresgridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
  pit:tbitmap;
begin
{pit:=tbitmap.Create;
pit.LoadFromFile('clubsportiu.BMP');}
if qcolores.active then
  begin
   with coloresgrid do
     begin
       if column.index=0 then
         begin
         if qcolores['color']<>null then
         canvas.brush.color:=colorconvert(qcolores['color'])
         else          canvas.brush.color:=clwhite;
         canvas.FillRect(rect);
         end
       else
         if (column.index=1) and ( (qcolores['c_grup']='TO') or
              (qcolores['c_grup']='FI')) then
              begin
              canvas.TextOut(rect.Left+1,rect.top+1,'Rehab. Funcional');
//              canvas.StretchDraw(rect, pit);
              end
       else
         DefaultDrawColumnCell(Rect, DataCol, Column, State);


     end;
  end;
//  pit.free;
end;

procedure Tagendapacient.coloresgridEnter(Sender: TObject);
begin
gridhoras.SetFocus;
end;

procedure Tagendapacient.planingpaciente;
var
estopea:tquery;
mifisio,mitera:string;
i:integer;
frecu2:string;
begin
// muestra el planing para ese paciente
self.top:=0;
self.left:=0;
 qfili.sql.text:='select t.c_logopeda,t.c_tractament,f.num_hist,f.nomcomplet,t.data_ingres,'+
  't.c_prestacio,t.c_llit,t.c_planta,p.n_prestacio,t.c_frequencia,t.vegada'+
  ',t.c_fisioterapeuta,t.c_terapeuta'+
   ',m1.metge metge,m2.metge infermera,m3.metge terapeuta,m4.metge fisio'+
   ',m5.metge psicoleg,m6.metge trevallsocial,m7.metge logopeda,m8.metge flm '+
   ' from filiacio f'+
   ' left outer join tractaments t on f.num_hist=t.c_historia and'+
   ' (data_alta is null or data_alta>="TODAY") '+
   ' inner join dretspresta dp on  t.c_prestacio=dp.c_prestacio and c_dret="P39" '+
   ' left outer join prestacion p  on t.c_prestacio=p.c_prestacio'+
   ' left join metges m1 on t.c_coordinador=m1.codi'+
   ' left join metges m2 on t.c_infermeria=m2.codi'+
   ' left join metges m3 on t.c_terapeuta=m3.codi'+
   ' left join metges m4 on t.c_fisioterapeuta=m4.codi'+
   ' left join metges m5 on t.c_psicoleg=m5.codi'+
   ' left join metges m6 on t.c_trevallsocial=m6.codi'+
   ' left join metges m7 on t.c_logopeda=m7.codi'+
   ' left join metges m8 on t.c_fisio_labo_marxa=m8.codi'+
   ' where f.num_hist='+inttostr(mic_historia);
  qfili.open;

  frecuencia:='       ';

  if qfili.recordcount>0 then
     if qfili['c_prestacio']='1004' then frecuencia:='XXXXXXX'
      else // 27/08/2015 se tiene que gestionar varias frecuencias porque puede tener varios trat simultaneos PENDIENTE!!!!!
      begin
       if qfili.RecordCount>1 then
          begin // si varios trat
          qfili.first;
          if qfili['c_frequencia']<>null then
             begin
             frecu2:=qfili['c_frequencia'];
             for i:=1 to length(frecu2) do if frecuencia[i]=' ' then frecuencia[i]:=frecu2[i];
             end;             

          qfili.next;
          while not qfili.eof do
            begin
            frecu2:='';
            if qfili['c_frequencia']<>null then frecu2:=qfili['c_frequencia'];
            if (frecu2='')  then
              begin
              qfili.next;
              continue;
              end;
            for i:=1 to length(frecu2) do if frecuencia[i]=' ' then frecuencia[i]:=frecu2[i];
            qfili.next;
            end; //while
          end   // fin si varios trat
       else
       // si solo tiene un trat
         if qfili['c_frequencia']<>null then frecuencia:=qfili['c_frequencia'];
       end;



      estopea:=tquery.create(application);
      with estopea do
        begin  //2
        databasename:='interna';
        sql.text:='select * from seguimentcap'+
        ' where c_historia='+inttostr(mic_historia)+' and tancat=2';
        open;
        bloqueado:=recordcount>0;
        bloqueadolabel.visible:=bloqueado;
        close;
  if (vartype(qfili['c_fisioterapeuta'])<2) and (qfili['c_prestacio']='2014') and
       (qfili['vegada']=1) then
      begin  //1        
        sql.text:='select c_fisioterapeuta,c_terapeuta from tractaments where c_historia="'+
                 inttostr(mic_historia)+'" and c_prestacio="1004" and data_ingres in'+
                 ' (select max(data_ingres) from tractaments where c_historia="'+
                 inttostr(mic_historia)+'" and'+
                 ' c_prestacio="1004")';
        open;
        if recordcount>0 then
           begin
           if estopea['c_fisioterapeuta']<>null then
             mifisio:=estopea['c_fisioterapeuta'];
           if estopea['c_terapeuta']<>null then
             mitera:=estopea['c_terapeuta'];
           close;
           sql.text:='update tractaments set c_fisioterapeuta="'+
           mifisio+'" ,c_terapeuta="'+mitera+'" where c_tractament='+
           inttostr(qfili['c_tractament']);
           execsql;
           end;
        free;
        qfili.close;
        qfili.open;
        end;  //2
       end;  //1
qagenda.close;
qagenda.params[0].asinteger:=mic_historia;
try
qagenda.open;
qcolores.close;
qcolores.params[0].asinteger:=mic_historia;
qcolores.open;
self.enabled:=true;
if panelcabecera.visible=false then self.Height:=altosincab
     else self.Height:=altotot;
coloresgrid.visible:=false;
paneltot.width:=798;
labelsvalida;
rellenagrid;

if (uppercase(extractfilename(application.ExeName))='CURSCLIN.EXE') then
   begin
   panelnombre.visible:=false;
   if paneltot.top<>1 then  paneltot.top:=40;
   end;

except
showmessage('error, codi de activitat no trobat a codicamps');
mandaerror2(self,errorfalso,'error, codi de activitat no trobat a codicamps, hist'+inttostr(mic_historia),false,4);
end;

end;

procedure Tagendapacient.gridhorasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  presta, miss: String;  //*BVG AMI
  eAMI: Integer;         //*BVG AMI
  miq:tquery;
begin
if buscaboton.Down or bloqueado then exit;
if key=46 then
  begin
  if mydoctor.desc='' then entrausuari;
      //mira si tiene derecho M9 para poder editar o no
  if (mydoctor.desc='') or not ((wFichaAccessindata.tedretmetge(mydoctor.codi,[11],false))
    or wFichaAccessindata.tedretgrup(mydoctor.grup,[11],false)
        or wFichaAccessindata.TeDretEspecial(mydoctor.Especial,[11],false)) then
     begin
     if mydoctor.desc<>'' then showmessage('No te permís d''edició');
     exit
     end;
    //*BVG AMI-i
      presta := qFili.FieldByName('c_prestacio').asstring;
      if wFichaAccessindata.TeDretPresta(presta, [200], False) then
      begin
          eAMI := 0;
          miq:=tquery.create(application);
          with miq do
            begin
            databasename:='interna';
            sql.text:='select ESTATAMI from ECBCAP where C_TRACTAMENT = :mitrac';
            parambyname('mitrac').AsInteger:=qfili.FieldByName('C_Tractament').AsInteger;
            open;
            if miq['estatami']<>null then eami:=miq['estatami']
            else eAmi:=0;
            free;
            end;
       //   eAMI := GutSelect('select ESTATAMI from ECBCAP where C_TRACTAMENT = %d', [qryProgramats.FieldByName('C_Tractament').AsInteger]);
          if (eAMI in [0,1]) then
          begin
              if (eAMI = 0) then miss := 'No podeu omplir l''agenda ' + #13#10+ 'perquè no existeix ANOTACIÓ MÈDICA INICIAL.'
                            else miss := 'No podeu omplir l''agenda ' + #13#10 + 'perquè l''ANOTACIÓ MÈDICA INICIAL està PENDENT DE VALIDAR.';
              wFichaAccessindata.FerError(miss);
              Exit;
          end;
      end;
    //*BVG AMI-f
  with gridhoras do Cells[col,row]:='';
  guardadatos;
  end;
end;

procedure Tagendapacient.DBText2DblClick(Sender: TObject);
begin

editame(sender,'UN','c_infermeria');

end;


procedure tagendapacient.editame(sender:tobject;migrup:string;campo:string);
begin
//llama a edita
if  vartype(qfili['c_prestacio'])<2 then
    begin
    showmessage('Pacient sense prestació');
    exit;
    end;

if mydoctor.desc='' then entrausuari;
    //mira si tiene derecho M12 para poder editar o no

if (mydoctor.desc='') or not (wFichaAccessindata.TeDretMetge(mydoctor.codi,[14],false))
or (mydoctor.grup<>migrup) then
begin
 if not ( wFichaAccessindata.TeDretGrup(mydoctor.Grup,[36],false)  and    // parte 39928: només FI i TO poden canviar professionals d'altres grups
          ((migrup='FI') or (migrup='TO'))         ) then   // parte 39928: només FI i TO poden ser vanciats per grups amb dret G36
 begin
   if mydoctor.desc<>'' then showmessage('No te permís d''edició');
   exit
 end;
end;

qtractamen.open;
edita.miwhere.text:='where (baixa="N" or baixa is null) and c_grup="'+
    migrup+'"';
edita.DataField:=campo;
edita.width:=tedit(sender).width;
edita.Top:=tedit(sender).top;
edita.left:=tedit(sender).left;
edita.visible:=True;
edita.setfocus;

end;

procedure Tagendapacient.editaExit(Sender: TObject);
begin
//if edita.focused then exit;
if qtractamen.state=dsedit then
   begin
   qtractamen.post;
   qtractamen.close;
   qfili.close;
   qfili.open;
   end;
edita.visible:=false;
end;

procedure Tagendapacient.editaKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then gridhoras.setfocus;
end;

procedure Tagendapacient.DBText9DblClick(Sender: TObject);
begin
editame(sender,'TO','c_terapeuta');
end;

procedure Tagendapacient.DBText11DblClick(Sender: TObject);
begin
editame(sender,'AS','c_trevallsocial');
end;

procedure Tagendapacient.DBText10DblClick(Sender: TObject);
begin
editame(sender,'PS','c_psicoleg');
end;

procedure Tagendapacient.qtractamenBeforeOpen(DataSet: TDataSet);
begin
if qfili['c_tractament']=null then exit;
end;

procedure Tagendapacient.labelsvalida;
var
vali:tquery;
begin
// actualiza indicadores de validacion
vali:=tquery.create(application);
with vali do
  begin
  databasename:='interna';
  sql.text:='select data_valida,m.metge'+
   ' from agendapacient a'+
   ' inner join metges m on a.c_metgevalida=m.codi'+
   ' where a.c_historia='+inttostr(mic_historia)+
   ' order by data_valida descending';
  open;
  if recordcount>0 then
     begin
     labelmetgevalida.caption:=vali['metge'];
     labeldatavalida.caption:=vali.fieldbyname('data_valida').asstring;
     end;
  close;
  sql.text:='select * from agendapacient where '+
  ' c_metgevalida is null and c_historia='+inttostr(mic_historia);
  open;
  labelpendent.visible:=recordcount>0;
  free;
  end;
end;

procedure Tagendapacient.DBText7DblClick(Sender: TObject);
begin
editame(sender,'FI','c_fisioterapeuta');
end;

procedure Tagendapacient.DBText12DblClick(Sender: TObject);
begin
if  vartype(qfili['c_prestacio'])<2 then
    begin
    showmessage('Pacient sense prestació');
    exit;
    end;

if mydoctor.desc='' then entrausuari;
    //mira si tiene derecho M12 para poder editar o no

if (mydoctor.desc='') or not (wFichaAccessindata.tedretmetge(mydoctor.codi,[14],false))
  or (mydoctor.especial<>'14') then
   begin
   if mydoctor.desc<>'' then showmessage('No te permís d''edició');
   exit
   end;

qtractamen.open;
edita.miwhere.text:='where (baixa="N" or baixa is null) and c_especial="14"';
edita.DataField:='c_logopeda';
edita.width:=tedit(sender).width;
edita.Top:=tedit(sender).top;
edita.left:=tedit(sender).left;
edita.visible:=True;
edita.setfocus;
end;

procedure Tagendapacient.buscabotonClick(Sender: TObject);
var
condivirtual:string;
begin
if buscaboton.down then
  begin
  panelhistoricsuperior.Visible:=true;
  panelhistoricinferior.visible:=true;
  editfechadebusqueda.Date:=date;
  end
 else
  begin
  panelhistoricsuperior.Visible:=false;
  panelhistoricinferior.visible:=false;
  if Checkvirtuals.Checked then
    begin
    condivirtual:=''
    end
    else
    begin
    condivirtual:='and a.c_activitat not  like ''%*%''';
    end;
    qagenda.close;
    qagenda.SQL.text:='select a.c_historia,'+
    ' a.hora,a.dia_semana,a.datai,a.dataf,'+
    ' a.c_activitat,a.c_usuari_ini,a.c_usuari_fin,'+
    ' g.c_grup,g.color,f_mid(c.tipuscodi,9,2) from agendapacient a'+
    ' left join codicampsalfa c on c.tipuscodi like "ACTIVITAT%"'+
    '    and c.c_codi=a.c_activitat'+
    ' left  join grups g on g.c_grup=f_mid(c.tipuscodi,9,2)'+
    ' where a.c_historia=:ni and a.dataf is null '+condivirtual+
    ' order by dia_semana,hora,datai';

  qagenda.params[0].asinteger:=mic_historia;
  qagenda.open;
  qcolores.close;
  qcolores.sql.text:='select distinct g.c_grup,g.n_grup,g.color from agendapacient a'+
  ' left join codicampsalfa c on c.tipuscodi like "ACTIVITAT%"'+
  '    and c.c_codi=a.c_activitat'+
  ' left  join grups g on g.c_grup=f_mid(c.tipuscodi,9,2)'+
  ' where a.c_historia=:c_historia and a.dataf is null';
  qcolores.params[0].asinteger:=mic_historia;
  qcolores.open;
  labelsvalida;
  rellenagrid;
  porareas;
  end;

end;

procedure Tagendapacient.editfechadebusquedaClick(Sender: TObject);
begin
  qagenda.close;
  qagenda.SQL.text:='select a.c_historia,'+
  'a.hora,a.dia_semana,a.datai,a.dataf,'+
  'a.c_activitat,a.c_usuari_ini,a.c_usuari_fin,'+
  'g.c_grup,g.color,f_mid(c.tipuscodi,9,2) from agendapacient a'+
  ' left join codicampsalfa c on c.tipuscodi like "ACTIVITAT%"'+
  '   and c.c_codi=a.c_activitat'+
  ' left  join grups g on g.c_grup=f_mid(c.tipuscodi,9,2)'+
  ' where a.c_historia=:ni and datai<=:midata and (dataf is null or dataf>:midata)'+
  ' order by dia_semana,hora,datai';
  qagenda.ParamByName('midata').asdate:=editfechadebusqueda.date;
  qcolores.close;
  qcolores.sql.text:='select distinct g.c_grup,g.n_grup,g.color from agendapacient a'+
  ' left join codicampsalfa c on c.tipuscodi like "ACTIVITAT%"'+
  '   and c.c_codi=a.c_activitat'+
  ' left  join grups g on g.c_grup=f_mid(c.tipuscodi,9,2)'+
  ' where a.c_historia=:c_historia and datai<=:midata and (dataf is null or dataf>:midata)';
  qcolores.ParamByName('midata').asdate:=editfechadebusqueda.date;
  planingpaciente;
  labelfechaantic.Caption:=datetostr(editfechadebusqueda.date);
end;

procedure Tagendapacient.DBText13DblClick(Sender: TObject);
begin
editame(sender,'FI','c_fisio_labo_marxa');
end;

procedure Tagendapacient.CheckvirtualsClick(Sender: TObject);
var
condivirtual:string;
begin
if Checkvirtuals.Checked then
  begin
  condivirtual:=''
  end
  else
  begin
  condivirtual:='and a.c_activitat not  like ''%*%''';
  end;
  qagenda.close;
  qagenda.SQL.text:='select a.c_historia,'+
  ' a.hora,a.dia_semana,a.datai,a.dataf,'+
  ' a.c_activitat,a.c_usuari_ini,a.c_usuari_fin,'+
  ' g.c_grup,g.color,f_mid(c.tipuscodi,9,2) from agendapacient a'+
  ' left join codicampsalfa c on c.tipuscodi like "ACTIVITAT%"'+
  '    and c.c_codi=a.c_activitat'+
  ' left  join grups g on g.c_grup=f_mid(c.tipuscodi,9,2)'+
  ' where a.c_historia=:ni and a.dataf is null '+condivirtual+
  ' order by dia_semana,hora,datai';
  qagenda.params[0].asinteger:=mic_historia;
  qagenda.open;
  qcolores.close;
  qcolores.sql.text:='select distinct g.c_grup,g.n_grup,g.color from agendapacient a'+
  ' left join codicampsalfa c on c.tipuscodi like "ACTIVITAT%"'+
  '    and c.c_codi=a.c_activitat'+
  ' left  join grups g on g.c_grup=f_mid(c.tipuscodi,9,2)'+
  ' where a.c_historia=:c_historia and a.dataf is null';
  qcolores.params[0].asinteger:=mic_historia;
  qcolores.open;
  labelsvalida;
  rellenagrid;
  porareas;


end;

procedure Tagendapacient.FormCreate(Sender: TObject);
begin
altotot:=650;
altosincab:=561;
end;


function Tagendapacient.sacac_tract:integer;
begin

if qfili.RecordCount=1 then
  result:=qfili['c_tractament']
  else
  begin // mas de un tratamiento
  result:=strtoint(llamaconsulta('interna',
   'select p.n_prestacio,t.c_tractament  from tractaments t '+
   ' inner join dretspresta dp on  t.c_prestacio=dp.c_prestacio and c_dret="P39" '+
   ' inner join prestacion p  on t.c_prestacio=p.c_prestacio'+   
   ' where t.c_historia='+inttostr(mic_historia) + ' and (data_alta is null or data_alta>="TODAY") '
  ,'','','c_tractament','N',application));
  end; // mas de un tratamiento


end;

end.
