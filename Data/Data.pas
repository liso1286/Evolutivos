unit Data;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, ExtCtrls, Forms, Dialogs,
  Diccionari, DBTables, HYSql, ImgList, Db, ComCtrls, ActnList, StdActns, NB30, Grids, DBGrids,
  quickrpt, Qrctrls, IniFiles, IBDataBase, IBCustomDataSet, IBSQL, IBQuery, winhttp,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ulkjson;


const                                                          
     MARCAFACTURACOPIA = 'COPIA';
     HYM_SAVE = 7888;             

     Error0  = ' * *  ACCÉS INEXISTENT  * * ';
     Error00 = ' * *  USUARI INEXISTENT  * * ';
     Error1  = ' * *  USUARI NO AUTORITZAT  * * ';
     Error2  = ' * *  CLAU D´ACCÉS INCORRECTA  * * ';
     Error3_ = ' * *  USUARI (AD) NO AUTORITZAT  * * ';
     Error3  = ' * *  ACCÉS NO AUTORITZAT  * * ';
     Error4  = ' * *  LA CÒPIA EN EL CLIPBOARD NO ESTÀ AUTORITZADA  * * ';
     Error5  = ' * *  HISTÒRIA NO TROBADA  * * ';
     Error6  = ' * *  U S U A R I    I N H A B I L I T A T  * * ';
     Error7  = ' * *  INGRÉS PROVISIONAL NO PERMÈS EN HORES LABORALS  * * ';
     Error8  = ' * *  PACIENT SENSE CAP PRESTACIÓ I SENSE CURS CLÍNIC  * * ';
     Error9  = ' * *  LES DUES CLAUS INTRODUÏDES NO SÓN IGUALS O NO TENEN 3 CARÀCTERS  * * ';
     Error10 = ' * *  HEU D´INTRODUIR TOTS ELS CAMPS OBLIGATORIS (HAN PASSAT 72 HORES)  * * ';
     Error11 = ' * *  METGE NO TROBAT  * * ';
     Error12 = ' * *  CODI D´USUARI ÉS DIFERENT  * * ';
     Error13 = ' * *  NO HI HA DADES A IMPRIMIR  * * ';
     Error14 = ' * *  HEU D´INTRODUIR TOTS ELS CAMPS OBLIGATÒRIAMENT  * * ';
     Error15 = ' * *  EL PACIENT TÉ DATA DE DEFUNCIÓ  * * ';
     Error16 = ' * *  AQUESTA HISTÒRIA TÉ UNA PRESTACIÓ ACTIVA QUE NO PERMET FER L´INGRÉS PROVISIONAL  * * ';
     Error17 = ' * *  NO ES POT FER INFORME D´ALTA  * * ';
     Error18 = ' * *  CAL QUE INTRODUÏU TOTS ELS CAMPS OBLIGATORIS  * * ';
     Error19 = ' * *  NO ES POT ANUL·LAR INTERCONSULTA/EXPLORACIÓ  * * ';
     Error20 = ' * *  LA DATA NO POT SER ANTERIOR A LA DE LA SOL·LICITUD  * * ';
     Error21 = ' * *  AQUESTA FILIACIÓ JA TÉ UN CURS PROVISIONAL  * * ';
     Error22 = ' * *  ESPECIALITAT DIFERENT DE LA SOL·LICITADA  * * ';
     Error23 = ' * *  NO PODEU SOL·LICITAR UNA INTERCONSULTA A LA VOSTRA ESPECIALITAT  * * ';
     Error24 = ' * *  LES DADES DE FACTURACIÓ SÓN INCORRECTES  * * ';
     Error25 = ' * *  LA DATA ÉS INFERIOR A LA DATA DE SOL·LICITUD O D''AVUI  * * ';
     Error26 = ' * *  LA HISTÒRIA NO TÉ CAP PRESTACIÓ ACTIVA  * * ';
     Error27 = ' * *  HISTÒRIA BLOQUEJADA  * * ';
     Error28 = ' * *  LA SESSIÓ CONJUNTA ESTÀ PENDENT DE VALIDAR  * * ';
     Error29 = ' * *  L''ENTRADA DE COMENTARIS NO POT ESTAR BUIDA  * * ';
     Error30 = ' * *  PRESTACIÓ NO COMPATIBLE  * * ';
     Error31 = ' * *  CAL INFORMAR ELS CAMPS ( %s ) PER PODER GUARDAR LA FITXA  * * ';
     Error32 = ' * *  HORA NO VÀLIDA  * * ';
     Error33 = ' * *  HORA NO INFORMADA  * * ';
     Error34 = ' * *  CAL ESPECIFICAR HOSPITAL DE DESTÍ  * * ';
     Error35 = ' * *  EL LLIT O LA PLANTA HAN DE ESTAR INTRODUÏTS  * * ';
     Error36 = ' * *  (%s) NO ÉS UN NÚMERO DE %s VÀLID  * * ';
     Error37 = ' * *  DATA PREALTA INCOMPLETA O ANTERIOR A L´INGRÉS  * * ';
     Error38 = ' * *  CAL QUE INTRODUÏU TOTS ELS CAMPS OBLIGATORIS  * * ';
     Error39 = ' * *  AQUESTA FINESTRA ÉS NOMÉS DE CONSULTA  * * ';
     Error40 = ' * *  L´IMPORT NO POT SER 0  * * ';
     Error41 = ' * *  FALTA NÚM. HISTÒRIA  * * ';
     Error42 = ' * *  FALTA CENTRE/CLIENT  * * ';
     Error43 = ' * *  FALTA PROVEÏDOR  * * ';
     Error44 = ' * *  CAL ESPECIFICAR DADES DEL COBRAMENT  * * ';
     Error45 = ' * *  CAL ESPECIFICAR FACTURES ASOCIADES AL COBRAMENT  * * ';
     Error46 = ' * *  NO PODEU ESBORRAR UNA ORTESIS FACTURADA O ENTREGADA  * * ';
     Error47 = ' * *  MOTIU D''INGRÉS NO COMPATIBLE  * * ';  
     Error48 = ' * *  U S U A R I    B L O Q U E J A T  * * ' + #13 + #13 + 'Els supervisors i/o secretaria de la vostra àrea poden desbloquejar-vos.';
     Error50 = ' * *  ERROR EN MARCAR LES FACTURES COM A IMPRESES  * * , #13 LES FACTURES QUE S´ACABEN D´IMPRIMIR FIGURARAN COM A NO IMPRESES';
     Error51 = ' * *  %S NO POT ESTAR BUIT  * * ';
     Error77 = ' * *  ANUL·LACIÓ D´ALTA ADMINISTRATIVA NO PERMESA EN HORES LABORALS  * * ';
     Error78 = ' * *  NO ES POT FILIAR LA PRESTACIÓ PERQUÈ EL COORDINADOR ESTÀ DE BAIXA * * ';

     Avis1   = ' * *  VOLEU DESAR LES DADES INTRODUÏDES?  * * ';
     Avis2   = ' * *  ATENCIÓ!!! POSSIBLE PÈRDUA DE DADES. VOLEU CONTINUAR?  * * ';
     Avis3   = ' * *  S''HA MODIFICAT LA CLAU DE PAS CORRECTAMENT  * * ';
     Avis4   = ' * *  PACIENT SENSE CAP PRESTACIÓ ACTIVA  * * '+#13+#10+'Voleu continuar per afegir un comentari?';
     Avis5   = ' * *  ATENCIÓ!!!! NO ESTEU ESCRIVINT A LA HISTÒRIA %s ' + #13+#10 + 'SINÓ A LA DE LA SEVA PARELLA. CONTINUAR?  * *';
     Avis6   = ' * *  VOLEU OMPLIR L´INFORME DE REVISIÓ?  * * ';
     Avis8   = ' * *  NO PODEU DEIXAR CAMPS EN BLANC *  * ';
     Avis10  = ' * *  VOLEU OMPLIR EL FULL SISTEMATITZAT DE REVISIÓ ?  * * ';
     Avis11  = ' * *  VOLEU VALIDAR L´INFORME DE REVISIÓ ?  * * ';
     Avis12  = ' * *  VOLEU OMPLIR INFORME DE REVISIÓ PENDENT DE COMPLETAR I DE CONCLUSIONS ?  * * ';
     Avis13  = ' * *  VOLEU OMPLIR INFORME DE REVISIÓ PENDENT DE REVISAR ?  * * ';
     Avis14  = ' * *  NO HI HA INFORMES PENDENTS  * * ';
     Avis15  = ' * *  L´INFORME D´ALTA ENCARA S''ESTÀ VERIFICANT.  * * '+#13+#10+'            VOLEU EDITAR-LO ?';
     Avis16  = ' * *  VOLEU OMPLIR EL FULL D´ALTA ?  * * '+#13+#10+'          ';
     Avis161 = ' * *  VOLEU RECUPERAR EL FULL D´ALTA PER VALIDAR-LO ?  * * '+#13+#10+'          ';
     Avis17  = ' * *  VOLEU GENERAR L´INFORME D´ALTA ?  * * '+#13+#10+'          ';
     Avis18  = ' * *  OMPLIR RESUM MÈDIC DE L´INFORME D´ALTA?  * * '+#13+#10+'          ';
     Avis19  = ' * *  VOLEU RECUPERAR L´INFORME D´ALTA PER VALIDAR-LO?  * * '+#13+#10+'          ';
     Avis20  = ' * *  VOLEU IMPRIMIR INTERCONSULTA / EXPLORACIÓ ?  * * ';
     Avis21  = ' * *  HI HA %d INTERCONSULTA/ES PENDENT/S DE RESPONDRE DE: %s.  * * ' + #13+#10 + 'VOLEU CONTINUAR?';
     Avis22  = ' * *  VOLEU CREAR EL FULL D''OBJECTIUS?  * * ' + #10#13 + ' * *  %s  -  %s del %s  * * ';
     Avis23  = ' * *  JA EXISTEIX UNA INCLUSIÓ A LLISTA D''ESPERA AMB AQUESTA HISTÒRIA O HISTÒRIA, PRESTACIÓ I MOTIU  * * ';
     Avis24  = ' * *  EL SEXE HA D´ESTAR INFORMAT  * * ';
     Avis25  = ' * *  EL MOTIU HA D´ESTAR INFORMAT  * * ';
     Avis26  = ' * *  LA DATA DE PREINGRES NO POT SER INFERIOR A LA DATA D''INCLUSIÓ  * * ';
     Avis27  = ' * *  LA DATA D´INCLUSIO NO POT SER PASSADA  * * ';
     Avis28  = ' * *  AQUEST PACIENT JA TÉ UN INGRÉS EN LLISTA D''ESPERA !  * * ';
     Avis29  = ' * *  EL PACIENT ÉS EXITUS  * * ';
     Avis30  = ' * *  HI HA TRACTAMENTS ACTIUS AMB PRESTACIONS INCOMPATIBLES RELACIONATS AMB AQUESTA HISTÒRIA  * * ';
     Avis31  = ' * *  HI HA PROVISIONALS PENDENTS, S''HAN DE PROCESSAR ABANS DE FER RES MÉS  * * ';
     Avis32  = ' * *  LA DATA D''INGRÉS NO POT SER PASSADA  * * ';
     Avis33  = ' * *  EL METGE NO VISITA AQUEST DIA  * * ';
     Avis34  = ' * *  AQUEST HORARI NO ES TROBA DISPONIBLE  * * ';
     Avis35  = ' * *  EL METGE NO TÉ UNA DURADA ASSIGNADA PER A LA PRESTACIÓ  * * ';
     Avis36  = ' * *  AQUEST DIA ÉS FESTIU PER AL METGE  * * ';
     Avis37  = ' * *  AQUEST ÉS UN DIA DE VACANCES PER AL METGE  * * ';
     Avis38  = ' * *  PER CALCULAR L''HORA DE VISITA, EL METGE HA D''ESTAR ASSIGNAT  * * ';
     Avis39  = ' * *  PER CALCULAR L''HORA DE VISITA, EL METGE I LA PRESTACIÓ HAN D''ESTAR ASSIGNATS  * * ';
     Avis40  = ' * *  PER CALCULAR L''HORA DE VISITA, LA PRESTACIÓ HA D''ESTAR ASSIGNADA  * * ';
     Avis41  = ' * *  EL MÀXIM DE VISITES ASSIGNABLES A AQUEST METGE I PRESTACIÓ JA ESTÀ ASSOLIT  * * ';
     Avis42  = ' * *  EL METGE NO TÉ UNA DURADA ASSIGNADA PER A LA PRESTACIÓ  * * ';
     Avis43  = ' * *  AL METGE NO LI QUEDEN HORES PER ASSIGNAR  * * ';
     Avis44  = ' * *  LA DATA D''INGRÉS NO POT SER ANTERIOR A 7 DIES  * * ';
     Avis45  = ' * *  LA DATA D´INICI DEL RANG DE BLOQUEIG HA DE ESTAR INTRODUÏDA  * * ';
     Avis46  = ' * *  EL MOTIU DE BLOQUEIG HA DE ESTAR INTRODUÏT  * * ';
     Avis47  = ' * *  EL METGE ACTIU NO TÉ DRETS PER FER UN CANVI DE LLIT  * * ';
     Avis48  = ' * *  L''USUARI INTRODUÏT NO TÉ DRETS PER ASSIGNAR PASSIS DE CAP DE SETMANA  * * ';
     Avis49  = ' * *  AMBULÀNCIA PENDENT  * * ';
     Avis50  = ' * *  LA DATA %s NO POT SER %s  * * ';
     Avis51  = ' * *  A LA PREALTA LA DESTINACIÓ HA D´ESTAR INFORMADA  * * ';
     Avis52  = ' * *  %s HA D''ESTAR ESPECIFICAT  * * ';
     Avis53  = ' * *  PER PODER PASSAR EL PENDENT A L''AGENDA S''HA D''ESPECIFICAR LA PRESTACIÓ  * * ';
     Avis54  = ' * *  EL METGE (%s) NO TÉ ASSIGNADA CAP PRESTACIÓ DE VISITA  * * ';
     Avis55  = ' * *  PACIENT SENSE CAP PRESTACIÓ ACTIVA  * * ' + #13+#10 + 'Voleu continuar amb una prestació antiga?';
     Avis56  = ' * *  S''HA D''ESPECIFICAR L''HOSPITAL DE DESTÍ  * * ';
     Avis57  = ' * *  L´ORIGEN HA D´ESTAR INFORMAT  * * ';
     Avis58  = ' * *  S´HA D´INFORMAR L´HOSPITAL D´ORIGEN  * * ';
     Avis59  = ' * *  EL METGE COORDINADOR S´HA D´INFORMAR  * * ';
     Avis60  = ' * *  LA FREQÜÈNCIA HA D´ESTAR INFORMADA  * * ';
     Avis61  = ' * *  EL CARÀCTER HA D´ESTAR INFORMAT  * * ';
     Avis62  = ' * *  EL TIPUS DE SESSIÓ HA D''ESTAR ESPECIFICAT  * * ';

//     Avis63  = ' * *  EL MOTIU HA D´ESTAR INFORMAT  * * ';
     Avis64  = ' * *  POSEU PAPER GUTTMANN  * * ';
     Avis65  = ' * *  VOLEU RECUPERAR L''INFORME DE REVISIÓ PER VALIDAR-LO?  * * ' + #13+#10 + '          ';
     Avis66  = ' * *  L´INFORME DE REVISIÓ ENCARA S''ESTÀ VERIFICANT. * * ' + #13+#10 + '            VOLEU EDITAR-LO?';
     Avis67  = ' * *  LA DATA D''INGRÉS NO POT SER FUTURA  * * ';

     Avis68  = ' * *  INTRODUÏU LES AL·LÈRGIES AQUÍ EN CAS DE NO PRESCRIURE MEDICACIÓ A FARMATOOLS  * * ';

     Avis69  = ' * *  LA MODALITAT HA D´ESTAR INFORMADA  * * ';

     GUIO_RMP_NP_METGES = 'ANTECEDENTS: ' + #13#10 +
                          '* Data darrera revisió: ' + #13#10 +
                          '* Antecedents patològics: ' + #13#10 +
                          '* Incidents mèdics interval: ' + #13#10 +
                          '* Incidents quirúrgics interval: ' + #13#10 +
                          '* Al·lèrgies: ' + #13#10 +
                          'MEDICACIÓ ACTUAL: ' + #13#10 +
                          'S’HA REALITZAT ALGUNA ANALÍTICA DE SANG I ORINA RECENTMENT?: ' + #13#10 +
                          'ALGUNA ALTRA EXPLORACIÓ COMPLEMENTÀRIA?: ' + #13#10 +
                          'ANAMNESI PER SISTEMES: ' + #13#10 +
                          '* Estat general: ' + #13#10 +
                          '* Dolor: ' + #13#10 +
                          '* Pell i mucoses: ' + #13#10 +
                          '* Cardiorespiratori: ' + #13#10 +
                          '* Locomotor: ' + #13#10 +
                          '* Genito-urinari/intestinal (complicacions, sistema d’eliminació vesical, sistema d’eliminació intestinal): ' + #13#10 +
                          '* Vascular: ' + #13#10 +
                          '* Neurològic: ' + #13#10 +
                          '  · Si es una LM preguntar si hi ha canvis de nivell sensitiu o motor. ' + #13#10 +
                          '  · Si es un DCA preguntar sobre: ' + #13#10 +
                          '     - Conducta ' + #13#10 +
                          '     - Funcions cognitives ' + #13#10 +
                          '     - Comunicació ' + #13#10 +
                          '     - Deglució (tipus de nutrició, via d’alimentació, etc.) ' + #13#10 +
                          '     - Control motor/coordinació ' + #13#10 +
                          #13#10 +
                          'CONCLUSIONS:' + #13#10 ;

     GUIO_RMP_NP_REHAB =  '* Estat general actual: ' + #13#10 +
                          '* Control de pes: ' + #13#10 +
                          '* Activitats de la vida diària: ' + #13#10 +
                          '* Mobilitat al llit: ' + #13#10 +
                          '* Transferències: ' + #13#10 +
                          '* Locomoció: ' + #13#10 +
                          '* Bipedestació: ' + #13#10 +
                          '* Marxa: ' + #13#10 +
                          '* Activitat física:';
     
     // Afegits aquests tags per pagina A4: \paperw11907\paperh16840
     RtfBegin= '{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fnil\fcharset1 Courier New;}{\f1\froman\fprq2\fcharset2 Wingdings;}{\f2\froman\fprq2\fcharset2 Webdings;}}'+
               '{\colortbl' +
               '\red0\green0\blue0;'          +  // cf0   clBlack
               '\red0\green255\blue255;'      +  // cf1   clAqua
               '\red192\green192\blue192;'    +  // cf2   clSilver
               '\red0\green128blue128;'       +  // cf3   clTeal
               '\red255\green255\blue0;'      +  // cf4   clYellow
               '\red0\green128\blue0;'        +  // cf5   clGreen
               '\red0\green0\blue255;'        +  // cf6   clBlue
               '\red255\green0\blue0;'        +  // cf7   clRed
               '\red128\green0\blue128;'      +  // cf8   clPurple
               '\red0\green0\blue128;'        +  // cf9   clNavy
               '\red128\green0\blue0;'        +  // cf10  clMaroon
               '\red0\green255\blue0;'        +  // cf11  clLime
               '\red128\green128\blue0;'      +  // cf12  clOlive
               '\red128\green128\blue128;'    +  // cf13  clGray
               '\red255\green0\blue255;'      +  // cf14  clFuchsia
               '\red255\green255\blue255;'    +  // cf15  clWhite
               '\red225\green240\blue255;}'   +  // cf16  $00FFF0FF   blau claret interconsultes
               '\paperw11907\paperh16840\deflang1034\pard\plain\f0\fs20\cf0 '+#13+#10;
                                                     // \f0\fswiss Arial
     RtfBeginQR = '{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fnil\fcharset1 Courier New;}{\f1\froman\fprq2\fcharset2 Wingdings;}{\f2\froman\fprq2\fcharset2 Webdings;}{\f3\fswiss Arial}}'+
               '{\colortbl'+
               '\red0\green0\blue0;'          +  // cf0   clBlack
               '\red0\green255\blue255;'      +  // cf1   clAqua
               '\red192\green192\blue192;'    +  // cf2   clSilver
               '\red0\green128blue128;'       +  // cf3   clTeal
               '\red255\green255\blue0;'      +  // cf4   clYellow
               '\red0\green128\blue0;'        +  // cf5   clGreen
               '\red0\green0\blue255;'        +  // cf6   clBlue
               '\red255\green0\blue0;'        +  // cf7   clRed
               '\red128\green0\blue128;'      +  // cf8   clPurple
               '\red0\green0\blue128;'        +  // cf9   clNavy
               '\red128\green0\blue0;'        +  // cf10  clMaroon
               '\red0\green255\blue0;'        +  // cf11  clLime
               '\red128\green128\blue0;'      +  // cf12  clOlive
               '\red128\green128\blue128;'    +  // cf13  clGray
               '\red255\green0\blue255;'      +  // cf14  clFuchsia
               '\red255\green255\blue255;'    +  // cf15  clWhite
               '\red225\green240\blue255;}'   +  // cf16  $00FFF0FF   blau claret interconsultes
               '\paperw11907\paperh16840\deflang1034\pard\plain\f0\fs20\cf0 '+#13+#10;

     RtfEnd  ='}';

