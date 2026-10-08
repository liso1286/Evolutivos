object wMain: TwMain
  Left = 401
  Top = 242
  Width = 743
  Height = 628
  AutoSize = True
  Caption = 'Codificaci'#243' autom'#224'tica - WS Asho'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 358
    Width = 735
    Height = 239
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 16
    TabOrder = 0
    Visible = False
    DesignSize = (
      735
      239)
    object eDiagTest: TEdit
      Left = 16
      Top = 20
      Width = 281
      Height = 21
      TabOrder = 0
      Text = 'Valoraci'#243' domicili'#224'ria'
    end
    object Button1: TButton
      Left = 304
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Coode (antic)'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 408
      Top = 16
      Width = 75
      Height = 25
      Caption = 'CoodeBox'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Memo1: TMemo
      Left = 16
      Top = 48
      Width = 686
      Height = 175
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 358
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    BorderWidth = 16
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 61
      Height = 13
      Caption = 'Dies codifica'
    end
    object Label2: TLabel
      Left = 144
      Top = 21
      Width = 51
      Height = 13
      Caption = 'Versi'#243' CIM'
    end
    object Label3: TLabel
      Left = 16
      Top = 45
      Width = 319
      Height = 13
      Caption = 'Diags. ppals. ingr'#233's (CE, EASE - P400 i P137) i 1004 amb PREALT:'
    end
    object Label4: TLabel
      Left = 368
      Top = 45
      Width = 234
      Height = 13
      Caption = 'Diagn'#242'stics principals a l'#39'alta (altes i CMA - P218):'
    end
    object Label5: TLabel
      Left = 16
      Top = 197
      Width = 213
      Height = 13
      Caption = 'Diagn'#242'stics secundaris a l'#39'ingr'#233's (CE - P400):'
    end
    object Label6: TLabel
      Left = 368
      Top = 197
      Width = 241
      Height = 13
      Caption = 'Diagn'#242'stics secundaris a l'#39'alta (altes i CMA - P218):'
      Visible = False
    end
    object Label7: TLabel
      Left = 262
      Top = 21
      Width = 74
      Height = 13
      Caption = 'Interval (minuts)'
    end
    object gDiagI: TDBGrid
      Left = 16
      Top = 61
      Width = 337
      Height = 129
      DataSource = dsDiagI
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object gDiagA: TDBGrid
      Left = 368
      Top = 61
      Width = 337
      Height = 129
      DataSource = dsDiagA
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object gDiagsI: TDBGrid
      Left = 16
      Top = 213
      Width = 337
      Height = 129
      DataSource = dsDiagsI
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object gDiagsA: TDBGrid
      Left = 368
      Top = 213
      Width = 337
      Height = 129
      DataSource = dsDiagsA
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
    object edDies: TEdit
      Left = 88
      Top = 17
      Width = 41
      Height = 21
      TabOrder = 4
      Text = '60'
    end
    object BitBtn1: TBitBtn
      Left = 608
      Top = 16
      Width = 97
      Height = 23
      Caption = 'Processa '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227072
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
      Glyph.Data = {
        7E030000424D7E030000000000003600000028000000120000000F0000000100
        1800000000004803000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        0000FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000000000000000FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
        FF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000
        00000000FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000000000FF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF
        00FFFF00FFFF00FF000000000000000000000000000000FF00FFFF00FFFF00FF
        0000FF00FF000000000000000000000000000000000000000000FF00FF000000
        000000000000000000000000000000000000FF00FFFF00FF0000FF00FFFF00FF
        000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF0000000000000000
        00000000000000FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF000000000000000000FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        0000FF00FFFF00FFFF00FF000000000000000000FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
        FF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        0000}
      Spacing = 5
    end
    object edVersioCIM: TEdit
      Left = 205
      Top = 17
      Width = 41
      Height = 21
      TabOrder = 6
      Text = '10'
    end
    object cbGeneraXML: TCheckBox
      Left = 432
      Top = 21
      Width = 81
      Height = 17
      Caption = 'Genera .xml'
      TabOrder = 7
    end
    object edMinuts: TEdit
      Left = 343
      Top = 17
      Width = 41
      Height = 21
      TabOrder = 8
      Text = '60'
      OnKeyDown = edMinutsKeyDown
    end
    object cbConfirma: TCheckBox
      Left = 520
      Top = 21
      Width = 65
      Height = 17
      Caption = 'Confirma'
      TabOrder = 9
    end
  end
  object dsDiagI: TDataSource
    DataSet = qDiagI
    Left = 176
    Top = 72
  end
  object dsDiagA: TDataSource
    DataSet = qDiagA
    Left = 560
    Top = 72
  end
  object dsDiagsI: TDataSource
    DataSet = qDiagsI
    Left = 176
    Top = 224
  end
  object dsDiagsA: TDataSource
    DataSet = qDiagsA
    Left = 560
    Top = 224
  end
  object Timer1: TTimer
    Interval = 6000
    OnTimer = Timer1Timer
    Left = 392
    Top = 8
  end
  object qDiagI: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select T.C_TRACTAMENT, T.N_DIAGNOSTICINGRES'
      'from TRACTAMENTS T'
      'join   DRETSPRESTA D on T.C_PRESTACIO = D.C_PRESTACIO '
      
        '                                       and (D.C_DRET = '#39'P400'#39' or' +
        ' D.C_DRET = '#39'P137'#39')'
      
        'where F_StringLength(T.N_DIAGNOSTICINGRES) > 1    /* excloem '#39'.'#39 +
        ', blancs... */'
      
        'and    (T.C_DIAGNOSTICINGRES is Null or T.C_DIAGNOSTICINGRES = '#39 +
        #39')'
      'and     T.DATA_INGRES >=  :x'
      'and    (T.CONFIANCADPI <> -1 or T.CONFIANCADPI is NULL)'
      'union'
      'select T.C_TRACTAMENT, T.N_DIAGNOSTICINGRES'
      'from TRACTAMENTS T '
      'join  INFORMES I on T.C_TRACTAMENT = I.C_TRACTAMENT '
      '                            and I.C_TIPUS = '#39'PLT'#39' '
      '                            and I.C_ESTAT <> 9'
      
        'where F_StringLength(T.N_DIAGNOSTICINGRES) > 1    /* excloem '#39'.'#39 +
        ', blancs... */'
      
        'and    (T.C_DIAGNOSTICINGRES is Null or T.C_DIAGNOSTICINGRES = '#39 +
        #39')'
      'and     T.DATA_INGRES >=  :x'
      'and    (T.CONFIANCADPI <> -1 or T.CONFIANCADPI is NULL)'
      'order by 2')
    Left = 120
    Top = 72
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'x'
        ParamType = ptUnknown
      end>
  end
  object qDiagsI: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select D.C_TRACTAMENT, D.N_DIAGNOSTIC, D.ORDRE'
      'from DIAGNOSTICS D'
      'join  TRACTAMENTS T on D.C_TRACTAMENT = T.C_TRACTAMENT'
      'join  DRETSPRESTA P on T.C_PRESTACIO = P.C_PRESTACIO '
      '                                     and P.C_DRET = '#39'P400'#39
      'where (D.C_DIAGNOSTIC is Null or D.C_DIAGNOSTIC = '#39#39')'
      
        'and    F_StringLength(D.N_DIAGNOSTIC) > 1    /* excloem '#39'.'#39', bla' +
        'ncs... */'
      'and   (D.G_DIAGNOSTIC <> '#39'--'#39' or D.G_DIAGNOSTIC is null)'
      'and    D.TIPUS = '#39'I'#39
      'and    T.DATA_INGRES >= :x'
      'and   (D.CONFIANCA <> -1 or D.CONFIANCA is NULL)'
      'order by D.N_DIAGNOSTIC')
    Left = 120
    Top = 224
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'x'
        ParamType = ptInput
      end>
  end
  object qDiagA: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select T.C_TRACTAMENT, T.N_DIAGNOSTICALTA'
      'from TRACTAMENTS T'
      'join   DRETSPRESTA D on T.C_PRESTACIO = D.C_PRESTACIO '
      '                                       and D.C_DRET = '#39'P218'#39' '
      
        'where F_StringLength(T.N_DIAGNOSTICALTA) > 1    /* excloem '#39'.'#39', ' +
        'blancs... */'
      'and    (T.C_DIAGNOSTICALTA is Null or T.C_DIAGNOSTICALTA = '#39#39')'
      'and     T.DATA_ALTA >= :x'
      'and    (T.CONFIANCADPA <> -1 or T.CONFIANCADPA is Null)'
      'order by T.N_DIAGNOSTICALTA')
    Left = 504
    Top = 72
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'x'
        ParamType = ptInput
      end>
  end
  object qDiagsA: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select D.C_TRACTAMENT, D.N_DIAGNOSTIC, D.ORDRE'
      'from DIAGNOSTICS D'
      'join  TRACTAMENTS T on D.C_TRACTAMENT = T.C_TRACTAMENT'
      'join  DRETSPRESTA P on T.C_PRESTACIO = P.C_PRESTACIO '
      '                                     and P.C_DRET = '#39'P218'#39
      'where (D.C_DIAGNOSTIC is Null or D.C_DIAGNOSTIC = '#39#39')'
      
        'and    F_StringLength(D.N_DIAGNOSTIC) > 1    /* excloem '#39'.'#39', bla' +
        'ncs... */'
      'and   (D.G_DIAGNOSTIC <> '#39'--'#39' or D.G_DIAGNOSTIC is null)'
      'and    D.TIPUS = '#39'A'#39
      'and    T.DATA_ALTA >= :x'
      'and   (D.CONFIANCA <> -1 or D.CONFIANCA is NULL)'
      'order by D.N_DIAGNOSTIC')
    Left = 504
    Top = 224
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'x'
        ParamType = ptInput
      end>
  end
end
