unit DataHola;

interface

uses
  Windows, Forms, Dialogs, SysUtils, Classes, ImgList, Controls, NB30, Diccionari, DB, DBTables, ComCtrls, quickrpt, Qrctrls,
  IBDatabase, Graphics;

const
  Error1  = ' * *  USUARI NO AUTORITZAT * * ';
  Error3  = ' * *  ACCÉS NO AUTORITZAT  * * ';

  // Afegits aquests tags per pagina A4: \paperw11907\paperh16840
  RtfBegin =   '{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fnil\fcharset1 Courier New;}{\f1\froman\fprq2\fcharset2 Wingdings;}{\f2\froman\fprq2\fcharset2 Webdings;}}'+
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
    Area: String;
    NC: String;
    NomSencer: String;
    DNI: String;
  end;

  TwDataHola = class(TDataModule)
    baseHola: TDatabase;
    ProjecteHola: TDicProjecto;
    baseGut: TDatabase;
    ProjecteGut: TDicProjecto;
    Images: TImageList;
    QDretsAcces: TQuery;
    QParametres: TQuery;
    QHora: TQuery;
    QDretsMetge: TQuery;
    QMetges: TQuery;
    qMetgesExtra: TQuery;
    IBbaseHOLA: TIBDatabase;
    IBTrans: TIBTransaction;
    IBbaseGut: TIBDatabase;
    IBTrans2: TIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
    ID_LOGIN: String;
    ID_NIC: String;
    ID_COMPUTER: String;
    ID_REMOTE: String;
    ES_PROVA: Boolean;
    NO_ACCES: String;
    UsuariActiu: TMetge;
  end;

var
  wDataHola: TwDataHola;

  // Crida NIC.DLL per saber el Núm. Ethernet:
  procedure GetNicAddress (NIC : pchar); cdecl; external 'NIC.DLL';
  function  GetMACAddress: string;
  Function  GetUserName (Cadena: PChar): String;

  Procedure ClearMetge(var Metge:TMetge);
  Function  PreguntaMetge(ConExtra: Boolean=False): TMetge;
  Function  BuscaMetge(Codi: String;Extra:String=''): TMetge;
  Function  TeDretMetge(CodiMetge: String;ListDrets: Array Of Const; FerRaise: Boolean=False): Boolean;
  Function  TeDretAcces(ListDrets: Array Of Const; FerRaise: Boolean=False; MirarDretTotal: Boolean = True):Boolean;

  Procedure FerError(Texte: String; FerRaise: Boolean=False); Overload;
  Procedure FerError(Texte: String; params: array of const;FerRaise: Boolean=False); Overload;

  Function  HolaSelect(Sentencias: String; const Args: array of const): Variant;
  Procedure HolaExecute(Sentencias: String; const Args: array of const);
  Function  GutSelect(Sentencias: String; const Args: array of const): Variant;
  Procedure GutExecute(Sentencias: String; const Args: array of const);

  procedure ClearNCB(aNCB: TNCB);
  Function  PosarPunt(codi,tipus: string): string;
  Function  DateServer: TDateTime;
  Function  NowServer: TDateTime;
  function  DiaLlarg (idioma : string; data:TDateTime) : string;
  Procedure ConstruirRtf(UnMemo: TRichEdit; var UnBuffer: String; Head: Boolean;Convertir:Boolean; Mostra: Boolean = True);
  Procedure ConstruirRtfQR(UnMemo: TQRRichText; var UnBuffer: String; Head: Boolean; Convertir: Boolean);
  Function AvisoSN(aTexto: String; aTitulo: String = 'Avís'; aFlags: LongInt = mb_IconWarning + mb_YesNo): Boolean;

implementation

uses Funciones, Registry, utili16, FichaAccessindata6, HYDialogLista, HYWait;

{$R *.dfm}

procedure TwDataHola.DataModuleCreate(Sender: TObject);
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
   PreguntaProves: Boolean;
   LoginSinDominio: String;