type

  HaleyException = class(Exception);

  TMetge = Record
    Codi: String;
    Desc: String;
    Grup: String;
    DescGrup: String;
    Color: Integer;
    Especial: String;
    DescEspecial: String;
    COGNOMS: String;
    TRACTE: String;
    Extra: String;
    Area: String;   // S'obté a partir de l'especialitat     - es fa servir per Escales, Objectius (SC), Seguiment Rehabilitació
    Area2: String;  // S'obté combinant grup i especialitat  - es fa servir per Educació i Informes
    NC: String;
    NomSencer: String;
    cProv: String;
    NMetgeRecepta: String;
    Titol: String;
  end;

  TFili = Record
   Historia: Integer;
   Nom: String;
   Cognom1: String;
   Cognom2: String;
   Telefon: String;
   NomComplet: String;
   Edat: Integer;
   Sexe: String;
   Mort: String;
   Unitat: String;
   Incapacitat: String;
  end;

  TPrestacio = Record
   C_Prestacio: String;
   N_Prestacio: String;
   N_Prestacio2: String;
  end;

  TTractament= Record
   C_Tractament: Integer;
   C_Prestacio: String;
   N_Prestacio: String;
   EsEASE: String;
   C_Coordinador: String;
   N_Coordinador: String;
   C_Especial: String;
   Data_Ingres: TDateTime;
   Data_Alta: TDateTime;
   Data_PreAlta: TDateTime;
   InfAlta: String;
   Epicrisi: Integer;
   EsProvisional: Integer;
   C_PrestaOrigen: String;
   C_Proces: Integer;
   FI_Proces: String;
   C_Motiu: Smallint;
   C_CentreFac: String;
   C_Modalitat: Smallint;
  end;

  TPermisSortida = Record
   c_tractament: integer;
   c_permis: integer;
  end;

  TInterConsulta = Record
   Codi: Integer;
   Espe: String;
   DescEspe: String;
   Tipus: String;
   Splitter: TSplitter;
   Memo: TRichEdit;
   Query: TQuery;
  end;


  TDadesFac= Record
   C_CentreFac: String;
   C_Client: String;
   C_Delegacio: String;
   CaducaPermis: TDate;
   PercentatgePacient: Double;
   Referencia: String;
   Preu: Double;
   EstatFac: Integer;
   Matricula_Vehicle: String;
   Data_Sinistre: TDateTime;
   Garant_Id: Integer;
   Garant_Nom: String;
   Garant_Cognom1: String;
   Garant_Cognom2: String;
  end;

  TNumFac = Record
   Contador: Integer;
   C_Factura : Integer;
   N_Factura : String;  
  end;

  TArrayICD = Record
    Diag:  String;
    C_ICD: String;
    G_ICD: String;
    N_ICD: String;
    Dispositiu: String;
    Versiocim:  String;
    Versiocim_G: String;
    Confianca: String;
    ID: String;
  end;
  
{
  Tpetianalit = record
    codi:string;
    descripcio:string;
    muestra:string;
    observa:string;
    motiu:string;
    urgente:string;
  end;



  TSolicanalit = array of tpetianalit ;}

  TDesc_ICD = array[1..2] of String;  // 1: N_ICD  2: n_diagnostic

  TAlergies = array[1..4] of String;  // 1: medicamentoses, 2: altres, 3: comentari "medicamentoses no conegudes", 4: comentari "altres no conegudes"

  Tpetianalit = record
    codi:string;
    descripcio:string;
    muestra:string;
    observa:string;
    motiu:string;
    urgente:string;
  end;


  TSignant = Record
   NomSignant: String;
   NumDoc : String;
   TipusDoc : String;
   NomSignant2: String;
   NumDoc2: String;
   TipusDoc2: String;
   DeviceName: String;
  end;

  Tsolicanalit = array of tpetianalit ;

  TwData = class(TDataModule)
    Projecte: TDicProjecto;
    Gdb: THyGdb;
    Images: TImageList;
    QParametres: TQuery;
    QHora: TQuery;
    QDretsGrup: TQuery;
    QDretsAcces: TQuery;
    QDretsMetge: TQuery;
    QDretsEspecial: TQuery;
    qDretsPresta: TQuery;
    UpTraza: TQuery;
    InsTraza: TQuery;
    QMetges: TQuery;
    qMetgesExtra: TQuery;
    qPrestacio: TQuery;
    QFestius: TQuery;
    qDadesFac: TQuery;
    qPrestaActives: TQuery;
    qInfCabe: TQuery;
    DadesHistoria: TQuery;
    qProcesActiu: TQuery;
    qDretsMotiu: TQuery;
    GdbInf: THyGdb;
    qBloquejos: TQuery;
    mbIcones: TImageList;
    qTractamentsActius: TQuery;
    GdbVIP: THyGdb;
    IBGuttmann: TIBDatabase;
    IBTransGutt: TIBTransaction;
    qDretsUsr: TIBQuery;
    qBuscaDretPresta: TIBQuery;
    qBloqueigAcc: TQuery;
    qBuscaDretMotiu: TIBQuery;
    IdHTTP1: TIdHTTP;
    procedure wDataCreate(Sender: TObject);
    procedure ProjectePintaAllConsultas(aDic: TDic; var ColorFont, ColorBrush: TColor; DataCol: Integer; Column: TColumn;
                                        State: TGridDrawState; Query: TQuery);
    procedure IBGuttmannBeforeConnect(Sender: TObject);
  private
  public
   ID_NIC: String;
   ID_LOGIN: String;
   ID_COMPUTER: String;
   ID_REMOTE: String;
   ES_PROVA: Boolean;
   NO_ACCES: String;
   UsuariActiu: TMetge;
   rutaAliesIB: String;
   Entorn: String;
   Alias: String;
   Function ObraTrazaControl(Historia: LongInt;Consult: String='';Aplica: Integer=1;Ref: Integer=0): LongInt;
   Procedure TancaTrazaControl(Pk: LongInt; Status: String);
   procedure TrazaErrores(Sender: TObject; E:Exception);
   Function GetRutaDelGdbConnectat: String;
   function EscapeJSON(const S: string): string;
   function GetTokenGlpi: String;
   procedure CreaIncidenciaGlpi(session_token, ticket_name, ticket_content, ticket_priority: String);
  end;

var
  wData: TwData;

  NT7OK, SAPOK, RCAOK, CUESOK, SENSE_CLAU: Boolean;
  FOTOS_OK, HOLA_OK, INFORMATICA_OK, RECERCA_OK: Boolean;
  nHCE_ON, TP_ON, UNICAS_ON: Boolean;
  FT_ON, FT_Prescrip_ON, UpHill_ON: Boolean;
  NOMES_LECTURA: Boolean;
  CODIFICA: Boolean;
  VERSIOCIM: String;
  VERSIOCIM_T: String;
  FLAG_FORM: Boolean;
  GestorCues: String;

  CHR_Subrallado   : String;
  CHR_NOSubrallado : String;
  CHR_Negrita      : String;
  CHR_NONegrita    : String;
  TCHR_Normal      : String;
  TCHR_Grande      : String;
  INIT_PRINT       : String;
  C_TEMPORAL       : String;
  C_USERPRF        : String;

  datainiapa:string;  // fecha de inicio de entrada de laboratorio APA
  // Crida a NIC.DLL per saver el Nº Ethernet.
  procedure GetNicAddress (NIC : pchar); cdecl; external 'NIC.DLL';

  Function  TeDretAcces    (ListDrets   : Array Of Const; FerRaise: Boolean=False; MirarDretTotal: Boolean = True):Boolean;
  Function  TeDretUsuari   (CodiUsuari  : String; ListDrets: String; ListDretsNo: String=''; FerRaise: Boolean=False): Boolean;
  Function  TeDretMetge    (CodiMetge   : String; ListDrets: Array Of Const; FerRaise: Boolean=False): Boolean;
  Function  TeDretEspecial (CodiEspecial: String; ListDrets: Array Of Const; FerRaise: Boolean=False): Boolean;
  Function  TeDretGrup     (CodiGrup    : String; ListDrets: Array Of Const; FerRaise: Boolean=False): Boolean;
  Function  TeDretPresta   (CodiPresta  : String; ListDrets: Array Of Const; FerRaise: Boolean=False): Boolean;
  Function  TeDretMotiu    (CodiMotiu   : Smallint; ListDrets: Array Of Const; FerRaise: Boolean=False): Boolean;
  Function  PrestaTeCodiCamps(CodiPresta: String; TipusCodi: String): Boolean;
  Function  GutSelect(Sentencias: String; const Args: array of const; CommitRet: Boolean=True): Variant;
  Function  GutGen_ID(GeneratorName: String; Increment: Integer = 1): Integer;
  Procedure GutExecute(Sentencia: String; const Args: array of const; CommitRet: Boolean=True);
  Function  ExcloureTractamentsActius(Historia: String; Excloure: Boolean = True):String;
  Function  ExclourePrestacionsActives(Historia: String; Excloure: Boolean = True):String;
  Function  ExcloureAltresActives(Historia: String; Excloure: Boolean = True):String;
  Function  FinalitzarProcesActiu(Historia: String; Finalitzar: Boolean = True):String;
  Function  PreguntaFili(C_Historia:String=''; Vius:Boolean = True; PerCIP: Boolean = False): TFili;
  Function  PreguntaFiliCIP(C_Historia: String = '';  Vius:Boolean = True): TFili; // parte 62735
  Function  PreguntaMetge(ConExtra: Boolean=False; CanviaUsuariActiu: Boolean=True): TMetge;
  Function  PreguntaMetgePlus(ConExtra: Boolean=False; CanviaUsuariActiu: Boolean=True): TMetge;
  function  CanviDeClau(usuari,extra: String; e_gracia: Integer; DemanaAntiga: Boolean = True): Integer;
  Function  DescripcioPrestacio(CodiPresta: String;Resum: Boolean=True): String;
  Function  BuscaPresta(C_Prestacio: String): TPrestacio;
  Function  BuscaMetge(Codi: String;Extra:String=''): TMetge;
  Procedure ClearMetge(var Metge:TMetge);
  Procedure ClearTractament(var Tractament: TTractament);
  Function  OmpleTractament(tractament: Integer): TTractament;
  Procedure ClearPresta(var Presta:TPrestacio);
  Function  ClearDadesFac:TDadesFac;
  Procedure FerError(Texte: String; FerRaise: Boolean=False); Overload;
  Procedure FerError(Texte: String; params: array of const;FerRaise: Boolean=False); Overload;
  Function  DateServer: TDateTime;
  Function  NowServer: TDateTime;
  Function  TimeServer: TDateTime;
  Procedure ConstruirRtf(UnMemo: TRichEdit; var UnBuffer: String; Head: Boolean;Convertir:Boolean; Mostra: Boolean = True);   // InterconOrtesis: Afegeixo la variable 'mostra'
  Procedure ConstruirRtf_(UnMemo: TRichEdit; var UnBuffer: String; Head: Boolean;Convertir:Boolean; Mostra: Boolean = True);  // InterconOrtesis: Afegeixo la variable 'mostra'
  Procedure ConstruirRtfQR(UnMemo: TQRRichText; var UnBuffer: String; Head: Boolean; Convertir: Boolean);
  Function  FormatRtf(Line: String; Args: Array of const): String;
  Function  RetornaRtf(UnMemo: TRichEdit; PlainText: Boolean=False): String;
  Function  RetornaRtfIntros(UnMemo: TRichEdit; PlainText: Boolean=False): String;
  Function  ComprovarForaHores(Dept: Integer; dhParam: TDateTime = 0): Boolean;
  function  EsFestiu(Dia: TDateTime): Boolean;
  function  NoEsLaborable(Dia: TDateTime): Boolean;
  Function  GetUserName (Cadena: PChar): String;
  Function  GetDadesFac(Tractament: String):TDadesFac;
  Function  NomFitxer(Historia: String; Data: TDateTime): String;
  Function  NomFitxerSol(Historia: String; Data: TDateTime; Motiu,Metge: String): String;
  Function  RutaNomInforme(path, prestacio, Historia: String; Tract: TTractament): String;
  Function  BuscaInforme(Informe: String; Idioma: Integer): String;
  Function  CheckDadesFac(DadesF: TDadesFac):Boolean;
  Function  TractamentActiu(Tractament: Integer):Boolean;  // Ens diu si el tractament que li pasem es actiu o no.
  Function  TeAlgunTractamentActiu(Historia:String):Boolean;
  function  PrestacionCompatible(Historia, Prestacion: String; TractQuePassa: Integer=0):Boolean;
  function  DiaLlarg (idioma : string; data:TDateTime) : string;
  function  DiaSetmana (idioma: Smallint; numdia: integer):string;
  function  DiaMesLlarg (idioma : string; data:TDateTime) : string;
  function  DataMesLlarg (idioma : string; data:TDateTime) : string;
  function  DataMesLlargCat(Catala: Boolean; data:TDateTime) : string;
  Function  RutaInfSol(path, motiu, metge, Historia: String; Data: TDateTime): String;
  function  N_ICD(C_ICD: String; maxlong: Integer=40): TDesc_ICD;

  // Funcions de NetBios per obtindre el nic (identificatiu de placa ethernet)
  function GetMACAddress: string;

  function  MiraBloqueig(que: String; JoTambeEmBloquejo: Boolean=False): String;

  function  BloquejaCfg(que: String; JoTambeEmBloquejo: String = ''): Boolean;
  procedure DesbloquejaCfg(que: String; ID_Avis: Integer=0);
  
  function  BloquejaAccNHC(NHC: Integer; Que: String; NomID: String; ID: Integer; Qui: String; ID_Avis: Integer=0; MostraError: Boolean=True): Boolean;
  procedure DesbloquejaAccNHC(NHC: Integer; Que: String; NomID: String; ID: Integer; PC: String=''; ID_Avis: Integer=0);

  procedure ParteInformatica(usuari, departament, ubicacio, motiu: String; prioritat: Integer; mostraerror: Boolean=False);


implementation

uses Funciones, Registry, HyDialogError, FichaAcces, utili16,
{$IFDEF DIALOGHISTORIA}       DialogHistoria,
{$ELSE} {$IFDEF SIRE}         DialogHistoriaSIRE,
        {$ELSE} {$IFDEF CURS} DataVerHis, FuncionsCurs, FichaVerHis, DataAdmisio, DataRecercaQ,
                {$ENDIF}
        {$ENDIF}
{$ENDIF}
FitxaCanviClau, FitxaClauDePas, IdCoderMIME;

{$R *.DFM}


function DiaSetmana (idioma: Smallint; numdia: integer):string;
begin
    CASE idioma OF
      1: CASE numdia OF
           1: Result := 'dilluns';
           2: Result := 'dimarts';
           3: Result := 'dimecres';
           4: Result := 'dijous';
           5: Result := 'divendres';
           6: Result := 'dissabte';
           7: Result := 'diumenge';
         END;
      2: CASE numdia OF
           1: Result := 'lunes';
           2: Result := 'martes';
           3: Result := 'miércoles';
           4: Result := 'jueves';
           5: Result := 'viernes';
           6: Result := 'sábado';
           7: Result := 'domingo';
         END;
      3: CASE numdia OF
           1: Result := 'Monday';
           2: Result := 'Tuesday';
           3: Result := 'Wednesday';
           4: Result := 'Thursday';
           5: Result := 'Friday';
           6: Result := 'Saturday';
           7: Result := 'Sunday';
         END;
      4: CASE numdia OF
           1: Result := '\f0\''ef\''ee\''ed\''e5\''e4\''e5\''eb\''fc\''ed\''e8\''ea';
           2: Result := '\f0\''e2\''f2\''ee\''f0\''ed\''e8\''ea';
           3: Result := '\f0\''f1\''f0\''e5\''e4\''e0';
           4: Result := '\f0\''f7\''e5\''f2\''e2\''e5\''f0\''e3';
           5: Result := '\f0\''ef\''ff\''f2\''ed\''e8\''f6\''e0';
           6: Result := '\f0\''f1\''f3\''e1\''e1\''ee\''f2\''e0';
           7: Result := '\f0\''e2\''ee\''f1\''ea\''f0\''e5\''f1\''e5\''ed\''fc\''e5';
         END;

    END;
end;

                   {1: Català; 2:Castellà}
function DiaLlarg (idioma: String; data: TDateTime): String;
const

  MES1_CAT  = 'de gener';
  MES2_CAT  = 'de febrer';
  MES3_CAT  = 'de març';
  MES4_CAT  = 'd''abril';
  MES5_CAT  = 'de maig';
  MES6_CAT  = 'de juny';
  MES7_CAT  = 'de juliol';
  MES8_CAT  = 'd''agost';
  MES9_CAT  = 'de setembre';
  MES10_CAT = 'd''octubre';
  MES11_CAT = 'de novembre';
  MES12_CAT = 'de desembre';

  MES1_CAST  = 'de enero';
  MES2_CAST  = 'de febrero';
  MES3_CAST  = 'de marzo';
  MES4_CAST  = 'de abril';
  MES5_CAST  = 'de mayo';
  MES6_CAST  = 'de junio';
  MES7_CAST  = 'de julio';
  MES8_CAST  = 'de agosto';
  MES9_CAST  = 'de septiembre';
  MES10_CAST = 'de octubre';
  MES11_CAST = 'de noviembre';
  MES12_CAST = 'de diciembre';
var
  buffer, mes : string;
  Year, Month, Day: Word;
begin
    DecodeDate (Data, Year, Month, Day);
    buffer := FormatDateTime('d "%s de "yyyy', Data);
    if idioma = '1' then
    begin
      case Month of
        1: mes := MES1_CAT;
        2: mes := MES2_CAT;
        3: mes := MES3_CAT;
        4: mes := MES4_CAT;
        5: mes := MES5_CAT;
        6: mes := MES6_CAT;
        7: mes := MES7_CAT;
        8: mes := MES8_CAT;
        9: mes := MES9_CAT;
        10: mes := MES10_CAT;
        11: mes := MES11_CAT;
        12: mes := MES12_CAT;
      end;
    end
  else
  begin
    case Month of
      1: mes := MES1_CAST;
      2: mes := MES2_CAST;
      3: mes := MES3_CAST;
      4: mes := MES4_CAST;
      5: mes := MES5_CAST;
      6: mes := MES6_CAST;
      7: mes := MES7_CAST;
      8: mes := MES8_CAST;
      9: mes := MES9_CAST;
      10: mes := MES10_CAST;
      11: mes := MES11_CAST;
      12: mes := MES12_CAST;
    end;
  end;

  result := Format(buffer, [mes]);
end;

                      {1: Català; 2:Castellà}
function  DiaMesLlarg (idioma : string; data:TDateTime) : string;
const
  MES1_CAT  = 'de gener';
  MES2_CAT  = 'de febrer';
  MES3_CAT  = 'de març';
  MES4_CAT  = 'd''abril';
  MES5_CAT  = 'de maig';
  MES6_CAT  = 'de juny';
  MES7_CAT  = 'de juliol';
  MES8_CAT  = 'd''agost';
  MES9_CAT  = 'de setembre';
  MES10_CAT = 'd''octubre';
  MES11_CAT = 'de novembre';
  MES12_CAT = 'de desembre';

  MES1_CAST  = 'de enero';
  MES2_CAST  = 'de febrero';
  MES3_CAST  = 'de marzo';
  MES4_CAST  = 'de abril';
  MES5_CAST  = 'de mayo';
  MES6_CAST  = 'de junio';
  MES7_CAST  = 'de julio';
  MES8_CAST  = 'de agosto';
  MES9_CAST  = 'de septiembre';
  MES10_CAST = 'de octubre';
  MES11_CAST = 'de noviembre';
  MES12_CAST = 'de diciembre';
