unit mainu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvListBox, JvDriveCtrls, Grids, Outline,
  DirOutln, JvDualList, JvComponentBase, JvValidators, ExtCtrls, FileCtrl,
  JvCombobox, WideStrings, DB, SqlExpr,
  DBTables, ComCtrls, JvAppStorage, JvAppRegistryStorage, JvFormPlacement,
  OleCtrls, VSPDFViewerX_TLB,  Mask, DBCtrls, consultaEdit2007dbx,
  consultaEdit2007, MemTableDataEh, GridsEh, DBGridEh, MemTableEh,
  DBGrids, AcroPDFLib_TLB;

type
  Tmain = class(TForm)
    pagecontrol1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    directoriorigen2: TJvDirectoryListBox;
    Splitter2: TSplitter;
    Panel4: TPanel;
    Label4: TLabel;
    directoridesti2: TJvDirectoryListBox;
    JvFormStorage1: TJvFormStorage;      
    JvAppRegistryStorage1: TJvAppRegistryStorage;
    Panel6: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;            
    Button1: TButton;
    descripedit: TEdit;
    Panel5: TPanel;
    Button2: TButton;
    JvFileListBox1: TJvFileListBox;
    Panel2: TPanel;
    directoriorigen: TJvDirectoryListBox;
    JvDriveCombo1: TJvDriveCombo;
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    directoridesti: TJvDirectoryListBox;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    VSPDFViewer1: TVSPDFViewer;
    SQLConnection1: TSQLConnection;
    numhistedit: TconsultaEdit;
    DataSource1: TDataSource;
    Database1: TDatabase;
    MemTabledirectorios: TMemTableEh;
    MemTabledirectoriosDescripcion: TStringField;
    MemTabledirectoriosRuta: TStringField;
    MemTabledirectoriosmascara: TStringField;
    sourcedirectorios: TDataSource;
    DBGrid1: TDBGrid;
    interconedit: TconsultaEdit;
    Label5: TLabel;
    Label6: TLabel;
    PROVESTEXT: TLabel;
    Qdirectoris: TQuery;
    AcroPDF1: TAcroPDF;
    procedure Button1Click(Sender: TObject);
    function  IdentificaDirectori(DirectoriDocs, H: String): String;
    procedure Button2Click(Sender: TObject);
    procedure pdf(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    function extpdf(nomfich:string):string;
    procedure FormCreate(Sender: TObject);
    procedure trazaini(sender:tobject;e:exception);
    procedure interconeditEnter(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Database1BeforeConnect(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure QdirectorisAfterScroll(DataSet: TDataSet);
    procedure numhisteditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main: Tmain;

implementation

uses utili2007;

{$R *.dfm}

procedure Tmain.Button1Click(Sender: TObject);



function sacaentreparentesis(const InputString: string): string;
var
  StartIndex: Integer;
  EndIndex: Integer;
begin
  Result := ''; // Inicializamos el resultado a una cadena vacía

  StartIndex := Pos('(', InputString); // Buscamos la posición del primer paréntesis de apertura
  if StartIndex > 0 then
  begin
    EndIndex := Pos(')', InputString); // Buscamos la posición del primer paréntesis de cierre
    if (EndIndex > 0) and (EndIndex > StartIndex) then // Nos aseguramos de que haya un cierre y esté después del inicio
    begin
      // Calculamos la longitud del contenido entre paréntesis
      // StartIndex + 1 es para empezar después del '('
      // EndIndex - (StartIndex + 1) es la longitud del contenido
      Result := Copy(InputString, StartIndex + 1, EndIndex - (StartIndex + 1));
    end;
  end;
end;

var
  I,contador: Integer;
  file1,file2,filesinext,filecomplet,ruta,c_his,c_int,datafsa,numcreu,rdi:string;
  pk:integer;
  esimagen:string;
  miq:tquery;
begin

ruta:=dbgrid1.DataSource.DataSet.fieldbyname('ruta').asstring;
c_his:='';
c_int:='';
datafsa:='';
if interconedit.Text<>'' then c_int:='-'+interconedit.text;

VSPDFViewer1.Clear;
with JvFileListBox1 do
  begin
  if numhistedit.text='' then
    begin
    numhistedit.SetFocus;
    beep;
    exit;
    end;
  if not (SelCount>0) then
    begin
    showmessage('deu marcar els fitxers');
    exit
    end;
  FormatCurr('00000',strtofloat(numhistedit.text));
  file2:=IdentificaDirectori(ruta,numhistedit.text)+'\'+
   Formatfloat('00000',strtofloat(numhistedit.text))+c_int+
    '-'+label1.caption+'-'+descripedit.text;
    contador:=1;
  cambia('*',' ',file2);
  for I := 0 to Count - 1 do
    begin
    if Selected[i] then
      begin
      file1:=directoriorigen.Directory+'\'+extpdf(items[i]);

      // comprueba que el fichero este bien detectado
      if not FileExists(file1) then
        begin // 1
        showmessage('no se puede mover '+file1);
        exit;
        end; //1


      //file1:=extractfilename(FileName);
      file2:=file2+'-'+Formatfloat('000',contador);

      while fileexists(file2+'.pdf') do
         begin
         file2:=copy(file2,1,length(file2)-4);
         inc(contador,1);
         file2:=file2+'-'+Formatfloat('000',contador);
         end;

      CopyFile(pchar(file1),pchar(file2+'.pdf'),false);
      if FileExists(file2+'.pdf') then
          begin
          if not DeleteFile(file1) then
            begin
            deletefile(file2+'pdf');
            showmessage('No es pot moure el fitxer');
            end
            else
             inc(contador,1);
          end
        else  showmessage('no se ha copiat be el fitxer');
       file2:=copy(file2,1,length(file2)-4);



      // tratamiento para publicacion hccc desde mirth
      // si tiene todos los datos asignados y es prueba externa añade los datos a loghccc


if ((file1<>'') and (dbgrid1.DataSource.DataSet.fieldbyname('descripcio').asstring='Proves externes')
   and (c_int<>'') and (interconedit.Text<>'') and (numhistedit.Text<>'')) then
begin  //0
filesinext:=uppercase(extractfilename(file1));
cambia('.PDF','',filesinext);  //quitamos la extension .pdf
numcreu:=sacaentreparentesis(file1);

with miq do
  begin

  miq:=tquery.Create(application);
  DatabaseName:='interna';
  {Busca por interconsulta si existe el registro para actualizarlo o para añadirlo
  }
  pk:=0;
  rdi:='';
// revisa si esta en tabla codiprovaesp para ver si es una imagen dicom

  sql.text:='SELECT CE.ACTIU,CE.ID_TIPUSDOCUMENTHC3, CE.PROVADICOM,l.pk FROM  interconprovaesp  ip'+
   '          inner join codiprovaesp ce on ce.c_provaesp=ip.c_prova'+
   '          left join loghccc l on l.c_intercon=ip.c_intercon ' +
   '          WHERE ip.c_intercon =:c_intercon';
  ParamByName('c_intercon').AsString := interconedit.text;
  open;
  if (recordcount>0) then
    begin
      if not miq.fieldbyname('pk').IsNull then
         pk:=miq['pk']
         else
         pk:=0;
      if  (vartype(miq['provadicom'])>1) then esimagen:=miq['provadicom']
      else esimagen:='';
      close;
    end;

    if (pk<>0) then
        begin
     SQL.Text := 'UPDATE LOGHCCC ' +
                        'SET republicacio="R", nomfitxer="'+filesinext+'"'+' where pk=:pk ';
      Parambyname('pk').asinteger:=pk;
      execsql;
    end
   else
    begin //1
      // si no encuentra el registro lo añade
    if ((esimagen='S')
       or
         ( (esimagen='') and (messagedlg('La prova no te indicador de si es prova DICOM a la taula codiprovaesp, ¿es un informe de imatges, TAC, RM,ETC ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes)) ) then

       begin
          sql.text:='INSERT INTO LOGHCCC (data_1er,REPUBLICACIO,C_INTERCON,NOMFITXER,T_DOC) '+
             ' VALUES ("TODAY","R",:c_intercon,:filesinext,"DCM")';
          parambyname('filesinext').asstring:=filesinext;
          ParamByName('c_intercon').AsString := interconedit.text; // Pasa tu valor real
          ExecSQL;
          close;
       end;
    end; //1
  end;  //with
  end; // if  0
 end; // if selected
end; //for

end; // with

directoriorigen.Update;
directoridesti.Update;
JvFileListBox1.Update;
acropdf1.Refresh;
numhistedit.text:='';
descripedit.text:='';
label1.Caption:='';
end;



procedure Tmain.Button2Click(Sender: TObject);
begin
JvFileListBox1.SelectAll;
end;

procedure Tmain.Database1BeforeConnect(Sender: TObject);
begin
provestext.visible:=Database1.AliasName='GUTTMANNPROVA';
end;

procedure Tmain.DBGrid1CellClick(Column: TColumn);
begin
directoriorigen.Directory:=DBGrid1.SelectedField.Value;
end;

procedure Tmain.DBGrid1DblClick(Sender: TObject);
begin
directoriorigen.Directory:=DBGrid1.DataSource.DataSet.FieldByName('ruta').asstring;
directoriorigen.Update;
Acropdf1.loadfile('dd');
end;

function Tmain.extpdf(nomfich: string):string;
begin

if copy(lowercase(nomfich),length(nomfich)-3,4)<>'.pdf' then
   nomfich:=nomfich+'.pdf';

result:=nomfich;

end;

procedure Tmain.FormActivate(Sender: TObject);
begin
numhistedit.setfocus;
end;

procedure Tmain.FormCreate(Sender: TObject);
begin
application.onexception:=trazaini;
VSPDFViewer1.setActivationCode('7afdd0fc93bc3e6c2cb7ef97bc1f9361dbe7393e', 'informatica@guttmann.com');
QdirectorisAfterScroll(dbgrid1.DataSource.DataSet);
end;

function Tmain.IdentificaDirectori(DirectoriDocs, H: String): String;
var
  Dir:String;
  passos: Integer;
begin
    passos := Trunc(StrToInt(H) div 500);
    Dir := IntToStr(passos * 500) + '-' + IntToStr(((passos + 1) * 500) - 1);

    if not DirectoryExists(DirectoriDocs + '\' + Dir)  then
      CreateDirectory(pchar(DirectoriDocs + '\' + Dir),0);
    Result := DirectoriDocs + '\' + Dir;
end;

procedure Tmain.interconeditEnter(Sender: TObject);
begin
if numhistedit.Text='' then
  begin
  numhistedit.setfocus;
  exit;
  end;
if (dbgrid1.DataSource.DataSet.fieldbyname('descripcio').asstring='Proves externes') then
interconedit.miwhere.text:='where c_historia='+numhistedit.text+' and c_tipus in ("PROVESP", "RX","ECOS" )'
 else
interconedit.miwhere.text:='where c_historia='+numhistedit.text
//+' and data_prova is not null';  

end;

procedure Tmain.numhisteditChange(Sender: TObject);
begin
interconedit.Text:='';
end;

procedure Tmain.pdf(Sender: TObject);
var
miname:string;
mires:WordBool;
begin
{AcroPDF1.LoadFile(extpdf(JvFileListBox1.FileName));
AcroPDF1.setShowToolbar(false);
acropdf1.Show; }
if FileExists(JvFileListBox1.FileName) then
   miname:=extpdf(lowercase(JvFileListBox1.FileName))
  else
  miname:=directoriorigen.Directory+'\'+extpdf(lowercase(
  extractfilename(JvFileListBox1.FileName)));

{  VSPDFViewer1.Clear;

  try
  VSPDFViewer1.Load(miname, '');
  except
  showmessage('Aquest document no es compatible');
  VSPDFViewer1.destroy;
  VSPDFViewer1:=TVSPDFViewer.Create(Self);
  VSPDFViewer1.Parent:=TabSheet1;
  VSPDFViewer1.Align:=alclient;
  VSPDFViewer1.setActivationCode('7afdd0fc93bc3e6c2cb7ef97bc1f9361dbe7393e', 'informatica@guttmann.com');
  VSPDFViewer1.Tag:=0;
  VSPDFViewer1.Show;
  end;
 }
AcroPdf1.LoadFile(miname);
{
      visorPDF.Clear;
        visorPDF.viewMode := VSVIEWMODE_singlepage;

        stInformeFalla.Visible := False;
        TRY visorPDF.Load(Mt.FieldByName('FileName').AsString, '');
        EXCEPT
           visorPDF.Destroy;
           visorPDF := TVSPDFViewer.Create(Self);
           visorPDF.Parent := pInforme;
           visorPDF.Align := alClient;
           visorPDF.setActivationCode('7afdd0fc93bc3e6c2cb7ef97bc1f9361dbe7393e', 'informatica@guttmann.com');
           visorPDF.Tag := 1;
           stInformeFalla.Visible := True;
           stInformeFalla.BringToFront;
        END;
    }


end;

procedure Tmain.QdirectorisAfterScroll(DataSet: TDataSet);
begin
directoriorigen.Directory:=DBGrid1.DataSource.DataSet.FieldByName('ruta').asstring;
end;

procedure Tmain.trazaini(sender:tobject;e: exception);
begin
mandaerror2(self,e,e.message,false,1);
end;

end.
