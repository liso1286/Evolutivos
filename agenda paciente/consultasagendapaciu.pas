unit consultasagendapaciu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables,  StdCtrls, ExtCtrls,fichaconsulta_7,FichaAccessindata,menuu,variants,
  rxMemTable;

type
  Tconsultasagendapaci = class(TForm)
    memconvert: TMemoryTable;
    memconvertc_historia: TIntegerField;
    memconvertnomcomplet: TStringField;
    memconvertc_activitat: TStringField;
    memconvertlunes: TStringField;
    memconvertmartes: TStringField;
    memconvertmiercoles: TStringField;
    memconvertjueves: TStringField;
    memconvertviernes: TStringField;
    memconvertsabado: TStringField;
    memconvertdomingo: TStringField;
    memconvertmetge: TStringField;
    memconvertterapeuta: TStringField;
    memconvertfisioterapeuta: TStringField;
    memconvertinfermera: TStringField;
    memconvertdata_ingres: TDateField;
    memconvertc_planta: TStringField;
    memconvertc_llit: TStringField;
    memconvertc_coordinador: TStringField;
    memconvertc_infermeria: TStringField;
    memconvertc_terapeuta: TStringField;
    memconvertc_fisioterapeuta: TStringField;
    memconvertc_prestacio: TStringField;
    memconvertc_psicoleg: TStringField;
    memconvertpsicoleg: TStringField;
    memconvertc_trevallsocial: TStringField;
    memconverttrevallsocial: TStringField;
    Query1: TQuery;
    memconvertc_mef: TStringField;
    memconvertmef: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure entrausuari;
    procedure conversion;
    procedure llamaconvert(dataset:tdataset);
    procedure imprime(sender:tobject);
  private
    { Private declarations }
  public
    { Public declarations }
    superpan:tconsultaform;
  end;

var
  consultasagendapaci: Tconsultasagendapaci;
//  mydoctor:tmetge;
  agrupahora:integer;

implementation

uses utilinueva, fichadatosu;

{$R *.DFM}

procedure Tconsultasagendapaci.FormCreate(Sender: TObject);
begin
//pregunta el usuari

if mydoctor.desc='' then entrausuari;

if mydoctor.desc='' then  close;

superpan:=tconsultaform.create(consultasagendapaci);
with superpan do
  begin
  baseinterna:='interna';
  Agrupacin1.Visible:=false;
  label1.visible:=false;
  BitBtn1.OnClick:=imprime;
{  Marcacolumnaparaordenar1.Visible:=false;
  marcacolumnaparaordenar1.enabled:=false;
  Ordenarcolumnasmarcadas1.visible:=false;
  ordenarcolumnasmarcadas1.enabled:=false;}
  datasource1.dataset:=memconvert;
  datasource1.dataset.AfterOpen:=llamaconvert;
  if TeDretAcces(['A100'],false,true) then  botonmuestramemos.Visible:=true;
