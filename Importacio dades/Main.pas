unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Halcn6DB, DBTables, DB, ComCtrls,
  HYSql, MemTable, HYEdit, JvExExtCtrls, JvImage, IBCustomDataSet, IBQuery,
  DBCtrls, JvDBImage, IBDatabase;

type
  TwMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    sbSortir: TSpeedButton;
    rg: TRadioGroup;
    P1: TPanel;
    bImport: TButton;
    Dbf: THalcyonDataSet;
    Select: TQuery;
    CreaFili: TCreateHalcyonDataSet;
    Barra: TProgressBar;
    gdb: TDatabase;
    CreaUM: TCreateHalcyonDataSet;
    CreaTract: TCreateHalcyonDataSet;
    CreaPresta: TCreateHalcyonDataSet;
    CreaBQ: TCreateHalcyonDataSet;
    CreaBSang: TCreateHalcyonDataSet;
    CreaOMAdm: TCreateHalcyonDataSet;
    CreaCaigudes: TCreateHalcyonDataSet;
    CreaEduCap: TCreateHalcyonDataSet;
    CreaEduLin: TCreateHalcyonDataSet;
    CreaEduP: TCreateHalcyonDataSet;
    CreaUppCap: TCreateHalcyonDataSet;
    CreaUppLin: TCreateHalcyonDataSet;
    CreaInfD: TCreateHalcyonDataSet;
    CreaDocsI: TCreateHalcyonDataSet;
    CreaCodiC: TCreateHalcyonDataSet;
    CreaEstInt: TCreateHalcyonDataSet;
    CreaInt: TCreateHalcyonDataSet;
    CreaOM: TCreateHalcyonDataSet;
    SelectB: TQuery;
    gdbB: TDatabase;
    CreaFoto: TCreateHalcyonDataSet;
    CreaPassis: TCreateHalcyonDataSet;
    CreaAnestesia: TCreateHalcyonDataSet;
    CreaGTN: TCreateHalcyonDataSet;
    CreaLOGCANVISLLIT: TCreateHalcyonDataSet;
    CreaRX: TCreateHalcyonDataSet;
    CreaMov: TCreateHalcyonDataSet;
    CreaMETGES: TCreateHalcyonDataSet;
    CreaFiliOld: TCreateHalcyonDataSet;
    pPeriode: TPanel;
    eDesde: THYTextEdit;
    eFins: THYTextEdit;
    Label2: TLabel;
    CreaPRESES: TCreateHalcyonDataSet;
    Panel3: TPanel;
    CreaAgendaPa: TCreateHalcyonDataSet;
    CreaOI: TCreateHalcyonDataSet;
    CreaTasquesI: TCreateHalcyonDataSet;
    CreaObjSC: TCreateHalcyonDataSet;
    qFotos: TIBQuery;
    dsFotos: TDataSource;
    Foto: TJvDBImage;
    GdbFotos: TIBDatabase;
    Trans: TIBTransaction;
    Panel4: TPanel;
    Label1: TLabel;
    Nom: TEdit;
    CreaFarPro: TCreateHalcyonDataSet;
    CreaFarEst: TCreateHalcyonDataSet;
    CreaCua: TCreateHalcyonDataSet;
    CreaCOVID: TCreateHalcyonDataSet;
    CreaVac: TCreateHalcyonDataSet;
    CreaRegProc: TCreateHalcyonDataSet;
    CreaGrafica: TCreateHalcyonDataSet;
    CreaEscCap: TCreateHalcyonDataSet;
    CreaHistoria: TCreateHalcyonDataSet;
    Label3: TLabel;
    CreaREC: TCreateHalcyonDataSet;
    procedure FormCreate(Sender: TObject);
    procedure rgClick(Sender: TObject);
    procedure bImportClick(Sender: TObject);
    procedure sbSortirClick(Sender: TObject);
  private
    NomTAULA,Total,CAMPS,WHERE: String;
    function TreureAccents(entra:String): String;
  public
    { Public declarations }
  end;

var
  wMain: TwMain;

implementation

uses Funciones;

{$R *.dfm}

procedure TwMain.FormCreate(Sender: TObject);
begin
  Self.AutoSize := True;
  eDesde.AsDate := Date{-365}; eFins.AsDate := Date;
end;


