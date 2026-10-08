unit MainPdf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, Diccionari, DB, DBTables, HYSql, Word_TLB_2010,
  OleCtrls, AxCtrls, IBSQL, IBDatabase, FileCtrl, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IBCustomDataSet, IBQuery, JvComponentBase,
  JvThreadTimer, ComCtrls, ExtCtrls, uLkJSON;

type
  HaleyException = class(Exception);

  TwMainPdf = class(TForm)
    bFinalitzaInf: TButton;
    bSortir: TButton;
    TimerFinalitza: TJvThreadTimer;
    lFinalitzant: TLabel;
    bVIDSigner: TButton;
    Timer23h: TJvThreadTimer;
    bArxivaInf: TButton;
    lArxivant: TLabel;
    lVIDSigner: TLabel;
    bGeneraCEX: TButton;
    lGenerantCEX: TLabel;
    qInfCEXGenerar: TIBQuery;
    qPath_ELIMINAR: TIBQuery;
    qInformes: TIBQuery;
    delInformesImprimir: TIBQuery;
    updInforme: TIBQuery;
    qInformesReg: TIBQuery;
    insInformesReg: TIBQuery;
    qInsAvisos: TIBQuery;
    qInfArxivar: TIBQuery;
    procedure FormCreate(Sender: TObject);

    procedure TimerFinalitzaTimer(Sender: TObject);
    procedure bFinalitzaInfClick(Sender: TObject);

    procedure Timer23hTimer(Sender: TObject);
    procedure bArxivaInfClick(Sender: TObject);
    procedure bVIDSignerClick(Sender: TObject);

    procedure bSortirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bGeneraCEXClick(Sender: TObject);
  private
    RutaBase, BasePath, Assumpte, Cos: String;
    procedure trazaini(sender: tobject; e: exception);
    procedure FinalitzaInformes;
    procedure GeneraInformesCEX;
    procedure ArxivaInformes;
  public
  end;

var
  wMainPdf: TwMainPdf;

//-  function  IdentificaDirectori(DirectoriDocs, H: String): String;

implementation

uses utili16, DataInformesQ, Funciones, Data, Funcions;


{$R *.dfm}

procedure TwMainPdf.FormCreate(Sender: TObject);
begin
    if not wData.ES_PROVA then application.onexception := trazaini;
    
    TimerFinalitza.Enabled := not wData.ES_PROVA;
    Timer23h.Enabled := not wData.ES_PROVA;

    Self.Height := 300;
    Self.Show;
end;


procedure TwMainPdf.trazaini(sender: tobject; e: exception);
begin
    if (pos('El comando no está disponible porque no hay ningún documento abierto',e.Message )=0)
    then mandaerrorporemail(e, '', False, 'zserver', 'avisos@guttmann.com', 'informatica@guttmann.com', '', '');

    mandaerror2(sender, e, '', False, 2);
end;


procedure TwMainPdf.TimerFinalitzaTimer(Sender: TObject);
begin
    bFinalitzaInfClick(Sender);
    bGeneraCEXClick(Sender);
end;

procedure TwMainPdf.bFinalitzaInfClick(Sender: TObject);
begin
    FinalitzaInformes;

    // encara que no processi res, s'ha d'avisar de que s'ha executat
    estoyvivo(true, 'Timer FinalitzaInformes', 10);
end;


procedure TwMainPdf.FinalitzaInformes;
var
  i: Integer;
  error: Boolean;
  NomDesti: String;
