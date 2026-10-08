unit importacdu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,fichaconsulta_7, Grids,GridsEh,  DB, RxMemDS, JvBaseDlg,
  JvDesktopAlert, JvFormPlacement, JvComponentBase, JvAppStorage,
  JvAppRegistryStorage, JvSelectDirectory,  StdCtrls,
  ComCtrls, barratiempo, Buttons, DBTables,      dcm_attributes,  DBGridEh,
  DBCtrls, consultaEdit7,CnsJpgGr, IBCustomDataSet, IBQuery, IBDatabase,shellapi;

type
  Timportacd = class(TForm)
    Database: TDatabase;
    Panel1: TPanel;
    JvSelectDirectory1: TJvSelectDirectory;
    JvAppRegistryStorage1: TJvAppRegistryStorage;
    JvFormStorage1: TJvFormStorage;
    alertafallo: TJvDesktopAlert;
    DataSource1: TDataSource;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Labeltotalfichero: TLabel;
    labelficherodicom: TLabel;
    labelficheronodicom: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    labeltractament: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    edittractament: TconsultaEdit;
    Button2: TButton;
    temploadedit: TEdit;
    tbarratiempo1: tbarratiempo;
    Button3: TButton;
    checkmachaca: TCheckBox;
    consultaEdit1: TconsultaEdit;
    consultaEdit2: TconsultaEdit;
    Button4: TButton;
    Button5: TButton;
    Panel4: TPanel;
    panelstudies: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    labeltiempo: TLabel;
    Label11: TLabel;
    labelpruebas: TLabel;
    Button1: TButton;
    destinoedit: TEdit;
    barratiempo: tbarratiempo;
    checkbmp: TCheckBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Memo2: TMemo;
    Label22: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Memo3: TMemo;
    Label25: TLabel;
    Memo1: TMemo;
    Label26: TLabel;
    Label27: TLabel;
    Memo4: TMemo;
    Label28: TLabel;
    Memo5: TMemo;
    Label29: TLabel;
    Label30: TLabel;
    TABexportahccc: TTabSheet;
    Panel6: TPanel;
    botonexportahccc: TButton;
    Tabdicomris: TTabSheet;
    paneldicomris: TPanel;
    panelayudastatus: TPanel;
    Memo6: TMemo;
    Button6: TButton;
    Panel7: TPanel;
    importrisbutton: TSpeedButton;
    exportrisbutton: TSpeedButton;
    Label13: TLabel;
    edithistoria: TconsultaEdit;
    nombrelabel: TLabel;
    SpeedButton3: TSpeedButton;
    botonedit: TSpeedButton;
    SpeedButton5: TSpeedButton;
    botonpublicahc3: TSpeedButton;
    checkboxEnPruebas: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function  dameruta(midat: tdatetime): string;
    function  TestDcmFileDir(AQuery: TDataset; var AImageDir: string): Boolean;
    procedure trazaini(sender: tobject; e: exception);
    procedure Button2Click(Sender: TObject);
    procedure SetDir(var CurrentDir1:string;ADir: string);
    procedure Button3Click(Sender: TObject);
    function AppendImage(c_historia,c_intercon:integer;a2:tdicomdataset; studyid, pSex: string;
      date1: TDatetime; studyuid,studydesc,institucion,bodypart,seriesuid, InstanceUID, ImageType, aid: string; var AModility: string;imagesize:integer;sopclassuid:string=''): TDatetime;
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);

    procedure DBGridEh1DrawColumnCellDICOMRIS(Sender: TObject;
       const Rect: TRect; DataCol: Integer; Column: TColumnEh;
       State: TGridDrawState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure guardaentodos;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridDICOMRISDblClick(Sender: TObject);
    procedure beforepostdata(midata:tdataset);
    procedure afterpostdate(midata:tdataset);
    procedure consultaEdit2Enter(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure edittractamentEnter(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure consultaEdit2Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure temploadeditExit(Sender: TObject);
    procedure DatabaseAfterConnect(Sender: TObject);
    procedure botonexportahcccClick(Sender: TObject);
    procedure vistaimagen1(sender: tobject);
    procedure vistaimagen2(sender: tobject);
    procedure Button6Click(Sender: TObject);
    procedure importrisbuttonClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure botoneditClick(Sender: TObject);
    procedure salidacolumna(sender: Tobject);
    procedure exportrisbuttonClick(Sender: TObject);
    procedure datasetdicomrisBeforeDelete(DataSet: TDataSet);
    procedure datasetdicomrisBeforeinsert(DataSet: TDataSet);
    procedure antesedit(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure botonpublicahc3Click(Sender: TObject);
    procedure checkboxEnPruebasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    liststudies:tconsultaform;
    listtemp:tconsultaform;
    listdicomris:tconsultaform;
    listexportahcc:tconsultaform;
  end;

var
  importacd: Timportacd;
  parada:boolean;

implementation

uses utilinueva, Math, FichaAccessindata,

 define_types, dicom;  // version antigua estan en delphi/dicom 22/05/2013

{$R *.dfm}

procedure Timportacd.FormCreate(Sender: TObject);
var
jl:integer;
micampo:string;
begin

inicia('interna');

iniciaresumido;
cogederechos;

botonpublicahc3.Visible:=TeDretAccesram('474',false,true);



//application.OnException:=trazaini;

PageControl1.ActivePage:=Tabdicomris;
// desactiva todas las pestañas
if not (TeDretAccesram('100',false,false)) then
   begin
   TabSheet1.tabVisible:=false;
   TabSheet2.tabvisible:=false;
   TABexportahccc.tabVisible:=false;
   checkboxEnPruebas.Visible:=false;
   end
   else
   begin  // si es 100





liststudies:=tconsultaform.create(panelstudies);
with liststudies do
  begin //1
   parent:=panelstudies;
   baseinterna:='interna';
   sqltexto:='Select f.nomcomplet, f.num_hist, d.c_intercon, d.studyuid,d.institucion, d.ldate,'+
   ' d.study_description, d.studies_image_type, cast(sum(imagesize)/1024 as integer) as Mb'+
   ' From filiacio f   '+
   ' inner join dicomstudies d on f.num_hist=d.c_historia '+
   ' inner Join DICOMIMAGES On d.STUDYUID = DICOMIMAGES.STUDYUID ';
   wheretexto:=' where d.ldate>=''TODAY''';
   orden:=' group by f.nomcomplet, f.num_hist, d.c_intercon, d.studyuid,d.institucion, d.ldate,'+
   ' d.study_description, d.studies_image_type '+
   ' order by f.nomcomplet,d.ldate';
   titulos:='';
   borderstyle:=forms.bsnone;
   dbgrid1xlt.OnDblClick:=vistaimagen1;
   Align:=alclient;
   left:=1;
   top:=1;
   panel1xl.visible:=true;
   show;
   ejecutasql;
  end; // 1 with liststudes


listexportahcc:=tconsultaform.create(panelstudies);
with listexportahcc do
  begin //1
   parent:=TABexportahccc;
   baseinterna:='interna';
   sqltexto:=   'select d.c_historia,f.nomcomplet,t.c_prestacio,t.c_diagnosticingres,d.ldate,d.studies_image_type,d.study_description,d.studyuid from dicomstudies d'+
      '     inner join filiacio f on d.c_historia=f.num_hist and tsi is not null and tsi<>""                                  '+
      '     inner join intercon i on d.c_intercon=i.c_intercon                                                                '+
      '     inner join metges m on i.c_metge1=m.codi and c_grup="ME"                                                          '+
      '     inner join tractaments t on i.c_tractament=t.c_tractament                                 '+
       '     inner join codicamps c on m.t_doc=c.c_codi and c.tipuscodi="HCCC.TIPUS_DOC"                                       '+
      '     left join codiicd ci on t.c_diagnosticingres=ci.c_icd                                                            ';

   wheretexto:=' where      upper(d.institucion) like "%GUTTMANN%" and d.ldate>="TODAY"  and (d.estado_publica_hccc is null or d.estado_publica_hccc="") ';

   wheretextoantic:='where    upper(d.institucion) like "%GUTTMANN%"  and (d.estado_publica_hccc is null or d.estado_publica_hccc="")';
   orden:='order by ldate';
   titulos:='';
   borderstyle:=forms.bsnone;
   botonmuestramemos.Visible:=true;
   dbgrid1xlt.OnDblClick:=vistaimagen2;
   Align:=alclient;
   left:=1;
   top:=1;
   panel1xl.visible:=true;
   show;
   ejecutasql;
  end; // 1 with liststudes



listtemp:=tconsultaform.create(panel4);
with listtemp do
  begin //1
   parent:=panel4;
   botonmuestramemos.Visible:=false;
   qconsulta.RequestLive:=true;
   dbgrid1xlt.DefaultDrawing:=false;
   dbgrid1xlt.AllowedOperations:=[alopUpdateEh];
   dbgrid1xlt.OnDrawColumnCell:=DBGridEh1DrawColumnCell;
   dbgrid1xlt.OnDblClick:=DBGridEh1DblClick;
   dbgrid1xlt.DataSource.DataSet.BeforePost:=beforepostdata;
   dbgrid1xlt.DataSource.DataSet.afterPost:=afterpostdate;
   dbgrid1xlt.OnKeyPress:=DBGrid1xltKeyPress;
   botonmuestramemos.Visible:=true;
   baseinterna:='interna';
   sqltexto:=' select c_historia,c_intercon,OK,id_paciente,nombre_paciente,datarec,data_dicom,bodypart,institucion,modality,log,tipo_movimiento,studyuid,instanceuid,id from dicomlog2';

   wheretexto:='  where    ( (ok="T"  )  or  (OK="N" and "TODAY"-datarec<2 ) ) and tipo_movimiento="FILEIMPORTED"   ';
   wheretextoantic:='';
   orden:=' order by datarec ';
   titulos:='';
   borderstyle:=forms.bsnone;
   Align:=alclient;
   left:=1;
   top:=1;
   panel1xl.visible:=true;
   show;
   ejecutasql;
   if not (TeDretAccesram('100',false,false)) then
     for jl:=0 to dbgrid1xlt.Columns.Count-1 do
         if (jl>1)  then DBGrid1xlt.Columns[jl].ReadOnly:=true;

  end; // 1 with listtemp

  end; // si es 100

listdicomris:=tconsultaform.create(paneldicomris);
with listdicomris do
  begin //1
   parent:=paneldicomris;
   botonmuestramemos.Visible:=TeDretAccesram('100',false,false);
   qconsulta.RequestLive:=true;
   dbgrid1xlt.DefaultDrawing:=false;
   dbgrid1xlt.OnDrawColumnCell:=DBGridEh1DrawColumnCellDICOMRIS;
   dbgrid1xlt.OnDblClick:=DBGridDICOMRISDblClick;
   dbgrid1xlt.AllowedOperations:=[alopUpdateEh];
   dbgrid1xlt.DataSource.DataSet.BeforeEdit:=antesedit;
   dbgrid1xlt.DataSource.DataSet.BeforePost:=beforepostdata;
   dbgrid1xlt.DataSource.dataset.Beforedelete:=datasetdicomrisBeforeDelete;
   dbgrid1xlt.DataSource.dataset.Beforeinsert:=datasetdicomrisBeforeinsert;
   DBGrid1xlt.OnColExit:=salidacolumna;
   baseinterna:='interna';
if not (TeDretAccesram('100',false,false)) then
   begin
   sqltexto:='Select d.ID, d.DATA, d.STUDYDATE, d.C_TRANS, d.C_HISTORIA,  d.C_INTERCON,d.PATIENTID,'+
   ' d.ACCESSIONNUMBER, d.STATUS, d.STUDY_DESCRIPTION, d.MODALITY, d.LOG,d.OLD_PATIENTNAME  From dicomris d';
       wheretexto:=' where (c_trans = "NPR001NewStudy" or c_trans="NRP002PatientStudiesDivision" or c_trans="HC3_PUBLICA" or c_trans="NRP007ProcedureScheduled") and d.data>''TODAY''-10' ;
   wheretextoantic:='where (c_trans = "NPR001NewStudy" or c_trans="NRP002PatientStudiesDivision")'
   end
   else
   begin
   sqltexto:='Select d.ID, d.DATA, d.STUDYDATE, d.C_TRANS, d.C_HISTORIA,  d.C_INTERCON,d.PATIENTID,'+
   ' d.ACCESSIONNUMBER, d.STATUS, d.STUDY_DESCRIPTION, d.MODALITY, d.LOG, d.OLD_PATIENTNAME,              '+
   ' d.REINTENTOS, d.NEW_C_HISTORIA, d.NEW_C_INTERCON,              '+
   ' d.CLOUD_DELETE, d.STUDYINSTANCEUID, d.CODIGO_AFILI_CREUBLANCA,       '+
   ' d.CODI_DOCUMENT_HCC                                                              '+
   'From dicomris d';
   wheretexto:='where d.data>"TODAY"-30';
   wheretextoantic:='';
   orden:='order by id';
   botonedit.Visible:=true;
   end;

   orden:=' order by data';
   titulos:='';
   borderstyle:=forms.bsnone;
   Align:=alclient;
   left:=1;
   top:=1;
   panel1xl.visible:=true;
   show;
   ejecutasql;
if not (TeDretAccesram('100',false,false)) then
     for jl :=0 to dbgrid1xlt.Columns.Count-1 do
        begin
        micampo:=dbgrid1xlt.Columns.Items[jl].FieldName;
        if(micampo<>'C_INTERCON') and (micampo<>'C_HISTORIA') then // solo permite editar historia e interconsulta a no admin
          dbgrid1xlt.Columns.Items[jl].ReadOnly:=true;
        end;

  end; // 1 with listtemp


end;

procedure Timportacd.SpeedButton1Click(Sender: TObject);
begin
if JvSelectDirectory1.Execute then
  destinoedit.text:=JvSelectDirectory1.Directory;
end;

procedure Timportacd.Button1Click(Sender: TObject);
var
miq:tquery;
rutaini,l1,l2:string;
miconfig:tstringlist;
dircopia:string;
bm1: TBitmap;
dtset:tdicomdataset;
l:integer;
begin

if (liststudies.dbgrid1xlt.SelectedRows.count=0) then
  begin //1
  if  (MessageDlg('No hay ninguna seleccionada, importar todas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    liststudies.dbgrid1xlt.SelectedRows.SelectAll
   else
     exit; // si no quiere hacerlas todas se va
  end; //1

 with wFichaAccessindata do
    begin
    if usuariactiu.desc='' then CanviUsuariActiu;
    if not (TeDretMetge(usuariactiu.Codi,[54],false)) or (usuariactiu.desc='') then
      begin // si no tiene derecho de dicom extendido
      showmessage(' No esta autorizada');
      application.terminate;
      end // si no tiene derecho de dicom extendido
     else
     auditoriahistorias(0,0,0,'di');
    end;


if destinoedit.text='' then
  begin
  showmessage('especifique el directorio');
  destinoedit.setfocus;
  exit;
  end
  else
  if not directoryexists(destinoedit.text) then createdir(destinoedit.text);

miq:=tquery.create(application);
miq.databasename:='interna';



with liststudies do
  begin //!
  qconsulta.First;
  barratiempo.visible:=True;
  barratiempo.Max:=dbgrid1xlt.SelectedRows.count;
  barratiempo.Min:=1;
  barratiempo.Step:=1;
  barratiempo.Position:=1;
  with miq do
    begin //2



// 1/6/2012 permite seleccionar algunas imagenes de la lista
// si no se marca ninguna las coge todas


    for l:=0 to dbgrid1xlt.SelectedRows.count-1  do
      begin //3

      dbgrid1xlt.datasource.dataset.GotoBookmark(pointer(dbgrid1xlt.SelectedRows.Items[l]));

      close;
      sql.text:='select * from dicomimages where studyuid=:studyuid and c_historia=:historia';
      parambyname('studyuid').asstring:=dbgrid1xlt.datasource.dataset['studyuid'];
      parambyname('historia').AsInteger:=dbgrid1xlt.datasource.dataset['num_hist'];
      open;

      if miq['c_historia']<>null then



         while not eof do
           begin //4

           dircopia:=destinoedit.Text+'\HIST'+miq.fieldbyname('c_historia').asstring;
           cambia('\\','\',dircopia);

           if not directoryexists(dircopia) then createdir(dircopia);

           if not fileexists(dircopia+'\autorun .inf') and not checkbmp.Checked then
              begin //1m
              copyfile(pchar(extractfiledir(application.exename)+'\autorun.inf'),pchar(dircopia+'\autorun.inf'),false);
              miconfig:=TStringList.create;
              miconfig.LoadFromFile(dircopia+'\autorun.inf');
              miconfig.Strings[1]:='open=ezdicomuid.exe "dicom" "'+dbgrid1xlt.datasource.dataset['nomcomplet']+'"';
              deletefile(dircopia+'\autorun.inf');
              miconfig.SaveToFile(dircopia+'\autorun.inf');
//              FileSetAttr(dircopia+'\autorun.inf',+faHidden);
              end; //1m

           if not fileexists(dircopia+'\ezdicomuid.exe') and not checkbmp.Checked then
              copyfile(pchar('g:\bin\dicom\ezdicomuid.exe'),pchar(dircopia+'\ezdicomuid.exe'),false);

           if not fileexists(dircopia+'\nic.dll') and not checkbmp.Checked then
              copyfile(pchar(extractfiledir(application.exename)+'\nic.dll'),pchar(dircopia+'\nic.dll'),false);



           TestDcmFileDir(miq,rutaini);
           // si no tiene la unidad Z bien
           if not DirectoryExists(rutaini) then
             begin  //1
  winexec('net use w: /delete',sw_hide);
  sleep(1000);
  winexec('net use w: \\10.168.102.150\dicompacs /persistent:no',sw_hide);
  sleep(5000);
             end;  //1


           if FileExists(rutaini+miq['seriesuid']+'\'+miq['instanceuid']+'.dcm') then
             l1:=rutaini+miq['seriesuid']+'\'+miq['instanceuid']+'.dcm'
           else
            if fileexists(rutaini+miq['seriesuid']+'\'+miq['instanceuid']) then
              l1:=rutaini+miq['seriesuid']+'\'+miq['instanceuid']
           else
             begin
             // no encuentra el fichero origen y salta
             alertafallo.MessageText:='imagen no encontrada hist.'+inttostr(miq['c_historia']) +' num. imagen: '+miq['instanceuid']+' num. serie: '+miq['seriesuid'];
             alertafallo.Execute;
             mandaerror(self,errorfalso,'imagen no encontrada hist.'+inttostr(miq['c_historia']) +' num. imagen: '+miq['instanceuid']+' num. serie: '+miq['seriesuid'],false);
             next;
             continue;

             end;



             if checkbmp.Checked then
               begin
              if not DirectoryExists(dircopia+'\jpg') then   CreateDir(pchar(dircopia+'\jpg'));
               l2:=dircopia+'\jpg\'+'\'+miq['instanceuid']+'.jpg';
               end
             else
               begin
               if not DirectoryExists(dircopia+'\dicom') then   CreateDir(pchar(dircopia+'\dicom'));
               l2:=dircopia+'\dicom\'+miq['seriesuid']+'\'+miq['instanceuid']+'.dcm';
              if not DirectoryExists(dircopia+'\dicom\'+miq['seriesuid']) then
                    CreateDir(dircopia+'\dicom\'+miq['seriesuid']);
               end;


           try

           // 01/06/2012  se pone posibilidad de importarlo en formato bmp

           if not checkbmp.Checked then CopyFile(pchar(l1),pchar(l2), false)
           else
             begin //2 si checkbmp
             bm1 := TBitmap.Create;
             dtset:=tdicomdataset.Create;
             dtset.LoadFromFile(l1);
             dtset.Attributes.ImageData.AssignToBitmap(bm1,false);
             with TJpegGraphic.Create do
               try
                 assign(bm1);
                 SaveToFile(l2);
               finally
                 Free;
               end; //JPEG try..finally}
             bm1.Free;
             dtset.free;
             end; //2 si checkbmp


           except
             alertafallo.MessageText:='error al copiar la imagen hist.'+inttostr(miq['c_historia']) +' num. imagen: '+miq['instanceuid']+' num. serie: '+miq['seriesuid'];
             alertafallo.Execute;
             mandaerror(self,errorfalso,'error al copiar la imagen hist.'+inttostr(miq['c_historia']) +' num. imagen: '+miq['instanceuid']+' num. serie: '+miq['seriesuid'],false);
           end;

           next;
           end;// 4
    
      barratiempo.stepit;
      application.ProcessMessages;
      end;//3
    end; //2
  end; //1
barratiempo.Visible:=false;
labeltiempo.Caption:='';
miq.free;

end;




function Timportacd.dameruta(midat: tdatetime): string;
var
miqui:tquery;
comando:string;
begin
result:='';
miqui:=tquery.create(application);
with miqui do
  begin
  databasename:='interna';
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
         comando:=trim(lowercase(miqui['commando_conecta']));
         if pos('net use',comando)>0 then
           begin //4
            winexec(pchar(copy(comando,1,10) + ' /delete '),sw_hide);
            sleep(5000);
           end; //4
           winexec(pchar(comando),sw_hide);
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
    mandaerror2(application,errorfalso,'No se encuentra ruta de imagen con data '+datetostr(midat),false,4);
    end;
  close;
  free;
end; // with miqui
end;


function Timportacd.TestDcmFileDir(AQuery: TDataset; var AImageDir: string): Boolean;
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
      str1 := adir + ImageType + '\' + IntToStr(y) + '\' + IntToStr(m) + '\' + IntToStr(d) + '\' +
        ('HIST'+inttostr(aquery['c_historia']))+'\'+AQuery.FieldByName('STUDYUID').AsString + '\';
    end
    else
    begin
      str1 := adir + AQuery.FieldByName('STUDYUID').AsString + '\';
    end;
    if DirectoryExists(str1) then
    begin
      AImageDir := str1;
      Result := true;
    end
    else
    begin
      str1 := adir + AQuery.FieldByName('STUDYUID').AsString + '\';
      if DirectoryExists(str1) then
      begin
        AImageDir := str1;
        Result := true;
      end;
    end;
  end;
var
  date1: TDatetime;
  ImageType: string;
  f1: TField;
  midir:string;
begin
  begin
    f1 := AQuery.FindField('STUDIESDATE');
    if not assigned(f1) then
      f1 := AQuery.FindField('IMAGEDATE');

    date1 := f1.AsDatetime;

    midir:=dameruta(date1);
    ImageType := AQuery.FieldByName('IMAGETYPE').AsString;
    Result := TestDir(midir, date1, ImageType);
    if Result then
      exit;
  end;
end;


procedure Timportacd.trazaini(sender: tobject; e: exception);
begin
mandaerror(application,errorfalso,e.Message,false);
end;


procedure Timportacd.Button2Click(Sender: TObject);
var
losficheros:tstringlist;
hdrok,imageformatok:boolean;
midicomdata:dicomdata;
numfich,accesionnumberint:integer;
mistudyuid,dynstr,ident,CurrentDir1,imagefilename,datok,miruta:string;
numimg,numimgmal:integer;
studyuid,pname,patientid,seriesuid,instanceuid,imagetype,institucion,bodypart:string;
  date1: TDatetime;
qlogdicomTEMP:tquery;
pesoimagen:integer;
SearchRec: TSearchRec;


begin


 with wFichaAccessindata do
    begin
    if usuariactiu.desc='' then CanviUsuariActiu;
    if not (TeDretMetge(usuariactiu.Codi,[54],false)) or (usuariactiu.desc='') then
      begin // si no tiene derecho de dicom extendido
      showmessage(' No te dret per fer servir aquesta aplicació');
      application.terminate;
      end // si no tiene derecho de dicom extendido
     else
     auditoriahistorias(0,0,8,'di');
    end;

losficheros:=tstringlist.create;

miruta:=dameruta(now)+'\TEMP';

if not DirectoryExists(miruta) then
  begin  //1
  winexec('net use w: /delete',sw_hide);
  sleep(1000);
  winexec('net use w: \\10.168.102.150\dicompacs /persistent:no',sw_hide);
  sleep(5000);
  end;  //1



if not directoryexists(miruta) then createdir(miruta);
{dirhora:=formatdatetime('yyyymmddhhss',now);
if not directoryexists('c:\tempcddicom\'+dirhora) then createdir('c:\tempcddicom\'+dirhora);
winexec(pchar('xcopy '+temploadedit.text+' c:\tempcddicom\'+dirhora+' /s'),sw_normal);
 }

//buscaficheros('c:\tempcddicom\'+dirhora,'*.*',losficheros,true);


buscaficheros(temploadedit.text,'*.*',losficheros,true);
if losficheros.count=0 then
  begin
  losficheros.free;
  exit;
  end;

if button2.caption<>'Cancelar' then button2.caption:='Cancelar'
else
begin
parada:=true;
exit
end;

consultaEdit1.text:='';
consultaEdit2.text:='';
edittractament.text:='';

numimg:=0;
numimgmal:=0;
labelficherodicom.caption:='0';
labelficheronodicom.caption:='0';
Labeltotalfichero.caption:=inttostr(losficheros.count);

//tbarratiempo1.visible:=True;
tbarratiempo1.Min:=1;
tbarratiempo1.Step:=1;
tbarratiempo1.Position:=1;
tbarratiempo1.Max:=losficheros.count;
qlogdicomTEMP:=tquery.create(application);
qlogdicomTEMP.DatabaseName:='interna';
qlogdicomTEMP.RequestLive:=true;
for numfich:=0 to losficheros.count-1 do
  begin  //1
  ident:=losficheros.strings[numfich];
//  if pos('.exe',ident)>0 then continue;
//  if copy(ident,length(ident)-3,3) in ('exe','com','jpg','bmp','ico','txt','htm','html','pdf')) then continue;

if pos('DICOMDIR',uppercase(ident))>0 then
  begin
  inc(numimgmal,1);
  tbarratiempo1.stepit;
  application.ProcessMessages;
  labelficherodicom.caption:=inttostr(numimg);
  labelficheronodicom.caption:=inttostr(numimgmal);
  continue;
  end;


FindFirst(ExpandFileName(ident), faAnyFile, SearchRec);
pesoimagen:=round(searchrec.Size/1024);
if pesoimagen<10 then
  begin
  inc(numimgmal,1);
  tbarratiempo1.stepit;
  application.ProcessMessages;
  labelficherodicom.caption:=inttostr(numimg);
  labelficheronodicom.caption:=inttostr(numimgmal);
  continue;                                  
  end;
SysUtils.FindClose(SearchRec);




read_dicom_data(false,true,false,false,false,false,false,midicomdata,HdrOK, imageformatok, DynStr,ident);

if not hdrok then hdrok:=midicomdata.PatientName<>'NO NAME' ;


 if hdrok then
    begin //1
    inc(numimg,1);

    studyuid :=trim(midicomdata.studyuid);
    if midicomdata.accession=1 then accesionnumberint:=midicomdata.accesnum20_10
      else accesionnumberint:=midicomdata.accession;

    patientid:=trim(midicomdata.PatientID);
    pname:=midicomdata.PatientName;
    seriesuid:=trim(midicomdata.seriesuid);
    instanceuid:= trim(midicomdata.InstanceUID);

    if studyuid<> mistudyuid then
       begin  // 3
        datok:=copy(midicomdata.studydate,7,2)+'/'+copy(midicomdata.studydate,5,2)+'/'+copy(midicomdata.studydate,1,4);

          if strtodate(datok)>strtodate('01/01/1950') then
            date1:=strtodate(datok)
            else
              date1:=now;


          imagetype:=trim(midicomdata.imagetype);
          institucion:=trim(midicomdata.institution);
          bodypart:=midicomdata.bodypart;

      {    studydesc:=trim(midicomdata.studydesc);
          psex:=midicomdata.Patientsex;
          if Length(PatientID) > 20 then
            PatientID := Copy(PatientID, 1, 20);

          aid := inttostr(midicomdata.AcquNum);
          if aid = '' then
            aid := '1';           }


       mistudyuid:=studyuid;
        {
       if not tablamem.Locate('studyuid',studyuid,[]) then
         begin;
         tablamem.Insert;
         tablamem['studyuid']:=studyuid;
         tablamem['nombre']:=pname;
         tablamemc_intercon.AsInteger:=accesionnumberint;
         tablamemnomfich.asstring:=ExtractFilePath(ident);
         tablamem.Post;
         end; }

       with qlogdicomTEMP do
         begin
         SQL.text:='select * from dicomlog2 where studyuid='''+studyuid+'''';
         open;
         if qlogdicomTEMP['studyuid']<>null then   edit
            else insert;
         qlogdicomTEMP['studyuid']:=studyuid;
         qlogdicomTEMP['nombre_paciente']:=pname;
         Qlogdicomtemp['id_paciente']:=null;
         qlogdicomtemp['c_historia']:=null;
         qlogdicomtemp['c_intercon']:=null;
         qlogdicomTEMP['ok']:='T';
         qlogdicomTEMP['tipo_movimiento']:='FILEIMPORTED';
         qlogdicomTEMP['DATAREC']:=now;
         qlogdicomTEMP['DATA_DICOM']:=date1;
         qlogdicomTEMp['INSTITUCION']:=institucion;
         qlogdicomTEMp['MODALITY']:=imagetype;
         qlogdicomtemp['BODYPART']:=bodypart;
         post;
         end;

      end;  //3  if studyuid<> mistudyuid


        //       copia el fichero  ------------------------

          currentdir1:='';
          SetDir(CurrentDir1,miruta);

        if trim(studyuid)='' then showmessage('studyuid vacio');
          SetDir(CurrentDir1,studyuid);
        if trim(seriesuid)='' then showmessage('series uid vacio');
          SetDir(CurrentDir1,seriesuid);

         // 17/09/2012 quito poner el nombre del instanceuid, la funcion read_dicom_data
         // lee mal algunos numeros de imagen y pone el anterior.
         // se deja el nombre del fichero original.
         //     imagefilename := InstanceUID + '.dcm';

         imagefilename:=extractfilename(ident);

        if not DirectoryExists(currentdir1) then
           showmessage('no existe '+currentdir1);

          if CurrentDir1[Length(CurrentDir1)] <> '\' then
            CurrentDir1 := CurrentDir1 + '\';
          CurrentDir1 := CurrentDir1 + imagefilename;

      if FileExists(ident) and (not fileexists(currentdir1) or checkmachaca.Checked) then
       begin
        if not  CopyFile(pchar(ident),pchar(currentdir1), false) then
           begin
                   alertafallo.MessageText:='no se ha podido copiar '+ident+#13+#10+currentdir1;
                alertafallo.execute;
          end;
        end;

// fin de copiar fichero -----------------------------------------

    end  //2 if hddk
   else  // if not hdok si   no es dicom
     inc(numimgmal,1);

  tbarratiempo1.stepit;
  application.ProcessMessages;
  labelficherodicom.caption:=inttostr(numimg);
  labelficheronodicom.caption:=inttostr(numimgmal);
   if parada then
     begin
     losficheros.free;
     qlogdicomTEMP.free;
     button2.caption:='Importar de carpeta';
     parada:=false;
     tbarratiempo1.Visible:=false;
     exit;
     end;
  end; //for   1

// si no ha encontrado ninguna imagnes avisa si la ruta es correcta


tbarratiempo1.Visible:=false;

losficheros.free;
qlogdicomTEMP.free;
button2.caption:='Importar de carpeta';
parada:=false;

// mirar que se ha insertado un cd

//    http://www.clubdelphi.com/foros/showthread.php?t=42968

//quita solo lectura del todo el directorio
//winexec(pchar('attrib '+miruta+'\*.* -r /s /d'),sw_normal);


application.BringToFront;
alertafallo.MessageText:='Ha finalizado el proceso de importación, se han importado '+ inttostr(numimg)+' dichero dicom';
alertafallo.StyleOptions.DisplayDuration:=7000;
alertafallo.Execute;
listtemp.ejecutasql;
consultaEdit1.setfocus;
if numimg=0 then
   begin
   showmessage('No se han detectado imagenes dicom en esta ruta '+temploadedit.text+', comprueba si la ruta es correcta');
   temploadedit.Color:=clred;
   temploadedit.setfocus;
   end;

end;



procedure Timportacd.SetDir(var CurrentDir1:string;ADir: string);
  begin
  currentdir1:=trim(currentdir1);
    if ADir <> '' then
    begin
      if CurrentDir1 <> '' then
      begin
        if CurrentDir1[Length(CurrentDir1)] <> '\' then
          CurrentDir1 := CurrentDir1 + '\';
        CurrentDir1 := CurrentDir1 + ADir;
      end
      else
        CurrentDir1 := ADir;
      if not DirectoryExists(CurrentDir1) then
        if not CreateDir(CurrentDir1) then
          begin
          alertafallo.MessageText:='No se puede crear el directorio'+CurrentDir1;
          alertafallo.execute;
          end;
//          showmessage('No se puede crear el directorio'+CurrentDir1);
          //raise Exception.Create('Cannot create DIR' + CurrentDir1);
    end;
  end;


procedure Timportacd.Button3Click(Sender: TObject);
var
losficheros:tstringlist;
hdrok,imageformatok:boolean;
midicomdata:dicomdata;
dtset:tdicomdataset;
numfich,accesionnumberint,intbyt:integer;
mistudyuid,dynstr,ident,CurrentDir1,imagefilename,dirhora,miruta,miruta2,miti:string;
numimg,numimgmal,pesoimagen:integer;

  mifile:file of byte;

 InstanceUID, aid, PName, psex, ImageType, studyid,studydesc,institucion,bodypart, seriesuid, studyuid, PatientID, ImageType1: string;
  date1: TDatetime;
//  a1: TDicomAttribute;
  y, m, d: Word;

qbusca,qbusca2:tquery;

sopclassuid:string;
begin


qbusca:=tquery.create(application);
qbusca2:=tquery.create(application);
qbusca.DatabaseName:='interna';
qbusca2.DatabaseName:='interna';
qbusca.requestlive:=true;
qbusca.SQL.text:='select * from dicomlog2 where c_historia is not null and C_intercon is not null and ok=''T'' and studyuid is not null';
qbusca.open;
//if not (tablamem.Active) then tablamem.open;

if qbusca.recordcount<1 then
  begin
  qbusca.free;
  qbusca2.free;
  exit;
  end;
losficheros:=tstringlist.create;

// coge las rutas de la tabla de memoria

//tbarratiempo1.visible:=True;
tbarratiempo1.Min:=1;
tbarratiempo1.Step:=1;
tbarratiempo1.Position:=1;
tbarratiempo1.Max:=qbusca.recordcount;
//label3.Visible:=true;

while not qbusca.Eof do
  begin //1   while not qbusca.Eof

miruta:=dameruta(qbusca['datarec'])+'\TEMP';

if not DirectoryExists(miruta) then
  begin  //1
  winexec('net use w: /delete',sw_hide);
  sleep(1000);
  winexec('net use w: \\10.168.102.150\dicompacs /persistent:no',sw_hide);
  sleep(5000);
  end;  //1


buscaficheros(miruta+'\'+qbusca['studyuid'],'*.*',losficheros,true);
numimg:=0;
numimgmal:=0;
labelficherodicom.caption:='0';
labelficheronodicom.caption:='0';
Labeltotalfichero.caption:=inttostr(losficheros.count);




for numfich:=0 to losficheros.count-1 do
  begin  //1
  ident:=losficheros.strings[numfich];
  read_dicom_data(false,true,false,false,false,false,false,midicomdata,HdrOK, imageformatok, DynStr,ident);

  if hdrok then
    begin
    inc(numimg,1);

    studyuid :=trim(midicomdata.studyuid);

          aid:=inttostr(midicomdata.ImageNum);
          ImageType:=midicomdata.imagetype;
          imagetype:=trim(midicomdata.imagetype);
          studydesc:=trim(midicomdata.studydesc);
          institucion:=trim(midicomdata.institution);
          bodypart:=midicomdata.bodypart;
          seriesuid:=trim(midicomdata.seriesuid);
          instanceuid:= trim(midicomdata.InstanceUID);
          patientid:=trim(midicomdata.PatientID);
          pname:=midicomdata.PatientName;
          psex:=midicomdata.Patientsex;
          if Length(PatientID) > 20 then
            PatientID := Copy(PatientID, 1, 20);

          aid := inttostr(midicomdata.AcquNum);
          if aid = '' then
            aid := '1';

         if midicomdata.accession=1 then accesionnumberint:=midicomdata.accesnum20_10
           else accesionnumberint:=midicomdata.accession;


      // esta funcion no funciona solo guarda la cabecera dicom no guarda datos imagen
      // write_dicom(ident,midicomdata,intbyt,true);

       dtset:=tdicomdataset.Create;

       dtset.LoadFromFile(ident);

       dtset.Attributes.AddVariant($10,$20,qbusca['c_historia']);
       dtset.Attributes.AddVariant($8,$50,qbusca['c_intercon']);
       sopclassuid:=trim(dtset.Attributes.GetString($0008, $16));

      date1:=(dtset.attributes.Item[8, $20]).asdatetime[0];
      miruta2:=dameruta(date1);
      currentdir1:='';
      setdir(currentdir1,miruta2);
      DecodeDate(date1, y, m, d);
    //  SetDir(dameruta(date1));
      //
      SetDir(currentdir1,midicomdata.imagetype);
      SetDir(currentdir1,IntToStr(y));
      SetDir(currentdir1,IntToStr(m));
      SetDir(currentdir1,IntToStr(d));
        //26/10/2006 se añade directorio de historia
      SetDir(currentdir1,TRIM('HIST'+inttostr(qbusca['c_historia'])));
      SetDir(currentdir1,TRIM(midicomdata.studyuid));
      SetDir(currentdir1,TRIM(midicomdata.seriesuid));
      imagefilename := TRIM(midicomdata.InstanceUID) + '.dcm';
      currentdir1:=currentdir1+'\'+imagefilename;

      qbusca2.Close;
      qbusca2.sql.text:='select * from intercon where c_historia='+inttostr(qbusca['c_historia'])+
         ' and c_intercon='+inttostr(qbusca['c_intercon']);
      qbusca2.open;
      if qbusca2['c_historia']=null then
        begin
        qbusca.edit;
        qbusca.fieldbyname('log').asstring:=miti+'datos mal de c_historia y c_intercon';
        qbusca.Post;
        continue;
        end;

       dtset.SaveToFile(currentdir1, true, 8194, 100,false,true);
       assignfile(mifile,currentdir1);
       reset(mifile);
       pesoimagen:=round(filesize(mifile)/1024);
       closefile(mifile);
       if pesoimagen<10 then
         begin
         miti:=qbusca.fieldbyname('log').asstring;
         qbusca.edit;
         qbusca.fieldbyname('log').asstring:=miti+'no se puede traspasar '+currentdir1;
         qbusca.Post;
         continue;
         end;

       AppendImage(qbusca['c_historia'],qbusca['c_intercon'],dtset,inttostr(midicomdata.accesnum20_10), pSex,
          date1, studyuid,studydesc,institucion,bodypart,seriesuid, InstanceUID, ImageType, aid,midicomdata.imagetype,pesoimagen,sopclassuid);

       dtset.free;

    end //hrok cabecera ok
   else
     inc(numimgmal,1);


  labelficherodicom.caption:=inttostr(numimg);
  labelficheronodicom.caption:=inttostr(numimgmal);
  application.ProcessMessages;
  end; //for   1
  qbusca.edit;
  if numimg>0 then qbusca['ok']:='S'
    else  qbusca['ok']:='N';
  qbusca.Post;
 if studyuid<>'' then
  Deltree(miruta+'\'+studyuid);
 tbarratiempo1.stepit;
 qbusca.Next;
 application.ProcessMessages;
 end; // 1 while not  while not qbusca.Eof

qbusca.free;
qbusca2.Free;

tbarratiempo1.Visible:=false;
//dtset.free;
losficheros.free;
listtemp.ejecutasql;

end;



function timportacd.AppendImage(c_historia,c_intercon:integer;a2:tdicomdataset; studyid, pSex: string;
  date1: TDatetime; studyuid,studydesc,institucion,bodypart,seriesuid, InstanceUID, ImageType, aid: string; var AModility: string;imagesize:integer;sopclassuid:string=''): TDatetime;
var
  Query1: TQuery;
  str1: string;
  da1:tdicomattribute;
  a1:tdicomattributes;
begin

  a1:=a2.Attributes;
  Query1 := TQuery.Create(nil);
  try
    Query1.DatabaseName := 'interna';
    Result := Date1;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT * FROM DICOMSTUDIES   WHERE studyuid = ''' + studyuid + '''');


    Query1.Open;
    if Query1.Bof and Query1.Eof then
    begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('INSERT into DICOMSTUDIES ' +
        '(STUDYUID,P_SEX,c_historia,c_intercon,BSTATE,LDATE,STUDYID,study_description,'+
        'institucion,STUDIES_IMAGE_TYPE)');
      Query1.SQL.Add('values(:STUDYUID,:P_SEX,:c_historia,:c_intercon,1,:LDATE,:STUDYID,'+
      ':studydesc,:institucion,:IMAGE_TYPE)');
      Query1.ParamByName('STUDYUID').AsString := studyuid;
      Query1.ParamByName('P_SEX').AsString := pSex;
      Query1.ParamByName('c_historia').asinteger := c_historia;
      query1.ParamByName('c_intercon').AsInteger:=c_intercon;
      Query1.ParamByName('LDATE').AsDatetime := date1;
      Query1.ParamByName('STUDYID').AsString := studyid;
      Query1.ParamByName('IMAGE_TYPE').AsString := ImageType;  //studydesc,institucion,bodypart
      query1.ParamByName('studydesc').asstring:=studydesc;
      query1.ParamByName('institucion').asstring:=institucion;


      try
        Query1.ExecSQL;
      except
        on e: Exception do

      end;
      Query1.Close;
      AModility := ImageType;
    end
    else
    begin  //2
      //26/11/2008 si envian de nuevo actualiza los datos de cabecera
      // por si se han equivocado al asignar la interconsulta por otro del mismo paciente

      Result := Query1.FieldByName('LDATE').AsDatetime;
      AModility := Query1.FieldByName('STUDIES_IMAGE_TYPE').AsString;

      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.text:='update dicomstudies set c_intercon=:c_intercon '+
      ' where studyuid=:STUDYUID';

      Query1.ParamByName('STUDYUID').AsString := studyuid;
      query1.ParamByName('c_intercon').AsInteger:=c_intercon;
      try
        Query1.ExecSQL;
      except
        on e: Exception do

      end;

    end;  //2
    //      Result := Query1.FieldByName('LDATE').AsDatetime;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT * FROM DICOMSERIES  WHERE SERIESUID = ''' + seriesuid + '''');


    Query1.Open;
    if Query1.Bof and Query1.Eof then
    begin
      Query1.Close;
      Query1.SQL.Clear;

      Query1.SQL.Add('INSERT into DICOMSERIES '
        + '(STUDYUID,SERIESUID,SERIES_IMAGETYPE,SERIES_DESC,SERIES_DATE,SOPCLASSUID)'
        + 'values(:STUDYUID,:SERIESUID,:SERIES_IMAGETYPE,:SERIES_DESC,:SERIES_DATE,:sopclassuid)');

      Query1.ParamByName('STUDYUID').AsString := studyuid;
      Query1.ParamByName('SERIESUID').AsString := seriesuid;

      Query1.ParamByName('SERIES_IMAGETYPE').AsString := AModility; //ImageType;
      Query1.ParamByName('SERIES_DESC').AsString := a1.GetString($0008, $103E);
      query1.parambyname('sopclassuid').asstring := sopclassuid;

      da1 := a1.Item[$8, $0021];
      if assigned(da1) and (da1.GetCount > 0) then
        Query1.ParamByName('SERIES_DATE').AsDatetime := da1.AsDatetime[0]
      else
        Query1.ParamByName('SERIES_DATE').AsDatetime := now;
      try
        Query1.ExecSQL;
      except
        on e: Exception do

      end;
      Query1.Close;
    end;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT * FROM DICOMIMAGES  WHERE INSTANCEUID = ''' + InstanceUID + '''');
    Query1.Open;
    if Query1.Bof and Query1.Eof then
    begin  //1
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('INSERT into DICOMIMAGES (STUDYUID,SERIESUID,INSTANCEUID,' +
        'IMGNO,IMAGETYPE,IMAGEDATE,c_historia,SIZEX,SIZEY,PHOTOMETRIC,BITS,ABITS,BITS_PER_SAMPLE,STUDIESDATE,bodypart,imagesize)');
      Query1.SQL.Add('values(:STUDYUID,:SERIESUID,:INSTANCEUID,:IMGNO,:IMAGE_TYPE,:LDATE,:c_historia,' +
        ':SIZEX,:SIZEY,:PHOTOMETRIC,:BITS,:ABITS,:BITS_PER_SAMPLE,:STUDIESDATE,:bodypart,:imagesize)');


      Query1.ParamByName('STUDYUID').AsString := studyuid;
      Query1.ParamByName('SERIESUID').AsString := seriesuid;
      Query1.ParamByName('INSTANCEUID').AsString := InstanceUID;
      Query1.ParamByName('IMGNO').AsInteger := StrToInt(aid);
      Query1.ParamByName('IMAGE_TYPE').AsString := AModility; //ImageType;
      Query1.ParamByName('LDATE').AsDatetime := date1;
      Query1.ParamByName('c_historia').Asinteger := c_historia;
      Query1.ParamByName('SIZEX').AsInteger := a1.getInteger($28, $10);
      Query1.ParamByName('SIZEY').AsInteger := a1.getInteger($28, $11);
      Query1.ParamByName('BITS').AsInteger := a1.getInteger($28, $101);
      Query1.ParamByName('ABITS').AsInteger := a1.getInteger($28, $100);
      Query1.ParamByName('BITS_PER_SAMPLE').AsInteger := a1.getInteger($28, 2);
      Query1.ParamByName('STUDIESDATE').AsDatetime := date1;
      Query1.ParamByName('PHOTOMETRIC').AsString := a1.getString($28, 4);
      query1.ParamByName('bodypart').asstring:=bodypart;
      query1.ParamByName('imagesize').asinteger:=imagesize;

      try
        Query1.ExecSQL;
      except
        on e: Exception do

      end;
      end //1
      else
      begin //2
      query1.sql.text:='update dicomimages set IMGNO=:IMGNO,IMAGETYPE=:IMAGE_TYPE'+
      ',IMAGEDATE=:LDATE,SIZEX=:SIZEX,SIZEY=:SIZEY,BITS=:BITS'+
      ',BITS_PER_SAMPLE=:BITS_PER_SAMPLE,ABITS=:ABITS,STUDIESDATE=:STUDIESDATE,PHOTOMETRIC=:PHOTOMETRIC'+
      ',BODYPART=:BODYPART,IMAGESIZE=:IMAGESIZE WHERE INSTANCEUID=:INSTANCEUID';
     Query1.ParamByName('IMGNO').AsInteger := StrToInt(aid);
      Query1.ParamByName('IMAGE_TYPE').AsString := AModility; //ImageType;
      Query1.ParamByName('LDATE').AsDatetime := date1;
      Query1.ParamByName('SIZEX').AsInteger := a1.getInteger($28, $10);
      Query1.ParamByName('SIZEY').AsInteger := a1.getInteger($28, $11);
      Query1.ParamByName('BITS').AsInteger := a1.getInteger($28, $101);
      Query1.ParamByName('ABITS').AsInteger := a1.getInteger($28, $100);
      Query1.ParamByName('BITS_PER_SAMPLE').AsInteger := a1.getInteger($28, 2);
      Query1.ParamByName('STUDIESDATE').AsDatetime := date1;
      Query1.ParamByName('PHOTOMETRIC').AsString := a1.getString($28, 4);
      query1.ParamByName('bodypart').asstring:=bodypart;
      query1.ParamByName('imagesize').asinteger:=imagesize;
      Query1.ParamByName('INSTANCEUID').AsString := InstanceUID;

      try
        Query1.ExecSQL;
      except
        on e: Exception do

      end;

      end;  //2 si ya esta registrada la imagen
      Query1.Close;
  finally
    Query1.Free;
  end;
end;


procedure Timportacd.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
mfield:string;
begin

with (sender as tdbgrideh) do
  begin
mfield:=Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName;
IF ((mfield='C_HISTORIA') or (mfield='C_INTERCON') ) and (state=[gdselected..gdfocused])then
     begin
     Canvas.brush.Color := claqua;
     canvas.FillRect(rect);
     canvas.font.color:=clblack;
     canvas.textout(rect.left+2,rect.top+2,selectedfield.text);
     exit
     end;
    end; //with

(sender as tdbgrideh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Timportacd.DBGridEh1DrawColumnCellDICOMRIS(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
mfield:string;
begin

with (sender as tdbgrideh) do
  begin
mfield:=Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName;
IF  not Columns.Items[(sender as tdbgrideh).SelectedIndex].readonly and 
((mfield='C_HISTORIA') or (mfield='C_INTERCON') or (mfield='NEW_C_HISTORIA') or (mfield='NEW_C_INTERCON') or (mfield='C_TRANS') ) and (state=[gdselected..gdfocused]) then
     begin
     Canvas.brush.Color := claqua;
     canvas.FillRect(rect);
     canvas.font.color:=clblack;
     canvas.textout(rect.left+2,rect.top+2,selectedfield.text);
     exit
     end ;   

    end;


IF ( (mfield<>'C_TRANS')) and  (state=[gdselected..gdfocused]) then
  panelayudastatus.Visible:=false;

with listdicomris do
  begin

with dbgrid1xlt do
    begin
   // aqui pone los inactivos en gris
  if (qconsulta.active) and (qconsulta.recordcount>0) then
     begin

     if (canvas.brush.color<>clhighlight) then
       begin
//        canvas.brush.color:=$009297FE;
     if pos('STATUS',qconsulta.sql.text)>0 then
   if (qconsulta['status']='E') then canvas.brush.color:=$00FFFF80
       else if (qconsulta['status']='F') then canvas.brush.color:=$00C6FFC6 ;
       end;
    end;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end; // with dbgrid1xlt

end; // with estudios




//(sender as tdbgrideh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Timportacd.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
  114: // si pulsa F3
   begin
    if (sender as tdbgrideh).SelectedIndex=0  then
       llamaconsulta('interna','select num_hist,nomcomplet from filiacio',
         ' order by nomcomplet','','num_hist','',sender);
   if  ((sender as tdbgrideh).SelectedIndex=1)  and   ((sender as tdbgrideh).Columns.Items[0].Field.asstring<>'') then
        llamaconsulta('interna','select c_intercon,c_tipus,data1,c_metge1,solicita from intercon','',
         'where c_historia='+(sender as tdbgrideh).Columns.Items[0].Field.asstring+' and c_tipus in (''UROS'',''ECOS'',''RX'',''PROVESP'')'
         ,'c_intercon','',sender);
   end;
  13: // si pulsa enter
   begin
     if (listtemp.DBGrid1xlt.SelectedRows.Count>1) then
   end;
end; // endcase
end;

procedure Timportacd.guardaentodos;
begin
// guarda c_historia y c_intercon en todas las filas con el mismo nombre y fecha


end;

procedure Timportacd.DBGridEh1DblClick(Sender: TObject);
var
fichero:string;

begin
   if (sender as tdbgrideh).Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='C_HISTORIA'  then
       llamaconsulta('interna','select nomcomplet,num_hist from filiacio',
         ' order by nomcomplet','','num_hist','',sender);
   if  ((sender as tdbgrideh).Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='C_INTERCON')  and
      ((sender as tdbgrideh).DataSource.DataSet.fieldbyname('C_HISTORIA').asstring<>'') THEN

//      ((sender as tdbgrideh).Columns.Items[0].Field.asstring<>'') then
        llamaconsulta('interna','select c_intercon,c_tipus,data1,c_metge1,solicita from intercon','',
         'where c_historia='+(sender as tdbgrideh).DataSource.dataset.fieldbyname('C_HISTORIA').asstring+' and c_tipus in (''UROS'',''ECOS'',''RX'',''PROVESP'')'
         ,'c_intercon','',sender);

if ((sender as tdbgrideh).Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName<>'C_HISTORIA') and
((sender as tdbgrideh).Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName<>'C_INTERCON')  then
  begin //1
  if fileexists('ezdicomuid.exe') then fichero:='ezdicomuid.exe "' else
      fichero:='g:\bin\dicom\ezdicomuid.exe "';

    (winexec(pchar(fichero+listtemp.qconsulta.fieldbyname('studyuid').asstring
       +'"'),sw_normal))

  end //1

end;

procedure Timportacd.DBGridDICOMRISDblClick(Sender: TObject);
var
condi,accession:string;
begin

With (sender as tdbgrideh) do
  begin


 if Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='LOG'  then
   begin
   if  (vartype((sender as tdbgrideh).DataSource.dataset['c_intercon'])>1) then
     accession:=(sender as tdbgrideh).DataSource.dataset.fieldbyname('c_intercon').asstring
     else
     accession:=(sender as tdbgrideh).DataSource.dataset.fieldbyname('accessionnumber').asstring;
   shellexecute(application.handle,'open',pchar(
   'https://gutpacs.guttmann.com/RVDeploy/index.html?OpenModel=RIS&ConfSrv=https://gutpacs.guttmann.com/raimweb/&ConfUsr=raimviewer&ConfPass=gutman625x&RefSrv=RS_GUTPACS&User='+ID_LOGIN+'&AccessionNumber='+
         accession),'','',SW_NORMAL);
   end;

   if  (Columns.Items[(sender as tdbgrideh).SelectedIndex].ReadOnly) or
      ( not (TeDretAccesram('100',false,false)) and ((sender as tdbgrideh).DataSource.dataset.fieldbyname('status').asstring='F') )
         then exit;



   if  Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='C_HISTORIA'  then
       llamaconsulta('interna','select nomcomplet,num_hist from filiacio',
         ' order by nomcomplet','','num_hist','',sender);

   if (datasource.dataset.FieldByName('C_HISTORIA').asinteger<>0) AND (Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='C_INTERCON')  and
      (DataSource.DataSet.fieldbyname('C_HISTORIA').asstring<>'') THEN
        begin
           if (TeDretAccesram('109',false,true)) then
          condi:=' where c_historia='+(sender as tdbgrideh).DataSource.dataset.fieldbyname('C_HISTORIA').asstring+' and c_tipus in (''UROS'',''ECOS'',''RX'',''PROVESP'')  and estat<>80'
           else
           if  (TeDretAccesram('234',false,true)) and  (TeDretAccesram('235',false,true)) then
              condi:='where c_historia='+(sender as tdbgrideh).DataSource.dataset.fieldbyname('C_HISTORIA').asstring+' and c_tipus in ("RX","PROVESP")  and estat<>80'
            else
            if  (TeDretAccesram('235',false,true)) then
             condi:='where c_historia='+(sender as tdbgrideh).DataSource.dataset.fieldbyname('C_HISTORIA').asstring+' and c_tipus in ("PROVESP") and estat<>80'
              else
                condi:='where c_historia='+(sender as tdbgrideh).DataSource.dataset.fieldbyname('C_HISTORIA').asstring +' and c_tipus in ("NOT")  and estat<>80';
        llamaconsulta('interna','select c_intercon,c_tipus,data1,data_prevista,c_metge1,solicita from intercon','',
         condi,'c_intercon','',sender);
        end;

   if Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='NEW_C_HISTORIA'  then
       llamaconsulta('interna','select nomcomplet,num_hist from filiacio',
         ' order by nomcomplet','','num_hist','',sender);

   if  (Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='NEW_C_INTERCON')  and
      ((sender as tdbgrideh).DataSource.DataSet.fieldbyname('NEW_C_HISTORIA').asstring<>'') THEN
        llamaconsulta('interna','select c_intercon,c_tipus,data1,data_prevista,c_metge1,solicita from intercon','',
         ' where c_historia='+(sender as tdbgrideh).DataSource.dataset.fieldbyname('NEW_C_HISTORIA').asstring+' and c_tipus in (''UROS'',''ECOS'',''RX'',''PROVESP'')'
         ,'c_intercon','',sender);


   if Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='C_TRANS'  then
       llamaconsulta('interna','select c_codi,n_codi from codicampsalfa where tipuscodi="DICOMRIS_C_TRANS"',
         ' order by n_CODI,n_codi2','','n_CODI','',sender);


   if  (sender as tdbgrideh).Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='STATUS'  then
      begin
      panelayudastatus.Visible:=true;
      panelayudastatus.BringToFront;
      end;

  end; //with

end;

procedure Timportacd.beforepostdata(midata: tdataset);
var
qmic:tquery;
mgrid:tdbgrideh;
begin
mgrid:=listtemp.DBGrid1xlt;


//comprueba historia e interconsulta

qmic:=tquery.create(application);
with qmic do
 begin //2
 databasename:='interna';
if (midata.FieldByName('c_historia').asstring<>'') and (midata.FieldByName('c_intercon').asstring<>'') then
 begin //1
 sql.text:='select c_historia from intercon where c_intercon=:c_intercon and c_historia=:c_historia';
 parambyname('c_historia').asinteger:=midata['c_historia'];
 parambyname('c_intercon').asinteger:=midata['c_intercon'];
 open;
 if qmic.recordcount=0 then
  begin
  showmessage('historia e interconsuta malament');
  abort;
  free;
  exit;
  end;
  end; //1

   free;

  end;//2

salidacolumna(listdicomris.DBGrid1xlt);


end;


procedure Timportacd.afterpostdate(midata: tdataset);
var
qmic:tquery;
mgrid:tdbgrideh;
begin
mgrid:=listtemp.DBGrid1xlt;


//comprueba historia e interconsulta

qmic:=tquery.create(application);
with qmic do
 begin //2
 databasename:='interna';

if (mgrid.columns[0].Field.asstring<>'') and (mgrid.Columns.Items[1].Field.asstring<>'')  then
 begin //1
 sql.Text:='select * from dicomlog2 where nombre_paciente='''+mgrid.Columns[2].Field.AsString+''' and f_date0(data_dicom)=:midatadicom and institucion='''+mgrid.Columns[9].Field.AsString+'''';
 ParamByName('midatadicom').AsDate:=mgrid.Columns[4].Field.AsDateTime;
 open;
 if qmic.recordcount>1 then
   begin

   if messageDlg('Voleu possar les dades a tots els estudis, aquest pacient?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin //18
         sql.text:='update dicomlog2 set c_intercon='+mgrid.columns[1].Field.asstring+'  , c_historia='+mgrid.columns[0].Field.asstring
         +'where nombre_paciente='''+mgrid.Columns[2].Field.AsString+''' and f_date0(data_dicom)=:midatadicom and institucion='''+mgrid.Columns[9].Field.AsString+'''';
          ParamByName('midatadicom').AsDate:=mgrid.Columns[4].Field.asdatetime;
         execsql;
         listtemp.ejecutasql;
         end; //18
   end;

   end; //1
   free;
   end;//2

end;

procedure Timportacd.consultaEdit2Enter(Sender: TObject);
begin
if consultaedit1.text='' then consultaedit1.SetFocus;
   if (TeDretAccesram('109',false,false)) then
      consultaedit2.miwhere.Text:='where c_historia='+consultaedit1.text
      else
    if  (TeDretAccesram('234',false,true)) and  (TeDretAccesram('235',false,true)) then
        consultaedit2.miwhere.Text:='where c_historia='+consultaedit1.text
        +' and c_tipus in ("RX","PROVESP")'
      else
      if  (TeDretAccesram('235',false,true)) then
       consultaedit2.miwhere.Text:='where c_historia='+consultaedit1.text
        +' and c_tipus in ("PROVESP")'
        else
             consultaedit2.miwhere.Text:='where c_historia='+consultaedit1.text
        +' and c_tipus in ("NOT")';





end;

procedure Timportacd.Button4Click(Sender: TObject);
var
miq:tquery;
coordi:string;
begin
if consultaedit1.Text='' then
  begin
  consultaedit1.SetFocus;
  exit;
  end;

if not (TeDretAccesram('234',false,true)) and  not  (TeDretAccesram('235',false,true)) then
  begin
  showmessage('No te dret per asignar imatges a interconsultas');
  end;


if not edittractament.visible then
  begin
  edittractament.Visible:=true;
  labeltractament.Visible:=true;
  Button4.Left:=496;
  button4.Top:=84;
  edittractament.miwhere.text:='where c_historia='+consultaedit1.text;
  edittractament.SetFocus;
  end
  else
  begin
  if edittractament.Text='' then
    begin // si no tiene tractament
      mimensaje('Ha de introduir la prestació a la interconsulta',2);

    end
    else
    begin // si tienen tractament
    miq:=tquery.create(self);
    with miq do
      begin
      databasename:='interna';
      sql.text:='select * from tractaments where c_historia='+
      consultaedit1.text+' and c_tractament='+edittractament.text;
      open;
      if (eof and bof) then
        begin
        showmessage('prestación no trobada, no es crearà l''interconculta');
        free;
        exit;
        end;
      // si la encuenta;
      coordi:=miq['c_coordinador'];
      close;
      sql.texT:='insert into intercon (c_especial,c_tipus,urgent,c_historia,c_tractament'+
      ',data1,data_prevista,c_metge1,estat,solicita) values("12","PROVESP","N",:c_historia,:c_tractament'+
      ',''NOW'',''NOW'',"'+coordi+'",97,:descripcio)';
      parambyname('c_historia').AsInteger:=strtoint(consultaedit1.text);
      parambyname('c_tractament').AsInteger:=strtoint(edittractament.text);
      parambyname('descripcio').Asblob:='Prova aportada pel pacient';
      execsql;
      free;
      end;
     consultaedit2.SetFocus;
    end;  // si tienen tractament

  end; // si esta visible edittractament

end;

procedure Timportacd.edittractamentEnter(Sender: TObject);
begin
edittractament.miwhere.text:='where c_historia='+consultaedit1.text;
end;

procedure Timportacd.Button5Click(Sender: TObject);
var
l:integer;
filtro,mhis,minter,miok:string;
miupd:tquery;
begin
//if (consultaedit1.text='') or  (consultaedit2.text='') then exit;
if   listtemp.DBGrid1xlt.SelectedRows.Count<1 then
  begin
  showmessage('seleccionar primero los registros a asignar');
  exit;
  end;

with listtemp.DBGrid1xlt do
  begin //1 with
  filtro:='';
     miupd:=tquery.create(application);
     miupd.databasename:='interna';
  for l:=0 to listtemp.DBGrid1xlt.SelectedRows.count-1 do
    begin //2

    datasource.dataset.GotoBookmark(pointer(SelectedRows.Items[l]));


//------------------------------------ demasiado lento asignando c_historia y c_intercon
   {
    datasource.dataset.Edit;
    if consultaedit1.text<>'' then
//    datasource.dataset['c_historia']:=strtoint(consultaedit1.text)
     listtemp.DBGrid1xlt.Columns[0].Field.Value:=strtoint(consultaedit1.text)
    else listtemp.DBGrid1xlt.Columns[0].Field.Value:=null;
    if consultaedit2.text<>'' then  listtemp.DBGrid1xlt.Columns[1].Field.Value:=strtoint(consultaedit2.text)
    else listtemp.DBGrid1xlt.Columns[1].Field.Value:=null;
    datasource.dataset.post;
   }

   // lo paso a update de un solo comando con los studyuid
//-------------------------------------------------------
//    filtro:=filtro+''''+datasource.dataset['studyuid']+''',';


// solo procesa los que estan en F o T o S , salto los A (avisos y otros futuros)
   if  datasource.dataset['OK']='F' then miok:='T'
   else if datasource.dataset['OK']='S' then miok:='M'
   ELSE if datasource.dataset['OK']='T' then miok:='T'
   ELSE continue ;




//    filtro:=copy(filtro,1,length(filtro)-1);
//   if filtro<>'' then
 //    begin

   if consultaedit1.text='' then  mhis:='null'
       else mhis:=consultaedit1.text;
     if consultaedit2.text='' then  minter:='null'
       else minter:=consultaedit2.text;

     miupd.sql.text:='update dicomlog2 set c_historia='+mhis+', c_intercon='+minter+' , ok="'+miok+'" where id='+inttostr(datasource.dataset['id']);
     miupd.ExecSQL;



//     end;
    end; //2
   miupd.Free;
  end; //1 with
listtemp.ejecutasql;
end;

procedure Timportacd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//winexec('net use z: /delete',sw_normal);
end;

procedure Timportacd.consultaEdit2Change(Sender: TObject);
begin
button5.Visible:=((consultaEdit1.text<>'') and (consultaEdit2.text<>''));
button4.Visible:=not ((consultaEdit2.text<>''));
end;

procedure Timportacd.SpeedButton2Click(Sender: TObject);
begin
if JvSelectDirectory1.Execute then
  temploadedit.text:=JvSelectDirectory1.Directory;
end;

procedure Timportacd.temploadeditExit(Sender: TObject);
begin
self.Color:=clwindow;
end;

procedure Timportacd.DatabaseAfterConnect(Sender: TObject);
begin
Labelpruebas.Visible:=database.AliasName<>'GUTTMANN';
end;

procedure Timportacd.botonexportahcccClick(Sender: TObject);
var
miq:tquery;
idaudit:integer;
l:integer;

begin


if (listexportahcc.dbgrid1xlt.SelectedRows.count=0) then
  begin //1
  if  (MessageDlg('No hay ninguna seleccionada, exportar todas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    listexportahcc.dbgrid1xlt.SelectedRows.SelectAll
   else
     exit; // si no quiere hacerlas todas se va
  end; //1

 with wFichaAccessindata do
    begin
    if usuariactiu.desc='' then CanviUsuariActiu;
    if not (TeDretMetge(usuariactiu.Codi,[54],false)) or (usuariactiu.desc='') then
      begin // si no tiene derecho de dicom extendido
      showmessage(' No esta autorizada');
      application.terminate;
      end // si no tiene derecho de dicom extendido
     else
     auditoriahistorias(0,idaudit,8,'di');
    end;


miq:=tquery.create(application);
miq.databasename:='interna';

with listexportahcc do
  begin //!
  for l:=0 to dbgrid1xlt.SelectedRows.count-1  do
    begin //2
    dbgrid1xlt.datasource.dataset.GotoBookmark(pointer(dbgrid1xlt.SelectedRows.Items[l]));
    if dbgrid1xlt.datasource.dataset['c_diagnosticingres']=null then
      begin
      showmessage(dbgrid1xlt.datasource.dataset['nomcomplet']+' no te diagnostic ingres i no es por enviar');
      continue;
      end;
    miq.SQL.text:='update dicomstudies set estado_publica_hccc="C" where studyuid="'+dbgrid1xlt.datasource.dataset['studyuid']+'" and (estado_publica_hccc is null or estado_publica_hccc="")' ;
    miq.ExecSQL;
    end; //2
  end; //1

miq.free;


end;

procedure Timportacd.vistaimagen1(sender: tobject);
var
fichero:string;
begin
if fileexists('ezdicomuid.exe') then fichero:='ezdicomuid.exe "' else
    fichero:='g:\bin\dicom\ezdicomuid.exe "';


if liststudies.qconsulta.fieldbyname('studyuid').asstring<>'' then
  (winexec(pchar(fichero+liststudies.qconsulta.fieldbyname('studyuid').asstring
     +'"'),sw_normal))
 else

   winexec(pchar(fichero+liststudies.qconsulta.fieldbyname('studyuid_1').asstring
     +'"'),sw_normal);


end;


procedure Timportacd.vistaimagen2(sender: tobject);
var
fichero:string;
begin
if fileexists('ezdicomuid.exe') then fichero:='ezdicomuid.exe "' else
    fichero:='g:\bin\dicom\ezdicomuid.exe "';


if listexportahcc.qconsulta.fieldbyname('studyuid').asstring<>'' then
  (winexec(pchar(fichero+listexportahcc.qconsulta.fieldbyname('studyuid').asstring
     +'"'),sw_normal))
 else

   winexec(pchar(fichero+listexportahcc.qconsulta.fieldbyname('studyuid_1').asstring
     +'"'),sw_normal);


end;

procedure Timportacd.Button6Click(Sender: TObject);
var
sexo,milink:string;
miq:tquery;
milinkstr:tstringlist;
begin

if consultaedit1.text='' then
  begin
  consultaedit1.SetFocus;
  exit;
  end;
if consultaedit2.text='' then
  begin
  consultaedit2.SetFocus;
  exit;
  end;

milinkstr:=tstringlist.create;
milinkstr.loadfromfile('importlinkgutpacs.txt');
milink:=milinkstr.text;
//milink:='https://gutpacs.guttmann.com/RVDeploy/index.html?OpenModel=IMPORT&ConfSrv=https://gutpacs.guttmann.com/raimserver/raimweb.aspx&ConfUsr=cimd&ConfPass=cimd&RefSrv=RS_GUTPACS&User=cimd&AccessionNumber=#c_intercon#&PatientID=#c_historia#&PatientName=#nom#&PatientSex=#sexo#&PatientBirthDate=#fecha_nac#';
miq:=tquery.Create(application);
miq.databasename:='interna';
miq.sql.text:='select f.apellido1||'' ''||f.apellido2||''^''||f.nombre as nomcomplet, f.fecha_nac,f.sexo from filiacio f where f.num_hist='+consultaedit1.text;
miq.open;
if not (miq.eof and miq.bof) then
  begin  //A
  if miq['sexo']='D' then sexo:='F' else sexo:='M';
  cambia('#c_historia#',consultaedit1.text,milink) ;
  cambia('#c_intercon#',consultaedit2.text,milink) ;
  cambia('#nom#',miq['nomcomplet'],milink) ;
  cambia('#sexo#',sexo,milink) ;
  cambia('#fecha_nac#',formatdatetime('yyyymmdd',miq['fecha_nac']),milink) ;
  miq.Close;
{  miq.SQL.text:='select * from dicomris where c_intercon=:c_intercon';
  miq.parambyname('c_intercon').asstring:=consultaedit2.text;
  miq.Open;
  if miq.Eof and miq.bof then // si no tiene peticion NRP007 de ese ACCESIONNUMBER LA CREA PARA QUE PACS la tenga registrada porque sino devuelve RS- por no conocer la AN
    begin    }
  miq.sql.Text:='insert into dicomris (data,c_historia,c_intercon,accessionnumber,c_trans,status,study_description) values (''NOW'',:c_historia,:c_intercon,:c_intercon,"NRP007ProcedureScheduled","P","Prova aportada")';
  miq.parambyname('c_historia').asstring:=consultaedit1.text;
  miq.parambyname('c_intercon').asstring:=consultaedit2.text;
  miq.execsql;
//    end;
  miq.Close;
  miq.SQL.text:='select * from dicomris where c_intercon=:c_intercon and c_trans="NRP007ProcedureScheduled" and status="P" ';
  miq.ParamByName('c_intercon').AsString:=consultaedit2.text;;
  miq.Open;
  if miq.Eof and miq.Bof then
     begin  // si no encuentra peticion
       showmessage('ERROR, No s''ha pogut generar petició de entrada al servidor, el procés es tallara');
     end
     else
     begin //2
      while miq['status']='P' do
        begin
        miq.Close;
        sleep(3000);
        miq.open;
        end;
       shellexecute(application.handle,'open',pchar(milink),'','',SW_NORMAL);
     end; //2

  end  //A
else
  begin
  milinkstr.free;
  miq.free;
  exit;
  end;
// la fecha es yyymmdd

miq.free;
milinkstr.free;
end;

procedure Timportacd.importrisbuttonClick(Sender: TObject);
var
sexo,milink:string;
miq:tquery;
milinkstr:tstringlist;
begin


if edithistoria.text='' then
  begin
  edithistoria.SetFocus;
  exit;
  end;


 with wFichaAccessindata do
    begin
    if usuariactiu.desc='' then CanviUsuariActiu;
    if not (TeDretMetge(usuariactiu.Codi,[54],false)) or (usuariactiu.desc='') then
      begin // si no tiene derecho de dicom extendido
      showmessage(' No te dret per fer servir aquesta aplicació');
      application.terminate;
      end // si no tiene derecho de dicom extendido
     else
     auditoriahistorias(strtoint(edithistoria.text),0,8,'i');
    end;
  

milinkstr:=tstringlist.create;
milinkstr.loadfromfile('importlinkgutpacs.txt');
milink:=milinkstr.text;
miq:=tquery.Create(application);
miq.databasename:='interna';
miq.sql.text:='select f.apellido1||'' ''||f.apellido2||''^''||f.nombre as nomcomplet, f.fecha_nac,f.sexo from filiacio f where f.num_hist='+edithistoria.text;
miq.open;
if not (miq.eof and miq.bof) then
  begin  //A
  if miq['sexo']='D' then sexo:='F' else sexo:='M';
  cambia('#c_historia#',edithistoria.text,milink) ;
  cambia('#c_intercon#','000000',milink) ;   //le pone la interconsulta mal para que de RS- y asignar despues
  cambia('#nom#',miq['nomcomplet'],milink) ;
  cambia('#sexo#',sexo,milink) ;
  cambia('#logonuser#',ID_LOGIN,milink) ;
  cambia('#fecha_nac#',formatdatetime('yyyymmdd',miq['fecha_nac']),milink) ;
  shellexecute(application.handle,'open',pchar(milink),'','',SW_NORMAL);
  end  //A
else
  begin
  milinkstr.free;
  miq.free;
  exit;
  end;
// la fecha es yyymmdd

miq.free;
milinkstr.free;


edithistoria.text:='';
edithistoria.milabel.Caption:='';

end;

procedure Timportacd.SpeedButton3Click(Sender: TObject);
var
l,newint,c_trac:integer;
filtro,coordi:string;
miupd:tquery;
flagpregunta:boolean;
begin
flagpregunta:=true;
//if (consultaedit1.text='') or  (consultaedit2.text='') then exit;
if   listdicomris.DBGrid1xlt.SelectedRows.Count<1 then
  begin
  showmessage('seleccionar primero los registros a asignar');
  exit;
  end;



with listdicomris.DBGrid1xlt do
  begin //1 with
  filtro:='';
     miupd:=tquery.create(application);
     miupd.databasename:='interna';

  for l:=0 to listdicomris.DBGrid1xlt.SelectedRows.count-1 do
    begin //2

    datasource.dataset.GotoBookmark(pointer(SelectedRows.Items[l]));

   //crea una interconsulta para cada linea de estudio y se la asigna despues
   // la interconsulta tendra la fecha de cuando se hice el estudio y la descripcion con proba aportada delante
   // se revisa que el registro que se esta actualizando sea un canal de NPR001NewStudy o NRP002PatientStudiesDivision
   if (datasource.dataset['c_trans']='NPR001NewStudy') or (datasource.dataset['c_trans']='NRP002PatientStudiesDivision') then
     begin //1
     // primero le ponemos numero de historia si no lo tiene desde campo edithistoria

     if  (datasource.dataset['c_historia']=null) or (datasource.dataset['c_historia']=0) then
       begin
       if edithistoria.text='' then
          begin
          showmessage('s''ha de indicar la historia perque el registre marcat està sense historia');
          edithistoria.setfocus;
          exit;
          end;
       if flagpregunta and  (messageDlg('Voleu assignar aquestes dades a la historia '+edithistoria.text+' NOM:'+edithistoria.milabel.caption+'?',mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
       flagpregunta:=false;
       datasource.dataset.edit;
       datasource.dataset['c_historia']:=strtoint(edithistoria.text);
       datasource.dataset.post;
       end;
      // cogemos el ultimo tractamente para asignarle al interconsulta generada
      miupd.sql.text:='select c_tractament,c_coordinador from tractaments where c_historia='+inttostr(datasource.dataset['c_historia'])+' order by data_ingres descending rows 1';
      miupd.open;
      // si la encuenta;
      if miupd.Eof and miupd.bof then
        begin
        showmessage('aquest pacient no te prestacions');
        miupd.free;
        exit;
        end;
      coordi:=miupd['c_coordinador'];
      c_trac:=miupd['c_tractament'];
      miupd.close;
      miupd.sql.text:='select max(c_intercon) as maxint from intercon ';
      miupd.open;
      newint:=miupd['maxint']+1;
      miupd.SQL.text:='insert into intercon (c_especial,c_tipus,urgent,c_historia,c_tractament'+
       ',data1,data_prevista,c_metge1,estat,solicita) values("12","PROVESP","N",:c_historia,:c_tractament'+
      ',:studydate,:studydate,"'+coordi+'",97,:descripcio)';
      miupd.parambyname('c_historia').AsInteger:=datasource.DataSet['c_historia'];
      miupd.parambyname('c_tractament').AsInteger:=c_trac;
      miupd.parambyname('descripcio').Asblob:='Prova aportada pel pacient: '+datasource.dataset['study_description'];
      miupd.ParamByName('studydate').AsDateTime:=datasource.DataSet['studydate'];
      miupd.execsql;
      with datasource do
        begin
        dataset.edit;
        dataset['status']:='P';
        dataset['c_trans']:='NRP002PatientStudiesDivision';
        dataset['c_intercon']:=newint;
        dataset.post;
        end; //with datasource

     end; //1 si es NPR001 o  NRP002


    end; //2   for elementos seleccionados
   miupd.Free;
  end; //1 with
listdicomris.ejecutasql;
end;

procedure Timportacd.botoneditClick(Sender: TObject);
begin
with listdicomris do
 begin
// qconsulta.Close;
 listdicomris.qconsulta.RequestLive:=botonedit.down;
 ejecutasql;
 end;


end;


procedure timportacd.salidacolumna(sender: Tobject);
begin
with (sender as tdbgrideh) do
  begin
  with datasource do
    begin
    if (dataset.FieldByName('c_trans').asstring='NPR001NewStudy') and
        (dataset.FieldByName('c_historia').asstring<>'') and
        (dataset.FieldByName('c_intercon').asstring<>'') and
       (Columns.Items[(sender as tdbgrideh).SelectedIndex].FieldName='C_INTERCON') and
       (State in [ dsEdit, dsInsert ]) then
       begin
       if (tquery(dataset).requestlive) and (messageDlg('Voleu assignar aquestes dades al estudi?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes)   then
         begin
         dataset.edit;
         dataset['c_trans']:='NRP002PatientStudiesDivision';
         dataset['status']:='P';
         dataset.Post;
         end;
         listdicomris.ejecutasql;
       end;

    end;
  end;
end;

procedure Timportacd.exportrisbuttonClick(Sender: TObject);
var
cadena:tstringlist;
cadenastr:string;
begin

 with wFichaAccessindata do
    begin
    if usuariactiu.desc='' then CanviUsuariActiu;
    if not (TeDretMetge(usuariactiu.Codi,[54],false)) or (usuariactiu.desc='') then
      begin // si no tiene derecho de dicom extendido
      showmessage(' No te dret per fer servir aquesta aplicació');
      application.terminate;
      end // si no tiene derecho de dicom extendido
     else
     auditoriahistorias(0,0,8,'d');
    end;

    
cadena:=tstringlist.create;
cadena.loadfromfile('exportlinkgutpacs.txt');
cadenastr:=cadena.Text;
cambia('#logonuser#',ID_LOGIN,cadenastr);
shellexecute(application.handle,'open',pchar(cadenastr),'','',SW_NORMAL);
cadena.free;


end;

procedure Timportacd.datasetdicomrisBeforeDelete(DataSet: TDataSet);
begin
if not (TeDretAccesram('100',false,false)) then
  begin
  showmessage('no te permis');
  abort;
  end;
end;


procedure Timportacd.datasetdicomrisBeforeinsert(DataSet: TDataSet);
begin
if not (TeDretAccesram('100',false,false)) then
  begin
  showmessage('no te permis');
  abort;
  end;
end;




procedure Timportacd.antesedit(DataSet: TDataSet);
begin
if not (TeDretAccesram('100',false,false)) and
  ( dataset.FieldByName('status').asstring='F') then
  abort;

end;

procedure Timportacd.SpeedButton5Click(Sender: TObject);
begin
shellexecute(application.handle,'open',pchar('g:\bin\cdimport\Manual importacion CDimport.pdf'),'','',SW_NORMAL);
end;

procedure Timportacd.botonpublicahc3Click(Sender: TObject);
var
miupd:tquery;
datos:tdataset;
begin
//  crea mensaje de publicacion del registro en curso cuando sea un NRP007
datos:=listdicomris.DBGrid1xlt.DataSource.DataSet;
miupd:=tquery.create(application);
//if ((datos['c_trans']='NRP007ProcedureScheduled') or (datos['c_trans']='NRP002PatientStudiesDivision')) and (datos['status']="F") then
   if  (MessageDlg('Segur que vols publicar a HC3 el estudi num: '+inttostr(datos['c_intercon'])+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin  //1

  with miupd do
    begin //2
    databasename:='interna';
    // comprueba que no esta publicada ya y que tenga todos los datos

 sql.Text:= 'select i.c_historia,f.nomcomplet,f.tsi,t.c_diagnosticingres,m.dni,dr2.c_intercon as ci2,i.solicita   from  dicomris dr '+
 	 '	inner join intercon i on i.c_intercon=dr.c_intercon and i.data_prova is not null and i.c_tipus in ("RX","ECOS","PROVESP")  '+
 	 '	left join filiacio f on f.num_hist=i.c_historia '+
 	 '	left join dicomris dr2 on dr2.c_intercon=dr.c_intercon and c_trans="NRP009SendStudy2IHC3" '+
   '    left join metges m on i.c_metge1=m.codi and c_grup="ME" '+
   '     left join especial e on m.c_especial=e.c_especial '+
   '     inner join codicamps c on m.t_doc=c.c_codi and c.tipuscodi="HCCC.TIPUS_DOC" '+
   '     inner join tractaments t on i.c_tractament=t.c_tractament '+
   '     inner join hc3versiocim vc on  t.versiocim=vc.versiocim and vc.tipus="D"'+
   '     where (dr.c_trans="NRP007ProcedureScheduled" or dr.c_trans="NRP002PatientStudiesDivision") and dr.status="F"  '+
   '       and  f.tsi is not null and f_lrtrim(tsi)<>"" '+
   '       and  t.c_diagnosticingres is not null and t.c_diagnosticingres<>"" and f_lrtrim(t.c_diagnosticingres)<>"0"  and dr.c_intercon=:c_intercon ';
    parambyname('c_intercon').AsInteger:=datos['c_intercon'];
    open;

    if not (eof and bof) then
      begin  //3
    if (vartype(miupd['ci2'])>1) and (miupd['ci2']>0) then
        begin  //4
        showmessage('Estudi ja publicat');

         //   Poner llamaconsulta con los datos
      free;
      exit;
      end    //4
      else
      begin
      if (pos('aportada',miupd['solicita'])>1) then
        begin
        showmessage('Les proves aportades pel pacient no es poden publicar a Hc3');
        free;
        exit;
        end;
      end;
    close;
    sql.text:='insert into dicomris (data,c_intercon,c_trans,status) values ("NOW",:c_intercon,"NRP009SendStudy2IHC3","P")';
    parambyname('c_intercon').AsInteger:=datos['c_intercon'];
    execsql;
    free;
    listdicomris.ejecutasql;
    end//3
    else // si no encuentra ningun registro es que le faltan datos
      begin
      showmessage('Aquest estudi no es pot publicar, faltan dades '+#13#10+'Es mostraran las dades necesarias que han d''estar totes omplertes');

      llamaconsultanew('interna',
          'select i.c_historia,f.nomcomplet,f.tsi,t.c_diagnosticingres,m.dni as dni_metge,i.data_prova   from  dicomris dr '+
           '	inner join intercon i on i.c_intercon=dr.c_intercon  and i.c_tipus in ("RX","ECOS","PROVESP") '+
           '	left join filiacio f on f.num_hist=i.c_historia '+
           '    left join metges m on i.c_metge1=m.codi and c_grup="ME" '+
           '     left join especial e on m.c_especial=e.c_especial '+
           '     left join codicamps c on m.t_doc=c.c_codi and c.tipuscodi="HCCC.TIPUS_DOC" '+
           '     inner join tractaments t on i.c_tractament=t.c_tractament '+
           '     left join hc3versiocim vc on  t.versiocim=vc.versiocim and vc.tipus="D" ','',
           '     where (dr.c_trans="NRP007ProcedureScheduled" or dr.c_trans="NRP002PatientStudiesDivision") and dr.status="F" '+
           '      and dr.c_intercon='+inttostr(datos['c_intercon'])+' rows 1','','N',self,'Num hist,Nom,CIP,Diagnostic tractament, dni metge, Data prova') ;

      end;


    end;  //2
  end;    ///1



end;

procedure Timportacd.checkboxEnPruebasClick(Sender: TObject);
begin
if checkboxEnPruebas.Checked then
  begin
  Database.Close;
  database.AliasName:='GUTTMANNPROVA';
  database.Open;
  end
  else
  begin
  Database.Close;
  database.AliasName:='GUTTMANN';
  database.Open;
  end;
end;

end.

