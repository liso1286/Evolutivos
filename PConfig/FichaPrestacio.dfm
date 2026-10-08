object wFichaPrestacio: TwFichaPrestacio
  Left = 645
  Top = 244
  Width = 931
  Height = 662
  Caption = 'Prestacions'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 297
    Width = 923
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object HYGrid4: THYGrid
    Left = 0
    Top = 25
    Width = 923
    Height = 272
    Align = alTop
    Color = clWhite
    DataSource = dsTracs
    DefaultDrawing = False
    FixedColor = clSilver
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AlPintarGrid = HYGrid4AlPintarGrid
    DefaultRowHeight = 16
    Columns = <
      item
        Expanded = False
        FieldName = 'C_Prestacio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_Prestacio'
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_Prestacio2'
        Title.Caption = 'Descripci'#243' (cast.)'
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Resum'
        Title.Caption = 'Acr'#242'nim'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tipus'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipusPresta_N_Codi'
        Title.Caption = 'N Tipus'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EsEase'
        Title.Caption = 'Es EASE/NPC'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Centre'
        Visible = True
      end>
  end
  object HYBarra5: THYBarra
    Left = 0
    Top = 0
    Width = 923
    Height = 25
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clSilver
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    DataSource = dsTracs
    VerOrdenar = False
    VerIndices = False
    Titulo = True
    VerPrint = True
    VerRefresh = True
    object sbCopy: TSpeedButton
      Left = 376
      Top = 1
      Width = 41
      Height = 25
      Hint = 'Copiar prestaci'#243' d'#39'una altra'
      Caption = 'Copia'
      NumGlyphs = 2
      OnClick = sbCopyClick
    end
    object cbBaixa: TCheckBox
      Left = 464
      Top = 5
      Width = 177
      Height = 17
      Caption = 'Mostra les prestacions de baixa'
      TabOrder = 0
      OnClick = cbBaixaClick
    end
  end
  object PC: TPageControl
    Left = 0
    Top = 300
    Width = 923
    Height = 331
    ActivePage = tsCodiCamps
    Align = alClient
    TabIndex = 4
    TabOrder = 2
    object tsDrets: TTabSheet
      Caption = 'Drets'
      ImageIndex = 3
      object PanelDrets: THYSqlDualList
        Left = 0
        Top = 0
        Width = 915
        Height = 303
        ColorFinestres = clWhite
        Align = alClient
        Color = clWhite
        ParentColor = False
        DestinoIndex = 0
        OrigenIndex = 0
        DataBaseName = 'interna'
        SqlOrigen = 
          'SELECT DRETORDRE, C_DRET FROM DRETS WHERE  C_DRET STARTING WITH ' +
          '"P" AND C_DRET NOT IN  ( SELECT C_DRET FROM DRETSPRESTA WHERE C_' +
          'PRESTACIO = :C_PRESTACIO ) ORDER BY 1'
        SqlDestino = 
          'SELECT D.DRETORDRE, D.C_DRET FROM DRETSPRESTA P, DRETS D WHERE P' +
          '.C_DRET = D.C_DRET AND C_PRESTACIO = :C_PRESTACIO ORDER BY 1'
        SqlInsert = 
          'INSERT INTO DRETSPRESTA (C_DRET,C_PRESTACIO) VALUES ([C_DRET],:C' +
          '_PRESTACIO)'
        SqlDelete = 
          'DELETE FROM DRETSPRESTA WHERE C_PRESTACIO = :C_PRESTACIO AND C_D' +
          'RET = [C_DRET]'
        MasterSource = dsTracs
        SoloDestino = False
      end
    end
    object tsMetges: TTabSheet
      Caption = 'Usuaris (coordinadors)'
      ImageIndex = 2
      object HYGrid2: THYGrid
        Left = 0
        Top = 25
        Width = 915
        Height = 278
        Align = alClient
        Color = clWhite
        DataSource = dsMetgePresta
        DefaultDrawing = False
        FixedColor = clSilver
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
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
            FieldName = 'CODI'
            Title.Caption = 'Codi usuari'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Metge_Metge'
            Title.Caption = 'Nom'
            Width = 161
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Metge_C_Grup'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Metge_C_Especial'
            Width = 63
            Visible = True
          end>
      end
      object HYBarra2: THYBarra
        Left = 0
        Top = 0
        Width = 915
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = ' '
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        DataSource = dsMetgePresta
        AlInsertar = HYBarra2AlInsertar
        AlBorrar = HYBarra2AlBorrar
        VerEditar = False
        VerOrdenar = False
        VerSalir = False
        VerIndices = False
        Titulo = False
        VerPrint = False
        VerRefresh = True
      end
    end
    object tsPrestacionsCompatibles: TTabSheet
      Caption = 'Prestacions incompatibles'
      ImageIndex = 3
      object PanelComp: THYSqlDualList
        Left = 0
        Top = 0
        Width = 915
        Height = 303
        ColorFinestres = clWhite
        Align = alClient
        Color = clWhite
        ParentColor = False
        DestinoIndex = 0
        OrigenIndex = 0
        DataBaseName = 'interna'
        SqlOrigen = 
          'SELECT P.N_PRESTACIO, P.C_PRESTACIO FROM PRESTACION P WHERE P.C_' +
          'PRESTACIO NOT IN (SELECT C_PRESTACOMP FROM PRESTACOMP WHERE C_PR' +
          'ESTACIO = :C_PRESTACIO) ORDER BY 1'
        SqlDestino = 
          'SELECT N_PRESTACIO, C.C_PRESTACOMP, P.C_PRESTACIO FROM PRESTACIO' +
          'N P, PRESTACOMP C WHERE P.C_PRESTACIO = C.C_PRESTACOMP AND C.C_P' +
          'RESTACIO = :C_PRESTACIO ORDER BY 1'
        SqlInsert = 
          'INSERT INTO PRESTACOMP (C_PRESTACOMP,C_PRESTACIO) VALUES ([C_PRE' +
          'STACIO],:C_PRESTACIO)'
        SqlDelete = 
          'DELETE FROM PRESTACOMP  WHERE C_PRESTACIO = :C_PRESTACIO AND C_P' +
          'RESTACOMP = [C_PRESTACOMP]'
        MasterSource = dsTracs
        SoloDestino = False
      end
    end
    object tsAreesSC: TTabSheet
      Caption = #192'rees excloses en SC'
      ImageIndex = 3
      object HYBarra1: THYBarra
        Left = 0
        Top = 0
        Width = 892
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = ' '
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        DataSource = dsAreas
        VerOrdenar = False
        VerSalir = False
        VerIndices = False
        Titulo = False
        VerPrint = False
        VerRefresh = True
      end
      object HYGrid1: THYGrid
        Left = 0
        Top = 25
        Width = 892
        Height = 278
        Align = alClient
        Color = clWhite
        DataSource = dsAreas
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
            FieldName = 'C_Area'
            Title.Caption = 'Codi '#224'rea'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Area_N_Area'
            Title.Caption = 'Descripci'#243' '#224'rea'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Area_Objectiu'
            Title.Caption = 'Objectius (Sessi'#243' conjunta)'
            Width = 142
            Visible = True
          end>
      end
    end
    object tsCodiCamps: TTabSheet
      Caption = 'CodiCamps (motiu, origen, car'#224'cter, etc.)'
      ImageIndex = 4
      object HYBarra3: THYBarra
        Left = 0
        Top = 0
        Width = 915
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = ' '
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        DataSource = dsPrestaCodiCamps
        VerEditar = False
        VerOrdenar = False
        VerSalir = False
        VerIndices = False
        Titulo = False
        VerPrint = False
        VerRefresh = True
        object CheckBox1: TCheckBox
          Left = 256
          Top = 8
          Width = 156
          Height = 17
          Caption = 'Ocultar par'#224'metres de baixa'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBox1Click
        end
      end
      object HYGrid3: THYGrid
        Left = 0
        Top = 25
        Width = 915
        Height = 278
        Align = alClient
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
            FieldName = 'TipusCodi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_Codi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codi_N_Codi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codi_Ordre'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codi_N_Codi2'
            Visible = True
          end>
      end
    end
  end
  object mgcCopy: THyMoveGroupControl
    Left = 24
    Top = 88
    Width = 630
    Height = 142
    Caption = 'Creant nova prestaci'#243' com a c'#242'pia d'#39'una altra'
    Color = clSilver
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Visible = False
    FontCaption.Charset = DEFAULT_CHARSET
    FontCaption.Color = clWhite
    FontCaption.Height = -11
    FontCaption.Name = 'MS Sans Serif'
    FontCaption.Style = []
    object Label1: TLabel
      Left = 19
      Top = 74
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label2: TLabel
      Left = 53
      Top = 56
      Width = 21
      Height = 13
      Caption = 'Codi'
    end
    object Label3: TLabel
      Left = 95
      Top = 55
      Width = 71
      Height = 13
      Caption = 'Descripci'#243' (35)'
    end
    object Label4: TLabel
      Left = 384
      Top = 56
      Width = 48
      Height = 13
      Caption = 'Resum (8)'
    end
    object sbCancel: TSpeedButton
      Left = 584
      Top = 71
      Width = 23
      Height = 22
      Hint = 'Cancel'#183'la canvis'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333883333333
        3333333FF33333333333339118333339833333888F333338F333339111833391
        1833338888F333888F3333911118391111833388888F388888F3333911118111
        118333388888F88888F333339111111118333333888888888F33333339111111
        8333333338888888F333333333111118333333333388888F3333333333911118
        33333333338888F33333333339111118333333333888888F3333333391118111
        833333338888F888F33333391118391118333338888F38888F33333911833391
        1183333888F3338888F333339133333911133333883333388883333333333333
        9193333333333333888333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbCancelClick
    end
    object sbDesa: TSpeedButton
      Left = 558
      Top = 71
      Width = 23
      Height = 22
      Hint = 'Desa canvis'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555552055555
        55555555577FF5555555555522205555555555557777F5555555555522205555
        555555557777FF5555555552222205555555555777777F555555552222220555
        5555557777777FF5555557220522205555555777757777F55555720555522055
        55557775555777FF5555555555522205555555555557777F5555555555552205
        555555555555777FF5555555555552205555555555555777FF55555555555572
        05555555555555777FF5555555555557205555555555555777FF555555555555
        5220555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbDesaClick
    end
    object Label6: TLabel
      Left = 95
      Top = 95
      Width = 125
      Height = 13
      Caption = 'Descripci'#243' en castell'#224' (35)'
    end
    object lDescripcioOrigen: TLabel
      Left = 97
      Top = 34
      Width = 165
      Height = 13
      Caption = '                                                       '
    end
    object eDescripcio: TEdit
      Left = 94
      Top = 71
      Width = 283
      Height = 21
      MaxLength = 35
      TabOrder = 1
    end
    object eCodi: TEdit
      Left = 51
      Top = 71
      Width = 37
      Height = 21
      MaxLength = 4
      TabOrder = 2
    end
    object eResum: TEdit
      Left = 382
      Top = 71
      Width = 99
      Height = 21
      MaxLength = 8
      TabOrder = 3
    end
    object eDescripcio2: TEdit
      Left = 94
      Top = 111
      Width = 283
      Height = 21
      MaxLength = 35
      TabOrder = 4
    end
    object cCodiOrigen: THYTextEdit
      Left = 16
      Top = 32
      Width = 73
      Height = 19
      Hint = 'F3 per consultar valors'
      OnEnter = ObreConsultaPrestacio
      AlConsultar = ObreConsultaPrestacio
      Tipo = teConsultaCustom
      ConsultaCustom = cPresta
      Eti = 'De'
      EtiSepara = 35
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      TabOrder = 0
      TabStop = True
      AutoSelect = False
    end
  end
  object Tracs: THYSqlBrowse
    AfterScroll = TracsAfterScroll
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Prestacion
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'tipus <> -1')
    Left = 702
    Top = 95
    object Tracs_C_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'C'#243'di Prestacio'
      DisplayWidth = 4
      FieldName = 'C_Prestacio'
      Size = 4
    end
    object Tracs_N_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 35
      FieldName = 'N_Prestacio'
      Size = 35
    end
    object Tracs_N_Prestacio2: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 35
      FieldName = 'N_Prestacio2'
      Size = 35
    end
    object Tracs_Resum: TStringField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Resum'
      Size = 8
    end
    object Tracs_Facturar: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Facturar'
      Size = 1
    end
    object Tracs_Tipus: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Tipus'
    end
    object Tracs_CodiFacturacio: TStringField
      Tag = 100
      DisplayLabel = 'Codi Facturacio'
      DisplayWidth = 40
      FieldName = 'CodiFacturacio'
      Size = 40
    end
    object Tracs_DescripcioSCS: TStringField
      Tag = 100
      DisplayWidth = 40
      FieldName = 'DescripcioSCS'
      Size = 40
    end
    object Tracs_EsEase: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'EsEase'
      Size = 1
    end
    object Tracs_Planta: TStringField
      Tag = 100
      DisplayWidth = 10
      FieldName = 'Planta'
      Size = 10
    end
    object Tracs_Subgrup: TSmallintField
      Tag = 100
      DisplayLabel = 'Subgrup'
      DisplayWidth = 2
      FieldName = 'SUBGRUP'
      Origin = 'INTERNA.PRESTACION.SUBGRUP'
    end
    object Tracs_NoSCS: TStringField
      Tag = 100
      DisplayLabel = 'No SCS'
      DisplayWidth = 1
      FieldName = 'NoSCS'
      Size = 1
    end
    object Tracs_C_CONCEPTE_TESIS: TStringField
      Tag = 100
      DisplayLabel = 'Codi concepte Tesis'
      DisplayWidth = 8
      FieldName = 'C_CONCEPTE_TESIS'
      Size = 8
    end
    object Tracs_C_Prestacio_Mare: TStringField
      Tag = 100
      DisplayLabel = 'Codi prestaci'#243' mare'
      DisplayWidth = 4
      FieldName = 'C_Prestacio_Mare'
      Size = 4
    end
    object Tracs_Grup: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Grup'
    end
    object Tracs_Clinica: TSmallintField
      Tag = 100
      DisplayLabel = 'Cl'#237'nica BCN'
      DisplayWidth = 2
      FieldName = 'Clinica'
    end
    object Tracs_Centre: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Centre'
      Size = 1
    end
    object Tracs_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TipusPresta_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TipusPresta'
      Calculated = True
    end
    object Tracs_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TipusPresta_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'TipusPresta'
      Size = 40
      Calculated = True
    end
    object Tracs_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TipusPresta_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TipusPresta'
      Calculated = True
    end
    object Tracs_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TipusPresta_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'TipusPresta'
      Size = 40
      Calculated = True
    end
    object Tracs_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TipusPresta_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'TipusPresta'
      Size = 10
      Calculated = True
    end
    object Tracs_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TipusPresta_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TipusPresta'
      Calculated = True
    end
    object Tracs_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'GrupPresta_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'GrupPresta'
      Calculated = True
    end
    object Tracs_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'GrupPresta_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'GrupPresta'
      Size = 40
      Calculated = True
    end
    object Tracs_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'GrupPresta_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'GrupPresta'
      Calculated = True
    end
    object Tracs_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'GrupPresta_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'GrupPresta'
      Size = 40
      Calculated = True
    end
    object Tracs_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'GrupPresta_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'GrupPresta'
      Size = 10
      Calculated = True
    end
    object Tracs_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'GrupPresta_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'GrupPresta'
      Calculated = True
    end
    object Tracs_C2_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Clinica_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Clinica'
      Calculated = True
    end
    object Tracs_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Clinica_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Clinica'
      Size = 40
      Calculated = True
    end
    object Tracs_C2_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Clinica_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Clinica'
      Calculated = True
    end
    object Tracs_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Clinica_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Clinica'
      Size = 40
      Calculated = True
    end
    object Tracs_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Clinica_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Clinica'
      Size = 10
      Calculated = True
    end
    object Tracs_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Clinica_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Clinica'
      Calculated = True
    end
    object Tracs_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'centre_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'centre'
      Size = 1
      Calculated = True
    end
    object Tracs_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'centre_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'centre'
      Size = 60
      Calculated = True
    end
  end
  object dsTracs: TDataSource
    DataSet = Tracs
    Left = 774
    Top = 95
  end
  object MetgePresta: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCodis.MetgePresta
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    Padre = dsTracs
    Left = 702
    Top = 148
    object MetgePresta_C_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldName = 'C_PRESTACIO'
      Origin = 'METGEPRESTA.C_PRESTACIO'
      Size = 4
    end
    object MetgePresta_Codi: TStringField
      Tag = 100
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldName = 'CODI'
      Origin = 'METGEPRESTA.CODI'
      Size = 5
    end
    object MetgePresta_MAX_VISITES: TIntegerField
      Tag = 100
      DisplayLabel = 'Max Visites'
      DisplayWidth = 4
      FieldName = 'MAX_VISITES'
      Origin = 'METGEPRESTA.MAX_VISITES'
      DisplayFormat = '#,##0;; '
    end
    object MetgePresta_MINUTS: TIntegerField
      Tag = 100
      DisplayLabel = 'Minuts'
      DisplayWidth = 4
      FieldName = 'MINUTS'
      Origin = 'METGEPRESTA.MINUTS'
      DisplayFormat = '#,##0;; '
    end
    object MetgePresta_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Metge_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'Metge'
      Size = 5
      Calculated = True
    end
    object MetgePresta_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Metge_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Metge'
      Calculated = True
    end
    object MetgePresta_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Metge_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'Metge'
      Size = 15
      Calculated = True
    end
    object MetgePresta_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Metge_Nom'
      LookupKeyFields = 'Nom'
      KeyFields = 'Metge'
      Size = 3
      Calculated = True
    end
    object MetgePresta_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Metge_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'Metge'
      Size = 4
      Calculated = True
    end
    object MetgePresta_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'DigCon'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Metge_DigCon'
      LookupKeyFields = 'DigCon'
      KeyFields = 'Metge'
      Size = 2
      Calculated = True
    end
    object MetgePresta_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Metge_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Metge'
      Size = 2
      Calculated = True
    end
    object MetgePresta_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Metge_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'Metge'
      Size = 2
      Calculated = True
    end
    object MetgePresta_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Metge_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Metge'
      Size = 1
      Calculated = True
    end
    object MetgePresta_C0_9: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Metge_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Metge'
      Calculated = True
    end
    object MetgePresta_C0_10: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Metge_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'Metge'
      Size = 1
      Calculated = True
    end
    object MetgePresta_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Prestacio'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Prestacio_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'Prestacio'
      Size = 4
      Calculated = True
    end
    object MetgePresta_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 35
      FieldKind = fkCalculated
      FieldName = 'Prestacio_N_Prestacio'
      LookupKeyFields = 'N_Prestacio'
      KeyFields = 'Prestacio'
      Size = 35
      Calculated = True
    end
    object MetgePresta_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 35
      FieldKind = fkCalculated
      FieldName = 'Prestacio_N_Prestacio2'
      LookupKeyFields = 'N_Prestacio2'
      KeyFields = 'Prestacio'
      Size = 35
      Calculated = True
    end
    object MetgePresta_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Prestacio_Resum'
      LookupKeyFields = 'Resum'
      KeyFields = 'Prestacio'
      Size = 8
      Calculated = True
    end
    object MetgePresta_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prestacio_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Prestacio'
      Calculated = True
    end
  end
  object dsMetgePresta: TDataSource
    DataSet = MetgePresta
    Left = 774
    Top = 148
  end
  object pPrestaMetge: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT * '
      'FROM [Dic1]'
      'WHERE BAIXA = "N"    AND NOT CODI IN '
      '        ( SELECT CODI '
      '          FROM [DIC2]'
      '          WHERE C_PRESTACIO = "1004")'
      '[AND FILTRO]'
      '[ORDEN]'
      '')
    SqlDicTotal.Strings = (
      'SELECT COUNT(*)'
      'FROM [DIC1]'
      'WHERE BAIXA = "N"   AND NOT CODI IN '
      '        ( SELECT CODI '
      '          FROM [DIC2]'
      '          WHERE C_PRESTACIO = "1004")'
      '[AND FILTRO]'
      '[ORDEN]'
      '')
    Dicionario1 = wDataBasics.Metges
    Dicionario2 = wDataCodis.MetgePresta
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSeleccionar = True
    AlSeleccionar = pPrestaMetgeAlSeleccionar
    Left = 408
    Top = 212
  end
  object BorraPresta: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT * '
      'FROM METGEPRESTA '
      'WHERE C_Prestacio = "1004"')
    SqlDicTotal.Strings = (
      'SELECT COUNT(*) '
      'FROM METGEPRESTA '
      'WHERE C_PRESTACIO = "1004"')
    Dicionario1 = wDataBasics.Metges
    Dicionario2 = wDataCodis.MetgePresta
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = True
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSeleccionar = True
    AlSeleccionar = BorraPrestaAlSeleccionar
    Left = 480
    Top = 212
  end
  object PrestaAreas: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.AreasPresta
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    Padre = dsTracs
    Left = 840
    Top = 88
    object PrestaAreas_C_Area: TStringField
      Tag = 100
      DisplayLabel = 'C'#243'di Area'
      DisplayWidth = 3
      FieldName = 'C_Area'
      Size = 3
    end
    object PrestaAreas_C_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'C'#243'di Prestacio'
      DisplayWidth = 4
      FieldName = 'C_Prestacio'
      Size = 4
    end
    object PrestaAreas_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Area'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Area_C_Area'
      LookupKeyFields = 'C_Area'
      KeyFields = 'Area'
      Size = 3
      Calculated = True
    end
    object PrestaAreas_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Area'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Area_N_Area'
      LookupKeyFields = 'N_Area'
      KeyFields = 'Area'
      Size = 40
      Calculated = True
    end
    object PrestaAreas_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Objectiu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Area_Objectiu'
      LookupKeyFields = 'Objectiu'
      KeyFields = 'Area'
      Size = 1
      Calculated = True
    end
    object PrestaAreas_C0_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Area_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Area'
      Calculated = True
    end
    object PrestaAreas_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Prestacio'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Presta_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'Presta'
      Size = 4
      Calculated = True
    end
    object PrestaAreas_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 35
      FieldKind = fkCalculated
      FieldName = 'Presta_N_Prestacio'
      LookupKeyFields = 'N_Prestacio'
      KeyFields = 'Presta'
      Size = 35
      Calculated = True
    end
    object PrestaAreas_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 35
      FieldKind = fkCalculated
      FieldName = 'Presta_N_Prestacio2'
      LookupKeyFields = 'N_Prestacio2'
      KeyFields = 'Presta'
      Size = 35
      Calculated = True
    end
    object PrestaAreas_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Presta_Resum'
      LookupKeyFields = 'Resum'
      KeyFields = 'Presta'
      Size = 8
      Calculated = True
    end
    object PrestaAreas_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Presta_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Presta'
      Calculated = True
    end
  end
  object dsAreas: TDataSource
    DataSet = PrestaAreas
    Left = 840
    Top = 144
  end
  object bPrestaCodiCamps: THYSqlBrowse
    DatabaseName = 'Interna'
    Filtered = True
    OnFilterRecord = bPrestaCodiCampsFilterRecord
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PRESTACODICAMPS'
      'WHERE  ( C_Prestacio = :C_Prestacio )'
      
        'ORDER BY PRESTACODICAMPS.'#39'C_Prestacio'#39', PRESTACODICAMPS.'#39'TipusCo' +
        'di'#39', PRESTACODICAMPS.'#39'C_Codi'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.PrestaCodiCamps
    IndiceActivo = 'Primaria'
    CalcSimple = False
    AutoPost = False
    Padre = dsTracs
    Left = 720
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'C_Prestacio'
        ParamType = ptUnknown
      end>
    object bPrestaCodiCamps_C_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'C'#243'di Prestacio'
      DisplayWidth = 4
      FieldName = 'C_Prestacio'
      Size = 4
    end
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
    object bPrestaCodiCamps_C0_7: TSmallintField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prestacions_Grup'
      LookupKeyFields = 'Grup'
      KeyFields = 'Prestacions'
      Calculated = True
    end
    object bPrestaCodiCamps_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prestacions_Centre'
      LookupKeyFields = 'Centre'
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
    Left = 824
    Top = 216
  end
  object cPresta: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select  C_PRESTACIO, N_PRESTACIO, RESUM, TIPUS, ESEASE'
      'from PRESTACION'
      '[FILTRO]'
      '[ORDEN]')
    SqlDicTotal.Strings = (
      'SELECT COUNT(*) FROM PRESTACION'
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataBasics.Prestacion
    Titulo = 'Tria la prestaci'#243' que vols copiar'
    Filtros = <
      item
        Nombre = 'Baixa'
        NombreDB = 'Tipus'
        Tipo = tiNumero
        Condicion = tiMayor
      end>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = True
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSeleccionar = True
    AlSeleccionar = cPrestaAlSeleccionar
    Left = 624
    Top = 212
  end
end