begin
    qInformes.Close;
    qInformes.Open;

    qInformes.Open;
    i := 0;

    while not qInformes.Eof do
    begin
        error := False;
        i := i+1;

        if  (qInformes.FieldByName('Nom_Informe').AsString <> '')
        and (qInformes.FieldByName('Nom_Desti'  ).AsString <> '') then
        begin
            TRY
              // Movem l'informe
              if not MoveFile(PChar(qInformes.FieldByName('Nom_Informe').AsString), PChar(qInformes.FieldByName('Nom_Desti').AsString))
              then Raise Exception.Create('MoveFile');

              // Donem temps perquè es tanqui el word...
              Sleep(4500);
              NomDesti := qInformes.FieldByName('Nom_Desti').AsString;

              // Eliminem registre de la llista d'informes pendents d'imprimir
              delInformesImprimir.ParamByName('c_tractament').AsInteger := qInformes.FieldByName('C_Tractament').AsInteger;
              delInformesImprimir.ParamByName('data_validat').AsDateTime := qInformes.FieldByName('data_validat').AsDateTime;
              delInformesImprimir.ExecSQL;

              // Finalitzem informe (estat 6 -> 10)
              updInforme.Close;
              updInforme.ParamByName('id_informe').AsInteger := qInformes.FieldByName('ID_INFORME').AsInteger;
              updInforme.ParamByName('c_estat'   ).AsInteger := 10;
              updInforme.ParamByName('arxiu'     ).AsString  := ExtractFileName(NomDesti);
              updInforme.ExecSQL;

              // Registrem l'acció de finalització (registre a INFORMES_REG amb acció 6)
              qInformesReg.Close;
              qInformesReg.ParamByName('ID_INFORME').AsInteger := qInformes.FieldByName('ID_INFORME').AsInteger;
              qInformesReg.Open;

              insInformesReg.Close;
              insInformesReg.ParamByName('id_informe').AsInteger := qInformes.FieldByName('ID_INFORME').AsInteger;
              insInformesReg.ParamByName('linia'     ).AsInteger := qInformesReg.FieldByName('maxim').AsInteger + 1;
              insInformesReg.ParamByName('accio'     ).AsInteger := 6;
              insInformesReg.ParamByName('comentari' ).Clear;
              insInformesReg.ExecSQL;

              wData.IBTransGutt.CommitRetaining;
            EXCEPT
              on e: Exception do
              begin
                  wData.IBTransGutt.RollbackRetaining;

                  if (e.Message = 'MoveFile') then
                  begin
                      Assumpte := 'Informe no mogut';
                      Cos := 'No s''ha pogut moure l''informe ' + NLine +
                             'de ' + qInformes.FieldByName('Nom_Informe').AsString + NLine +
                             'a  ' + qInformes.FieldByName('Nom_Desti').AsString;
                  end
                  else if (e.Message = 'DeleteFile') then
                  begin
                      Assumpte := 'Informe no eliminat';
                      Cos := 'No s''ha pogut eliminar l''informe ' + qInformes.FieldByName('Nom_Informe').AsString;
                  end
                  else begin
                      Assumpte := 'Actualització BD Informes';
                      Cos := 'ID_Informe:   ' + qInformes.FieldByName('ID_Informe').AsString + NLine +
                             'C_Tractament: ' + qInformes.FieldByName('C_Tractament').AsString + NLine +
                             'Arxiu origen: ' + qInformes.FieldByName('Nom_Informe').AsString + NLine + NLine +
                             '(Sí que s''ha pogut moure el fitxer al directori definitiu)';
                  end;

                  qInsAvisos.ParamByName('assumpte').AsString := 'Avís FINALITZA INFORMES - ' + Assumpte;
                  qInsAvisos.ParamByName('cos').AsString := 'ERROR: ' + NLine + e.Message + NLine + NLine + Cos;
                  TRY
                    qInsAvisos.ExecSQL;
                    wData.IBTransGutt.CommitRetaining;
                  EXCEPT //-FINALLY
                  END;
              end;
            END;
        end;

        qInformes.Next;
        wMainPdf.BringToFront;
        Application.ProcessMessages;
        estoyvivo(true,'Timer FinalitzaInformes',10);
    end;
    qInformes.Close;

    wData.IBTransGutt.CommitRetaining;

    lFinalitzant.Caption := 'Última execució: '+ FormatDateTime('dd-mm-yyyy hh:mm:ss', NowServer);
end;



procedure TwMainPdf.bGeneraCEXClick(Sender: TObject);
begin
    GeneraInformesCEX;

    // encara que no processi res, s'ha d'avisar de que s'ha executat
    estoyvivo(true, 'Timer FinalitzaInformes', 10);
end;


procedure TwMainPdf.GeneraInformesCEX;
begin
    qInfCEXGenerar.Close;
    qInfCEXGenerar.Open;
    while not qInfCEXGenerar.Eof do
    begin
        wDataInformesQ.CreaInforme(qInfCEXGenerar.FieldByName('ID_Informe').AsInteger, qInfCEXGenerar.FieldByName('C_Usuari').AsString, wData.ES_PROVA);

        qInfCEXGenerar.Next;
    end;
    lGenerantCEX.Caption := 'Última execució: '+ FormatDateTime('dd-mm-yyyy hh:mm:ss', NowServer);
end;


procedure TwMainPdf.Timer23hTimer(Sender: TObject);
begin
    bArxivaInfClick(Sender);
    bVIDSignerClick(Sender);
end;


procedure TwMainPdf.bArxivaInfClick(Sender: TObject);
var
  NowTime: TDateTime;
begin
    NowTime := Time;

    // Executar només un cop entre 23:00 i 23:59:59
    if (NowTime >= EncodeTime(23, 0, 0, 0)) and
       (NowTime <  EncodeTime(23, 59, 59, 0)) then ArxivaInformes;

    // encara que no processi res, s'ha d'avisar de que s'ha executat
    estoyvivo(true, 'Timer 23h', 60);
    
    lArxivant.Caption := 'Última execució: '+ FormatDateTime('dd-mm-yyyy hh:mm:ss', NowServer);
end;


procedure TwMainPdf.ArxivaInformes;
var
  PathOrigin, PathArxivats, FitxerDesti: String;