//  botonmuestramemos.Visible:=true;
  parent:=consultasagendapaci;
  Exportarseleccin1.visible:=true;
  wheretexto:='where (a.dataf is null) and (f_mid(c.tipuscodi,9,2)="'+mydoctor.grup+'")';
  wheretextoantic:=wheretexto;
  orden:='  order by nomcomplet,c_activitat,dia_semana,a.hora';
  titulos:='Hist.,Nom pacient,Prest,Data prest.,Planta,Llit,Activitat,C.Met,Metge,'+
  'C.Inf,Infermera,C.Fis,Fisioterapeuta,C.Ter,Terapeuta,C.MEF,MEF,C.Psi,Psicoleg,C.As,'+
  'Assistent Social,Dilluns,Dimarts,Dimecres,'+
  'Dijous,Divendres,Disabte,Diumenge';
  sqltexto:='select a.*,f.nomcomplet,t.c_fisioterapeuta,fisio.metge fisioterapeuta'+
 ',t.c_terapeuta,tera.metge terapeuta,t.c_MEF,mef.metge MEF,t.c_coordinador,metge.metge metge,'+
 ' t.c_infermeria,infer.metge infermera,t.c_prestacio,t.data_ingres,'+
 ' t.c_planta,t.c_llit,t.c_psicoleg,psi.metge psicoleg,t.c_trevallsocial,trevall.metge trevallsocial'+
 ' from agendapacient a'+
 ' inner join filiacio f on a.c_historia=f.num_hist'+
 ' inner join tractaments t on (a.c_historia=t.c_historia) '+
 '   and (t.data_alta is null or t.data_alta>"TODAY") and (t.c_prestacio in ("1004","2014","2008","2007","2023"))'+
 ' left join metges fisio on t.c_fisioterapeuta=fisio.codi'+
 ' left join metges tera  on t.c_terapeuta=tera.codi'+
 ' left join metges mef   on t.c_mef=mef.codi'+ 
 ' left join metges metge on t.c_coordinador=metge.codi'+
 ' left join metges infer on t.c_infermeria=infer.codi'+
 ' left join metges psi on t.c_psicoleg=psi.codi'+
 ' left join metges trevall on t.c_trevallsocial=trevall.codi'+
 ' left join codicampsalfa c on c.tipuscodi like "ACTIVITAT%"  and c.c_codi=a.c_activitat';
  borderstyle:=forms.bsnone;
  ejecutasql;
  show;
  Align:=alclient;
  left:=1;
  top:=1;
  panel1xl.visible:=true;
  DBGrid1xlt.ReadOnly:=true;
  end;
end;

procedure Tconsultasagendapaci.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tconsultasagendapaci.entrausuari;
var
misderechos:tquery;
begin
//pregunta el usuari
Application.CreateForm(TwFichaAccessindata,wFichaAccessindata);
with wFichaAccessindata do
  begin
    if mydoctor.desc='' then
       begin
       mydoctor:=wFichaAccessindata.PreguntaMetge(false);
       end;
   free;
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

// pasa los datos de formato pelao a tabla con dias seguidos de la semana

procedure Tconsultasagendapaci.conversion;
var
busca1:tquery;
xm,xl,dia,hora:integer;
totales:array[1..7] of integer;
tempi,tempstr,horasstr,salto,codisstr,descstr,descuno,c_mef,mef:string;
horas,codis,desc:tstringlist;
camposnombre,camposvalor:tstringlist;
salta,porhoras:boolean;
begin
salto:='';

memconvert.EmptyTable;
horasstr:='08:00,08:30,09:00,09:30,10:00,10:30,11:00,11:30,12:00,12:30,13:00'+
    ',13:30,14:00,14:30,15:00,15:30,16:00,16:30,17:00,17:30,18:00,18:30,19:00,19:30,20:00,20:30'+
    ',21:00';
codisstr:='nomcomplet,c_historia,c_coordinador,c_infermeria,c_fisioterapeuta,c_terapeuta,c_mef,c_psicoleg,c_trevallsocial';
//descstr:='c_historia,nomcomplet,metge,infermera,fisioterapeuta,terapeuta,c_mef,psicoleg,trevallsocial';
descstr:='c_historia,nomcomplet,metge,infermera,fisioterapeuta,terapeuta,mef,psicoleg,trevallsocial';

horas:=tstringlist.create;
codis:=tstringlist.create;
desc:=tstringlist.create;
camposnombre:=tstringlist.create;
camposvalor:=tstringlist.create;
separa(horasstr,horas);
separa(codisstr,codis);
separa(descstr,desc);
horasstr:='';
busca1:=tquery.create(application);