begin

    ES_PROVA := False;
    PreguntaProves := False;
    R := TRegistry.Create;
    baseHola.Close;
    TRY baseGut.Close;
    EXCEPT END;
    baseHola.Params[1] := 'PASSWORD=miope';
    baseGut.Params[1] := 'PASSWORD=miope';

    TRY
      R.RootKey := HKEY_LOCAL_MACHINE;
      if R.OpenKeyReadOnly('\Software\HolaProves') then
      begin
        PreguntaProves := True;
        if AvisoSN('Treballar amb el GDB de proves?') then ES_PROVA := TRUE;
      end;

      // Si han dit "proves sí" o algun àlies apunta a proves, posem PROVES SÍ
      ES_PROVA := ES_PROVA or (UpperCase(baseHola.AliasName) <> 'HOLA') or (UpperCase(baseGut.AliasName) <> 'GUTTMANN')
                  or (UpperCase(IBbaseHola.DatabaseName) <> 'NTGUTTMANN7:E:\DADES\HOLA.GDB')
                  or (UpperCase(IBbaseGut.DatabaseName) <> 'NTGUTTMANN6:E:\DADES\GUTTMANN.GDB');

      // Si Es_Prova, farem apuntar tots els àlies a proves:
      if ES_PROVA then
      begin
          // però abans:
          // Si tenim el registre de proves, avisem que treballem en proves
          // altrament, no deixem continuar:
          if PreguntaProves then ShowMessage('ATENCIÓ, ESTEU TREBALLANT AMB PROVES!')
          else RAISE HaleyException.Create(' * * LA BASE DE DADES APUNTA A PROVES * * ' + #10#13 + #10#13 + #10#13 +
                                           ' * * AVISEU INFORMÀTICA! * * ');

          baseHola.Params.Add('SERVER NAME=' + R.ReadString('Gdb'));
          baseGut.Params.Add('SERVER NAME=' + R.ReadString('GdbCurs'));
      end;
    FINALLY
      R.Free;
    END;

    // si es diu de treballar en proves, canvio totes les DatabaseName a proves   27.4.2012
    if ES_PROVA then
    begin
        baseHola.AliasName := 'HOLADEV';
        baseGut.AliasName  := 'GUTTMANNDEV';
        IBbaseHola.DatabaseName := 'proves2:e:\dades\holadev.gdb';
        IBbaseGut.DatabaseName  := 'proves2:e:\dades\guttmanndev.gdb';
    end
    else begin
        baseHola.AliasName := 'HOLA';
        baseGut.AliasName  := 'GUTTMANN';
        IBbaseHola.DatabaseName := 'ntguttmann7:e:\dades\hola.gdb';
        IBbaseGut.DatabaseName  := 'ntguttmann6:e:\dades\guttmann.gdb';
    end;

    baseHola.Open;
    TRY baseGut.Open;
    EXCEPT END;

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

    StrCopy(LocalName,PChar(QParametres.FieldByName('UnitatRed').AsString));
    cCode := WNetGetUser(LocalName,UserName,MaxLen);
    if cCode=0
    then ID_LOGIN := UpperCase(GetUserName(UserName))
    else ID_LOGIN:='';

    // si no trovem el login via api, llavors el busquem via $Environment Varialbes.
    if Trim(ID_LOGIN)='' then
    begin
         getEnvironmentVariable(PChar('USERNAME'),UserName, MaxLen);
         ID_LOGIN := UpperCase(UserName);
    end;

    cCode := WNetGetConnection(LocalName,RemoteName,MaxLen);
    if cCode=0 then ID_REMOTE := String(RemoteName) else ID_REMOTE:= '**';

    Longi := 20;
    GetComputerName(PCName, Longi);
    ID_COMPUTER:= String(PCName);

    if Pos('HALEY',UpperCase(Id_Computer))<>0 then ES_PROVA := True;

// nou ini
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

{    if ID_LOGIN = ''
    then QDretsAcces.ParamByName('login').Clear
    else QDretsAcces.ParamByName('login').AsString := ID_LOGIN;}
