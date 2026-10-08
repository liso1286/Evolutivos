object wMain: TwMain
  Left = 478
  Top = 176
  Width = 421
  Height = 387
  Caption = 'Llistat CODIS ICD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TaskBar1: TTaskBar
    Left = 0
    Top = 0
    Width = 413
    Height = 22
    AutoSize = True
    ButtonHeight = 13
    Constraints.MinHeight = 22
    EdgeBorders = [ebTop, ebBottom]
    List = True
    PopupMenu = TaskBar1.Alineacion
    ShowCaptions = True
    TabOrder = 0
    Transparent = True
    ImageOn = 11
    ImageOff = 12
    OnlyMDIForms = True
    AutoChange = False
    UpdateCaptions = True
    object lProves: TLabel
      Left = 0
      Top = 2
      Width = 156
      Height = 13
      Caption = 'TREBALLANT EN PROVES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object log: TMemo
    Left = 0
    Top = 243
    Width = 413
    Height = 93
    Align = alBottom
    ScrollBars = ssBoth
    TabOrder = 1
    Visible = False
  end
  object HYGrid1: THYGrid
    Left = 0
    Top = 22
    Width = 413
    Height = 221
    Align = alClient
    DataSource = dsUPDCIMD
    DefaultDrawing = False
    FixedColor = clWhite
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    DefaultRowHeight = 17
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 32
    object Sinonims: TMenuItem
      Caption = 'Sin'#242'nims'
      OnClick = SinonimsClick
    end
    object Codis1: TMenuItem
      Caption = 'Codis ICD'
      object Diagnstics1: TMenuItem
        Caption = 'Diagn'#242'stics'
        Visible = False
        OnClick = Diagnstics1Click
      end
      object Procediments1: TMenuItem
        Caption = 'Procediments'
        Visible = False
        OnClick = Procediments1Click
      end
      object CausesExternes1: TMenuItem
        Caption = 'Causes Externes'
        Visible = False
        OnClick = CausesExternes1Click
      end
      object Neoplsies1: TMenuItem
        Caption = 'Neopl'#224'sies'
        Visible = False
        OnClick = Neoplsies1Click
      end
      object ots1: TMenuItem
        Caption = 'Tots'
        OnClick = ots1Click
      end
      object Codisantics1: TMenuItem
        Caption = 'Codis antics'
        Visible = False
        OnClick = Codisantics1Click
      end
    end
    object Gesti1: TMenuItem
      Caption = 'Gesti'#243
      object OmplirTaula1: TMenuItem
        Caption = 'Omplir Taula ICDCODIS'
        Visible = False
        OnClick = OmplirTaula1Click
      end
      object Posarpunts1: TMenuItem
        Caption = 'Posar punts ICDCODIS'
        Visible = False
        OnClick = Posarpunts1Click
      end
      object ActualitzarCODIICD1: TMenuItem
        Caption = 'Actualitzar CODIICD'
        Visible = False
        OnClick = ActualitzarCODIICD1Click
      end
      object OmplirIDIAGINES1: TMenuItem
        Caption = 'Omplir I_DIAGINES CODIICD'
        Visible = False
        OnClick = OmplirIDIAGINES1Click
      end
      object CompararICDCODISiCODIICD1: TMenuItem
        Caption = 'Comparar ICDCODIS i CODIICD'
        Visible = False
        OnClick = CompararICDCODISiCODIICD1Click
      end
      object LiteralsCODIICD1: TMenuItem
        Caption = 'Literals CODIICD'
        Visible = False
        OnClick = LiteralsCODIICD1Click
      end
      object OmplirResumiEtiqueta1: TMenuItem
        Caption = 'Omplir Resum i Etiqueta a CODIICD'
        Visible = False
        OnClick = OmplirResumiEtiqueta1Click
      end
      object Accents1: TMenuItem
        Caption = 'Accents'
        Visible = False
        OnClick = Accents1Click
      end
      object Passarasinnim11: TMenuItem
        Caption = 'Passar a sin'#242'nim 1'
        Visible = False
        OnClick = Passarasinnim11Click
      end
      object Literalscastell1: TMenuItem
        Caption = 'Literals castell'#224
        OnClick = Literalscastell1Click
      end
      object NeuroTrauma1: TMenuItem
        Caption = 'NeuroTrauma'
        Visible = False
        OnClick = NeuroTrauma1Click
      end
      object ValidaTIPUS1: TMenuItem
        Caption = 'Valida TIPUS'
        Visible = False
        OnClick = ValidaTIPUS1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ActualitzarCIMDCODIICD1: TMenuItem
        Caption = 'Actualitzar CIM D(CODIICD)'
        OnClick = ActualitzarCIMDCODIICD1Click
      end
      object ActualitzarCIMPCODIICD1: TMenuItem
        Caption = 'Actualitzar CIM P(CODIICD)'
        OnClick = ActualitzarCIMPCODIICD1Click
      end
      object AccentsCIMCODIICD1: TMenuItem
        Caption = 'Accents CIM (CODIICD)'
        Visible = False
        OnClick = AccentsCIMCODIICD1Click
      end
      object Corregirpuntcausesexternes1: TMenuItem
        Caption = 'Corregir punt causes externes'
        OnClick = Corregirpuntcausesexternes1Click
      end
    end
    object Manteniment1: TMenuItem
      Caption = 'Manteniment'
      object Diagnstics2: TMenuItem
        Caption = 'Diagn'#242'stics'
        Visible = False
        OnClick = Diagnstics2Click
      end
      object Procediments2: TMenuItem
        Caption = 'Procediments'
        Visible = False
        OnClick = Procediments2Click
      end
      object CausesExternes2: TMenuItem
        Caption = 'Causes Externes'
        Visible = False
        OnClick = CausesExternes2Click
      end
      object SubcodisICD1: TMenuItem
        Caption = 'Subcodis ICD'
        OnClick = SubcodisICD1Click
      end
    end
    object Sortir1: TMenuItem
      Caption = 'Sortir'
      OnClick = Sortir1Click
    end
  end
  object CODISICD: THalcyonDataSet
    About = 'Halcyon Version 06.53 (10 Sep 99)'
    DatabaseName = 'G:\BIN\CODISICD'
    Exclusive = False
    IndexDefs = <>
    IndexName = 'ICD'
    LockProtocol = Default
    ReadOnly = True
    TranslateASCII = True
    UseDeleted = False
    UserID = 0
    Left = 120
    Top = 40
  end
  object dsCodisICD: TDataSource
    DataSet = CODISICD
    Left = 184
    Top = 40
  end
  object qInsert: TQuery
    DatabaseName = 'InternaHola'
    SQL.Strings = (
      
        'insert into icdcodis (c_tipus, dataini, c_icd, c_icd2, datafi, t' +
        '_diag, n_icd_llarg, i_diagsec, '
      
        'i_diagines, i_cexg, i_cex, i_cin, i_diagadd, i_subadd, i_perinat' +
        'a, dataalta, '
      
        'n_icd_curt, gg_diag, gg_proc, causa_ex, edat_incon, lim_edat_s, ' +
        'lim_edat_i, '
      
        'sexe, proc_mq, proc_rell, datarevi, etiqueta, a_diag, d_agrupaci' +
        ', t_agr, '
      'd_t_agr, lliure)'
      
        'values (:c_tipus, :dataini, :c_icd, :c_icd2, :datafi, :t_diag, :' +
        'n_icd_llarg, :i_diagsec, '
      
        ':i_diagines, :i_cexg, :i_cex, :i_cin, :i_diagadd, :i_subadd, :i_' +
        'perinata, :dataalta,'
      
        ':n_icd_curt, :gg_diag, :gg_proc, :causa_ex, :edat_incon, :lim_ed' +
        'at_s, '
      
        ':lim_edat_i, :sexe, :proc_mq, :proc_rell, :datarevi, :etiqueta, ' +
        ':a_diag, '
      ':d_agrupaci, :t_agr, :d_t_agr, :lliure)')
    Left = 235
    Top = 39
    ParamData = <
      item
        DataType = ftString
        Name = 'c_tipus'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'dataini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_icd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_icd2'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'datafi'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 't_diag'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'n_icd_llarg'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_diagsec'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_diagines'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_cexg'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_cex'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_cin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_diagadd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_subadd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_perinata'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'dataalta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'n_icd_curt'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'gg_diag'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'gg_proc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'causa_ex'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'edat_incon'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lim_edat_s'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lim_edat_i'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'sexe'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'proc_mq'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'proc_rell'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'datarevi'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'etiqueta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'a_diag'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'd_agrupaci'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 't_agr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'd_t_agr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lliure'
        ParamType = ptInput
      end>
  end
  object CIM9MC: THalcyonDataSet
    About = 'Halcyon Version 06.53 (10 Sep 99)'
    DatabaseName = 'G:\BIN\CODISICD'
    Exclusive = False
    IndexDefs = <>
    IndexName = 'ICD'
    LockProtocol = Default
    ReadOnly = True
    TableName = 'CIM9MC_2014_2015.DBF'
    TranslateASCII = True
    UseDeleted = False
    UserID = 0
    Left = 64
    Top = 104
  end
  object qLiterals: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'update CODIICD set N_ICD=:n_icd where C_ICD=:c_icd')
    Left = 107
    Top = 103
    ParamData = <
      item
        DataType = ftString
        Name = 'n_icd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_icd'
        ParamType = ptInput
      end>
  end
  object qAfegir: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'update ICDSINONIMS set PARAULES = :paraules where CLAU=:clau')
    Left = 155
    Top = 103
    ParamData = <
      item
        DataType = ftMemo
        Name = 'paraules'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'clau'
        ParamType = ptInput
      end>
  end
  object qParaules: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'update ICDSINONIMS set PARAULES = :paraules where C_ICD = :C_ICD'
      'and ordre=1')
    Left = 203
    Top = 103
    ParamData = <
      item
        DataType = ftString
        Name = 'paraules'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_ICD'
        ParamType = ptInput
      end>
  end
  object qResum: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'update CODIICD '
      'set R_ICD=:r_icd'
      'where C_ICD=:c_icd')
    Left = 259
    Top = 103
    ParamData = <
      item
        DataType = ftString
        Name = 'r_icd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_icd'
        ParamType = ptInput
      end>
  end
  object ICD_E: THalcyonDataSet
    About = 'Halcyon Version 06.53 (10 Sep 99)'
    DatabaseName = 'G:\BIN\CODISICD\CIE2006'
    Exclusive = False
    IndexDefs = <>
    IndexName = 'ICD'
    LockProtocol = Default
    ReadOnly = True
    TableName = 'ETICIE.DBF'
    TranslateASCII = True
    UseDeleted = False
    UserID = 0
    Left = 64
    Top = 160
  end
  object UPDCIMD: THalcyonDataSet
    About = 'Halcyon Version 06.53 (10 Sep 99)'
    DatabaseName = 'C:\DELPHI\PROJECTES\CODISICD'
    Exclusive = False
    IndexDefs = <>
    IndexName = 'ICD'
    LockProtocol = Default
    ReadOnly = True
    TableName = 'AIM_D26.DBF'
    TranslateASCII = True
    UseDeleted = False
    UserID = 0
    Left = 85
    Top = 232
    object UPDCIMDCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 254
    end
    object UPDCIMDCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 254
    end
    object UPDCIMDCAMPO5: TStringField
      FieldName = 'CAMPO5'
      Size = 254
    end
    object UPDCIMDCAMPO6: TStringField
      FieldName = 'CAMPO6'
      Size = 254
    end
    object UPDCIMDCAMPO7: TStringField
      FieldName = 'CAMPO7'
      Size = 254
    end
    object UPDCIMDCAMPO8: TStringField
      FieldName = 'CAMPO8'
      Size = 254
    end
    object UPDCIMDCAMPO15: TStringField
      FieldName = 'CAMPO15'
      Size = 254
    end
  end
  object qInsCIM: TQuery
    DatabaseName = 'interna'
    SQL.Strings = (
      
        'insert into CODIICD(C_ICD, N_ICD, BAIXA, I_DIAGINES, R_ICD, PARA' +
        'ULES,TIPUS,VERSIOCIM)'
      
        'VALUES(:C_ICD, :N_ICD, '#39'N'#39', :I_DIAGINES, :R_ICD, :PARAULES, :TIP' +
        'US,:VERSIOCIM)')
    Left = 139
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'C_ICD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_ICD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'I_DIAGINES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'R_ICD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARAULES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPUS'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VERSIOCIM'
        ParamType = ptUnknown
      end>
  end
  object qInsSINONIM: TQuery
    DatabaseName = 'interna'
    SQL.Strings = (
      
        'insert into ICDSINONIMS(CLAU, TIPUS, C_ICD, ORDRE, S_ICD, ESTAT,' +
        'PARAULES)'
      'VALUES(:CLAU,:TIPUS,:C_ICD,1,:S_ICD, '#39'A'#39',:PARAULES)')
    Left = 355
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLAU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_ICD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'S_ICD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARAULES'
        ParamType = ptInput
      end>
  end
  object qUpdCIM: TQuery
    DatabaseName = 'interna'
    SQL.Strings = (
      'update CODIICD set paraules = :paraules'
      'where c_icd = :c_icd')
    Left = 195
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'PARAULES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_ICD'
        ParamType = ptInput
      end>
  end
  object dsUPDCIMD: TDataSource
    DataSet = UPDCIMD
    Left = 23
    Top = 232
  end
  object dsUPDCIMP: TDataSource
    DataSet = UPDCIMP
    Left = 23
    Top = 280
  end
  object UPDCIMP: THalcyonDataSet
    About = 'Halcyon Version 06.53 (10 Sep 99)'
    DatabaseName = 'C:\DELPHI\PROJECTES\CODISICD'
    Exclusive = False
    IndexDefs = <>
    IndexName = 'ICD'
    LockProtocol = Default
    ReadOnly = True
    TableName = 'AIM_P26.DBF'
    TranslateASCII = True
    UseDeleted = False
    UserID = 0
    Left = 86
    Top = 280
    object UPDCIMPCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 254
    end
    object UPDCIMPCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 254
    end
    object UPDCIMPCAMPO5: TStringField
      FieldName = 'CAMPO5'
      Size = 254
    end
    object UPDCIMPCAMPO6: TStringField
      FieldName = 'CAMPO6'
      Size = 254
    end
    object UPDCIMPCAMPO7: TStringField
      FieldName = 'CAMPO7'
      Size = 254
    end
    object UPDCIMPCAMPO8: TStringField
      FieldName = 'CAMPO8'
      Size = 254
    end
  end
end