with busca1 do
  begin  //0
  close;
  databasename:='interna';
   sql.text:=superpan.sqltexto+' '+superpan.wheretexto+' '+
        superpan.orden;
  if superpan.orden='' then
   sql.text:=superpan.sqltexto+' '+superpan.wheretexto+
      ' order by nomcomplet,c_activitat,dia_semana,a.hora'
   else
   if pos('dia_semana',superpan.orden)=0 then
     begin // 1
     if (pos('lunes',superpan.orden)>0) or
     (pos('martes',superpan.orden)>0) or
     (pos('miercoles',superpan.orden)>0) or
     (pos('jueves',superpan.orden)>0) or
     (pos('viernes',superpan.orden)>0) or
     (pos('sabado',superpan.orden)>0) or
     (pos('domingo',superpan.orden)>0) then
     begin
     porhoras:=true;
      agrupahora:=strtoint(inputbox('Llistat per horas'
      ,'¿Quantitat de mitges hores d''agrupació per els horaris?','2'));
      tempi:=copy(superpan.orden,pos('order by',superpan.orden)+9,length(superpan.orden));
      xm:=0;
      separa(tempi,camposnombre);
      while xm<= camposnombre.count-1
          do
          begin
          if pos(trim(camposnombre[xm]),
                'lunesmartesmiercolesjuevesviernessabadodomingo')>0 then
            begin
            camposnombre.delete(xm);
            end
           else
           inc(xm,1);
          end;
      tempi:='';
      for xm:=0 to camposnombre.count-1 do
          tempi:=tempi+','+camposnombre[xm];
      superpan.orden:='order by '+camposnombre[0]+',a.hora,dia_semana,'+camposnombre[1];
      sql.text:=superpan.sqltexto+' '+superpan.wheretexto+' '+
        superpan.orden;
     end
     else
      sql.text:=superpan.sqltexto+' '+superpan.wheretexto+' '+
        superpan.orden+',dia_semana,a.hora';
    end; //1
  open;
  first;
  // rellena stringlist de control