// nou fin

    QDretsAcces.Open;

    NO_ACCES := QDretsAcces.FieldByName('C_ACCES').AsString;
end;


function GetMACAddress: string;
var
  AdapterList: TLanaEnum;
  NCB: TNCB;
begin
    ClearNCB(NCB);   //FillChar(NCB, SizeOf(NCB), 0);
    NCB.ncb_command := Char(NCBENUM);
    NCB.ncb_buffer := @AdapterList;
    NCB.ncb_length := SizeOf(AdapterList);
    Netbios(@NCB);
    if (Byte(AdapterList.length) > 0) then Result := utili16.GetAdapterInfo(AdapterList.lana[0])
                                      else Result := 'mac not found';
end;


function GetUserName (Cadena: PChar): String;
var
  contCadena, ContCN: integer;
  CN: PChar;
  Guardar: Boolean;
begin
    CN := 'CN=';
    Result := '';
    Guardar := False;
    ContCN := 0;
    for contCadena := 0 to length (cadena)  do
    begin
        if Guardar then
        begin
            if (cadena[contCadena] <> '.') then Result  := result + cadena[contCadena]
                                           else guardar := False;
        end;

        if (cadena[contCadena] = CN[contCN]) then
        begin
            if (contCN = length (CN)-1) then Guardar := True
                                        else Inc (contCN);
        end
        else contCN := 0;
    end;
end;


procedure ClearMetge(var Metge:TMetge);
begin
    with Metge do
    begin
        Codi         := '';
        Desc         := '';
        Grup         := '';
        Color        := 0;
        Especial     := '';
        DescGrup     := '';
        DescEspecial := '';
        COGNOMS      := '';
        TRACTE       := '';
        NC           := '';
        NomSencer    := '';
    end;
end;


function PreguntaMetge(ConExtra: Boolean=False): TMetge;
var
   Tmp: String;
   Extra: String;
begin
    ClearMetge(Result);

    // Obrim el form d'entrada de clau
    with TwFichaAccessindata.Create(Application) do
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

    if (Result.Codi <> '') then wDataHola.UsuariActiu := Result;  // perquè cada vegada que preguntin el metge, es modifiqui l'usuari actiu
end;


function BuscaMetge(Codi: String;Extra:String=''): TMetge;
begin
    // Sincronicem la taule de metges.
    ClearMetge(Result);
    if (Codi <> '') then
    begin
        if (Extra = '') then with wDataHola.QMetges do
        begin
            Close;
            ParamByName('Codi').AsString := Codi;
            Open;
            Result.Codi         := FieldByName('C_USUARI'  ).AsString;
            Result.Desc         := FieldByName('METGE'     ).AsString;
            Result.NomSencer    := FieldByName('NomSencer' ).AsString;
            Result.Grup         := FieldByName('C_GRUP'    ).AsString;
            Result.Color        := FieldByName('color'     ).AsInteger;
            Result.Especial     := FieldByName('C_ESPECIAL').AsString;
            Result.DescGrup     := FieldByName('N_Grup'    ).AsString;
            Result.DescEspecial := FieldByName('n_Especial' ).AsString;
            Result.COGNOMS      := FieldByName('COGNOM'    ).AsString;
            Result.TRACTE       := FieldByName('TRACTE'    ).AsString;
            Result.Area         := FieldByName('C_Area'    ).AsString;
            Result.Extra        := '';
            Result.Nc           := FieldByName('Nc'        ).AsString;
            Result.DNI          := FieldByName('dni'       ).AsString;
        end
        else with wDataHola.QMetgesExtra do
        begin
            Close;
            ParamByName('Codi').AsString := Codi;
            ParamByName('Extra').AsString := Extra;
            Open;
            Result.Codi         := FieldByName('C_USUARI'  ).AsString;
            Result.Desc         := FieldByName('METGE'     ).AsString;
            Result.Grup         := FieldByName('C_GRUP'    ).AsString;
            Result.Color        := FieldByName('color'     ).AsInteger;
            Result.Especial     := FieldByName('CEspe').AsString;
            Result.DescGrup     := FieldByName('Grup'      ).AsString;
            Result.DescEspecial := FieldByName('Especial'  ).AsString;
            Result.COGNOMS      := FieldByName('COGNOM'    ).AsString;
            Result.TRACTE       := '';
            Result.Extra        := Extra;
            Result.Nc           := '';
        end;
    end;