procedure TwMain.rgClick(Sender: TObject);
begin
    WHERE:='';
    pPeriode.Visible := {(rg.ItemIndex=6) or} (rg.ItemIndex=13) or (rg.ItemIndex=19);  // només visible per OMADMINISTRACIO i INFERDADES i HISTORIA
    Nom.Text := '';

    case rg.ItemIndex of
    0:  begin NomTAULA := 'FILIACIO';
              CAMPS := 'NUM_HIST,APELLIDO1,APELLIDO2,NOMBRE,DNI,NOMVIA,TELEFONO,TIPUSVIA,CODIGO,NUMERO,BLOC,ESCALA,PIS,PORTA,'+
                       'POBLACIO,PROVINCIA,RESIDENCIA,PAIS,SEXO,FECHA_NAC,LUGAR_NAC,ESTADO_CIV,SOE,TSI,TITULAR,PENSIONIST,IDIOMA,'+
                       'TELEFO1_FAM,DESCRIPCIO1,TELEFO2_FAM,DESCRIPCIO2,AMIC,MORT,USRA,UNITAT,C_UNITATMEDICA,EDAT,ESVIU'; end;
    1:  begin NomTAULA := 'FILIACIO';
              CAMPS := 'NUM_HIST,NOMBRE,APELLIDO1,APELLIDO2,FECHA_NAC,SEXO'; end;
    2:  begin NomTAULA := 'TRACTAMENTS T';
              CAMPS := 'C_TRACTAMENT,C_HISTORIA,C_PRESTACIO,DATA_INGRES,C_COORDINADOR,DATA_ALTA,DATA_PREALTA,C_LLIT,C_PLANTA,'+
                       'DURADA,ESTATINFORMEALTA,C_MOTIU,C_PROCES,FI_PROCES,ESPROVISIONAL,C_INFERMERIA,C_CENTREFAC,C_FISIOTERAPEUTA,'+
                       'C_LOGOPEDA,C_MUSICOTERAPEUTA,C_PSICOLEG,C_TREVALLSOCIAL,C_TERAPEUTA,C_FISIO_LABO_MARXA,C_FISIO_AR,C_ORIGEN';
              WHERE := 'JOIN CODICAMPS C ON T.C_ESTATFAC = C.C_CODI AND C.TIPUSCODI = "ESTATFACTU" AND C.R_CODI <> 9'; end;  // no passem els tractaments anul·lats
    3:  begin NomTAULA := 'PRESTACION';
              CAMPS := 'C_PRESTACIO,N_PRESTACIO,N_PRESTACIO2,RESUM,TIPUS,CODIFACTURACIO,DESCRIPCIOSCS,ESEASE,PLANTA'; end;
    4:  begin NomTAULA := 'BQUIRURGIC';
              CAMPS := '*'; end;
    5:  begin NomTAULA := 'BANCSANG';
              CAMPS := 'C_INTERCON,EDAT,PES,URGENCIA,HEMATIES,PLASMAFRESC,PLAQUETES,CRIOPRECIPITATS,A_HEMATOCRIT,A_AP,A_PLAQUETES'+
                       ',A_FIBRINOGEN,INFER_EXTRACCIO,DATA_EXTRACCIO,TRANSFUSIO,INFER_TRANSFUSIO,DATA_TRANSFUSIO,REACCIONSSN,'+
                       'REACCIONS,INFER_REACCIONS,DATA_REACCIONS,TRANSF_ANT,DATA_ANT,REACCIONS_ANT'; end;
    6:  {begin NomTAULA := 'OMADMINISTRACIO';
              CAMPS := 'ID,C_HISTORIA,C_ORDREMEDICA,DATA_PRESA,ADMINISTRACIO,C_MOTIU,N_MOTIU,DATA_ADMIN,C_USUARI_ADMIN,'+
                       'C_USUARI_RISC,U_INSULINA,COMENTARI'; end;}
        begin NomTaula := 'ESCALESCAP C';
              CAMPS    := 'C.CLAU,C.C_HISTORIA,C.C_TRACTAMENT,C.C_ESCALA,C.C_ENTRADA,C.DATA,C.ANULAT,C.DATA_ANULAT,C.C_USUARI,C.TIPUS,C.DATA_ADM,L.D_ITEM';
              WHERE    := 'LEFT JOIN ESCALESLIN L ON C.CLAU=L.CLAU AND L.C_ITEM IN(125, 1246, 1280) WHERE C.C_ESCALA IN(3,130,135)';
              Nom.Text := 'G:\USR\DAT\ESCALESCAP.dbf';
        end;
    7:  begin NomTAULA := 'CAIGUDES';
              CAMPS := 'ID,C_HISTORIA,DATA_CAIGUDA,HORA,C_USUARI,DATA_COMUNICAT,C_TRACTAMENT,LLIT,PAT_ADD,LLOC,ALT_FUNCSUP,'+
                       'PACIENT_COM,CAUSA,LESIONS,PACIENT_ON,LLITBAIX,INFORMACIO,VALORACIO,MESURES,OBSERVACIONS,ESC_ANT,'+
                       'ESC_NOU,INFORMAT_FAMILIA'; end;
    8:  begin NomTAULA := 'EDUCAP';
              CAMPS := 'C_EDUCAP,C_HISTORIA,C_TRACTAMENT,C_PARAM,A_QUI,DATA_DETECCIO,C_USUARI,ESTAT'; end;
    9:  begin NomTAULA := 'EDULIN';
              CAMPS := 'C_EDULIN,C_EDUCAP,C_TRACTAMENT,C_ACTUACIO,DATA,C_USUARI,ANULAT,DATA_ANULAT,ANOTACIO'; end;
    10: begin NomTAULA := 'EDUPARAMS';
              CAMPS := 'C_PARAM,N_PARAM,C_AREA,INFO,RESUM,TIPUS,ORDRE,BAIXA'; end;
    11: begin NomTAULA := 'UPPCAP';
              CAMPS := 'ID,C_HISTORIA,C_TRACTAMENT,DATA_CREACIO,INT_EXT,ESTAT,LOCALITZACIO,DATA_FINALITZA,USER_FINALITZA,DATA_ANULA,USER_ANULA,'+
                       'DATA_FINALITZA_AUTO,MOTIU_FINALITZACIO,VISTO,C_USER_VISTO,DATA_VISTO,UPP'; end;
    12: begin NomTAULA := 'UPPLIN';
              CAMPS := 'ID,DATA,MIDA1,MIDA2,GRAU,SEDESTACIO,COIXINS,POSTURA,ANULAT,DATA_ANULAT,MIDA3,EXUDAT,TEIXIT,C_USUARI,USER_ANULA,'+
                       'PUNTUACIO,LINIA,OBSERVACIONS'; end;
    13: begin NomTAULA := 'INFERDADES';
              CAMPS := 'C_TRACTAMENT,C_ITEM,DATA_VALOR,VALOR,USUARI,DATA,ID,ANULAT,DATA_ANULAT,MONITOR'; end;
    14: begin NomTAULA := 'DOCSINFER';
              CAMPS := 'ID,C_HISTORIA,C_TRACTAMENT,C_DOC,C_USUARI,DATA'; end;
    15: begin NomTAULA := 'CODICAMPS';
              CAMPS := 'TIPUSCODI,C_CODI,N_CODI,N_CODI2,R_CODI,PARAMS,ORDRE'; end;
    16: begin NomTAULA := 'UNITATM';
              CAMPS := 'C_UNITATM,N_UNITATM,C_UNITATA,C_UNITATRM,BAIXA,C_GRUP,N_GRUP'; end;
    17: begin NomTAULA := 'ESTATINTERCON';
              CAMPS := 'C_ESTAT,FET,PENDENT,ANULABLE,TITULCURS,NEXTESTAT,NEXTESTATRESI'; end;
    18: begin NomTAULA := 'INTERCON';
              CAMPS := 'C_INTERCON,C_ESPECIAL,C_TIPUS,URGENT,C_HISTORIA,C_TRACTAMENT,DATA1,C_METGE1,DATA2,DATA3,'+
                       'DATA_PROVA,DATA_PREVISTA,ESTAT'; end;
    19: {begin NomTAULA := 'ORDRESMEDIQUES';
              CAMPS := 'C_ORDREMEDICA,C_TRACTAMENT,C_HISTORIA,GTN,C_VIA,C_FREQUENCIA,DOSI,UNITAT_MESURA,DATA_INICI,'+
                       'HORA_INICI,C_ESTAT,DATA_SUSPENSIO,RISC,C_PRODUCTE,C_PRODUCTE2,OBSERVACIONS,DATA_PAUTAT,COMENTARI_FARMA,COMENTARI_INF'; end;}
        begin NomTAULA := 'HISTORIA';
              CAMPS := 'C_HISTORIA,C_TRACTAMENT,C_PRESTACIO,DATA,C_USUARI,ANULAT,QUEES';
              WHERE := 'WHERE QUEES in(11,23,48) AND C_GRUP="UN" ';
        end;
    20: begin NomTAULA := 'PASSIS';
              CAMPS := 'C_HISTORIA,INICI,FI,ADM_INICI,ADM_FI,DATA_ADMIN,C_TRACTAMENT,INFER_PASSI,DATA_PASSI';
        end;
    21: begin NomTAULA := 'FOTOPACIENTE';
              CAMPS := 'C_HISTORIA,FECHAFOTO,USUARI,FECHAFOTO1';
        end;
    22: begin NomTAULA := 'BQANESTESIA';
              CAMPS := 'C_INTERV,DATA,C_USUARI,G1,G2,G3,G4,G5,G6,CG1,CG2,CG3,CG4,CG5,CG6,CG7,CG8,CG9,CG10,CLV1,CLV2,CLN1,CLN2,'+
                       'CL3,CL4,CL5,CG11,CG12,CG13,GRAU_SEVERITAT';
        end;
    23: begin NomTAULA := 'GTN';
              CAMPS := 'GTN,N_GTN,C_FAMILIA,C_ESTAT,USRESTRINGIT,ESGUIA,RISCA,RISCB,RISCC';
        end;
    24: begin NomTAULA := 'LOGCANVISLLIT';
              CAMPS := 'ID,C_HISTORIA,LLIT_ANTIC,LLIT_NOU,DATA';

        end;
    25: begin NomTAULA := 'RX';
              CAMPS    := 'NUM_HIST,C_INTERCON,DATA,METGE,REALITZA,TIPUSEX,POSIC,URGENT,INFORME,PROVA,NUMERO,C_TRACTAMENT,TIPOPLACA,'+
                          'TUBO,DISPAROS,DISPAROSDEFECTUOSOS';
        end;
    26: begin
          {if AvisoSN('Aquesta exportació pot trigar varis minuts. Voleu continuar (S/N)?') then
          begin}
              NomTAULA := 'MOVIMENTS M';
              CAMPS    := 'M.T_MOV,M.C_CENTRECOST,M.C_PROD,M.N_PROD,M.CANTITAT,M.PREU,M.PREUMITG,M.DATAMOV';
              WHERE    := 'JOIN PRODUCTES P ON P.C_PROD=M.C_PROD AND P.TIPUSPROD="P" '+
                          'WHERE M.DATAMOV>="01.01.2012" AND M.C_CENTRECOST STARTING WITH "35" ';
          {end
          else begin
              P1.Hide;
              Exit;
          end;}
        end;
    27: begin NomTAULA := 'METGES';
              CAMPS    := 'CODI,NOMBRE,COGNOM1,COGNOM,C_GRUP,NC,BAIXA';
        end;
    28: begin NomTAULA := 'OMADMPRESES';
              CAMPS    := 'C_HISTORIA,ID_PRESA,C_OM,DATA_PRESA,ESTAT_INICI,USUARI_INICI,ESTAT_FI,USUARI_RISC,'+
                          'C_MOTIU,N_MOTIU,U_INSULINA,COMENTARI,DATA_ULTIMA,USUARI_ULTIM';
        end;
    29: begin NomTAULA := 'AGENDAPACIENT';
              CAMPS    := 'ID, C_HISTORIA, DIA_SEMANA, DATAI, DATAF, C_ACTIVITAT, C_USUARI_INI, C_USUARI_FIN, HORA, '+
                          'C_METGEVALIDA, DATA_VALIDA, C_TRACTAMENT';
              WHERE    := 'WHERE DATAF IS NULL';
        end;
    30: begin NomTAULA := 'ORDRESINFERMERIA';
              CAMPS    := 'C_HISTORIA, DATA_INICI, COMENTARI ';
              WHERE    := 'WHERE C_ESTAT = "V"';
        end;
    31: begin NomTAULA := 'INFERTASQUES';
              CAMPS    := 'C_TRACTAMENT, TASCA, DATA_I';
              WHERE    := 'WHERE ESTAT = "V"';
        end;
    32: begin NomTAULA := 'P_OBJCAP_ACTIUSTOT(NULL)';
              CAMPS    := 'C_PLANTA, C_LLIT, C_HISTORIA, NOMCOMPLET, C_TRACTAMENT, DATA_INGRES, DATA_PREALTA, C_COORDINADOR, DATA_1SESSIO, DATA_USESSIO, '+
                          'C_AREA, C_PARE, N_PARE, C_GRUP, N_GRUP, C_ITEM, N_ITEM, MARCAT, ASSOLIT, DATA_ASSOLIT, USUARI_ASSOLIT';
              Nom.Text := 'G:\USR\DAT\OBJSC.dbf';
        end;
    33: begin NomTAULA := 'FOTOPACIENTE';
              CAMPS    := 'C_HISTORIA,FOTO';
        end;
    34: begin NomTAULA := 'PRODUCTES';
              CAMPS    := 'C_PROD, N_REG, N_REG2, N_REG3, EAN, REF, TIPUSPROD, RISC, C_ESTAT, GAVETA, UBI, GTN, CODICOMPTABLE';
              Nom.Text := 'G:\USR\DAT\FARPRO.dbf';
        end;
    35: begin NomTAULA := 'PLANILLES A';
              CAMPS    := 'P.C_PROD, P.N_REG2, A.STOCKFIX, A.C_CENTRECOST, P.N_REG3, A.UBI_UH, P.EAN';
              WHERE    := 'INNER JOIN PRODUCTES P ON A.C_PRODUCTE = P.C_PROD ORDER BY P.N_REG2';
              Nom.Text := 'G:\USR\DAT\FAREST.dbf';
        end;
    36: begin NomTAULA := 'CUAQMATIC C';
              CAMPS    := 'C.C_TRACTAMENT, C.DATA_INSERCIO, C.DATA_CRIDAT, C.DATA_VISITAT, E.DATA_PREINGRES, E.HORA_PREINGRES, C.ESTAT_QMATIC ';
              WHERE    := 'LEFT JOIN ESPERA E ON C.C_TRACTAMENT = E.C_TRACTAMENTDESTI';
              Nom.Text := 'G:\USR\DAT\CUAQMATIC.dbf';
        end;
    37: begin NomTAULA := 'SEMAFORS S';
              CAMPS    := 'S.C_HISTORIA, SEMAFORS_ESTATS.N_ESTAT, S.ID, S.TIPUS, S.DATA, S.INFO, S.DATA_REG, S.USUARI_REG';
              WHERE    := 'Left Join SEMAFORS_ESTATS On S.C_ESTAT = SEMAFORS_ESTATS.C_ESTAT and SEMAFORS_ESTATS.tipus=S.TIPUS '+
                          'Where S.ANULAT = "N" and S.TIPUS = "CoV" Order By S.C_HISTORIA ';
        end;
    38: begin NomTAULA := 'SEMAFORS S';
              CAMPS    := 'S.ID, S.C_HISTORIA, S.TIPUS, S.C_ESTAT, SEMAFORS_ESTATS.N_ESTAT, S.DATA, S.INFO, S.DATA_REG, S.USUARI_REG, S.ANULAT, S.DATA_ANULA, S.USUARI_ANULA, S.ID_REGINFER';
              WHERE    := 'Left Join SEMAFORS_ESTATS On S.C_ESTAT = SEMAFORS_ESTATS.C_ESTAT and SEMAFORS_ESTATS.tipus=S.TIPUS '+
                          'Where S.TIPUS = "Vac" And S.ANULAT = "N"';
              Nom.Text := 'G:\USR\DAT\VacCoV.dbf';
        end;
    39: begin NomTAULA := 'REGISTRESINFER R';
              CAMPS    := 'T.C_LLIT, T.C_PLANTA, R.T_REG, CC.N_CODI as TIPUS_REGISTRE, R.C_HISTORIA, R.C_TRACTAMENT, F.C_UNITATMEDICA, U.N_UNITATM, U.C_GRUP, U.N_GRUP, T.DATA_INGRES, '+
                          'T.DATA_ALTA, R.DATAINICI_REAL, R.C_USUARI_INICI, R.C_TIPUS, R.DATAFINAL_REAL, R.DATAINICI_AUTO, R.C_USUARI_FINAL, R.C_MOTIU';
              WHERE    := 'Inner Join TRACTAMENTS T On R.C_TRACTAMENT = T.C_TRACTAMENT                     '+
                          'Inner Join FILIACIO    F on R.C_HISTORIA = F.NUM_HIST                           '+
                          'Inner Join UNITATM     U On F.C_UNITATMEDICA = U.C_UNITATM                      '+
                          'Inner Join CODICAMPS  CC on R.T_REG=CC.C_CODI AND CC.TIPUSCODI="INFER.TIPUSREG" '+
                          'WHERE R.DATAFINAL_REAL is null';
              Nom.Text := 'G:\USR\DAT\RegProc.dbf';
        end;
    40: begin NomTaula := 'P_INFERDADES_VALORRECENT';
              CAMPS    := 'C_HISTORIA, C_TRACTAMENT, DATA_INGRES, C_LLIT, C_PLANTA, C_ITEM, VALOR, DATA_VALOR';
              Nom.Text := 'G:\USR\DAT\ULTIMVAL.dbf';
        end;
    41: begin NomTAULA := 'P_CUES_EXPORTAWB';
              CAMPS    := 'C_TRACT, DINSERT, DCRIDAT, DVISITAT, DPREINGR, HPREINGR, ESTAT_QM ';
              Nom.Text := 'G:\USR\DAT\CUABUTTON.dbf';
        end;
    42: begin NomTAULA := 'P_SEMAFORS_RECACTIUS';
              CAMPS    := 'C_HISTORIA, NOMCOMPLET, SEXE, EDAT, C_ESTAT, N_ESTAT, ACTIU, DATA, DATA_REG, USUARI_REG, ID_REGINFER, C_PRESTACIO, C_COORDINADOR, DATA_INGRES, DATA_ALTA, C_TRACTAMENT, INFO ';
              Nom.Text := 'G:\USR\DAT\SemaforREC.dbf';
        end;
    end;
    if (Nom.Text='') then Nom.Text := 'G:\USR\DAT\'+CopyLeft(NomTAULA,8)+'.dbf';  // si el nom té més de 8 caràcters l'access no el reconeix i dóna error

    Panel4.Visible := rg.ItemIndex<>33;                                           // per passar fotos de cares de pacients no mostar Fitxer DBF
    P1.Show;
end;

procedure TwMain.bImportClick(Sender: TObject);
var
  Compta,Llegits: Integer;
  Info: String;