//tempi:=copy(sql.text,pos('order by',sql.text)+9,pos('dia_semana',sql.text)-pos('order by',sql.text)-10);
tempi:=copy(sql.text,pos('order by',sql.text)+9,length(sql.text));
xm:=0;
camposnombre.text:='';
separa(tempi,camposnombre);
separa(tempi,camposvalor);
while xm<= camposnombre.count-1
    do
    begin
    if (trim(camposnombre[xm])='dia_semana') or
       (trim(camposnombre[xm])='a.hora')  then
      begin
      camposnombre.delete(xm);
      camposvalor.delete(xm);
     end
     else
     inc(xm,1);
    end;
    for xm:=0 to 6 do
      totales[xm]:=0;

    // diferenciacion entre ordenado primero por horas o no
     if porhoras then
        begin                                          // if  a.hora
        xl:=0;
        for xm:=0 to codis.count -1 do
            if (codis[xm]=trim(camposnombre[0])) then
               descuno:=desc[xm];
        while (not eof) do
          begin  // bucle 1

          // si el valor del campo guia es diferente
          // inserta otro registro para ese horario
            if ((xl*agrupahora)<busca1['hora']) or
               (trim(camposvalor[0])<>
                    busca1.fieldbyname(trim(camposnombre[0])).asstring) then
              begin //salta al siguiente grupo

              if (trim(camposvalor[0])<>busca1.fieldbyname(trim(camposnombre[0])).asstring) then
                begin
                xl:=0;
                for xm:=0 to camposnombre.count-1 do
                  if busca1.fieldbyname(trim(camposnombre[xm])).asstring<>null then
                   camposvalor[xm]:=busca1.fieldbyname(trim(camposnombre[xm])).asstring
                 else camposvalor[xm]:='';
                 end;
              for xm:=1 to 7 do
                if totales[xm]>0 then
                  begin
                  tempstr:=memconvert.FieldList.Fields[xm+20].asstring;
                  memconvert.FieldList.Fields[xm+20].asstring:=tempstr+
                      #13+#10+'  Total: '+inttostr(totales[xm]);
                  totales[xm]:=0;    
                  end;

              if memconvert.state=dsinsert then memconvert.post;
              memconvert.insert;

              if ((xl*agrupahora)<busca1['hora']) then
                begin
                inc(xl,1);
                horasstr:=horas[((xl-1)*agrupahora)]+'-'+horas[((xl)*agrupahora)];
                memconvert.fieldlist.fields[21].asstring:=horasstr+#13+#10+#13+#10;
                memconvert.fieldlist.fields[22].asstring:=horasstr+#13+#10+#13+#10;
                memconvert.fieldlist.fields[23].asstring:=horasstr+#13+#10+#13+#10;
                memconvert.fieldlist.fields[24].asstring:=horasstr+#13+#10+#13+#10;
                memconvert.fieldlist.fields[25].asstring:=horasstr+#13+#10+#13+#10;
                memconvert.fieldlist.fields[26].asstring:=horasstr+#13+#10+#13+#10;
                memconvert.fieldlist.fields[27].asstring:=horasstr+#13+#10+#13+#10;
                end;
              memconvert.FieldByName(trim(camposnombre[0])).asstring:=
                     busca1.fieldbyname(trim(camposnombre[0])).asstring;
                if descuno<>'' then
                   memconvert.FieldByName(descuno).asstring:=
                       busca1.fieldbyname(descuno).asstring;
              continue;
              end; //salta al siguiente grupo
            tempstr:=memconvert.FieldList.Fields[busca1['dia_semana']+20].asstring;
            if pos(busca1.fieldbyname(trim(camposnombre[1])).asstring,tempstr)=0 then
               begin
               memconvert.FieldList.Fields[busca1['dia_semana']+20].asstring:=tempstr+
               '  '+busca1.fieldbyname(trim(camposnombre[1])).asstring+#13+#10;
               totales[busca1.fieldbyname('dia_semana').asinteger]:=
                   totales[busca1.fieldbyname('dia_semana').asinteger]+1;
               end;
            next;

          end;  //  bucle 1
          for xm:=1 to 7 do
                if totales[xm]>0 then
                  begin
                  tempstr:=memconvert.FieldList.Fields[xm+20].asstring;
                  memconvert.FieldList.Fields[xm+20].asstring:=tempstr+
                      #13+#10+'  Total: '+inttostr(totales[xm]);
                  totales[xm]:=0;
                  end;

        end                                            // if a.hora


      else
       begin // si no agrupa por horarios
      // modulo  que agrupa horas pero ordenadas por
      // otros conceptos no de tiempo
     while not eof do
      begin //1
      for xm:=0 to camposnombre.count-1 do
         if busca1[trim(camposnombre[xm])]<>null then
             camposvalor[xm]:=busca1[trim(camposnombre[xm])]
             else camposvalor[xm]:='';
      memconvert.Insert;
      if (pos('c_historia',camposnombre.text)>0)
        or (pos('nomcomplet',camposnombre.text)>0) then
         begin
         memconvertc_historia.value:=busca1['c_historia'];
         memconvertnomcomplet.value:=busca1['nomcomplet'];
         memconvertdata_ingres.value:=busca1['data_ingres'];
         memconvertc_prestacio.value:=busca1['c_prestacio'];
         if busca1['c_planta']<>null then
            memconvertc_planta.value:=busca1['c_planta'];
         if busca1['c_llit']<>null then
            memconvertc_llit.value:=busca1['c_llit'];
         end;
      if (busca1['metge']<>null)
         and ((pos('c_coordinador',camposnombre.text)>0) or
         (pos('c_historia',camposnombre.text)>0)
         or (pos('nomcomplet',camposnombre.text)>0)) then
        begin
        memconvertc_coordinador.value:=busca1['c_coordinador'];
        memconvertmetge.value:=busca1['metge'];
        end;
      if (busca1['psicoleg']<>null)
         and ((pos('c_psicoleg',camposnombre.text)>0) or
         (pos('c_historia',camposnombre.text)>0)
         or (pos('nomcomplet',camposnombre.text)>0))  then
        begin
        memconvertc_psicoleg.value:=busca1['c_psicoleg'];
        memconvertpsicoleg.value:=busca1['psicoleg'];
        end;
      if (busca1['trevallsocial']<>null)
         and ((pos('c_trevallsocial',camposnombre.text)>0) or
         (pos('c_historia',camposnombre.text)>0)
         or (pos('nomcomplet',camposnombre.text)>0)) then
        begin
        memconvertc_trevallsocial.value:=busca1['c_trevallsocial'];
        memconverttrevallsocial.value:=busca1['trevallsocial'];
        end;
      if (busca1['infermera']<>null)
         and ( (pos('c_infermeria',camposnombre.text)>0) or
           (pos('c_historia',camposnombre.text)>0)
           or (pos('nomcomplet',camposnombre.text)>0))  then
        begin
        memconvertinfermera.value:=busca1['infermera'];
        memconvertc_infermeria.value:=busca1['c_infermeria'];
        end;
      if (busca1['terapeuta']<>null)
        and ( (pos('c_terapeuta',camposnombre.text)>0) or
          (pos('c_historia',camposnombre.text)>0)
          or (pos('nomcomplet',camposnombre.text)>0)) then
        begin
        memconvertterapeuta.value:=busca1['terapeuta'];
        memconvertc_terapeuta.value:=busca1['c_terapeuta'];
        end;
      if (busca1['fisioterapeuta']<>null)
        and ( (pos('c_fisioterapeuta',camposnombre.text)>0) or
        (pos('c_historia',camposnombre.text)>0)
        or (pos('nomcomplet',camposnombre.text)>0)) then
        begin
        memconvertfisioterapeuta.value:=busca1['fisioterapeuta'];
        memconvertc_fisioterapeuta.value:=busca1['c_fisioterapeuta'];
        end;

     if (pos('c_activitat',camposnombre.text)>0) then
        memconvertc_activitat.value:=busca1['c_activitat'];

      if (busca1['mef']<>null)
        and
        ( (pos('c_mef',camposnombre.text)>0) or
        (pos('c_historia',camposnombre.text)>0)
        or (pos('nomcomplet',camposnombre.text)>0)) then
        begin
        memconvertmef.value:=busca1['mef'];
        memconvertc_mef.value:=busca1['c_mef'];
        end;

      salta:=false;
      while (not eof) and (not salta) do     // agrupa las horas en una linea
        begin  //3
        horasstr:=horas.Strings[busca1['hora']-1];
        hora:=busca1['hora'];
        dia:=busca1['dia_semana'];
        repeat
          inc(hora,1);
          next;
          for xm:=0 to camposnombre.count-1 do
            if (busca1[trim(camposnombre[xm])]<>camposvalor[xm])
                   then salta:=true;
        until not ((dia=busca1['dia_semana']) and
              ((hora)=busca1['hora'])) or eof or salta;
        if not eof then  prior;
        horasstr:=horasstr+'-'+horas[busca1['hora']];
        tempstr:=memconvert.FieldList.Fields[busca1['dia_semana']+20].asstring;
        if (tempstr<>'') and (horasstr<>'') and
           (pos(horasstr,tempstr)=0) then  salto:=', '+#13+#10
            else salto:='';
        if (pos(horasstr,tempstr)=0) then
        memconvert.FieldList.Fields[busca1['dia_semana']+20].asstring:=tempstr+salto+
        horasstr;
        if not eof then  next;
        end; //3
        memconvert.post;
       // fin de agrupacion horas con otro concepto
        end;  //1
       end; // fin de agrupacion de horas por otros conceptos

  end;  //0


busca1.free;
horas.free;

end;

procedure Tconsultasagendapaci.llamaconvert(dataset: tdataset);
begin
conversion;
end;

procedure Tconsultasagendapaci.imprime(sender: tobject);
begin
superpan.printdbgrideh1.PageHeader.centerText.Text:=inputbox('','Entreu el titol del llistat','')+
  #13+#10+' (sol·licitat per '+mydoctor.desc+' el '+formatdatetime('dd/mm/yyyy hh:nn',now)+')';
superpan.printdbgrideh1.Preview;
end;

end.
