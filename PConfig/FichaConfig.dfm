object wFichaConfig: TwFichaConfig
  Left = 275
  Top = 197
  Width = 1321
  Height = 803
  Caption = 'Par'#224'metres'
  Color = 15461355
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object HYBarra1: THYBarra
    Left = 0
    Top = 0
    Width = 1313
    Height = 25
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clSilver
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    DataSource = dsConfig
    VerInsertar = False
    VerConsultar = False
    VerBorrar = False
    VerOrdenar = False
    VerSiguiente = False
    VerAnterior = False
    VerPrimero = False
    VerUltimo = False
    VerIndices = False
    Titulo = True
    VerPrint = True
    VerRefresh = True
    object SpeedButton1: TSpeedButton
      Left = 400
      Top = 0
      Width = 23
      Height = 25
      Flat = True
      Glyph.Data = {
        96010000424D9601000000000000760000002800000018000000180000000100
        0400000000002001000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333380088333333333333333338007700833333
        3333333333307700770333000333300003307033003333090833309903077033
        3333330990000999030770333333333099999990330770833033333090000903
        3330708807033330990309033330770077033333090090333333007707033333
        099090333333330030333333309990338000033333333333309903300CCCC003
        3333333333090330CC00CCC03333333333090330C0330CC03333333333303330
        CC000CC03333333333333330CCCCCCC03333333333333330C0330C0333333333
        33333300C000CC0333333333333330CCCCCCCC03333333333333300000000033
        3333333333333333333333333333333333333333333333333333}
      OnClick = CanviarFont
    end
  end
  object Tabs: TPageControl
    Left = 0
    Top = 25
    Width = 1313
    Height = 747
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 3
    TabOrder = 1
    OnChange = TabsChange
    object TabDir: TTabSheet
      Caption = 'Directoris'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 1305
        Height = 719
        Align = alClient
        TabOrder = 0
        object Panel1: TPanel
          Left = 0
          Top = 405
          Width = 1301
          Height = 310
          Align = alBottom
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 16
          ParentColor = True
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 50
            Width = 187
            Height = 13
            Caption = 'Sol'#183'licitud d'#39'anal'#237'tiques per RMP'
            FocusControl = DBMemo1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 16
            Top = 178
            Width = 297
            Height = 13
            Caption = 'Sol'#183'licitud d'#39'anal'#237'tiques per RMP, homes >= 50 anys'
            FocusControl = DBMemo2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 744
            Top = 50
            Width = 171
            Height = 13
            Caption = 'Sol'#183'licitud d'#39'anal'#237'tiques per RMP DC'
            FocusControl = DBMemo3
          end
          object Label5: TLabel
            Left = 744
            Top = 178
            Width = 318
            Height = 13
            Caption = 'Sol'#183'licitud d'#39'anal'#237'tiques per RMP, homes >= 50 anys DC'
            FocusControl = DBMemo4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 376
            Top = 50
            Width = 171
            Height = 13
            Caption = 'Sol'#183'licitud d'#39'anal'#237'tiques per RMP LM'
            FocusControl = DBMemo5
          end
          object Label7: TLabel
            Left = 376
            Top = 178
            Width = 263
            Height = 13
            Caption = 'Sol'#183'licitud d'#39'anal'#237'tiques per RMP, homes >= 50 anys LM'
            FocusControl = DBMemo6
          end
          object HYEdit7: THYEdit
            Left = 375
            Top = 16
            Width = 178
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hores Valida Curs'
            EtiSepara = 130
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataConfig.Config
            TabOrder = 0
            AutoSelect = False
            DataSource = dsConfig
            DataField = 'HoresValidaCurs'
          end
          object DBMemo1: TDBMemo
            Left = 16
            Top = 69
            Width = 340
            Height = 97
            DataField = 'AnalitRMP'
            DataSource = dsConfig
            TabOrder = 1
          end
          object DBMemo2: TDBMemo
            Left = 16
            Top = 197
            Width = 340
            Height = 97
            DataField = 'AnalitRMPH50'
            DataSource = dsConfig
            TabOrder = 2
          end
          object DBMemo3: TDBMemo
            Left = 744
            Top = 69
            Width = 345
            Height = 97
            DataField = 'AnaliRMP_2'
            DataSource = dsConfig
            Enabled = False
            TabOrder = 3
          end
          object DBMemo4: TDBMemo
            Left = 744
            Top = 197
            Width = 345
            Height = 97
            DataField = 'AnalitRMPH50_2'
            DataSource = dsConfig
            TabOrder = 4
          end
          object DBMemo5: TDBMemo
            Left = 376
            Top = 69
            Width = 348
            Height = 97
            DataField = 'AnalitRMP_LM'
            DataSource = dsConfig
            Enabled = False
            TabOrder = 5
          end
          object DBMemo6: TDBMemo
            Left = 376
            Top = 197
            Width = 348
            Height = 97
            DataField = 'AnalitRMP50_LM'
            DataSource = dsConfig
            Enabled = False
            TabOrder = 6
          end
          object HYEdit8: THYEdit
            Left = 18
            Top = 16
            Width = 247
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Versi'#243' CIM (publicaci'#243' HC3)'
            EtiSepara = 145
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataConfig.Config
            TabOrder = 7
            AutoSelect = False
            DataSource = dsConfig
            DataField = 'VERSIO_CIM'
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1301
          Height = 405
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 16
          ParentColor = True
          TabOrder = 1
          object HYGrid1: THYGrid
            Left = 16
            Top = 41
            Width = 1269
            Height = 348
            Align = alClient
            Color = clWhite
            DataSource = dsDirectoris
            DefaultDrawing = False
            FixedColor = clSilver
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            DefaultRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'Nom'
                Width = 155
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ruta1'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ruta2'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ruta'
                Title.Caption = 'Ruta     (calculat:  Ruta1 + Ruta2)'
                Visible = True
              end>
          end
          object HYBarra3: THYBarra
            Left = 16
            Top = 16
            Width = 1269
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            Color = clSilver
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            DataSource = dsDirectoris
            Titulo = False
            VerPrint = True
            VerRefresh = True
          end
        end
      end
    end
    object TabBloquejos: TTabSheet
      Caption = 'Bloquejos d'#39'accions sobre hist'#242'ries'
      ImageIndex = 9
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1305
        Height = 719
        Align = alClient
        BevelOuter = bvLowered
        BorderWidth = 15
        Color = 15461355
        TabOrder = 0
        object HYBarra2: THYBarra
          Left = 16
          Top = 57
          Width = 1273
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsBloqAcc
          AlBorrar = HYBarra2AlBorrar
          Titulo = False
          VerPrint = True
          VerRefresh = True
        end
        object HYGrid2: THYGrid
          Left = 16
          Top = 82
          Width = 1273
          Height = 621
          Align = alClient
          Color = clWhite
          DataSource = dsBloqAcc
          DefaultDrawing = False
          FixedColor = clSilver
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          DefaultRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'Que'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bloqueig_N_Codi'
              Width = 338
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_Historia'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_Usuari'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomPC'
              Width = 104
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 16
          Top = 16
          Width = 1273
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          object Label3: TLabel
            Left = 0
            Top = 8
            Width = 793
            Height = 20
            Caption = 
              'ATENCI'#211': NO DESBLOQUEGEU LES ORDRES M'#200'DIQUES NI L'#39'ADMINISTRACI'#211' ' +
              'DES D'#39'AQU'#205'!!!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object TabAvisosCorreu: TTabSheet
      Caption = 'Avisos correu'
      ImageIndex = 11
      object Splitter6: TSplitter
        Left = 0
        Top = 273
        Width = 1305
        Height = 4
        Cursor = crVSplit
        Align = alTop
      end
      object Panel6: TPanel
        Left = 0
        Top = 277
        Width = 1305
        Height = 442
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 0
        object HYBarra5: THYBarra
          Left = 1
          Top = 1
          Width = 1303
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 'Destinataris        '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsAvisosDestinataris
          VerEditar = False
          VerSalir = False
          Titulo = False
          VerPrint = True
          VerRefresh = True
        end
        object HYGrid4: THYGrid
          Left = 1
          Top = 26
          Width = 1303
          Height = 415
          Align = alClient
          Color = clWhite
          DataSource = dsAvisosDestinataris
          DefaultDrawing = False
          FixedColor = clSilver
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          DefaultRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_Avis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'avis_Avis'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_inici'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_fi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Correu_E'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email_Codi'
              Title.Caption = 'C Usuari'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email_Nomsencer'
              Title.Caption = 'Nom usuari'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email_C_Grup'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email_C_Especial'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email_Baixa'
              ReadOnly = True
              Visible = True
            end>
        end
      end
      object HYGrid5: THYGrid
        Left = 0
        Top = 25
        Width = 1305
        Height = 248
        Align = alTop
        Color = clWhite
        DataSource = dsAvisos
        DefaultDrawing = False
        FixedColor = clSilver
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        DefaultRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Avis'
            Visible = True
          end>
      end
      object HYBarra6: THYBarra
        Left = 0
        Top = 0
        Width = 1305
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = 'Avisos        '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        DataSource = dsAvisos
        VerEditar = False
        Titulo = False
        VerPrint = True
        VerRefresh = True
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Salut laboral'
      ImageIndex = 10
      object Panel22: TPanel
        Left = 697
        Top = 0
        Width = 608
        Height = 719
        Align = alRight
        Caption = 'Panel22'
        TabOrder = 0
        object gNHC: TDBGrid
          Left = 3
          Top = 42
          Width = 604
          Height = 533
          Align = alRight
          DataSource = dsNHC
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = gNHCDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NUM_HIST'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMCOMPLET'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA_NAC'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TSI'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DNI'
              Visible = True
            end>
        end
        object Panel23: TPanel
          Left = 1
          Top = 1
          Width = 606
          Height = 41
          Align = alTop
          TabOrder = 1
          object bNou: TButton
            Left = 12
            Top = 8
            Width = 137
            Height = 25
            Caption = 'Nou'
            TabOrder = 0
            OnClick = bNouClick
          end
        end
        object Panel25: TPanel
          Left = 1
          Top = 575
          Width = 606
          Height = 143
          Align = alBottom
          AutoSize = True
          BorderWidth = 10
          TabOrder = 2
          object Label8: TLabel
            Left = 139
            Top = 48
            Width = 270
            Height = 15
            Caption = 'Pendents de confirmar NHC o indicar que '#233's nou'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 139
            Top = 80
            Width = 220
            Height = 15
            Caption = 'S'#39'ha generat Tractament (i NHC si calia)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 139
            Top = 112
            Width = 219
            Height = 15
            Caption = 'Ja tenia prestaci'#243' de salut laboral activa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Panel26: TPanel
            Left = 11
            Top = 75
            Width = 113
            Height = 25
            Caption = 'TRASPASSATS'
            Color = 12973530
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Panel27: TPanel
            Left = 11
            Top = 43
            Width = 113
            Height = 25
            Caption = 'CONFIRMAR'
            Color = 10932991
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object Panel28: TPanel
            Left = 11
            Top = 107
            Width = 113
            Height = 25
            Caption = 'NO PROCEDEIX'
            Color = 16772294
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object Panel29: TPanel
            Left = 11
            Top = 11
            Width = 113
            Height = 25
            Caption = 'PENDENTS'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
      end
      object Panel24: TPanel
        Left = 0
        Top = 0
        Width = 697
        Height = 719
        Align = alClient
        Caption = 'Panel24'
        TabOrder = 1
        object Panel21: TPanel
          Left = 1
          Top = 1
          Width = 695
          Height = 41
          Align = alTop
          TabOrder = 0
          object bProcessaLlista: TButton
            Left = 576
            Top = 8
            Width = 93
            Height = 25
            Caption = 'Processa llista'
            TabOrder = 0
            OnClick = bProcessaLlistaClick
          end
          object bCarregaCSV: TButton
            Left = 488
            Top = 8
            Width = 81
            Height = 25
            Caption = 'Carrega CSV'
            TabOrder = 1
            OnClick = bCarregaCSVClick
          end
          object NomFitxer: TFilenameEdit
            Left = 8
            Top = 10
            Width = 473
            Height = 21
            DefaultExt = '.csv'
            Filter = '*.csv'
            InitialDir = 
              '%USERPROFILE%\INSTITUT GUTTMANN\Sistemes d'#39'Informaci'#243' - Document' +
              's\HCE Delphi\Documents de c'#224'rrega'
            DialogTitle = 'Explora'
            NumGlyphs = 1
            TabOrder = 2
          end
        end
        object gExcelCarrega: THYGrid
          Left = 1
          Top = 42
          Width = 695
          Height = 676
          Align = alClient
          DataSource = dsExcelCarregaSL
          DefaultDrawing = False
          FixedColor = clWhite
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          AlPintarGrid = gExcelCarregaAlPintarGrid
          DefaultRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'NOM'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COGNOM1'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COGNOM2'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_NAIX'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIP'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_DOC'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_DOC'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_DUE'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAIS_PASS'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEXE'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAIS'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NHC'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRASPASSAT'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARI_AD'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPUS_PERSONA'
              Width = 93
              Visible = True
            end>
        end
      end
    end
    object TabInfAlta: TTabSheet
      Caption = 'Model informe alta'
      ImageIndex = -1
      object Splitter2: TSplitter
        Left = 0
        Top = 265
        Width = 1305
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 268
        Width = 1305
        Height = 451
        ActivePage = TabSheet4
        Align = alClient
        MultiLine = True
        TabIndex = 0
        TabOrder = 0
        TabPosition = tpLeft
        object TabSheet4: TTabSheet
          Caption = 'CASTELL'#192
          object MemoCas2: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 443
            Align = alClient
            DataField = 'TextoInfAlta'
            DataSource = dsConfig
            PopupMenu = Macros2
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
      object PageControl5: TPageControl
        Left = 0
        Top = 0
        Width = 1305
        Height = 265
        ActivePage = TabSheet7
        Align = alTop
        MultiLine = True
        TabIndex = 0
        TabOrder = 1
        TabPosition = tpLeft
        object TabSheet7: TTabSheet
          Caption = 'CATAL'#192
          object MemoCat2: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 257
            Align = alClient
            DataField = 'TexteInfAlta'
            DataSource = dsConfig
            PopupMenu = Macros2
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
    end
    object TabInfAltaRevi: TTabSheet
      Caption = 'Model informe alta (motiu revisi'#243')'
      ImageIndex = 8
      object Splitter5: TSplitter
        Left = 0
        Top = 265
        Width = 1305
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object PageControl9: TPageControl
        Left = 0
        Top = 0
        Width = 1305
        Height = 265
        ActivePage = TabSheet13
        Align = alTop
        MultiLine = True
        TabIndex = 0
        TabOrder = 0
        TabPosition = tpLeft
        object TabSheet13: TTabSheet
          Caption = 'CATAL'#192
          object DBRichEdit1: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 257
            Align = alClient
            DataField = 'TextInfAltaRevi'
            DataSource = dsConfig
            PopupMenu = Macros2
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
      object PageControl10: TPageControl
        Left = 0
        Top = 268
        Width = 1305
        Height = 451
        ActivePage = TabSheet14
        Align = alClient
        MultiLine = True
        TabIndex = 0
        TabOrder = 1
        TabPosition = tpLeft
        object TabSheet14: TTabSheet
          Caption = 'CASTELL'#192
          object DBRichEdit2: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 443
            Align = alClient
            DataField = 'TextoInfAltaRevi'
            DataSource = dsConfig
            PopupMenu = Macros2
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
    end
    object TabRevi: TTabSheet
      Caption = 'Model informe revisi'#243
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 265
        Width = 1305
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object PageControl3: TPageControl
        Left = 0
        Top = 268
        Width = 1305
        Height = 451
        ActivePage = TabSheet5
        Align = alClient
        MultiLine = True
        TabIndex = 0
        TabOrder = 0
        TabPosition = tpLeft
        object TabSheet5: TTabSheet
          Caption = 'CASTELL'#192
          object MemoCas: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 443
            Align = alClient
            DataField = 'TextoRevi'
            DataSource = dsConfig
            PopupMenu = Macros
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 1305
        Height = 265
        ActivePage = TabSheet6
        Align = alTop
        MultiLine = True
        TabIndex = 0
        TabOrder = 1
        TabPosition = tpLeft
        object TabSheet6: TTabSheet
          Caption = 'CATAL'#192
          object MemoCat: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 257
            Align = alClient
            Ctl3D = True
            DataField = 'TexteRevi'
            DataSource = dsConfig
            ParentCtl3D = False
            PopupMenu = Macros
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
    end
    object TabInfSol: TTabSheet
      Caption = 'Model informe sol'#183'licitat'
      ImageIndex = 7
      object Splitter4: TSplitter
        Left = 0
        Top = 265
        Width = 1305
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object PageControl7: TPageControl
        Left = 0
        Top = 0
        Width = 1305
        Height = 265
        ActivePage = TabSheet10
        Align = alTop
        MultiLine = True
        TabIndex = 0
        TabOrder = 0
        TabPosition = tpLeft
        object TabSheet10: TTabSheet
          Caption = 'CATAL'#192
          object memocat4: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 257
            Align = alClient
            Ctl3D = True
            DataField = 'TexteInfSol'
            DataSource = dsConfig
            ParentCtl3D = False
            PopupMenu = Macros
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
      object PageControl8: TPageControl
        Left = 0
        Top = 268
        Width = 1305
        Height = 451
        ActivePage = TabSheet11
        Align = alClient
        MultiLine = True
        TabIndex = 0
        TabOrder = 1
        TabPosition = tpLeft
        object TabSheet11: TTabSheet
          Caption = 'CASTELL'#192
          object memocas4: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 443
            Align = alClient
            DataField = 'TextoInfSol'
            DataSource = dsConfig
            PopupMenu = Macros
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
    end
    object TabInfProves: TTabSheet
      Caption = 'Sol'#183'licitud proves especials'
      ImageIndex = 5
      object Splitter3: TSplitter
        Left = 0
        Top = 265
        Width = 1305
        Height = 4
        Cursor = crVSplit
        Align = alTop
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 269
        Width = 1305
        Height = 450
        ActivePage = TabSheet8
        Align = alClient
        MultiLine = True
        TabIndex = 0
        TabOrder = 0
        TabPosition = tpLeft
        object TabSheet8: TTabSheet
          Caption = 'CASTELL'#192
          object MemoCas3: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 442
            Align = alClient
            DataField = 'TextoProva'
            DataSource = dsConfig
            PopupMenu = Macros3
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
      object PageControl6: TPageControl
        Left = 0
        Top = 0
        Width = 1305
        Height = 265
        ActivePage = TabSheet9
        Align = alTop
        MultiLine = True
        TabIndex = 0
        TabOrder = 1
        TabPosition = tpLeft
        object TabSheet9: TTabSheet
          Caption = 'CATAL'#192
          object MemoCat3: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1278
            Height = 257
            Align = alClient
            Ctl3D = True
            DataField = 'TexteProva'
            DataSource = dsConfig
            ParentCtl3D = False
            PopupMenu = Macros3
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            OnMouseDown = MemoCatMouseDown
          end
        end
      end
    end
    object TabOM: TTabSheet
      Caption = 'Ordres m'#232'diques'
      ImageIndex = 6
      object HYArea1: THYArea
        Left = 0
        Top = 0
        Width = 1305
        Height = 719
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        DataSource = dsConfig
        object Shape6: TShape
          Left = 16
          Top = 368
          Width = 177
          Height = 97
          Brush.Color = 15263976
        end
        object Shape7: TShape
          Left = 16
          Top = 490
          Width = 177
          Height = 190
          Brush.Color = 15263976
        end
        object Shape8: TShape
          Left = 216
          Top = 608
          Width = 191
          Height = 72
          Brush.Color = 15263976
        end
        object Shape9: TShape
          Left = 216
          Top = 368
          Width = 511
          Height = 216
          Brush.Color = 15263976
        end
        object Ed_tConfiguracio_IvaMedicaments: THYEdit
          Left = 26
          Top = 384
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Medicaments'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 0
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'IvaMedicaments'
        end
        object Ed_tConfiguracio_IvaParafarmacia: THYEdit
          Left = 26
          Top = 408
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Parafarm'#224'cia'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 1
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'IvaParafarmacia'
        end
        object Ed_tConfiguracio_IvaSG: THYEdit
          Left = 26
          Top = 432
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Serveis Generals'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 2
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'IvaSG'
        end
        object Ed_tConfiguracio_C_EntradesProv: THYEdit
          Left = 26
          Top = 506
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Entrades Prov'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 3
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'C_EntradesProv'
        end
        object Ed_tConfiguracio_C_DevolucionsProv: THYEdit
          Left = 26
          Top = 530
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Devolucions Prov'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 4
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'C_DevolucionsProv'
        end
        object Ed_tConfiguracio_C_EntradesBoni: THYEdit
          Left = 26
          Top = 554
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Entrades Bonificacio'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 5
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'C_EntradesBoni'
        end
        object Ed_tConfiguracio_C_SortidaCentre: THYEdit
          Left = 26
          Top = 578
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Sortides Centres'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 6
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'C_SortidaCentre'
        end
        object Ed_tConfiguracio_C_DevolucioCentre: THYEdit
          Left = 26
          Top = 602
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Devolucio Centre'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 7
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'C_DevolucioCentre'
        end
        object Ed_tConfiguracio_C_DevolucioProvBoni: THYEdit
          Left = 26
          Top = 626
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Dev. Pvove'#239'dor Boni.'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 8
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'C_DevolucioProvBoni'
        end
        object Ed_tConfiguracio_C_Altres2: THYEdit
          Left = 26
          Top = 650
          Width = 153
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Altres 2'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 9
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'C_Altres2'
        end
        object Ed_tConfiguracio_DiesSeguretatStock: THYEdit
          Left = 226
          Top = 626
          Width = 167
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Dies Seguretat Stock'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 10
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'DiesSeguretatStock'
        end
        object Ed_tConfiguracio_DiesReposicioStock: THYEdit
          Left = 226
          Top = 650
          Width = 167
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Dies Reposici'#243' Stock'
          EtiSepara = 120
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 11
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'DiesReposicioStock'
        end
        object StaticText1: TStaticText
          Left = 24
          Top = 359
          Width = 62
          Height = 17
          Alignment = taCenter
          BevelKind = bkSoft
          Caption = ' Tipus d'#39'Iva '
          TabOrder = 12
        end
        object StaticText2: TStaticText
          Left = 24
          Top = 481
          Width = 105
          Height = 17
          Alignment = taCenter
          BevelKind = bkSoft
          Caption = ' Codis de Moviments '
          TabOrder = 13
        end
        object StaticText3: TStaticText
          Left = 224
          Top = 599
          Width = 100
          Height = 17
          Alignment = taCenter
          BevelKind = bkSoft
          Caption = ' Assignaci'#243' de Dies '
          TabOrder = 14
        end
        object HYMemo1: THYMemo
          Left = 226
          Top = 382
          Width = 489
          Height = 188
          DataField = 'TexteAlbarans'
          DataSource = dsConfig
          TabOrder = 15
        end
        object StaticText4: TStaticText
          Left = 224
          Top = 359
          Width = 81
          Height = 17
          Alignment = taCenter
          BevelKind = bkSoft
          Caption = ' Texte Albarans '
          TabOrder = 16
        end
        object Ed_Config_CaducitatInfermeria: THYEdit
          Left = 32
          Top = 72
          Width = 165
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Caducitat OM Infermeria'
          EtiSepara = 125
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 17
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'CaducitatInfermeria'
        end
        object Ed_Config_CaducitatOM: THYEdit
          Left = 32
          Top = 24
          Width = 165
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'CaducitatOM'
          EtiSepara = 125
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 18
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'CaducitatOM'
        end
        object Ed_Config_CaducitatOMcronica: THYEdit
          Left = 32
          Top = 48
          Width = 165
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Caducitat OM cr'#242'nica'
          EtiSepara = 125
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 19
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'CaducitatOMcronica'
        end
      end
    end
    object TabImpressions: TTabSheet
      Caption = 'Impressions'
      ImageIndex = 4
      object HYEdit1: THYEdit
        Left = 10
        Top = 64
        Width = 250
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Negrita On'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 2
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'NegritaOn'
      end
      object HYEdit2: THYEdit
        Left = 10
        Top = 88
        Width = 250
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Negrita Off'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 3
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'NegritaOff'
      end
      object HYEdit3: THYEdit
        Left = 10
        Top = 112
        Width = 250
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Subrrallat On'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 4
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'SubrrallayOn'
      end
      object HYEdit4: THYEdit
        Left = 10
        Top = 136
        Width = 250
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Subrrallat Off'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 5
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'SubrrallatOff'
      end
      object HYEdit5: THYEdit
        Left = 10
        Top = 160
        Width = 250
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Grande'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 6
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'Grande'
      end
      object HYEdit6: THYEdit
        Left = 10
        Top = 184
        Width = 250
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Normal'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 7
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'Normal'
      end
      object HYEdit11: THYEdit
        Left = 10
        Top = 40
        Width = 250
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Init Print'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 1
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'InitPrint'
      end
      object HYEdit10: THYEdit
        Left = 10
        Top = 8
        Width = 169
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Lin. per p'#224'gina'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 0
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'LinPag'
      end
    end
    object TabMisc: TTabSheet
      Caption = 'Misc'
      ImageIndex = 2
      DesignSize = (
        1305
        719)
      object Ed_Configura_Minuts: THYEdit
        Left = 10
        Top = 5
        Width = 111
        Height = 35
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Minuts desconexi'#243
        EtiSepara = 16
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 0
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'Minuts'
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 46
        Width = 573
        Height = 97
        Caption = 'Configuraci'#243' de Monedes'
        TabOrder = 1
        object bDecimals: TSpeedButton
          Left = 264
          Top = 67
          Width = 113
          Height = 22
          Caption = 'Aplicar nou valor'
          Enabled = False
          OnClick = bDecimalsClick
        end
        object HYEdit13: THYEdit
          Left = 30
          Top = 20
          Width = 199
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Nom moneda catal'#224
          EtiSepara = 130
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 0
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'MonedaCat'
        end
        object HYEdit14: THYEdit
          Left = 30
          Top = 44
          Width = 201
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Abreviaci'#243' moneda cat.'
          EtiSepara = 130
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 1
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'MonedaCatCurt'
        end
        object HYEdit15: THYEdit
          Left = 268
          Top = 20
          Width = 199
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Nom moneda castell'#224
          EtiSepara = 130
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 2
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'MonedaEsp'
        end
        object HYEdit16: THYEdit
          Left = 268
          Top = 44
          Width = 199
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Abreviaci'#243' moneda cast.'
          EtiSepara = 130
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 3
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'MonedaEspCurt'
        end
        object EditDecimals: THYTextEdit
          Left = 30
          Top = 69
          Width = 201
          Height = 19
          Projecto = wData.Projecte
          Eti = 'Decimals moneda'
          EtiSepara = 130
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          OnChange = EditDecimalsChange
          TabOrder = 4
          TabStop = True
          AutoSelect = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 150
        Width = 573
        Height = 369
        Caption = 'Par'#224'metres Guttmann'
        TabOrder = 2
        object Eti_Configura_Series_C_Periode: THYLabel
          Left = 274
          Top = 96
          Width = 111
          Height = 19
          DataField = 'Series_C_Periode'
          DataSource = dsConfig
          EtiFontColor = -1
          HyColorNo = False
          Etiqueta = 'Per'#237'ode'
          EtiSepara = 60
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
        end
        object Eti_Configura_Series_Contador: THYLabel
          Left = 402
          Top = 96
          Width = 123
          Height = 19
          DataField = 'Series_Contador'
          DataSource = dsConfig
          EtiFontColor = -1
          HyColorNo = False
          Etiqueta = 'Comptador'
          EtiSepara = 80
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
        end
        object Ed_Configura_Adresa: THYEdit
          Left = 10
          Top = 24
          Width = 550
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Adre'#231'a'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 0
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'Adresa'
        end
        object Ed_Configura_Ciutat: THYEdit
          Left = 10
          Top = 48
          Width = 550
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Ciutat'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 1
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'Ciutat'
        end
        object Ed_Configura_Adresa2: THYEdit
          Left = 10
          Top = 72
          Width = 550
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Adre'#231'a curta'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 2
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'Adresa2'
        end
        object Ed_Configura_SerieRappels: THYEdit
          Left = 10
          Top = 96
          Width = 255
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'S'#232'rie factu r'#224'ppels'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 3
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'SerieRappels'
        end
        object Ed_Configura_Iva1: THYEdit
          Left = 10
          Top = 120
          Width = 199
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'IVA 1'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 4
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'Iva1'
        end
        object Ed_Configura_Iva2: THYEdit
          Left = 277
          Top = 120
          Width = 108
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'IVA 2'
          EtiSepara = 57
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 5
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'Iva2'
        end
        object Ed_Configura_Iva3: THYEdit
          Left = 405
          Top = 120
          Width = 120
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'IVA pr'#242'tesis'
          EtiSepara = 77
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 6
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'Iva3'
        end
        object Ed_Configura_C_UP: THYEdit
          Left = 10
          Top = 144
          Width = 199
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Unitat productiva'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 7
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'C_UP'
        end
        object Ed_Configura_N_Hospital: THYEdit
          Left = 10
          Top = 168
          Width = 550
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Nom hospital'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 8
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'N_Hospital'
        end
        object Ed_Configura_NIF: THYEdit
          Left = 10
          Top = 192
          Width = 311
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'NIF'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 9
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'NIF'
        end
        object Ed_Configura_CCGuttmann: THYEdit
          Left = 10
          Top = 216
          Width = 311
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'CC Guttmann'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 10
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'CCGuttmann'
        end
        object Ed_Configura_Resp_Factu: THYEdit
          Left = 10
          Top = 240
          Width = 550
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Responsable Dep. Facturaci'#243
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 11
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'Resp_Factu'
        end
        object Ed_Configura_Resp_Farma: THYEdit
          Left = 10
          Top = 264
          Width = 550
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Cap de Servei de Farm'#224'cia'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 12
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'Resp_Farma'
        end
        object Ed_Configura_N_RegioSanitaria: THYEdit
          Left = 10
          Top = 288
          Width = 475
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Nom regi'#243' sanit'#224'ria'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 13
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'N_RegioSanitaria'
        end
        object Ed_Configura_AdresaRegioSanitaria: THYEdit
          Left = 10
          Top = 313
          Width = 550
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Adre'#231'a regi'#243' sanit'#224'ria'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 14
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'AdresaRegioSanitaria'
        end
        object Ed_Configura_OrdreInternet: THYEdit
          Left = 10
          Top = 338
          Width = 215
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'N'#250'm. ordre SCS internet'
          EtiSepara = 150
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 15
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'OrdreInternet'
        end
        object HYEdit18: THYEdit
          Left = 295
          Top = 338
          Width = 265
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'NIF SCS'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 16
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'SCS_Nif'
        end
      end
      object Ed_Configura_TancamentContable: THYEdit
        Left = 443
        Top = 5
        Width = 137
        Height = 35
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Data tancament comptable'
        EtiSepara = 16
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 3
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'TancamentContable'
      end
      object HYEdit42: THYEdit
        Left = 18
        Top = 531
        Width = 550
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Literal d'#39'IVA exempt catal'#224
        EtiSepara = 150
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 4
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'IvaExempt'
      end
      object HYEdit23: THYEdit
        Left = 18
        Top = 554
        Width = 550
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Literal d'#39'IVA exempt castell'#224
        EtiSepara = 150
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 5
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'IvaExempt2'
      end
      object HYEdit26: THYEdit
        Left = 138
        Top = 5
        Width = 135
        Height = 35
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Quantes anotacions veure'
        EtiSepara = 16
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataConfig.Config
        TabOrder = 6
        AutoSelect = False
        DataSource = dsConfig
        DataField = 'QuantesAnotacions'
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 583
        Width = 337
        Height = 134
        Caption = ' Posici'#243' pressupost'#224'ria  '
        TabOrder = 7
        object HYEdit41: THYEdit
          Left = 8
          Top = 17
          Width = 313
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Aguts'
          EtiSepara = 110
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 0
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'PPAGUTS'
        end
        object HYEdit38: THYEdit
          Left = 8
          Top = 38
          Width = 313
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'MHDA'
          EtiSepara = 110
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 1
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'PPMHDA'
        end
        object HYEdit39: THYEdit
          Left = 8
          Top = 62
          Width = 313
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Material incontin'#232'ncia'
          EtiSepara = 110
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 2
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'PPMINCON'
        end
        object HYEdit40: THYEdit
          Left = 8
          Top = 84
          Width = 313
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Material ortoprot'#232'tic'
          EtiSepara = 110
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 3
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'PPMORTO'
        end
        object HYEdit43: THYEdit
          Left = 8
          Top = 105
          Width = 315
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Pades'
          EtiSepara = 110
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataConfig.Config
          TabOrder = 4
          AutoSelect = False
          DataSource = dsConfig
          DataField = 'PPPADES'
        end
      end
      object Panel5: TPanel
        Left = 592
        Top = 10
        Width = 497
        Height = 708
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvLowered
        ParentColor = True
        TabOrder = 8
        object HYGrid3: THYGrid
          Left = 1
          Top = 26
          Width = 495
          Height = 681
          Align = alClient
          Color = clWhite
          Ctl3D = True
          DataSource = dsHorarisFunc
          DefaultDrawing = False
          FixedColor = clSilver
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          DefaultRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Funcio'
              Title.Caption = 'F.'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'funcio_N_Codi'
              Title.Caption = 'Funci'#243
              Width = 166
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dia'
              Title.Caption = 'Dia'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dia_N_Codi'
              Title.Caption = 'Dia setmana'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hora_i'
              Title.Caption = 'h inici'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Min_i'
              Title.Caption = 'm inici'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hora_f'
              Title.Caption = 'h fi'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Min_f'
              Title.Caption = 'm fi'
              Width = 40
              Visible = True
            end>
        end
        object HYBarra4: THYBarra
          Left = 1
          Top = 1
          Width = 495
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 'Horaris funcions (circuits fora d'#39'hores)     '
          ParentColor = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          DataSource = dsHorarisFunc
          VerEditar = False
          VerConsultar = False
          VerOrdenar = False
          VerSiguiente = False
          VerAnterior = False
          VerPrimero = False
          VerUltimo = False
          VerSalir = False
          VerIndices = False
          Titulo = False
          VerPrint = False
          VerRefresh = True
          object SpeedButton2: TSpeedButton
            Left = 262
            Top = -1
            Width = 32
            Height = 25
            Caption = 'Test'
            Flat = True
            Margin = 2
            Spacing = 0
            OnClick = SpeedButton2Click
          end
          object edFunc: THYTextEdit
            Left = 88
            Top = 4
            Width = 169
            Height = 19
            Projecto = wData.Projecte
            Tipo = teConsultaCustom
            ConsultaCustom = cFuncionsFH
            Eti = 'Funci'#243
            EtiSepara = 40
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            TabOrder = 0
            TabStop = True
            AutoSelect = False
          end
        end
      end
    end
  end
  object dsConfig: TDataSource
    DataSet = Config
    Left = 1016
    Top = 168
  end
  object Config: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONFIG'
      ''
      'ORDER BY CONFIG.'#39'Clau'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataConfig.Config
    IndiceActivo = 'Clau'
    CalcSimple = False
    AutoPost = False
    Left = 956
    Top = 168
    object Config_Clau: TIntegerField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'Clau'
    end
    object Config_Minuts: TIntegerField
      Tag = 100
      DisplayLabel = 'Minuts Desconexi'#243
      DisplayWidth = 8
      FieldName = 'Minuts'
      DisplayFormat = '#,##0;; '
    end
    object Config_PathEpi: TStringField
      Tag = 100
      DisplayLabel = 'Path Epi'
      DisplayWidth = 40
      FieldName = 'PathEpi'
      Size = 40
    end
    object Config_PathFili: TStringField
      Tag = 100
      DisplayLabel = 'Path Fili'
      DisplayWidth = 40
      FieldName = 'PathFili'
      Size = 40
    end
    object Config_PathGestio: TStringField
      Tag = 100
      DisplayLabel = 'Path Gestio'
      DisplayWidth = 40
      FieldName = 'PathGestio'
      Size = 40
    end
    object Config_PathCurs: TStringField
      Tag = 100
      DisplayLabel = 'Path Curs'
      DisplayWidth = 40
      FieldName = 'PathCurs'
      Size = 40
    end
    object Config_PathAnal: TStringField
      Tag = 100
      DisplayLabel = 'Path Analitica'
      DisplayWidth = 40
      FieldName = 'PathAnal'
      Size = 40
    end
    object Config_PathFarma: TStringField
      Tag = 100
      DisplayLabel = 'Path Farma'
      DisplayWidth = 40
      FieldName = 'PathFarma'
      Size = 40
    end
    object Config_PathStocs: TStringField
      Tag = 100
      DisplayLabel = 'Path Stocks'
      DisplayWidth = 40
      FieldName = 'PathStocs'
      Size = 40
    end
    object Config_NegritaOn: TStringField
      Tag = 100
      DisplayLabel = 'Negrita On'
      DisplayWidth = 40
      FieldName = 'NegritaOn'
      Size = 40
    end
    object Config_NegritaOff: TStringField
      Tag = 100
      DisplayLabel = 'Negrita Off'
      DisplayWidth = 40
      FieldName = 'NegritaOff'
      Size = 40
    end
    object Config_SubrrallayOn: TStringField
      Tag = 100
      DisplayLabel = 'Subrrallat On'
      DisplayWidth = 40
      FieldName = 'SubrrallayOn'
      Size = 40
    end
    object Config_SubrrallatOff: TStringField
      Tag = 100
      DisplayLabel = 'Subrrallat Off'
      DisplayWidth = 40
      FieldName = 'SubrrallatOff'
      Size = 40
    end
    object Config_Grande: TStringField
      Tag = 100
      DisplayWidth = 40
      FieldName = 'Grande'
      Size = 40
    end
    object Config_Normal: TStringField
      Tag = 100
      DisplayWidth = 40
      FieldName = 'Normal'
      Size = 40
    end
    object Config_TexteRevi: TMemoField
      Tag = 100
      DisplayLabel = 'Texte Revi'
      DisplayWidth = 1
      FieldName = 'TexteRevi'
      BlobType = ftMemo
      Size = 1
    end
    object Config_TextoRevi: TMemoField
      Tag = 100
      DisplayLabel = 'Texto Revi'
      DisplayWidth = 1
      FieldName = 'TextoRevi'
      BlobType = ftMemo
      Size = 1
    end
    object Config_TexteInfAlta: TMemoField
      Tag = 100
      DisplayLabel = 'Texte Inf.Alta'
      DisplayWidth = 1
      FieldName = 'TexteInfAlta'
      BlobType = ftMemo
      Size = 1
    end
    object Config_TextoInfAlta: TMemoField
      Tag = 100
      DisplayLabel = 'Texto Inf.Alta'
      DisplayWidth = 1
      FieldName = 'TextoInfAlta'
      BlobType = ftMemo
      Size = 1
    end
    object Config_UnitatRed: TStringField
      Tag = 100
      DisplayLabel = 'Unitat Red comuna:'
      DisplayWidth = 10
      FieldName = 'UnitatRed'
      Size = 10
    end
    object Config_InitPrint: TStringField
      Tag = 100
      DisplayLabel = 'Init Print'
      DisplayWidth = 40
      FieldName = 'InitPrint'
      Size = 40
    end
    object Config_LinPag: TIntegerField
      Tag = 100
      DisplayLabel = 'Lin. per p'#224'gina'
      DisplayWidth = 8
      FieldName = 'LinPag'
      DisplayFormat = '#,##0;; '
    end
    object Config_TexteProva: TMemoField
      Tag = 100
      DisplayLabel = 'Texte Full ProvaEsp'
      DisplayWidth = 1
      FieldName = 'TexteProva'
      BlobType = ftMemo
      Size = 1
    end
    object Config_TextoProva: TMemoField
      Tag = 100
      DisplayLabel = 'Texto Hoja ProvaEsp'
      DisplayWidth = 1
      FieldName = 'TextoProva'
      BlobType = ftMemo
      Size = 1
    end
    object Config_PathExe: TStringField
      Tag = 100
      DisplayLabel = 'Path Exe Curs'
      DisplayWidth = 100
      FieldName = 'PathExe'
      Size = 100
    end
    object Config_MaxFinestres: TSmallintField
      Tag = 100
      DisplayLabel = 'Maxim de Finestres Obertes'
      DisplayWidth = 2
      FieldName = 'MaxFinestres'
      DisplayFormat = '#,##0;; '
    end
    object Config_MinutsAdmissions: TIntegerField
      Tag = 100
      DisplayLabel = 'Minuts Desconexi'#243' Admissions'
      DisplayWidth = 8
      FieldName = 'MinutsAdmissions'
      DisplayFormat = '#,##0;; '
    end
    object Config_MonedaCatCurt: TStringField
      Tag = 100
      DisplayLabel = 'Abreviacio Moneda Cat'
      DisplayWidth = 5
      FieldName = 'MonedaCatCurt'
      Size = 5
    end
    object Config_MonedaEspCurt: TStringField
      Tag = 100
      DisplayLabel = 'Abreviacio Moneda Esp'
      DisplayWidth = 5
      FieldName = 'MonedaEspCurt'
      Size = 5
    end
    object Config_MonedaCat: TStringField
      Tag = 100
      DisplayLabel = 'Nom Moneda Catal'#224
      DisplayWidth = 8
      FieldName = 'MonedaCat'
      Size = 8
    end
    object Config_MonedaEsp: TStringField
      Tag = 100
      DisplayLabel = 'Nom Moneda Espanyol'
      DisplayWidth = 8
      FieldName = 'MonedaEsp'
      Size = 8
    end
    object Config_Adresa: TStringField
      Tag = 100
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 100
      FieldName = 'Adresa'
      Size = 100
    end
    object Config_Ciutat: TStringField
      Tag = 100
      DisplayWidth = 60
      FieldName = 'Ciutat'
      Size = 60
    end
    object Config_Adresa2: TStringField
      Tag = 100
      DisplayLabel = 'Adre'#231'a Curta'
      DisplayWidth = 50
      FieldName = 'Adresa2'
      Size = 50
    end
    object Config_SerieRappels: TStringField
      Tag = 100
      DisplayLabel = 'Serie Factu Rappels'
      DisplayWidth = 40
      FieldName = 'SerieRappels'
      Size = 40
    end
    object Config_Iva1: TFloatField
      Tag = 100
      DisplayWidth = 5
      FieldName = 'Iva1'
      DisplayFormat = '#,##0.###" %";; '
    end
    object Config_Iva2: TFloatField
      Tag = 100
      DisplayWidth = 5
      FieldName = 'Iva2'
      DisplayFormat = '#,##0.###" %";; '
    end
    object Config_Iva3: TFloatField
      Tag = 100
      DisplayWidth = 5
      FieldName = 'Iva3'
      DisplayFormat = '#,##0.###" %";; '
    end
    object Config_C_UP: TStringField
      Tag = 100
      DisplayLabel = 'Unitat Productiva'
      DisplayWidth = 4
      FieldName = 'C_UP'
      Size = 4
    end
    object Config_N_Hospital: TStringField
      Tag = 100
      DisplayLabel = 'Nom Hospital'
      DisplayWidth = 80
      FieldName = 'N_Hospital'
      Size = 80
    end
    object Config_NIF: TStringField
      Tag = 100
      DisplayWidth = 20
      FieldName = 'NIF'
    end
    object Config_CCGuttmann: TStringField
      Tag = 100
      DisplayLabel = 'CC Guttmann'
      DisplayWidth = 40
      FieldName = 'CCGuttmann'
      Size = 40
    end
    object Config_Resp_Factu: TStringField
      Tag = 100
      DisplayLabel = 'Responsable departament Facturaci'#243
      DisplayWidth = 100
      FieldName = 'Resp_Factu'
      Size = 100
    end
    object Config_Resp_Farma: TStringField
      Tag = 100
      DisplayLabel = 'Cap de Servei de Farm'#224'cia'
      DisplayWidth = 100
      FieldName = 'Resp_Farma'
      Size = 100
    end
    object Config_N_RegioSanitaria: TStringField
      Tag = 100
      DisplayLabel = 'Nom Regio Sanitaria'
      DisplayWidth = 40
      FieldName = 'N_RegioSanitaria'
      Size = 40
    end
    object Config_AdresaRegioSanitaria: TStringField
      Tag = 100
      DisplayLabel = 'Adre'#231'a Regio Sanitaria'
      DisplayWidth = 100
      FieldName = 'AdresaRegioSanitaria'
      Size = 100
    end
    object Config_OrdreInternet: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#186' Ordre SCS Internet'
      DisplayWidth = 3
      FieldName = 'OrdreInternet'
    end
    object Config_SCS_Nif: TStringField
      Tag = 100
      DisplayLabel = 'NIF SCS'
      DisplayWidth = 20
      FieldName = 'SCS_Nif'
    end
    object Config_DataPrevisio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Previsio Facturacio'
      DisplayWidth = 11
      FieldName = 'DataPrevisio'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Config_IvaMedicaments: TFloatField
      Tag = 100
      DisplayLabel = 'Iva Medicaments'
      DisplayWidth = 2
      FieldName = 'IvaMedicaments'
    end
    object Config_IvaParafarmacia: TFloatField
      Tag = 100
      DisplayLabel = 'Iva Parafarm'#224'cia'
      DisplayWidth = 2
      FieldName = 'IvaParafarmacia'
    end
    object Config_IvaSG: TFloatField
      Tag = 100
      DisplayLabel = 'Iva Serveis Generals'
      DisplayWidth = 2
      FieldName = 'IvaSG'
    end
    object Config_C_EntradesProv: TStringField
      Tag = 100
      DisplayLabel = 'Codi Moviment Entrades Prov'
      DisplayWidth = 2
      FieldName = 'C_EntradesProv'
      Size = 2
    end
    object Config_C_DevolucionsProv: TStringField
      Tag = 100
      DisplayLabel = 'Codi Moviment Devolucions Prov'
      DisplayWidth = 2
      FieldName = 'C_DevolucionsProv'
      Size = 2
    end
    object Config_C_EntradesBoni: TStringField
      Tag = 100
      DisplayLabel = 'Codi Moviment Entrades Bonificacio'
      DisplayWidth = 2
      FieldName = 'C_EntradesBoni'
      Size = 2
    end
    object Config_C_SortidaCentre: TStringField
      Tag = 100
      DisplayLabel = 'Codi Moviment Sortides Centres'
      DisplayWidth = 2
      FieldName = 'C_SortidaCentre'
      Size = 2
    end
    object Config_C_DevolucioCentre: TStringField
      Tag = 100
      DisplayLabel = 'Codi Moviment Devolucio Centre'
      DisplayWidth = 2
      FieldName = 'C_DevolucioCentre'
      Size = 2
    end
    object Config_C_DevolucioProvBoni: TStringField
      Tag = 100
      DisplayLabel = 'Codi Moviment Devolucio Pvove'#239'dor Bonificacio'
      DisplayWidth = 2
      FieldName = 'C_DevolucioProvBoni'
      Size = 2
    end
    object Config_C_Altres2: TStringField
      Tag = 100
      DisplayLabel = 'Codi Moviment Altres 2'
      DisplayWidth = 2
      FieldName = 'C_Altres2'
      Size = 2
    end
    object Config_C_TancamentMes: TStringField
      Tag = 100
      DisplayLabel = 'Codi Moviment Tancament Mes'
      DisplayWidth = 2
      FieldName = 'C_TancamentMes'
      Size = 2
    end
    object Config_C_RegularitzacioTancament: TStringField
      Tag = 100
      DisplayLabel = 'Codi Regularitzacio Tancament'
      DisplayWidth = 2
      FieldName = 'C_RegularitzacioTancament'
      Size = 2
    end
    object Config_DiesSeguretatStock: TIntegerField
      Tag = 100
      DisplayLabel = 'Dies Seguretat Stock'
      DisplayWidth = 2
      FieldName = 'DiesSeguretatStock'
    end
    object Config_DiesReposicioStock: TIntegerField
      Tag = 100
      DisplayLabel = 'Dies Reposici'#243' Stock'
      DisplayWidth = 2
      FieldName = 'DiesReposicioStock'
    end
    object Config_TexteAlbarans: TMemoField
      Tag = 100
      DisplayLabel = 'Texte Albarans'
      DisplayWidth = 500
      FieldName = 'TexteAlbarans'
      BlobType = ftMemo
      Size = 500
    end
    object Config_TexteAlbarans2: TMemoField
      Tag = 100
      DisplayLabel = 'Texte Albarans Castell'#224
      DisplayWidth = 500
      FieldName = 'TexteAlbarans2'
      BlobType = ftMemo
      Size = 500
    end
    object Config_TancamentContable: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Tancament Contable'
      DisplayWidth = 20
      FieldName = 'TancamentContable'
    end
    object Config_ComptadorComandes: TIntegerField
      Tag = 100
      DisplayLabel = 'Comptador Comandes'
      DisplayWidth = 8
      FieldName = 'ComptadorComandes'
      DisplayFormat = '#,##0;; '
    end
    object Config_AnyEnCurs: TIntegerField
      Tag = 100
      DisplayLabel = 'Any En Curs (per numeraci'#243')'
      DisplayWidth = 8
      FieldName = 'AnyEnCurs'
      DisplayFormat = '#,##0;; '
    end
    object Config_CaducitatOM: TSmallintField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'CaducitatOM'
    end
    object Config_CaducitatInfermeria: TSmallintField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'CaducitatInfermeria'
    end
    object Config_HoresValidaCurs: TSmallintField
      Tag = 100
      DisplayLabel = 'Hores Valida Curs'
      DisplayWidth = 2
      FieldName = 'HoresValidaCurs'
    end
    object Config_CCRegularitzacio: TIntegerField
      Tag = 100
      DisplayLabel = 'Centre de Cost Regularitzaci'#243
      DisplayWidth = 5
      FieldName = 'CCRegularitzacio'
    end
    object Config_CCStocks: TIntegerField
      Tag = 100
      DisplayLabel = 'Centre de cost Stocks'
      DisplayWidth = 5
      FieldName = 'CCStocks'
    end
    object Config_CCMedicaments: TIntegerField
      Tag = 100
      DisplayLabel = 'Centre de cost Med.Us Hosp.'
      DisplayWidth = 5
      FieldName = 'CCMedicaments'
    end
    object Config_CCFarma: TIntegerField
      Tag = 100
      DisplayLabel = 'Centre de Cost Farm'#224'cia'
      DisplayWidth = 5
      FieldName = 'CCFarma'
    end
    object Config_CCExistencies: TIntegerField
      Tag = 100
      DisplayLabel = 'Centre de Cost Existencies'
      DisplayWidth = 5
      FieldName = 'CCExistencies'
    end
    object Config_MetgeInterfero: TStringField
      Tag = 100
      DisplayLabel = 'Metge Interfer'#243
      DisplayWidth = 5
      FieldName = 'MetgeInterfero'
      Size = 5
    end
    object Config_CompteDifStocks: TStringField
      Tag = 100
      DisplayLabel = 'Compte Difer'#232'ncies Stocks'
      DisplayWidth = 11
      FieldName = 'CompteDifStocks'
      Size = 11
    end
    object Config_CompteFarmacia: TStringField
      Tag = 100
      DisplayLabel = 'Compte Farmacia'
      DisplayWidth = 11
      FieldName = 'CompteFarmacia'
      Size = 11
    end
    object Config_AnalitRMP: TMemoField
      Tag = 100
      DisplayLabel = 'Anal'#237'tiques RMP'
      DisplayWidth = 1
      FieldName = 'AnalitRMP'
      BlobType = ftMemo
      Size = 1
    end
    object Config_TelefonFarmacia: TStringField
      Tag = 100
      DisplayLabel = 'Tel'#232'fon Farm'#224'cia'
      DisplayWidth = 40
      FieldName = 'TelefonFarmacia'
      Size = 40
    end
    object Config_AnalitRMPH50: TMemoField
      Tag = 100
      DisplayLabel = 'Anal'#237'tiques RMP Home 50'
      DisplayWidth = 1
      FieldName = 'AnalitRMPH50'
      BlobType = ftMemo
      Size = 1
    end
    object Config_FaxFarmacia: TStringField
      Tag = 100
      DisplayLabel = 'Fax Farm'#224'cia'
      DisplayWidth = 40
      FieldName = 'FaxFarmacia'
      Size = 40
    end
    object Config_IvaExempt: TStringField
      Tag = 100
      DisplayLabel = 'Literal d'#39'Iva Exempt Catal'#224
      DisplayWidth = 100
      FieldName = 'IvaExempt'
      Size = 100
    end
    object Config_IvaExempt2: TStringField
      Tag = 100
      DisplayLabel = 'Literal d'#39'Iva Exempt Castell'#224
      DisplayWidth = 100
      FieldName = 'IvaExempt2'
      Size = 100
    end
    object Config_DuracioDisp: TSmallintField
      Tag = 100
      DisplayLabel = 'Duracio Dispensaci'#243
      DisplayWidth = 2
      FieldName = 'DuracioDisp'
    end
    object Config_QuantesAnotacions: TIntegerField
      Tag = 100
      DisplayLabel = 'Quantes anotacions veure'
      DisplayWidth = 4
      FieldName = 'QuantesAnotacions'
    end
    object Config_AnalitRMPH50_2: TMemoField
      Tag = 100
      DisplayLabel = 'Anal'#237'tiques RMP H50 unitat 2'
      DisplayWidth = 1
      FieldName = 'AnalitRMPH50_2'
      BlobType = ftMemo
      Size = 1
    end
    object Config_AnaliRMP_2: TMemoField
      Tag = 100
      DisplayLabel = 'Anal'#237'tiques RMP unitat 2'
      DisplayWidth = 1
      FieldName = 'AnaliRMP_2'
      BlobType = ftMemo
      Size = 1
    end
    object Config_CaducitatEscalesI: TIntegerField
      Tag = 100
      DisplayLabel = 'Caducitat escales ingr'#233's'
      DisplayWidth = 8
      FieldName = 'CaducitatEscalesI'
    end
    object Config_DiesEscalesA: TIntegerField
      Tag = 100
      DisplayLabel = 'Dies escales alta'
      DisplayWidth = 8
      FieldName = 'DiesEscalesA'
    end
    object Config_CaducitatEscalesA: TIntegerField
      Tag = 100
      DisplayLabel = 'Caducitat escales alta'
      DisplayWidth = 8
      FieldName = 'CaducitatEscalesA'
    end
    object Config_CaducitatEscalesR: TIntegerField
      Tag = 100
      DisplayLabel = 'Caducitat escales revisi'#243
      DisplayWidth = 8
      FieldName = 'CaducitatEscalesR'
    end
    object Config_AnalitRMP_LM: TMemoField
      Tag = 100
      DisplayLabel = 'Anal'#237'tiques RMP LM'
      DisplayWidth = 1
      FieldName = 'AnalitRMP_LM'
      BlobType = ftMemo
      Size = 1
    end
    object Config_AnalitRMP50_LM: TMemoField
      Tag = 100
      DisplayLabel = 'Anal'#237'tiques RMP 50 LM'
      DisplayWidth = 1
      FieldName = 'AnalitRMP50_LM'
      BlobType = ftMemo
      Size = 1
    end
    object Config_NUMIRFPAI: TSmallintField
      Tag = 100
      DisplayLabel = 'Num fitxer IRF-PAI'
      DisplayWidth = 3
      FieldName = 'NUMIRFPAI'
    end
    object Config_TexteInfSol: TMemoField
      Tag = 100
      DisplayLabel = 'Texte Informe Sol'#183'licitat'
      DisplayWidth = 1
      FieldName = 'TexteInfSol'
      BlobType = ftMemo
      Size = 1
    end
    object Config_TextoInfSol: TMemoField
      Tag = 100
      DisplayLabel = 'Texto Informe Sol'#183'lictat'
      DisplayWidth = 1
      FieldName = 'TextoInfSol'
      BlobType = ftMemo
      Size = 1
    end
    object Config_LinPerPag_GuiaFarma: TIntegerField
      Tag = 100
      DisplayLabel = 'Linies per p'#224'gina Guia Farmacoterap'#232'utica'
      DisplayWidth = 8
      FieldName = 'LinPerPag_GuiaFarma'
      DisplayFormat = '#,##0;; '
    end
    object Config_C_UP_SS: TStringField
      Tag = 100
      DisplayLabel = 'Codi UP Pades'
      DisplayWidth = 4
      FieldName = 'C_UP_SS'
      Size = 4
    end
    object Config_SS_NIF: TStringField
      Tag = 100
      DisplayLabel = 'NIF Pades'
      DisplayWidth = 20
      FieldName = 'SS_NIF'
    end
    object Config_CCGuttPades: TStringField
      Tag = 100
      DisplayLabel = 'CC Pades'
      DisplayWidth = 40
      FieldName = 'CCGuttPades'
      Size = 40
    end
    object Config_ADRESA_SS: TStringField
      Tag = 100
      DisplayLabel = 'Adre'#231'a Pades'
      DisplayWidth = 100
      FieldName = 'ADRESA_SS'
      Size = 100
    end
    object Config_N_FUNDACIO: TStringField
      Tag = 100
      DisplayLabel = 'Nom Fundaci'#243
      DisplayWidth = 80
      FieldName = 'N_FUNDACIO'
      Size = 80
    end
    object Config_N_RS_SS: TStringField
      Tag = 100
      DisplayLabel = 'Nom regi'#243' sanit'#224'ria Pades'
      DisplayWidth = 40
      FieldName = 'N_RS_SS'
      Size = 40
    end
    object Config_ADRESARS_SS: TStringField
      Tag = 100
      DisplayLabel = 'Adre'#231'a RS Pades'
      DisplayWidth = 100
      FieldName = 'ADRESARS_SS'
      Size = 100
    end
    object Config_CIUTAT_SS: TStringField
      Tag = 100
      DisplayLabel = 'Ciutat Pades'
      DisplayWidth = 60
      FieldName = 'CIUTAT_SS'
      Size = 60
    end
    object Config_SERIEPADES: TStringField
      Tag = 100
      DisplayLabel = 'Serie Factu Pades'
      DisplayWidth = 40
      FieldName = 'SERIEPADES'
      Size = 40
    end
    object Config_PPAGUTS: TStringField
      Tag = 100
      DisplayLabel = 'Posici'#243' pressupost'#224'ria aguts'
      DisplayWidth = 25
      FieldName = 'PPAGUTS'
      Size = 25
    end
    object Config_PPMHDA: TStringField
      Tag = 100
      DisplayLabel = 'Posici'#243' pressupost'#224'ria mhda'
      DisplayWidth = 25
      FieldName = 'PPMHDA'
      Size = 25
    end
    object Config_PPMINCON: TStringField
      Tag = 100
      DisplayLabel = 'Posici'#243' pressupost'#224'ria mat.incontin'#232'ncia'
      DisplayWidth = 25
      FieldName = 'PPMINCON'
      Size = 25
    end
    object Config_PPMORTO: TStringField
      Tag = 100
      DisplayLabel = 'Posici'#243' pressupost'#224'ria mat.ortoprot'#232'tic'
      DisplayWidth = 25
      FieldName = 'PPMORTO'
      Size = 25
    end
    object Config_PPPADES: TStringField
      Tag = 100
      DisplayLabel = 'Posici'#243' pressupost'#224'ria PADES'
      DisplayWidth = 25
      FieldName = 'PPPADES'
      Size = 25
    end
    object Config_ConveniUnespa: TIntegerField
      Tag = 100
      DisplayLabel = 'Conveni Unespa Actiu'
      DisplayWidth = 2
      FieldName = 'ConveniUnespa'
      DisplayFormat = '#,##0;; '
    end
    object Config_TextInfAltaRevi: TMemoField
      Tag = 100
      DisplayLabel = 'Text Inf Alta Revi'
      DisplayWidth = 1
      FieldName = 'TextInfAltaRevi'
      BlobType = ftMemo
      Size = 1
    end
    object Config_TextoInfAltaRevi: TMemoField
      Tag = 100
      DisplayLabel = 'Texto Inf Alta Revi'
      DisplayWidth = 1
      FieldName = 'TextoInfAltaRevi'
      BlobType = ftMemo
      Size = 1
    end
    object Config_SERIENPC: TStringField
      Tag = 100
      DisplayLabel = 'Serie Factu NPC'
      DisplayWidth = 40
      FieldName = 'SERIENPC'
      Size = 40
    end
    object Config_RCA_CLAU: TStringField
      Tag = 100
      DisplayLabel = 'Clau RCA'
      DisplayWidth = 20
      FieldName = 'RCA_CLAU'
    end
    object Config_VERSIO_CIM: TStringField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 40
      FieldName = 'VERSIO_CIM'
      Size = 40
    end
    object Config_DATA_FUSIO: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data fusi'#243
      DisplayWidth = 11
      FieldName = 'DATA_FUSIO'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object Config_DATA_ESTOCS_HL7: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data HL7 Estocs'
      DisplayWidth = 10
      FieldName = 'DATA_ESTOCS_HL7'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object Config_NUM_DCMIH: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero fitxer DCMIH'
      DisplayWidth = 3
      FieldName = 'NUM_DCMIH'
      DisplayFormat = '#,##0;; '
    end
    object Config_DataConsolidatFins: TDateTimeField
      Tag = 100
      DisplayWidth = 11
      FieldName = 'DataConsolidatFins'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object Config_CaducitatOMcronica: TIntegerField
      Tag = 100
      DisplayLabel = 'Caducitat OM cr'#242'nica'
      DisplayWidth = 8
      FieldName = 'CaducitatOMcronica'
    end
    object Config_DiesAvisOMCaduca: TSmallintField
      Tag = 100
      DisplayLabel = 'Dies av'#237's OM caduca'
      DisplayWidth = 2
      FieldName = 'DiesAvisOMCaduca'
    end
    object Config_MaxPassisCdS: TSmallintField
      Tag = 100
      DisplayLabel = 'M'#224'xim passis cap de setmana'
      DisplayWidth = 2
      FieldName = 'MaxPassisCdS'
    end
    object Config_VAC_COVID_MESOS: TSmallintField
      Tag = 100
      DisplayLabel = 'Vacuna Covid - mesos dosi R'
      DisplayWidth = 2
      FieldName = 'VAC_COVID_MESOS'
    end
    object Config_VAC_PFIZER2_DIES: TSmallintField
      Tag = 100
      DisplayLabel = 'Vacuna Pfizer - mesos 2a dosi'
      DisplayWidth = 2
      FieldName = 'VAC_PFIZER2_DIES'
    end
    object Config_VAC_MODERNA2_DIES: TSmallintField
      Tag = 100
      DisplayLabel = 'Vacuna Moderna - mesos 2a dosi'
      DisplayWidth = 2
      FieldName = 'VAC_MODERNA2_DIES'
    end
    object Config_DIESPRESTARECENTS: TIntegerField
      Tag = 100
      DisplayLabel = 'Dies prestacions recents'
      DisplayWidth = 8
      FieldName = 'DIESPRESTARECENTS'
    end
    object ConfigDATATANCAMENTOM: TDateTimeField
      FieldName = 'DATATANCAMENTOM'
      Origin = 'INTERNA.CONFIG.DATATANCAMENTOM'
    end
    object ConfigHORA_SERVEI: TSmallintField
      FieldName = 'HORA_SERVEI'
      Origin = 'INTERNA.CONFIG.HORA_SERVEI'
    end
    object ConfigHCE_SSO_URL: TStringField
      FieldName = 'HCE_SSO_URL'
      Origin = 'INTERNA.CONFIG.HCE_SSO_URL'
      Size = 250
    end
    object Config_CADUCITATESCALESA1004: TIntegerField
      Tag = 100
      DisplayLabel = 'Dies caducitat escales alta ingressos'
      DisplayWidth = 8
      FieldName = 'CADUCITATESCALESA1004'
    end
    object Config_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'Periode'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Series_C_Periode'
      LookupKeyFields = 'C_Periode'
      KeyFields = 'Series'
      Calculated = True
    end
    object Config_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Serie'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Series_C_Serie'
      LookupKeyFields = 'C_Serie'
      KeyFields = 'Series'
      Size = 40
      Calculated = True
    end
    object Config_C0_2: TIntegerField
      Tag = 101
      DisplayLabel = 'Contador'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Series_Contador'
      LookupKeyFields = 'Contador'
      KeyFields = 'Series'
      Calculated = True
    end
    object Config_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Moviment'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_C_TMoviment'
      LookupKeyFields = 'C_TMoviment'
      KeyFields = 'T_Mov1'
      Size = 2
      Calculated = True
    end
    object Config_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Mov.'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_N_TMoviment'
      LookupKeyFields = 'N_TMoviment'
      KeyFields = 'T_Mov1'
      Size = 30
      Calculated = True
    end
    object Config_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus d'#39'Operaci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_T_Operacio'
      LookupKeyFields = 'T_Operacio'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Preu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_DemPreu'
      LookupKeyFields = 'DemPreu'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Prove'#239'dor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_DemProv'
      LookupKeyFields = 'DemProv'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Hist'#242'ria'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_DemHistoria'
      LookupKeyFields = 'DemHistoria'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Albar'#224
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_DemAlbara'
      LookupKeyFields = 'DemAlbara'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Num. Comanda'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_DemComanda'
      LookupKeyFields = 'DemComanda'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Centre de Cost'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_DemCCost'
      LookupKeyFields = 'DemCCost'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_9: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Data Caducitat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_DemCaducitat'
      LookupKeyFields = 'DemCaducitat'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_10: TStringField
      Tag = 101
      DisplayLabel = 'Actualitza consums'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_Actconsums'
      LookupKeyFields = 'Actconsums'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Pondera'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_Pondera'
      LookupKeyFields = 'Pondera'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_12: TStringField
      Tag = 101
      DisplayLabel = 'Afecta Preu Ult. Compra?'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_PreuUltCompra'
      LookupKeyFields = 'PreuUltCompra'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_13: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_14: TStringField
      Tag = 101
      DisplayLabel = 'Arrastra Preu Mitg'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_ArrastraPMP'
      LookupKeyFields = 'ArrastraPMP'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C1_15: TStringField
      Tag = 101
      DisplayLabel = 'T_MovAnula'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_T_MovAnula'
      LookupKeyFields = 'T_MovAnula'
      KeyFields = 'T_Mov1'
      Size = 2
      Calculated = True
    end
    object Config_C1_16: TStringField
      Tag = 101
      DisplayLabel = 'Calcular Preu a Partir de Total'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov1_CalcPreuperTotal'
      LookupKeyFields = 'CalcPreuperTotal'
      KeyFields = 'T_Mov1'
      Size = 1
      Calculated = True
    end
    object Config_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Moviment'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_C_TMoviment'
      LookupKeyFields = 'C_TMoviment'
      KeyFields = 'T_Mov2'
      Size = 2
      Calculated = True
    end
    object Config_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Mov.'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_N_TMoviment'
      LookupKeyFields = 'N_TMoviment'
      KeyFields = 'T_Mov2'
      Size = 30
      Calculated = True
    end
    object Config_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus d'#39'Operaci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_T_Operacio'
      LookupKeyFields = 'T_Operacio'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Preu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_DemPreu'
      LookupKeyFields = 'DemPreu'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Prove'#239'dor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_DemProv'
      LookupKeyFields = 'DemProv'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Hist'#242'ria'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_DemHistoria'
      LookupKeyFields = 'DemHistoria'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_6: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Albar'#224
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_DemAlbara'
      LookupKeyFields = 'DemAlbara'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_7: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Num. Comanda'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_DemComanda'
      LookupKeyFields = 'DemComanda'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_8: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Centre de Cost'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_DemCCost'
      LookupKeyFields = 'DemCCost'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Data Caducitat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_DemCaducitat'
      LookupKeyFields = 'DemCaducitat'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_10: TStringField
      Tag = 101
      DisplayLabel = 'Actualitza consums'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_Actconsums'
      LookupKeyFields = 'Actconsums'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Pondera'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_Pondera'
      LookupKeyFields = 'Pondera'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Afecta Preu Ult. Compra?'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_PreuUltCompra'
      LookupKeyFields = 'PreuUltCompra'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_13: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_14: TStringField
      Tag = 101
      DisplayLabel = 'Arrastra Preu Mitg'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_ArrastraPMP'
      LookupKeyFields = 'ArrastraPMP'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C2_15: TStringField
      Tag = 101
      DisplayLabel = 'T_MovAnula'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_T_MovAnula'
      LookupKeyFields = 'T_MovAnula'
      KeyFields = 'T_Mov2'
      Size = 2
      Calculated = True
    end
    object Config_C2_16: TStringField
      Tag = 101
      DisplayLabel = 'Calcular Preu a Partir de Total'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov2_CalcPreuperTotal'
      LookupKeyFields = 'CalcPreuperTotal'
      KeyFields = 'T_Mov2'
      Size = 1
      Calculated = True
    end
    object Config_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Moviment'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_C_TMoviment'
      LookupKeyFields = 'C_TMoviment'
      KeyFields = 'T_Mov3'
      Size = 2
      Calculated = True
    end
    object Config_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Mov.'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_N_TMoviment'
      LookupKeyFields = 'N_TMoviment'
      KeyFields = 'T_Mov3'
      Size = 30
      Calculated = True
    end
    object Config_C3_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus d'#39'Operaci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_T_Operacio'
      LookupKeyFields = 'T_Operacio'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Preu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_DemPreu'
      LookupKeyFields = 'DemPreu'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_4: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Prove'#239'dor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_DemProv'
      LookupKeyFields = 'DemProv'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Hist'#242'ria'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_DemHistoria'
      LookupKeyFields = 'DemHistoria'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_6: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Albar'#224
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_DemAlbara'
      LookupKeyFields = 'DemAlbara'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_7: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Num. Comanda'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_DemComanda'
      LookupKeyFields = 'DemComanda'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_8: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Centre de Cost'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_DemCCost'
      LookupKeyFields = 'DemCCost'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_9: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Data Caducitat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_DemCaducitat'
      LookupKeyFields = 'DemCaducitat'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_10: TStringField
      Tag = 101
      DisplayLabel = 'Actualitza consums'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_Actconsums'
      LookupKeyFields = 'Actconsums'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'Pondera'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_Pondera'
      LookupKeyFields = 'Pondera'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'Afecta Preu Ult. Compra?'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_PreuUltCompra'
      LookupKeyFields = 'PreuUltCompra'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_13: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_14: TStringField
      Tag = 101
      DisplayLabel = 'Arrastra Preu Mitg'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_ArrastraPMP'
      LookupKeyFields = 'ArrastraPMP'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C3_15: TStringField
      Tag = 101
      DisplayLabel = 'T_MovAnula'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_T_MovAnula'
      LookupKeyFields = 'T_MovAnula'
      KeyFields = 'T_Mov3'
      Size = 2
      Calculated = True
    end
    object Config_C3_16: TStringField
      Tag = 101
      DisplayLabel = 'Calcular Preu a Partir de Total'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov3_CalcPreuperTotal'
      LookupKeyFields = 'CalcPreuperTotal'
      KeyFields = 'T_Mov3'
      Size = 1
      Calculated = True
    end
    object Config_C4_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Moviment'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_C_TMoviment'
      LookupKeyFields = 'C_TMoviment'
      KeyFields = 'T_Mov4'
      Size = 2
      Calculated = True
    end
    object Config_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Mov.'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_N_TMoviment'
      LookupKeyFields = 'N_TMoviment'
      KeyFields = 'T_Mov4'
      Size = 30
      Calculated = True
    end
    object Config_C4_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus d'#39'Operaci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_T_Operacio'
      LookupKeyFields = 'T_Operacio'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_3: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Preu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_DemPreu'
      LookupKeyFields = 'DemPreu'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_4: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Prove'#239'dor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_DemProv'
      LookupKeyFields = 'DemProv'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_5: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Hist'#242'ria'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_DemHistoria'
      LookupKeyFields = 'DemHistoria'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_6: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Albar'#224
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_DemAlbara'
      LookupKeyFields = 'DemAlbara'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_7: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Num. Comanda'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_DemComanda'
      LookupKeyFields = 'DemComanda'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_8: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Centre de Cost'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_DemCCost'
      LookupKeyFields = 'DemCCost'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_9: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Data Caducitat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_DemCaducitat'
      LookupKeyFields = 'DemCaducitat'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_10: TStringField
      Tag = 101
      DisplayLabel = 'Actualitza consums'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_Actconsums'
      LookupKeyFields = 'Actconsums'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_11: TStringField
      Tag = 101
      DisplayLabel = 'Pondera'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_Pondera'
      LookupKeyFields = 'Pondera'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_12: TStringField
      Tag = 101
      DisplayLabel = 'Afecta Preu Ult. Compra?'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_PreuUltCompra'
      LookupKeyFields = 'PreuUltCompra'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_13: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_14: TStringField
      Tag = 101
      DisplayLabel = 'Arrastra Preu Mitg'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_ArrastraPMP'
      LookupKeyFields = 'ArrastraPMP'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C4_15: TStringField
      Tag = 101
      DisplayLabel = 'T_MovAnula'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_T_MovAnula'
      LookupKeyFields = 'T_MovAnula'
      KeyFields = 'T_Mov4'
      Size = 2
      Calculated = True
    end
    object Config_C4_16: TStringField
      Tag = 101
      DisplayLabel = 'Calcular Preu a Partir de Total'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov4_CalcPreuperTotal'
      LookupKeyFields = 'CalcPreuperTotal'
      KeyFields = 'T_Mov4'
      Size = 1
      Calculated = True
    end
    object Config_C5_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Moviment'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_C_TMoviment'
      LookupKeyFields = 'C_TMoviment'
      KeyFields = 'T_Mov5'
      Size = 2
      Calculated = True
    end
    object Config_C5_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Mov.'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_N_TMoviment'
      LookupKeyFields = 'N_TMoviment'
      KeyFields = 'T_Mov5'
      Size = 30
      Calculated = True
    end
    object Config_C5_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus d'#39'Operaci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_T_Operacio'
      LookupKeyFields = 'T_Operacio'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_3: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Preu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_DemPreu'
      LookupKeyFields = 'DemPreu'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_4: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Prove'#239'dor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_DemProv'
      LookupKeyFields = 'DemProv'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_5: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Hist'#242'ria'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_DemHistoria'
      LookupKeyFields = 'DemHistoria'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_6: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Albar'#224
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_DemAlbara'
      LookupKeyFields = 'DemAlbara'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_7: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Num. Comanda'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_DemComanda'
      LookupKeyFields = 'DemComanda'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_8: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Centre de Cost'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_DemCCost'
      LookupKeyFields = 'DemCCost'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_9: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Data Caducitat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_DemCaducitat'
      LookupKeyFields = 'DemCaducitat'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_10: TStringField
      Tag = 101
      DisplayLabel = 'Actualitza consums'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_Actconsums'
      LookupKeyFields = 'Actconsums'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_11: TStringField
      Tag = 101
      DisplayLabel = 'Pondera'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_Pondera'
      LookupKeyFields = 'Pondera'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_12: TStringField
      Tag = 101
      DisplayLabel = 'Afecta Preu Ult. Compra?'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_PreuUltCompra'
      LookupKeyFields = 'PreuUltCompra'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_13: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_14: TStringField
      Tag = 101
      DisplayLabel = 'Arrastra Preu Mitg'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_ArrastraPMP'
      LookupKeyFields = 'ArrastraPMP'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C5_15: TStringField
      Tag = 101
      DisplayLabel = 'T_MovAnula'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_T_MovAnula'
      LookupKeyFields = 'T_MovAnula'
      KeyFields = 'T_Mov5'
      Size = 2
      Calculated = True
    end
    object Config_C5_16: TStringField
      Tag = 101
      DisplayLabel = 'Calcular Preu a Partir de Total'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov5_CalcPreuperTotal'
      LookupKeyFields = 'CalcPreuperTotal'
      KeyFields = 'T_Mov5'
      Size = 1
      Calculated = True
    end
    object Config_C6_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Moviment'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_C_TMoviment'
      LookupKeyFields = 'C_TMoviment'
      KeyFields = 'T_Mov6'
      Size = 2
      Calculated = True
    end
    object Config_C6_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Mov.'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_N_TMoviment'
      LookupKeyFields = 'N_TMoviment'
      KeyFields = 'T_Mov6'
      Size = 30
      Calculated = True
    end
    object Config_C6_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus d'#39'Operaci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_T_Operacio'
      LookupKeyFields = 'T_Operacio'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_3: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Preu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_DemPreu'
      LookupKeyFields = 'DemPreu'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_4: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Prove'#239'dor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_DemProv'
      LookupKeyFields = 'DemProv'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_5: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Hist'#242'ria'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_DemHistoria'
      LookupKeyFields = 'DemHistoria'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_6: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Albar'#224
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_DemAlbara'
      LookupKeyFields = 'DemAlbara'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_7: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Num. Comanda'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_DemComanda'
      LookupKeyFields = 'DemComanda'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_8: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Centre de Cost'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_DemCCost'
      LookupKeyFields = 'DemCCost'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_9: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Data Caducitat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_DemCaducitat'
      LookupKeyFields = 'DemCaducitat'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_10: TStringField
      Tag = 101
      DisplayLabel = 'Actualitza consums'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_Actconsums'
      LookupKeyFields = 'Actconsums'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_11: TStringField
      Tag = 101
      DisplayLabel = 'Pondera'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_Pondera'
      LookupKeyFields = 'Pondera'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_12: TStringField
      Tag = 101
      DisplayLabel = 'Afecta Preu Ult. Compra?'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_PreuUltCompra'
      LookupKeyFields = 'PreuUltCompra'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_13: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_14: TStringField
      Tag = 101
      DisplayLabel = 'Arrastra Preu Mitg'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_ArrastraPMP'
      LookupKeyFields = 'ArrastraPMP'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C6_15: TStringField
      Tag = 101
      DisplayLabel = 'T_MovAnula'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_T_MovAnula'
      LookupKeyFields = 'T_MovAnula'
      KeyFields = 'T_Mov6'
      Size = 2
      Calculated = True
    end
    object Config_C6_16: TStringField
      Tag = 101
      DisplayLabel = 'Calcular Preu a Partir de Total'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov6_CalcPreuperTotal'
      LookupKeyFields = 'CalcPreuperTotal'
      KeyFields = 'T_Mov6'
      Size = 1
      Calculated = True
    end
    object Config_C7_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Moviment'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_C_TMoviment'
      LookupKeyFields = 'C_TMoviment'
      KeyFields = 'T_Mov7'
      Size = 2
      Calculated = True
    end
    object Config_C7_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Mov.'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_N_TMoviment'
      LookupKeyFields = 'N_TMoviment'
      KeyFields = 'T_Mov7'
      Size = 30
      Calculated = True
    end
    object Config_C7_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus d'#39'Operaci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_T_Operacio'
      LookupKeyFields = 'T_Operacio'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_3: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Preu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_DemPreu'
      LookupKeyFields = 'DemPreu'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_4: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Prove'#239'dor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_DemProv'
      LookupKeyFields = 'DemProv'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_5: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Hist'#242'ria'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_DemHistoria'
      LookupKeyFields = 'DemHistoria'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_6: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Albar'#224
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_DemAlbara'
      LookupKeyFields = 'DemAlbara'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_7: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Num. Comanda'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_DemComanda'
      LookupKeyFields = 'DemComanda'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_8: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Centre de Cost'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_DemCCost'
      LookupKeyFields = 'DemCCost'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_9: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Data Caducitat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_DemCaducitat'
      LookupKeyFields = 'DemCaducitat'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_10: TStringField
      Tag = 101
      DisplayLabel = 'Actualitza consums'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_Actconsums'
      LookupKeyFields = 'Actconsums'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_11: TStringField
      Tag = 101
      DisplayLabel = 'Pondera'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_Pondera'
      LookupKeyFields = 'Pondera'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_12: TStringField
      Tag = 101
      DisplayLabel = 'Afecta Preu Ult. Compra?'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_PreuUltCompra'
      LookupKeyFields = 'PreuUltCompra'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_13: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_14: TStringField
      Tag = 101
      DisplayLabel = 'Arrastra Preu Mitg'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_ArrastraPMP'
      LookupKeyFields = 'ArrastraPMP'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C7_15: TStringField
      Tag = 101
      DisplayLabel = 'T_MovAnula'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_T_MovAnula'
      LookupKeyFields = 'T_MovAnula'
      KeyFields = 'T_Mov7'
      Size = 2
      Calculated = True
    end
    object Config_C7_16: TStringField
      Tag = 101
      DisplayLabel = 'Calcular Preu a Partir de Total'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov7_CalcPreuperTotal'
      LookupKeyFields = 'CalcPreuperTotal'
      KeyFields = 'T_Mov7'
      Size = 1
      Calculated = True
    end
    object Config_C8_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Moviment'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_C_TMoviment'
      LookupKeyFields = 'C_TMoviment'
      KeyFields = 'T_Mov8'
      Size = 2
      Calculated = True
    end
    object Config_C8_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Mov.'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_N_TMoviment'
      LookupKeyFields = 'N_TMoviment'
      KeyFields = 'T_Mov8'
      Size = 30
      Calculated = True
    end
    object Config_C8_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus d'#39'Operaci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_T_Operacio'
      LookupKeyFields = 'T_Operacio'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_3: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Preu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_DemPreu'
      LookupKeyFields = 'DemPreu'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_4: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Prove'#239'dor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_DemProv'
      LookupKeyFields = 'DemProv'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_5: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Hist'#242'ria'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_DemHistoria'
      LookupKeyFields = 'DemHistoria'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_6: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Albar'#224
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_DemAlbara'
      LookupKeyFields = 'DemAlbara'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_7: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Num. Comanda'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_DemComanda'
      LookupKeyFields = 'DemComanda'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_8: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Centre de Cost'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_DemCCost'
      LookupKeyFields = 'DemCCost'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_9: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Data Caducitat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_DemCaducitat'
      LookupKeyFields = 'DemCaducitat'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_10: TStringField
      Tag = 101
      DisplayLabel = 'Actualitza consums'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_Actconsums'
      LookupKeyFields = 'Actconsums'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_11: TStringField
      Tag = 101
      DisplayLabel = 'Pondera'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_Pondera'
      LookupKeyFields = 'Pondera'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_12: TStringField
      Tag = 101
      DisplayLabel = 'Afecta Preu Ult. Compra?'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_PreuUltCompra'
      LookupKeyFields = 'PreuUltCompra'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_13: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_14: TStringField
      Tag = 101
      DisplayLabel = 'Arrastra Preu Mitg'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_ArrastraPMP'
      LookupKeyFields = 'ArrastraPMP'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C8_15: TStringField
      Tag = 101
      DisplayLabel = 'T_MovAnula'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_T_MovAnula'
      LookupKeyFields = 'T_MovAnula'
      KeyFields = 'T_Mov8'
      Size = 2
      Calculated = True
    end
    object Config_C8_16: TStringField
      Tag = 101
      DisplayLabel = 'Calcular Preu a Partir de Total'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov8_CalcPreuperTotal'
      LookupKeyFields = 'CalcPreuperTotal'
      KeyFields = 'T_Mov8'
      Size = 1
      Calculated = True
    end
    object Config_C9_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Moviment'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_C_TMoviment'
      LookupKeyFields = 'C_TMoviment'
      KeyFields = 'T_Mov9'
      Size = 2
      Calculated = True
    end
    object Config_C9_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Mov.'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_N_TMoviment'
      LookupKeyFields = 'N_TMoviment'
      KeyFields = 'T_Mov9'
      Size = 30
      Calculated = True
    end
    object Config_C9_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus d'#39'Operaci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_T_Operacio'
      LookupKeyFields = 'T_Operacio'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_3: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Preu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_DemPreu'
      LookupKeyFields = 'DemPreu'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_4: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Prove'#239'dor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_DemProv'
      LookupKeyFields = 'DemProv'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_5: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Hist'#242'ria'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_DemHistoria'
      LookupKeyFields = 'DemHistoria'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_6: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Albar'#224
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_DemAlbara'
      LookupKeyFields = 'DemAlbara'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_7: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Num. Comanda'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_DemComanda'
      LookupKeyFields = 'DemComanda'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_8: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Centre de Cost'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_DemCCost'
      LookupKeyFields = 'DemCCost'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_9: TStringField
      Tag = 101
      DisplayLabel = 'Demanar Data Caducitat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_DemCaducitat'
      LookupKeyFields = 'DemCaducitat'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_10: TStringField
      Tag = 101
      DisplayLabel = 'Actualitza consums'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_Actconsums'
      LookupKeyFields = 'Actconsums'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_11: TStringField
      Tag = 101
      DisplayLabel = 'Pondera'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_Pondera'
      LookupKeyFields = 'Pondera'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_12: TStringField
      Tag = 101
      DisplayLabel = 'Afecta Preu Ult. Compra?'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_PreuUltCompra'
      LookupKeyFields = 'PreuUltCompra'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_13: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_14: TStringField
      Tag = 101
      DisplayLabel = 'Arrastra Preu Mitg'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_ArrastraPMP'
      LookupKeyFields = 'ArrastraPMP'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C9_15: TStringField
      Tag = 101
      DisplayLabel = 'T_MovAnula'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_T_MovAnula'
      LookupKeyFields = 'T_MovAnula'
      KeyFields = 'T_Mov9'
      Size = 2
      Calculated = True
    end
    object Config_C9_16: TStringField
      Tag = 101
      DisplayLabel = 'Calcular Preu a Partir de Total'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'T_Mov9_CalcPreuperTotal'
      LookupKeyFields = 'CalcPreuperTotal'
      KeyFields = 'T_Mov9'
      Size = 1
      Calculated = True
    end
    object Config_C10_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Centre de Cost'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'cc_C_CentreCost'
      LookupKeyFields = 'C_CentreCost'
      KeyFields = 'cc'
      Calculated = True
    end
    object Config_C10_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Centre de Cost'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'cc_N_CentreCost'
      LookupKeyFields = 'N_CentreCost'
      KeyFields = 'cc'
      Size = 40
      Calculated = True
    end
    object Config_C10_2: TStringField
      Tag = 101
      DisplayLabel = 'Dia Servei'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc_DiaServei'
      LookupKeyFields = 'DiaServei'
      KeyFields = 'cc'
      Size = 1
      Calculated = True
    end
    object Config_C10_3: TStringField
      Tag = 101
      DisplayLabel = 'Hora Servei'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cc_HoraServei'
      LookupKeyFields = 'HoraServei'
      KeyFields = 'cc'
      Size = 2
      Calculated = True
    end
    object Config_C10_4: TStringField
      Tag = 101
      DisplayLabel = 'Pot Ingresar Provisionalment'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc_IngresProv'
      LookupKeyFields = 'IngresProv'
      KeyFields = 'cc'
      Size = 1
      Calculated = True
    end
    object Config_C10_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Producte'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc_C_TipusProd'
      LookupKeyFields = 'C_TipusProd'
      KeyFields = 'cc'
      Size = 1
      Calculated = True
    end
    object Config_C10_6: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'cc'
      Size = 1
      Calculated = True
    end
    object Config_C11_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Centre de Cost'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'cc2_C_CentreCost'
      LookupKeyFields = 'C_CentreCost'
      KeyFields = 'cc2'
      Calculated = True
    end
    object Config_C11_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Centre de Cost'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'cc2_N_CentreCost'
      LookupKeyFields = 'N_CentreCost'
      KeyFields = 'cc2'
      Size = 40
      Calculated = True
    end
    object Config_C11_2: TStringField
      Tag = 101
      DisplayLabel = 'Dia Servei'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc2_DiaServei'
      LookupKeyFields = 'DiaServei'
      KeyFields = 'cc2'
      Size = 1
      Calculated = True
    end
    object Config_C11_3: TStringField
      Tag = 101
      DisplayLabel = 'Hora Servei'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cc2_HoraServei'
      LookupKeyFields = 'HoraServei'
      KeyFields = 'cc2'
      Size = 2
      Calculated = True
    end
    object Config_C11_4: TStringField
      Tag = 101
      DisplayLabel = 'Pot Ingresar Provisionalment'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc2_IngresProv'
      LookupKeyFields = 'IngresProv'
      KeyFields = 'cc2'
      Size = 1
      Calculated = True
    end
    object Config_C11_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Producte'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc2_C_TipusProd'
      LookupKeyFields = 'C_TipusProd'
      KeyFields = 'cc2'
      Size = 1
      Calculated = True
    end
    object Config_C11_6: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc2_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'cc2'
      Size = 1
      Calculated = True
    end
    object Config_C12_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Centre de Cost'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'cc3_C_CentreCost'
      LookupKeyFields = 'C_CentreCost'
      KeyFields = 'cc3'
      Calculated = True
    end
    object Config_C12_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Centre de Cost'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'cc3_N_CentreCost'
      LookupKeyFields = 'N_CentreCost'
      KeyFields = 'cc3'
      Size = 40
      Calculated = True
    end
    object Config_C12_2: TStringField
      Tag = 101
      DisplayLabel = 'Dia Servei'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc3_DiaServei'
      LookupKeyFields = 'DiaServei'
      KeyFields = 'cc3'
      Size = 1
      Calculated = True
    end
    object Config_C12_3: TStringField
      Tag = 101
      DisplayLabel = 'Hora Servei'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cc3_HoraServei'
      LookupKeyFields = 'HoraServei'
      KeyFields = 'cc3'
      Size = 2
      Calculated = True
    end
    object Config_C12_4: TStringField
      Tag = 101
      DisplayLabel = 'Pot Ingresar Provisionalment'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc3_IngresProv'
      LookupKeyFields = 'IngresProv'
      KeyFields = 'cc3'
      Size = 1
      Calculated = True
    end
    object Config_C12_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Producte'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc3_C_TipusProd'
      LookupKeyFields = 'C_TipusProd'
      KeyFields = 'cc3'
      Size = 1
      Calculated = True
    end
    object Config_C12_6: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc3_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'cc3'
      Size = 1
      Calculated = True
    end
    object Config_C13_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'metgeInterf'
      Size = 5
      Calculated = True
    end
    object Config_C13_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'metgeInterf'
      Calculated = True
    end
    object Config_C13_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'metgeInterf'
      Size = 15
      Calculated = True
    end
    object Config_C13_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'metgeInterf'
      Size = 4
      Calculated = True
    end
    object Config_C13_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'metgeInterf'
      Size = 2
      Calculated = True
    end
    object Config_C13_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'metgeInterf'
      Size = 2
      Calculated = True
    end
    object Config_C13_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'metgeInterf'
      Size = 1
      Calculated = True
    end
    object Config_C13_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'metgeInterf'
      Calculated = True
    end
    object Config_C13_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'metgeInterf'
      Size = 1
      Calculated = True
    end
    object Config_C13_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'metgeInterf'
      Size = 40
      Calculated = True
    end
    object Config_C13_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'metgeInterf'
      Calculated = True
    end
    object Config_C13_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'metgeInterf'
      Calculated = True
    end
    object Config_C13_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'metgeInterf'
      Calculated = True
    end
    object Config_C13_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'metgeInterf'
      Size = 6
      Calculated = True
    end
    object Config_C13_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'metgeInterf'
      Size = 9
      Calculated = True
    end
    object Config_C13_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'metgeInterf'
      Size = 250
      Calculated = True
    end
    object Config_C13_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'metgeInterf'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Config_C13_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'metgeInterf_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'metgeInterf'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object Config_C14_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Centre de Cost'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'cc4_C_CentreCost'
      LookupKeyFields = 'C_CentreCost'
      KeyFields = 'cc4'
      Calculated = True
    end
    object Config_C14_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Centre de Cost'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'cc4_N_CentreCost'
      LookupKeyFields = 'N_CentreCost'
      KeyFields = 'cc4'
      Size = 40
      Calculated = True
    end
    object Config_C14_2: TStringField
      Tag = 101
      DisplayLabel = 'Dia Servei'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc4_DiaServei'
      LookupKeyFields = 'DiaServei'
      KeyFields = 'cc4'
      Size = 1
      Calculated = True
    end
    object Config_C14_3: TStringField
      Tag = 101
      DisplayLabel = 'Hora Servei'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cc4_HoraServei'
      LookupKeyFields = 'HoraServei'
      KeyFields = 'cc4'
      Size = 2
      Calculated = True
    end
    object Config_C14_4: TStringField
      Tag = 101
      DisplayLabel = 'Pot Ingresar Provisionalment'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc4_IngresProv'
      LookupKeyFields = 'IngresProv'
      KeyFields = 'cc4'
      Size = 1
      Calculated = True
    end
    object Config_C14_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Producte'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc4_C_TipusProd'
      LookupKeyFields = 'C_TipusProd'
      KeyFields = 'cc4'
      Size = 1
      Calculated = True
    end
    object Config_C14_6: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'cc4_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'cc4'
      Size = 1
      Calculated = True
    end
  end
  object Macros: TPopupMenu
    Left = 764
    Top = 224
    object Insertarmacros1: TMenuItem
      Caption = 'Insertar macros'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object NOM1: TMenuItem
      Caption = '%NOM%'
      OnClick = InsertaMacro
    end
    object POBLACIO1: TMenuItem
      Caption = '%POBLACIO%'
      OnClick = InsertaMacro
    end
    object DATANAIXEMENT1: TMenuItem
      Caption = '%DATANAIXEMENT%'
      OnClick = InsertaMacro
    end
    object SEXE1: TMenuItem
      Caption = '%SEXE%'
      OnClick = InsertaMacro
    end
    object IDENTIFICACIO1: TMenuItem
      Caption = '%IDENTIFICACIO%'
      OnClick = InsertaMacro
    end
    object EDAT1: TMenuItem
      Caption = '%EDAT%'
      OnClick = InsertaMacro
    end
    object DATAINFORME1: TMenuItem
      Caption = '%DATAINFORME%'
      OnClick = InsertaMacro
    end
    object AFECTATADA2: TMenuItem
      Caption = '%AFECTAT/ADA%'
      OnClick = InsertaMacro
    end
    object DIAGNOSTIC1: TMenuItem
      Caption = '%DIAGNOSTIC%'
      OnClick = InsertaMacro
    end
    object ETIOLOGIA1: TMenuItem
      Caption = '%ETIOLOGIA%'
      OnClick = InsertaMacro
    end
    object CODIE1: TMenuItem
      Caption = '%CODIE%'
      OnClick = InsertaMacro
    end
    object DATAREVI1: TMenuItem
      Caption = '%DATAREVI%'
      OnClick = InsertaMacro
    end
    object PROPERAREVI1: TMenuItem
      Caption = '%PROPERAREVI%'
      OnClick = InsertaMacro
    end
    object ITEMS1: TMenuItem
      Caption = '%ITEMS%'
      OnClick = InsertaMacro
    end
    object METGE1: TMenuItem
      Caption = '%METGE%'
      OnClick = InsertaMacro
    end
    object TITOL1: TMenuItem
      Caption = '%TITOLMETGE%'
      OnClick = InsertaMacro
    end
    object TRACTE1: TMenuItem
      Caption = '%TRACTE%'
      OnClick = InsertaMacro
    end
  end
  object Dialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 764
    Top = 168
  end
  object Macros2: TPopupMenu
    Left = 824
    Top = 224
    object MenuItem1: TMenuItem
      Caption = 'Insertar macros'
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object HISTORIA1: TMenuItem
      Caption = '%HISTORIA%'
      OnClick = InsertaMacro
    end
    object NOM2: TMenuItem
      Caption = '%NOM%'
      OnClick = InsertaMacro
    end
    object COGNOMS1: TMenuItem
      Caption = '%COGNOMS%'
      OnClick = InsertaMacro
    end
    object DATANAIXEMENT2: TMenuItem
      Caption = '%DATANAIXEMENT%'
      OnClick = InsertaMacro
    end
    object IDENTIFICACIO2: TMenuItem
      Caption = '%IDENTIFICACIO%'
      OnClick = InsertaMacro
    end
    object EDAT2: TMenuItem
      Caption = '%EDAT%'
      OnClick = InsertaMacro
    end
    object POBLACIO2: TMenuItem
      Caption = '%POBLACIO%'
      OnClick = InsertaMacro
    end
    object SEXE2: TMenuItem
      Caption = '%SEXE%'
      OnClick = InsertaMacro
    end
    object DATAINGRES1: TMenuItem
      Caption = '%DATA_INGRES%'
      OnClick = InsertaMacro
    end
    object DATAALTA1: TMenuItem
      Caption = '%DATA_ALTA%'
      OnClick = InsertaMacro
    end
    object DATAINFORME2: TMenuItem
      Caption = '%DATA_INFORME%'
      OnClick = InsertaMacro
    end
    object AFECTATADA1: TMenuItem
      Caption = '%AFECTAT/ADA%'
      OnClick = InsertaMacro
    end
    object DIAGNOSTIC2: TMenuItem
      Caption = '%DIAGNOSTIC%'
      OnClick = InsertaMacro
    end
    object ETIOLOGIA2: TMenuItem
      Caption = '%ETIOLOGIA%'
      OnClick = InsertaMacro
    end
    object CODIE2: TMenuItem
      Caption = '%CODIE%'
      OnClick = InsertaMacro
    end
    object LESIONS1: TMenuItem
      Caption = '%LESIONS%'
      OnClick = InsertaMacro
    end
    object DATALESIO1: TMenuItem
      Caption = '%DATA_LESIO%'
      OnClick = InsertaMacro
    end
    object CENTREPROCEDENT1: TMenuItem
      Caption = '%CENTRE_PROCEDENT%'
      OnClick = InsertaMacro
    end
    object MOTIU1: TMenuItem
      Caption = '%MOTIU%'
      OnClick = InsertaMacro
    end
    object ALERGIES1: TMenuItem
      Caption = '%ALERGIES%'
      OnClick = InsertaMacro
    end
    object MEDICACIOHABITUAL1: TMenuItem
      Caption = '%MEDICACIO_HABITUAL% '
      OnClick = InsertaMacro
    end
    object METGE2: TMenuItem
      Caption = '%METGE% '
      OnClick = InsertaMacro
    end
    object TITOLMETGE1: TMenuItem
      Caption = '%TITOLMETGE%'
      OnClick = InsertaMacro
    end
  end
  object Macros3: TPopupMenu
    Left = 764
    Top = 280
    object MenuItem3: TMenuItem
      Caption = 'Insertar macros'
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object MenuItem5: TMenuItem
      Caption = '%HISTORIA%'
      OnClick = InsertaMacro
    end
    object MenuItem6: TMenuItem
      Caption = '%NOM%'
      OnClick = InsertaMacro
    end
    object MenuItem7: TMenuItem
      Caption = '%COGNOMS%'
      OnClick = InsertaMacro
    end
    object MenuItem8: TMenuItem
      Caption = '%DATANAIXEMENT%'
      OnClick = InsertaMacro
    end
    object MenuItem9: TMenuItem
      Caption = '%IDENTIFICACIO%'
      OnClick = InsertaMacro
    end
    object MenuItem10: TMenuItem
      Caption = '%EDAT%'
      OnClick = InsertaMacro
    end
    object MenuItem11: TMenuItem
      Caption = '%POBLACIO%'
      OnClick = InsertaMacro
    end
    object MenuItem12: TMenuItem
      Caption = '%SEXE%'
      OnClick = InsertaMacro
    end
    object MenuItem13: TMenuItem
      Caption = '%DATA_INGRES%'
      OnClick = InsertaMacro
    end
    object MenuItem15: TMenuItem
      Caption = '%DATA_INFORME%'
      OnClick = InsertaMacro
    end
    object MenuItem16: TMenuItem
      Caption = '%AFECTAT/ADA%'
      OnClick = InsertaMacro
    end
    object MenuItem17: TMenuItem
      Caption = '%DIAGNOSTIC%'
      OnClick = InsertaMacro
    end
    object MenuItem18: TMenuItem
      Caption = '%ETIOLOGIA%'
      OnClick = InsertaMacro
    end
    object MenuItem19: TMenuItem
      Caption = '%CODIE%'
      OnClick = InsertaMacro
    end
    object MenuItem20: TMenuItem
      Caption = '%LESIONS%'
      OnClick = InsertaMacro
    end
    object MenuItem26: TMenuItem
      Caption = '%METGE% '
      OnClick = InsertaMacro
    end
    object MenuItem27: TMenuItem
      Caption = '%TITOLMETGE%'
      OnClick = InsertaMacro
    end
    object METGE3: TMenuItem
      Caption = '%MUTUA% '
      OnClick = InsertaMacro
    end
    object TITOLMETGE2: TMenuItem
      Caption = '%TITOLMETGE%'
      OnClick = InsertaMacro
    end
  end
  object Macros4: TPopupMenu
    Left = 824
    Top = 280
    object MenuItem14: TMenuItem
      Caption = 'Insertar macros'
    end
    object MenuItem21: TMenuItem
      Caption = '-'
    end
    object MenuItem41: TMenuItem
      Caption = '%TEXT%'
      OnClick = InsertaMacro
    end
    object MenuItem42: TMenuItem
      Caption = '%SIGNATURA%'
      OnClick = InsertaMacro
    end
    object METGE4: TMenuItem
      Caption = '%METGE%'
      OnClick = InsertaMacro
    end
    object TOLMETGE1: TMenuItem
      Caption = '%TITOL_METGE%'
      OnClick = InsertaMacro
    end
    object NUMCOL1: TMenuItem
      Caption = '%NUM_COL%'
      OnClick = InsertaMacro
    end
  end
  object bDirectoris: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataConfig.Directoris
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Left = 956
    Top = 224
    object bDirectoris_Nom: TStringField
      Tag = 100
      DisplayWidth = 24
      FieldName = 'Nom'
    end
    object bDirectoris_Ruta1: TStringField
      Tag = 100
      DisplayLabel = 'Ruta 1'
      DisplayWidth = 25
      FieldName = 'Ruta1'
      Size = 25
    end
    object bDirectoris_Ruta2: TStringField
      Tag = 100
      DisplayLabel = 'Ruta 2'
      DisplayWidth = 41
      FieldName = 'Ruta2'
      Size = 75
    end
    object bDirectoris_Ruta: TStringField
      Tag = 100
      DisplayWidth = 74
      FieldName = 'Ruta'
      ReadOnly = True
      Size = 100
    end
  end
  object dsDirectoris: TDataSource
    DataSet = bDirectoris
    Left = 1016
    Top = 224
  end
  object bBloqAcc: THYSqlBrowse
    BeforeDelete = bBloqAccBeforeDelete
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataConfig.BloqueigAcc
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      '')
    Left = 956
    Top = 280
    object bBloqAcc_Que: TStringField
      Tag = 100
      DisplayLabel = 'Qu'#232' es bloqueja'
      DisplayWidth = 15
      FieldName = 'Que'
      Size = 15
    end
    object bBloqAcc_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldName = 'C_Historia'
      DisplayFormat = '#,##0;; '
    end
    object bBloqAcc_NomID: TStringField
      Tag = 100
      DisplayLabel = 'Nom camp'
      DisplayWidth = 20
      FieldName = 'NomID'
    end
    object bBloqAcc_ID: TIntegerField
      Tag = 100
      DisplayLabel = 'Valor camp'
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object bBloqAcc_Data: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data bloqueig'
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bBloqAcc_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari bloqueig'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object bBloqAcc_NomPC: TStringField
      Tag = 100
      DisplayLabel = 'PC bloqueig'
      DisplayWidth = 40
      FieldName = 'NomPC'
      Size = 40
    end
    object bBloqAcc_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'bloqueig_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'bloqueig'
      Size = 15
      Calculated = True
    end
    object bBloqAcc_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'bloqueig_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'bloqueig'
      Size = 60
      Calculated = True
    end
  end
  object dsBloqAcc: TDataSource
    DataSet = bBloqAcc
    Left = 1016
    Top = 280
  end
  object bHorarisFunc: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataConfig.Horaris_Funcions
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Left = 736
    Top = 368
    object bHorarisFunc_ID: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object bHorarisFunc_Dia: TSmallintField
      Tag = 100
      DisplayLabel = 'Dia setmana'
      DisplayWidth = 2
      FieldName = 'Dia'
    end
    object bHorarisFunc_Hora_i: TSmallintField
      Tag = 100
      DisplayLabel = 'Hora inici'
      DisplayWidth = 2
      FieldName = 'Hora_i'
    end
    object bHorarisFunc_Min_i: TSmallintField
      Tag = 100
      DisplayLabel = 'Minuts inici'
      DisplayWidth = 2
      FieldName = 'Min_i'
    end
    object bHorarisFunc_Hora_f: TSmallintField
      Tag = 100
      DisplayLabel = 'Hora fi'
      DisplayWidth = 2
      FieldName = 'Hora_f'
    end
    object bHorarisFunc_Min_f: TSmallintField
      Tag = 100
      DisplayLabel = 'Minuts fi'
      DisplayWidth = 2
      FieldName = 'Min_f'
    end
    object bHorarisFunc_Funcio: TSmallintField
      Tag = 100
      DisplayLabel = 'Funci'#243
      DisplayWidth = 2
      FieldName = 'Funcio'
    end
    object bHorarisFunc_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'funcio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'funcio'
      Calculated = True
    end
    object bHorarisFunc_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'funcio_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'funcio'
      Size = 40
      Calculated = True
    end
    object bHorarisFunc_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'funcio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'funcio'
      Calculated = True
    end
    object bHorarisFunc_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'funcio_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'funcio'
      Size = 40
      Calculated = True
    end
    object bHorarisFunc_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'funcio_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'funcio'
      Size = 10
      Calculated = True
    end
    object bHorarisFunc_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'dia_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'dia'
      Calculated = True
    end
    object bHorarisFunc_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'dia_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'dia'
      Size = 40
      Calculated = True
    end
    object bHorarisFunc_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'dia_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'dia'
      Calculated = True
    end
    object bHorarisFunc_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'dia_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'dia'
      Size = 40
      Calculated = True
    end
    object bHorarisFunc_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'dia_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'dia'
      Size = 10
      Calculated = True
    end
  end
  object dsHorarisFunc: TDataSource
    DataSet = bHorarisFunc
    Left = 808
    Top = 368
  end
  object cFuncionsFH: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select c_codi, n_codi from codicamps'
      'where tipuscodi = '#39'FUNCIO_FORAHORES'#39)
    Dicionario1 = wDataCodis.CodiCamps
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cFuncionsFHAlSeleccionar
    Left = 888
    Top = 368
  end
  object dsNHC: TDataSource
    DataSet = qNHC
    Left = 816
    Top = 472
  end
  object qNHC: TQuery
    DatabaseName = 'Interna'
    DataSource = dsExcelCarregaSL
    SQL.Strings = (
      'select NUM_HIST, NOMCOMPLET, FECHA_NAC, TSI, DNI'
      'from FILIACIO  '
      'where (TSI = :cip or DNI = :num_doc)')
    Left = 816
    Top = 520
    ParamData = <
      item
        DataType = ftString
        Name = 'CIP'
        ParamType = ptInput
        Size = 81
      end
      item
        DataType = ftString
        Name = 'NUM_DOC'
        ParamType = ptInput
        Size = 81
      end>
  end
  object bAvisos: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataConfig.Avisos
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Left = 944
    Top = 480
    object bAvisos_ID: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object bAvisos_Avis: TStringField
      Tag = 100
      DisplayLabel = 'Av'#237's'
      DisplayWidth = 40
      FieldName = 'Avis'
      Size = 40
    end
  end
  object dsAvisos: TDataSource
    DataSet = bAvisos
    Left = 944
    Top = 528
  end
  object bAvisosDestinataris: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataConfig.Avisos_Dest
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsAvisos
    Left = 1032
    Top = 480
    object bAvisosDestinataris_ID: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object bAvisosDestinataris_ID_Avis: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Av'#237's'
      DisplayWidth = 8
      FieldName = 'ID_Avis'
      DisplayFormat = '#,##0;; '
    end
    object bAvisosDestinataris_Correu_E: TStringField
      Tag = 100
      DisplayLabel = 'Correu-e'
      DisplayWidth = 40
      FieldName = 'Correu_E'
      Size = 40
    end
    object bAvisosDestinataris_Data_inici: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data inici'
      DisplayWidth = 10
      FieldName = 'Data_inici'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bAvisosDestinataris_Data_fi: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data fi'
      DisplayWidth = 10
      FieldName = 'Data_fi'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bAvisosDestinataris_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'avis_ID'
      LookupKeyFields = 'ID'
      KeyFields = 'avis'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bAvisosDestinataris_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Av'#237's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'avis_Avis'
      LookupKeyFields = 'Avis'
      KeyFields = 'avis'
      Size = 40
      Calculated = True
    end
    object bAvisosDestinataris_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'email_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'email'
      Size = 5
      Calculated = True
    end
    object bAvisosDestinataris_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'email_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'email'
      Calculated = True
    end
    object bAvisosDestinataris_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'email_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'email'
      Size = 15
      Calculated = True
    end
    object bAvisosDestinataris_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'email_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'email'
      Size = 4
      Calculated = True
    end
    object bAvisosDestinataris_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'email_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'email'
      Size = 2
      Calculated = True
    end
    object bAvisosDestinataris_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'email_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'email'
      Size = 2
      Calculated = True
    end
    object bAvisosDestinataris_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'email_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'email'
      Size = 1
      Calculated = True
    end
    object bAvisosDestinataris_C1_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'email_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'email'
      Calculated = True
    end
    object bAvisosDestinataris_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'email_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'email'
      Size = 1
      Calculated = True
    end
    object bAvisosDestinataris_C1_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'email_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'email'
      Size = 40
      Calculated = True
    end
    object bAvisosDestinataris_C1_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'email_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'email'
      Calculated = True
    end
    object bAvisosDestinataris_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'email_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'email'
      Calculated = True
    end
    object bAvisosDestinataris_C1_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'email_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'email'
      Calculated = True
    end
    object bAvisosDestinataris_C1_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'email_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'email'
      Size = 6
      Calculated = True
    end
    object bAvisosDestinataris_C1_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'email_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'email'
      Size = 9
      Calculated = True
    end
    object bAvisosDestinataris_C1_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'email_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'email'
      Size = 250
      Calculated = True
    end
  end
  object dsAvisosDestinataris: TDataSource
    DataSet = bAvisosDestinataris
    Left = 1032
    Top = 528
  end
  object ExcelCarregaSL: TJvCsvDataSet
    FieldDefs = <
      item
        Name = 'NOM'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'COGNOM1'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'COGNOM2'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DATA_NAIX'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CIP'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'T_DOC'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NUM_DOC'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DATA_DUE'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PAIS_PASS'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'SEXE'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PAIS'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NHC'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'TRASPASSAT'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'USUARI_AD'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'TIPUS_PERSONA'
        DataType = ftString
        Size = 80
      end>
    FileName = 
      'C:\Users\vferrer\Downloads\Professionals IG - fitxer de c'#224'rrega ' +
      'PLANTILLA_C.csv'
    AfterScroll = ExcelCarregaSLAfterScroll
    Changed = False
    CsvUniqueKeys = False
    ExtendedHeaderInfo = False
    CaseInsensitive = False
    Separator = ';'
    AutoBackupCount = 0
    StoreDefs = True
    Left = 744
    Top = 520
  end
  object dsExcelCarregaSL: TDataSource
    DataSet = ExcelCarregaSL
    Left = 744
    Top = 472
  end
end