var
  buffer, mes, dia : string;
  Year, Month, Day: Word;
begin
  DecodeDate (Data, Year, Month, Day);
  buffer := FormatDateTime('"%s," d "%s de "yyyy', Data);
  if idioma = '1' then
  begin
    case Month of
      1: mes := MES1_CAT;
      2: mes := MES2_CAT;
      3: mes := MES3_CAT;
      4: mes := MES4_CAT;
      5: mes := MES5_CAT;
      6: mes := MES6_CAT;
      7: mes := MES7_CAT;
      8: mes := MES8_CAT;
      9: mes := MES9_CAT;
      10: mes := MES10_CAT;
      11: mes := MES11_CAT;
      12: mes := MES12_CAT;
    end;
    Case DayOfWeek(Data) of
    1: dia := 'diumenge';
    2: dia := 'dilluns';
    3: dia := 'dimarts';
    4: dia := 'dimecres';
    5: dia := 'dijous';
    6: dia := 'divendres';
    7: dia := 'dissabte';
    end;
  end
  else
  begin
    case Month of
      1: mes := MES1_CAST;
      2: mes := MES2_CAST;
      3: mes := MES3_CAST;
      4: mes := MES4_CAST;
      5: mes := MES5_CAST;
      6: mes := MES6_CAST;
      7: mes := MES7_CAST;
      8: mes := MES8_CAST;
      9: mes := MES9_CAST;
      10: mes := MES10_CAST;
      11: mes := MES11_CAST;
      12: mes := MES12_CAST;
    end;
    Case DayOfWeek(Data) of
    1: dia := 'domingo';
    2: dia := 'lunes';
    3: dia := 'martes';
    4: dia := 'miércoles';
    5: dia := 'jueves';
    6: dia := 'viernes';
    7: dia := 'sábado';
    end;
  end;

  result := Format(buffer, [dia,mes]);
end;

                      {1: Català; x:Castellà}
function  DataMesLlarg (idioma : string; data:TDateTime) : string;
const
  MES1_CAT  = 'de gener';
  MES2_CAT  = 'de febrer';
  MES3_CAT  = 'de març';
  MES4_CAT  = 'd''abril';
  MES5_CAT  = 'de maig';
  MES6_CAT  = 'de juny';
  MES7_CAT  = 'de juliol';
  MES8_CAT  = 'd''agost';
  MES9_CAT  = 'de setembre';
  MES10_CAT = 'd''octubre';
  MES11_CAT = 'de novembre';
  MES12_CAT = 'de desembre';

  MES1_CAST  = 'de enero';
  MES2_CAST  = 'de febrero';
  MES3_CAST  = 'de marzo';
  MES4_CAST  = 'de abril';
  MES5_CAST  = 'de mayo';
  MES6_CAST  = 'de junio';
  MES7_CAST  = 'de julio';
  MES8_CAST  = 'de agosto';
  MES9_CAST  = 'de septiembre';
  MES10_CAST = 'de octubre';
  MES11_CAST = 'de noviembre';
  MES12_CAST = 'de diciembre';
var
  buffer, mes: string;
  Year, Month, Day: Word;
begin
  DecodeDate (Data, Year, Month, Day);
  buffer := FormatDateTime('d "%s de "yyyy', Data);
  if (idioma = '1') then
  begin
    case Month of
      1: mes := MES1_CAT;
      2: mes := MES2_CAT;
      3: mes := MES3_CAT;
      4: mes := MES4_CAT;
      5: mes := MES5_CAT;
      6: mes := MES6_CAT;
      7: mes := MES7_CAT;
      8: mes := MES8_CAT;
      9: mes := MES9_CAT;
      10: mes := MES10_CAT;
      11: mes := MES11_CAT;
      12: mes := MES12_CAT;
    end;
  end
    else begin
      case Month of
        1: mes := MES1_CAST;
        2: mes := MES2_CAST;
        3: mes := MES3_CAST;
        4: mes := MES4_CAST;
        5: mes := MES5_CAST;
        6: mes := MES6_CAST;
        7: mes := MES7_CAST;
        8: mes := MES8_CAST;
        9: mes := MES9_CAST;
        10: mes := MES10_CAST;
        11: mes := MES11_CAST;
        12: mes := MES12_CAST;
      end;
    end;

    Result := Format(buffer, [mes]);
end;

function  DataMesLlargCat(Catala: Boolean; data:TDateTime) : string;
const
  MES1_CAT  = 'de gener';
  MES2_CAT  = 'de febrer';
  MES3_CAT  = 'de març';
  MES4_CAT  = 'd''abril';
  MES5_CAT  = 'de maig';
  MES6_CAT  = 'de juny';
  MES7_CAT  = 'de juliol';
  MES8_CAT  = 'd''agost';
  MES9_CAT  = 'de setembre';
  MES10_CAT = 'd''octubre';
  MES11_CAT = 'de novembre';
  MES12_CAT = 'de desembre';

  MES1_CAST  = 'de enero';
  MES2_CAST  = 'de febrero';
  MES3_CAST  = 'de marzo';
  MES4_CAST  = 'de abril';
  MES5_CAST  = 'de mayo';
  MES6_CAST  = 'de junio';
  MES7_CAST  = 'de julio';
  MES8_CAST  = 'de agosto';
  MES9_CAST  = 'de septiembre';
  MES10_CAST = 'de octubre';
  MES11_CAST = 'de noviembre';
  MES12_CAST = 'de diciembre';
var
  buffer, mes: string;
  Year, Month, Day: Word;
begin
    DecodeDate (Data, Year, Month, Day);
    buffer := FormatDateTime('d "%s de "yyyy', Data);
    if catala then
    begin
      case Month of
        1: mes := MES1_CAT;
        2: mes := MES2_CAT;
        3: mes := MES3_CAT;
        4: mes := MES4_CAT;
        5: mes := MES5_CAT;
        6: mes := MES6_CAT;
        7: mes := MES7_CAT;
        8: mes := MES8_CAT;
        9: mes := MES9_CAT;
        10: mes := MES10_CAT;
        11: mes := MES11_CAT;
        12: mes := MES12_CAT;
      end;
    end
    else begin
      case Month of
        1: mes := MES1_CAST;
        2: mes := MES2_CAST;
        3: mes := MES3_CAST;
        4: mes := MES4_CAST;
        5: mes := MES5_CAST;
        6: mes := MES6_CAST;
        7: mes := MES7_CAST;
        8: mes := MES8_CAST;
        9: mes := MES9_CAST;
        10: mes := MES10_CAST;
        11: mes := MES11_CAST;
        12: mes := MES12_CAST;
      end;
    end;

    Result := Format(buffer, [mes]);
end;


function PrestacionCompatible(Historia, Prestacion: String; TractQuePassa: Integer=0):Boolean;
var
  qTractActius: TQuery;
begin

    if esBuit(Historia) then
    begin
        Result := True;
        exit;
    end;

    // Busquem tots els tractaments actius:
    qTractActius := TQuery.Create(Application);
    qTractActius.DatabaseName := wData.Projecte.DataBaseName;
    qTractActius.SQL.Text := Format('select C_PRESTACIO, DATA_ALTA from TRACTAMENTS  ' +
                                    'where C_HISTORIA = %s                           ' +
                                    'and (DATA_ALTA is null or DATA_ALTA >= "TODAY") ' +
                                    'and (NOT C_CENTREFAC IN ("00","50"))            ',    // parte 73726: les prestacions privades no tenen incompatibilitats
                                    [Historia]);

    // Si estem passant una prestació a 1004, i han de conviure les dues, l'excloem dels tractaments actius a comparar:
    if (TractQuePassa <> 0) then qTractActius.SQL.Text := qTractActius.SQL.Text + Format('and C_TRACTAMENT <> %d', [TractQuePassa]);

    qTractActius.Open;
    qTractActius.First;

    Result := True;

    while (not qTractActius.Eof) and (Result = True) do
    begin
        // Si la prestació activa en curs és compatible amb la que entrem, result := True, i seguim
        Result := (0 = GutSelect('select COUNT(*) from PRESTACOMP P where P.C_PRESTACIO = "%s" and P.C_PRESTACOMP = "%s"',
                                 [Prestacion, qTractActius.FieldByName('C_PRESTACIO').AsSTring]));

        qTractActius.Next;
    end;
end;


function TractamentActiu(Tractament: Integer):Boolean;  // Ens diu si el tractament que li pasem es actiu o no.
begin
    Result := (0 <> GutSelect('select count(*) from TRACTAMENTS T where T.C_TRACTAMENT = %d ' +
                              'and (T.DATA_ALTA is NULL or T.DATA_ALTA >= "TODAY")',
                              [Tractament]));
end;


function teAlgunTractamentActiu(Historia: String): Boolean;
begin
    Result := (0 <> GutSelect('select Count(*) from TRACTAMENTS T ' +
                              'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO and P.TIPUS = 1 ' +
                              'where T.C_HISTORIA = %s and (T.DATA_ALTA is NULL or T.DATA_ALTA >= "TODAY")',
                              [Historia]));
end;


function ClearDadesFac:TDadesFac;
begin
    Result.C_CentreFac        := '';
    Result.C_Client           := '';
    Result.C_Delegacio        := '';
    Result.CaducaPermis       := 0;
    Result.PercentatgePacient := 0;
    Result.Referencia         := '';
    Result.EstatFac           := 0;
end;


function GetDadesFac(Tractament: String):TDadesFac;
begin

    Result :=ClearDadesFac;
    if EsBuit(Tractament) then exit;

    wData.qDadesFac.sql[4] := Tractament;
    wData.qDadesFac.Open;

    Result.C_CentreFac        := wData.qDadesFac.FieldbyName('C_CentreFac'       ).asString;
    Result.C_Client           := wData.qDadesFac.FieldbyName('C_Client'          ).asString;
    Result.C_Delegacio        := wData.qDadesFac.FieldbyName('C_Delegacio'       ).asString;
    Result.CaducaPermis       := wData.qDadesFac.FieldbyName('CaducaPermis'      ).asDateTime;
    Result.PercentatgePacient := wData.qDadesFac.FieldbyName('PercentatgePacient').asFloat;
    Result.Referencia         := wData.qDadesFac.FieldbyName('Referencia'        ).asString;
    Result.EstatFac           := wData.qDadesFac.FieldbyName('C_EstatFac'        ).asInteger;
    Result.Data_Sinistre      := wData.qDadesFac.FieldByName('Data_Sinistre'     ).AsDateTime;
    Result.Matricula_Vehicle  := wData.qDadesFac.FieldByName('Matricula_Vehicle' ).AsString;
    Result.Garant_Id          := wData.qDadesFac.FieldByName('id_garant'         ).AsInteger;
    Result.Garant_Nom         := wData.qDadesFac.FieldByName('Nom'               ).AsString;
    Result.Garant_Cognom1     := wData.qDadesFac.FieldByName('Cognom1'           ).AsString;
    Result.Garant_Cognom2     := wData.qDadesFac.FieldByName('Cognom2'           ).AsString;
end;


procedure TwData.wDataCreate(Sender: TObject);
var
   Tmp: PChar;
   Longi: DWORD;
   Hora:_SYSTEMTIME;
   Y,M,D,H,N,S,SS: Word;
   MaxLen: LongWORD;
   cCode: Integer;
   LocalName: PChar;
   RemoteName: PChar;
   UserName: PChar;
   PCName: PChar;
   R: TRegistry;
   LoginSinDominio: String;
   nivell: String;
   fileAliesIB: TIniFile;
   listEntorns: TStrings;
   listAlies: TStrings;
   opcio: Integer;
begin
    Application.OnException := TrazaErrores;

    // REAL: inicialitzem la BD de dades reals
    Alias  := 'GUTTMANN';
    Entorn := 'REAL';
    ES_PROVA := False;

    if (Application.Tag = 4444) then Exit;

    rutaAliesIB := 'C:\tempexes\AliesIB.ini';

    // EMERGÈNCIA: apuntem al Replicador
    if (Application.Tag = 2222) then
    begin
        Alias  := 'GUTTMANN_REPLICATOR';
        Entorn := 'REPLICADOR';
    end

    // REPLICADOR: executable i BD en local
    else if (Application.Tag = 3333) then
    begin
        Alias  := 'GUTTMANN';           // El Replicador té el seu propi AliesIB.ini, on GUTTMANN apunta a la BD local
        Entorn := 'REPLICADOR_LOCAL';
    end

    // HISTÒRIC: apuntem al GDB Històric 2014
    else if (Application.Tag = 1111) then
    begin
        Alias  := 'GUTTMANN_H2014';
        Entorn := 'HISTÒRIC_2014';
    end

    // Altrament, mirem si en el regedit podem atacar a bases de dades de proves:
    else begin
        R := TRegistry.Create;
        TRY
          R.RootKey := HKEY_LOCAL_MACHINE;

          TRY
            // Si tenim registre d'entrada de proves,
            if R.OpenKeyReadOnly('\Software\HCEProves') then
            begin
                // busquem el nivell d'accés a diferents entorns
                nivell := R.ReadString('Nivell');
                if (nivell = '3') then rutaAliesIB := 'C:\tempexes\AliesIB.ini';  // ICA treballa aïllat

                fileAliesIB := TIniFile.Create(rutaAliesIB);
                listEntorns := TStringList.Create;
                listAlies := TStringList.Create;

                TRY
                  // Ens guardem els noms dels entorns on es pot treballar en funció del nivell d'accés:
                  fileAliesIB.ReadSection(nivell, listEntorns);

                  // Preguntem en quin entorn treballar:
                  opcio := AvisoListaTStrings('Trieu l''entorn de treball:', listEntorns, -1);
                  if (opcio = -1) then Abort;

                  // Identifiquem l'àlies corresponent a l'entorn seleccionat:
                  Entorn := listEntorns[opcio];
                  Alias  := fileAliesIB.ReadString(nivell, Entorn, '');

                  ES_PROVA := (Alias <> 'GUTTMANN') and (Alias <> 'REPLICATOR');

                FINALLY
                  listEntorns.Free;
                  listAlies.Free;
                  fileAliesIB.Free;
                END;

            end;
          EXCEPT
            on e: Exception do
            begin
                if (opcio <> -1) then ShowMessage('Hi ha hagut algun error en inicialitzar la base de dades' + NLine + e.Message);
                Abort;
            end;
          END;
        FINALLY
          R.Free;
        END;
    end;


    TRY
      Gdb.Close;
      Gdb.Params[1] := 'PASSWORD=miope';
      Gdb.AliasName := Alias;
      Gdb.Open;
      if not Gdb.Connected then Application.Terminate;
    EXCEPT
      on e: Exception do
      begin
          ShowMessage(e.Message + NLine + 'No s''ha pogut connectar a la base de dades');
          Application.Terminate;
      end;
    END;


    // Obrim taula de bloquejos
    qBloquejos.Open;

    NT7OK          := qBloquejos.Locate('CAMP', 'NT7OK',          []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 0);
    SAPOK          := qBloquejos.Locate('CAMP', 'SAPOK',          []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 0);
    RCAOK          := qBloquejos.Locate('CAMP', 'RCAOK',          []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 0);
    CUESOK         := qBloquejos.Locate('CAMP', 'CUESOK',         []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 0);
    FOTOS_OK       := qBloquejos.Locate('CAMP', 'FOTOS_OK',       []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 0);
    HOLA_OK        := qBloquejos.Locate('CAMP', 'HOLA_OK',        []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 0);
    INFORMATICA_OK := qBloquejos.Locate('CAMP', 'INFORMATICA_OK', []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 0);
    RECERCA_OK     := qBloquejos.Locate('CAMP', 'RECERCA_OK',     []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 0);
    SENSE_CLAU     := qBloquejos.Locate('CAMP', 'SENSE_CLAU',     []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 1);
    CODIFICA       := qBloquejos.Locate('CAMP', 'CODIFICA',       []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 1);
    nHCE_ON        := qBloquejos.Locate('CAMP', 'nHCE_ON',        []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 1);
    TP_ON          := qBloquejos.Locate('CAMP', 'TP_ON',          []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 1);
    NOMES_LECTURA  := qBloquejos.Locate('CAMP', 'NOMÉS LECTURA',  []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 1);
    FT_ON          := qBloquejos.Locate('CAMP', 'FT_ON',          []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 1);
    FT_Prescrip_ON := qBloquejos.Locate('CAMP', 'FT_Prescrip_ON', []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 1);
    UpHill_ON      := qBloquejos.Locate('CAMP', 'UPHILL_ON'    ,  []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 1);
    UNICAS_ON      := qBloquejos.Locate('CAMP', 'UNICAS_ON'    ,  []) and (qBloquejos.FieldByName('ESTAT').AsInteger = 1);
    if  qBloquejos.Locate('CAMP', 'CIM_VERSIOCIM', [])  then VERSIOCIM  := qBloquejos.FieldByName('ESTAT').AsString;
    if  qBloquejos.Locate('CAMP', 'CIM_VERSIOCIM_T', [])  then VERSIOCIM_T  := qBloquejos.FieldByName('ESTAT').AsString;

    if qBloquejos.Locate('CAMP', 'CUESOK',[]) then GestorCues := qBloquejos.FieldByName('UBICACIO').AsString
                                              else GestorCues := '';

    // Si estem al Replicador en Local, no obrirem cap recurs de xarxa
    if (Application.Tag = 3333) then
    begin
        NT7OK          := False;
        SAPOK          := False;
        RCAOK          := False;
        FOTOS_OK       := False;
        HOLA_OK        := False;
        INFORMATICA_OK := False;
        RECERCA_OK     := False;
        CUESOK         := False;
    end;

    // Obrir els parametres del aplicatiu
    QParametres.Open;

    // Posem la hora del servidor a l'estacio de treball
    QHora.Open;
    DecodeDate(QHora.FieldByName('Hora').AsDateTime,y,m,d);
    DecodeTime(QHora.FieldByName('Hora').AsDateTime,h,n,s,ss);
    Hora.wYear        := y;
    Hora.wMonth       := m;
    Hora.wDay         := d;
    Hora.wDayOfWeek   := DayOfWeek(QHora.FieldByName('Hora').AsDateTime);
    Hora.wHour        := h;
    Hora.wMinute      := n;
    Hora.wSecond      := s;
    Hora.wMilliseconds:= ss;
    SetLocalTime(Hora);


    // Predefinim opcions per l'aplicatiu. Const de SysUtils

    Application.UpdateFormatSettings:=False; // No permetem el cambi en Panel de Control / Configuraciones Regionales

    DateSeparator:= '/'; // Separador de datas.
    ShortDateFormat := 'dd/MM/yyyy'; // 4 digits a l'any,
    LongDateFormat:= 'dddd d" de "MMMM" de "yyyy';
    TwoDigitYearCenturyWindow:=50;

    TimeSeparator   := ':';
    TimeAMString    := 'pm';
    TimePMString    := 'am';
    ShortTimeFormat := 'H:mm:ss';
    LongTimeFormat  := 'H:mm:ss';

    ShortMonthNames[ 1]:='gen';
    ShortMonthNames[ 2]:='febr';
    ShortMonthNames[ 3]:='març';
    ShortMonthNames[ 4]:='abr';
    ShortMonthNames[ 5]:='maig';
    ShortMonthNames[ 6]:='juny';
    ShortMonthNames[ 7]:='jul';
    ShortMonthNames[ 8]:='ag';
    ShortMonthNames[ 9]:='set';
    ShortMonthNames[10]:='oct';
    ShortMonthNames[11]:='nov';
    ShortMonthNames[12]:='des';

    LongMonthNames[ 1]:='gener' ;
    LongMonthNames[ 2]:='febrer' ;
    LongMonthNames[ 3]:='març' ;
    LongMonthNames[ 4]:='abril' ;
    LongMonthNames[ 5]:='maig' ;
    LongMonthNames[ 6]:='juny' ;
    LongMonthNames[ 7]:='juliol' ;
    LongMonthNames[ 8]:='agost' ;
    LongMonthNames[ 9]:='setembre' ;
    LongMonthNames[10]:='octubre' ;
    LongMonthNames[11]:='novembre' ;
    LongMonthNames[12]:='desembre' ;

    ShortDayNames[2]:='dl';
    ShortDayNames[3]:='dt';
    ShortDayNames[4]:='dc';
    ShortDayNames[5]:='dj';
    ShortDayNames[6]:='dv';
    ShortDayNames[7]:='ds';
    ShortDayNames[1]:='dg';
                                       
    LongDayNames[2]:='dilluns';
    LongDayNames[3]:='dimarts';
    LongDayNames[4]:='dimecres';
    LongDayNames[5]:='dijous';
    LongDayNames[6]:='divendres';
    LongDayNames[7]:='dissabte';
    LongDayNames[1]:='diumenge';

    // Busquem el login i la maquina(pc)

    MaxLen := 255;
    GetMem(UserName,MaxLen);
    GetMem(LocalName,MaxLen);
    GetMem(PCName,MaxLen);
    GetMem(RemoteName,MaxLen);         


    StrCopy(LocalName,PChar(QParametres.FieldByName('UnitatRed').AsString));
    cCode := WNetGetUser(LocalName,UserName,MaxLen);
    if cCode=0
    then ID_LOGIN := UpperCase(GetUserName(UserName))
    else ID_LOGIN:='';

    // si no trobem el login via api, llavors el busquem via $Environment Variables.
    if Trim(ID_LOGIN)='' then
    begin
         getEnvironmentVariable(PChar('USERNAME'),UserName, MaxLen);
         ID_LOGIN := UpperCase(UserName);
    end;

    // Directoris de treball
    // Temporal
    TRY    C_TEMPORAL := GetEnvironmentVariable('TEMP');
    EXCEPT C_TEMPORAL := 'C:\tempexes';
    END;
    // Carpeta d'usuari
    TRY    C_USERPRF := GetEnvironmentVariable('USERPROFILE');
    EXCEPT C_USERPRF := 'C:\tempexes';
    END;

    cCode := WNetGetConnection(LocalName,RemoteName,MaxLen);
    if cCode=0 then ID_REMOTE := String(RemoteName) else ID_REMOTE:= '**';

    Longi := 20;
    GetComputerName(PCName, Longi);
    ID_COMPUTER:= String(PCName);



    GetMem(Tmp,MaxLen);
    GetNicAddress(Tmp); //de la nic.dll
    ID_NIC := String(Tmp);
    // Antonio afegeix això per si no ho agafa bé:      //???
    IF (ID_NIC='000000000001') OR (ID_NIC='') THEN ID_NIC:=GetMACAddress;


   if ID_NIC = ''
   then QDretsAcces.ParamByName('placa').Clear
   else QDretsAcces.ParamByName('placa').AsString := ID_NIC;


   if ID_LOGIN = ''
   then QDretsAcces.ParamByName('login').Clear
   else begin
        if Pos('.', ID_LOGIN)=0
        then LoginSinDominio := ID_LOGIN
        else LoginSinDominio := Copy(ID_LOGIN,1, Pos('.', ID_LOGIN)-1 );
        QDretsAcces.ParamByName('login').AsString := LoginSinDominio;
   end;

