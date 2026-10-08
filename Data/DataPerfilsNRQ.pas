unit DataPerfilsNRQ;

interface

uses
  SysUtils, Classes, HYDialogConsulta, DB, DBTables, Diccionari, DataCodis,
  HYSql, IBCustomDataSet, IBQuery;
                             

type
  TwDataPerfilsNRQ = class(TDataModule)
    cPrealtesPend: THYConsulta;
    qMotius: TQuery;
    qProcesNR: TQuery;
    qPautaNR: TQuery;
    dsProcesNR: TDataSource; 
    qTornsNR: TQuery;
    qFestius: TQuery;
    qVisitesSeg: TQuery;
    qPerfilNR: TQuery;
    dsPerfilNR: TDataSource;
    dsPautaNR: TDataSource;
    qPerfilNRC_PERFIL: TSmallintField;
    qPerfilNRN_PERFIL: TStringField;
    qPerfilNRDURADA: TSmallintField;
    qPautaNRID: TIntegerField;
    qPautaNRC_PROCES: TIntegerField;
    qPautaNRC_TRACTAMENT: TIntegerField;
    qPautaNRDATA_PREALTA: TDateTimeField;
    qPautaNRSETMANES_5D: TSmallintField;
    qPautaNRSETMANES_3D: TSmallintField;
    qPautaNRC_MOTIU: TSmallintField;
    qPautaNRCOMENTARI: TStringField;
    qPautaNRESTAT: TStringField;
    qPautaNRC_USUARI: TStringField;
    qPautaNRDATA: TDateTimeField;
    qPautaNRC_USUARI_SUSP: TStringField;
    qPautaNRDATA_SUSP: TDateTimeField;
    qPautaNRSETMANES_2D: TSmallintField;
    dsPautesNR: TDataSource;
    qPautesNR: TQuery;
    qHospNR: TQuery;
    qAmbuNR: TQuery;
    qProcesNRC_PROCES: TIntegerField;
    qProcesNRC_HISTORIA: TIntegerField;
    qProcesNRDATA_INICI: TDateTimeField;
    qProcesNRDATA_FI: TDateField;
    qTractaments: TQuery;
    dsTractaments: TDataSource;
    qPautaNRDIES_EXTRA: TIntegerField;
    cProcesPend: THYConsulta;
    qUpdLesionsSuccessives: TQuery;
    qInsLesionsSuccessives: TQuery;
    qPautaNRDATA_INICI: TDateTimeField;
    cTornsPend: THYConsulta;
    cPautesPend: THYConsulta;
    cCanvisTorn: THYConsulta;
    qProtocols: TIBQuery;
    dsProtocols: TDataSource;
    insPauta: TIBQuery;
    qPautaNRSEGUEIXPROTOCOLDURADA: TStringField;
    qPautaNRSEGUEIXPROTOCOLFREQ: TStringField;
    qProcesNRC_MOTIU: TSmallintField;
    qProcesNRMOTIU: TStringField;
    qProtocolsID: TIntegerField;
    qProtocolsC_MOTIU: TSmallintField;
    qProtocolsC_CENTREFAC: TIBStringField;
    qProtocolsPROTOCOL: TIBStringField;
    qProtocolsINICIAL5D: TSmallintField;
    qProtocolsMAXIM5D: TSmallintField;
    qProtocolsINICIAL4D: TSmallintField;
    qProtocolsMAXIM4D: TSmallintField;
    qProtocolsINICIAL3D: TSmallintField;
    qProtocolsMAXIM3D: TSmallintField;
    qProtocolsINICIAL2D: TSmallintField;
    qProtocolsMAXIM2D: TSmallintField;
    qProtocolsINICIAL1D: TSmallintField;
    qProtocolsMAXIM1D: TSmallintField;
    qProtocolsDURADAMAX: TIntegerField;
    qProtocolsDURADAFIXA: TIBStringField;
    procedure cPrealtesPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure consultaAllTancar(Sender: THYConsulta);
    procedure consultaEnActivar(Sender: TObject);
    procedure consultaEnDesactivar(Sender: TObject);
    procedure qProcesNRCalcFields(DataSet: TDataSet);
    procedure cProcesPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cTornsPautesPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cCanvisTornAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
  private
  public
    DataInici_P: TDateTime;  // Inici del procés (per muntar el calendari)
    DataInici_A: TDateTime;  // Inici del primer ambulatori del procés
    DataInici_S: TDateTime;  // data d'inici de la pauta ambulatòria (per comptar les setmanes)
  end;

var
  wDataPerfilsNRQ: TwDataPerfilsNRQ;

implementation

uses FichaVerHis, DataVerHis, Data, Funciones, FuncionsCurs, DataPerfilsNR,
  Funcions, DataBasics;

{$R *.dfm}


procedure TwDataPerfilsNRQ.consultaAllTancar(Sender: THYConsulta);
begin
    FLAG_FORM := False;
end;


procedure TwDataPerfilsNRQ.consultaEnActivar(Sender: TObject);
begin
   if (not TeDretAcces([99], False, False)) and Assigned(wDataVerHis.F) then
   begin
       TxHYDialogConsulta(Sender).Enabled := False;
       wDataVerHis.F.Show;
       Exit;
   end;
end;


procedure TwDataPerfilsNRQ.consultaEnDesactivar(Sender: TObject);
begin
    TxHYDialogConsulta(Sender).Enabled := True;
end;


procedure TwDataPerfilsNRQ.cPrealtesPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin

    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        PreAltaExecute(Prealta);
    end;
end;


procedure TwDataPerfilsNRQ.cProcesPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  Tract: TTractament;
begin
    Tract := OmpleTractament(Datos.FieldByName('C_Tractament').AsInteger);
    IdentificaProcesNR(Datos.FieldByName('C_HISTORIA').AsInteger, Tract, Sender);
end;


procedure TwDataPerfilsNRQ.qProcesNRCalcFields(DataSet: TDataSet);
begin
    if (not qPautaNR.Active) or (qPautaNR.FieldByName('Data_Prealta').IsNull)
    then qProcesNR.FieldByName('Data_Fi').Clear
    else qProcesNR.FieldByName('Data_Fi').AsDateTime := qPautaNR.FieldByName('Data_Prealta').AsDateTime;
end;


procedure TwDataPerfilsNRQ.cTornsPautesPendAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin

    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        Tabs.ActivePage := TabProcesNR;
        PCProcesNR.ActivePage := TabCalendariNR;
        TabsChange(Tabs);
        PCProcesNRChange(PCProcesNR);
        ModificarExecute(bModificarNR);
    end;
end;


procedure TwDataPerfilsNRQ.cCanvisTornAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  F: TwFichaVerHis;
begin

    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        MiConsulta := Sender;
        ObrirHistoria(Datos.FieldByName('C_Historia').AsString, False);
        Tabs.ActivePage := TabProcesNR;
        PCProcesNR.ActivePage := TabAgenda;
        TabsChange(Tabs);
        PCProcesNRChange(PCProcesNR);
    end;

end;


end.
