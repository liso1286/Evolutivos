unit Data;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, ExtCtrls, Forms, Dialogs,
  Diccionari, DBTables, HYSql, ImgList, Db, ComCtrls, ActnList, StdActns, NB30, IniFiles,
  Grids, IBCustomDataSet, IBQuery, IBSQL, DBGrids, IBDatabase;


const                                                          
     HYM_SAVE = 7888;

type

  HaleyException = class(Exception);

  TwData = class(TDataModule)
    Images: TImageList;
    IBGuttmann: TIBDatabase;
    IBTransGutt: TIBTransaction;
    QParametres: TIBQuery;
    QHora: TIBQuery;
    Projecte: TDicProjecto;
    procedure wDataCreate(Sender: TObject);
    procedure IBGuttmannBeforeConnect(Sender: TObject);
  private
  public
   ID_NIC: String;
   ID_LOGIN: String;
   ID_COMPUTER: String;
   ID_REMOTE: String;
   ES_PROVA: Boolean;
   NO_ACCES: String;
   rutaAliesIB: String;
   Entorn: String;
   Alias: String;
   procedure TrazaErrores(Sender: TObject; E:Exception);
//-   Function GetRutaDelGdbConnectat: String;
  end;

var
  wData: TwData;

  NT7OK, SAPOK, RCAOK, CUESOK, SENSE_CLAU: Boolean;
  FOTOS_OK, HOLA_OK, INFORMATICA_OK, RECERCA_OK: Boolean;

  CHR_Subrallado   : String;
  CHR_NOSubrallado : String;
  CHR_Negrita      : String;
  CHR_NONegrita    : String;
  TCHR_Normal      : String;
  TCHR_Grande      : String;
  INIT_PRINT       : String;
  
  C_TEMPORAL: String;

  procedure GetNicAddress (NIC : pchar); cdecl; external 'NIC.DLL';
  Function  GetUserName (Cadena: PChar): String;

  Function  DateServer: TDateTime;
  Function  NowServer: TDateTime;
  Function  TimeServer: TDateTime;

  Function  GutSelect(Sentencias: String; const Args: array of const; CommitRet: Boolean=True): Variant;
  Procedure GutExecute(Sentencia: String; const Args: array of const; CommitRet: Boolean=True);

  Procedure FerError(Texte: String; FerRaise: Boolean=False); Overload;
  Procedure FerError(Texte: String; params: array of const;FerRaise: Boolean=False); Overload;

implementation

uses Funciones, Registry, HyDialogError;

{$R *.DFM}


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
    rutaAliesIB := 'C:\tempexes\AliesIB.ini';

    // Mirem si en el regedit podem atacar a bases de dades de proves:
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
              if (opcio = -1) then Application.Terminate;

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

    TRY
      IBGuttmann.Connected := True;
      IBTransGutt.Active := True;
      if (not IbGuttmann.Connected) or (not ibtransgutt.active) then Application.Terminate;
    EXCEPT
      on e: Exception do
      begin
          ShowMessage(e.Message + NLine + 'No s''ha pogut connectar a la base de dades');
          Application.Terminate;
      end;
    END;

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

    // Predefinim opcions per a l'aplicació

    Application.UpdateFormatSettings:=False; // No permetem el canvi en Tauler de Control - Configuració regional

    DateSeparator:= '/';
    ShortDateFormat := 'dd/MM/yyyy';
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

    ShortDayNames[2]:='dl.';
    ShortDayNames[3]:='dt.';
    ShortDayNames[4]:='dc.';
    ShortDayNames[5]:='dj.';
    ShortDayNames[6]:='dv.';
    ShortDayNames[7]:='ds.';
    ShortDayNames[1]:='dg.';
                                       
    LongDayNames[2]:='dilluns';
    LongDayNames[3]:='dimarts';
    LongDayNames[4]:='dimecres';
    LongDayNames[5]:='dijous';
    LongDayNames[6]:='divendres';
    LongDayNames[7]:='dissabte';
    LongDayNames[1]:='diumenge';

    // Busquem el login i la maquina (pc)

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

    // Si no trobem el login via API, el busquem via $Environment Variables.
    if Trim(ID_LOGIN)='' then
    begin
         getEnvironmentVariable(PChar('USERNAME'),UserName, MaxLen);
         ID_LOGIN := UpperCase(UserName);
    end;

    // Directori temporal (de treball)
    TRY    C_TEMPORAL := GetEnvironmentVariable('TEMP');
    EXCEPT C_TEMPORAL := 'C:\tempexes';
    END;

    cCode := WNetGetConnection(LocalName,RemoteName,MaxLen);
    if cCode=0 then ID_REMOTE := String(RemoteName) else ID_REMOTE:= '**';

    Longi := 20;
    GetComputerName(PCName, Longi);
    ID_COMPUTER:= String(PCName);

    GetMem(Tmp,MaxLen);
    GetNicAddress(Tmp); //de la nic.dll
    ID_NIC := String(Tmp);

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
           MostraError (E.Message);
          end;
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


{-
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
-}

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






