object agendapacient: Tagendapacient
  Left = 400
  Top = 226
  Width = 1395
  Height = 860
  HorzScrollBar.ButtonSize = 15
  HorzScrollBar.Size = 15
  HorzScrollBar.Visible = False
  VertScrollBar.ButtonSize = 15
  VertScrollBar.Size = 15
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'agendapacient'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PrintScale = poPrintToFit
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1379
    Height = 821
    Align = alClient
    Color = clWindow
    TabOrder = 0
    object Label36: TLabel
      Left = 336
      Top = 2
      Width = 54
      Height = 13
      Caption = 'Prestaci'#243
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 400
      Top = 2
      Width = 57
      Height = 17
      DataField = 'N_PRESTACIO'
      DataSource = sfili
    end
    object Label28: TLabel
      Left = 344
      Top = 10
      Width = 54
      Height = 13
      Caption = 'Prestaci'#243
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object DBText14: TDBText
      Left = 408
      Top = 10
      Width = 57
      Height = 17
      DataField = 'N_PRESTACIO'
      DataSource = sfili
    end
    object panelcabecera: TPanel
      Left = 0
      Top = 0
      Width = 905
      Height = 60
      BevelOuter = bvNone
      Color = clWindow
      TabOrder = 1
      object panelresponsables: TPanel
        Left = 0
        Top = 22
        Width = 900
        Height = 39
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        object DBText5: TDBText
          Left = 648
          Top = 16
          Width = 65
          Height = 17
          DataField = 'C_PLANTA'
          DataSource = sfili
        end
        object DBText6: TDBText
          Left = 752
          Top = 16
          Width = 65
          Height = 17
          DataField = 'C_LLIT'
          DataSource = sfili
        end
        object Label38: TLabel
          Left = 584
          Top = 16
          Width = 64
          Height = 13
          Caption = 'Unid.Hosp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 728
          Top = 16
          Width = 18
          Height = 13
          Caption = 'Llit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 176
          Top = 0
          Width = 54
          Height = 13
          Caption = 'Infermera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 258
          Top = 1
          Width = 127
          Height = 17
          Cursor = crHandPoint
          DataField = 'INFERMERA'
          DataSource = sfili
          OnDblClick = DBText2DblClick
        end
        object Label42: TLabel
          Left = 384
          Top = 0
          Width = 81
          Height = 13
          Caption = 'Fisioterapeuta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 472
          Top = 1
          Width = 110
          Height = 17
          Cursor = crHandPoint
          DataField = 'FISIO'
          DataSource = sfili
          OnDblClick = DBText7DblClick
        end
        object Label43: TLabel
          Left = 0
          Top = 0
          Width = 36
          Height = 13
          Caption = 'Metge'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 58
          Top = 1
          Width = 95
          Height = 17
          DataField = 'METGE'
          DataSource = sfili
        end
        object Label44: TLabel
          Left = 384
          Top = 17
          Width = 59
          Height = 13
          Caption = 'Terapeuta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 472
          Top = 16
          Width = 110
          Height = 17
          Cursor = crHandPoint
          DataField = 'TERAPEUTA'
          DataSource = sfili
          OnDblClick = DBText9DblClick
        end
        object Label45: TLabel
          Left = 0
          Top = 16
          Width = 49
          Height = 13
          Caption = 'Psicoleg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 58
          Top = 16
          Width = 103
          Height = 17
          Cursor = crHandPoint
          DataField = 'PSICOLEG'
          DataSource = sfili
          OnDblClick = DBText10DblClick
        end
        object Label46: TLabel
          Left = 176
          Top = 16
          Width = 69
          Height = 13
          Caption = 'Assis.Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 256
          Top = 16
          Width = 127
          Height = 17
          Cursor = crHandPoint
          DataField = 'TREVALLSOCIAL'
          DataSource = sfili
          OnDblClick = DBText11DblClick
        end
        object Label56: TLabel
          Left = 584
          Top = 0
          Width = 57
          Height = 13
          Caption = 'Logopeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 648
          Top = 1
          Width = 81
          Height = 17
          Cursor = crHandPoint
          DataField = 'LOGOPEDA'
          DataSource = sfili
          OnDblClick = DBText12DblClick
        end
        object Label29: TLabel
          Left = 728
          Top = 2
          Width = 54
          Height = 13
          Caption = 'Prestaci'#243
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText15: TDBText
          Left = 786
          Top = 1
          Width = 79
          Height = 17
          Cursor = crHandPoint
          DataField = 'N_PRESTACIO'
          DataSource = sfili
          OnDblClick = DBText2DblClick
        end
      end
      object panelnombre: TPanel
        Left = 0
        Top = 0
        Width = 809
        Height = 22
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object DBText1: TDBText
          Left = 32
          Top = 2
          Width = 49
          Height = 17
          DataField = 'NUM_HIST'
          DataSource = sfili
        end
        object z: TDBText
          Left = 136
          Top = 2
          Width = 195
          Height = 17
          DataField = 'NOMCOMPLET'
          DataSource = sfili
        end
        object DBText3: TDBText
          Left = 544
          Top = 2
          Width = 65
          Height = 17
          DataField = 'DATA_INGRES'
          DataSource = sfili
        end
        object Label34: TLabel
          Left = 0
          Top = 2
          Width = 30
          Height = 13
          Caption = 'Num.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 104
          Top = 2
          Width = 26
          Height = 13
          Caption = 'Nom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 464
          Top = 2
          Width = 66
          Height = 13
          Caption = 'Data ingr'#233's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText13: TDBText
          Left = 648
          Top = 2
          Width = 105
          Height = 17
          Cursor = crHandPoint
          DataField = 'FLM'
          DataSource = sfili
          OnDblClick = DBText13DblClick
        end
        object Label27: TLabel
          Left = 616
          Top = 2
          Width = 25
          Height = 13
          Caption = 'FLM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
      end
      object panelhistoricsuperior: TPanel
        Left = 1000
        Top = 0
        Width = 905
        Height = 57
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 2
        Visible = False
        object Label26: TLabel
          Left = 136
          Top = 32
          Width = 199
          Height = 20
          Caption = 'Hist'#242'ric d'#39'agenda, el dia '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object labelfechaantic: TLabel
          Left = 424
          Top = 32
          Width = 21
          Height = 20
          Caption = '__'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object paneltot: TPanel
      Left = 0
      Top = 58
      Width = 1009
      Height = 583
      BevelOuter = bvNone
      Caption = 'paneltot'
      Color = clWhite
      TabOrder = 0
      object Label1: TLabel
        Left = 72
        Top = 0
        Width = 39
        Height = 13
        Alignment = taCenter
        Caption = 'Dilluns'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 168
        Top = 0
        Width = 43
        Height = 13
        Alignment = taCenter
        Caption = 'Dimarts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 264
        Top = 0
        Width = 53
        Height = 13
        Alignment = taCenter
        Caption = 'Dimecres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 368
        Top = 0
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Dijous'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 456
        Top = 0
        Width = 58
        Height = 13
        Alignment = taCenter
        Caption = 'Divendres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 560
        Top = 0
        Width = 50
        Height = 13
        Alignment = taCenter
        Caption = 'Dissabte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 656
        Top = 0
        Width = 57
        Height = 13
        Alignment = taCenter
        Caption = 'Diumenge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 2
        Top = 20
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '08:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 2
        Top = 59
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '09:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 2
        Top = 98
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '10:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 2
        Top = 135
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '11:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 2
        Top = 172
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '12:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 2
        Top = 211
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '13:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 2
        Top = 249
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '14:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 2
        Top = 286
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '15:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 2
        Top = 325
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '16:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 2
        Top = 362
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '17:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 2
        Top = 401
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '18:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 2
        Top = 437
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '19:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 2
        Top = 476
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '20:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 744
        Top = 20
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '08:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 744
        Top = 59
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '09:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 744
        Top = 98
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '10:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 744
        Top = 135
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '11:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 744
        Top = 172
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '12:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object botonprint: TSpeedButton
        Left = 8
        Top = 496
        Width = 23
        Height = 22
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        OnClick = botonprintClick
      end
      object botoncolores: TSpeedButton
        Left = 748
        Top = 496
        Width = 23
        Height = 22
        AllowAllUp = True
        GroupIndex = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = botoncoloresClick
      end
      object Label47: TLabel
        Left = 746
        Top = 211
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '13:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 746
        Top = 249
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '14:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 746
        Top = 286
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '15:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 746
        Top = 325
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '16:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 746
        Top = 362
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '17:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 746
        Top = 401
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '18:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 746
        Top = 437
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '19:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel
        Left = 746
        Top = 476
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = '20:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mimedicolabel: TLabel
        Left = 512
        Top = 536
        Width = 129
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'mimedicolabel'
        Visible = False
      end
      object Fechalabel: TLabel
        Left = 672
        Top = 536
        Width = 81
        Height = 13
        AutoSize = False
        Caption = 'fechalabel'
        Visible = False
      end
      object Label41: TLabel
        Left = 648
        Top = 536
        Width = 11
        Height = 13
        Caption = 'el'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object solicitatperlabel: TLabel
        Left = 432
        Top = 536
        Width = 80
        Height = 13
        Caption = 'Sol'#183'licitat per:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label55: TLabel
        Left = 40
        Top = 542
        Width = 95
        Height = 13
        Caption = 'Ultima validaci'#243':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object labelmetgevalida: TLabel
        Left = 144
        Top = 542
        Width = 3
        Height = 13
      end
      object labeldatavalida: TLabel
        Left = 296
        Top = 542
        Width = 3
        Height = 13
      end
      object Label58: TLabel
        Left = 272
        Top = 542
        Width = 11
        Height = 13
        Caption = 'el'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object labelpendent: TLabel
        Left = 40
        Top = 528
        Width = 108
        Height = 13
        Caption = 'Pendent de validar'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object buscaboton: TSpeedButton
        Left = 8
        Top = 527
        Width = 23
        Height = 22
        AllowAllUp = True
        GroupIndex = 2
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000303030404040
          4040404040404040404040404040404040404040404040404040404040404040
          404040404040402020207F7F7FBFBFBFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A09090904040406060608080804040407F7F7FDFDFDF
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B0B0404040AFAF
          AF5050509090904040407F7F7FDFDFDFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0B0B0B0404040BFBFBFBFBFBF6F6F6FA0A0A04040407F7F7FDFDFDF
          C0C0C0C0C0C0B0B0B0A0A0A0A0A0A0B0B0B0B0B0B0404040BFBFBFBFBFBF6F6F
          6FC0C0C0A0A0A04040407F7F7FDFDFDFC0C0C090909040404040404040404080
          8080404040BFBFBFBFBFBF6F6F6FC0C0C0C0C0C0A0A0A04040407F7F7FDFDFDF
          707070606060909090606060909090606060707070CFCFCF6F6F6FC0C0C0C0C0
          C0C0C0C0A0A0A04040407F7F7F9F9F9F9090906F6F6F9F9F9FDFDFDFAFAFAF60
          6060B0B0B0202020B0B0B0C0C0C0C0C0C0C0C0C0A0A0A04040407F7F7F6F6F6F
          606060DFDFDFDFDFDFDFDFDFDFDFDFDFDFDF606060505050A0A0A0C0C0C0C0C0
          C0C0C0C0A0A0A04040407F7F7F6060606F6F6FDFDFDFDFDFDFDFDFDFDFDFDFDF
          DFDF6F6F6F606060A0A0A0C0C0C0C0C0C0C0C0C0A0A0A04040407F7F7F606060
          6F6F6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF7F7F7F606060A0A0A0C0C0C0C0C0
          C0C0C0C0A0A0A04040407F7F7F6060606F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6F6F6F606060C0C0C0C0C0C0C0C0C0C0C0C0A0A0A04040407F7F7F7F7F7F
          909090404040404040404040404040404040909090606060C0C0C0C0C0C0C0C0
          C0C0C0C0A0A0A04040403F3F3F7F7F7F30303090909030303000000030303090
          90903030307F7F7FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF505050FFFFFFFFFFFF
          FFFFFF000000606060606060606060000000FFFFFF000000FF0000FF0000FF00
          00FF00007F0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF}
        OnClick = buscabotonClick
      end
      object bloqueadolabel: TLabel
        Left = 0
        Top = 0
        Width = 359
        Height = 20
        Caption = 'Bloquejat fins la seg'#252'ent visita de seguiment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object gridhoras: TStringGrid
        Left = 40
        Top = 16
        Width = 700
        Height = 513
        Color = clWhite
        ColCount = 7
        DefaultColWidth = 98
        DefaultRowHeight = 18
        DefaultDrawing = False
        FixedCols = 0
        RowCount = 26
        FixedRows = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentFont = False
        PopupMenu = PopupMenu1
        ScrollBars = ssVertical
        TabOrder = 0
        OnClick = botoncoloresClick
        OnDblClick = gridhorasDblClick
        OnDrawCell = gridhorasDrawCell
        OnKeyDown = gridhorasKeyDown
        OnKeyPress = gridhorasKeyPress
      end
      object edit1: TconsultaEdit
        Left = 40
        Top = 16
        Width = 99
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'edit1'
        Visible = False
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
        misql.Strings = (
          'select c_codi,n_codi from codicampsalfa')
        miorden.Strings = (
          'order by n_codi')
        micampo = 'c_codi'
        michequea = True
        mibase = 'interna'
        mirequired = False
        mititulos = 'Codi,Descripci'#243
      end
      object coloresgrid: TDBGrid
        Left = 784
        Top = 24
        Width = 180
        Height = 473
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = False
        DataSource = scolores
        DefaultDrawing = False
        Options = []
        ParentCtl3D = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Visible = False
        OnDrawColumnCell = coloresgridDrawColumnCell
        OnEnter = coloresgridEnter
        Columns = <
          item
            Expanded = False
            FieldName = 'COLOR'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_GRUP'
            Width = 140
            Visible = True
          end>
      end
      object Checkvirtuals: TCheckBox
        Left = 368
        Top = 542
        Width = 57
        Height = 17
        Caption = 'Virtuals'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = CheckvirtualsClick
      end
    end
    object edita: TdbconsultaEdit
      Left = 848
      Top = 40
      Width = 121
      Height = 17
      AutoSize = False
      DataSource = stractament
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnExit = editaExit
      OnKeyPress = editaKeyPress
      misql.Strings = (
        'select  codi,metge from metges ')
      miorden.Strings = (
        'order by metge')
      micampo = 'codi'
      michequea = True
      mibase = 'interna'
      mirequired = False
      miunico = False
      misiclave = False
      mititulos = 'Codi, Responsable area'
    end
    object panelhistoricinferior: TPanel
      Left = 32
      Top = 722
      Width = 729
      Height = 55
      BevelOuter = bvNone
      Color = clWindow
      TabOrder = 2
      Visible = False
      object editfechadebusqueda: TDateTimePicker
        Left = 0
        Top = 5
        Width = 129
        Height = 25
        Date = 38513.516126840300000000
        Time = 38513.516126840300000000
        TabOrder = 0
        OnClick = editfechadebusquedaClick
        OnCloseUp = editfechadebusquedaClick
        OnExit = editfechadebusquedaClick
      end
    end
  end
  object qcolores: TQuery
    DatabaseName = 'interna'
    SQL.Strings = (
      'select distinct g.c_grup,g.n_grup,g.color from agendapacient a'
      'left join codicampsalfa c on c.tipuscodi like '#39'ACTIVITAT%'#39
      '   and c.c_codi=a.c_activitat'
      'left  join grups g on g.c_grup=f_mid(c.tipuscodi,9,2)'
      'where a.c_historia=:c_historia and a.dataf is null')
    Left = 552
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'c_historia'
        ParamType = ptUnknown
      end>
  end
  object scolores: TDataSource
    DataSet = qcolores
    Left = 552
    Top = 320
  end
  object qagenda: TQuery
    DatabaseName = 'interna'
    SQL.Strings = (
      'select a.c_historia,'
      'a.hora,a.dia_semana,a.datai,a.dataf,'
      'a.c_activitat,a.c_usuari_ini,a.c_usuari_fin,'
      'g.c_grup,g.color,substr(c.tipuscodi,10,11) from agendapacient a'
      'left join codicampsalfa c on c.tipuscodi like '#39'ACTIVITAT%'#39
      '   and c.c_codi=a.c_activitat'
      
        'left  join grups g on g.c_grup=cast((substr(c.tipuscodi,10,11)) ' +
        'as char(2))'
      'where a.c_historia=:ni and a.dataf is null'
      'and a.c_activitat not like '#39'%*%'#39' and g.color is not null'
      'order by dia_semana,hora,datai')
    Left = 296
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ni'
        ParamType = ptUnknown
      end>
  end
  object regenera: TTimer
    Enabled = False
    Interval = 10
    OnTimer = regeneraTimer
    Left = 480
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 232
    object Fitxerdactivitats1: TMenuItem
      Caption = 'Fitxer d'#39'activitats'
      OnClick = Fitxerdactivitats1Click
    end
  end
  object qfili: TQuery
    DatabaseName = 'interna'
    SQL.Strings = (
      
        'select t.c_logopeda,t.c_tractament,f.num_hist,f.nomcomplet,t.dat' +
        'a_ingres,t.c_prestacio,t.c_llit,t.c_planta,p.n_prestacio,t.c_fre' +
        'quencia,m1.metge metge,m2.metge infermera,m3.metge terapeuta,m4.' +
        'metge fisio,m5.metge psicoleg,m6.metge trevallsocial,m7.metge lo' +
        'gopeda,m8.metge flm   from filiacio f'
      
        ' left outer join tractaments t on f.num_hist=t.c_historia and (d' +
        'ata_alta is null or data_alta>="TODAY") and c_prestacio in ("100' +
        '4","2014")'
      
        ' left outer join prestacion p  on t.c_prestacio=p.c_prestacio le' +
        'ft join metges m1 on t.c_coordinador=m1.codi '
      
        'left join metges m2 on t.c_infermeria=m2.codi left join metges m' +
        '3 on t.c_terapeuta=m3.codi '
      'left join metges m4 on t.c_fisioterapeuta=m4.codi'
      ' left join metges m5 on t.c_psicoleg=m5.codi '
      'left join metges m6 on t.c_trevallsocial=m6.codi'
      'inner join metges m7 on t.c_logopeda=m7.codi'
      'left join metges m8 on t.c_fisio_labo_marxa=m8.codi'
      ''
      ' where f.num_hist=8281')
    Left = 648
    Top = 240
  end
  object sfili: TDataSource
    DataSet = qfili
    Left = 656
    Top = 312
  end
  object qtractamen: TQuery
    BeforeOpen = qtractamenBeforeOpen
    DatabaseName = 'interna'
    DataSource = sfili
    RequestLive = True
    SQL.Strings = (
      'select * from tractaments where c_tractament=:c_tractament')
    Left = 186
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'c_tractament'
        ParamType = ptUnknown
      end>
  end
  object stractament: TDataSource
    DataSet = qtractamen
    Left = 306
    Top = 256
  end
end
