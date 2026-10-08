object usuariform: Tusuariform
  Left = 771
  Top = 204
  Width = 1080
  Height = 658
  Caption = 'Ordres de treball'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 289
    Width = 1064
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 292
    Width = 1064
    Height = 327
    Align = alClient
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 1064
    Height = 240
    Align = alTop
    Color = 11796477
    TabOrder = 1
    OnEnter = Panel2Enter
    object Label1: TLabel
      Left = 11
      Top = 40
      Width = 15
      Height = 13
      Caption = 'N'#186
      Color = 11796477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 186
      Top = 68
      Width = 42
      Height = 13
      Caption = 'Sol'#183'licitat'
    end
    object Label17: TLabel
      Left = 32
      Top = 151
      Width = 50
      Height = 13
      Caption = 'Descripci'#243
    end
    object Label19: TLabel
      Left = 413
      Top = 48
      Width = 71
      Height = 13
      Caption = 'Realitzar a (F3)'
      ParentShowHint = False
      ShowHint = False
    end
    object Label20: TLabel
      Left = 413
      Top = 95
      Width = 34
      Height = 13
      Caption = 'Operari'
    end
    object Label21: TLabel
      Left = 264
      Top = 49
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label22: TLabel
      Left = 341
      Top = 49
      Width = 23
      Height = 13
      Caption = 'Hora'
    end
    object Label23: TLabel
      Left = 208
      Top = 91
      Width = 19
      Height = 13
      Caption = 'Inici'
    end
    object Label24: TLabel
      Left = 208
      Top = 116
      Width = 22
      Height = 13
      Caption = 'Final'
    end
    object DBText3: TDBText
      Left = 480
      Top = 115
      Width = 169
      Height = 13
      DataField = 'N_OPERARI'
      DataSource = sparte
    end
    object DBText4: TDBText
      Left = 480
      Top = 67
      Width = 161
      Height = 13
      DataField = 'N_DEP_REALI'
      DataSource = sparte
    end
    object Label3: TLabel
      Left = 408
      Top = 151
      Width = 128
      Height = 13
      Caption = 'Observacions manteniment'
    end
    object Label4: TLabel
      Left = 653
      Top = 48
      Width = 69
      Height = 13
      Caption = 'Nom ordinador'
    end
    object Label5: TLabel
      Left = 653
      Top = 95
      Width = 57
      Height = 13
      Caption = 'Login usuari'
    end
    object DBText5: TDBText
      Left = 32
      Top = 40
      Width = 65
      Height = 17
      Color = 11796477
      DataField = 'PARTE'
      DataSource = sparte
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object labelpreven: TLabel
      Left = 112
      Top = 32
      Width = 57
      Height = 13
      Caption = 'Id Preventiu'
      Visible = False
    end
    object Label7: TLabel
      Left = 296
      Top = 140
      Width = 24
      Height = 13
      Caption = 'Estat'
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1062
      Height = 27
      Align = alTop
      Color = 11796477
      TabOrder = 12
      object estadotext: TLabel
        Left = 140
        Top = 5
        Width = 5
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object estadopartetext: TLabel
        Left = 344
        Top = 5
        Width = 58
        Height = 16
        Caption = 'Pendent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 2
        Width = 120
        Height = 22
        DataSource = sparte
        VisibleButtons = [nbInsert, nbPost, nbCancel]
        Hints.Strings = (
          'First record'
          'Prior record'
          'Next record'
          'Last record'
          'Crear ordre de treball'
          'Delete record'
          'Edit record'
          'Guardar dades'
          'Cancel'#183'lar canvis'
          'Refresh data')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object botonanular: TButton
        Left = 256
        Top = 3
        Width = 65
        Height = 22
        Caption = 'Anul'#183'lar'
        TabOrder = 1
        OnClick = botonanularClick
      end
    end
    object horasedit: TDBEdit
      Left = 328
      Top = 64
      Width = 49
      Height = 21
      DataField = 'HORA'
      DataSource = sparte
      ReadOnly = True
      TabOrder = 11
    end
    object horaiedit: TDBEdit
      Left = 328
      Top = 88
      Width = 50
      Height = 21
      DataField = 'HORAI'
      DataSource = sparte
      ReadOnly = True
      TabOrder = 4
      OnExit = horafeditExit
    end
    object horafedit: TDBEdit
      Left = 328
      Top = 112
      Width = 50
      Height = 21
      DataField = 'HORAF'
      DataSource = sparte
      ReadOnly = True
      TabOrder = 7
      OnEnter = datafeditEnter
      OnExit = horafeditExit
    end
    object urgentcheckbox: TDBCheckBox
      Left = 13
      Top = 67
      Width = 57
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Urgent'
      DataField = 'TERMINI'
      DataSource = sparte
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ValueChecked = 'U'
      ValueUnchecked = 'N'
    end
    object motiumemo: TDBMemo
      Left = 32
      Top = 168
      Width = 369
      Height = 65
      DataField = 'MOTIU'
      DataSource = sparte
      MaxLength = 2000
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object departamedit: TdbconsultaEdit
      Left = 413
      Top = 64
      Width = 60
      Height = 21
      Hint = 'F3 per llista'
      DataField = 'deparr'
      DataSource = sparte
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnDblClick = operarieditDblClick
      misql.Strings = (
        'select c_departam,n_departam from departam')
      miorden.Strings = (
        'order by N_DEPARTAM')
      micampo = 'C_DEPARTAM'
      michequea = True
      mibase = 'interna'
      mirequired = False
      miunico = False
      misiclave = False
      mititulos = 'Codi,Departament'
    end
    object observamantememo: TDBMemo
      Left = 408
      Top = 168
      Width = 369
      Height = 65
      DataField = 'OBSERVACIONS_MANTENIMENT'
      DataSource = sparte
      MaxLength = 2000
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 10
    end
    object nomordedit: TDBEdit
      Left = 653
      Top = 64
      Width = 140
      Height = 21
      DataField = 'NOMPC'
      DataSource = sparte
      ReadOnly = True
      TabOrder = 13
    end
    object loginedit: TDBEdit
      Left = 653
      Top = 112
      Width = 140
      Height = 21
      DataField = 'LOGIN'
      DataSource = sparte
      ReadOnly = True
      TabOrder = 14
    end
    object operariedit: TdbconsultaEdit
      Left = 413
      Top = 112
      Width = 60
      Height = 21
      Hint = 'F3 per llista'
      DataField = 'OPERARI'
      DataSource = sparte
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 5
      OnDblClick = operarieditDblClick
      misql.Strings = (
        'select n_operari,c_operari from operaris')
      miorden.Strings = (
        'order by n_operari')
      micampo = 'c_operari'
      michequea = True
      mibase = 'interna'
      mirequired = False
      miunico = False
      misiclave = False
      mititulos = 'Operari,Codi'
    end
    object idrepeedit: TdbconsultaEdit
      Left = 112
      Top = 45
      Width = 57
      Height = 21
      DataField = 'ID_REPE'
      DataSource = sparte
      ReadOnly = True
      TabOrder = 15
      Visible = False
      OnEnter = idrepeeditEnter
      OnExit = idrepeeditExit
      misql.Strings = (
        'select * from partesrepe')
      miorden.Strings = (
        'order by datai')
      micampo = 'id'
      michequea = True
      mibase = 'interna'
      mirequired = False
      miunico = False
      misiclave = False
    end
    object dataiedit: TDBDateTimeEditEh
      Left = 240
      Top = 88
      Width = 81
      Height = 21
      DataField = 'DATAI'
      DataSource = sparte
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 3
      Visible = True
      OnDblClick = dataieditDblClick
    end
    object datafedit: TDBDateTimeEditEh
      Left = 240
      Top = 112
      Width = 81
      Height = 21
      DataField = 'DATAF'
      DataSource = sparte
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 6
      Visible = True
      OnDblClick = dataieditDblClick
      OnEnter = datafeditEnter
    end
    object tipoedit: TdbconsultaEdit
      Left = 32
      Top = 112
      Width = 65
      Height = 21
      DataField = 'TIPO'
      DataSource = sparte
      ReadOnly = True
      TabOrder = 8
      Visible = False
      OnDblClick = operarieditDblClick
      OnEnter = tipoeditEnter
      misql.Strings = (
        'select c_tipoparte,n_tipoparte from tiposparte')
      miorden.Strings = (
        'order by n_tipoparte')
      micampo = 'c_tipoparte'
      michequea = True
      mibase = 'interna'
      mirequired = True
      miunico = False
      misiclave = False
      mititulos = 'Codi,Tipus parte'
    end
    object estructuracheck: TDBCheckBox
      Left = 112
      Top = 112
      Width = 73
      Height = 17
      Caption = 'Estructura'
      DataField = 'ESTRUCTURA'
      DataSource = sparte
      ReadOnly = True
      TabOrder = 9
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object datasedit: TDBDateTimeEditEh
      Left = 240
      Top = 64
      Width = 81
      Height = 21
      DataField = 'DATAS'
      DataSource = sparte
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 16
      Visible = True
    end
    object DBComboBox1: TDBComboBox
      Left = 328
      Top = 136
      Width = 49
      Height = 21
      DataField = 'ESTAT'
      DataSource = sparte
      ItemHeight = 13
      Items.Strings = (
        'P Pendent'
        'F Finalitzat'
        'A Anul'#183'lat')
      ReadOnly = True
      TabOrder = 17
      OnEnter = DBComboBox1Enter
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1064
    Height = 49
    Align = alTop
    Color = 11796477
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 768
      Top = 8
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 676
      Top = 24
      Width = 23
      Height = 22
      Hint = 'Afegir usuari'
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SpeedButton2Click
    end
    object labelnombre: TLabel
      Left = 104
      Top = 12
      Width = 3
      Height = 13
      Visible = False
    end
    object Label6: TLabel
      Left = 8
      Top = 4
      Width = 62
      Height = 13
      Caption = 'Nom complet'
    end
    object departamtitul: TLabel
      Left = 400
      Top = 4
      Width = 82
      Height = 13
      Caption = 'Departament (F3)'
      Visible = False
    end
    object Label25: TLabel
      Left = 520
      Top = 13
      Width = 88
      Height = 16
      Caption = 'EN PROVES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object claveedit: TDBEdit
      Left = 624
      Top = 8
      Width = 137
      Height = 21
      DataField = 'CLAVE'
      DataSource = susuaris
      PasswordChar = '*'
      TabOrder = 1
      Visible = False
      OnKeyPress = claveeditKeyPress
    end
    object cusuariedit: TconsultaEdit
      Left = 736
      Top = 32
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 2
      Visible = False
      OnExit = cusuarieditExit
      OnKeyPress = cusuarieditKeyPress
      misql.Strings = (
        'select c_usuari,cognoms,nom from usuaris')
      miorden.Strings = (
        'order by cognoms,nom')
      micampo = 'c_usuari'
      michequea = True
      mibase = 'interna'
      mirequired = True
    end
    object nombreedit: TEdit
      Left = 8
      Top = 16
      Width = 377
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object c_departamedit: TconsultaEdit
      Left = 400
      Top = 16
      Width = 65
      Height = 21
      Hint = 'F3 per llista'
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnExit = c_departameditExit
      misql.Strings = (
        'select c_departam,n_departam from departam')
      miwhere.Strings = (
        '')
      miorden.Strings = (
        'order by n_departam')
      micampo = 'c_departam'
      michequea = True
      mibase = 'interna'
      mirequired = True
      mititulos = 'Codi,Departament'
    end
  end
  object susuaris: TDataSource
    DataSet = qusuaris
    Left = 632
    Top = 257
  end
  object qusuaris: TQuery
    DatabaseName = 'interna'
    RequestLive = True
    SQL.Strings = (
      'select * from usuaris'
      'where c_usuari=:c_usuari')
    Left = 712
    Top = 257
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'c_usuari'
        ParamType = ptUnknown
      end>
  end
  object sparte: TDataSource
    DataSet = qparte
    OnDataChange = sparteDataChange
    Left = 552
    Top = 257
  end
  object qparte: TIBDataSet
    Database = basepanelpartes
    Transaction = partestrans
    ForcedRefresh = True
    AfterDelete = qparteAfterDelete
    AfterInsert = qparte2AfterInsert
    AfterOpen = qparte2AfterOpen
    AfterPost = qparte2AfterPost
    BeforeClose = qparte2BeforeClose
    BeforeEdit = qparte2BeforeEdit
    BeforeInsert = qparte2BeforeInsert
    BeforePost = qparte2BeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PARTES'
      'where'
      '  PARTE = :OLD_PARTE')
    InsertSQL.Strings = (
      'insert into PARTES'
      
        '  (DATAS, DEPARTAM, TERMINI, OPERARI, DATAI, DATAF, DEPARR, PART' +
        'E, HORA, '
      
        '   HORAI, HORAF, ESTAT, C_USUARI, NOMPC, LOGIN, OBSERVACIONS_MAN' +
        'TENIMENT, '
      
        '   MOTIU, NOMUSUARI, C_OPERARITANCA, ID_REPE, AVISO, TIPO, ESTRU' +
        'CTURA)'
      'values'
      
        '  (:DATAS, :DEPARTAM, :TERMINI, :OPERARI, :DATAI, :DATAF, :DEPAR' +
        'R, :PARTE, '
      
        '   :HORA, :HORAI, :HORAF, :ESTAT, :C_USUARI, :NOMPC, :LOGIN, :OB' +
        'SERVACIONS_MANTENIMENT, '
      
        '   :MOTIU, :NOMUSUARI, :C_OPERARITANCA, :ID_REPE, :AVISO, :TIPO,' +
        ' :ESTRUCTURA)')
    RefreshSQL.Strings = (
      'Select '
      '  DATAS,'
      '  DEPARTAM,'
      '  TERMINI,'
      '  OPERARI,'
      '  DATAI,'
      '  DATAF,'
      '  DEPARR,'
      '  PARTE,'
      '  HORA,'
      '  HORAI,'
      '  HORAF,'
      '  ESTAT,'
      '  C_USUARI,'
      '  NOMPC,'
      '  LOGIN,'
      '  OBSERVACIONS_MANTENIMENT,'
      '  MOTIU,'
      '  NOMUSUARI,'
      '  C_OPERARITANCA,'
      '  ID_REPE,'
      '  AVISO,'
      '  TIPO,'
      '  ESTRUCTURA'
      'from PARTES '
      'where'
      '  PARTE = :PARTE')
    SelectSQL.Strings = (
      'SELECT'
      '    PAR.DATAS,'
      '    PAR.DEPARTAM,'
      '    PAR.TERMINI,'
      '    PAR.OPERARI,'
      '    PAR.DATAI,'
      '    PAR.DATAF,'
      '    PAR.DEPARR,'
      '    PAR.PARTE,'
      '    PAR.HORA,'
      '    PAR.HORAI,'
      '    PAR.HORAF,'
      '    PAR.MOTIU,'
      '    PAR.ESTAT,'
      '    PAR.C_USUARI,'
      '    PAR.NOMPC,'
      '    PAR.LOGIN,'
      '    PAR.OBSERVACIONS_MANTENIMENT,'
      '    PAR.NOMUSUARI,'
      '    PAR.C_OPERARITANCA,'
      '    PAR.ID_REPE,'
      '    PAR.TIPO,'
      '    PAR.ESTRUCTURA,'
      '    DEP.N_DEPARTAM ,'
      '    DEP2.N_DEPARTAM AS N_DEP_REALI,'
      '    OPE.N_OPERARI'
      ''
      'FROM'
      '    PARTES PAR'
      '    LEFT JOIN DEPARTAM DEP ON (PAR.DEPARTAM=DEP.C_DEPARTAM )'
      '    LEFT JOIN DEPARTAM DEP2 ON (PAR.DEPARR=DEP2.C_DEPARTAM )'
      '    LEFT JOIN OPERARIS OPE ON (PAR.OPERARI=OPE.C_OPERARI )'
      ''
      'WHERE PAR.PARTE=:PARTE')
    ModifySQL.Strings = (
      'update PARTES'
      'set'
      '  DATAS = :DATAS,'
      '  DEPARTAM = :DEPARTAM,'
      '  TERMINI = :TERMINI,'
      '  OPERARI = :OPERARI,'
      '  DATAI = :DATAI,'
      '  DATAF = :DATAF,'
      '  DEPARR = :DEPARR,'
      '  PARTE = :PARTE,'
      '  HORA = :HORA,'
      '  HORAI = :HORAI,'
      '  HORAF = :HORAF,'
      '  ESTAT = :ESTAT,'
      '  C_USUARI = :C_USUARI,'
      '  NOMPC = :NOMPC,'
      '  LOGIN = :LOGIN,'
      '  OBSERVACIONS_MANTENIMENT = :OBSERVACIONS_MANTENIMENT,'
      '  MOTIU = :MOTIU,'
      '  NOMUSUARI = :NOMUSUARI,'
      '  C_OPERARITANCA = :C_OPERARITANCA,'
      '  ID_REPE = :ID_REPE,'
      '  AVISO = :AVISO,'
      '  TIPO = :TIPO,'
      '  ESTRUCTURA = :ESTRUCTURA'
      'where'
      '  PARTE = :OLD_PARTE')
    GeneratorField.Field = 'PARTE'
    GeneratorField.Generator = 'PARTES_ID'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 280
    Top = 324
    object qparteqparteDATAS: TDateTimeField
      FieldName = 'DATAS'
      Origin = 'PARTES.DATAS'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object qparteqparteDEPARTAM: TIBStringField
      FieldName = 'DEPARTAM'
      Origin = 'PARTES.DEPARTAM'
      Size = 5
    end
    object qparteqparteTERMINI: TIBStringField
      FieldName = 'TERMINI'
      Origin = 'PARTES.TERMINI'
      Size = 1
    end
    object qparteqparteOPERARI: TIBStringField
      FieldName = 'OPERARI'
      Origin = 'PARTES.OPERARI'
      Size = 3
    end
    object qparteqparteDATAI: TDateTimeField
      FieldName = 'DATAI'
      Origin = 'PARTES.DATAI'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object qparteqparteDATAF: TDateTimeField
      FieldName = 'DATAF'
      Origin = 'PARTES.DATAF'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object qparteqparteDEPARR: TIBStringField
      FieldName = 'DEPARR'
      Origin = 'PARTES.DEPARR'
      Size = 5
    end
    object qparteqpartePARTE: TFloatField
      FieldName = 'PARTE'
      Origin = 'PARTES.PARTE'
      Required = True
    end
    object qparteqparteHORA: TIBStringField
      FieldName = 'HORA'
      Origin = 'PARTES.HORA'
      EditMask = '!99:99;1;_'
      Size = 5
    end
    object qparteqparteHORAI: TIBStringField
      FieldName = 'HORAI'
      Origin = 'PARTES.HORAI'
      EditMask = '!99:99;1;_'
      Size = 5
    end
    object qparteqparteHORAF: TIBStringField
      FieldName = 'HORAF'
      Origin = 'PARTES.HORAF'
      EditMask = '!99:99;1;_'
      Size = 5
    end
    object qparteqparteESTAT: TIBStringField
      FieldName = 'ESTAT'
      Origin = 'PARTES.ESTAT'
      Size = 1
    end
    object qparteqparteC_USUARI: TIntegerField
      FieldName = 'C_USUARI'
      Origin = 'PARTES.C_USUARI'
    end
    object qparteqparteNOMPC: TIBStringField
      DisplayWidth = 20
      FieldName = 'NOMPC'
      Origin = 'PARTES.NOMPC'
    end
    object qparteqparteLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'PARTES.LOGIN'
      Size = 40
    end
    object qparteqparteNOMUSUARI: TIBStringField
      FieldName = 'NOMUSUARI'
      Origin = 'PARTES.NOMUSUARI'
      Size = 40
    end
    object qparteqparteC_OPERARITANCA: TIBStringField
      FieldName = 'C_OPERARITANCA'
      Origin = 'PARTES.C_OPERARITANCA'
      Size = 3
    end
    object qparteqparteID_REPE: TIntegerField
      FieldName = 'ID_REPE'
      Origin = 'PARTES.ID_REPE'
    end
    object qparteqparteTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'PARTES.TIPO'
      Size = 5
    end
    object qparteqparteESTRUCTURA: TIBStringField
      FieldName = 'ESTRUCTURA'
      Origin = 'PARTES.ESTRUCTURA'
      FixedChar = True
      Size = 1
    end
    object qparteqparteN_DEPARTAM: TIBStringField
      FieldName = 'N_DEPARTAM'
      Origin = 'DEPARTAM.N_DEPARTAM'
      Size = 30
    end
    object qparteqparteN_DEP_REALI: TIBStringField
      FieldName = 'N_DEP_REALI'
      Origin = 'DEPARTAM.N_DEPARTAM'
      Size = 30
    end
    object qparteqparteN_OPERARI: TIBStringField
      FieldName = 'N_OPERARI'
      Origin = 'OPERARIS.N_OPERARI'
    end
    object qparteMOTIU: TIBStringField
      DisplayWidth = 2000
      FieldName = 'MOTIU'
      Origin = 'PARTES.MOTIU'
      Required = True
      Size = 2000
    end
    object qparteOBSERVACIONS_MANTENIMENT: TIBStringField
      DisplayWidth = 2000
      FieldName = 'OBSERVACIONS_MANTENIMENT'
      Origin = 'PARTES.OBSERVACIONS_MANTENIMENT'
      Size = 3000
    end
  end
  object partestrans: TIBTransaction
    Active = True
    DefaultDatabase = basepanelpartes
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 368
    Top = 356
  end
  object basepanelpartes: TIBDatabase
    Connected = True
    DatabaseName = 'ntguttmann7:e:\dades\manten.gdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=miope')
    LoginPrompt = False
    DefaultTransaction = partestrans
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    AfterConnect = basepanelpartesAfterConnect
    BeforeConnect = basepanelpartesBeforeConnect
    Left = 584
    Top = 356
  end
  object Query1: TQuery
    DatabaseName = 'interna'
    SQL.Strings = (
      'select  PARTE,DATAS,ESTAT,NOMOPERARI,'
      '                           NOMDEPARSOL,NOMDEPAREAL,MOTIU,'
      
        '                          DATAI,DATAF,NOMUSUARI,TERMINI,TIPO,EST' +
        'RUCTURA,NOMPC,LOGIN,'
      
        '                          OBSERVACIONS_MANTENIMENT,C_OPERARITANC' +
        'A,ID_REPE'
      '                           FROM MANTEN '
      'where estat='#39'P'#39)
    Left = 600
    Top = 448
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = IBQuery1
    Left = 464
    Top = 448
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    UseCompression = True
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 264
    Top = 444
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 321
    object info1: TMenuItem
      Caption = 'info'
      ShortCut = 16449
      Visible = False
      OnClick = info1Click
    end
  end
  object alertaerror: TJvDesktopAlert
    Location.Top = 0
    Location.Left = 0
    Location.Width = 0
    Location.Height = 0
    StyleOptions.DisplayDuration = 5000
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ShowHint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Buttons = <>
    Left = 880
    Top = 192
  end
  object IBQuery1: TIBQuery
    Database = basepanelpartes
    Transaction = partestrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  PARTE,DATAS,ESTAT,NOMOPERARI,'
      '                           NOMDEPARSOL,NOMDEPAREAL,MOTIU,'
      
        '                          DATAI,DATAF,NOMUSUARI,TERMINI,TIPO,EST' +
        'RUCTURA,NOMPC,LOGIN,'
      
        '                          OBSERVACIONS_MANTENIMENT,C_OPERARITANC' +
        'A,ID_REPE  FROM MANTEN'
      '                          '
      '                          where estat="P"')
    Left = 688
    Top = 452
  end
  object RvProject1: TRvProject
    LoadDesigner = True
    ProjectFile = 'listadosmanten.rav'
    Left = 368
    Top = 444
  end
end