end;


function TeDretMetge(CodiMetge: String;ListDrets: Array Of Const; FerRaise: Boolean=False): Boolean;
var
  Dret: Integer;
  Bucle: Integer;
begin
    Result := False;
    if (CodiMetge = '') then CodiMetge := PreguntaMetge.Codi;
    if (CodiMetge <> '') then
    begin
        with wDataHola do
        begin
            if (CodiMetge <> QDretsMetge.ParamByName('Usuari').AsString) then
            begin
                 QDretsMetge.Close;
                 QDretsMetge.ParamByName('Usuari').AsString := CodiMetge;
                 QDretsMetge.Open;
            end;

            // Recorrem els drets de l'acces per mirar si els te
            if not qDretsMetge.Active then QDretsMetge.Open; 
            qDretsMetge.First;
            while not qDretsMetge.Eof do
            begin
                 for Bucle := 0 to High(ListDrets) do
                 begin
                      Dret := ListDrets[Bucle].vInteger;
                      // Simplement que trobem un dret (positiu) ja és vàlid.
                      if (Dret > 0) and (qDretsMetge.FieldByName('C_Dret').AsString = 'M'+IntToStr(Dret))
                      then Result := True;
                 end;
                 // Si ja n'hem trobat un, no continuem buscant
                 if Result then Break;
                 qDretsMetge.Next;
            end;

            // Ara fem lo mateix per mirar els que no te que tindre
            if Result then
            begin
                 qDretsMetge.First;
                 While not qDretsMetge.Eof do
                 begin
                      For Bucle := 0 to High(ListDrets) do
                      begin
                           Dret := ListDrets[Bucle].vInteger;
                           // Simplement que trobem un dret (negatiu) tot ja serà invàlid.
                           if (Dret < 0) and (qDretsMetge.FieldByName('C_Dret').AsString = 'M'+IntToStr(Abs(Dret)))
                           then Result := False;
                      end;
                      // Si ja n'hem trobat un, no continuem buscant
                      if not Result then Break;
                      qDretsMetge.Next;
                 end;
            end;
        end;
    end;

    // Si no te el dret fem el Raise.
    if FerRaise and not Result then FerError(Error1,True);
end;


function TeDretAcces(ListDrets: Array Of Const; FerRaise: Boolean=False; MirarDretTotal: Boolean = True): Boolean;
var
  Dret: Integer;
  Bucle: Integer;
begin
     Result := False;

     with wDataHola do
     begin
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
       then FerError(Error3,True);
     end;
end;


procedure FerError(Texte: String; FerRaise: Boolean=False);
begin
    if FerRaise then Raise HaleyException.Create(Texte)
    else Application.ShowException(Exception.Create(Texte));
end;


procedure FerError(Texte: String; params: array of const;FerRaise: Boolean=False); Overload;
begin
    FerError(Format(Texte,Params), FerRaise);
end;


function HolaSelect(Sentencias: String; const Args: array of const): Variant;
begin
    Result := Funciones.SelectSQLFmt(wDataHola.basehola.DataBaseName,Sentencias,Args);
end;

procedure HolaExecute(Sentencias: String; const Args: array of const);
var
  Q: TQuery;
begin
    Q := TQuery.Create(wDataHola);
    try
      Q.DataBaseName := wDataHola.baseHola.DatabaseName;
      Q.SQL.Text := Format(Sentencias,Args);
      Q.ExecSQL;
    finally
      Q.Free;
    end;
end;