begin
    Dbf.TableName := Nom.Text;

    if rg.itemindex=21 then
    begin
        SelectB.Close;
        SelectB.SQL.Clear;
        SelectB.SQL.Add('select count(*) as quants from');
        SelectB.SQL.Add(NomTAULA);
        if WHERE<>'' then SelectB.SQL.Add(WHERE);
        SelectB.Open;

        Barra.Max := SelectB.Fields[0].AsInteger;
        Compta := 0; Total:= SelectB.FieldByName('quants').AsString;

        SelectB.Close;
        SelectB.SQL.Clear;
        SelectB.SQL.Add('select '+CAMPS+' from');
        SelectB.SQL.Add(NomTAULA);
        if WHERE<>'' then SelectB.SQL.Add(WHERE);
        SelectB.Open;

        SelectB.First;

        // parte 58292 - i
{      // els índexs s'han de crear abans que la database
        // (ixPrimary, ixUnique, ixDescending, ixCaseInsensitive, ixExpression, ixNonMaintained)
       CreaFoto.DBFTable.IndexDefs.Add('c_historia','c_historia',[ixPrimary]);
        // Dbf.IndexDefs.Add('c_historia','c_historia',[ixPrimary]);
        ShowMessage(CreaFoto.DBFTable.IndexDefs.Items[0].DisplayName+#13+
                    CreaFoto.DBFTable.IndexDefs.Items[0].DescFields+#13);
}       // parte 58292 - f
        
        if CreaFoto.Execute then
        begin
            //CreaFoto.DBFTable.IndexOn('c_historia','c_historia','c_historia','c_historia',Unique,Ascending);  // parte 58292: no funciona
            Dbf.Open;
            while not SelectB.Eof do
            begin
                Dbf.Append;
                Dbf.FieldByName('C_HISTORIA').Value := SelectB.FieldByName('C_HISTORIA').Value;
                Dbf.FieldByName('FECHAFOTO' ).Value := SelectB.FieldByName('FECHAFOTO' ).Value;
                Dbf.FieldByName('USUARI'    ).Value := SelectB.FieldByName('USUARI'    ).Value;
                Dbf.FieldByName('FECHAFOTO1').Value := SelectB.FieldByName('FECHAFOTO1').Value;

                Dbf.Post;
                Inc(Compta);
                Barra.Position := Compta;
                SelectB.Next;
            end;
        end;
    end
    else if  rg.itemindex=33 then
    begin
        SelectB.Close;
        SelectB.SQL.Clear;
        SelectB.SQL.Add('select count(*) as quants from');
        SelectB.SQL.Add(NomTAULA);
        if WHERE<>'' then SelectB.SQL.Add(WHERE);
        SelectB.Open;

        Barra.Max := SelectB.Fields[0].AsInteger;
        Compta := 0; Total:= SelectB.FieldByName('quants').AsString;

        SelectB.Close;
        SelectB.SQL.Clear;
        SelectB.SQL.Add('select '+CAMPS+' from');
        SelectB.SQL.Add(NomTAULA);
        if WHERE<>'' then SelectB.SQL.Add(WHERE);
        SelectB.Open;

        SelectB.First; Llegits := 1;
        while not SelectB.Eof do
        begin
            // només volen les fotos dels pacients ingressats el dia que es fa l'extracció
            Select.Close;
            Select.SQL.Clear;
            Select.SQL.Text := 'select c_tractament from tractaments where c_historia='+SelectB.FieldByName('C_HISTORIA').AsString+' and c_prestacio="1004" '+
                               'and (data_ingres <= "TODAY" and (data_alta >= "TODAY" or data_alta is null))';
            Select.Open;

            if not Select.FieldByName('c_tractament').IsNull then
            begin
                qFotos.Close;
                qFotos.SQL.Text := 'select * from FOTOPACIENTE where C_HISTORIA = ' + SelectB.FieldByName('C_HISTORIA').AsString;
                qFotos.Open;
                Foto.Picture.SaveToFile('G:\usr\acreditacio\CBD\FotosPacients\'+SelectB.FieldByName('C_HISTORIA').AsString+'.jpg');
                Inc(Compta);
            end;

            Inc(Llegits);
            Barra.Position := Llegits;
            SelectB.Next;
        end;
    end
    else begin
        Select.Close;
        Select.SQL.Clear;
        Select.SQL.Add('select count(*) as quants from');
        Select.SQL.Add(NomTAULA);
        if WHERE<>'' then Select.SQL.Add(WHERE);

        if pPeriode.Visible then
        begin
            if (eDesde.AsDateTime=0) or (eFins.AsDateTime=0) then
            begin
                MessageDlg('Cal que informeu el període', mtError, [mbOK], 0); Exit;
            end
            else begin
                if      (rg.itemindex=6)  then Select.Sql.Add('where DATA_PRESA BETWEEN "'+FormatDateTime('dd.mm.yyyy 00:00:00',eDesde.AsDateTime)+
                                                              '" and "'+FormatDateTime('dd.mm.yyyy 23:59:59',eFins.AsDateTime)+'"')
                else if (rg.itemindex=13) then Select.Sql.Add('where DATA_VALOR BETWEEN "'+FormatDateTime('dd.mm.yyyy 00:00:00',eDesde.AsDateTime)+
                                                              '" and "'+FormatDateTime('dd.mm.yyyy 23:59:59',eFins.AsDateTime)+'"')
                else if (rg.itemindex=19) then Select.Sql.Add('and DATA BETWEEN "'+FormatDateTime('dd.mm.yyyy 00:00:00',eDesde.AsDateTime)+
                                                              '" and "'+FormatDateTime('dd.mm.yyyy 23:59:59',eFins.AsDateTime)+'"');
            end;
        end;

        Select.Open;

        Barra.Max := Select.Fields[0].AsInteger;
        Compta := 0; Total:= Select.FieldByName('quants').AsString;

        Select.Close;
        Select.SQL.Clear;
        Select.SQL.Add('select '+CAMPS+' from');
        Select.SQL.Add(NomTAULA);
        if WHERE<>'' then Select.SQL.Add(WHERE);
//        Select.SQL.Add('rows 20');  // <-- Això és només per fer proves !!!!!!!!!!!!!!!!

        if pPeriode.Visible then
        begin
            if (eDesde.AsDateTime=0) or (eFins.AsDateTime=0) then
            begin
                MessageDlg('Cal que informeu el període', mtError, [mbOK], 0); Exit;
            end
            else begin
                if      (rg.itemindex=6)  then Select.Sql.Add('where DATA_PRESA BETWEEN "'+FormatDateTime('dd.mm.yyyy 00:00:00',eDesde.AsDateTime)+
                                                              '" and "'+FormatDateTime('dd.mm.yyyy 23:59:59',eFins.AsDateTime)+'"')
                else if (rg.itemindex=13) then Select.Sql.Add('where DATA_VALOR BETWEEN "'+FormatDateTime('dd.mm.yyyy 00:00:00',eDesde.AsDateTime)+
                                                              '" and "'+FormatDateTime('dd.mm.yyyy 23:59:59',eFins.AsDateTime)+'"')
                else if (rg.itemindex=19) then Select.Sql.Add('and DATA BETWEEN "'+FormatDateTime('dd.mm.yyyy 00:00:00',eDesde.AsDateTime)+
                                                              '" and "'+FormatDateTime('dd.mm.yyyy 23:59:59',eFins.AsDateTime)+'"');
            end;
        end;

        Select.Open;
        Select.First;

        case rg.ItemIndex of
        0: begin
              if CreaFili.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do   // només dades de V_FILIATS
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('NUM_HIST'  ).Value := Select.FieldByName('NUM_HIST'   ).Value;
                      Dbf.FieldByName('APELLIDO1' ).Value := Select.FieldByName('APELLIDO1'  ).Value;
                      Dbf.FieldByName('APELLIDO2' ).Value := Select.FieldByName('APELLIDO2'  ).Value;
                      Dbf.FieldByName('NOMBRE'    ).Value := Select.FieldByName('NOMBRE'     ).Value;
                      Dbf.FieldByName('DNI'       ).Value := Select.FieldByName('DNI'        ).Value;
                      Dbf.FieldByName('NOMVIA'    ).Value := Select.FieldByName('NOMVIA'     ).Value;
                      Dbf.FieldByName('TELEFONO'  ).Value := Select.FieldByName('TELEFONO'   ).Value;
                      Dbf.FieldByName('TIPUSVIA'  ).Value := Select.FieldByName('TIPUSVIA'   ).Value;
                      Dbf.FieldByName('CODIGO'    ).Value := Select.FieldByName('CODIGO'     ).Value;
                      Dbf.FieldByName('NUMERO'    ).Value := Select.FieldByName('NUMERO'     ).Value;
                      Dbf.FieldByName('BLOC'      ).Value := Select.FieldByName('BLOC'       ).Value;
                      Dbf.FieldByName('ESCALA'    ).Value := Select.FieldByName('ESCALA'     ).Value;
                      Dbf.FieldByName('PIS'       ).Value := Select.FieldByName('PIS'        ).Value;
                      Dbf.FieldByName('PORTA'     ).Value := Select.FieldByName('PORTA'      ).Value;
                      Dbf.FieldByName('POBLACIO'  ).Value := Select.FieldByName('POBLACIO'   ).Value;
                      Dbf.FieldByName('PROVINCIA' ).Value := Select.FieldByName('PROVINCIA'  ).Value;
                      Dbf.FieldByName('RESIDENCIA').Value := Select.FieldByName('RESIDENCIA' ).Value;
                      Dbf.FieldByName('PAIS'      ).Value := Select.FieldByName('PAIS'       ).Value;
                      Dbf.FieldByName('SEXO'      ).Value := Select.FieldByName('SEXO'       ).Value;
                      Dbf.FieldByName('FECHA_NAC' ).Value := Select.FieldByName('FECHA_NAC'  ).Value;
                      Dbf.FieldByName('LUGAR_NAC' ).Value := Select.FieldByName('LUGAR_NAC'  ).Value;
                      Dbf.FieldByName('ESTADO_CIV').Value := Select.FieldByName('ESTADO_CIV' ).Value;
                      Dbf.FieldByName('SOE'       ).Value := Select.FieldByName('SOE'        ).Value;
                      Dbf.FieldByName('TSI'       ).Value := Select.FieldByName('TSI'        ).Value;
                      Dbf.FieldByName('TITULAR'   ).Value := Select.FieldByName('TITULAR'    ).Value;
                      Dbf.FieldByName('PENSIONIST').Value := Select.FieldByName('PENSIONIST' ).Value;
                      Dbf.FieldByName('IDIOMA'    ).Value := Select.FieldByName('IDIOMA'     ).Value;
                      Dbf.FieldByName('TELEFO1_FA').Value := Select.FieldByName('TELEFO1_FAM').Value;
                      Dbf.FieldByName('DESCRIP1'  ).Value := Select.FieldByName('DESCRIPCIO1').Value;
                      Dbf.FieldByName('TELEFO2_FA').Value := Select.FieldByName('TELEFO2_FAM').Value;
                      Dbf.FieldByName('DESCRIP2'  ).Value := Select.FieldByName('DESCRIPCIO2').Value;
                      Dbf.FieldByName('AMIC'      ).Value := Select.FieldByName('AMIC'       ).Value;
                      Dbf.FieldByName('MORT'      ).Value := Select.FieldByName('MORT'       ).Value;
                      Dbf.FieldByName('USRA'      ).Value := Select.FieldByName('USRA'       ).Value;
                      Dbf.FieldByName('UNITAT'    ).Value := Select.FieldByName('UNITAT'     ).Value;
                      Dbf.FieldByName('UMEDICA'   ).Value := Select.FieldByName('C_UNITATMEDICA').Value;                      
                      Dbf.FieldByName('EDAT'      ).Value := Select.FieldByName('EDAT'       ).Value;
                      Dbf.FieldByName('ESVIU'     ).Value := Select.FieldByName('ESVIU'      ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
        1: begin
              if CreaFiliOld.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do   // només dades de V_FILIATS
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('NUMHIST' ).Value := Select.FieldByName('NUM_HIST' ).Value;
                      Dbf.FieldByName('NOM'     ).Value := Select.FieldByName('NOMBRE'   ).Value;
                      Dbf.FieldByName('COGNOM1' ).Value := Select.FieldByName('APELLIDO1').Value;
                      Dbf.FieldByName('COGNOM2' ).Value := Select.FieldByName('APELLIDO2').Value;
                      Dbf.FieldByName('DATANAIX').Value := Select.FieldByName('FECHA_NAC').Value;
                      Dbf.FieldByName('SEXE'    ).Value := Select.FieldByName('SEXO'     ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
        2: begin    // només de V_TRACTAMENTS_LIST
              if CreaTract.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_TRACTA'  ).Value := Select.FieldByName('C_TRACTAMENT' ).Value;
                      Dbf.FieldByName('C_HIST'    ).Value := Select.FieldByName('C_HISTORIA'   ).Value;
                      Dbf.FieldByName('C_PRESTA'  ).Value := Select.FieldByName('C_PRESTACIO'  ).Value;
                      Dbf.FieldByName('DATA_ING'  ).Value := Select.FieldByName('DATA_INGRES'  ).Value;
                      Dbf.FieldByName('C_COORDINA').Value := Select.FieldByName('C_COORDINADOR').Value;
                      Dbf.FieldByName('DATA_ALTA' ).Value := Select.FieldByName('DATA_ALTA'    ).Value;
                      Dbf.FieldByName('DATA_PREAL').Value := Select.FieldByName('DATA_PREALTA' ).Value;
                      Dbf.FieldByName('C_LLIT'    ).Value := Select.FieldByName('C_LLIT'       ).Value;
                      Dbf.FieldByName('C_PLANTA'  ).Value := Select.FieldByName('C_PLANTA'     ).Value;
                      Dbf.FieldByName('DURADA'    ).Value := Select.FieldByName('DURADA'       ).Value;
                      Dbf.FieldByName('ESTATINFAL').Value := Select.FieldByName('ESTATINFORMEALTA').Value;
                      Dbf.FieldByName('C_MOTIU'   ).Value := Select.FieldByName('C_MOTIU'      ).Value;
                      Dbf.FieldByName('C_PROCES'  ).Value := Select.FieldByName('C_PROCES'     ).Value;
                      Dbf.FieldByName('FI_PROCES' ).Value := Select.FieldByName('FI_PROCES'    ).Value;
                      Dbf.FieldByName('ESPROV'    ).Value := Select.FieldByName('ESPROVISIONAL').Value;
                      Dbf.FieldByName('C_INFER'   ).Value := Select.FieldByName('C_INFERMERIA' ).Value;
                      Dbf.FieldByName('CF'        ).Value := Select.FieldByName('C_CENTREFAC'  ).Value;
                      Dbf.FieldByName('C_FISIO'   ).Value := Select.FieldByName('C_FISIOTERAPEUTA'  ).Value;
                      Dbf.FieldByName('C_LOGO'    ).Value := Select.FieldByName('C_LOGOPEDA'        ).Value;
                      Dbf.FieldByName('C_MUSIC'   ).Value := Select.FieldByName('C_MUSICOTERAPEUTA' ).Value;
                      Dbf.FieldByName('C_PSICO'   ).Value := Select.FieldByName('C_PSICOLEG'        ).Value;
                      Dbf.FieldByName('C_TRS'     ).Value := Select.FieldByName('C_TREVALLSOCIAL'   ).Value;
                      Dbf.FieldByName('C_TO'      ).Value := Select.FieldByName('C_TERAPEUTA'       ).Value;
                      Dbf.FieldByName('C_FI_LM'   ).Value := Select.FieldByName('C_FISIO_LABO_MARXA').Value;
                      Dbf.FieldByName('C_FI_AR'   ).Value := Select.FieldByName('C_FISIO_AR'        ).Value;
                      Dbf.FieldByName('C_ORIGEN'  ).Value := Select.FieldByName('C_ORIGEN'          ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
        3: begin
              if CreaPresta.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_PRESTA' ).Value := Select.FieldByName('C_PRESTACIO'   ).Value;
                      Dbf.FieldByName('N_PRESTA' ).Value := Select.FieldByName('N_PRESTACIO'   ).Value;
                      Dbf.FieldByName('N_PRESTA2').Value := Select.FieldByName('N_PRESTACIO2'  ).Value;
                      Dbf.FieldByName('RESUM'    ).Value := Select.FieldByName('RESUM'         ).Value;
                      Dbf.FieldByName('TIPUS'    ).Value := Select.FieldByName('TIPUS'         ).Value;
                      Dbf.FieldByName('CODIFACT' ).Value := Select.FieldByName('CODIFACTURACIO').Value;
                      Dbf.FieldByName('DESCSCS'  ).Value := Select.FieldByName('DESCRIPCIOSCS' ).Value;
                      Dbf.FieldByName('ESEASE'   ).Value := Select.FieldByName('ESEASE'        ).Value;
                      Dbf.FieldByName('PLANTA'   ).Value := Select.FieldByName('PLANTA'        ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
        4: begin
              if CreaBQ.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_INTERV' ).Value := Select.FieldByName('C_INTERV'     ).Value;
                      Dbf.FieldByName('C_TRACT'  ).Value := Select.FieldByName('C_TRACTAMENT' ).Value;
                      Dbf.FieldByName('C_HIST'   ).Value := Select.FieldByName('C_HISTORIA'   ).Value;
                      Dbf.FieldByName('TIPUS_P'  ).Value := Select.FieldByName('TIPUS_PRESTA' ).Value;
                      Dbf.FieldByName('C_DIAGP'  ).Value := Select.FieldByName('C_DIAG_OP'    ).Value;
                      Dbf.FieldByName('C_PROC'   ).Value := Select.FieldByName('C_PROCEDIMENT').Value;
                      Dbf.FieldByName('DATA_PREV').Value := Select.FieldByName('DATA_PREV'    ).Value;
                      Dbf.FieldByName('T_ANEST'  ).Value := Select.FieldByName('T_ANESTESIA'  ).Value;
                      Dbf.FieldByName('C_M_PREP' ).Value := Select.FieldByName('C_METGE_PREPARA').Value;
                      Dbf.FieldByName('DATA_PREP').Value := Select.FieldByName('DATA_PREPARA' ).Value;
                      Dbf.FieldByName('ITEM1_OK' ).Value := Select.FieldByName('ITEM1_OK'     ).Value;
                      Dbf.FieldByName('ITEM1_I'  ).Value := Select.FieldByName('ITEM1_I'      ).Value;
                      Dbf.FieldByName('ITEM2_OK' ).Value := Select.FieldByName('ITEM2_OK'     ).Value;
                      Dbf.FieldByName('ITEM2_I'  ).Value := Select.FieldByName('ITEM2_I'      ).Value;
                      Dbf.FieldByName('ITEM3_OK' ).Value := Select.FieldByName('ITEM3_OK'     ).Value;
                      Dbf.FieldByName('ITEM3_I'  ).Value := Select.FieldByName('ITEM3_I'      ).Value;
                      Dbf.FieldByName('ITEM4_OK' ).Value := Select.FieldByName('ITEM4_OK'     ).Value;
                      Dbf.FieldByName('ITEM4_I'  ).Value := Select.FieldByName('ITEM4_I'      ).Value;
                      Dbf.FieldByName('ITEM5_OK' ).Value := Select.FieldByName('ITEM5_OK'     ).Value;
                      Dbf.FieldByName('ITEM5_I'  ).Value := Select.FieldByName('ITEM5_I'      ).Value;
                      Dbf.FieldByName('ITEM6_OK' ).Value := Select.FieldByName('ITEM6_OK'     ).Value;
                      Dbf.FieldByName('ITEM6_I'  ).Value := Select.FieldByName('ITEM6_I'      ).Value;
                      Dbf.FieldByName('ITEM7_OK' ).Value := Select.FieldByName('ITEM7_OK'     ).Value;
                      Dbf.FieldByName('ITEM7_I'  ).Value := Select.FieldByName('ITEM7_I'      ).Value;
                      Dbf.FieldByName('ITEM8_OK' ).Value := Select.FieldByName('ITEM8_OK'     ).Value;
                      Dbf.FieldByName('ITEM8_I'  ).Value := Select.FieldByName('ITEM8_I'      ).Value;
                      Dbf.FieldByName('ITEM9_OK' ).Value := Select.FieldByName('ITEM9_OK'     ).Value;
                      Dbf.FieldByName('ITEM9_I'  ).Value := Select.FieldByName('ITEM9_I'      ).Value;
                      Dbf.FieldByName('ITEM10_OK').Value := Select.FieldByName('ITEM10_OK'    ).Value;
                      Dbf.FieldByName('ITEM10_I' ).Value := Select.FieldByName('ITEM10_I'     ).Value;
                      Dbf.FieldByName('ITEM11_OK').Value := Select.FieldByName('ITEM11_OK'    ).Value;
                      Dbf.FieldByName('ITEM11_I' ).Value := Select.FieldByName('ITEM11_I'     ).Value;
                      Dbf.FieldByName('ITEM12_OK').Value := Select.FieldByName('ITEM12_OK'    ).Value;
                      Dbf.FieldByName('ITEM12_I' ).Value := Select.FieldByName('ITEM12_I'     ).Value;
                      Dbf.FieldByName('ITEM13_OK').Value := Select.FieldByName('ITEM13_OK'    ).Value;
                      Dbf.FieldByName('ITEM13_I' ).Value := Select.FieldByName('ITEM13_I'     ).Value;
                      Dbf.FieldByName('ITEM14_OK').Value := Select.FieldByName('ITEM14_OK'    ).Value;
                      Dbf.FieldByName('ITEM14_I' ).Value := Select.FieldByName('ITEM14_I'     ).Value;
                      Dbf.FieldByName('ITEM15_OK').Value := Select.FieldByName('ITEM15_OK'    ).Value;
                      Dbf.FieldByName('ITEM15_I' ).Value := Select.FieldByName('ITEM15_I'     ).Value;
                      Dbf.FieldByName('ITEM16_OK').Value := Select.FieldByName('ITEM16_OK'    ).Value;
                      Dbf.FieldByName('ITEM16_I' ).Value := Select.FieldByName('ITEM16_I'     ).Value;
                      Dbf.FieldByName('ITEM17_OK').Value := Select.FieldByName('ITEM17_OK'    ).Value;
                      Dbf.FieldByName('ITEM17_I' ).Value := Select.FieldByName('ITEM17_I'     ).Value;
                      Dbf.FieldByName('CIRURGIA' ).Value := Select.FieldByName('C_CIRURGIA'   ).Value;
                      Dbf.FieldByName('ANESTESIO').Value := Select.FieldByName('C_ANESTESIOLEG').Value;
                      Dbf.FieldByName('CBIOPSIA' ).Value := Select.FieldByName('C_BIOPSIA'    ).Value;
                      Dbf.FieldByName('BOSSES'   ).Value := Select.FieldByName('BOSSES'       ).Value;
                      Dbf.FieldByName('D_ENTRADA').Value := Select.FieldByName('DATA_ENTRADA' ).Value;
                      Dbf.FieldByName('TEMPSA'   ).Value := Select.FieldByName('TEMPSA'       ).Value;
                      Dbf.FieldByName('TEMPSB'   ).Value := Select.FieldByName('TEMPSB'       ).Value;
                      Dbf.FieldByName('TEMPSC'   ).Value := Select.FieldByName('TEMPSC'       ).Value;
                      Dbf.FieldByName('TEMPSD'   ).Value := Select.FieldByName('TEMPSD'       ).Value;
    //                  Dbf.FieldByName('COMENTARI').Value := Select.FieldByName('COMENTARI'    ).Value;
                      Dbf.FieldByName('ANULACIO' ).Value := Select.FieldByName('ANULACIO'     ).Value;
                      Dbf.FieldByName('M_ANULA'  ).Value := Select.FieldByName('M_ANULACIO'   ).Value;
                      Dbf.FieldByName('DATA_ANUL').Value := Select.FieldByName('DATA_ANULACIO').Value;
                      Dbf.FieldByName('ESTAT'    ).Value := Select.FieldByName('ESTAT'        ).Value;
                      Dbf.FieldByName('D_CURES'  ).Value := Select.FieldByName('DATA_CURES'   ).Value;
                      Dbf.FieldByName('NUMERACIO').Value := Select.FieldByName('NUMERACIO'    ).Value;
                      Dbf.FieldByName('NUM_INT'  ).Value := Select.FieldByName('NUM_INTERV'   ).Value;
                      Dbf.FieldByName('OBSERVA'  ).Value := Select.FieldByName('OBSERVACIONS' ).Value;
                      Dbf.FieldByName('N_CIRURGI').Value := Select.FieldByName('N_CIRURGIA'   ).Value;
                      Dbf.FieldByName('C_METGEFI').Value := Select.FieldByName('C_METGE_FI'   ).Value;
                      Dbf.FieldByName('D_METGEFI').Value := Select.FieldByName('DATA_METGE_FI').Value;
                      Dbf.FieldByName('C_INFERFI').Value := Select.FieldByName('C_INFER_FI'   ).Value;
                      Dbf.FieldByName('D_INFERFI').Value := Select.FieldByName('DATA_INFER_FI').Value;
                      Dbf.FieldByName('C_ESPERA' ).Value := Select.FieldByName('C_ESPERA'     ).Value;
                      Dbf.FieldByName('N_PROC2'  ).Value := Select.FieldByName('N_PROCEDIMENT2').Value;
                      Dbf.FieldByName('PROFILAXI').Value := Select.FieldByName('C_PROFILAXI'  ).Value;
                      Dbf.FieldByName('DIETA_ABS').Value := Select.FieldByName('DIETA_ABSSN'  ).Value;
                      Dbf.FieldByName('VIA_SN'   ).Value := Select.FieldByName('VIASN'        ).Value;
                      Dbf.FieldByName('SANG_SN'  ).Value := Select.FieldByName('SANGSN'       ).Value;
                      Dbf.FieldByName('PREMEDICA').Value := Select.FieldByName('PREMEDICACIOSN').Value;
                      Dbf.FieldByName('N_DIAGP'  ).Value := Select.FieldByName('N_DIAG_OP'    ).Value;
                      Dbf.FieldByName('N_PROC'   ).Value := Select.FieldByName('N_PROCEDIMENT').Value;
                      Dbf.FieldByName('ITEM18_OK').Value := Select.FieldByName('ITEM18_OK'    ).Value;
                      Dbf.FieldByName('ITEM18_I' ).Value := Select.FieldByName('ITEM18_I'     ).Value;
                      Dbf.FieldByName('ITEM19_OK').Value := Select.FieldByName('ITEM19_OK'    ).Value;
                      Dbf.FieldByName('ITEM19_I' ).Value := Select.FieldByName('ITEM19_I'     ).Value;
                      Dbf.FieldByName('ITEM20_OK').Value := Select.FieldByName('ITEM20_OK'    ).Value;
                      Dbf.FieldByName('ITEM20_I' ).Value := Select.FieldByName('ITEM20_I'     ).Value;
                      Dbf.FieldByName('ITEM21_OK').Value := Select.FieldByName('ITEM21_OK'    ).Value;
                      Dbf.FieldByName('ITEM21_I' ).Value := Select.FieldByName('ITEM21_I'     ).Value;
                      Dbf.FieldByName('ITEM22_OK').Value := Select.FieldByName('ITEM22_OK'    ).Value;
                      Dbf.FieldByName('ITEM22_I' ).Value := Select.FieldByName('ITEM22_I'     ).Value;
                      Dbf.FieldByName('ESTAT_CMA').Value := Select.FieldByName('ESTAT_CMA').Value;
                      Dbf.FieldByName('COMPLICA' ).Value := Select.FieldByName('COMPLICAINTRASN').Value;
                      Dbf.FieldByName('ITEM23_OK').Value := Select.FieldByName('ITEM23_OK'    ).Value;
                      Dbf.FieldByName('ITEM23_I' ).Value := Select.FieldByName('ITEM23_I'     ).Value;
                      Dbf.FieldByName('ITEM24_OK').Value := Select.FieldByName('ITEM24_OK'    ).Value;
                      Dbf.FieldByName('ITEM24_I' ).Value := Select.FieldByName('ITEM24_I'     ).Value;
                      Dbf.FieldByName('ITEM25_OK').Value := Select.FieldByName('ITEM25_OK'    ).Value;
                      Dbf.FieldByName('ITEM25_I' ).Value := Select.FieldByName('ITEM25_I'     ).Value;
                      Dbf.FieldByName('G_DIAGP'  ).Value := Select.FieldByName('G_DIAG_OP'    ).Value;
                      Dbf.FieldByName('G_PROC'   ).Value := Select.FieldByName('G_PROCEDIMENT').Value;
                      Dbf.FieldByName('IDNEUROD' ).Value := Select.FieldByName('IDNEUROD'     ).Value;
                      Dbf.FieldByName('IDNEUROP' ).Value := Select.FieldByName('IDNEUROP'     ).Value;
                      Dbf.FieldByName('REINTERV' ).Value := Select.FieldByName('REINTERVENCIO').Value;
                      Dbf.FieldByName('VERIFENT' ).Value := Select.FieldByName('VERIFICAENTRADA').Value;
                      Dbf.FieldByName('SIGNIN'   ).Value := Select.FieldByName('SIGNIN'       ).Value;
                      Dbf.FieldByName('TIMEOUT'  ).Value := Select.FieldByName('TIMEOUT'      ).Value;
                      Dbf.FieldByName('SIGNOUT'  ).Value := Select.FieldByName('SIGNOUT'      ).Value;
                      Dbf.FieldByName('RASURARSN').Value := Select.FieldByName('RASURARSN'    ).Value;
                      Dbf.FieldByName('DINARSN'  ).Value := Select.FieldByName('DINARSN'      ).Value;
                      Dbf.FieldByName('C_ANESTES').Value := Select.FieldByName('C_ANESTESIA'  ).Value;
                      Dbf.FieldByName('C_PROTESI').Value := Select.FieldByName('C_PROTESI'    ).Value;
                      Dbf.FieldByName('T_CIRURGI').Value := Select.FieldByName('C_TIPUSCIRURGIA').Value;
                      Dbf.FieldByName('T_INTERV' ).Value := Select.FieldByName('C_TIPUSINTERV').Value;
                      Dbf.FieldByName('C_QUIRO'  ).Value := Select.FieldByName('C_QUIROFAN'   ).Value;
                      Dbf.FieldByName('C_SANG'   ).Value := Select.FieldByName('C_SANG'       ).Value;
                      Dbf.FieldByName('CONMATIES').Value := Select.FieldByName('CONCHEMATIES' ).Value;
                      Dbf.FieldByName('PLAQUETES').Value := Select.FieldByName('PLAQUETES'    ).Value;
                      Dbf.FieldByName('PLASMAF'  ).Value := Select.FieldByName('PLASMAFRESC'  ).Value;
                      Dbf.FieldByName('SANGTOTAL').Value := Select.FieldByName('SANGTOTAL'    ).Value;
                      Dbf.FieldByName('PCOMPLICA').Value := Select.FieldByName('PERCOMPLICACIO').Value;
                      Dbf.FieldByName('ESPECIAL' ).Value := Select.FieldByName('C_ESPECIALITAT').Value;
                      Dbf.FieldByName('REALITZA' ).Value := Select.FieldByName('REALITZADA'    ).Value;                      

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
        5: begin
              if CreaBSang.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_INTERCON').Value := Select.FieldByName('C_INTERCON'     ).Value;
                      Dbf.FieldByName('EDAT'      ).Value := Select.FieldByName('EDAT'           ).Value;
                      Dbf.FieldByName('PES'       ).Value := Select.FieldByName('PES'            ).Value;
                      Dbf.FieldByName('URGENCIA'  ).Value := Select.FieldByName('URGENCIA'       ).Value;
                      Dbf.FieldByName('HEMATIES'  ).Value := Select.FieldByName('HEMATIES'       ).Value;
                      Dbf.FieldByName('PLASMAF'   ).Value := Select.FieldByName('PLASMAFRESC'    ).Value;
                      Dbf.FieldByName('PLAQUETES' ).Value := Select.FieldByName('PLAQUETES'      ).Value;
                      Dbf.FieldByName('CRIOPRE'   ).Value := Select.FieldByName('CRIOPRECIPITATS').Value;
                      Dbf.FieldByName('HEMATOCRIT').Value := Select.FieldByName('A_HEMATOCRIT'   ).Value;
                      Dbf.FieldByName('AP'        ).Value := Select.FieldByName('A_AP'           ).Value;
                      Dbf.FieldByName('APLAQUETES').Value := Select.FieldByName('A_PLAQUETES'    ).Value;
                      Dbf.FieldByName('FIBRINOGEN').Value := Select.FieldByName('A_FIBRINOGEN'   ).Value;
                      Dbf.FieldByName('INF_EXTR'  ).Value := Select.FieldByName('INFER_EXTRACCIO').Value;
                      Dbf.FieldByName('DATA_EXTR' ).Value := Select.FieldByName('DATA_EXTRACCIO' ).Value;
                      Dbf.FieldByName('TRANSFUSIO').Value := Select.FieldByName('TRANSFUSIO'     ).Value;
                      Dbf.FieldByName('INF_TRANS' ).Value := Select.FieldByName('INFER_TRANSFUSIO').Value;
                      Dbf.FieldByName('DATA_TRANS').Value := Select.FieldByName('DATA_TRANSFUSIO').Value;
                      Dbf.FieldByName('REACSN'    ).Value := Select.FieldByName('REACCIONSSN'    ).Value;
                      Dbf.FieldByName('REAC'      ).Value := Select.FieldByName('REACCIONS'      ).Value;
                      Dbf.FieldByName('INF_REAC'  ).Value := Select.FieldByName('INFER_REACCIONS').Value;
                      Dbf.FieldByName('DATA_REAC' ).Value := Select.FieldByName('DATA_REACCIONS' ).Value;
                      Dbf.FieldByName('TRANSF_ANT').Value := Select.FieldByName('TRANSF_ANT'     ).Value;
                      Dbf.FieldByName('DATA_ANT'  ).Value := Select.FieldByName('DATA_ANT'       ).Value;
                      Dbf.FieldByName('REAC_ANT'  ).Value := Select.FieldByName('REACCIONS_ANT'  ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
        6: begin
              {if CreaOMAdm.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('ID'        ).Value := Select.FieldByName('ID'           ).Value;
                      Dbf.FieldByName('C_HIST'    ).Value := Select.FieldByName('C_HISTORIA'   ).Value;
                      Dbf.FieldByName('C_OM'      ).Value := Select.FieldByName('C_ORDREMEDICA').Value;
                      Dbf.FieldByName('DATA_PRESA').Value := Select.FieldByName('DATA_PRESA'   ).Value;
                      Dbf.FieldByName('ADMINISTRA').Value := Select.FieldByName('ADMINISTRACIO').Value;
                      Dbf.FieldByName('C_MOTIU'   ).Value := Select.FieldByName('C_MOTIU'      ).Value;
                      Dbf.FieldByName('N_MOTIU'   ).Value := Select.FieldByName('N_MOTIU'      ).Value;
                      Dbf.FieldByName('DATA_ADMIN').Value := Select.FieldByName('DATA_ADMIN'   ).Value;
                      Dbf.FieldByName('USER_ADMIN').Value := Select.FieldByName('C_USUARI_ADMIN').Value;
                      Dbf.FieldByName('USER_RISC' ).Value := Select.FieldByName('C_USUARI_RISC').Value;
                      Dbf.FieldByName('U_INSULINA').Value := Select.FieldByName('U_INSULINA'   ).Value;
                      Dbf.FieldByName('COMENTARI' ).Value := Select.FieldByName('COMENTARI'    ).Value;
                      Dbf.Post;

                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end; }
               if CreaEscCap.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('CLAU'     ).Value := Select.FieldByName('CLAU').Value;
                       Dbf.FieldByName('C_ESCALA' ).Value := Select.FieldByName('C_ESCALA').Value;
                       Dbf.FieldByName('C_HIST'   ).Value := Select.FieldByName('C_HISTORIA').Value;
                       Dbf.FieldByName('C_TRACT'  ).Value := Select.FieldByName('C_TRACTAMENT').Value;
                       Dbf.FieldByName('C_ENTRADA').Value := Select.FieldByName('C_ENTRADA').Value;
                       Dbf.FieldByName('DATA'     ).Value := Select.FieldByName('DATA').Value;
                       Dbf.FieldByName('ANULAT'   ).Value := Select.FieldByName('ANULAT').Value;
                       Dbf.FieldByName('D_ANULAT' ).Value := Select.FieldByName('DATA_ANULAT').Value;
                       Dbf.FieldByName('C_USUARI' ).Value := Select.FieldByName('C_USUARI').Value;
                       Dbf.FieldByName('TIPUS'    ).Value := Select.FieldByName('TIPUS').Value;
                       Dbf.FieldByName('DATA_ADM' ).Value := Select.FieldByName('DATA_ADM').Value;
                       Dbf.FieldByName('TOTAL'    ).Value := Select.FieldByName('D_ITEM').Value;                       
                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
        7: begin
              if CreaCaigudes.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('ID'        ).Value := Select.FieldByName('ID'          ).Value;
                      Dbf.FieldByName('C_HIST'    ).Value := Select.FieldByName('C_HISTORIA'  ).Value;
                      Dbf.FieldByName('D_CAIGUDA' ).Value := Select.FieldByName('DATA_CAIGUDA').Value;
                      Dbf.FieldByName('HORA'      ).Value := Select.FieldByName('HORA'        ).Value;
                      Dbf.FieldByName('C_USUARI'  ).Value := Select.FieldByName('C_USUARI'    ).Value;
                      Dbf.FieldByName('D_COMUNICA').Value := Select.FieldByName('DATA_COMUNICAT').Value;
                      Dbf.FieldByName('C_TRACT'   ).Value := Select.FieldByName('C_TRACTAMENT').Value;
                      Dbf.FieldByName('LLIT'      ).Value := Select.FieldByName('LLIT'        ).Value;
                      Dbf.FieldByName('PAT_ADD'   ).Value := Select.FieldByName('PAT_ADD'     ).Value;
                      Dbf.FieldByName('LLOC'      ).Value := Select.FieldByName('LLOC'        ).Value;
                      Dbf.FieldByName('ALTFUNCSUP').Value := Select.FieldByName('ALT_FUNCSUP' ).Value;
                      Dbf.FieldByName('PACIENTCOM').Value := Select.FieldByName('PACIENT_COM' ).Value;
                      Dbf.FieldByName('CAUSA'     ).Value := Select.FieldByName('CAUSA'       ).Value;
                      Dbf.FieldByName('LESIONS'   ).Value := Select.FieldByName('LESIONS'     ).Value;
                      Dbf.FieldByName('PACIENT_ON').Value := Select.FieldByName('PACIENT_ON'  ).Value;
                      Dbf.FieldByName('LLITBAIX'  ).Value := Select.FieldByName('LLITBAIX'    ).Value;
                      Dbf.FieldByName('INFORMACIO').Value := Select.FieldByName('INFORMACIO'  ).Value;
                      Dbf.FieldByName('VALORACIO' ).Value := Select.FieldByName('VALORACIO'   ).Value;
                      Dbf.FieldByName('MESURES'   ).Value := Select.FieldByName('MESURES'     ).Value;
                      Dbf.FieldByName('OBSERVA'   ).Value := Select.FieldByName('OBSERVACIONS').Value;
                      Dbf.FieldByName('ESC_ANT'   ).Value := Select.FieldByName('ESC_ANT'     ).Value;
                      Dbf.FieldByName('ESC_NOU'   ).Value := Select.FieldByName('ESC_NOU'     ).Value;
                      Dbf.FieldByName('INFORMAT_F').Value := Select.FieldByName('INFORMAT_FAMILIA').Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
        8: begin
              if CreaEduCap.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_EDUCAP'  ).Value := Select.FieldByName('C_EDUCAP'     ).Value;
                      Dbf.FieldByName('C_HIST'    ).Value := Select.FieldByName('C_HISTORIA'   ).Value;
                      Dbf.FieldByName('C_TRACT'   ).Value := Select.FieldByName('C_TRACTAMENT' ).Value;
                      Dbf.FieldByName('C_PARAM'   ).Value := Select.FieldByName('C_PARAM'      ).Value;
                      Dbf.FieldByName('A_QUI'     ).Value := Select.FieldByName('A_QUI'        ).Value;
                      Dbf.FieldByName('D_DETECCIO').Value := Select.FieldByName('DATA_DETECCIO').Value;
                      Dbf.FieldByName('C_USUARI'  ).Value := Select.FieldByName('C_USUARI'     ).Value;
                      Dbf.FieldByName('ESTAT'     ).Value := Select.FieldByName('ESTAT'        ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
        9: begin
              if CreaEduLin.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_EDULIN'  ).Value := Select.FieldByName('C_EDULIN'    ).Value;
                      Dbf.FieldByName('C_EDUCAP'  ).Value := Select.FieldByName('C_EDUCAP'    ).Value;
                      Dbf.FieldByName('C_TRACT'   ).Value := Select.FieldByName('C_TRACTAMENT').Value;
                      Dbf.FieldByName('C_ACTUA'   ).Value := Select.FieldByName('C_ACTUACIO'  ).Value;
                      Dbf.FieldByName('DATA'      ).Value := Select.FieldByName('DATA'        ).Value;
                      Dbf.FieldByName('C_USUARI'  ).Value := Select.FieldByName('C_USUARI'    ).Value;
                      Dbf.FieldByName('ANULAT'    ).Value := Select.FieldByName('ANULAT'      ).Value;
                      Dbf.FieldByName('DATA_ANULA').Value := Select.FieldByName('DATA_ANULAT' ).Value;
                      Dbf.FieldByName('ANOTACIO'  ).Value := Select.FieldByName('ANOTACIO'    ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       10: begin
              if CreaEduP.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_PARAM').Value := Select.FieldByName('C_PARAM').Value;
                      Dbf.FieldByName('N_PARAM').Value := Select.FieldByName('N_PARAM').Value;
                      Dbf.FieldByName('C_AREA' ).Value := Select.FieldByName('C_AREA' ).Value;
                      Dbf.FieldByName('INFO'   ).Value := Select.FieldByName('INFO'   ).Value;
                      Dbf.FieldByName('RESUM'  ).Value := Select.FieldByName('RESUM'  ).Value;
                      Dbf.FieldByName('TIPUS'  ).Value := Select.FieldByName('TIPUS'  ).Value;
                      Dbf.FieldByName('ORDRE'  ).Value := Select.FieldByName('ORDRE'  ).Value;
                      Dbf.FieldByName('BAIXA'  ).Value := Select.FieldByName('BAIXA'  ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       11: begin
              if CreaUppCap.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('ID'        ).Value := Select.FieldByName('ID'           ).Value;
                      Dbf.FieldByName('C_HIST'    ).Value := Select.FieldByName('C_HISTORIA'   ).Value;
                      Dbf.FieldByName('C_TRACT'   ).Value := Select.FieldByName('C_TRACTAMENT' ).Value;
                      Dbf.FieldByName('D_CREACIO' ).Value := Select.FieldByName('DATA_CREACIO' ).Value;
                      Dbf.FieldByName('INT_EXT'   ).Value := Select.FieldByName('INT_EXT'      ).Value;
                      Dbf.FieldByName('ESTAT'     ).Value := Select.FieldByName('ESTAT'        ).Value;
                      Dbf.FieldByName('LOCALITZA' ).Value := Select.FieldByName('LOCALITZACIO' ).Value;
                      Dbf.FieldByName('DATA_FINAL').Value := Select.FieldByName('DATA_FINALITZA').Value;
                      Dbf.FieldByName('USER_FINAL').Value := Select.FieldByName('USER_FINALITZA').Value;
                      Dbf.FieldByName('DATA_ANULA').Value := Select.FieldByName('DATA_ANULA'   ).Value;
                      Dbf.FieldByName('USER_ANULA').Value := Select.FieldByName('USER_ANULA'   ).Value;
                      Dbf.FieldByName('DFINALAUTO').Value := Select.FieldByName('DATA_FINALITZA_AUTO').Value;
                      Dbf.FieldByName('MOTIU_FIN' ).Value := Select.FieldByName('MOTIU_FINALITZACIO').Value;
                      Dbf.FieldByName('VISTO'     ).Value := Select.FieldByName('VISTO'        ).Value;
                      Dbf.FieldByName('USER_VISTO').Value := Select.FieldByName('C_USER_VISTO' ).Value;
                      Dbf.FieldByName('D_VISTO'   ).Value := Select.FieldByName('DATA_VISTO'   ).Value;
                      Dbf.FieldByName('UPP'       ).Value := Select.FieldByName('UPP'          ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       12: begin
              if CreaUppLin.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('ID'        ).Value := Select.FieldByName('ID'          ).Value;
                      Dbf.FieldByName('DATA'      ).Value := Select.FieldByName('DATA'        ).Value;
                      Dbf.FieldByName('MIDA1'     ).Value := Select.FieldByName('MIDA1'       ).Value;
                      Dbf.FieldByName('MIDA2'     ).Value := Select.FieldByName('MIDA2'       ).Value;
                      Dbf.FieldByName('GRAU'      ).Value := Select.FieldByName('GRAU'        ).Value;
                      Dbf.FieldByName('SEDESTACIO').Value := Select.FieldByName('SEDESTACIO'  ).Value;
                      Dbf.FieldByName('COIXINS'   ).Value := Select.FieldByName('COIXINS'     ).Value;
                      Dbf.FieldByName('POSTURA'   ).Value := Select.FieldByName('POSTURA'     ).Value;
                      Dbf.FieldByName('ANULAT'    ).Value := Select.FieldByName('ANULAT'      ).Value;
                      Dbf.FieldByName('DATA_ANULA').Value := Select.FieldByName('DATA_ANULAT' ).Value;
                      Dbf.FieldByName('MIDA3'     ).Value := Select.FieldByName('MIDA3'       ).Value;
                      Dbf.FieldByName('EXUDAT'    ).Value := Select.FieldByName('EXUDAT'      ).Value;
                      Dbf.FieldByName('TEIXIT'    ).Value := Select.FieldByName('TEIXIT'      ).Value;
                      Dbf.FieldByName('C_USUARI'  ).Value := Select.FieldByName('C_USUARI'    ).Value;
                      Dbf.FieldByName('USER_ANULA').Value := Select.FieldByName('USER_ANULA'  ).Value;
                      Dbf.FieldByName('PUNTUACIO' ).Value := Select.FieldByName('PUNTUACIO'   ).Value;
                      Dbf.FieldByName('LINIA'     ).Value := Select.FieldByName('LINIA'       ).Value;
                      Dbf.FieldByName('OBSERVA'   ).Value := Select.FieldByName('OBSERVACIONS').Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       13: begin
              if CreaInfD.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_TRACT'   ).Value := Select.FieldByName('C_TRACTAMENT').Value;
                      Dbf.FieldByName('C_ITEM'    ).Value := Select.FieldByName('C_ITEM'      ).Value;
                      Dbf.FieldByName('DATA_VALOR').Value := Select.FieldByName('DATA_VALOR'  ).Value;
                      Dbf.FieldByName('VALOR'     ).Value := Select.FieldByName('VALOR'       ).Value;
                      Dbf.FieldByName('USUARI'    ).Value := Select.FieldByName('USUARI'      ).Value;
                      Dbf.FieldByName('DATA'      ).Value := Select.FieldByName('DATA'        ).Value;
                      Dbf.FieldByName('ID'        ).Value := Select.FieldByName('ID'          ).Value;
                      Dbf.FieldByName('ANULAT'    ).Value := Select.FieldByName('ANULAT'      ).Value;
                      Dbf.FieldByName('DATA_ANULA').Value := Select.FieldByName('DATA_ANULAT' ).Value;
                      Dbf.FieldByName('MONITOR'   ).Value := Select.FieldByName('MONITOR'     ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       14: begin
              if CreaDocsI.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('ID'      ).Value := Select.FieldByName('ID'          ).Value;
                      Dbf.FieldByName('C_HIST'  ).Value := Select.FieldByName('C_HISTORIA'  ).Value;
                      Dbf.FieldByName('C_TRACT' ).Value := Select.FieldByName('C_TRACTAMENT').Value;
                      Dbf.FieldByName('C_DOC'   ).Value := Select.FieldByName('C_DOC'       ).Value;
                      Dbf.FieldByName('C_USUARI').Value := Select.FieldByName('C_USUARI'    ).Value;
                      Dbf.FieldByName('DATA'    ).Value := Select.FieldByName('DATA'        ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       15: begin
              if CreaCodiC.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('TIPUSCODI' ).Value := Select.FieldByName('TIPUSCODI').Value;
                      Dbf.FieldByName('C_CODI'    ).Value := Select.FieldByName('C_CODI'   ).Value;
                      Dbf.FieldByName('N_CODI'    ).Value := Select.FieldByName('N_CODI'   ).Value;
                      Dbf.FieldByName('N_CODI2'   ).Value := Select.FieldByName('N_CODI2'  ).Value;
                      Dbf.FieldByName('R_CODI'    ).Value := Select.FieldByName('R_CODI'   ).Value;
                      Dbf.FieldByName('PARAMS'    ).Value := Select.FieldByName('PARAMS'   ).Value;
                      Dbf.FieldByName('ORDRE'     ).Value := Select.FieldByName('ORDRE'    ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
        16: begin
              if CreaUM.Execute then
              begin
                  Dbf.Open;

                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_UNITATM' ).Value := Select.FieldByName('C_UNITATM' ).Value;
                      Dbf.FieldByName('N_UNITATM' ).Value := Select.FieldByName('N_UNITATM' ).Value;
                      Dbf.FieldByName('C_UNITATA' ).Value := Select.FieldByName('C_UNITATA' ).Value;
                      Dbf.FieldByName('C_UNITATRM').Value := Select.FieldByName('C_UNITATRM').Value;
                      Dbf.FieldByName('BAIXA'     ).Value := Select.FieldByName('BAIXA'     ).Value;
                      Dbf.FieldByName('C_GRUP'    ).Value := Select.FieldByName('C_GRUP'    ).Value;
                      Dbf.FieldByName('N_GRUP'    ).Value := Select.FieldByName('N_GRUP'    ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       17: begin
              if CreaEstInt.Execute then
              begin
                  Dbf.Open;

                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_ESTAT'   ).Value := Select.FieldByName('C_ESTAT'      ).Value;
                      Dbf.FieldByName('FET'       ).Value := Select.FieldByName('FET'          ).Value;
                      Dbf.FieldByName('PENDENT'   ).Value := Select.FieldByName('PENDENT'      ).Value;
                      Dbf.FieldByName('ANULABLE'  ).Value := Select.FieldByName('ANULABLE'     ).Value;
                      Dbf.FieldByName('TITULCURS' ).Value := Select.FieldByName('TITULCURS'    ).Value;
                      Dbf.FieldByName('NEXTESTAT' ).Value := Select.FieldByName('NEXTESTAT'    ).Value;
                      Dbf.FieldByName('NEXTESTRES').Value := Select.FieldByName('NEXTESTATRESI').Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       18: begin
              if CreaInt.Execute then
              begin
                  Dbf.Open;

                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_INTERCON').Value := Select.FieldByName('C_INTERCON'   ).Value;
                      Dbf.FieldByName('C_ESPECIAL').Value := Select.FieldByName('C_ESPECIAL'   ).Value;
                      Dbf.FieldByName('C_TIPUS'   ).Value := Select.FieldByName('C_TIPUS'      ).Value;
                      Dbf.FieldByName('URGENT'    ).Value := Select.FieldByName('URGENT'       ).Value;
                      Dbf.FieldByName('C_HISTORIA').Value := Select.FieldByName('C_HISTORIA'   ).Value;
                      Dbf.FieldByName('C_TRACTA'  ).Value := Select.FieldByName('C_TRACTAMENT' ).Value;
                      Dbf.FieldByName('DATA1'     ).Value := Select.FieldByName('DATA1'        ).Value;
                      Dbf.FieldByName('D_RESP'    ).Value := Select.FieldByName('DATA2'        ).Value;
                      Dbf.FieldByName('D_FI'      ).Value := Select.FieldByName('DATA3'        ).Value;
                      Dbf.FieldByName('D_PROVA'   ).Value := Select.FieldByName('DATA_PROVA'   ).Value;
                      Dbf.FieldByName('C_METGE1'  ).Value := Select.FieldByName('C_METGE1'     ).Value;
                      Dbf.FieldByName('D_PREVISTA').Value := Select.FieldByName('DATA_PREVISTA').Value;
                      Dbf.FieldByName('ESTAT'     ).Value := Select.FieldByName('ESTAT'        ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       19: begin
              {if CreaOM.Execute then
              begin
                  Dbf.Open;

                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_ORDREM'  ).Value := Select.FieldByName('C_ORDREMEDICA' ).Value;
                      Dbf.FieldByName('C_TRACTA'  ).Value := Select.FieldByName('C_TRACTAMENT'  ).Value;
                      Dbf.FieldByName('C_HISTORIA').Value := Select.FieldByName('C_HISTORIA'    ).Value;
                      Dbf.FieldByName('C_VIA'     ).Value := Select.FieldByName('C_VIA'         ).Value;
                      Dbf.FieldByName('C_FREQ'    ).Value := Select.FieldByName('C_FREQUENCIA'  ).Value;
                      Dbf.FieldByName('DOSI'      ).Value := Select.FieldByName('DOSI'          ).Value;
                      Dbf.FieldByName('UMESURA'   ).Value := Select.FieldByName('UNITAT_MESURA' ).Value;
                      Dbf.FieldByName('DATA_INI'  ).Value := Select.FieldByName('DATA_INICI'    ).Value;
                      Dbf.FieldByName('HORA_INI'  ).Value := Select.FieldByName('HORA_INICI'    ).Value;
                      Dbf.FieldByName('C_ESTAT'   ).Value := Select.FieldByName('C_ESTAT'       ).Value;
                      Dbf.FieldByName('DATA_SUSP' ).Value := Select.FieldByName('DATA_SUSPENSIO').Value;
                      Dbf.FieldByName('GTN'       ).Value := Select.FieldByName('GTN'           ).Value;
                      Dbf.FieldByName('RISC'      ).Value := Select.FieldByName('RISC'          ).Value;
                      Dbf.FieldByName('C_PROD'    ).Value := Select.FieldByName('C_PRODUCTE'    ).Value;
                      Dbf.FieldByName('C_PROD2'   ).Value := Select.FieldByName('C_PRODUCTE2'   ).Value;
                      Dbf.FieldByName('OBSERV'    ).Value := Select.FieldByName('OBSERVACIONS'  ).Value;
                      Dbf.FieldByName('D_PAUTAT'  ).Value := Select.FieldByName('DATA_PAUTAT'   ).Value;
                      Dbf.FieldByName('C_PROD2'   ).Value := Select.FieldByName('C_PRODUCTE2'   ).Value;
                      Dbf.FieldByName('COMFARM'   ).Value := Select.FieldByName('COMENTARI_FARMA').Value;
                      Dbf.FieldByName('COMINF'    ).Value := Select.FieldByName('COMENTARI_INF' ).Value;
                      
                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;  }
              if CreaHistoria.Execute then
              begin
                  Dbf.Open;

                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_HIST').Value := Select.FieldByName('C_HISTORIA').Value;
                      Dbf.FieldByName('C_TRACT').Value := Select.FieldByName('C_TRACTAMENT').Value;
                      Dbf.FieldByName('PRESTA').Value := Select.FieldByName('C_PRESTACIO').Value;
                      Dbf.FieldByName('DATA').Value := Select.FieldByName('DATA').Value;
                      Dbf.FieldByName('USER').Value := Select.FieldByName('C_USUARI').Value;
                      Dbf.FieldByName('ANULAT').Value := Select.FieldByName('ANULAT').Value;
                      Dbf.FieldByName('TIPUS').Value := Select.FieldByName('QUEES').Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       20: begin
              if CreaPassis.Execute then
              begin
                  Dbf.Open;

                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_HISTORIA').Value := Select.FieldByName('C_HISTORIA'  ).Value;
                      Dbf.FieldByName('INICI'     ).Value := Select.FieldByName('INICI'       ).Value;
                      Dbf.FieldByName('FI'        ).Value := Select.FieldByName('FI'          ).Value;
                      Dbf.FieldByName('ADM_INICI' ).Value := Select.FieldByName('ADM_INICI'   ).Value;
                      Dbf.FieldByName('ADM_FI'    ).Value := Select.FieldByName('ADM_FI'      ).Value;
                      Dbf.FieldByName('DATA_ADMIN').Value := Select.FieldByName('DATA_ADMIN'  ).Value;
                      Dbf.FieldByName('TRACTAMENT').Value := Select.FieldByName('C_TRACTAMENT').Value;
                      Dbf.FieldByName('INFERPASSI').Value := Select.FieldByName('INFER_PASSI' ).Value;
                      Dbf.FieldByName('DATA_PASSI').Value := Select.FieldByName('DATA_PASSI'  ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       22: begin
              if CreaAnestesia.Execute then
              begin
                  Dbf.Open;

                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_INTERV').Value := Select.FieldByName('C_INTERV'      ).Value;
                      Dbf.FieldByName('DATA'    ).Value := Select.FieldByName('DATA'          ).Value;
                      Dbf.FieldByName('C_USUARI').Value := Select.FieldByName('C_USUARI'      ).Value;
                      Dbf.FieldByName('G1'      ).Value := Select.FieldByName('G1'            ).Value;
                      Dbf.FieldByName('G2'      ).Value := Select.FieldByName('G2'            ).Value;
                      Dbf.FieldByName('G3'      ).Value := Select.FieldByName('G3'            ).Value;
                      Dbf.FieldByName('G4'      ).Value := Select.FieldByName('G4'            ).Value;
                      Dbf.FieldByName('G5'      ).Value := Select.FieldByName('G5'            ).Value;
                      Dbf.FieldByName('G6'      ).Value := Select.FieldByName('G6'            ).Value;
                      Dbf.FieldByName('CG1'     ).Value := Select.FieldByName('CG1'           ).Value;
                      Dbf.FieldByName('CG2'     ).Value := Select.FieldByName('CG2'           ).Value;
                      Dbf.FieldByName('CG3'     ).Value := Select.FieldByName('CG3'           ).Value;
                      Dbf.FieldByName('CG4'     ).Value := Select.FieldByName('CG4'           ).Value;
                      Dbf.FieldByName('CG5'     ).Value := Select.FieldByName('CG5'           ).Value;
                      Dbf.FieldByName('CG6'     ).Value := Select.FieldByName('CG6'           ).Value;
                      Dbf.FieldByName('CG7'     ).Value := Select.FieldByName('CG7'           ).Value;
                      Dbf.FieldByName('CG8'     ).Value := Select.FieldByName('CG8'           ).Value;
                      Dbf.FieldByName('CG9'     ).Value := Select.FieldByName('CG9'           ).Value;
                      Dbf.FieldByName('CG10'    ).Value := Select.FieldByName('CG10'          ).Value;
                      Dbf.FieldByName('CLV1'    ).Value := Select.FieldByName('CLV1'          ).Value;
                      Dbf.FieldByName('CLV2'    ).Value := Select.FieldByName('CLV2'          ).Value;
                      Dbf.FieldByName('CLN1'    ).Value := Select.FieldByName('CLN1'          ).Value;
                      Dbf.FieldByName('CLN2'    ).Value := Select.FieldByName('CLN2'          ).Value;
                      Dbf.FieldByName('CL3'     ).Value := Select.FieldByName('CL3'           ).Value;
                      Dbf.FieldByName('CL4'     ).Value := Select.FieldByName('CL4'           ).Value;
                      Dbf.FieldByName('CL5'     ).Value := Select.FieldByName('CL5'           ).Value;
                      Dbf.FieldByName('CG11'    ).Value := Select.FieldByName('CG11'          ).Value;
                      Dbf.FieldByName('CG12'    ).Value := Select.FieldByName('CG12'          ).Value;
                      Dbf.FieldByName('CG13'    ).Value := Select.FieldByName('CG13'          ).Value;
                      Dbf.FieldByName('GRAU_SEV').Value := Select.FieldByName('GRAU_SEVERITAT').Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       23: begin
              if CreaGTN.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('GTN'      ).Value := Select.FieldByName('GTN'         ).Value;
                      Dbf.FieldByName('N_GTN'    ).Value := Select.FieldByName('N_GTN'       ).Value;
                      Dbf.FieldByName('C_FAMILIA').Value := Select.FieldByName('C_FAMILIA'   ).Value;
                      Dbf.FieldByName('C_ESTAT'  ).Value := Select.FieldByName('C_ESTAT'     ).Value;
                      Dbf.FieldByName('USREST'   ).Value := Select.FieldByName('USRESTRINGIT').Value;
                      Dbf.FieldByName('ESGUIA'   ).Value := Select.FieldByName('ESGUIA'      ).Value;
                      Dbf.FieldByName('RISCA'    ).Value := Select.FieldByName('RISCA'       ).Value;
                      Dbf.FieldByName('RISCB'    ).Value := Select.FieldByName('RISCB'       ).Value;
                      Dbf.FieldByName('RISCC'    ).Value := Select.FieldByName('RISCC'       ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       24: begin
              if CreaLOGCANVISLLIT.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('ID'        ).Value := Select.FieldByName('ID'         ).Value;
                      Dbf.FieldByName('C_HISTORIA').Value := Select.FieldByName('C_HISTORIA' ).Value;
                      Dbf.FieldByName('LLIT_ANTIC').Value := Select.FieldByName('LLIT_ANTIC' ).Value;
                      Dbf.FieldByName('LLIT_NOU'  ).Value := Select.FieldByName('LLIT_NOU'   ).Value;
                      Dbf.FieldByName('DATA'      ).Value := Select.FieldByName('DATA'       ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       25: begin
              if CreaRX.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('NUM_HIST'  ).Value := Select.FieldByName('NUM_HIST'    ).Value;
                      Dbf.FieldByName('C_INTERCON').Value := Select.FieldByName('C_INTERCON'  ).Value;
                      Dbf.FieldByName('DATA'      ).Value := Select.FieldByName('DATA'        ).Value;
                      Dbf.FieldByName('METGE'     ).Value := Select.FieldByName('METGE'       ).Value;
                      Dbf.FieldByName('REALITZA'  ).Value := Select.FieldByName('REALITZA'    ).Value;
                      Dbf.FieldByName('TIPUSEX'   ).Value := Select.FieldByName('TIPUSEX'     ).Value;
                      Dbf.FieldByName('POSIC'     ).Value := Select.FieldByName('POSIC'       ).Value;
                      Dbf.FieldByName('URGENT'    ).Value := Select.FieldByName('URGENT'      ).Value;
                      Dbf.FieldByName('INFORME'   ).Value := Select.FieldByName('INFORME'     ).Value;
                      Dbf.FieldByName('PROVA'     ).Value := Select.FieldByName('PROVA'       ).Value;
                      Dbf.FieldByName('NUMERO'    ).Value := Select.FieldByName('NUMERO'      ).Value;
                      Dbf.FieldByName('C_TRACTAM' ).Value := Select.FieldByName('C_TRACTAMENT').Value;
                      Dbf.FieldByName('TIPOPLACA' ).Value := Select.FieldByName('TIPOPLACA'   ).Value;
                      Dbf.FieldByName('TUBO'      ).Value := Select.FieldByName('TUBO'        ).Value;
                      Dbf.FieldByName('DISPAROS'  ).Value := Select.FieldByName('DISPAROS'    ).Value;
                      Dbf.FieldByName('DISPDEF'   ).Value := Select.FieldByName('DISPAROSDEFECTUOSOS').Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       26: begin
              if CreaMov.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;   
                      Dbf.FieldByName('T_MOV'     ).Value := Select.FieldByName('T_MOV'       ).Value;
                      Dbf.FieldByName('CC'        ).Value := Select.FieldByName('C_CENTRECOST').Value;
                      Dbf.FieldByName('C_PROD'    ).Value := Select.FieldByName('C_PROD'      ).Value;
                      Dbf.FieldByName('N_PROD'    ).Value := Select.FieldByName('N_PROD'      ).Value;
                      Dbf.FieldByName('CANTITAT'  ).Value := Select.FieldByName('CANTITAT'    ).Value;
                      Dbf.FieldByName('PREU'      ).Value := Select.FieldByName('PREU'        ).Value;
                      Dbf.FieldByName('PREUMITG'  ).Value := Select.FieldByName('PREUMITG'    ).Value;
                      Dbf.FieldByName('DATAMOV'   ).Value := Select.FieldByName('DATAMOV'     ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       27: begin
              if CreaMETGES.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;   
                      Dbf.FieldByName('CODI'   ).Value := Select.FieldByName('CODI'   ).Value;
                      Dbf.FieldByName('NOMBRE' ).Value := Select.FieldByName('NOMBRE' ).Value;
                      Dbf.FieldByName('COGNOM1').Value := Select.FieldByName('COGNOM1').Value;
                      Dbf.FieldByName('COGNOM' ).Value := Select.FieldByName('COGNOM' ).Value;
                      Dbf.FieldByName('C_GRUP' ).Value := Select.FieldByName('C_GRUP' ).Value;                      
                      Dbf.FieldByName('NC'     ).Value := Select.FieldByName('NC'     ).Value;
                      Dbf.FieldByName('BAIXA'  ).Value := Select.FieldByName('BAIXA'  ).Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       28: begin
               if CreaPRESES.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('HC'      ).Value := Select.FieldByName('C_HISTORIA').Value;
                       Dbf.FieldByName('ID_PRESA').Value := Select.FieldByName('ID_PRESA').Value;
                       Dbf.FieldByName('C_OM'    ).Value := Select.FieldByName('C_OM').Value;
                       Dbf.FieldByName('D_PRESA' ).Value := Select.FieldByName('DATA_PRESA').Value;
                       Dbf.FieldByName('ESTAT_I' ).Value := Select.FieldByName('ESTAT_INICI').Value;
                       Dbf.FieldByName('USUARI_I').Value := Select.FieldByName('USUARI_INICI').Value;
                       Dbf.FieldByName('ESTAT_F' ).Value := Select.FieldByName('ESTAT_FI').Value;
                       Dbf.FieldByName('USUARI_R').Value := Select.FieldByName('USUARI_RISC').Value;
                       Dbf.FieldByName('C_MOTIU' ).Value := Select.FieldByName('C_MOTIU').Value;
                       Dbf.FieldByName('N_MOTIU' ).Value := Select.FieldByName('N_MOTIU').Value;
                       Dbf.FieldByName('INSULINA').Value := Select.FieldByName('U_INSULINA').Value;
                       Dbf.FieldByName('COMENTAR').Value := Select.FieldByName('COMENTARI').Value;
                       Dbf.FieldByName('D_ULTIMA').Value := Select.FieldByName('DATA_ULTIMA').Value;
                       Dbf.FieldByName('USUARI_U').Value := Select.FieldByName('USUARI_ULTIM').Value;

                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       29: begin
               if CreaAgendaPa.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('ID'     ).Value := Select.FieldByName('ID').Value;
                       Dbf.FieldByName('NH'     ).Value := Select.FieldByName('C_HISTORIA').Value;
                       Dbf.FieldByName('DIA_SET').Value := Select.FieldByName('DIA_SEMANA').Value;
                       Dbf.FieldByName('DATAI'  ).Value := Select.FieldByName('DATAI').Value;
                       Dbf.FieldByName('DATAF'  ).Value := Select.FieldByName('DATAF').Value;
                       Dbf.FieldByName('C_ACTIV').Value := Select.FieldByName('C_ACTIVITAT').Value;
                       Dbf.FieldByName('USUARII').Value := Select.FieldByName('C_USUARI_INI').Value;
                       Dbf.FieldByName('USUARIF').Value := Select.FieldByName('C_USUARI_FIN').Value;
                       Dbf.FieldByName('HORA'   ).Value := Select.FieldByName('HORA').Value;
                       Dbf.FieldByName('METGEV' ).Value := Select.FieldByName('C_METGEVALIDA').Value;
                       Dbf.FieldByName('DATAV'  ).Value := Select.FieldByName('DATA_VALIDA').Value;
                       Dbf.FieldByName('C_TRACT').Value := Select.FieldByName('C_TRACTAMENT' ).Value;

                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       30: begin
               if CreaOI.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('NH'    ).Value := Select.FieldByName('C_HISTORIA').Value;
                       Dbf.FieldByName('DATA_I').Value := Select.FieldByName('DATA_INICI').Value;
                       Dbf.FieldByName('COMENT').Value := Select.FieldByName('COMENTARI').Value;

                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       31: begin
               if CreaTasquesI.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('C_TRACT').Value := Select.FieldByName('C_TRACTAMENT').Value;
                       Dbf.FieldByName('TASCA'  ).Value := Select.FieldByName('TASCA'       ).Value;
                       Dbf.FieldByName('DATA_I' ).Value := Select.FieldByName('DATA_I'      ).Value;

                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       32: begin
               if CreaObjSC.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;

                       Dbf.FieldByName('CPLANTA').Value := Select.FieldByName('C_PLANTA'    ).Value;
                       Dbf.FieldByName('CLLIT'  ).Value := Select.FieldByName('C_LLIT'      ).Value;
                       Dbf.FieldByName('HC'     ).Value := Select.FieldByName('C_HISTORIA'  ).Value;
                       Dbf.FieldByName('NOM'    ).Value := Select.FieldByName('NOMCOMPLET'  ).Value;
                       Dbf.FieldByName('TRACT'  ).Value := Select.FieldByName('C_TRACTAMENT').Value;
                       Dbf.FieldByName('DINGRES').Value := Select.FieldByName('DATA_INGRES' ).Value;
                       Dbf.FieldByName('DPALTA' ).Value := Select.FieldByName('DATA_PREALTA').Value;
                       Dbf.FieldByName('COORD'  ).Value := Select.FieldByName('C_COORDINADOR').Value;
                       Dbf.FieldByName('D1SESS' ).Value := Select.FieldByName('DATA_1SESSIO').Value;
                       Dbf.FieldByName('DUSESS' ).Value := Select.FieldByName('DATA_USESSIO').Value;
                       Dbf.FieldByName('CAREA'  ).Value := Select.FieldByName('C_AREA'      ).Value;
                       Dbf.FieldByName('CPARE'  ).Value := Select.FieldByName('C_PARE'      ).Value;
                       Dbf.FieldByName('NPARE'  ).Value := Select.FieldByName('N_PARE'      ).Value;
                       Dbf.FieldByName('CGRUP'  ).Value := Select.FieldByName('C_GRUP'      ).Value;
                       Dbf.FieldByName('NGRUP'  ).Value := Select.FieldByName('N_GRUP'      ).Value;
                       Dbf.FieldByName('CITEM'  ).Value := Select.FieldByName('C_ITEM'      ).Value;
                       Dbf.FieldByName('NITEM'  ).Value := Select.FieldByName('N_ITEM'      ).Value;
                       Dbf.FieldByName('MARCAT' ).Value := Select.FieldByName('MARCAT'      ).Value;
                       Dbf.FieldByName('ASSOLIT').Value := Select.FieldByName('ASSOLIT'     ).Value;
                       Dbf.FieldByName('DASSOL' ).Value := Select.FieldByName('DATA_ASSOLIT').Value;
                       Dbf.FieldByName('UASSOL' ).Value := Select.FieldByName('USUARI_ASSOLIT').Value;

                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       34: begin
               if CreaFarPro.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('C_PROD' ).Value := Select.FieldByName('C_PROD'       ).Value;
                       Dbf.FieldByName('N_REG'  ).Value := Select.FieldByName('N_REG'        ).Value;
                       Dbf.FieldByName('N_REG2' ).Value := Select.FieldByName('N_REG2'       ).Value;
                       Dbf.FieldByName('N_REG3' ).Value := Select.FieldByName('N_REG3'       ).Value;
                       Dbf.FieldByName('EAN'    ).Value := Select.FieldByName('EAN'          ).Value;
                       Dbf.FieldByName('REF'    ).Value := Select.FieldByName('REF'          ).Value;
                       Dbf.FieldByName('T_PROD' ).Value := Select.FieldByName('TIPUSPROD'    ).Value;
                       Dbf.FieldByName('RISC'   ).Value := Select.FieldByName('RISC'         ).Value;
                       Dbf.FieldByName('C_ESTAT').Value := Select.FieldByName('C_ESTAT'      ).Value;
                       Dbf.FieldByName('GAVETA' ).Value := Select.FieldByName('GAVETA'       ).Value;
                       Dbf.FieldByName('UBI'    ).Value := Select.FieldByName('UBI'          ).Value;
                       Dbf.FieldByName('GTN'    ).Value := Select.FieldByName('GTN'          ).Value;
                       Dbf.FieldByName('CCOMPT' ).Value := Select.FieldByName('CODICOMPTABLE').Value;
                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       35: begin
               if CreaFarEst.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('C_PROD'  ).Value := Select.FieldByName('C_PROD'      ).Value;
                       Dbf.FieldByName('N_REG2'  ).Value := Select.FieldByName('N_REG2'      ).Value;
                       Dbf.FieldByName('STOCKFIX').Value := Select.FieldByName('STOCKFIX'    ).Value;
                       Dbf.FieldByName('C_COST'  ).Value := Select.FieldByName('C_CENTRECOST').Value;
                       Dbf.FieldByName('N_REG3'  ).Value := Select.FieldByName('N_REG3'      ).Value;
                       Dbf.FieldByName('EAN'     ).Value := Select.FieldByName('EAN'         ).Value;
                       Dbf.FieldByName('UBI_UH'  ).Value := Select.FieldByName('UBI_UH'      ).Value;
                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       36: begin
               if CreaCua.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('C_TRACT' ).Value := Select.FieldByName('C_TRACTAMENT'  ).Value;
                       Dbf.FieldByName('DINSERT' ).Value := Select.FieldByName('DATA_INSERCIO' ).Value;
                       Dbf.FieldByName('DCRIDAT' ).Value := Select.FieldByName('DATA_CRIDAT'   ).Value;
                       Dbf.FieldByName('DVISITAT').Value := Select.FieldByName('DATA_VISITAT'  ).Value;
                       Dbf.FieldByName('DPREINGR').Value := Select.FieldByName('DATA_PREINGRES').Value;
                       Dbf.FieldByName('HPREINGR').Value := Select.FieldByName('HORA_PREINGRES').Value;
                       Dbf.FieldByName('ESTAT_QM').Value := Select.FieldByName('ESTAT_QMATIC'  ).Value;
                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       37: begin
              if CreaCOVID.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('HC'      ).Value := Select.FieldByName('C_HISTORIA').Value;
                      Dbf.FieldByName('ESTAT'   ).Value := Select.FieldByName('N_ESTAT'   ).Value;
                      Dbf.FieldByName('ID'      ).Value := Select.FieldByName('ID'        ).Value;
                      Dbf.FieldByName('TIPUS'   ).Value := Select.FieldByName('TIPUS'     ).Value;
                      Dbf.FieldByName('DATA'    ).Value := Select.FieldByName('DATA'      ).Value;
                      Dbf.FieldByName('INFO'    ).Value := Select.FieldByName('INFO'      ).Value;
                      Dbf.FieldByName('DATA_REG').Value := Select.FieldByName('DATA_REG'  ).Value;
                      Dbf.FieldByName('USER'    ).Value := Select.FieldByName('USUARI_REG').Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       38: begin
              if CreaVac.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('ID'      ).Value := Select.FieldByName('ID'        ).Value;
                      Dbf.FieldByName('HC'      ).Value := Select.FieldByName('C_HISTORIA').Value;
                      Dbf.FieldByName('TIPUS'   ).Value := Select.FieldByName('TIPUS'     ).Value;
                      Dbf.FieldByName('ESTAT'   ).Value := Select.FieldByName('N_ESTAT'   ).Value;
                      Dbf.FieldByName('DATA'    ).Value := Select.FieldByName('DATA'      ).Value;
                      Dbf.FieldByName('INFO'    ).Value := Select.FieldByName('INFO'      ).Value;
                      Dbf.FieldByName('DATA_REG').Value := Select.FieldByName('DATA_REG'  ).Value;
                      Dbf.FieldByName('USER'    ).Value := Select.FieldByName('USUARI_REG').Value;
                      Dbf.FieldByName('ANULAT'  ).Value := Select.FieldByName('ANULAT'    ).Value;
                      Dbf.FieldByName('DATA_ANU').Value := Select.FieldByName('DATA_ANULA').Value;
                      Dbf.FieldByName('USER_ANU').Value := Select.FieldByName('USUARI_ANULA').Value;
                      Dbf.FieldByName('REGINFER').Value := Select.FieldByName('ID_REGINFER').Value;

                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       39: begin
              if CreaRegProc.Execute then
              begin
                  Dbf.Open;
                  while not Select.Eof do
                  begin
                      Dbf.Append;
                      Dbf.FieldByName('C_LLIT'  ).Value := Select.FieldByName('C_LLIT'         ).Value;
                      Dbf.FieldByName('C_PLANTA').Value := Select.FieldByName('C_PLANTA'       ).Value;
                      Dbf.FieldByName('T_REG'   ).Value := Select.FieldByName('T_REG'          ).Value;
                      if not Select.FieldByName('TIPUS_REGISTRE').IsNull then Dbf.FieldByName('TIP_REG').Value := TreureAccents(Select.FieldByName('TIPUS_REGISTRE').Value)
                                                                         else Dbf.FieldByName('TIP_REG').Clear;
                      Dbf.FieldByName('HC'      ).Value := Select.FieldByName('C_HISTORIA'     ).Value;
                      Dbf.FieldByName('C_TRACT' ).Value := Select.FieldByName('C_TRACTAMENT'   ).Value;
                      Dbf.FieldByName('C_UM'    ).Value := Select.FieldByName('C_UNITATMEDICA' ).Value;
                      if not Select.FieldByName('N_UNITATM').IsNull      then Dbf.FieldByName('N_UM').Value := TreureAccents(Select.FieldByName('N_UNITATM').Value)
                                                                         else Dbf.FieldByName('N_UM').Clear;
                      Dbf.FieldByName('C_GRUPUM').Value := Select.FieldByName('C_GRUP'         ).Value;
                      if not Select.FieldByName('N_GRUP').IsNull         then Dbf.FieldByName('N_GRUPUM').Value := TreureAccents(Select.FieldByName('N_GRUP').Value)
                                                                         else Dbf.FieldByName('N_GRUPUM').Clear;
                      Dbf.FieldByName('D_INGRES').Value := Select.FieldByName('DATA_INGRES'    ).Value;
                      Dbf.FieldByName('D_ALTA'  ).Value := Select.FieldByName('DATA_ALTA'      ).Value;
                      Dbf.FieldByName('DI_REAL' ).Value := Select.FieldByName('DATAINICI_REAL' ).Value;
                      Dbf.FieldByName('C_USER_I').Value := Select.FieldByName('C_USUARI_INICI' ).Value;
                      Dbf.FieldByName('C_TIPUS' ).Value := Select.FieldByName('C_TIPUS'        ).Value;
                      Dbf.FieldByName('DI_AUTO' ).Value := Select.FieldByName('DATAINICI_AUTO' ).Value;
                      Dbf.Post;
                      Inc(Compta);
                      Barra.Position := Compta;
                      Select.Next;
                  end;
              end;
           end;
       40: begin
               if CreaGrafica.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('HC'      ).Value := Select.FieldByName('C_HISTORIA'  ).Value;
                       Dbf.FieldByName('C_TRACT' ).Value := Select.FieldByName('C_TRACTAMENT').Value;
                       Dbf.FieldByName('D_INGRES').Value := Select.FieldByName('DATA_INGRES' ).Value;
                       Dbf.FieldByName('C_LLIT'  ).Value := Select.FieldByName('C_LLIT'      ).Value;
                       Dbf.FieldByName('C_PLANTA').Value := Select.FieldByName('C_PLANTA'    ).Value;
                       Dbf.FieldByName('C_ITEM'  ).Value := Select.FieldByName('C_ITEM'      ).Value;
                       if not Select.FieldByName('VALOR').IsNull then Dbf.FieldByName('VALOR').Value := TreureAccents(Select.FieldByName('VALOR').Value)
                                                                 else Dbf.FieldByName('VALOR').Clear;
                       Dbf.FieldByName('D_VALOR' ).Value := Select.FieldByName('DATA_VALOR'  ).Value;
                       Dbf.Post;
                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       41: begin
               if CreaCua.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('C_TRACT' ).Value := Select.FieldByName('C_TRACT').Value;
                       Dbf.FieldByName('DINSERT' ).Value := Select.FieldByName('DINSERT').Value;
                       Dbf.FieldByName('DCRIDAT' ).Value := Select.FieldByName('DCRIDAT').Value;
                       Dbf.FieldByName('DVISITAT').Value := Select.FieldByName('DVISITAT').Value;
                       Dbf.FieldByName('DPREINGR').Value := Select.FieldByName('DPREINGR').Value;
                       Dbf.FieldByName('HPREINGR').Value := Select.FieldByName('HPREINGR').Value;
                       Dbf.FieldByName('ESTAT_QM').Value := Select.FieldByName('ESTAT_QM').Value;
                       Dbf.Post;

                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       42: begin
               if CreaREC.Execute then
               begin
                   Dbf.Open;
                   while not Select.Eof do
                   begin
                       Dbf.Append;
                       Dbf.FieldByName('NH').Value := Select.FieldByName('C_HISTORIA').Value;
                       Dbf.FieldByName('NOM').Value := Select.FieldByName('NOMCOMPLET').Value;
                       Dbf.FieldByName('SEXE').Value := Select.FieldByName('SEXE').Value;
                       Dbf.FieldByName('EDAT').Value := Select.FieldByName('EDAT').Value;
                       Dbf.FieldByName('C_ESTAT').Value := Select.FieldByName('C_ESTAT').Value;
                       Dbf.FieldByName('N_ESTAT').Value := Select.FieldByName('N_ESTAT').Value;
                       Dbf.FieldByName('ACTIU').Value := Select.FieldByName('ACTIU').Value;
                       Dbf.FieldByName('DATA').Value := Select.FieldByName('DATA').Value;
                       Dbf.FieldByName('DATAREG').Value := Select.FieldByName('DATA_REG').Value;
                       Dbf.FieldByName('USER_R').Value := Select.FieldByName('USUARI_REG').Value;
                       Dbf.FieldByName('IDREG').Value := Select.FieldByName('ID_REGINFER').Value;
                       Dbf.FieldByName('PRESTA').Value := Select.FieldByName('C_PRESTACIO').Value;
                       Dbf.FieldByName('COORD').Value := Select.FieldByName('C_COORDINADOR').Value;
                       Dbf.FieldByName('DATA_I').Value := Select.FieldByName('DATA_INGRES').Value;
                       Dbf.FieldByName('DATA_A').Value := Select.FieldByName('DATA_ALTA').Value;
                       Dbf.FieldByName('TRACT').Value := Select.FieldByName('C_TRACTAMENT').Value;

                       info := Select.FieldByName('INFO').Value;
                       info := Replace(Nline,' ',info);
                       info := Replace(IBQuote,' ',info);
                       info := Replace(':',' ',info);
                       Dbf.FieldByName('INFO').Value := info;
                       Dbf.Post;

                       Inc(Compta);
                       Barra.Position := Compta;
                       Select.Next;
                   end;
               end;
           end;
       end;

    end;
    Dbf.Close;
    ShowMessage('Traspassats '+InttoStr(Compta)+' de '+Total+' registres de la taula '+NomTAULA);
end;


procedure TwMain.sbSortirClick(Sender: TObject);
begin
    Close;
end;


// retorna el text que entra sense accents
function TwMain.TreureAccents(entra:String): String;
var
 bucle: Integer;
 surt: String;
begin
  surt := '';
  entra:=Trim(entra);
  for bucle:=1 to Length(entra) do
  begin
      case entra[bucle] of
          'à','á','â','ã','ä':  surt:=surt+'a'; //treiem els accents, dieresis, etc.
          'è','é','ê','ë':      surt:=surt+'e';
          'ì','í','î','ï':      surt:=surt+'i';
          'ò','ó','ô','õ','ö':  surt:=surt+'o';
          'ù','ú','û','ü':      surt:=surt+'u';
          'À','Á','Â','Ã','Ä':  surt:=surt+'a';
          'È','É','Ê','Ë':      surt:=surt+'e';
          'Ì','Í','Î','Ï':      surt:=surt+'i';
          'Ò','Ó','Ô','Õ','Ö':  surt:=surt+'o';
          'Ù','Ú','Û','Ü':      surt:=surt+'u';
          '·':                  surt:=surt+' ';  // punt de l geminada            
          else surt:=surt+entra[bucle];
      end;
  end;
  Result := surt;
end;

end.
