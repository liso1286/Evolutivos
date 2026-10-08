object wFitxaManteniments: TwFitxaManteniments
  Left = 389
  Top = 172
  Width = 1364
  Height = 753
  Caption = 'Mante. Codis'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter3: TSplitter
    Left = 486
    Top = 0
    Width = 4
    Height = 722
    Cursor = crHSplit
    Color = clBlack
    ParentColor = False
  end
  object HYArea4: TPanel
    Left = 490
    Top = 0
    Width = 866
    Height = 722
    Align = alClient
    Caption = 'HYArea4'
    Color = clWhite
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 312
      Width = 864
      Height = 4
      Cursor = crVSplit
      Align = alBottom
      Color = clBlack
      ParentColor = False
    end
    object HYArea2: TPanel
      Left = 1
      Top = 1
      Width = 864
      Height = 311
      Align = alClient
      Caption = 'HYArea2'
      Color = clWhite
      TabOrder = 0
      object HYGrid2: THYGrid
        Left = 1
        Top = 26
        Width = 862
        Height = 284
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = dsCodiCamps
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
            FieldName = 'C_Codi'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_Codi'
            Width = 268
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ordre'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'R_Codi'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Params'
            Width = 290
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_Codi2'
            Width = 252
            Visible = True
          end>
      end
      object HYBarra2: THYBarra
        Left = 1
        Top = 1
        Width = 862
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = ' '
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        DataSource = dsCodiCamps
        VerOrdenar = False
        VerSalir = False
        Titulo = True
        VerPrint = True
        VerRefresh = True
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 316
      Width = 864
      Height = 405
      ActivePage = TabSheet1
      Align = alBottom
      TabIndex = 0
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Prestacions'
        object HYArea3: TPanel
          Left = 0
          Top = 0
          Width = 856
          Height = 377
          Align = alClient
          Caption = 'HYArea3'
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object HYBarra3: THYBarra
            Left = 1
            Top = 1
            Width = 854
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            Color = clSilver
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsPrestaCodiCamps
            AlInsertar = HYBarra3AlInsertar
            VerOrdenar = False
            VerSalir = False
            VerIndices = False
            Titulo = True
            VerPrint = True
            VerRefresh = True
            object CheckBox1: TCheckBox
              Left = 416
              Top = 5
              Width = 193
              Height = 17
              Caption = 'Ocultar par'#224'metres de baixa'
              Checked = True
              State = cbChecked
              TabOrder = 0
              OnClick = CheckBox1Click
            end
          end
          object HYGrid3: THYGrid
            Left = 1
            Top = 26
            Width = 854
            Height = 350
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsPrestaCodiCamps
            DefaultDrawing = False
            FixedColor = clSilver
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            AlPintarGrid = HYGrid3AlPintarGrid
            DefaultRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'C_Prestacio'
                Title.Caption = 'Codi prestaci'#243
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Prestacions_N_Prestacio'
                Width = 316
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Prestacions_Tipus'
                Width = 39
                Visible = True
              end>
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Grups assistencials'
        ImageIndex = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 856
          Height = 377
          Align = alClient
          Caption = 'HYArea3'
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object HYBarra4: THYBarra
            Left = 1
            Top = 1
            Width = 854
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            Color = clSilver
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsGrupsCodiCamps
            VerOrdenar = False
            VerSalir = False
            VerIndices = False
            Titulo = True
            VerPrint = True
            VerRefresh = True
          end
          object HYGrid4: THYGrid
            Left = 1
            Top = 26
            Width = 854
            Height = 350
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsGrupsCodiCamps
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
                FieldName = 'C_Grup'
                Title.Caption = 'Codi grup'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Grups_N_Grup'
                Width = 374
                Visible = True
              end>
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Especialitats assistencials'
        ImageIndex = 2
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 856
          Height = 377
          Align = alClient
          Caption = 'HYArea3'
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object HYBarra5: THYBarra
            Left = 1
            Top = 1
            Width = 854
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            Color = clSilver
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsEspecialCodiCamps
            VerOrdenar = False
            VerSalir = False
            VerIndices = False
            Titulo = True
            VerPrint = True
            VerRefresh = True
          end
          object HYGrid5: THYGrid
            Left = 1
            Top = 26
            Width = 854
            Height = 350
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsEspecialCodiCamps
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
                FieldName = 'C_Especial'
                Title.Caption = 'Codi especialitat'
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Especial_N_Especial'
                Width = 346
                Visible = True
              end>
          end
        end
      end
      object TabICDMotiu: TTabSheet
        Caption = 'Diagn'#242'stics/Procediments ICD (Motiu)'
        ImageIndex = 3
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 856
          Height = 377
          Align = alClient
          Caption = 'HYArea3'
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object HYBarra6: THYBarra
            Left = 1
            Top = 1
            Width = 854
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            Color = clSilver
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsICDCodiCamps
            VerOrdenar = False
            VerSalir = False
            VerIndices = False
            Titulo = True
            VerPrint = True
            VerRefresh = True
          end
          object HYGrid6: THYGrid
            Left = 1
            Top = 26
            Width = 854
            Height = 350
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsICDCodiCamps
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
                FieldName = 'TipusICD'
                Width = 33
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_ICD'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'icd_N_GUTTMANN'
                Title.Caption = 'Literal Guttmann'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'icd_N_ICD'
                Title.Caption = 'Descripci'#243' ICD'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VersioCIM'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ordre'
                Visible = True
              end>
          end
        end
      end
      object TabDretsMotiu: TTabSheet
        Caption = 'Drets motiu'
        ImageIndex = 4
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 856
          Height = 377
          Align = alClient
          Caption = 'HYArea3'
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object HYBarra7: THYBarra
            Left = 1
            Top = 1
            Width = 854
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            Color = clSilver
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsDretsMotiu
            VerOrdenar = False
            VerSalir = False
            VerIndices = False
            Titulo = True
            VerPrint = True
            VerRefresh = True
          end
          object HYGrid7: THYGrid
            Left = 1
            Top = 26
            Width = 854
            Height = 350
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsDretsMotiu
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
          end
        end
      end
    end
  end
  object HYArea1: TPanel
    Left = 0
    Top = 0
    Width = 486
    Height = 722
    Align = alLeft
    Caption = 'HYArea1'
    Color = clWhite
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object HYGrid1: THYGrid
      Left = 1
      Top = 26
      Width = 484
      Height = 695
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = dsGrupCodiCamps
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
          FieldName = 'TipusCodi'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'G_Tipus'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N_Tipus'
          Width = 251
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ordre'
          Width = 33
          Visible = True
        end>
    end
    object HYBarra1: THYBarra
      Left = 1
      Top = 1
      Width = 484
      Height = 25
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = clSilver
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      DataSource = dsGrupCodiCamps
      VerOrdenar = False
      Titulo = False
      VerPrint = False
      VerRefresh = True
    end
  end
  object bGrupCodiCamps: THYSqlBrowse
    AfterScroll = bGrupCodiCampsAfterScroll
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCodis.GrupCodiCamps
    IndiceActivo = 'Primaria'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      '/* TIPUSCODI       = "CARACTER" '
      'OR TIPUSCODI = "COMPLICACIONS"'
      'OR TIPUSCODI = "DESTINACIO"   OR */'
      'TIPUSCODI = "MOTIU" '
      '/* OR TIPUSCODI = "NUMCAS"'
      'OR TIPUSCODI = "ORIGEN"'
      'OR TIPUSCODI = "PROCESORIGEN"'
      'OR TIPUSCODI = "SOLICITUD"'
      'OR TIPUSCODI = "TIPUSPRESTA"'
      'OR TIPUSCODI = "VEGADAAMBULATO" */')
    Left = 72
    Top = 128
    object bGrupCodiCamps_TipusCodi: TStringField
      Tag = 100
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldName = 'TipusCodi'
    end
    object bGrupCodiCamps_N_Tipus: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243' del Tipus'
      DisplayWidth = 80
      FieldName = 'N_Tipus'
      Size = 80
    end
    object bGrupCodiCamps_G_Tipus: TStringField
      Tag = 100
      DisplayLabel = 'Supergrup'
      DisplayWidth = 15
      FieldName = 'G_Tipus'
      Size = 15
    end
    object bGrupCodiCamps_Ordre: TIntegerField
      Tag = 100
      DisplayWidth = 4
      FieldName = 'Ordre'
    end
  end
  object dsCodiCamps: TDataSource
    DataSet = bCodiCamps
    Left = 176
    Top = 184
  end
  object dsGrupCodiCamps: TDataSource
    DataSet = bGrupCodiCamps
    Left = 176
    Top = 128
  end
  object bCodiCamps: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCodis.CodiCamps
    IndiceActivo = 'Codi'
    CalcSimple = False
    AutoPost = False
    Padre = dsGrupCodiCamps
    Left = 72
    Top = 184
    object bCodiCamps_TipusCodi: TStringField
      Tag = 100
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldName = 'TipusCodi'
    end
    object bCodiCamps_C_Codi: TSmallintField
      Tag = 100
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldName = 'C_Codi'
    end
    object bCodiCamps_N_Codi: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldName = 'N_Codi'
      Size = 40
    end
    object bCodiCamps_N_Codi2: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldName = 'N_Codi2'
      Size = 40
    end
    object bCodiCamps_R_Codi: TStringField
      Tag = 100
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldName = 'R_Codi'
      Size = 10
    end
    object bCodiCamps_Params: TStringField
      Tag = 100
      DisplayWidth = 254
      FieldName = 'Params'
      Size = 254
    end
    object bCodiCamps_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Ordre'
    end
    object bCodiCamps_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'tipus_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'tipus'
      Calculated = True
    end
    object bCodiCamps_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' del Tipus'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'tipus_N_Tipus'
      LookupKeyFields = 'N_Tipus'
      KeyFields = 'tipus'
      Size = 80
      Calculated = True
    end
    object bCodiCamps_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Supergrup'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tipus_G_Tipus'
      LookupKeyFields = 'G_Tipus'
      KeyFields = 'tipus'
      Size = 15
      Calculated = True
    end
  end
  object bPrestaCodiCamps: THYSqlBrowse
    DatabaseName = 'Interna'
    Filtered = True
    OnFilterRecord = bPrestaCodiCampsFilterRecord
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.PrestaCodiCamps
    IndiceActivo = 'Primaria'
    CalcSimple = False
    AutoPost = False
    Padre = dsCodiCamps
    Left = 72
    Top = 280
    object bPrestaCodiCamps_TipusCodi: TStringField
      Tag = 100
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldName = 'TipusCodi'
    end
    object bPrestaCodiCamps_C_Codi: TSmallintField
      Tag = 100
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldName = 'C_Codi'
    end
    object bPrestaCodiCamps_C_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'C'#243'di Prestacio'
      DisplayWidth = 4
      FieldName = 'C_Prestacio'
      Size = 4
    end
    object bPrestaCodiCamps_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Prestacio'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Prestacions_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'Prestacions'
      Size = 4
      Calculated = True
    end
    object bPrestaCodiCamps_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 35
      FieldKind = fkCalculated
      FieldName = 'Prestacions_N_Prestacio'
      LookupKeyFields = 'N_Prestacio'
      KeyFields = 'Prestacions'
      Size = 35
      Calculated = True
    end
    object bPrestaCodiCamps_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 35
      FieldKind = fkCalculated
      FieldName = 'Prestacions_N_Prestacio2'
      LookupKeyFields = 'N_Prestacio2'
      KeyFields = 'Prestacions'
      Size = 35
      Calculated = True
    end
    object bPrestaCodiCamps_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Prestacions_Resum'
      LookupKeyFields = 'Resum'
      KeyFields = 'Prestacions'
      Size = 8
      Calculated = True
    end
    object bPrestaCodiCamps_C0_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prestacions_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Prestacions'
      Calculated = True
    end
    object bPrestaCodiCamps_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'EsEase'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prestacions_EsEase'
      LookupKeyFields = 'EsEase'
      KeyFields = 'Prestacions'
      Size = 1
      Calculated = True
    end
    object bPrestaCodiCamps_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'No SCS'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prestacions_NoSCS'
      LookupKeyFields = 'NoSCS'
      KeyFields = 'Prestacions'
      Size = 1
      Calculated = True
    end
    object bPrestaCodiCamps_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Tipus_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Tipus'
      Calculated = True
    end
    object bPrestaCodiCamps_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' del Tipus'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'Tipus_N_Tipus'
      LookupKeyFields = 'N_Tipus'
      KeyFields = 'Tipus'
      Size = 80
      Calculated = True
    end
    object bPrestaCodiCamps_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Supergrup'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tipus_G_Tipus'
      LookupKeyFields = 'G_Tipus'
      KeyFields = 'Tipus'
      Size = 15
      Calculated = True
    end
    object bPrestaCodiCamps_C2_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Codi_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Codi'
      Calculated = True
    end
    object bPrestaCodiCamps_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codi_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Codi'
      Size = 40
      Calculated = True
    end
    object bPrestaCodiCamps_C2_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Codi_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Codi'
      Calculated = True
    end
    object bPrestaCodiCamps_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codi_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Codi'
      Size = 40
      Calculated = True
    end
    object bPrestaCodiCamps_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Codi_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Codi'
      Size = 10
      Calculated = True
    end
    object bPrestaCodiCamps_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Codi_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Codi'
      Calculated = True
    end
  end
  object dsPrestaCodiCamps: TDataSource
    DataSet = bPrestaCodiCamps
    Left = 176
    Top = 280
  end
  object cInsertaPresta: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT  * '
      'FROM [DIC1] '
      'WHERE NOT TIPUS IN ('
      '                                         SELECT TIPUS '
      '                                         FROM [DIC2] '
      '                                         WHERE CODI = CODI )')
    Dicionario1 = wDataBasics.Prestacion
    Dicionario2 = wDataAdmisio.PrestaCodiCamps
    Dicionario3 = wDataCodis.CodiCamps
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = True
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSeleccionar = True
    AlSeleccionar = cInsertaPrestaAlSeleccionar
    Left = 304
    Top = 278
  end
  object bGrupsCodiCamps: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCodis.GrupsCodiCamps
    IndiceActivo = 'Primaria'
    CalcSimple = False
    AutoPost = False
    Padre = dsCodiCamps
    Left = 72
    Top = 336
    object bGrupsCodiCamps_TipusCodi: TStringField
      Tag = 100
      DisplayLabel = 'Tipuscodi'
      DisplayWidth = 20
      FieldName = 'TipusCodi'
    end
    object bGrupsCodiCamps_C_Codi: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 2
      FieldName = 'C_Codi'
    end
    object bGrupsCodiCamps_C_Grup: TStringField
      Tag = 100
      DisplayLabel = 'Codi Grup'
      DisplayWidth = 2
      FieldName = 'C_Grup'
      Size = 2
    end
    object bGrupsCodiCamps_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Grups_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Grups'
      Size = 2
      Calculated = True
    end
    object bGrupsCodiCamps_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Grups_N_Grup'
      LookupKeyFields = 'N_Grup'
      KeyFields = 'Grups'
      Size = 40
      Calculated = True
    end
    object bGrupsCodiCamps_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Tipus_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Tipus'
      Calculated = True
    end
    object bGrupsCodiCamps_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' del Tipus'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'Tipus_N_Tipus'
      LookupKeyFields = 'N_Tipus'
      KeyFields = 'Tipus'
      Size = 80
      Calculated = True
    end
    object bGrupsCodiCamps_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Supergrup'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tipus_G_Tipus'
      LookupKeyFields = 'G_Tipus'
      KeyFields = 'Tipus'
      Size = 15
      Calculated = True
    end
    object bGrupsCodiCamps_C2_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'codi_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'codi'
      Calculated = True
    end
    object bGrupsCodiCamps_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'codi_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'codi'
      Size = 40
      Calculated = True
    end
    object bGrupsCodiCamps_C2_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'codi_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'codi'
      Calculated = True
    end
    object bGrupsCodiCamps_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'codi_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'codi'
      Size = 40
      Calculated = True
    end
  end
  object dsGrupsCodiCamps: TDataSource
    DataSet = bGrupsCodiCamps
    Left = 176
    Top = 336
  end
  object bEspecialCodiCamps: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCodis.EspecialCodiCamps
    IndiceActivo = 'Primaria'
    CalcSimple = False
    AutoPost = False
    Padre = dsCodiCamps
    Left = 72
    Top = 384
    object bEspecialCodiCamps_C_Especial: TStringField
      Tag = 100
      DisplayLabel = 'Codi Especialitat'
      DisplayWidth = 2
      FieldName = 'C_Especial'
      Size = 2
    end
    object bEspecialCodiCamps_TipusCodi: TStringField
      Tag = 100
      DisplayLabel = 'Tipuscodi'
      DisplayWidth = 20
      FieldName = 'TipusCodi'
    end
    object bEspecialCodiCamps_C_Codi: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 2
      FieldName = 'C_Codi'
    end
    object bEspecialCodiCamps_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Especial_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'Especial'
      Size = 2
      Calculated = True
    end
    object bEspecialCodiCamps_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Especial_N_Especial'
      LookupKeyFields = 'N_Especial'
      KeyFields = 'Especial'
      Calculated = True
    end
    object bEspecialCodiCamps_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Inteconsulta'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Especial_C_Tipus'
      LookupKeyFields = 'C_Tipus'
      KeyFields = 'Especial'
      Size = 10
      Calculated = True
    end
    object bEspecialCodiCamps_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Tipus_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Tipus'
      Calculated = True
    end
    object bEspecialCodiCamps_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' del Tipus'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'Tipus_N_Tipus'
      LookupKeyFields = 'N_Tipus'
      KeyFields = 'Tipus'
      Size = 80
      Calculated = True
    end
    object bEspecialCodiCamps_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Supergrup'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tipus_G_Tipus'
      LookupKeyFields = 'G_Tipus'
      KeyFields = 'Tipus'
      Size = 15
      Calculated = True
    end
    object bEspecialCodiCamps_C2_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'codi_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'codi'
      Calculated = True
    end
    object bEspecialCodiCamps_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'codi_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'codi'
      Size = 40
      Calculated = True
    end
    object bEspecialCodiCamps_C2_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'codi_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'codi'
      Calculated = True
    end
    object bEspecialCodiCamps_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'codi_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'codi'
      Size = 40
      Calculated = True
    end
  end
  object dsEspecialCodiCamps: TDataSource
    DataSet = bEspecialCodiCamps
    Left = 176
    Top = 384
  end
  object bICDCodiCamps: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCodis.ICDCodiCamps
    IndiceActivo = 'Primaria'
    CalcSimple = False
    AutoPost = False
    Padre = dsCodiCamps
    Left = 72
    Top = 440
    object bICDCodiCamps_TipusCodi: TStringField
      Tag = 100
      DisplayLabel = 'Tipuscodi'
      DisplayWidth = 20
      FieldName = 'TipusCodi'
    end
    object bICDCodiCamps_C_Codi: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 2
      FieldName = 'C_Codi'
    end
    object bICDCodiCamps_C_ICD: TStringField
      Tag = 100
      DisplayLabel = 'Codi ICD'
      DisplayWidth = 15
      FieldName = 'C_ICD'
      Size = 15
    end
    object bICDCodiCamps_TipusICD: TStringField
      Tag = 100
      DisplayLabel = 'Tipus ICD'
      DisplayWidth = 1
      FieldName = 'TipusICD'
      Size = 1
    end
    object bICDCodiCamps_VersioCIM: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldName = 'VersioCIM'
      DisplayFormat = '#,##0;; '
    end
    object bICDCodiCamps_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Ordre'
    end
    object bICDCodiCamps_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Tipus_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Tipus'
      Calculated = True
    end
    object bICDCodiCamps_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' del Tipus'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'Tipus_N_Tipus'
      LookupKeyFields = 'N_Tipus'
      KeyFields = 'Tipus'
      Size = 80
      Calculated = True
    end
    object bICDCodiCamps_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Supergrup'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tipus_G_Tipus'
      LookupKeyFields = 'G_Tipus'
      KeyFields = 'Tipus'
      Size = 15
      Calculated = True
    end
    object bICDCodiCamps_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'codi_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'codi'
      Calculated = True
    end
    object bICDCodiCamps_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'codi_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'codi'
      Size = 40
      Calculated = True
    end
    object bICDCodiCamps_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'codi_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'codi'
      Calculated = True
    end
    object bICDCodiCamps_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'codi_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'codi'
      Size = 40
      Calculated = True
    end
    object bICDCodiCamps_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'codi_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'codi'
      Size = 10
      Calculated = True
    end
    object bICDCodiCamps_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'codi_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'codi'
      Calculated = True
    end
    object bICDCodiCamps_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'icd_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'icd'
      Size = 15
      Calculated = True
    end
    object bICDCodiCamps_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'icd_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'icd'
      Size = 255
      Calculated = True
    end
    object bICDCodiCamps_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'icd_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'icd'
      Size = 1
      Calculated = True
    end
    object bICDCodiCamps_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'icd_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'icd'
      Size = 1
      Calculated = True
    end
    object bICDCodiCamps_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'icd_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'icd'
      Size = 15
      Calculated = True
    end
    object bICDCodiCamps_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'icd_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'icd'
      Size = 90
      Calculated = True
    end
    object bICDCodiCamps_C2_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'icd_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'icd'
      Size = 24
      Calculated = True
    end
    object bICDCodiCamps_C2_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'icd_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'icd'
      Size = 40
      Calculated = True
    end
    object bICDCodiCamps_C2_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'icd_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'icd'
      Size = 15
      Calculated = True
    end
    object bICDCodiCamps_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'icd_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'icd'
      Size = 15
      Calculated = True
    end
    object bICDCodiCamps_C2_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'icd_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'icd'
      Calculated = True
    end
    object bICDCodiCamps_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'icd_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'icd'
      Size = 1
      Calculated = True
    end
    object bICDCodiCamps_C2_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'icd_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'icd'
      Size = 1
      Calculated = True
    end
    object bICDCodiCamps_C2_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'icd_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'icd'
      Size = 1
      Calculated = True
    end
    object bICDCodiCamps_C2_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'icd_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'icd'
      Size = 15
      Calculated = True
    end
    object bICDCodiCamps_C2_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'icd_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'icd'
      Size = 15
      Calculated = True
    end
    object bICDCodiCamps_C2_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'icd_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'icd'
      Size = 50
      Calculated = True
    end
    object bICDCodiCamps_C2_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'icd_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'icd'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
  end
  object dsICDCodiCamps: TDataSource
    DataSet = bICDCodiCamps
    Left = 176
    Top = 440
  end
  object bDretsMotiu: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsCodiCamps
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataConfig.DretsMotiu
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'C_MOTIU = :c_codi')
    Left = 72
    Top = 504
    object bDretsMotiu_C_Dret: TStringField
      Tag = 100
      DisplayLabel = 'Codi de dret'
      DisplayWidth = 10
      FieldName = 'C_Dret'
      Size = 10
    end
    object bDretsMotiu_C_Motiu: TSmallintField
      Tag = 100
      DisplayLabel = 'Motiu'
      DisplayWidth = 4
      FieldName = 'C_Motiu'
    end
    object bDretsMotiu_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig de Dret'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Dret_C_Dret'
      LookupKeyFields = 'C_Dret'
      KeyFields = 'Dret'
      Size = 10
      Calculated = True
    end
    object bDretsMotiu_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'Dret_Descripcio'
      LookupKeyFields = 'Descripcio'
      KeyFields = 'Dret'
      Size = 80
      Calculated = True
    end
    object bDretsMotiu_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'DretOrdre'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'Dret_DretOrdre'
      LookupKeyFields = 'DretOrdre'
      KeyFields = 'Dret'
      Size = 100
      Calculated = True
    end
    object bDretsMotiu_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Motiu'
      Calculated = True
    end
    object bDretsMotiu_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Motiu_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Motiu'
      Size = 40
      Calculated = True
    end
    object bDretsMotiu_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Motiu_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Motiu'
      Calculated = True
    end
    object bDretsMotiu_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Motiu_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Motiu'
      Size = 40
      Calculated = True
    end
    object bDretsMotiu_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Motiu_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Motiu'
      Size = 10
      Calculated = True
    end
    object bDretsMotiu_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Motiu_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Motiu'
      Calculated = True
    end
  end
  object dsDretsMotiu: TDataSource
    DataSet = bDretsMotiu
    Left = 176
    Top = 504
  end
end