begin
    PathArxivats := GutSelect('select RUTA from DIRECTORIS where NOM = "INF_CEX_ARXIVATS"', []);

    qInfArxivar.Close;
    qInfArxivar.Open;
    while not qInfArxivar.Eof do
    begin
        // Movem el fitxer a "Arxivats"
        PathOrigin := qInfArxivar.FieldByName('Ruta').AsString;
        FitxerDesti := IdentificaDirectori(PathArxivats, qInfArxivar.FieldByName('C_HISTORIA').AsString);
        MoveFile(PAnsiChar(PathOrigin+'\'+qInfArxivar.FieldByName('arxiu').AsString), PAnsiChar(FitxerDesti+'\'+qInfArxivar.FieldByName('arxiu').AsString));

        // Actualitzem l'estat de l'Informe
        updInforme.Close;
        updInforme.ParamByName('id_informe').AsInteger := qInfArxivar.FieldByName('ID_INFORME').AsInteger;
        updInforme.ParamByName('c_estat'   ).AsInteger := 11;
        updInforme.ParamByName('arxiu'     ).AsString  := qInfArxivar.FieldByName('arxiu').AsString;
        TRY
          updInforme.ExecSQL;
        EXCEPT
            on e: Exception do
            begin
                wData.IBTransGutt.RollbackRetaining;
                Cos := 'No s''ha pogut actualitzar l''estat de l''informe amb ID: ' + qInfArxivar.FieldByName('ID_INFORME').AsString + '. ERROR: ' + e.Message;
                qInsAvisos.ParamByName('assumpte').AsString := 'Avís FINALITZA INFORMES - Modificar estat informe';
                qInsAvisos.ParamByName('cos').AsString := Cos;
                TRY
                  qInsAvisos.ExecSQL;
                  wData.IBTransGutt.CommitRetaining;
                FINALLY
                END;
            end;
        END;

        // Inserim registre de l'acció realitzada a INFORMES_REG 
        qInformesReg.Close;
        qInformesReg.ParamByName('ID_INFORME').AsInteger := qInfArxivar.FieldByName('ID_INFORME').AsInteger;
        qInformesReg.Open;

        insInformesReg.Close;
        insInformesReg.ParamByName('id_informe').AsInteger := qInfArxivar.FieldByName('ID_INFORME').AsInteger;
        insInformesReg.ParamByName('linia'     ).AsInteger := qInformesReg.FieldByName('maxim').AsInteger + 1;
        insInformesReg.ParamByName('accio'     ).AsInteger := 18;
        // en el cas dels CEB ens guardem l'estat anterior (pot estar entre 3 i 6) per recuperar-lo si el "desarxiven"
        if (qInfArxivar.FieldByName('C_Tipus').AsString = 'CEB') then insInformesReg.ParamByName('comentari').AsInteger := qInfArxivar.FieldByName('C_Estat').AsInteger
                                                                 else insInformesReg.ParamByName('comentari').Clear;
        TRY
          insInformesReg.ExecSQL;
        EXCEPT
            on e: Exception do
            begin
                wData.IBTransGutt.RollbackRetaining;
                Cos := 'No s''ha pogut insertar el regsitre de finalització de l''informe amb ID: ' + qInfArxivar.FieldByName('ID_INFORME').AsString + '. ERROR: ' + e.Message;
                qInsAvisos.ParamByName('assumpte').AsString := 'Avís FINALITZA INFORMES - Insertar finalització';
                qInsAvisos.ParamByName('cos').AsString := Cos;
                TRY
                  qInsAvisos.ExecSQL;
                  wData.IBTransGutt.CommitRetaining;
                FINALLY
                END;
            end;
        END;

        wData.IBTransGutt.CommitRetaining;
        qInfArxivar.Next;
        wMainPdf.BringToFront;
        Application.ProcessMessages;
        estoyvivo(true, 'Timer 23h', 60);
    end;
    qInfArxivar.Close;
end;


procedure TwMainPdf.bVIDSignerClick(Sender: TObject);
var
  Token: String;
  List: TlkJSONlist;
  NowTime: TDateTime;
begin
    NowTime := Time;

    // Executar només un cop entre 23:00 i 23:59:59
    if (NowTime >= EncodeTime(23, 0, 0, 0)) and
       (NowTime <  EncodeTime(23, 59, 59, 0)) then
    begin
        Token := wDataInformesQ.GetToken();

        List := wDataInformesQ.GetDocumentsList(Token, 'signednotdownloaded');
        if List <> nil then wDataInformesQ.FinalitzaList('FI', List); // DesDe FI- Finalitza Informes

        List := wDataInformesQ.GetDocumentsList(Token, 'rejected');
        if List <> nil then wDataInformesQ.FinalitzaList('FI', List); // DesDe FI- Finalitza Informes
    end;

    // encara que no processi res, s'ha d'avisar de que s'ha executat
    estoyvivo(true,'Timer 23h',60);
    lVIDSigner.Caption := 'Última execució: '+ FormatDateTime('dd-mm-yyyy hh:mm:ss', NowServer);
end;


procedure TwMainPdf.bSortirClick(Sender: TObject);
begin
    if wData.IBTransGutt.InTransaction then wData.IBTransGutt.Commit;  // En tancar, fem commit a seques per alliberar la transacció
    Close;
end;

procedure TwMainPdf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;



end.