//   ShowMessage('Login: ' + QDretsAcces.ParamByName('login').AsString + NLine +
//               'Placa: ' + QDretsAcces.ParamByName('placa').AsString);

   TRY QDretsAcces.Open;
   EXCEPT
     on e: Exception do
     begin
       ShowMessage(e.message);
       Application.Terminate;
     end;
   END;

   NO_ACCES := QDretsAcces.FieldByName('C_ACCES').AsString;

   With QParametres do
   begin
        CHR_Subrallado   := Replace('ESC',#27,FieldByName('SUBRRALLAYON').AsString);
        CHR_NOSubrallado := Replace('ESC',#27,FieldByName('SUBRRALLATOff').AsString);
        CHR_Negrita      := Replace('ESC',#27,FieldByName('NEGRITAON').AsString);
        CHR_NONegrita    := Replace('ESC',#27,FieldByName('NEGRITAOFF').AsString);
        TCHR_Normal      := Replace('ESC',#27,FieldByName('NORMAL').AsString);
        TCHR_Grande      := Replace('ESC',#27,FieldByName('GRANDE').AsString);
        INIT_PRINT       := Replace('ESC',#27,FieldByName('INITPRINT').AsString);
   end;

end;


procedure TwData.TrazaErrores(Sender: TObject; E: Exception);
var
 F: TextFile;
 Fitxer: String;
 Linea: String;
 fError: String;

 Procedure MostraError(Texte: String);
 begin
       With TxHYError.Create(Application) do
       begin
            Try
             Color := Projecte.Colores.BarraMenu;
             Memo.Color := clYellow;
             Memo.Font.Color := clRed;
             Memo.Font.Style := [fsBold];
             Memo.Lines.Clear;
             Memo.Lines.Add('');
             Memo.Lines.Add(TEXTE);
             Top:=0;
             Left:=0;
             ShowModal;
            FINALLY
             Free;
            END;
       end;
 end;

begin                                                  
     // Si es un error de DataBase de consistency check, reobrir el TDataBase.
     // Fem el log de errors en un fitxers txt.

     Fitxer := 'G:\USR\maestros\Log\LogCurs.txt';
     if E is HaleyException then MostraError( E.Message )
     else begin
          try
             if FileExists(Fitxer) then
             begin
                  Assignfile(F,Fitxer);
                  if not FileExists(Fitxer) then Rewrite(F);
                  Append(F);

                  fError := StringReplace(E.Message, #13,' ',[rfReplaceAll, rfIgnoreCase]);
                  fError := StringReplace(fError   , #10,' ',[rfReplaceAll, rfIgnoreCase]);

                  Linea := Format('%-15s %s [%4s] ## %s ',
                  [ Application.Title,
                    FormatDateTime('dd/mm/yyyy hh:nn:ss ',Now),
                    NO_ACCES,
                    fError
                  ]);
                  WriteLn(F,Linea);
             end;
             
          finally
           if FileExists(Fitxer) then CloseFile(F);
           MostraError (E.Message{+#13#10+#13#10+'¡ AVISAR A INFORMATICA !'});
          end;
     end;

end;


function TwData.ObraTrazaControl(Historia: LongInt;Consult: String='';Aplica: Integer=1;Ref: Integer=0): LongInt;
begin
     Result := SelectGenId(wData.Gdb.DatabaseName, 'CONTATRAZA');
     with InsTraza do
     begin
          ParamByName('Pk').AsInteger := Result;
          if (NO_ACCES = '') then ParamByName('C_Acces').Clear
                             else ParamByName('C_Acces').AsString := NO_ACCES;
          if (UsuariActiu.Codi = '') then
          begin
              ParamByName('C_Usuari'  ).Clear;
              ParamByName('C_Grup'    ).Clear;
              ParamByName('C_Especial').Clear;
          end
          else begin
              ParamByName('C_Usuari'  ).AsString := UsuariActiu.Codi;
              ParamByName('C_Grup'    ).AsString := UsuariActiu.Grup;
              ParamByName('C_Especial').AsString := UsuariActiu.Especial;
          end;
          ParamByName('C_Historia').AsInteger := Historia;
          if (UsuariActiu.Extra = '') then ParamByName('ExtraId').Clear
                                      else ParamByName('ExtraId').AsString := UsuariActiu.Extra;
          if (ID_COMPUTER = '') then ParamByName('NomPC').Clear
                                else ParamByName('NomPC').AsString := ID_COMPUTER;
          if (Consult<>'')      then ParamByName('Consulta').AsString := Consult
                                else ParamByName('Consulta').Clear;
          if (Aplica<>0)        then ParamByName('Aplicacio').AsInteger := Aplica
                                else ParamByName('Aplicacio').Clear;
          if (Ref<>0)           then ParamByName('Referencia').AsInteger := Ref     
                                else ParamByName('Referencia').Clear;
          ExecSQL;
     end;
end;

procedure TwData.TancaTrazaControl(Pk: LongInt; Status: String);
begin
     if Pk<=0 then Exit;

     with UpTraza do
     begin
          ParamByName('Pk').AsInteger:= Pk;
          if Status=''
          then ParamByName('Status').Clear
          else ParamByName('Status').AsString := Status;
          ExecSQL;
     end;
end;

// --------------------------------------------------------------------------------------
// --------------------------------------------------------------------------------------


function TeDretAcces(ListDrets: Array Of Const; FerRaise: Boolean=False; MirarDretTotal: Boolean = True): Boolean;
var
   Dret: Integer;
   i: Integer;
   TeTotal, BuscaPos, BuscaNeg, TrobatPos, TrobatNeg, ResultPos, ResultNeg: Boolean;
begin
    with wData do
    begin
      // Si l'accés no existeix, tanquem l'aplicació
      if QdretsAcces.FieldByName('C_Acces').IsNull then
      begin
          FerError(Error0);
          Application.Terminate;
          Exit;
      end;

      // Primer mirem si té el dret A100 - dret total
      TeTotal := MirarDretTotal and QDretsAcces.Locate('C_Dret', 'A100', []);

      // Si no té dret total, busquem en té algun dels que ha de tenir (positius)
      if (not TeTotal) then
      begin
          BuscaPos := False;
          TrobatPos := False;
          for i := 0 to High(ListDrets) do BuscaPos := BuscaPos or (ListDrets[i].vInteger > 0);

          if BuscaPos then
          begin
              for i := 0 to High(ListDrets) do
              begin
                  Dret := ListDrets[i].vInteger;
                  if QDretsAcces.Locate('C_Dret', 'A'+ IntToStr(Dret), []) then TrobatPos := True;
                  if TrobatPos then Break;
              end;
          end;
      end;

      ResultPos := TeTotal or TrobatPos or not BuscaPos;

      // Mirem si té algun dret dels que no ha de tenir (negatius)
      BuscaNeg := False;
      TrobatNeg := False;
      for i := 0 to High(ListDrets) do BuscaNeg := BuscaNeg or (ListDrets[i].vInteger < 0);

      if BuscaNeg then
      begin
          for i := 0 to High(ListDrets) do
          begin
              Dret := Abs(ListDrets[i].vInteger);
              if QDretsAcces.Locate('C_Dret', 'A'+ IntToStr(Dret), []) then TrobatNeg := True;
              if TrobatNeg then Break;
          end;
      end;

      ResultNeg := BuscaNeg and TrobatNeg;

      Result := ResultPos and not ResultNeg;

      // Si no té cap dels drets positius, o en té algun dels negatius, donem error (si hem de fer raise).
      if FerRaise and not Result then FerError(Error3, True);
    end;
end;


Procedure ClearMetge(var Metge:TMetge);
begin
     with Metge do
     begin
         Codi          := '';
         Desc          := '';
         Grup          := '';
         Color         := 0;
         Especial      := '';
         Area          := '';
         Area2         := '';
         DescGrup      := '';
         DescEspecial  := '';
         COGNOMS       := '';
         TRACTE        := '';
         NC            := '';
         NomSencer     := '';
         cProv         := '';
         NMetgeRecepta := '';
         Titol         := '';
     end;
end;

Procedure ClearPresta(var Presta:TPrestacio);
begin
     with Presta do
     begin
          C_Prestacio := '';
          N_Prestacio := '';
     end;
end;


Procedure ClearTractament(var Tractament: TTractament);
begin
     with Tractament do
     begin
          C_Tractament := 0;
          C_Prestacio  := '';
          N_Prestacio  := '';
          EsEASE       := '';
          C_Coordinador:= '';
          N_Coordinador:= '';
          C_Especial   := '';
          Data_Ingres  := 0;
          Data_Alta    := 0;
          Data_PreAlta := 0;
          InfAlta      := '';
          Epicrisi     := 0;
          EsProvisional:=0;
          C_PrestaOrigen := '';
          C_Proces       := 0;
          FI_Proces      := '';
          C_Motiu := 0;
          C_CentreFac    := '';
     end;
end;


Function  OmpleTractament(tractament: Integer): TTractament;
var
  qTract: TQuery;
begin
    if (tractament = 0) then ClearTractament(Result);

    qTract := TQuery.Create(wData);
    TRY                                                        

      qTract.DatabaseName := 'interna';
      qTract.SQL.Text := Format('select T.C_PRESTACIO, P.RESUM, T.C_COORDINADOR, M.METGE, M.C_ESPECIAL, T.DATA_INGRES, T.DATA_ALTA, T.DATA_PREALTA, T.ESTATINFORMEALTA, ' +
                                '       T.ESPROVISIONAL, T.C_PRESTACIOORIGEN, T.C_PROCES, T.FI_PROCES, P.ESEASE, T.C_MOTIU, T.C_MODALITAT, T.C_CENTREFAC '+
                                'from   TRACTAMENTS T ' +
                                'join   PRESTACION  P on T.C_PRESTACIO   = P.C_PRESTACIO ' +
                                'join   METGES      M on T.C_COORDINADOR = M.CODI ' +
                                'where C_TRACTAMENT = %d', [tractament]);
      qTract.Open;
      with Result do
      begin
          C_Tractament   := tractament;
          C_Prestacio    := qTract.FieldByName('C_Prestacio'  ).AsString;
          N_Prestacio    := qTract.FieldByName('Resum'        ).AsString;
          EsEASE         := qTract.FieldByName('EsEASE'       ).AsString;
          C_Coordinador  := qTract.FieldByName('C_Coordinador').AsString;
          N_Coordinador  := qTract.FieldByName('Metge'        ).AsString;
          C_Especial     := qTract.FieldByName('C_Especial'   ).AsString;
          Data_Ingres    := qTract.FieldByName('Data_Ingres'  ).AsDateTime;
          Data_Alta      := qTract.FieldByName('Data_Alta'    ).AsDateTime;
          Data_PreAlta   := qTract.FieldByName('Data_PreAlta' ).AsDateTime;
          Epicrisi       := qTract.FieldByName('EstatInformeAlta').AsInteger;
          EsProvisional  := qTract.FieldByName('EsProvisional').AsInteger;
          C_PrestaOrigen := qTract.FieldByName('C_PrestacioOrigen').AsString;
          C_Proces       := qTract.FieldByName('C_Proces'     ).AsInteger;
          FI_Proces      := qTract.FieldByName('Fi_Proces'    ).AsString;
          C_Motiu        := qTract.FieldByName('C_Motiu'      ).AsInteger;
          C_CentreFac    := qTract.FieldByName('C_Centrefac'  ).AsString;
          C_Modalitat    := qTract.FieldByName('C_Modalitat'  ).AsInteger;
      end;
      qTract.Close;
    FINALLY
      qTract.Free;
    END;
end;

Function  BuscaPresta(C_Prestacio: String): TPrestacio;
begin

    ClearPresta(Result);
    if C_Prestacio <> '' then
    begin

      with wData.qPrestacio do
      begin
         Close;
         ParambyName('CODI').asString := C_Prestacio;
         Open;

         Result.C_Prestacio  := FieldbyName('C_Prestacio').asString;
         Result.N_Prestacio  := FieldbyName('N_Prestacio').asString;
         Result.N_Prestacio2 := FieldbyName('N_Prestacio2').asString;
      end;

    end;
end;

Function BuscaMetge(Codi: String;Extra:String=''): TMetge;
begin
     // Sincronitzem la taula de metges.
     ClearMetge(Result);
     if Codi<>'' then
     begin
          if Extra=''
          then with wData.QMetges do
          begin
               Close;
               ParamByName('Codi').AsString := Codi;
               Open;
               
               Result.Codi          := FieldByName('C_USUARI'  ).AsString;
               Result.Desc          := FieldByName('METGE'     ).AsString;
               Result.NomSencer     := FieldByName('NomSencer' ).AsString;
               Result.Grup          := FieldByName('C_GRUP'    ).AsString;
               Result.Color         := FieldByName('color'     ).AsInteger;
               Result.Especial      := FieldByName('C_ESPECIAL').AsString;
               Result.DescGrup      := FieldByName('N_Grup'    ).AsString;
               Result.DescEspecial  := FieldByName('n_Especial').AsString;
               Result.COGNOMS       := FieldByName('COGNOM'    ).AsString;
               Result.TRACTE        := FieldByName('TRACTE'    ).AsString;
               Result.Area          := FieldByName('C_Area'    ).AsString;
               Result.Area2         := FieldByName('C_Area2'   ).AsString;
               Result.Extra         := '';
               Result.Nc            := FieldByName('Nc'        ).AsString;
               Result.cProv         := FieldByName('c_prov'    ).AsString;
               Result.NMetgeRecepta := FieldByName('NMetgeRecepta').AsString;
               Result.Titol         := FieldByName('Titol'     ).AsString;
          end
          else with wData.QMetgesExtra do
          begin
               Close;
               ParamByName('Codi').AsString  := Codi;
               ParamByName('Extra').AsString := Extra;
               Open;
               
               Result.Codi          := FieldByName('C_USUARI'  ).AsString;
               Result.Desc          := FieldByName('METGE'     ).AsString;
               Result.NomSencer     := '';
               Result.Grup          := FieldByName('C_GRUP'    ).AsString;
               Result.Color         := FieldByName('color'     ).AsInteger;
               Result.Especial      := FieldByName('CEspe').AsString;
               Result.DescGrup      := FieldByName('Grup'      ).AsString;
               Result.DescEspecial  := FieldByName('Especial'  ).AsString;
               Result.COGNOMS       := FieldByName('COGNOM'    ).AsString;
               Result.TRACTE        := '';
               Result.Area          := '';
               Result.Area2         := '';
               Result.Extra         := Extra;
               Result.Nc            := '';
               Result.cProv         := '';
               Result.NMetgeRecepta := '';
               Result.Titol         := '';
          end;
     end;
end;


Function  PreguntaFili(C_Historia: String = '';  Vius:Boolean = True; PerCIP: Boolean = False): TFili;
begin
    {$IFDEF DIALOGHISTORIA}
    with TwDialogHistoria.Create(Application) do
    begin
        tbCIP.Visible := PerCIP;
        if EditHistoria.Text = '0' then EditHistoria.Text := '';
        OnlyVius := Vius;
        if esPle(C_Historia) then  EditHistoria.Text := C_Historia;
        try
          if Vius then
          begin
             qHistoria.Sql[4] := ' AND ESVIU = "S"';
             BuscaFili.SqlDic[11]     := ' AND ESVIU = "S"';
             BuscaFili.SqlDicTotal[4] := ' AND ESVIU = "S"';
          end
          else begin
             qHistoria.Sql[4] := '';
             BuscaFili.SqlDic[11] := '';
             BuscaFili.SqlDicTotal[4] := '';
          end;

          if EsPle(C_Historia) then Obrir.Execute
                               else ShowModal;

          Result :=  Reg_Historia;
        finally
          Free;
        end;
    end;
   {$ENDIF}
end;

// parte 62735 - i
Function PreguntaFiliCIP(C_Historia: String = '';  Vius:Boolean = True): TFili;
begin
   {$IFDEF SIRE}
    with TwDialogHistoriaSIRE.Create(Application) do
    begin
        if EditHistoria.Text = '0' then EditHistoria.Text := '';
        OnlyVius := Vius;
        if esPle(C_Historia) then  EditHistoria.Text := C_Historia;
        try
          if Vius then
          begin
             qHistoria.Sql[4] := ' AND ESVIU = "S"';
             BuscaFili.SqlDic[11]     := ' AND ESVIU = "S"';
             BuscaFili.SqlDicTotal[4] := ' AND ESVIU = "S"';
          end
          else begin
             qHistoria.Sql[4] := '';
             BuscaFili.SqlDic[11] := '';
             BuscaFili.SqlDicTotal[4] := '';
          end;

          if EsPle(C_Historia) then Obrir.Execute
                               else ShowModal;

          Result :=  Reg_Historia;
        finally
          Free;
        end;
    end;
   {$ENDIF}
end;
// parte 62735 - f

Function  PreguntaMetge(ConExtra: Boolean=False; CanviaUsuariActiu: Boolean=True): TMetge;
var
   Tmp: String;
   Extra: String;
begin

    // EMERGÈNCIA: avisem que les dades no es guardaran (estem al Replicador)
    if (Application.Tag = 2222) or (Application.Tag = 3333) or NOMES_LECTURA then
    begin
        ShowMensajeError( NLine + ' PROGRAMA D''EMPERGÈNCIA.' + NLine +
                         ' LES DADES SÓN NOMÉS DE CONSULTA. ' + NLine + NLine +
                         ' RES DEL QUE GRAVEU NO QUEDARÀ ENREGISTRAT !!' + NLine,
                         ' PROGRAMA D''EMPERGÈNCIA ',
                          clRed, clYellow, 500, True, 'Atenció', taCenter, clRed, False, True);
    end;

    ClearMetge(Result);
    
    // Obrim el form d'entrada de clau
    with TwFichaAcces.Create(Application) do
    begin
        TRY
          ConUserExtra := ConExtra;
          if (ShowModal = mrOk) then
          begin
              Tmp := EditUno.Text;
              Extra := UserExtra;
          end
          else Tmp := '';
        FINALLY
          Free;
        END;
    end;

    if (Tmp <> '') then Result := BuscaMetge(Tmp,Extra);

    // En canviar l'usuari:
    if (Result.Codi <> '') and (Result.Codi <> wData.UsuariActiu.Codi) then
    begin
        // Actualitzem l'usuari actiu
        if CanviaUsuariActiu then wData.UsuariActiu := Result;

        {$IFDEF CURS}
        // Si el nou usuari no pot entrar al Curs Clínic, tanquem l'aplicació
        if TeDretMetge(Result.Codi, [75]) then
        begin
            FerError(Error1);
            Application.Terminate;
        end;

        // A més, si existeix el FichaVerHis:
        if Assigned(wDataVerHis.F) then
        begin
          with wDataVerHis.F do
          begin
            // activem o desactivem el ClipBoard segons els drets:
            if TeDretGrup(Result.Grup, [19]) or TeDretMetge(Result.Codi, [97]) then
            begin
                EditCopy1.ShortCut := 0;
                EditCut1.ShortCut := 0;
                EditPaste1.ShortCut := 0;
                EditCopy2.ShortCut := 0;
                EditCopy3.ShortCut := 0;
            end
            else begin
                EditCopy1.ShortCut  := 16451;
                EditCut1.ShortCut   := 16472;
                EditPaste1.ShortCut := 16470;
                EditCopy3.ShortCut  := 24621;
                EditCopy2.ShortCut  := 16429;
            end;

            // i si estem en una història:
            if  (Estado <> 1) then
            begin
                // Si el nou usuari no està autoritzat a veure la història en curs (bloqueig parcial), en sortim:
                if (wDataVerHis.Fili.FieldByName('Bloqueig').AsString = 'P') and
                   (0 = GutSelect('select COUNT(*) from BLOQUEJOS where C_HISTORIA = %d and C_USUARI = "%s"',
                                  [wDataVerHis.Fili.FieldByName('Num_Hist').AsInteger, Result.Codi]))
                then begin
                    Aviso('HISTÒRIA BLOQUEJADA');
                    Estado := 1;
                    Refrescar;
                    Abort;
                end;

                // Si el nou usuari no està autoritzat a veure el NIP dels projectes de Recerca, l'amaguem:
                if wDataRecercaQ.qEstudis.Active then
                begin
                    edNIP.Visible := (Result.Codi = wDataRecercaQ.qEstudis.FieldByName('C_IP').AsString);
                    if not wDataVerHis.F.edNIP.Visible then
                    begin
                        wDataRecercaQ.qCoinvestigadors.Close;
                        wDataRecercaQ.qCoinvestigadors.ParamByName('C_Projecte').AsInteger := wDataRecercaQ.qEstudis.FieldByName('C_Projecte').AsInteger;
                        wDataRecercaQ.qCoinvestigadors.Open;
                        wDataVerHis.F.edNIP.Visible := wDataRecercaQ.qCoinvestigadors.Locate('C_COINVESTIGADOR', Result.Codi, []);
                        wDataRecercaQ.qCoinvestigadors.Close;
                    end;
                end;

                // Si l'usuari només pot accedir a pacients amb GBL activa, el fem fora si no n'hi ha
                nomesGBL := TeDretGrup(Result.Grup, [166]) or TeDretMetge(Result.Codi, [222]);
                if nomesGBL and (ComptaGBL = 0) then
                begin
                    Aviso(Error1);
                    Estado := 1;
                    Refrescar;
                    Abort;
                end;

                // Activem o no la pestanya GBL segons els drets
                veureGBL := TeDretGrup(Result.Grup, [169]) or TeDretMetge(Result.Codi, [224]);
                TabGBL.TabVisible := veureGBL;

                // Mostrem un avís si el pacient té ordres mèdiques a punt de caducar
                if HiHaOMPerCaducar and (not FT_ON) then ShowMessage('ATENCIÓ: PACIENT AMB ORDRES MÈDIQUES A PUNT DE CADUCAR');

                // tanquem el traza actiu
                if (LastTraza > 0) then wData.TancaTrazaControl(LastTraza, StatusTraza);
                // i obrim el següent traza
                StatusTraza := '';
                LastTraza := wData.ObraTrazaControl(wDataVerHis.Fili.FieldByName('Num_Hist').AsInteger);
                AddStatusTraza('V');  // afegim traza V (història vista) per al nou usuari

                // Refresquem les alarmes del flash:
                RefrescaAlarmes;
            end;
          end;
        end;
        {$ENDIF}  // Curs
    end;
end;


function PreguntaMetgePlus(ConExtra: Boolean=False; CanviaUsuariActiu: Boolean=True): TMetge;
var
  Tmp: String;
  Extra: String;
begin

    // EMERGÈNCIA: avisem que les dades no es guardaran (estem al Replicador)
    if (Application.Tag = 2222) or (Application.Tag = 3333) or NOMES_LECTURA then
    begin
        ShowMensajeError( NLine + ' PROGRAMA D''EMPERGÈNCIA.' + NLine +
                         ' LES DADES SÓN NOMÉS DE CONSULTA. ' + NLine + NLine +
                         ' RES DEL QUE GRAVEU NO QUEDARÀ ENREGISTRAT !!' + NLine,
                         ' PROGRAMA D''EMPERGÈNCIA ',
                          clRed, clYellow, 500, True, 'Atenció', taCenter, clRed, False, True);
    end;


    ClearMetge(Result);

    // Obrim el formulari d'entrada de la clau de pas llarga
    with TwFitxaClauDePas.Create(Application) do
    begin
        TRY
          Caption := 'Entrada '+Application.Title;  
          ConUserExtra := ConExtra;
          lCanviClau.Enabled := False;

          if (ShowModal = mrOk) then
          begin
              Tmp := edUsuari.Text;
              Extra := UserExtra;
          end
          else Tmp := '';
        FINALLY
          Free;
        END;
    end;

    if (Tmp <> '') then Result := BuscaMetge(Tmp,Extra);

    // En canviar l'usuari:
    if (Result.Codi <> '') and (Result.Codi <> wData.UsuariActiu.Codi) then
    begin
        // Actualitzem l'usuari actiu
        if CanviaUsuariActiu then wData.UsuariActiu := Result;

        {$IFDEF CURS}
        // Si el nou usuari no pot entrar al Curs Clínic, tanquem l'aplicació
        if TeDretMetge(Result.Codi, [75]) then
        begin
            FerError(Error1);
            Application.Terminate;
        end;

        // A més, si existeix el FichaVerHis:
        if Assigned(wDataVerHis.F) then
        begin
          with wDataVerHis.F do
          begin
            // activem o desactivem el ClipBoard segons els drets:
            if TeDretGrup(Result.Grup, [19]) or TeDretMetge(Result.Codi, [97]) then
            begin
                EditCopy1.ShortCut := 0;
                EditCut1.ShortCut := 0;
                EditPaste1.ShortCut := 0;
                EditCopy2.ShortCut := 0;
                EditCopy3.ShortCut := 0;
            end
            else begin
                EditCopy1.ShortCut  := 16451;
                EditCut1.ShortCut   := 16472;
                EditPaste1.ShortCut := 16470;
                EditCopy3.ShortCut  := 24621;
                EditCopy2.ShortCut  := 16429;
            end;

            // i si estem en una història:
            if  (Estado <> 1) then
            begin
                // Si el nou usuari no està autoritzat a veure la història en curs (bloqueig parcial), en sortim:
                if (wDataVerHis.Fili.FieldByName('Bloqueig').AsString = 'P') and
                   (0 = GutSelect('select COUNT(*) from BLOQUEJOS where C_HISTORIA = %d and C_USUARI = "%s"',
                                  [wDataVerHis.Fili.FieldByName('Num_Hist').AsInteger, Result.Codi]))
                then begin
                    Aviso('HISTÒRIA BLOQUEJADA');
                    Estado := 1;
                    Refrescar;    
                    Abort;
                end;
                
                // tanquem el traza actiu
                if (LastTraza > 0) then wData.TancaTrazaControl(LastTraza, StatusTraza);
                // i obrim el següent traza
                StatusTraza := '';
                LastTraza := wData.ObraTrazaControl(wDataVerHis.Fili.FieldByName('Num_Hist').AsInteger);
                AddStatusTraza('V');  // afegim traza V (història vista) per al nou usuari

                // Refresquem les alarmes del flash:
                RefrescaAlarmes;
            end;
          end;
        end;
        {$ENDIF}  // Curs
    end;
end;



function CanviDeClau(usuari,extra: String; e_gracia: Integer; DemanaAntiga: Boolean = True): Integer;
begin
    with TwFitxaCanviClau.Create(Application) do
    begin
        TRY
          pCondicions.Hide;
          panel1.Height := 205;

          edUser.Text := usuari;

          if (extra = '') then
          begin
              lUserExtra.Hide;
              edUserExtra.Hide;
              edUserExtra.Text := '';
          end
          else begin
              lUserExtra.Show;
              edUserExtra.Show;
              edUserExtra.Text := extra;
          end;

          edClauNew.Text  := '';
          edClauNew2.Text := '';

          if DemanaAntiga then
          begin
              edClauOld.Text := '';
              lClauOld.Show;
              edClauOld.Show;
          end
          else begin
              ent_gracia := e_gracia;
              lClauOld.Hide;
              edClauOld.Hide;
          end;

          CASE ShowModal OF
            mrOk:     Result := 0;
            mrCancel: Result := 1;
            mrAbort:  Result := 2;
          END;

        FINALLY
          Free;
        END;
    end;
end;


function TeDretUsuari(CodiUsuari: String; ListDrets: String; ListDretsNo: String=''; FerRaise: Boolean=False): Boolean;
var
  Usuari: TMetge;
begin
    Result := False;
    if (CodiUsuari <> '') then
    begin
        with wData do
        begin
            Usuari := BuscaMetge(CodiUsuari);

            if (Usuari.Codi <> qDretsUsr.ParamByName('c_usuari').AsString) then
            begin
                 qDretsUsr.Close;
                 qDretsUsr.ParamByName('c_usuari'  ).AsString := Usuari.Codi;
                 qDretsUsr.Open;
            end;
            // Recorrem els drets de l'usuari per mirar si en té algun dels demanats
            if not qDretsUsr.Active then qDretsUsr.Open;
            qDretsUsr.First;
            while not qDretsUsr.Eof do
            begin
                // Si té un dels drets que passem, ja és ok
                if  ParInStr(Trim(qDretsUsr.FieldByName('C_Dret').AsString), ListDrets, ',') then Result := True;
                // Si en trobem un, no continuem buscant
                if Result then Break;

                qDretsUsr.Next;
            end;

            // Muntem un array amb la llista de drets "no" que ens passen
            if (ListDretsNo <> '') and Result then
            begin
                // Recorrem els derts de l'usuari per mirar els que no ha de tenir
                qDretsUsr.First;
                while not qDretsUsr.Eof do
                begin
                    // si té un dels drets "no" que passem, ja no és ok
                    if  ParInStr(Trim(qDretsUsr.FieldByName('C_Dret').AsString), ListDretsNo, ',') then Result := False;
                    // Si en trobem un, no continuem buscant
                    if not Result then Break;

                    qDretsUsr.Next;
                end;
            end;
        end;
    end;

    // Si no té dret fem el Raise si cal
    if FerRaise and not Result then FerError(Error1, True);
end;


function TeDretMetge(CodiMetge: String; ListDrets: Array of Const; FerRaise: Boolean=False): Boolean;
var
  Dret: Integer;
  Bucle: Integer;
begin
    Result := False;

    if (CodiMetge <> '') then
    begin
        with wData do
        begin
            if (CodiMetge <> QDretsMetge.ParamByName('Usuari').AsString) then
            begin
                 QDretsMetge.Close;
                 QDretsMetge.ParamByName('Usuari').AsString := CodiMetge;
                 QDretsMetge.Open;
            end;

            // Recorrem els drets de l'usuari per mirar si en té algun dels demanats
            if not qDretsMetge.Active then QDretsMetge.Open; 
            qDretsMetge.First;
            while not qDretsMetge.Eof do
            begin
                for Bucle := 0 to High(ListDrets) do
                begin
                    Dret := ListDrets[Bucle].vInteger;
                    // Només que trobem un dret (positiu) ja és vàlid.
                    if (Dret > 0) and (qDretsMetge.FieldByName('C_Dret').AsString = 'M'+IntToStr(Dret)) then Result := True;
                end;
                // Si en trobem un, no continuem buscant
                if Result then Break;

                qDretsMetge.Next;
            end;

            // Ara fem el mateix per mirar si en té algun dels que no ha de tenir
            if Result then
            begin
                qDretsMetge.First;
                while not qDretsMetge.Eof do
                begin
                    for Bucle := 0 to High(ListDrets) do
                    begin
                        Dret := ListDrets[Bucle].vInteger;
                        // Només que trobem un dret (negatiu) ja serà invàlid.
                        if (Dret < 0) and (qDretsMetge.FieldByName('C_Dret').AsString = 'M'+IntToStr(Abs(Dret))) then Result := False;
                    end;
                    // Si en trobem un, no continuem buscant
                    if not Result then Break;

                    qDretsMetge.Next;
                end;
            end;
        end;
    end;

    // Si no té dret fem el Raise si cal
    if FerRaise and not Result then FerError(Error1, True);
end;


Function TeDretEspecial(CodiEspecial: String; ListDrets: Array of Const; FerRaise: Boolean=False): Boolean;
var
  Dret: Integer;
  Bucle: Integer;
begin
    Result := False;
    with wData do
    begin
        if (CodiEspecial <> '') then
        begin
            qDretsEspecial.Close;
            qDretsEspecial.ParamByName('Especial').AsString := CodiEspecial;
            qDretsEspecial.Open;

            // Recorrem els drets de l'especialitat per mirar si en té algun dels demanats
            qDretsEspecial.First;
            while not qDretsEspecial.Eof do
            begin
                for Bucle := 0 to High(ListDrets) do
                begin
                    Dret := ListDrets[Bucle].vInteger;
                    // Només que trobem un dret (positiu) ja és vàlid.
                    if (Dret > 0) and (qDretsEspecial.FieldByName('C_Dret').AsString = 'E'+IntToStr(Dret)) then Result := True;
                end;
                // Si en trobem un, no continuem buscant
                if Result then Break;

                qDretsEspecial.Next;
            end;

            // Ara fem el mateix per mirar si en té algun dels que no ha de tenir
            if Result then
            begin
                qDretsEspecial.First;
                while not qDretsEspecial.Eof do
                begin
                    for Bucle := 0 to High(ListDrets) do
                    begin
                        Dret := ListDrets[Bucle].vInteger;
                        // Només que trobem un dret (negatiu) ja serà invàlid.
                        if (Dret < 0) and (qDretsEspecial.FieldByName('C_Dret').AsString = 'E'+IntToStr(Abs(Dret))) then Result := False;
                    end;
                    // Si en trobem un, no continuem buscant
                    if not Result then Break;

                    qDretsEspecial.Next;
                end;
            end;
        end;
    end;

    // Si no té dret fem el Raise si cal
    if FerRaise and not Result then FerError(Error1, True);
end;


Function TeDretGrup(CodiGrup: String; ListDrets: Array of Const; FerRaise: Boolean=False): Boolean;
var
  Dret: Integer;
  Bucle: Integer;
begin
    Result := False;
    with wData do
    begin
        if (CodiGrup <> '') then
        begin
            qDretsGrup.Close;
            qDretsGrup.ParamByName('Grup').AsString := CodiGrup;
            qDretsGrup.Open;

            // Recorrem els drets del grup per mirar si en té algun dels demanats
            qDretsGrup.First;
            while not qDretsGrup.Eof do
            begin
                for Bucle := 0 to High(ListDrets) do
                begin
                    Dret := ListDrets[Bucle].vInteger;
                    // Només que trobem un dret (positiu) ja és vàlid.
                    if (Dret > 0) and (qDretsGrup.FieldByName('C_Dret').AsString = 'G'+IntToStr(Dret)) then Result := True;
                end;
                // Si en trobem un, no continuem buscant
                if Result then Break;

                qDretsGrup.Next;
            end;

            // Ara fem el mateix per mirar si en té algun dels que no ha de tenir
            if Result then
            begin
                qDretsGrup.First;
                while not qDretsGrup.Eof do
                begin
                    for Bucle := 0 to High(ListDrets) do
                    begin
                        Dret := ListDrets[Bucle].vInteger;
                        // Només que trobem un dret (negatiu) ja serà invàlid.
                        if (Dret < 0) and (qDretsGrup.FieldByName('C_Dret').AsString = 'G'+IntToStr(Abs(Dret))) then Result := False;
                    end;
                    // Si en trobem un, no continuem buscant
                    if not Result then Break;

                    qDretsGrup.Next;
                end;
            end;
        end;
    end;

    // Si no té dret fem el Raise si cal
    if FerRaise and not Result then FerError(Error1, True);
end;


Function  TeDretPresta(CodiPresta: String; ListDrets: Array of Const; FerRaise: Boolean=False): Boolean;
var
  Dret: Integer;
  Bucle: Integer;
  DretPositiu, DretNegatiu: Smallint;
begin

    Result := False;

    // NOU SISTEMA: -1: no hem passat cap dret positiu/negatiu
    //               0: no té cap dels drets positius/negatius
    //               1: té almenys un dels drets positius/negatius

    DretPositiu := -1;
    DretNegatiu := -1;

    with wData do
    begin
        qBuscaDretPresta.Close;
        qBuscaDretPresta.ParamByName('c_prestacio').AsString := CodiPresta;

        for Bucle := 0 to High(ListDrets) do
        begin
            Dret := ListDrets[Bucle].vInteger;

            // Només que trobem un dret positiu, ja és vàlid.
            if (Dret > 0) and (DretPositiu < 1) then
            begin
                qBuscaDretPresta.Close;
                qBuscaDretPresta.ParamByName('c_dret').AsString := 'P' + IntToStr(Dret);
                qBuscaDretPresta.Open;

                DretPositiu := qBuscaDretPresta.RecordCount;  // serà 0 o 1
            end

            // Només que trobem un dret negatiu, ja és invàlid.
            else if (Dret < 0) and (DretNegatiu < 1) then
            begin
                qBuscaDretPresta.Close;
                qBuscaDretPresta.ParamByName('c_dret').AsString := 'P' + IntToStr(Abs(Dret));
                qBuscaDretPresta.Open;

                DretNegatiu := qBuscaDretPresta.RecordCount;  // serà 0 o 1
            end;

            // si n'hem trobat un de cada, ja no cal seguir el bucle
            if (DretPositiu > 0) and (DretNegatiu > 0) then Break;
        end;

        // és ok si té algun dret positiu (o no n'hem passat cap) i no en té cap dels negatius (o no n'hem passat cap)
        Result := ((DretPositiu = -1) or (DretPositiu > 0))  and  (DretNegatiu <= 0);
    end;

    // Si no té dret fem el Raise si cal
    if FerRaise and not Result then FerError(Error30, True);
end;


Function TeDretMotiu(CodiMotiu: Smallint; ListDrets: Array of Const; FerRaise: Boolean=False): Boolean;
var
  Dret: Integer;
  Bucle: Integer;
  DretPositiu, DretNegatiu: Smallint;
begin

    Result := False;

    // NOU SISTEMA: -1: no hem passat cap dret positiu/negatiu
    //               0: no té cap dels drets positius/negatius
    //               1: té almenys un dels drets positius/negatius

    DretPositiu := -1;
    DretNegatiu := -1;

    with wData do
    begin
        qBuscaDretMotiu.Close;
        qBuscaDretMotiu.ParamByName('c_motiu').AsInteger := CodiMotiu;

        for Bucle := 0 to High(ListDrets) do
        begin
            Dret := ListDrets[Bucle].vInteger;

            // Només que trobem un dret positiu, ja és vàlid.
            if (Dret > 0) and (DretPositiu < 1) then
            begin
                qBuscaDretMotiu.Close;
                qBuscaDretMotiu.ParamByName('c_dret').AsString := 'X' + IntToStr(Dret);
                qBuscaDretMotiu.Open;

                DretPositiu := qBuscaDretMotiu.RecordCount;  // serà 0 o 1
            end

            // Només que trobem un dret negatiu, ja és invàlid.
            else if (Dret < 0) and (DretNegatiu < 1) then
            begin
                qBuscaDretMotiu.Close;
                qBuscaDretMotiu.ParamByName('c_dret').AsString := 'X' + IntToStr(Abs(Dret));
                qBuscaDretMotiu.Open;

                DretNegatiu := qBuscaDretMotiu.RecordCount;  // serà 0 o 1
            end;

            // si n'hem trobat un de cada, ja no cal seguir el bucle
            if (DretPositiu > 0) and (DretNegatiu > 0) then Break;
        end;

        // és ok si té algun dret positiu (o no n'hem passat cap) i no en té cap dels negatius (o no n'hem passat cap)
        Result := ((DretPositiu = -1) or (DretPositiu > 0))  and  (DretNegatiu <= 0);
    end;

    // Si no té dret fem el Raise si cal
    if FerRaise and not Result then FerError(Error47, True);
end;

Function  PrestaTeCodiCamps(CodiPresta: String; TipusCodi: String): Boolean;
begin
    Result := (0 < GutSelect('select count(*) from PRESTACODICAMPS P ' +
                             'join CODICAMPS C on C.TIPUSCODI = P.TIPUSCODI and C.C_CODI = P.C_CODI ' +
                             'where P.TIPUSCODI = "%s" and P.C_PRESTACIO = "%s" and C.ORDRE >= 0',
                             [TipusCodi, CodiPresta], False));   
end;

Function DescripcioPrestacio(CodiPresta: String;Resum: Boolean=True): String;
begin
    with wData.qPrestacio do
    begin
        Close;
        ParamByName('Codi').AsString := CodiPresta;
        Open;
        if FieldByName('C_PRESTACIO').AsString=CodiPresta
        then begin
            if Resum then Result := FieldByName('Resum').AsString
                     else Result := FieldByName('N_Prestacio').AsString;
        end
        else Result := '** ERROR EN PRESTACIO '+CodiPresta+' **';
        Close;
    end;
end;


Procedure FerError(Texte: String; FerRaise: Boolean=False);
begin
    if FerRaise then Raise HaleyException.Create(Texte)
                else Application.ShowException(Exception.Create(Texte));
end;


Procedure FerError(Texte: String; params: array of const;FerRaise: Boolean=False); Overload;
begin
    FerError(Format(Texte,Params),FerRaise);
end;


Function  DateServer: TDateTime;
begin
     with wData do
     begin
          QHora.Close;
          QHora.Open;
          Result := ExtractDate(QHora.FieldByName('Hora').AsDateTime);
          QHora.Close;
     end;
end;

Function  NowServer: TDateTime;
begin
     with wData do
     begin
         QHora.Close;
         QHora.Open;
         Result := QHora.FieldByName('Hora').AsDateTime;
         QHora.Close;
     end;
end;

Function  TimeServer: TDateTime;
begin
     with wData do
     begin
          QHora.Close;
          QHora.Open;
          Result := ExtractTime(QHora.FieldByName('Hora').AsDateTime);
          QHora.Close;
     end;
end;



procedure ConstruirRtf(UnMemo: TRichEdit; var UnBuffer: String; Head: Boolean;Convertir:Boolean; Mostra: Boolean = True); // InterconOrtesis: Afegeixo la variable 'mostra'
var
   Texto: String;
   Memoria : TMemoryStream;
   Bucle: Integer;
begin

     Memoria := TMemoryStream.Create;
     UnMemo.Visible := False;
     UnMemo.Lines.Clear;
     try
      Texto:='';
      if Convertir then
      begin
           For Bucle := 1 to Length(UnBuffer) do
           begin
                case UnBuffer[Bucle] of
                #10: Continue;
                #13: Texto:=Texto+'\par ';
                '\': Texto:=Texto+'\\';
                '{': Texto:=Texto+'\{';
                '}': Texto:=Texto+'\}';
                #16: Texto:=Texto+'\f2 4\f0 ';    // símbol webdings
                #4:  Texto:=Texto+'\f1 £\f0 ';    // símbol wingdings
                #17: Texto:=Texto+'\f1 Ø\f0';     // símbol wingdings (anotació publicació HC3) 
                #1:  Texto:=Texto+'\';
                else Texto:=Texto+UnBuffer[Bucle];
                end;
           end;
      end else Texto := UnBuffer;

      if Head then Texto := RtfBegin+Texto+RtfEnd;

      Memoria.Clear;
      Memoria.WriteBuffer(Pointer(Texto)^, Length(Texto));
      Memoria.Position:=0;
      UnMemo.Lines.LoadFromStream(Memoria);
     finally
     if Mostra then UnMemo.Visible := True;      // InterconOrtesis: Afegeixo la variable 'mostra'
     UnMemo.Refresh;
     Memoria.Free;
     end;
end;

procedure ConstruirRtf_(UnMemo: TRichEdit; var UnBuffer: String; Head: Boolean;Convertir:Boolean; Mostra: Boolean = True); // InterconOrtesis: Afegeixo la variable 'mostra'
var
   Texto: String;
   Memoria : TMemoryStream;
   Bucle: Integer;
begin

     Memoria := TMemoryStream.Create;
     UnMemo.Visible := False;
     UnMemo.Lines.Clear;
     try
      Texto:='';
      if Convertir then
      begin
           Bucle := 1;
           while Bucle <= Length(UnBuffer) do
           begin
                case UnBuffer[Bucle] of
                '#': begin
                       case UnBuffer[Bucle+1] of
                           '1': begin
                                  case unBuffer[Bucle+2] of
                                  ' ': Texto:=Texto+'\';
                                  '0': Continue;
                                  '1': Texto:=Texto+'\tab\lang1027 ';
                                  '3': Texto:=Texto+'\par ';
                                  '4': Texto := Texto + '\cf8';  // púrpura
                                  '5': Texto := Texto + '\cb1';  // background color clAqua  (no ho agafa !!!???)
                                  '6': Texto:=Texto+'\f2 4\f0 ';
                                  '7': Texto := Texto + '\cb15';  // background color clWhite (no ho agafa !!!???)
                                  '8': Texto := Texto + '\cf14';  // Fuchsia
                                  end;
                                  Bucle:=Bucle+1;
                                end;
                           '2': Texto := Texto + '\ul ';  // subratllat inici
                           '3': Texto := Texto + '\ul0 '; // subratllat final
                           '4': Texto := Texto + '\f1 £\f0 ';
                           '5': Texto := Texto + '\f3\fs20 ';
                           '6': Texto := Texto + '\b ';   // negreta inici
                           '7': Texto := Texto + '\b0 ';  // negreta final
                           '8': Texto := Texto + '\cf6';  // blau
                           '9': Texto := Texto + '\cf0';  // negre
                       end;
                       Bucle:=Bucle+1;
                     end;
                '\': Texto:=Texto+'\\';
                '{': Texto:=Texto+'\{';
                '}': Texto:=Texto+'\}';
                else Texto:=Texto+UnBuffer[Bucle];
                end;
                Bucle := Bucle+1;
           end;
      end else Texto := UnBuffer;

      if Head then Texto := RtfBegin+Texto+RtfEnd;

      Memoria.Clear;
      Memoria.WriteBuffer(Pointer(Texto)^, Length(Texto));
      Memoria.Position:=0;
      UnMemo.Lines.LoadFromStream(Memoria);
     finally
     if Mostra then UnMemo.Visible := True;
     UnMemo.Refresh;
     Memoria.Free;
     end;
end;

procedure ConstruirRtfQR(UnMemo: TQRRichText; var UnBuffer: String; Head: Boolean;Convertir:Boolean);
var
   Texto: String;
   Memoria : TMemoryStream;
   Bucle: Integer;
begin
   Memoria := TMemoryStream.Create;
   UnMemo.Visible := False;
   UnMemo.Lines.Clear;

   TRY
      Texto := '';
      if Convertir then
      begin
         For Bucle := 1 to Length(UnBuffer) do
         begin
            CASE UnBuffer[Bucle] OF
               '\': Texto := Texto + '\\';
               '{': Texto := Texto + '\{';
               '}': Texto := Texto + '\}';
                #1: Texto := Texto + '\';
                #2: Texto := Texto + '\ul ';          // underline               //vfo
                #3: Texto := Texto + '\ul0 ';         // underline end           //vfo
                #4: Texto := Texto + '\f1 £\f0 ';     // símbol wingdings (revisions?)
                #5: Texto := Texto + '\f3\fs20 ';
                #6: Texto := Texto + '\b ';           // bold                    //vfo
                #7: Texto := Texto + '\b0 ';          // bold end                //vfo
                #8: Texto := Texto + '\uld ';         // dotted underline        //bvg
               #10: Continue;
               #13: Texto := Texto + '\par ';
                #16: Texto := Texto + '\f2 4\f0 ';    // símbol webdings (revisions?)
               #17: Texto := Texto + '\li0 ';         // left indent a 0         //bvg
               #18: Texto := Texto + '\li400 ';       // left indent a 400       //bvg
               #19: Texto := Texto + '\li700 ';       // left indent a 700       //bvg
               #20: Texto := Texto + '\f0\fs16';      // Courier New             //vfo
               #21: Texto := Texto + '\f3\fs14';      // font petita             //vfo
               else Texto := Texto + UnBuffer[Bucle];
            END;
         end;
      end else Texto := UnBuffer;

      if Head then Texto := RtfBeginQR + Texto + RtfEnd;

      Memoria.Clear;
      Memoria.WriteBuffer(Pointer(Texto)^, Length(Texto));
      Memoria.Position:=0;
      UnMemo.Lines.LoadFromStream(Memoria);
   FINALLY
      UnMemo.Visible := True;
      UnMemo.Refresh;
      Memoria.Free;
   END;
end;



Function  FormatRtf(Line: String; Args: Array of const): String;
begin
     Result := Format(StringReplace(Line,'@@',#1,[rfReplaceAll]),Args);
end;

Function  RetornaRtf(UnMemo: TRichEdit; PlainText: Boolean=False): String;
var
      GuardaPlainText: Boolean;
      Memoria : TMemoryStream;
begin
     Result:= '';
     GuardaPlainText := UnMemo.PlainText;
     Memoria := TMemoryStream.Create;
     try
        UnMemo.PlainText := PlainText;
        UnMemo.Lines.SaveToStream(Memoria);
        Memoria.Position := 0;
        SetString(Result, nil, Memoria.Size);
        Memoria.ReadBuffer(Pointer(Result)^, Memoria.Size);
        // Si l'última línia no acaba en enter, l'afegim
        if PlainText and (Length(Result) > 2) and (CopyRight(Result,2) <> NLine) then Result := Result + NLine;
        // Que no hi hagi més de dos NLine seguits
        Result := Replace(NLine+NLine+NLine, NLine+NLine, Result);
     finally
      Memoria.Free;
      UnMemo.PlainText := GuardaPlainText;
     end;
end;


Function  RetornaRtfIntros(UnMemo: TRichEdit; PlainText: Boolean=False): String;
var
  GuardaPlainText: Boolean;
  Memoria : TMemoryStream;
begin
    Result:= '';
    GuardaPlainText := UnMemo.PlainText;
    Memoria := TMemoryStream.Create;
    try
       UnMemo.PlainText := PlainText;
       UnMemo.Lines.SaveToStream(Memoria);
       Memoria.Position:=0;
       SetString(Result, nil, Memoria.Size);
       Memoria.ReadBuffer(Pointer(Result)^, Memoria.Size);
       // Si l'última línia no acaba en enter, l'afegim
       if PlainText and (Length(Result) > 2) and (CopyRight(Result,2) <> NLine) then Result := Result + NLine;
       // Que no hi hagi més de 2 NLine seguits
       Result := Replace(NLine+NLine+NLine, NLine+NLine, Result);
    finally
     Memoria.Free;
     UnMemo.PlainText := GuardaPlainText;
    end;
end;


Function ComprovarForaHores(Dept: Integer; dhParam: TDateTime = 0): Boolean;
var
  y,m,d,h,n,s,ss: word;
  Dia: TDateTime;
  qAux: TQuery;
begin

    Result := False;

    // Per defecte: avui
    if (dhParam = 0) then Dia := NowServer
                     else Dia := dhParam;

    with wData do
    begin
      // Primer mirem si és festiu:
      QFestius.Close;
      QFestius.Open;
      QFestius.First;
      Result := qFestius.Locate('Data', ExtractDate(Dia), []);
      QFestius.Close;

      if Result then Exit;

      // Busquem els horaris segons el departament
      TRY
        qAux := TQuery.Create(wData);
        qAux.DatabaseName := 'interna';
        qAux.SQL.Text := Format('select * from HORARIS_FUNCIONS where FUNCIO = %d and DIA = %d', [Dept, DiaDeLaSemana(Dia)]);
        qAux.Open;

        // Si no trobem el dia, és que no és laborable => és fora d'hores
        if qAux.FieldByName('Dia').IsNull then Result := True
        // Altrament, mirem horari
        else begin
            DecodeTime(ExtractTime(Dia),h,n,s,ss);
            if (h < qAux.FieldByName('Hora_I').AsInteger) then Result := True
            else if (h = qAux.FieldByName('Hora_I').AsInteger) and (n < qAux.FieldByName('Min_I').AsInteger) then Result := True
            else if (h > qAux.FieldByName('Hora_F').AsInteger) then Result := True
            else if (h = qAux.FieldByName('Hora_F').AsInteger) and (n > qAux.FieldByName('Min_F').AsInteger) then Result := True;
        end;
      FINALLY
        qAux.Free;
      END;
    end;
end;


function EsFestiu(Dia: TDateTime): Boolean;
begin
    with wData do
    begin
        QFestius.Open;
        QFestius.First;
        Result := QFestius.Locate('Data', Dia, []);
        QFestius.Close;
    end;
end;


// Inclou els caps de setmana en els festius
function  NoEsLaborable(Dia: TDateTime): Boolean;
begin
    Result := (DiaDeLaSemana(Dia) in [6,7]);
    
    if not Result then with wData do
    begin
        QFestius.Open;
        QFestius.First;
        Result := QFestius.Locate('Data', Dia, []);
        QFestius.Close;
    end;
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


Function  NomFitxer(Historia: String; Data: TDateTime): String;
begin
    Result := Historia + '_' + FormatDateTime('dd-mm-yyyy', Data);
end;

Function  NomFitxerSol(Historia: String; Data: TDateTime; Motiu,Metge: String): String;
begin
    Result := Historia + '_' + FormatDateTime('dd-mm-yyyy', Data)+'_'+Motiu+'_'+Metge;
end;

Function  RutaNomInforme(path, prestacio, Historia: String; Tract: TTractament): String;
var
  Dir: String;
  passos: Integer;
  dataalta: TDate;
  tipus: String;
begin
    // Creem carpeta de rang d'històries si no existeix

    passos := Trunc(StrToInt(Historia) div 500);
    Dir := IntToStr(passos * 500) + '-' + IntToStr(((passos + 1) * 500) - 1);

    path := Trim(path);
    path := AddFinalSlashToPath(path);

    if not DirectoryExists(path + Dir) then CreateDir(path + Dir);

    // Busquem la data d'alta del tractament:
    if (Tract.Data_Alta = 0) then dataalta := GutSelect('select DATA_ALTA from TRACTAMENTS where C_TRACTAMENT = %d', [Tract.C_Tractament])
                             else dataalta := Tract.Data_Alta;

    // Maig 2023: Parametritzaicó a Informes_Tipus segons drets de prestació i motiu (excepte per informes ràpids)
    // Desembre 2023: hem tret els informes F2T i F2A
    tipus := GutSelect('select T.C_TIPUS ' +
                            'from INFORMES_TIPUS T ' +
                            'left   outer join DRETSPRESTA P on T.C_DRETPRESTA = P.C_DRET ' +
                            'left   outer join DRETSMOTIU M on T.C_DRETMOTIU = M.C_DRET ' +
                            'where (T.C_DRETMOTIU is not null or T.C_DRETPRESTA is not null) ' +
                            'and   (P.C_PRESTACIO = "%s" or M.C_MOTIU = %d)',
                            [prestacio, Tract.C_Motiu],
                            False);

    if (tipus = '') then tipus := '---';

    // Confeccionem el nom del fitxer afegint la "nova" carpeta a la ruta, més el nom del fitxer en sí.
    // Si no hi ha data d'alta, no la posem al nom

    Historia := FormatFloat('00000', StrToInt(Historia));

    if (prestacio = 'F2A')
    or (prestacio = 'F2T') then Result := path + Dir + '\' + Historia + tipus + FormatDateTime('yyyymmdd', dataalta) + '*.*'
    else if (dataalta = 0) then Result := path + Dir + '\' + Historia + tipus + '.doc'
                           else Result := path + Dir + '\' + Historia + tipus + FormatDateTime('yyyymmdd', dataalta) + '.doc';
end;

Function RutaInfSol(path, motiu, metge, Historia: String; Data: TDateTime): String;
var
  Dir: String;
  passos: Integer;
begin
    // Creem carpeta de rang d'històries si no existeix

    passos := Trunc(StrToInt(Historia) div 500);
    Dir := IntToStr(passos * 500) + '-' + IntToStr(((passos + 1) * 500) - 1);

    path := Trim(path);
    path := AddFinalSlashToPath(path);

    if not DirectoryExists(path + Dir) then CreateDir(path + Dir);

    // Confeccionem el nom del fitxer afegint la "nova" carpeta a la ruta, més el nom del fitxer en sí.
    // Si no hi ha data d'alta, no la posem al nom

    Historia := FormatFloat('00000', StrToInt(Historia));

    if (data = 0) then Result := path + Dir + '\' + Historia + motiu + metge + '.rtf'
                  else Result := path + Dir + '\' + Historia + motiu + FormatDateTime('yyyymmdd', data) + metge +'.rtf';
end;

Function BuscaInforme(Informe: String; Idioma: Integer): String;
begin
     with wData.qInfCabe do
     begin
          Close;
          ParamByName('C_Informe').AsString := Informe;
          ParamByName('C_Idioma').AsInteger:= Idioma;
          Open;
          Result := FieldByName('Texte').AsString;
     end;
end;


Function CheckDadesFac(DadesF: TDadesFac):Boolean;
var
   Conta: Integer;
begin
     Result := False;

     // Mirem quins camps son obligats a omplir.
     // Lo mateix passa amb un client que no tingui delegacions.
     // El centre fac es obligat
     if EsVuit(DadesF.C_CentreFac) then Exit;


     // Si un centre de facturacio no te assignats clients, no obliguem
     Conta := SelectSqlFmt( wData.Gdb.DataBaseName,
                            'SELECT COUNT(*) FROM CLIENTS WHERE C_CENTREFAC = "%s" ',
                            [DadesF.C_CentreFac]);
     if (Conta=0) and (EsPle(DadesF.C_Client)) then Exit;

     if (Conta>0) and (EsVuit(DadesF.C_Client)) then Exit;

     // Comprovem que el existeixi el cf i el client.
     if EsPle(DadesF.C_Client) then
     begin
          Conta := SelectSqlFmt( wData.Gdb.DataBaseName,
                            'SELECT COUNT(*) FROM CLIENTS WHERE C_CENTREFAC = "%s" AND C_CLIENT = "%s"' ,
                            [DadesF.C_CentreFac, DadesF.C_Client]);
          if Conta=0 then Exit;

          // Commprovem les dades de delegacio.
          // Si te client, segur que te delegacio.
          if EsVuit(DadesF.C_Delegacio) then Exit;

          Conta := SelectSqlFmt( wData.Gdb.DataBaseName,
                            'SELECT COUNT(*) FROM DELEGACIONS WHERE C_CENTREFAC = "%s" AND C_CLIENT = "%s" AND C_DELEGACIO = "%s"' ,
                            [DadesF.C_CentreFac, DadesF.C_Client, DadesF.C_Delegacio]);
          if Conta=0 then Exit;
     end;

     if (EsVuit(DadesF.C_Client)) and (EsPle(DadesF.C_Delegacio)) then Exit;

     Result := True;


     // @ Faltaria comprovar si el permis caduca

end;

//------------------------- IBX

Function  GutSelect(Sentencias: String; const Args: array of const; CommitRet: Boolean=True): Variant;
begin
     Result := Funciones.SelectIBSQLFmt(wData.IBGuttmann, Sentencias, Args);
     if CommitRet then TRY wData.IBTransGutt.CommitRetaining; EXCEPT END;
end;


Function GutGen_ID(GeneratorName: String; Increment: Integer = 1): Integer;
begin
    Result := GutSelect('select GEN_ID(%s, %s) from RDB$GENERATORS where RDB$GENERATOR_NAME = "%s"',
                        [UpperCase(GeneratorName),
                         IntToStr(Increment),
                         UpperCase(GeneratorName)]
                        False);   // farà el commit del GEN_ID igualment, pq es fa automàtic, però així controlem la resta
end;


Procedure GutExecute(Sentencia: String; const Args: array of const; CommitRet: Boolean=True);
var
  Q: TIBSQL;
begin
    Q := TIBSQL.Create(Application);

    TRY
      if (not wData.IBGuttmann.Connected) then
      begin
          wData.IBGuttmann.Connected := True;
          wData.IBTransGutt.Active := True;
      end;
      
      Q.Database := wData.IBGuttmann;
      Q.SQL.Text := Format(Sentencia, Args);
      Q.ExecQuery;

      // Per defecte, la funció fa el commit.
      // Si no es vol fer el commit fins al final d'una sèrie d'instruccions, s'ha de passar el paràmetre a "False"
      // i recordar fer un CommitRetaining al final de les instruccions. (i en cas d'Exception, s'ha de fer un RollbackRetaining)
      if CommitRet then wData.IBTransGutt.CommitRetaining;
    FINALLY
      Q.Free;
    END;     
end;

//------------------------- IBX    (FI)

function ExcloureTractamentsActius(Historia: String; Excloure: Boolean = True):String;
var
  PRESTACIONSRECUPERADES,
  PRESTACIONSEXCLOSES : String;
begin

   Result := '';

   PRESTACIONSEXCLOSES    := 'Tractaments exclosos per defunció:' + Nline + Nline;
   PRESTACIONSRECUPERADES := 'Tractaments recuperats per error de defunció:' + Nline + Nline;

   with wData do
   Begin
       qTractamentsActius.Close;
       wData.qTractamentsActius.SQL[3] := Historia;
       if Excloure then
       begin
           wData.qTractamentsActius.SQL[4] := 'AND (T.DATA_ALTA IS NULL)';  // Si matxaco les que tenen DATA_ALTA>=TODAY després no sabré quina posar si tiren enrera
           Result := PRESTACIONSEXCLOSES;
       end
       else begin
           wData.qTractamentsActius.SQL[4] := 'AND T.C_DESTINACIO=6';
           Result := PRESTACIONSRECUPERADES;
       end;
       qTractamentsActius.Open;

       if ((qTractamentsActius.Eof) and (qTractamentsActius.Bof)) then Exit;

       qTractamentsActius.First;
       While not qTractamentsActius.Eof do
       begin
          if Excloure
          then GutExecute('Update Tractaments set DATA_ALTA = "TODAY", C_DESTINACIO=6 WHERE C_Tractament = %d',  // Posem DATA_ALTA=TODAY pq si no hauriem de revisar anotacions, assistències, ...
                 [qTractamentsActius.FieldbyName('C_Tractament').AsInteger])
          else GutExecute('Update Tractaments set DATA_ALTA = NULL, C_DESTINACIO=0 WHERE c_Tractament = %d',
                 [qTractamentsActius.FieldbyName('C_Tractament').AsInteger]);

          Result := Result + Format('Tractament: %s - Prestacio: %s - Data Ingres: %s - Metge: %s %s',
                   [qTractamentsActius.FieldbyName('C_Tractament').asString,
                    qTractamentsActius.FieldbyName('C_Prestacio').asString,
                    FormatDateTime('dd/mmm/yyyy',qTractamentsActius.FieldbyName('Data_Ingres').asDateTime),
                    qTractamentsActius.FieldbyName('C_Coordinador').asString+' '+qTractamentsActius.FieldbyName('Metge').asString,
                    Nline+Nline]);

          qTractamentsActius.Next;
       end;
       if (Result = PRESTACIONSEXCLOSES) or (Result = PRESTACIONSRECUPERADES) then Result := '';
   end;

end;

function ExclourePrestacionsActives(Historia: String; Excloure: Boolean = True):String;
var
  PRESTACIONSRECUPERADES,
  PRESTACIONSEXCLOSES : String;
begin

   Result := '';

   PRESTACIONSEXCLOSES    := 'Prestacions excloses per defunció:' + Nline + Nline;
   PRESTACIONSRECUPERADES := 'Prestacions recuperades per error de defunció:' + Nline + Nline;

   with wData do
   Begin
       qPrestaActives.Close;
       wData.qPrestaActives.SQL[3] := Historia;
       if Excloure then
       begin
           wData.qPrestaActives.SQL[7] := '"N"';
           wData.qPrestaActives.SQL[8] := '';
           Result := PRESTACIONSEXCLOSES;
       end
       else begin
           wData.qPrestaActives.SQL[7] := '"S"';
           wData.qPrestaActives.SQL[8] := 'AND MotiuExclusio = "--EXITUS--"';
           Result := PRESTACIONSRECUPERADES;
       end;

       qPrestaActives.Open;

       if ((qPrestaActives.Eof) and (qPrestaActives.Bof)) then Exit;

       qPrestaActives.First;
       While not qPrestaActives.Eof do
       begin

          if Excloure
          then GutExecute('Update Espera set Exclos = "S", MotiuExclusio = "--EXITUS--", DATA_EXCLUSIO = "%s" WHERE c_Espera = %s',
                 [FormatDateTime('dd.mm.yyyy',DateServer),qPrestaActives.FieldbyName('C_Espera').asString])
          else GutExecute('Update Espera set Exclos = "N", MotiuExclusio = NULL, DATA_EXCLUSIO=NULL WHERE c_Espera = %s and MotiuExclusio = "--EXITUS--"',
                 [qPrestaActives.FieldbyName('C_Espera').asString]);

          Result := Result + Format('Espera: %s - Prestacio: %s - Data PreIngres: %s - Metge: %s %s',
                   [qPrestaActives.FieldbyName('C_Espera').asString,
                    qPrestaActives.FieldbyName('C_Prestacio').asString,
                    FormatDateTime('dd/mmm/yyyy',qPrestaActives.FieldbyName('Data_Preingres').asDateTime),
                    qPrestaActives.FieldbyName('C_Coordinador').asString+' '+qPrestaActives.FieldbyName('Metge').asString,
                    Nline+Nline]);

          qPrestaActives.Next;
       end;
       if ((Result = PRESTACIONSEXCLOSES)
       or  (Result = PRESTACIONSRECUPERADES))
       then Result := '';
   end;

end;


function ExcloureAltresActives(Historia: String; Excloure: Boolean = True): String;
VAR
  ALTRESRECUPERADES: String;
  ALTRESEXCLOSES : String;
//  qInterconEsp,
  qConsultor,qBQuirurgicEsp, qExitusEsp: TQuery;
//  c_I,
  c_B: String;
  EstatNou: Integer;
begin

   Result := '';

   ALTRESEXCLOSES    := 'Interconsultes a CONSULTOR i intervencions quirúrgiques excloses per defuncio: ' + Nline + Nline;
                        //'Proves especials i intervencions quirúrgiques excloses per defuncio: ' + Nline + Nline;

   ALTRESRECUPERADES := 'Interconsultes a CONSULTOR i intervencions quirúrgiques recuperades per error de defuncio: ' + Nline + Nline;
                         //'Proves especials i intervencions quirúrgiques recuperades per error de defuncio: ' + Nline + Nline;

   if excloure then
   Begin
       Result := ALTRESEXCLOSES;
       // proves especials pendents
       {qInterconEsp := TQuery.Create(wdata);
       qInterconEsp.DataBaseName := wData.Gdb.DatabaseName;
       qInterconEsp.SQL.Text := Format('select c_historia, c_intercon, estat from intercon where c_historia = %s' +
                                       'and c_tipus = "PROVESP" and estat in(8,33) order by c_intercon',[Historia]);
       qInterconEsp.Open;
       c_I := '"I"';
       try
           qInterconEsp.First;
           while not qInterconEsp.Eof do
 	   begin
               GutExecute('insert into exitusesp (c_historia,tipusprova,c_interv,estat) values (%s,%s,%d,%d)',
                          [Historia,c_I,qInterconEsp.Fieldbyname('c_intercon').asinteger,qInterconEsp.Fieldbyname('estat').asinteger]);

               Result := Result + Format('Prova especial: %d',[qInterconEsp.Fieldbyname('c_intercon').asinteger])+Nline+Nline;
               qInterconEsp.Next;
   	   end;
       finally
           qInterconEsp.Free;
       end;  }

       // interconsultes a CONSULTOR
       qConsultor := TQuery.Create(wdata);
       qConsultor.DataBaseName := wData.Gdb.DatabaseName;
       qConsultor.SQL.Text := Format('select c_intercon from intercon where c_historia = %s' +
                                     'and c_tipus = "CONSULTOR" and estat in(2,30,50) order by c_intercon',[Historia]);
       qConsultor.Open;
       try
           qConsultor.First;
           while not qConsultor.Eof do
 	   begin
               GutExecute('update intercon set estat = 80, diag_definitiu = "EXITUS" where c_intercon= %d ',[qConsultor.Fieldbyname('c_intercon').asinteger]);
               Result := Result + Format('Interconsulta CONSULTOR: %d',[qConsultor.Fieldbyname('c_intercon').asinteger])+Nline+Nline;
               qConsultor.Next;
   	   end;
       finally
           qConsultor.Free;
       end;

       // intervencions quirúrgiques pendents
       qBQuirurgicEsp := TQuery.Create(wData);
       try
         qBQuirurgicEsp.DataBaseName := wData.Gdb.DatabaseName;
         qBQuirurgicEsp.SQL.Text := Format('select c_interv, estat, data_prev from bquirurgic where c_historia = %s and estat = 10 ' +
                                           'and data_prev >= "today" order by c_interv', [Historia]);
         qBQuirurgicEsp.Open;
         c_B := '"B"';
         qBQuirurgicEsp.First;
         while not qBQuirurgicEsp.Eof do
         begin
             GutExecute('update bquirurgic set estat = 40 where c_interv = %d', [qBQuirurgicEsp.FieldByName('c_interv').AsInteger]);

             GutExecute('insert into exitusesp (c_historia,tipusprova,c_interv,estat) values (%s,%s,%d,%d)',
                        [Historia, c_B, qBQuirurgicEsp.FieldByName('c_interv').AsInteger, qBQuirurgicEsp.FieldByName('estat').AsInteger]);

             Result := Result + Format('Intervenció: %d - Data prevista: %s',[qBQuirurgicEsp.FieldByName('c_interv').AsInteger,
                                       FormatDateTime('dd/mmm/yyyy', qBquirurgicEsp.FieldByName('Data_Prev').AsDateTime)]) + Nline + Nline;

             qBQuirurgicEsp.Next;
         end;
       finally
         qBQuirurgicEsp.Free;
       end;
   end
   
   else begin
       Result := ALTRESRECUPERADES;
       {qExitusEsp := TQuery.Create(wData);
       qExitusEsp.DataBaseName := wData.Gdb.DatabaseName;
       // proves actives - les esborrem de la taula EXITUESP.
       qExitusEsp.SQL.Text := Format('select * from exitusesp where c_historia = %s and estat in(8,10,33) order by tipusprova desc, c_interv',[historia]);
       qExitusEsp.Open;
       try
           qExitusEsp.First;
           while not qExitusEsp.Eof do
           begin
               if qExitusEsp.FieldByName('tipusprova').AsString = 'I' then
                   Result := Result + Format('Prova especial: %d',[qExitusEsp.Fieldbyname('c_interv').asinteger])+Nline+Nline
               else
                   Result := Result + Format('Intervenció: %d',[qExitusEsp.Fieldbyname('c_interv').asinteger])+Nline+Nline;
               qExitusEsp.Next;
           end;
           qExitusEsp.sql.Text := Format('delete from exitusesp where c_historia = %s and estat in(8,10,33)',[Historia]);
           qExitusEsp.ExecSQL;
       finally
           qExitusEsp.Free;
       end;}

       // interconsultes a CONSULTOR
       qConsultor := TQuery.Create(wdata);
       qConsultor.DataBaseName := wData.Gdb.DatabaseName;
       qConsultor.SQL.Text := Format('select c_intercon, data1, data2, data_prova from intercon where c_historia = %s' +
                                     'and c_tipus = "CONSULTOR" and estat = 80 and diag_definitiu = "EXITUS"',[Historia]);
       qConsultor.Open;
       try
           qConsultor.First;
           while not qConsultor.Eof do
 	   begin
               if      not qConsultor.FieldByName('data2'     ).IsNull then EstatNou := 50
               else if not qConsultor.FieldByName('data_prova').IsNull then EstatNou := 30
                                                                       else EstatNou := 2;

               GutExecute('update intercon set estat = %d, diag_definitiu = null where c_intercon= %d ',[EstatNou, qConsultor.Fieldbyname('c_intercon').asinteger]);
               Result := Result + Format('Interconsulta CONSULTOR: %d',[qConsultor.Fieldbyname('c_intercon').asinteger])+Nline+Nline;
               qConsultor.Next;
   	   end;
       finally
           qConsultor.Free;
       end;

       // proves anul·lades - es comuniquen a les Secres mèdiques per a que les activin de nou fent OK.
       qExitusEsp := TQuery.Create(wData);
       qExitusEsp.DataBaseName := wData.Gdb.DatabaseName;                           //and estat in(40,82) <- ho trec
       try
         qExitusEsp.SQL.Text := Format('select * from exitusesp where c_historia = %s order by tipusprova desc, c_interv', [historia]);
         qExitusEsp.Open;
         qExitusEsp.First;
         while not qExitusEsp.Eof do
         begin
             if qExitusEsp.FieldByName('tipusprova').AsString = 'I' then
             begin
                 Result := Result + Format('Prova especial: %d', [qExitusEsp.FieldByName('c_interv').AsInteger]) + Nline + Nline;
             end
             else begin
                 GutExecute('update bquirurgic set estat = 10 where c_interv = %d', [qExitusEsp.FieldByName('c_interv').AsInteger]);
                 GutExecute('delete from exitusesp where c_interv = %d', [qExitusEsp.FieldByName('c_interv').AsInteger]);
                 Result := Result + Format('Intervenció: %d', [qExitusEsp.FieldByName('c_interv').AsInteger]) + Nline + Nline;
             end;
             qExitusEsp.Next;
         end;
       finally
         qExitusEsp.Free;
       end;
   end;

   if ((Result = ALTRESEXCLOSES) or (Result = ALTRESRECUPERADES)) then Result := '';

end;


Function FinalitzarProcesActiu(Historia: String; Finalitzar: Boolean = True):String;
var
  PROCESFINALITZAT, PROCESRECUPERAT: String;
  Afegeix: String;
begin
    Result := '';

    PROCESFINALITZAT := 'Procés finalitzat per defunció:' + Nline + Nline;
    PROCESRECUPERAT  := 'Procés recuperat per error de defunció:' + Nline + Nline;

    with wData do
    begin
        qProcesActiu.Close;
        qProcesActiu.SQL[5] := Historia;
        qProcesActiu.Open;
        qProcesActiu.Last;  // ens situem a l'últim procés de la hístòria

        Afegeix := Format('Tractament: %s - Prestació: %s - Data ingrés: %s - Metge: %s - Procés: %s %s ',
                          [qProcesActiu.FieldByName('C_TRACTAMENT').AsString,
                           qProcesActiu.FieldByName('C_PRESTACIO').AsString,
                           FormatDateTime('dd/mm/yyyy', qProcesActiu.FieldByName('DATA_INGRES').AsDateTime),
                           qProcesActiu.FieldByName('C_COORDINADOR').AsString + ' ' + qProcesActiu.FieldByName('METGE').AsString,
                           qProcesActiu.FieldByName('C_PROCES').AsString,
                           NLine + NLine]);

        // si l'hem de finalitzar (no està finalitzat i és exitus):
        if Finalitzar then
        begin
            if (qProcesActiu.FieldByName('FI_PROCES').AsString = 'N') then
            begin
                GutExecute('update TRACTAMENTS ' +
                           'set FI_PROCES = "S", METGE_PROCES = "ADMIS" ' +
                           'where C_TRACTAMENT = %s',
                           [qProcesActiu.FieldByName('C_TRACTAMENT').AsString]);
                Result := PROCESFINALITZAT + Afegeix;
            end;
        end
        // si l'hem de recuperar: ("ADMIS" havia finalitzat el procés i no és exitus):
        else begin
            if (qProcesActiu.FieldByName('FI_PROCES').AsString = 'S') and (qProcesActiu.FieldByName('METGE_PROCES').AsString = 'ADMIS') then
            begin
                GutExecute('update TRACTAMENTS ' +
                           'set FI_PROCES = "N" ' +
                           'where C_TRACTAMENT = %s',
                           [qProcesActiu.FieldByName('C_TRACTAMENT').AsString]);
                Result := PROCESRECUPERAT + Afegeix;
            end;
        end;
    end;
end;



procedure ClearNCB(aNCB: TNCB);
var
   Bucle: Integer;
begin
     with aNCB do
     begin
     ncb_command:= #0;
     ncb_retcode:= #0;
     ncb_lsn:= #0;
     ncb_num:= #0;
     ncb_buffer:= #0;
     ncb_length:= 0;
     ncb_rto:= #0;
     ncb_sto:= #0;
     ncb_lana_num:= #0;
     ncb_cmd_cplt:= #0;
     ncb_event:= 0;
     For Bucle:=0 to 9 do ncb_reserve[Bucle]:=  #0;
     For Bucle:=0 to NCBNAMSZ - 1 do ncb_callname[Bucle]:=  #0;
     For Bucle:=0 to NCBNAMSZ - 1 do ncb_name[Bucle]:=  #0;
     end;
end;

procedure ClearAdapterStatus(aAdapterStatus:TAdapterStatus);
var
   Bucle: Integer;
begin
     with aAdapterStatus do
     begin
          For Bucle:=0 to 5 do adapter_address[Bucle] := #0;
          rev_major:= #0;
          reserved0:= #0;
          adapter_type:= #0;
          rev_minor:= #0;
          duration:= 0;
          frmr_recv:= 0;
          frmr_xmit:= 0;
          iframe_recv_err:= 0;
          xmit_aborts:= 0;
          xmit_success:= 0;
          recv_success:= 0;
          iframe_xmit_err:= 0;
          recv_buff_unavail:= 0;
          t1_timeouts:= 0;
          ti_timeouts:= 0;
          reserved1:= 0;
          free_ncbs:= 0;
          max_cfg_ncbs:= 0;
          max_ncbs:= 0;
          xmit_buf_unavail:= 0;
          max_dgram_size:= 0;
          pending_sess:= 0;
          max_cfg_sess:= 0;
          max_sess:= 0;
          max_sess_pkt_size:= 0;
          name_count:= 0;
     end;
end;


function GetMACAddress: string;
var
 AdapterList: TLanaEnum;
 NCB: TNCB;
begin
 ClearNCB(NCB);
 NCB.ncb_command := Char(NCBENUM);
 NCB.ncb_buffer := @AdapterList;
 NCB.ncb_length := SizeOf(AdapterList);
 Netbios(@NCB);
 if Byte(AdapterList.length) > 0 then
   Result := utili16.GetAdapterInfo(AdapterList.lana[0])
 else
   Result := 'mac not found';
end;


procedure TwData.ProjectePintaAllConsultas(aDic: TDic; var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Query: TQuery);
begin

   if aDic.grupo = 1 then
   begin

     if ((Query.FindField('C_Estat') <> nil) and (Query.FieldbyName('C_Estat').asString = 'B'))
     then ColorBrush := clRed;

     if gdSelected in State then
     begin
       ColorBrush := clNavy;
       ColorFont := clYellow;
     end;

   end;

end;

function TwData.GetRutaDelGdbConnectat: String;
var
   DbParams: TStringList;
begin
        DbParams := TStringList.Create;
        try
         Session.GetAliasParams(Gdb.DatabaseName,DbParams);
         Result := DbParams.Values['server name'];
        finally
         DbParams.Free;
        end;
end;


// Funció que busca les descripcions del codi ICD introduït
function N_ICD(C_ICD: String; maxlong: Integer=40): TDesc_ICD;
var
  nn: TDesc_ICD;
  qq: TQuery;
begin
    qq := TQuery.Create(Application);
    TRY
      qq.DatabaseName := 'interna';
      qq.SQL.Text := Format('select N_ICD, N_GUTTMANN, R_ICD, E_ICD from CODIICD where C_ICD = "%s"', [C_ICD]);
      qq.Open;

      nn[1] := qq.FieldByName('N_ICD').AsString;

      // si n_guttmann > 0
      if      (Length(qq.FieldByName('N_GUTTMANN').AsString) > 0)
      then nn[2] := qq.FieldByName('N_GUTTMANN').AsString
      // si n_icd <= maxlong
      else if (Length(qq.FieldByName('N_ICD').AsString) <= maxlong)
      then nn[2] := qq.FieldByName('N_ICD').AsString
      // si resum <= maxlong
      else if (Length(qq.FieldByName('R_ICD').AsString) <= maxlong)
      then nn[2] := qq.FieldByName('R_ICD').AsString

      // altrament trunquem resum
      else nn[2] := CopyLeft(qq.FieldByName('R_ICD').AsString, maxlong);

      qq.Close;
    FINALLY
      qq.Free;
    END;
    Result := nn;
end;

// BLOQUEJOS (CONFIGBLOQ)

function MiraBloqueig(que: String; JoTambeEmBloquejo: Boolean=False): String;
var
  pcbloqueja: String;
begin
    Result := '';

    pcbloqueja := GutSelect('select UBICACIO from CONFIGBLOQ where CAMP = "%s"', [que]);

    if JoTambeEmBloquejo
    or ((pcbloqueja <> '') and (pcbloqueja <> wData.ID_COMPUTER))
    then Result := pcbloqueja;
end;

// Nou sistema

function BloquejaCfg(que: String; JoTambeEmBloquejo: String = ''): Boolean;
var
  pcbloqueja: String;
begin
    // Mirem bloqueig
    pcbloqueja := GutSelect('select UBICACIO from CONFIGBLOQ where CAMP = "%s"', [que]);

    // Si està bloquejat
    if (pcbloqueja <> '') then
    begin
        // Si el bloqueig és des d'un altre PC, donem error
        if (pcbloqueja <> wData.ID_COMPUTER) then
        begin
            ShowMessage(Format('%s BLOQUEJAT a l''ordinador "%s" ' + NLine + NLine + 'TORNEU-HO A INTENTAR MÉS TARD. ',
                               [que, pcbloqueja]));
            Result := False;
            Exit;
        end

        // Si el bloqueig és des del mateix PC i s'autobloqueja, també avisem:
        else if (JoTambeEmBloquejo <> '') then
        begin
            ShowMessage(Format('Teniu un %s en curs. ' + NLine +
                               'Comproveu les finestres minimitzades!',
                               [JoTambeEmBloquejo]));
            Application.MainForm.WindowState := wsNormal;
            Result := False;
            Exit;
        end;
    end;

    // Si arribem aquí és que no hi ha bloqueig (o aquest és des del propi PC i no s'autobloqueja)
    Result := True;

    // Bloquegem (o rebloquegem)
    TRY
      if (0 = GutSelect('select Count(*) from CONFIGBLOQ where CAMP = "%s"', [que]))
      then GutExecute('insert into CONFIGBLOQ (CAMP, ESTAT, UBICACIO) values ("%s", 1, "%s")', [que, wdata.id_computer])
      else GutExecute('update CONFIGBLOQ set ESTAT = 1, UBICACIO = "%s" where CAMP = "%s"', [wData.ID_Computer, que]);
    EXCEPT
      on e: Exception do
      begin
          // Si no podem, donem error
          Result := False;
          ShowMessage('ERROR DE BLOQUEIG. ' + NLine +
                      'ESPEREU UNS SEGONS I TORNEU-HO A INTENTAR. ' + NLine +
                      e.Message);
      end;
    END;
end;


procedure DesbloquejaCfg(que: String; ID_Avis: Integer=0);
begin
    GutExecute('update CONFIGBLOQ set ESTAT = 0, UBICACIO = NULL where CAMP = "%s"', [que]);

    // Generem un avís per correu a bvidal per controlar alguns desbloquejos:
    if (ID_Avis > 0) then GutExecute('insert into AVISOS_CORREU (ID, ID_AVIS, DATA_GENERAT, ASSUMPTE, COS) ' +
                                     'values (Gen_id(G_AVISOSCORREU,1), %d, "NOW", "Desbloqueig ConfigBloq", "%s")',
                                     [ID_Avis,
                                      que + #10 + 'Login: ' + wData.ID_LOGIN + #10 + 'PC: ' + wData.ID_COMPUTER + #10 + 'Usuari: ' + wData.UsuariActiu.Codi]);
end;


// BLOQUEJOS SOBRE HISTÒRIES (BLOQUEJA_ACC)

function BloquejaAccNHC(NHC: Integer; Que: String; NomID: String; ID: Integer; Qui: String; ID_Avis: Integer=0; MostraError: Boolean=True): Boolean;
var
  Assumpte: String;
begin
  with wData do
  begin
    qBloqueigAcc.Close;
    qBloqueigAcc.ParamByName('que'       ).AsString  := Que;
    qBloqueigAcc.ParamByName('c_historia').AsInteger := NHC;
    qBloqueigAcc.ParamByName('nomid'     ).AsString  := NomID;
    qBloqueigAcc.ParamByName('id'        ).AsInteger := ID;

    qBloqueigAcc.Open;
    Result := (qBloqueigAcc.RecordCount = 0);  // no està bloquejada

    // Si no hi ha bloqueig, intentem bloquejar
    if Result then
    begin
        TRY
          GutExecute('insert into BLOQUEIG_ACC (QUE, C_HISTORIA, NOMID, ID, DATA, C_USUARI, NOMPC) ' +
                     'values ("%s", %d, "%s", %d, "NOW", "%s", "%s")',
                     [Que, NHC, NomID, ID, Qui, ID_COMPUTER]);
        EXCEPT
          on e: Exception do
          begin
            // Si no podem, donem error
            Result := False;
            if MostraError then ShowMessage('ERROR DE BLOQUEIG. ' + NLine +
                                            'ESPEREU UNS SEGONS I TORNEU-HO A INTENTAR. ' + NLine +
                                            'SI JA HO HEU REINTENTAT, REPORTEU EL SEGÜENT ERROR A SISTEMES D''INFORMACIÓ: ' + NLine +
                                            e.Message);
          end;
        END;
    end

    // Si el bloqueig és des del mateix PC...
    else if (qBloqueigAcc.FieldByName('NOMPC').AsString = ID_COMPUTER) then
    begin
        {$IFDEF CURS}
        // Si són Ordres Mèdiques, i no volen recuperar-les, eliminem les dades temporals
        if (Que = 'OM') then
        begin
            if not AvisoSN('Ordres mèdiques bloquejades des d''aquest mateix ordinador. ' + NLine +
                           'Voleu recuperar les dades que no es van gravar?')
            then begin
                GutExecute('delete from OM_TMP        where %s = %d', [NomID, ID]);
                GutExecute('delete from OMEPILINK_TMP where %s = %d', [NomID, ID]);
                GutExecute('delete from OMEPI_TMP     where %s = %d', [NomID, ID]);
                GutExecute('delete from OMINF_TMP     where %s = %d', [NomID, ID]);
            end
            else FormOM.desbloquejant := True;
        end;
        {$ENDIF}

        // Registrem desbloqueig si cal
        if (ID_Avis > 0) then
        begin
            Assumpte := GutSelect('select AVIS from AVISOS where ID = %d', [ID_Avis]);

            GutExecute('insert into AVISOS_CORREU (ID, ID_AVIS, DATA_GENERAT, ASSUMPTE, COS) ' +
                       'values (Gen_id(G_AVISOSCORREU,1), %d, "NOW", "%s", "%s")',
                       [ID_Avis,
                        Assumpte,
                        'Funció BloquejaAccNHC - Rebloqueig ' + Que +  #10 +
                        'NHC: ' + IntTostr(NHC) + #10 +
                        'Login: ' + wData.ID_LOGIN + #10 +
                        'PC: ' + wData.ID_COMPUTER + #10 +
                        'Usuari: ' + Qui]);
        end;

        // Rebloquegem
        TRY
          GutExecute('update BLOQUEIG_ACC set DATA = "%s", C_USUARI = "%s" ' +
                     'where QUE = "%s" and C_HISTORIA = %d and NOMID = "%s" and ID = %d',
                     [FormatDateTime('dd.mm.yyyy hh:nn:ss', NowServer),
                      Qui,
                      Que,
                      NHC,
                      NomID,
                      ID]);
          Result := True;
        EXCEPT
          on e: Exception do
          begin
            if MostraError then ShowMessage('ERROR DE BLOQUEIG. ' + NLine +
                                            'ESPEREU UNS SEGONS I TORNEU-HO A INTENTAR. ' + NLine +
                                            e.Message);
            {$IFDEF CURS}
            FormOM.desbloquejant := False;
            {$ENDIF}
          end;
        END;
    end

    // Si el bloqueig és des d'un altre PC, donem error
    else if MostraError then ShowMessage(Format('%s per "%s" a l''ordinador "%s" ' + NLine + NLine + 'TORNEU-HO A INTENTAR MÉS TARD. ',
                                                [qBloqueigAcc.FieldByName('Avis').AsString,
                                                 qBloqueigAcc.FieldByName('C_Usuari').AsString,
                                                 qBloqueigAcc.FieldByName('NomPC').AsString]));
  end;
end;


procedure DesbloquejaAccNHC(NHC: Integer; Que: String; NomID: String; ID: Integer; PC: String=''; ID_Avis: Integer=0);
var
  Assumpte: String;
begin
    GutExecute('delete from BLOQUEIG_ACC       ' +
               'where QUE = "%s"               ' +
               'and C_HISTORIA = %d            ' +
               'and NOMID = "%s"               ' +
               'and ID = %d                    ' +
               'and (NOMPC = "%s" or "%s" = "")',
               [Que, NHC, NomID, ID, PC, PC]);

    {$IFDEF CURS}
    // Desbloqueig d'ordres mèdiques: eliminem dades temporals
    if (Que = 'OM') then
    begin
        GutExecute('delete from OM_TMP        where %s = %d', [NomID, ID]);
        GutExecute('delete from OMEPILINK_TMP where %s = %d', [NomID, ID]);
        GutExecute('delete from OMEPI_TMP     where %s = %d', [NomID, ID]);
        GutExecute('delete from OMINF_TMP     where %s = %d', [NomID, ID]);
    end;
    {$ENDIF}

    // Generem un avís per correu a bvidal per controlar alguns desbloquejos:
    if (ID_Avis > 0) then
    begin
        Assumpte := GutSelect('select AVIS from AVISOS where ID = %d', [ID_Avis]);

        GutExecute('insert into AVISOS_CORREU (ID, ID_AVIS, DATA_GENERAT, ASSUMPTE, COS) ' +
                   'values (Gen_id(G_AVISOSCORREU,1), %d, "NOW", "%s", "%s")',
                   [ID_Avis,
                    Assumpte,
                    'Funció DesbloquejaAccNHC - ' +  Que +  #10 +
                    'NHC: ' + IntTostr(NHC) + #10 +
                    'Login: ' + wData.ID_LOGIN + #10 +
                    'PC: ' + wData.ID_COMPUTER + #10 +
                    'Usuari: ' + wData.UsuariActiu.Codi]);
    end;
end;

procedure ParteInformatica(usuari, departament, ubicacio, motiu: String; prioritat: Integer; mostraerror: Boolean=False);
var
  sql: String;
  bd: TDatabase;
  qExec: TQuery;
begin
    bd :=  TDatabase.Create(Application);

    TRY
      with bd do
      begin
          LoginPrompt := False;
          AliasName := 'gdbInformatica';
          DatabaseName := 'InternaInformatica';
          Params.Add('USER_NAME=SYSDBA');
          Params.Add('PASSWORD=miope');
          Open;

          sql := Format('insert into SORTI2 (DATAINI, HORAINI, USUARI, DEPARTAMEN, PRIORIDAD, PLACA, NOMPC,      UBICACIO, ESTAT, MOTIU) ' +
                        'values             (   "%s",    "%s",   "%s",       "%s",        %d,  "%s", "AUTOMATIC",    "%s",   "N", :motiu) ',
                        [FormatDateTime('dd.mm.yyyy hh:nn:ss', NowServer),
                         FormatDateTime('hh:nn', NowServer),
                         usuari,
                         departament,
                         prioritat,
                         wData.ID_NIC,
                         ubicacio]);

          TRY
            qExec := TQuery.Create(Application);
            qExec.DatabaseName := 'InternaInformatica';
            qExec.Sql.Text := sql;
            qExec.ParamByName('motiu').DataType := ftBlob;
            qExec.ParamByName('motiu').Value := motiu;
            qExec.ExecSQL;
          EXCEPT
            on e: Exception do
            if mostraerror then FerError('Error en crear parte automàtic a Informàtica' + NLine + e.Message);
          END;
      end;
    FINALLY
      bd.Free;
      qExec.Free;
    END;
end;

function TwData.GetTokenGlpi : String;
var
 url, Headers, Response: String;
 StatusCode: Integer;
 JSONResposta: TlkJSONbase;
begin
  url := 'https://glpi.guttmann.com/apirest.php/initSession';  // GET

  // Fem la crida GET   // vferrer GBmdSEeGQllCca9UuhUCLB1i6IuJnB4g3QedxzPh
                        // nohemí  7p1hDH6xPAzdzuw3D4VmvxtnyIcs6A1SKAmYmNTu
  Headers := 'App-Token: GBmdSEeGQllCca9UuhUCLB1i6IuJnB4g3QedxzPh' + #13#10 +
             'Authorization: user_token GBmdSEeGQllCca9UuhUCLB1i6IuJnB4g3QedxzPh' + #13#10 +
             'Content-Type: application/json';

  Response := HttpGetWinHTTP(URL, Headers, StatusCode);

  if (StatusCode <> -1) and (StatusCode <> 200) then
    raise Exception.CreateFmt('Error %d a API GLPI - Get Token: %s', [StatusCode, Response]);

  TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
  EXCEPT
    ShowMessage('Error API GLPI - Get Token:' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
    Exit;
  END;

  Result := '';
  if Pos('err',Response) > 0 then Result := JSONResposta.Field['err'].Value
                             else if JSONResposta <> nil
                                  then Result := JSONResposta.Field['session_token'].Value;

end;


procedure TwData.CreaIncidenciaGlpi(session_token, ticket_name, ticket_content, ticket_priority: String);
var
 url, Headers, Response, JSONBody: String;
 StatusCode: Integer;
 JSONResposta: TlkJSONbase;
begin
    url := 'https://glpi.guttmann.com/apirest.php/Ticket/';

    JSONBody := '{  "input": {'+
                '    "name": "'+ ticket_name + '",'+
                '    "requesttypes_id": "1",'+
                '      "content": "'+ EscapeJson(ticket_content) +'",'+
                '      "priority": "'+ ticket_priority +'"'+
                '    }'+
                '}';

    Headers := 'App-Token: TXCDJupJYd0ekBiFajcio7gV0ceTfyHgwKeWYcrA' + #13#10 +
               'Session-Token: ' + session_token + #13#10;

    // Fem la crida POST
    Response := HttpPostJsonWinHTTP(URL, UTF8Encode(JSONBody), StatusCode, Headers);

    if (StatusCode <> -1) and (StatusCode <> 200) then
      raise Exception.CreateFmt('Error %d a obtenir Token: %s', [StatusCode, Response]);

    TRY JSONResposta := TlkJSONobject(TlkJSON.ParseText(Response));
    EXCEPT
      ShowMessage('Error crida API "ticket":' + NLine + 'No es pot formatar el missatge de sortida (JSON).');
      Exit;
    END;

    if Pos('message',Response)=0 then FerError('No s''ha creat el GLPI de forma automàtica. Error: '+NLine+Response, True);
end;

function TwData.EscapeJSON(const S: string): string;
begin
  Result := S;

  Result := StringReplace(Result, 'à', 'a', [rfReplaceAll]);
  Result := StringReplace(Result, 'è', 'e', [rfReplaceAll]);
  Result := StringReplace(Result, 'é', 'e', [rfReplaceAll]);
  Result := StringReplace(Result, 'í', 'i', [rfReplaceAll]);
  Result := StringReplace(Result, 'ï', 'i', [rfReplaceAll]);  
  Result := StringReplace(Result, 'ò', 'o', [rfReplaceAll]);
  Result := StringReplace(Result, 'ó', 'o', [rfReplaceAll]);
  Result := StringReplace(Result, 'ú', 'u', [rfReplaceAll]);
  Result := StringReplace(Result, 'ü', 'u', [rfReplaceAll]);

  Result := StringReplace(Result, '''', ' ', [rfReplaceAll]);
  Result := StringReplace(Result, ':', ' ', [rfReplaceAll]);

  Result := StringReplace(Result, '\', '\\', [rfReplaceAll]);
  Result := StringReplace(Result, '"', '\"', [rfReplaceAll]);

  Result := StringReplace(Result, #13#10, '\r\n', [rfReplaceAll]);
  Result := StringReplace(Result, #13, '\r', [rfReplaceAll]);
  Result := StringReplace(Result, #10, '\n', [rfReplaceAll]);
end;

procedure TwData.IBGuttmannBeforeConnect(Sender: TObject);
var
  fileAliesIB: TIniFile;
begin
    TRY
      fileAliesIB := TIniFile.Create(rutaAliesIB);
      TRY     IBGuttmann.DatabaseName := fileAliesIB.ReadString(Alias, 'RutaGuttmann', '');
      FINALLY fileAliesIB.Free;
      END;
    EXCEPT
      on e: Exception do
      begin
          ShowMessage(Format('No s''ha pogut identificar la ruta de la base de dades (IBX) ' + NLine +
                             'de l''entorn de treball corresponent (%s).' + NLine +
                             e.Message, [Alias]));
          Abort;
      end;
    END
end;

end.


{
=====================================
NOT IN DIC
=====================================
AMICS
APORTA
ARTIC
TRESPAFAC
GERMEN
LOGCLIENTS
LOGDELEG
REHABIPACIENT
RX
VACUNAS
ANALITRESULT
V_FILIATS
V_FILIATS_VIUS
V_METGES_ACTUALS
T_APORTA_NEW
T_CLIENTS_LOGUPDATE
T_DELEGACIONS_LOGINSERT
T_DELEGACIONS_LOGUPDATE
T_DELEGACIONS_LOGDELETE
RESUM_ANALIT
RESUM_ANTIBIO
E_BASE
RXORDRECHECK
AMICS_GENERA_APORTA
AMICS_RESUM_ANUAL


Function  NuevoAlbaran(CentreFac, Serie:String):String;

Function NuevoAlbaran(CentreFac, Serie:String):String;
begin
   try
     wData.Gdb.StartTransaction;
     Result := SelectSQLfmt(wData.Projecte.DataBaseName,
                            'Select NALBA + 1 FROM CONTADORESDOC WHERE C_CENTREFAC = "%s" AND Origen = "%s"',
                            [CentreFac, Serie]);

     GutExecute('UPDATE CONTADORESDOC SET NALBA = %s WHERE C_CENTREFAC = "%s" AND Origen = "%s"',
                  [Result, CentreFac, Serie]);

     wData.Gdb.Commit;
   except
     wData.Gdb.RollBack;
   end;
end;







