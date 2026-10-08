unit FitxaBaixaClauNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ActnList, Buttons, ComCtrls, ToolWin, DB,
  Grids, DBGrids, HYGrids, DBTables, HYSql, HYDialogConsulta, HYDialogBusca;

//  DBGridEh,  Hy_Misc, HYPanels, HYEdit, HYLabel, Mask, ToolEdit, ShellAPI, HYDialogError;

type
  TwFitxaBaixaClauNew = class(TForm)
    ActionList1: TActionList;
    Refrescar: TAction;
    Supervisor: TAction;
    Sortir: TAction;
    Print: TAction;
    CanviEstat: TAction;
    bMetges: THYSqlBrowse;
    dsMetges: TDataSource;
    gMetges: THYGrid;
    bMetges_Codi: TStringField;
    bMetges_Metge: TStringField;
    bMetges_Cognom: TStringField;
    bMetges_NC: TStringField;
    bMetges_Nom: TStringField;
    bMetges_Tracte: TStringField;
    bMetges_DigCon: TStringField;
    bMetges_C_Grup: TStringField;
    bMetges_C_Especial: TStringField;
    bMetges_Horari: TStringField;
    bMetges_Dia1: TStringField;
    bMetges_Dia2: TStringField;
    bMetges_Planta: TStringField;
    bMetges_Baixa: TStringField;
    bMetges_DATA_BAIXA: TDateTimeField;
    bMetges_UltimCanviClau: TDateTimeField;
    bMetges_HInhabilitat: TDateTimeField;
    bMetges_AInhabilitat: TIntegerField;
    bMetges_EsUserExtra: TStringField;
    bMetges_Nomsencer: TStringField;
    bMetges_C_Supervisor: TStringField;
    bMetges_DNI: TStringField;
    bMetges_T_DOC: TSmallintField;
    bMetges_Cognom1: TStringField;
    bMetges_Perfil: TStringField;
    bMetges_Extensio: TStringField;
    bMetges_Nombre: TStringField;
    bMetges_EMAIL: TStringField;
    bMetges_EMAIL_CLAU: TStringField;
    bMetges_ClauPas: TStringField;
    bMetges_ClauPas_1: TStringField;
    bMetges_ClauPas_2: TStringField;
    bMetges_E_Incorrectes: TSmallintField;
    bMetges_E_Gracia: TSmallintField;
    bMetges_UNITAT: TSmallintField;
    bMetges_Sexe: TStringField;
    bMetges_NMetgeRecepta: TStringField;
    bMetges_C_Unitat: TSmallintField;
    bMetges_C_PROV: TStringField;
    Panel4: TPanel;
    cSupervisors: THYConsulta;
    lbFiltre: TLabel;
    bMetges_C0_0: TStringField;
    bMetges_C0_1: TStringField;
    bMetges_C1_0: TStringField;
    bMetges_C1_1: TStringField;
    bMetges_C1_2: TStringField;
    bMetges_C2_0: TIntegerField;
    bMetges_C2_1: TStringField;
    bMetges_C2_2: TStringField;
    bMetges_C2_3: TIntegerField;
    bMetges_C2_4: TStringField;
    bMetges_C2_5: TStringField;
    bMetges_C3_0: TStringField;
    bMetges_C3_1: TStringField;
    bMetges_C3_2: TStringField;
    bMetges_C3_3: TStringField;
    bMetges_C3_4: TStringField;
    bMetges_C3_5: TStringField;
    bMetges_C3_6: TStringField;
    bMetges_C3_7: TIntegerField;
    bMetges_C3_8: TStringField;
    bMetges_C3_9: TStringField;
    bMetges_C3_10: TSmallintField;
    bMetges_C3_11: TStringField;
    bMetges_C3_12: TStringField;
    bMetges_C3_13: TStringField;
    bMetges_C3_14: TStringField;
    bMetges_C4_0: TSmallintField;
    bMetges_C4_1: TStringField;
    bMetges_C4_2: TSmallintField;
    bMetges_C4_3: TStringField;
    bMetges_C5_0: TSmallintField;
    bMetges_C5_1: TStringField;
    bMetges_C5_2: TSmallintField;
    bMetges_C5_3: TStringField;
    bMetges_C6_0: TStringField;
    bMetges_C6_1: TStringField;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    tbRefrescar: TToolButton;
    ToolButton1: TToolButton;
    tbModificar: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    Panel2: TPanel;
    Panel3: TPanel;
    sbActius: TSpeedButton;
    sbBaixa: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SortirExecute(Sender: TObject);
    procedure sbActiusClick(Sender: TObject);
    procedure gMetgesAlPintarGrid(var ColorFont, ColorBrush: TColor;
      DataCol: Integer; Column: TColumn; State: TGridDrawState;
      Datos: TDataSet);
    procedure cSupervisorsAlSeleccionar(Sender: TxHYDialogConsulta;
      Datos: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure gMetgesKeyPress(Sender: TObject; var Key: Char);
    procedure lbFiltreClick(Sender: TObject);
    procedure gMetgesTitleClick(Column: TColumn);
    procedure RefrescarExecute(Sender: TObject);
    procedure SupervisorExecute(Sender: TObject);
    procedure CanviEstatExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
  private
    { Private declarations }
    FiltresList: TStrings;
    FiltresCount: Integer;    
    procedure ActualitzaFiltreCaption;
  public
    { Public declarations }
  end;

var
  wFitxaBaixaClauNew: TwFitxaBaixaClauNew;

implementation

uses Data, Main, Funciones;

{$R *.dfm}

procedure TwFitxaBaixaClauNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FiltresList.Free;
  Action := caFree;
end;

procedure TwFitxaBaixaClauNew.SortirExecute(Sender: TObject);
begin
  Close;
end;

procedure TwFitxaBaixaClauNew.ActualitzaFiltreCaption;
var
  i: Integer;
begin
    if (FiltresCount = 0) then lbFiltre.Caption := '   '
                          else lbFiltre.Caption := 'Filtre: ';

    for i := 0 to FiltresCount -1 do lbFiltre.Caption := lbFiltre.Caption + FiltresList[i] + '; ';
end;

procedure TwFitxaBaixaClauNew.sbActiusClick(Sender: TObject);
begin
  Supervisor.Enabled := sbActius.Down;  // no permetre canviar de supervisor a usuaris que estàn de baixa
  Print.Enabled := sbActius.Down;       // no permetre imprimir clau de pas d'usuaris que estàn de baixa
  
  if sbActius.Down then
  begin
      bMetges.Filter := 'BAIXA <> ''B''';
      bMetges.Filtered := True;
  end
  else if sbBaixa.Down then
  begin
      bMetges.Filter := 'BAIXA = ''B''';
      bMetges.Filtered := True;
  end
  else bMetges.Filtered := False;
end;

procedure TwFitxaBaixaClauNew.gMetgesAlPintarGrid(var ColorFont,
  ColorBrush: TColor; DataCol: Integer; Column: TColumn;
  State: TGridDrawState; Datos: TDataSet);
begin
  ColorFont := clBlack;

  // de cara a RRLL, no cal diferenciar entre INHABILITAT i BLOQUEJAT
  if not Datos.FieldByName('HInhabilitat').IsNull then
  begin
      if (Datos.FieldByName('E_Incorrectes').AsInteger < 6) then ColorFont := clBlue   //'USUARI INHABILITAT'
                                                            else ColorFont := clBlue;  //'USUARI BLOQUEJAT'
  end;

  if Datos.fieldByName('baixa').AsString = 'B' then ColorFont := clRed;


  if gdSelected in State then ColorBrush := clGray
                         else ColorBrush := clWhite;
end;

procedure TwFitxaBaixaClauNew.cSupervisorsAlSeleccionar(
  Sender: TxHYDialogConsulta; Datos: TDataSet);
begin
  if AvisoSN('Voleu canviar el supervisor de '+bMetges.FieldByName('nomsencer').AsString+
             ' a '+Datos.FieldByName('nomsencer').AsString+' (S/N)?') then
  begin
      TRY
          bMetges.Edit;
          bMetges.FieldByName('c_supervisor').AsString := Datos.FieldByName('codi').AsString;
          bMetges.Post;
      FINALLY END;
  end;
end;

procedure TwFitxaBaixaClauNew.FormCreate(Sender: TObject);
var
 qAux: TQuery;
 filtreGrups: String;
begin
  FiltresList := TStringList.Create;
  lbFiltre.Caption := '';
  bMetges.Close;

{  if      TeDretAcces([109]) then bMetges.Filtro.Text := '(c_supervisor is null or c_supervisor = "")'  // RRHH
  else if TeDretAcces([133]) then bMetges.Filtro.Text := '(c_supervisor <> "")'                         // Docència
                             else bMetges.Filtro.Text := '';                                            // la resta}
  qAux := TQuery.Create(Application);
  qAux.DatabaseName := wData.Gdb.DatabaseName;
  if not TeDretAcces([109],False,False) then qAux.SQL.Text := 'SELECT DISTINCT C_GRUP FROM GRUPSLLETRES WHERE SUPERVISOR IN ("M","S","F")'
                                        else qAux.SQL.Text := 'SELECT DISTINCT C_GRUP FROM GRUPSLLETRES WHERE SUPERVISOR IN ("N","F")    ';
  qAux.Open;
  filtreGrups := '';
  if not qAux.Eof then filtreGrups := '((C_GRUP = "'+qAux.FieldByName('C_GRUP').AsString+'")';
  qAux.Next;

  while not qAux.Eof do
  begin
      filtreGrups := filtreGrups+' OR (C_GRUP = "'+qAux.FieldByName('C_GRUP').AsString+'")';
      qAux.Next;
  end;
  qAux.Close;
  qAux.Free;
  filtreGrups := filtreGrups+')';
  bMetges.filtro.Text := filtreGrups;

  bMetges.Open;
  FiltresList.Add(bMetges.Filtro.Text);
  FiltresCount := 1;

  sbActius.Click;
  Supervisor.Enabled := TeDretAcces([133]);  // només Docència
end;

procedure TwFitxaBaixaClauNew.gMetgesKeyPress(Sender: TObject;
  var Key: Char);
var
  Tecla: String;
  CampBusca, filtertext: String;
  DialegCerca: TwDialogBusca;
begin
    // backspace : traiem l'últim filtre
    if (Key = #8) and (FiltresCount > 0) then
    begin
        bMetges.Close;
        bMetges.Filtro.Delete(FiltresCount-1);
        bMetges.Open;

        FiltresList.Delete(FiltresCount-1);
        FiltresCount := FiltresCount - 1;
        ActualitzaFiltreCaption;

        Exit;
    end;

    if (Key < ' ') then Exit;

    if  (not (gMetges.SelectedField is TIntegerField))
    and (not (gMetges.SelectedField is TStringField )) then Exit;

    Tecla := AnsiUpperCase(Key);

    CampBusca := gMetges.SelectedField.FieldName;
    if (UpperCase(Campbusca) = 'GRUP_N_GRUP')
    or (UpperCase(Campbusca) = 'ESPECIAL_N_ESPECIAL')
    or (UpperCase(Campbusca) = 'SUPERVISOR_NOMSENCER') then Abort;

    DialegCerca := TwDialogBusca.Create(Self);
    TRY
      DialegCerca.Caption := 'Cerca';
      DialegCerca.lblCampo.Caption := gMetges.SelectedField.DisplayLabel;

      DialegCerca.Edit.CharCase := ecUpperCase;
      if (Tecla <> ' ') then DialegCerca.Edit.Text := Tecla;

      DialegCerca.rgCondis.ItemIndex := 3;  // condició "conté"
      DialegCerca.bFiltro.Hide;

      if (DialegCerca.ShowModal = mrOk) then
      begin
          filtertext := CampBusca + ' LIKE ''%' + DialegCerca.Edit.Text + '%''';
          bMetges.Close;
          if (bMetges.Filtro.Count > 0) then filtertext := 'and ' + filtertext;
          bMetges.Filtro.Add(filtertext);
          bMetges.Open;

          FiltresList.Add(CampBusca + ' conté "' + DialegCerca.Edit.Text+ '"');
          FiltresCount := FiltresCount + 1;
          ActualitzaFiltreCaption;
      end;

    FINALLY
      DialegCerca.Free;
    END;

    gMetges.SetFocus;
end;

procedure TwFitxaBaixaClauNew.lbFiltreClick(Sender: TObject);
begin
  bMetges.Close;

  if      TeDretAcces([109]) then bMetges.Filtro.Text := '(c_supervisor is null or c_supervisor = "")'  // RRHH
  else if TeDretAcces([133]) then bMetges.Filtro.Text := '(c_supervisor <> "")'                         // Docència
                             else bMetges.Filtro.Text := '';                                            // la resta
  bMetges.Open;
  FiltresList.Clear;
  FiltresList.Add(bMetges.Filtro.Text);
  FiltresCount := 1;
  ActualitzaFiltreCaption;
end;

procedure TwFitxaBaixaClauNew.gMetgesTitleClick(Column: TColumn);
var
  camp: String;
  ordre: String;
begin
    bMetges.Close;

    if      (UpperCase(Column.FieldName) = 'GRUP_N_GRUP')          then camp := 'C_GRUP'
    else if (UpperCase(Column.FieldName) = 'ESPECIAL_N_ESPECIAL')  then camp := 'C_ESPECIAL'
    else if (UpperCase(Column.FieldName) = 'SUPERVISOR_NOMSENCER') then camp := 'C_SUPERVISOR'
                                                                   else camp := Column.FieldName;

    if (Pos(camp, bMetges.OrdenBy) > 0) then
    begin
        if (Pos('DESC', bMetges.OrdenBy) > 0) then ordre := 'ASC'
                                              else ordre := 'DESC';
    end;

    bMetges.OrdenBy := camp + ' ' + ordre;
    bMetges.Open;
end;

procedure TwFitxaBaixaClauNew.RefrescarExecute(Sender: TObject);
begin
  bMetges.Refresh;
end;

procedure TwFitxaBaixaClauNew.SupervisorExecute(Sender: TObject);
begin
  // permetre canviar el supervisor
  cSupervisors.SqlDic[3] := 'and m.c_especial = "'+bMetges.FieldByName('c_especial').AsString+'"';
  cSupervisors.ExecuteModal;
end;

procedure TwFitxaBaixaClauNew.CanviEstatExecute(Sender: TObject);
var
  id,egracia: Integer;
  codi,avis,missatge,codiM: String;
  textParte: TMemo;
begin
  codiM := bMetges.FieldByName('codi').AsString;

  if bMetges.FieldByName('Baixa').AsString = 'B' then
  begin
      avis := Format('Voleu reactivar la clau de pas de "%s" (S/N)?',[bMetges.FieldByName('nomsencer').AsString]);

      // Reactivar l'usuari marcat. Primer demano confirmació
      if AvisoSN(avis) then
      begin
          textParte := TMemo.Create(Application);
          textParte.Text := '';

          codi  := ''''+bMetges.FieldByName('codi').AsString+'''';
          if (not bMetges.FieldByName('email').IsNull) and (bMetges.FieldByName('email').AsString <> '')
          then begin
              missatge := 'Reactivació realitzada correctament i comunicada a INFORMÀTICA. Imprimint document de clau de pas.';

              if TeDretGrup(bMetges.FieldByName('c_grup').AsString,[49])  // Març 2020: per tot resident (dret G49) creat fora de RH (dret A109) s'ha de crear usuari a l'AD
              then textParte.Text:= 'RESIDENTS tornar a habilitar usuari de l''AD de '+bMetges.FieldByName('Nomsencer').AsString
              else textParte.Text:= 'Reactivar el correu '+#13+bMetges.FieldByName('email').AsString+
                                    ' i el corresponent usuari de la intranet.'; //parte 53680
          end
          else begin
              missatge := 'Reactivació realitzada correctament. Imprimint document de clau de pas.';
              // textParte.Text:= 'Clau '+bMetges.FieldByName('codi').AsString+' reactivada'; NO cal fer parte pq no hem de fer res des d'informàtica
          end;

          if {TeDretAcces([109]) and} (textParte.Text<>'') then CrearParteInformatica(textParte);  // 17/6/2014: fer sempre parte si dónen de baixa
                                                                                                   // 03/7/2014: només fer parte si ho dóna de baixa RRHH
                                                                                                   // març 2020: des de docència també s'han de poder crear partes

          TRY bMetges.Edit;
              bMetges.FieldByName('BAIXA').AsString := 'N';
              bMetges.Post;
              ShowMessage(missatge);

              // guardem registre al log i imprimim clau de pas
              id := GutSelect('select max(id) from LOGCLAUS',[]) + 1;
              GutExecute('insert into LOGCLAUS(id,data,c_usuari,clau,accio) values(%d,"%s","%s","%s","R")',
                         [id,FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer),wData.UsuariActiu.Codi,codiM]);
              wMain.ImprimirClau(codiM);
          FINALLY
              RefrescarExecute(tbRefrescar);
          END;
      end;
  end
  else begin
      // Habilitar clau bloquejada o inhabilitada
      if not bMetges.FieldByName('HInhabilitat').IsNull then
      begin
          egracia := 0;
          avis := Format('Voleu HABILITAR la clau de pas de "%s" (S/N)?',[bMetges.FieldByName('nomsencer').AsString]);
          missatge := 'Clau de pas habilitada correctament';

          // Donar de baixa l'usuari marcat. Primer demano confirmació
          if AvisoSN(avis) then
          begin
              if      (bMetges.FieldByName('E_Incorrectes').AsInteger >= 6) then egracia := - 2
              else if (bMetges.FieldByName('E_Incorrectes').AsInteger >= 3) then egracia := - 1;

              TRY bMetges.Edit;
                  bMetges.FieldByName('BAIXA'        ).AsString := 'N';
                  bMetges.FieldByName('HInhabilitat' ).Clear;
                  bMetges.FieldByName('AInhabilitat' ).Clear;
                  bMetges.FieldByName('E_Gracia'     ).AsInteger := egracia;
                  bMetges.FieldByName('E_Incorrectes').AsInteger := 0;
                  bMetges.Post;

                  // enregistrem que hem habilitat/desbloquejat l'usuari:
                  if (egracia < 0) then GutExecute('execute PROCEDURE P_LOGINHABILITATS_REGISTRA("%s", NULL, "R")',[codiM]);

                  ShowMessage(missatge);
              FINALLY
                  RefrescarExecute(tbRefrescar);
              END;
          end;
      end
      else begin
          avis := Format('Voleu donar de baixa la clau de pas de "%s" (S/N)?',[bMetges.FieldByName('nomsencer').AsString]);

          // Donar de baixa l'usuari marcat. Primer demano confirmació
          if AvisoSN(avis) then
          begin
              textParte := TMemo.Create(Application);
              textParte.Text := '';

              codi  := '''' + bMetges.FieldByName('codi').AsString + '''';
              if (not bMetges.FieldByName('email').IsNull) and (bMetges.FieldByName('email').AsString <> '')
              then begin
                  missatge := 'Baixa realitzada correctament i comunicada a INFORMÀTICA.';
                  if TeDretGrup(bMetges.FieldByName('c_grup').AsString,[49])  // Març 2020: per tot resident (dret G49) creat fora de RH (dret A109) s'ha de crear usuari a l'AD
                  then textParte.Text:= 'RESIDENTS deshabilitar usuari de l''AD de '+bMetges.FieldByName('Nomsencer').AsString
                  else textParte.Text:= {'Donar de baixa el correu: '+#13+bMetges.FieldByName('email').AsString+
                                         ' i el corresponent usuari de la intranet.'; //parte 53680}
                                         'Donar de baixa a l''AD i planificar eliminacio del correu'+#13+bMetges.FieldByName('email').AsString+
                                         ' i el corresponent usuari de la intranet per d''aquí a 3 mesos. Abans d''eliminar '+
                                         'definitivament el compte confirmar amb RRHH que la baixa és definitiva.';
              end
              else begin
                  missatge := 'Baixa realitzada correctament';
                  // textParte.Text:= 'Clau '+bMetges.FieldByName('codi').AsString+' donada de baixa'; NO cal fer parte pq no hem de fer res des d'informàtica
              end;

              if {TeDretAcces([109]) and} (textParte.Text<>'') then CrearParteInformatica(textParte);  // 17/6/2014: fer sempre parte si dónen de baixa
                                                                                                       // 03/7/2014: només fer parte si ho dóna de baixa RRHH
                                                                                                       // març 2020: des de docència també s'han de poder crear partes

              TRY bMetges.Edit;
                  bMetges.FieldByName('BAIXA'     ).AsString := 'B';
                  bMetges.FieldByName('DATA_BAIXA').AsDateTime := DateServer;
                  bMetges.Post;
                  ShowMessage(missatge);

                  // guardem registres al log
                  id := GutSelect('select max(id) from LOGCLAUS',[]) + 1;
                  GutExecute('insert into LOGCLAUS(id,data,c_usuari,clau,accio) values(%d,"%s","%s","%s","B")',
                             [id,FormatDateTime('dd.mm.yyyy hh:mm:ss',NowServer),wData.UsuariActiu.Codi,codiM]);
              FINALLY
                  RefrescarExecute(tbRefrescar);
              END;
          end;
      end;
  end;
end;

procedure TwFitxaBaixaClauNew.PrintExecute(Sender: TObject);
begin
  wMain.ImprimirClau(bMetges.FieldByName('codi').AsString);
end;

end.