function GutSelect(Sentencias: String; const Args: array of const): Variant;
begin
    Result := Funciones.SelectSQLFmt(wDataHola.baseGut.DataBaseName,Sentencias,Args);
end;

procedure GutExecute(Sentencias: String; const Args: array of const);
var
  Q: TQuery;
begin
    Q := TQuery.Create(wDataHola);
    try
      Q.DataBaseName := wDataHola.baseGut.DataBaseName;
      Q.SQL.Text := Format(Sentencias,Args);
      Q.ExecSQL;
    finally
      Q.Free;
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

Function PosarPunt(codi,tipus: string): string;
var
 aux: string;
begin
    // 'D' _ _ _._ _ o V_ _._ _
    // 'P' _ _._ _ _
    // 'E' E_ _ _._ _
    // les neoplàsies les deixem sense punts 

    if length(codi) > 15 then FerError('ERROR: longitud del codi excessiu.',True);

    Result:= ''; aux := '';
    if ((tipus = 'D') and (length(codi) > 3)) then aux := copy(codi,1,3) + '.'+ copy(codi,4,length(codi))
    else if ((tipus = 'P') and (length(codi) > 2)) then aux := copy(codi,1,2) + '.'+ copy(codi,3,length(codi))
         else if ((tipus = 'E') and (length(codi) > 4)) then aux := copy(codi,1,4) + '.'+ copy(codi,5,length(codi))
              else aux := codi;

    Result := aux;
end;

Function  DateServer: TDateTime;
begin
     with wDataHola do
     begin
          QHora.Close;
          QHora.Open;
          Result := ExtractDate(QHora.FieldByName('Hora').AsDateTime);
          QHora.Close;
     end;
end;

Function  NowServer: TDateTime;
begin
     with wDataHola do
     begin
         QHora.Close;
         QHora.Open;
         Result := QHora.FieldByName('Hora').AsDateTime;
         QHora.Close;
     end;
end;

                   {1: Català; 2:Castellà}
function  DiaLlarg (idioma : string; data:TDateTime) : string;
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

procedure ConstruirRtf(UnMemo: TRichEdit; var UnBuffer: String; Head: Boolean;Convertir:Boolean; Mostra: Boolean = True); //*BVG-InterconOrtesis Afegeixo la variable 'mostra'
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
                #16: Texto:=Texto+'\f2 4\f0 ';
                #4: Texto:=Texto+'\f1 £\f0 ';
//              #4: Texto:=Texto+'\f1 w\f0 ';
                #1: Texto:=Texto+'\';
                else Texto:=Texto+UnBuffer[Bucle];
                end;
           end;
      end else Texto := UnBuffer;

//      Texto := UnBuffer;

      if Head then Texto := RtfBegin+Texto+RtfEnd;
//       ShowMensaje(Texto);

      Memoria.Clear;
      Memoria.WriteBuffer(Pointer(Texto)^, Length(Texto));
      Memoria.Position:=0;
      UnMemo.Lines.LoadFromStream(Memoria);
     finally
     if Mostra then UnMemo.Visible := True;      //*BVG-InterconOrtesis Afegeixo la variable 'mostra'
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
               #10: Continue;
               #13: Texto := Texto + '\par ';
               '\': Texto := Texto + '\\';
               '{': Texto := Texto + '\{';
               '}': Texto := Texto + '\}';
               #16: Texto := Texto + '\f2 4\f0 ';
                #4: Texto := Texto + '\f1 £\f0 ';
                #1: Texto := Texto + '\';
                #2: Texto := Texto + '\ul ';
                #3: Texto := Texto + '\ul0 ';
                #5: Texto := Texto + '\f3\fs20 ';
                #6: Texto := Texto + '\b ';
                #7: Texto := Texto + '\b0 ';
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

Function AvisoSN(aTexto: String; aTitulo: String = 'Avís'; aFlags: LongInt = mb_IconWarning + mb_YesNo): Boolean;
begin
   Result := Application.MessageBox(PChar(aTexto), PChar(aTitulo), aFlags) = idYes;
end;


end.



