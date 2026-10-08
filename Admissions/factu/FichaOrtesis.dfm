object wFichaOrtesis: TwFichaOrtesis
  Left = 566
  Top = 153
  Width = 1240
  Height = 849
  Caption = 'Ortesis'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object HYBarra2: THYBarra
    Left = 0
    Top = 0
    Width = 1232
    Height = 25
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clSilver
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    DataSource = dsOrte1
    VerInsertar = False
    VerConsultar = False
    VerBorrar = False
    VerOrdenar = False
    VerSiguiente = False
    VerAnterior = False
    VerPrimero = False
    VerUltimo = False
    VerIndices = False
    Titulo = False
    VerPrint = False
    VerRefresh = True
    object SpeedButton1: TSpeedButton
      Left = 504
      Top = 0
      Width = 105
      Height = 25
      Caption = 'Imprimir Pantalla'
      Flat = True
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C00000000000000000000000000000000000000000000
        1F7C1F7C1F7C1F7C000018631863186318631863186318631863186300001863
        00001F7C1F7C0000000000000000000000000000000000000000000000000000
        186300001F7C0000186318631863186318631863E07FE07FE07F186318630000
        000000001F7C0000186318631863186318631863104210421042186318630000
        186300001F7C0000000000000000000000000000000000000000000000000000
        1863186300000000186318631863186318631863186318631863186300001863
        0000186300001F7C000000000000000000000000000000000000000018630000
        1863000000001F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00001863
        0000186300001F7C1F7C1F7C0000FF7F00000000000000000000FF7F00000000
        000000001F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000FF7F00000000000000000000FF7F0000
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        00001F7C1F7C1F7C1F7C1F7C1F7C1F7C00000000000000000000000000000000
        00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      OnClick = SpeedButton1Click
    end
  end
  object AreaCabecera: THYArea
    Left = 0
    Top = 25
    Width = 1232
    Height = 199
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    DataSource = dsDades
    object Shape4: TShape
      Left = 6
      Top = 124
      Width = 699
      Height = 71
      Brush.Style = bsClear
    end
    object Label21: TLabel
      Left = 154
      Top = 133
      Width = 538
      Height = 52
      Caption = 
        'Per a ortesis noves el metge haur'#224' de validar l'#39'ortesi quan s'#39'ha' +
        'gi entregat. '#13#10'Per a reposicions pot fer-ho opcionalment i aix'#237' ' +
        'ho indica.'#13#10'El sistema generar'#224' una pre-programaci'#243' de visita si' +
        ' no hi ha prestaci'#243' activa compatible.'#13#10'Aquesta visita ser'#224' pres' +
        'encial o per videoconfer'#232'ncia, en funci'#243' del que el metge hagi i' +
        'ndicat en fer la prescripci'#243'.'
    end
    object Ed_InterCon_INGRES: THYEdit
      Left = 5
      Top = 39
      Width = 87
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Data d'#39'ingr'#233's'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      AutoSelect = False
      DataSource = dsDades
      DataField = 'DATA_INGRES'
    end
    object Ed_InterCon_PRESTACIO: THYEdit
      Left = 101
      Top = 39
      Width = 55
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Prestaci'#243
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      AutoSelect = False
      DataSource = dsDades
      DataField = 'C_PRESTACIO'
    end
    object Ed_InterCon_DATA_S: THYEdit
      Left = 244
      Top = 39
      Width = 117
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Data sol'#183'licitud'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      AutoSelect = False
      DataSource = dsDades
      DataField = 'DATA1'
    end
    object Ed_InterCon_METGE_S: THYEdit
      Left = 376
      Top = 39
      Width = 47
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Metge S.'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      AutoSelect = False
      DataSource = dsDades
      DataField = 'C_METGE1'
    end
    object Ed_InterCon_HISTORIA: THYEdit
      Left = 5
      Top = 0
      Width = 59
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'NHC'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      AutoSelect = False
      DataSource = dsDades
      DataField = 'C_HISTORIA'
    end
    object Ed_InterCon_NOM_COMPLET: THYEdit
      Left = 69
      Top = 0
      Width = 292
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Nom complet'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      AutoSelect = False
      DataSource = dsDades
      DataField = 'NOMCOMPLET'
    end
    object Ed_InterCon_UNITAT: THYEdit
      Left = 376
      Top = 0
      Width = 47
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Unitat'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      AutoSelect = False
      DataSource = dsDades
      DataField = 'UNITAT'
    end
    object Ed_InterCon_PLANTA: THYEdit
      Left = 424
      Top = 0
      Width = 95
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Planta'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      AutoSelect = False
      DataSource = dsDades
      DataField = 'C_PLANTA'
    end
    object Ed_InterCon_LLIT: THYEdit
      Left = 528
      Top = 0
      Width = 47
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Llit'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      AutoSelect = False
      DataSource = dsDades
      DataField = 'C_LLIT'
    end
    object Ed_InterCon_TITOLPROVA: THYEdit
      Left = 6
      Top = 78
      Width = 355
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Grup d'#39'ortesis'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataOrtesis.InterconOrtesis
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
      AutoSelect = False
      DataSource = dsOrte1
      DataField = 'N_Grup'
    end
    object Ed_Fili_EDAT: THYEdit
      Left = 582
      Top = 0
      Width = 33
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Edat'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      AutoSelect = False
      DataSource = dsDades
      DataField = 'EDAT'
    end
    object Ed_qDades_C_COORDINADOR: THYEdit
      Left = 163
      Top = 39
      Width = 63
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Coordinador'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      AutoSelect = False
      DataSource = dsDades
      DataField = 'C_COORDINADOR'
    end
    object HYEdit1: THYEdit
      Left = 622
      Top = 0
      Width = 77
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Tel'#232'fon'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      AutoSelect = False
      DataSource = dsDades
      DataField = 'TELEFONO'
    end
    object edEstatOrtesi: THYEdit
      Left = 432
      Top = 39
      Width = 267
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Estat'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Tractaments
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      AutoSelect = False
      DataSource = dsDades
      DataField = 'FET'
    end
    object eCapClinic: THYEdit
      Left = 376
      Top = 77
      Width = 57
      Height = 35
      Idioma = Castellano
      EtiFontColor = clGray
      Eti = 'Cap Cl'#237'nic'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataOrtesis.InterconOrtesisReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 14
      AutoSelect = False
      DataSource = dsOrteReg
      DataField = 'C_Usuari'
    end
    object eMetge: THYEdit
      Left = 434
      Top = 77
      Width = 134
      Height = 35
      Idioma = Castellano
      EtiFontColor = clGray
      Eti = '(validaci'#243' petici'#243')'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataOrtesis.InterconOrtesisReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 15
      TabStop = False
      AutoSelect = False
      DataSource = dsOrteReg
      DataField = 'Usuari_Metge'
    end
    object eDataValida: THYEdit
      Left = 570
      Top = 77
      Width = 129
      Height = 35
      Idioma = Castellano
      EtiFontColor = clGray
      Eti = 'Data validaci'#243' petici'#243
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataOrtesis.InterconOrtesisReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Enabled = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 16
      AutoSelect = False
      DataSource = dsOrteReg
      DataField = 'Data'
    end
    object Ed_Ortesis1_Reposicio: THYCheck
      Left = 13
      Top = 130
      Width = 125
      Height = 19
      Alignment = taRightJustify
      Caption = #201's reposici'#243'?'
      DataField = 'Reposicio'
      DataSource = dsOrte1
      TabOrder = 17
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Ed_Ortesis1_Validacio: THYCheck
      Left = 13
      Top = 150
      Width = 125
      Height = 19
      Alignment = taRightJustify
      Caption = 'Validaci'#243' a l'#39'entrega'
      DataField = 'Validacio'
      DataSource = dsOrte1
      TabOrder = 18
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Ed_Ortesis1_Presencial: THYCheck
      Left = 13
      Top = 170
      Width = 125
      Height = 19
      Alignment = taRightJustify
      Caption = 'Valoraci'#243' presencial'
      DataField = 'Presencial'
      DataSource = dsOrte1
      TabOrder = 19
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object Tabs: TPageControl
    Left = 0
    Top = 224
    Width = 1232
    Height = 594
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 2
    TabOrder = 2
    object tOrtesis: TTabSheet
      Caption = 'Ortesi'
      object Panel3: TPanel
        Left = 0
        Top = 209
        Width = 1224
        Height = 357
        Align = alClient
        BevelOuter = bvLowered
        BorderWidth = 5
        Color = clWhite
        TabOrder = 1
        object Label5: TLabel
          Left = 6
          Top = 6
          Width = 1212
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = 'Sol'#183'licitud en curs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBMemo2: TDBMemo
          Left = 6
          Top = 26
          Width = 1212
          Height = 325
          Align = alClient
          DataField = 'SOLICITA'
          DataSource = dsDades
          TabOrder = 0
        end
      end
      object HYArea2: THYArea
        Left = 0
        Top = 0
        Width = 1224
        Height = 209
        Align = alTop
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        DataSource = dsOrte1
        object Label3: TLabel
          Left = 192
          Top = 39
          Width = 85
          Height = 13
          Caption = 'Ortesi (codificada)'
        end
        object Label4: TLabel
          Left = 192
          Top = 119
          Width = 85
          Height = 13
          Caption = 'Ortesi (sol'#183'licitada)'
        end
        object bAnula: TSpeedButton
          Tag = 84
          Left = 10
          Top = 42
          Width = 141
          Height = 20
          Caption = 'Anul'#183'la la iInterconsulta'
          Flat = True
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
          Margin = 5
          NumGlyphs = 2
          Spacing = 10
          Transparent = False
          OnClick = bAnulaClick
        end
        object bNoGestiona: TSpeedButton
          Tag = 85
          Left = 10
          Top = 65
          Width = 175
          Height = 20
          Caption = 'No gestionada per Admissions'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF3333993333339993333377FF3333377FF3399993333339
            993337777FF3333377F3393999333333993337F777FF333337FF993399933333
            399377F3777FF333377F993339993333399377F33777FF33377F993333999333
            399377F333777FF3377F993333399933399377F3333777FF377F993333339993
            399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
            99333773FF3333777733339993333339933333773FFFFFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          Transparent = False
          OnClick = bAnulaClick
        end
        object lDataEntrega: TLabel
          Left = 12
          Top = 145
          Width = 70
          Height = 13
          Caption = 'Data d'#39'entrega'
        end
        object bEntregar: TSpeedButton
          Tag = 85
          Left = 10
          Top = 114
          Width = 111
          Height = 20
          Caption = 'Entrega l'#39'ortesi'
          Flat = True
          Glyph.Data = {
            42060000424D4206000000000000360400002800000020000000100000000100
            0800010000000C020000F00A0000F00A00000001000000010000006F00000F6F
            0F000070000002790200027B0200057E0500077C07000A7E0A000D7F0D001674
            1600137D130017791700197719001A761A00187818001E7A1E001D7F1D00217E
            2100237D2300237E230041414100424242004747470048484800494949004C4C
            4C004D4D4D004E4E4E0050505000515151005454540055555500565656005757
            5700585858005D5D5D005F5F5F00606060006363630066666600696969006A6A
            6A006B6B6B006D6D6D006E6E6E006F6F6F007070700072727200737373007474
            740075757500767676007777770078787800797979007B7B7B007C7C7C007D7D
            7D007E7E7E007F7F7F000B800B0001910100049F0400059F0500118311001282
            120018811800198D19001F8C1F001F9E1F0008A308000FA30F000DA40D000AAD
            0A000EB10E0015A4150014AF140018A218001CA31C0019AC190013B213001AB3
            1A0018B618001CB11C00238C230022912200239E2300259A2500269926002A91
            2A00299729002A972A002F932F002D952D002C962C002E942E002F942F00299A
            29002B982B003095300030983000309930003198310033993300359A3500369C
            3600379C3700389C38003A9D3A003B9E3B003C9F3C003D9F3D003F9F3F0024AF
            240021B5210039A139003FA03F0038AA3800429F420041A1410042A0420043A2
            430042A6420045A2450046A3460045A5450046A7460041A8410040AA400048A2
            480048A4480049A4490049A749004AA44A004BA54B004CA34C004CA54C004CA7
            4C004EA74E004FA74F004EA84E0051A6510052A6520052A8520053A9530054A8
            540054A9540056AB560059AB59005AAB5A005AAC5A005BAD5B005DAE5D005EAD
            5E005EAF5E0060AE600061AF610062B0620063B0630063B1630065B2650067B2
            670067B3670068B4680069B469006BB56B006CB66C006FB76F0070B8700076BB
            760077BB77007FB07F0079BC79007ABD7A008080800081818100828282008383
            830084848400858585008686860088888800898989008A8A8A008B8B8B008C8C
            8C008D8D8D008E8E8E008F8F8F00909090009191910092929200939393009494
            9400959595009696960097979700999999009A9A9A009B9B9B009E9E9E009F9F
            9F0085B785008ABB8A00A0A0A000A1A1A100A2A2A200A5A5A500A6A6A600AEAE
            AE00BABABA0080C080008CC68C008DC68D009DCF9D00A3D6A300B1D8B100B4D9
            B400C1C1C100C8C8C800C9C9C900D2D9DC00F8F9FA00FFFFFF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000001DD01DE0CDF
            0004DEDDDDDE0CDF01DE01DD00000014DECA01090D0D0E0B0A0807060402ABDE
            DECE161A041C00081D1C1B191815C7DE00000020DF4044595C5F5E61564E4B48
            3F3D00DFDF1E24272929292A2A2A2827241F14DF00000020DF435E6A6F6E73D7
            DF715350493E03DFDF23292F333333DADF33302E292417DF00000020DF556B79
            827D7ADFDFDF72524A4605DFDF2630373A3939DFDFDF35322C2619DF00000020
            DF5E78888B897E80DFDFDF514C473CDFDF2936AEB0AF3B3ADFDFDF312D271CDF
            00000020DF68868F908C847F75DFDFDF4F4D41DFDF2EAEB2B3B1AE3937DFDFDF
            2D281EDF00000003DF7090000ADF00064542DFDF34B30ADF0003281FDF000000
            0003DF7B96000ADF00065710DFDF37B70ADF00032920DF0000000020DF8B9F9C
            948D817069DFDFDF585B11DFDFB0BEBCB6B139342FDFDFDF282921DF00000020
            DF90A6A399918776DFDFDF5A625D13DFDFB3C4C1B9B33B35DFDFDF282A2922DF
            00000020DF9AADA89E958EDFDFDF6765646012DFDFBACDC6BDB6B1DFDFDF2D2B
            2B2922DF00000020DFA5D5D3A7A19BD9DF8883776C630FDFDFC3D1CFC5C0BBDC
            DFAE3A36312A1EDF00000020DFAAD6D4ACA8A4A09D98938A77600CDFDFC9D2D1
            CCC6C2BFBDB9B5B036291CDF00000020DED8A9A297928B85867C746D6654CBDE
            DEDBC8C0B8B4B03BAE3835322B25D0DE000001DD01DE0CDF0004DEDDDDDE0CDF
            01DE01DD0001}
          Margin = 5
          NumGlyphs = 2
          Spacing = 10
          Transparent = False
          OnClick = bEntregarClick
        end
        object Shape3: TShape
          Left = 856
          Top = 39
          Width = 353
          Height = 129
        end
        object Eti_Ortesis1_EstatPAOS_N_Codi: THYLabel
          Left = 926
          Top = 80
          Width = 200
          Height = 19
          DataField = 'EstatPAOS_N_Codi'
          DataSource = dsOrte1
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object Eti_Ortesis1_SituacioPAOS_N_Codi: THYLabel
          Left = 998
          Top = 128
          Width = 200
          Height = 19
          DataField = 'SituacioPAOS_N_Codi'
          DataSource = dsOrte1
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object Label20: TLabel
          Left = 872
          Top = 47
          Width = 135
          Height = 20
          Caption = 'PAOS - CatSalut'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object sbModificaEntrega: TSpeedButton
          Left = 140
          Top = 162
          Width = 119
          Height = 22
          Caption = 'Modifica l'#39'entrega'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FF000000FF000000FF
            000000FF000000FF0000000000000000000084848400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FF000000FF000000FF
            000000FF000000FF000000FF000000BD000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FF000000FF000000FF
            000000FF000000FF000000BD000000FF000000BD000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000FF000000BD000000BD000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000BD000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000BD000000000000FF00FF00FF00
            FF000000000000FF000000000000000000000000000000000000000000000000
            0000000000000000000000FF000000BD000000BD000000000000FF00FF000000
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000BD000000FF000000BD0000000000000000000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000BD000000000000FF00FF00FF00FF000000
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF00000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF000000000000FF000000000000000000000000000000000000000000000000
            0000000000000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Visible = False
          OnClick = sbModificaEntregaClick
        end
        object bRecupera: TSpeedButton
          Tag = 11
          Left = 10
          Top = 89
          Width = 87
          Height = 20
          Caption = 'Recupera'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF84848400000000000000000000000000000000000000000000000000FF
            00000000FF00FFFF00FFFF00FFFF00FF00000000000000FF0000FF0000FF0000
            FF0000FF0000FF0000FF0000FF0000FF0000FF00000000FF00FFFF00FF000000
            00BD0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
            0000FF0000FF0000000000000000BD0000FF0000BD0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF0000FF0000FF0000FF00000000FF00FF00000000BD00
            00BD0000FF0000000000000000000000000000000000000000000000000000FF
            00000000FF00FFFF00FF00000000BD00000000000000FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FF000000000000
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
            FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000BD00
            000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF00000000BD0000BD0000FF0000000000000000000000
            0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000BD00
            00FF0000BD0000FF0000FF0000FF0000FF0000FF00000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF00000000BD0000FF0000FF0000FF0000FF0000
            FF0000FF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF848484
            00000000000000FF0000FF0000FF0000FF0000FF00000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF84848400000000000000000000
            0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          Spacing = 5
          Transparent = False
          OnClick = bRecuperaClick
        end
        object Ed_Ortesis1_C_Ortesis: THYEdit
          Left = 192
          Top = 12
          Width = 151
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Grup'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataOrtesis.InterconOrtesis
          Enabled = False
          TabOrder = 0
          AutoSelect = False
          DataSource = dsOrte1
          DataField = 'C_Grup'
        end
        object DBMemo1: TDBMemo
          Left = 292
          Top = 39
          Width = 545
          Height = 73
          Ctl3D = False
          DataField = 'Grup_N_Grup'
          DataSource = dsOrte1
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object HYMemo2: THYMemo
          Left = 292
          Top = 119
          Width = 545
          Height = 73
          DataField = 'N_Grup'
          DataSource = dsOrte1
          TabOrder = 2
        end
        object cbControlProces: THYCheck
          Left = 12
          Top = 12
          Width = 119
          Height = 17
          Caption = 'Control del proc'#233's'
          DataField = 'ControlProces'
          DataSource = dsOrte1
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object eDataEntrega: TEdit
          Left = 12
          Top = 162
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 4
        end
        object Ed_Ortesis1_Estat_PAOS: THYEdit
          Left = 864
          Top = 80
          Width = 55
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Estat'
          EtiSepara = 35
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataOrtesis.InterconOrtesis
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          AutoSelect = False
          ReadOnly = True
          DataSource = dsOrte1
          DataField = 'Estat_PAOS'
        end
        object Ed_Ortesis1_N_Expedient: THYEdit
          Left = 864
          Top = 104
          Width = 223
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'N'#250'mero expedient'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataOrtesis.InterconOrtesis
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          AutoSelect = False
          ReadOnly = True
          DataSource = dsOrte1
          DataField = 'N_Expedient'
        end
        object Ed_Ortesis1_SITUACIO_EXP: THYEdit
          Left = 864
          Top = 128
          Width = 127
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Situaci'#243' expedient'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataOrtesis.InterconOrtesis
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          AutoSelect = False
          ReadOnly = True
          DataSource = dsOrte1
          DataField = 'SITUACIO_EXP'
        end
      end
    end
    object tCatalegs: TTabSheet
      Caption = 'Elements ortesi'
      ImageIndex = 2
      object Splitter1: TSplitter
        Left = 129
        Top = 0
        Width = 3
        Height = 566
        Cursor = crHSplit
      end
      object Panel1: TPanel
        Left = 132
        Top = 0
        Width = 1092
        Height = 566
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object HYBarra1: THYBarra
          Left = 0
          Top = 0
          Width = 1092
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          Color = clSilver
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsOrte2
          AlInsertar = HYBarra3AlInsertar
          AlBorrar = HYBarra1AlBorrar
          VerConsultar = False
          VerOrdenar = False
          VerSalir = False
          VerIndices = False
          Titulo = True
          VerPrint = False
          VerRefresh = True
        end
        object AreaElements: THYArea
          Left = 0
          Top = 25
          Width = 1092
          Height = 541
          Align = alClient
          Color = clWhite
          ParentColor = False
          TabOrder = 1
          DataSource = dsOrte2
          object Label1: TLabel
            Left = 10
            Top = 129
            Width = 28
            Height = 13
            Caption = 'Notes'
          end
          object Eti_OrtesisLin_Ortesis_CodiServei: THYLabel
            Left = 298
            Top = 107
            Width = 223
            Height = 19
            DataField = 'Ortesis_CodiServei'
            DataSource = dsOrte2
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object SpeedButton2: TSpeedButton
            Left = 278
            Top = 292
            Width = 145
            Height = 25
            Caption = 'Regenerar full petici'#243
            Glyph.Data = {
              42020000424D4202000000000000420000002800000010000000100000000100
              1000030000000002000000000000000000000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C1F7C1F7C1F7C0000000000000000000000001042
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000E003E003E003E003E0030000
              000010421F7C1F7C1F7C1F7C1F7C1F7C1F7C0000E003E003E003E003E003E003
              E00200001F7C1F7C1F7C1F7C1F7C1F7C1F7C0000E003E003E003E003E003E002
              E003E00200001F7C1F7C1F7C1F7C1F7C1F7C000000000000000000000000E003
              E002E00200001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
              0000E00200001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C000000001F7C1F7C1F7C1F7C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C000000001F7C1F7C1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
              0000E00200001F7C1F7C0000E00300000000000000000000000000000000E003
              E002E00200001F7C0000E003E003E003E003E003E003E003E003E003E003E002
              E003E00200000000E003E003E003E003E003E003E003E003E003E003E003E003
              E00200001F7C1F7C0000E003E003E003E003E003E003E003E003E003E0030000
              00001F7C1F7C1F7C1F7C0000E003000000000000000000000000000000001042
              1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C}
            Margin = 8
            Spacing = 7
            OnClick = bRefrescaClick
          end
          object Ed_Ortesis2_C_Cataleg: THYEdit
            Left = 10
            Top = 11
            Width = 103
            Height = 33
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi d'#39'ortesi'
            EtiSepara = 14
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            Enabled = False
            TabOrder = 0
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'C_Ortesis'
          end
          object Nota: TDBMemo
            Left = 11
            Top = 144
            Width = 510
            Height = 104
            Color = clWhite
            Ctl3D = False
            DataField = 'Notes'
            DataSource = dsOrte2
            ParentCtl3D = False
            TabOrder = 3
            OnChange = NotaChange
          end
          object Ed_Ortesis1_Observacions: THYEdit
            Left = 10
            Top = 264
            Width = 511
            Height = 20
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Observacions'
            EtiSepara = 135
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 4
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'Observacions'
          end
          object HYMemo1: THYMemo
            Left = 10
            Top = 48
            Width = 279
            Height = 55
            DataField = 'N_Ortesis'
            DataSource = dsOrte2
            MaxLength = 254
            ReadOnly = True
            TabOrder = 1
          end
          object Ed_Ortesis2_Data_PeticioMutua: THYEdit
            Left = 10
            Top = 292
            Width = 256
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data petici'#243' (impr'#232's)'
            EtiSepara = 135
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 5
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'Data_PeticioMutua'
          end
          object Ed_Ortesis2_Data_ConformitatMutua: THYEdit
            Left = 10
            Top = 317
            Width = 256
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data conformitat m'#250'tua'
            EtiSepara = 135
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 6
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'Data_ConformitatMutua'
          end
          object HYEdit5: THYEdit
            Left = 10
            Top = 107
            Width = 279
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi SCS'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'CodiServei'
          end
          object bCodificar: TButton
            Left = 120
            Top = 16
            Width = 83
            Height = 25
            Caption = 'Canvia el codi'
            TabOrder = 8
            OnClick = bCodificarClick
          end
          object HYMemo3: THYMemo
            Left = 298
            Top = 48
            Width = 223
            Height = 55
            Ctl3D = False
            DataField = 'Ortesis_N_Ortesis'
            DataSource = dsOrte2
            Enabled = False
            MaxLength = 254
            ParentCtl3D = False
            TabOrder = 9
          end
          object bVeureFullMutua: TBitBtn
            Left = 278
            Top = 317
            Width = 145
            Height = 25
            Caption = 'Imprimir full petici'#243
            TabOrder = 7
            OnClick = bVeureFullMutuaClick
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
            Margin = 8
            NumGlyphs = 2
            Spacing = 7
          end
        end
      end
      object HYGrid1: THYGrid
        Left = 0
        Top = 0
        Width = 129
        Height = 566
        Align = alLeft
        Color = clWhite
        DataSource = dsOrte2
        DefaultDrawing = False
        FixedColor = clSilver
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'C_Ortesis'
            Width = 107
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Facturaci'#243
      ImageIndex = 4
      object Splitter2: TSplitter
        Left = 129
        Top = 0
        Width = 3
        Height = 566
        Cursor = crHSplit
      end
      object Panel2: TPanel
        Left = 132
        Top = 0
        Width = 1092
        Height = 566
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 0
        object HYBarra3: THYBarra
          Left = 0
          Top = 0
          Width = 1092
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          Color = clSilver
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsOrte2
          AlInsertar = HYBarra3AlInsertar
          VerConsultar = False
          VerBorrar = False
          VerOrdenar = False
          VerSalir = False
          VerIndices = False
          Titulo = True
          VerPrint = False
          VerRefresh = True
        end
        object AreaFactu: THYArea
          Left = 0
          Top = 25
          Width = 1092
          Height = 541
          Align = alClient
          Color = clWhite
          ParentColor = False
          TabOrder = 1
          DataSource = dsOrte2
          object Shape1: TShape
            Left = 25
            Top = 369
            Width = 688
            Height = 256
            Brush.Color = 15724527
            Visible = False
          end
          object bEnviaOrto: TSpeedButton
            Left = 236
            Top = 394
            Width = 122
            Height = 25
            Caption = 'Enviar Ortop'#232'dia'
            Glyph.Data = {
              42060000424D4206000000000000360400002800000020000000100000000100
              0800010000000C020000F00A0000F00A00000001000000010000006F00000F6F
              0F000070000002790200027B0200057E0500077C07000A7E0A000D7F0D001674
              1600137D130017791700197719001A761A00187818001E7A1E001D7F1D00217E
              2100237D2300237E230041414100424242004747470048484800494949004C4C
              4C004D4D4D004E4E4E0050505000515151005454540055555500565656005757
              5700585858005D5D5D005F5F5F00606060006363630066666600696969006A6A
              6A006B6B6B006D6D6D006E6E6E006F6F6F007070700072727200737373007474
              740075757500767676007777770078787800797979007B7B7B007C7C7C007D7D
              7D007E7E7E007F7F7F000B800B0001910100049F0400059F0500118311001282
              120018811800198D19001F8C1F001F9E1F0008A308000FA30F000DA40D000AAD
              0A000EB10E0015A4150014AF140018A218001CA31C0019AC190013B213001AB3
              1A0018B618001CB11C00238C230022912200239E2300259A2500269926002A91
              2A00299729002A972A002F932F002D952D002C962C002E942E002F942F00299A
              29002B982B003095300030983000309930003198310033993300359A3500369C
              3600379C3700389C38003A9D3A003B9E3B003C9F3C003D9F3D003F9F3F0024AF
              240021B5210039A139003FA03F0038AA3800429F420041A1410042A0420043A2
              430042A6420045A2450046A3460045A5450046A7460041A8410040AA400048A2
              480048A4480049A4490049A749004AA44A004BA54B004CA34C004CA54C004CA7
              4C004EA74E004FA74F004EA84E0051A6510052A6520052A8520053A9530054A8
              540054A9540056AB560059AB59005AAB5A005AAC5A005BAD5B005DAE5D005EAD
              5E005EAF5E0060AE600061AF610062B0620063B0630063B1630065B2650067B2
              670067B3670068B4680069B469006BB56B006CB66C006FB76F0070B8700076BB
              760077BB77007FB07F0079BC79007ABD7A008080800081818100828282008383
              830084848400858585008686860088888800898989008A8A8A008B8B8B008C8C
              8C008D8D8D008E8E8E008F8F8F00909090009191910092929200939393009494
              9400959595009696960097979700999999009A9A9A009B9B9B009E9E9E009F9F
              9F0085B785008ABB8A00A0A0A000A1A1A100A2A2A200A5A5A500A6A6A600AEAE
              AE00BABABA0080C080008CC68C008DC68D009DCF9D00A3D6A300B1D8B100B4D9
              B400C1C1C100C8C8C800C9C9C900D2D9DC00F8F9FA00FFFFFF00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000001DD01DE0CDF
              0004DEDDDDDE0CDF01DE01DD00000014DECA01090D0D0E0B0A0807060402ABDE
              DECE161A041C00081D1C1B191815C7DE00000020DF4044595C5F5E61564E4B48
              3F3D00DFDF1E24272929292A2A2A2827241F14DF00000020DF435E6A6F6E73D7
              DF715350493E03DFDF23292F333333DADF33302E292417DF00000020DF556B79
              827D7ADFDFDF72524A4605DFDF2630373A3939DFDFDF35322C2619DF00000020
              DF5E78888B897E80DFDFDF514C473CDFDF2936AEB0AF3B3ADFDFDF312D271CDF
              00000020DF68868F908C847F75DFDFDF4F4D41DFDF2EAEB2B3B1AE3937DFDFDF
              2D281EDF00000003DF7090000ADF00064542DFDF34B30ADF0003281FDF000000
              0003DF7B96000ADF00065710DFDF37B70ADF00032920DF0000000020DF8B9F9C
              948D817069DFDFDF585B11DFDFB0BEBCB6B139342FDFDFDF282921DF00000020
              DF90A6A399918776DFDFDF5A625D13DFDFB3C4C1B9B33B35DFDFDF282A2922DF
              00000020DF9AADA89E958EDFDFDF6765646012DFDFBACDC6BDB6B1DFDFDF2D2B
              2B2922DF00000020DFA5D5D3A7A19BD9DF8883776C630FDFDFC3D1CFC5C0BBDC
              DFAE3A36312A1EDF00000020DFAAD6D4ACA8A4A09D98938A77600CDFDFC9D2D1
              CCC6C2BFBDB9B5B036291CDF00000020DED8A9A297928B85867C746D6654CBDE
              DEDBC8C0B8B4B03BAE3835322B25D0DE000001DD01DE0CDF0004DEDDDDDE0CDF
              01DE01DD0001}
            Margin = 8
            NumGlyphs = 2
            Spacing = 7
            Visible = False
            OnClick = bEnviaOrtoClick
          end
          object bAnulaOrto: TSpeedButton
            Left = 241
            Top = 593
            Width = 131
            Height = 25
            Caption = 'Anul'#183'lar enviament'
            Glyph.Data = {
              1E060000424D1E06000000000000360400002800000020000000100000000100
              080001000000E8010000F00A0000F00A00000001000000010000434547004747
              470046484900474849004848480048484900494949004A4A4B004B4C4C004B4D
              4F004D4E4E004F4F4F004141500042405D004F5050004E5253004F5254005051
              510051525300525354005556560057585800565A5B00585A5A00585A5B00595A
              5B005A5D5E005C5E5F005B5F600055507B005E60610061626300616567006468
              6A0067696A00676A6C00686B6D00686C6F00626474006C6F70006B7072006C70
              72007175780073777800727679007377790074797B0076797B00767A7C00787B
              7C0036219F003D21BC003E23BD004B39AA00452DB900462EB900615D89007A7E
              81005141A5005D51A6005D4BBC00635AA1006657BB006F68A300300FC4003413
              C8003414C9003717CD002A04D5002B05D6002C06D7002D07D8002900DF002E08
              DA00320BDD00320CDD00330DDE003B18DB003C19DD004C32CC004121D7004424
              DA005134DC00644DDA00654EDB006F5BDA007665D7007868DA00827FAC008083
              850083888B0085898B00878B8D00888C8F008A9092008C92950092979A00959B
              9E009093A300999FA2009497A8009EA4A7009FA5A8009DA1B200A0A5A800A2A8
              AB00A7AEB100ABB2B500ACB3B600ADB4B800B0B6B900B0B8BB00B2B9BC00B2B9
              BD00B3BABE009D9BC800968FD700A4A5C400B0B4C600B5BCC000B7BEC200B8BF
              C300AAA9D600BBC3C700BCC4C800BEC5C900BFC6CA00BEC3D500C0C7CB00C0C8
              CC00C1C9CD00C3CBCF00C5CDD100C6CED200C7CFD300C8D0D400000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000587877E77
              7D000887000881788787877E777D088700038178870000000006877E5E16397B
              0587000B86725A2A78877E5E16397B000587000586725A2A7800000000208756
              4832106585878787856A3A465A81875B0103106585878787856A1E045A810000
              0020877448490D216D8787856733483E7C878768010702216D8787856612012B
              7C870000000E8787554843092E6F8567424658820487000E590111092E6F8566
              0A045D8287870000000D8787875448370F2D6242465882000687000D3101180F
              2D600A045D82878787000000048700085448360C404558820887000831011700
              05015D820487000005870007534845441D6B8600098700072F0101011A6B8600
              048700000487000985674748341C2C6A83000787000C85660601131C2C6A8387
              87870000000E878787856742463C4B4F2625637E0587000D85660A04270B1F21
              25637E878700000000208787836742483F7C7A4E5038205F8187878783660A01
              307C6E151923205F81870000002087846441483B7987877F524A3D286C858784
              6108012479878780220A29286C85000000068773414835710587000B57487585
              87876908011A7100058700055C016A85870000000006874D48336A860B870005
              1401126A86000A8700000005874C517686000C8700040E1B70860B8700002087
              0001}
            Margin = 8
            NumGlyphs = 2
            Spacing = 7
            Visible = False
            OnClick = bAnulaOrtoClick
          end
          object bRefrescaOrto: TSpeedButton
            Left = 670
            Top = 396
            Width = 28
            Height = 22
            Hint = 'Refrescar dades de l'#39'enviament a l'#39'ortop'#232'dia.'
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333777733
              3333307337000077333330077000000073333000000333000733300000333330
              0073300000333333007330000003333377733333333333333333333333333377
              7777337773333300000733007333333000073330073337700007333000777000
              0007333300000000330733333300003333333333333333333333}
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = bRefrescaOrtoClick
          end
          object bOfertaVista: TSpeedButton
            Left = 34
            Top = 528
            Width = 99
            Height = 21
            Caption = 'Oferta Vista'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
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
            Margin = 8
            NumGlyphs = 2
            Spacing = 7
            Visible = False
            OnClick = bOfertaVistaClick
          end
          object sbPreusOK: TSpeedButton
            Left = 475
            Top = 530
            Width = 116
            Height = 22
            Caption = 'Acceptar oferta'
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777777777777777777777777777777777777777777777777777777777077777
              7777777770007777777777770000077777777770007000777777777007770007
              7777777777777000777777777777770007777777777777700077777777777777
              0077777777777777777777777777777777777777777777777777}
            Margin = 8
            Spacing = 7
            Visible = False
            OnClick = sbPreusOKClick
          end
          object sbPreusNOOK: TSpeedButton
            Left = 591
            Top = 530
            Width = 111
            Height = 22
            Caption = 'Denegar oferta'
            Glyph.Data = {
              BE000000424DBE0000000000000076000000280000000A000000090000000100
              0400000000004800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888800
              0000800888800800000088008800880000008880000888000000888800888800
              0000888000088800000088008800880000008008888008000000888888888800
              0000}
            Margin = 8
            Spacing = 7
            Visible = False
            OnClick = sbPreusNOOKClick
          end
          object Label7: TLabel
            Left = 33
            Top = 374
            Width = 237
            Height = 13
            Caption = 'Dades de comunicacions amb l'#39'ortop'#232'dia:'
            Color = 15724527
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object groupProv: TGroupBox
            Left = 24
            Top = 196
            Width = 491
            Height = 149
            Caption = 'Prove'#239'dor'
            TabOrder = 1
            object HYLabel15: THYLabel
              Left = 168
              Top = 45
              Width = 311
              Height = 19
              DataField = 'EstatFacProv_N_Codi'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel16: THYLabel
              Left = 168
              Top = 23
              Width = 311
              Height = 19
              DataField = 'Prov_N_Prov'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object edFacturaProv: THYEdit
              Left = 10
              Top = 121
              Width = 223
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Factura prov.'
              EtiSepara = 80
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 2
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'Albara'
            end
            object HYEdit38: THYEdit
              Left = 10
              Top = 24
              Width = 151
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Prove'#239'dor'
              EtiSepara = 80
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 0
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'C_Prov'
            end
            object edDataFacProv: THYEdit
              Left = 258
              Top = 121
              Width = 221
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Data factura'
              EtiSepara = 80
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 3
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'Data_FacProv'
            end
            object HYEdit40: THYEdit
              Left = 10
              Top = 46
              Width = 151
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Estat fac. prov'
              EtiSepara = 80
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 1
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'EstatFacProv'
            end
            object joredIvaCompra: THYEdit
              Left = 10
              Top = 69
              Width = 223
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'IVA compra'
              EtiSepara = 80
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              AutoSelect = False
              ReadOnly = True
              DataSource = dsOrte2
              DataField = 'IvaCompra'
            end
            object jorEdPreuCompra: THYEdit
              Left = 258
              Top = 70
              Width = 221
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Preu compra'
              EtiSepara = 80
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              AutoSelect = False
              ReadOnly = True
              DataSource = dsOrte2
              DataField = 'PreuCompra'
            end
          end
          object GroupBox2: TGroupBox
            Left = 24
            Top = 7
            Width = 492
            Height = 188
            Caption = 'Element'
            TabOrder = 0
            object HYLabel1: THYLabel
              Left = 138
              Top = 15
              Width = 342
              Height = 19
              DataField = 'CentreFac_N_CentreFac'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel2: THYLabel
              Left = 138
              Top = 38
              Width = 342
              Height = 19
              DataField = 'Client_N_Client'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel3: THYLabel
              Left = 138
              Top = 63
              Width = 342
              Height = 19
              DataField = 'Delega_N_Delegacio'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Label2: TLabel
              Left = 258
              Top = 140
              Width = 30
              Height = 13
              Caption = 'M'#224'xim'
            end
            object HYEdit27: THYEdit
              Left = 17
              Top = 138
              Width = 96
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'IVA venda'
              EtiSepara = 60
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 6
              AutoSelect = False
              ReadOnly = True
              DataSource = dsOrte2
              DataField = 'IvaVenta'
            end
            object HYEdit4: THYEdit
              Left = 17
              Top = 113
              Width = 233
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Factura Cl.'
              EtiSepara = 60
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 3
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'Data_FacCli'
            end
            object HYEdit7: THYEdit
              Left = 17
              Top = 16
              Width = 111
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'CF'
              EtiSepara = 60
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              OnExit = HYEdit7Exit
              TabOrder = 0
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'C_CentreFac'
            end
            object HYEdit8: THYEdit
              Left = 17
              Top = 40
              Width = 111
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Client'
              EtiSepara = 60
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 1
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'C_Client'
            end
            object HYEdit9: THYEdit
              Left = 17
              Top = 64
              Width = 111
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Delega.'
              EtiSepara = 60
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 2
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'C_Delegacio'
            end
            object HYEdit11: THYEdit
              Left = 258
              Top = 112
              Width = 136
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = '% Usuari'
              EtiSepara = 50
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 4
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'PercentatgePacient'
            end
            object HYEdit12: THYEdit
              Left = 17
              Top = 162
              Width = 376
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Ref'
              EtiSepara = 60
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 5
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'Referencia'
            end
            object HYEdit14: THYEdit
              Left = 122
              Top = 138
              Width = 127
              Height = 19
              Cursor = crCross
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Preu'
              EtiSepara = 50
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              AutoSelect = False
              ReadOnly = True
              DataSource = dsOrte2
              DataField = 'PreuVenta'
            end
            object DBEdit1: TDBEdit
              Left = 308
              Top = 138
              Width = 85
              Height = 19
              TabStop = False
              Ctl3D = False
              DataField = 'Ortesis_PreuMaximServei'
              DataSource = dsOrte2
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 8
            end
            object Preus: TBitBtn
              Left = 398
              Top = 111
              Width = 82
              Height = 69
              Caption = 'Introdu'#239'r Preus'
              TabOrder = 9
              OnClick = PreusClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                0400000000000001000000000000000000001000000010000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
                73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
                0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
                0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
                0333337F777777737F333308888888880333337F333333337F33330888888888
                03333373FFFFFFFF733333700000000073333337777777773333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
          end
          object Ed_OrtesisLin_Data_Comanda: THYEdit
            Left = 34
            Top = 295
            Width = 223
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data comanda'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 2
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'Data_Comanda'
          end
          object HYEdit3: THYEdit
            Left = 375
            Top = 398
            Width = 290
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Estat'
            EtiSepara = 30
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Color = 15724527
            ParentColor = False
            Visible = False
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            AutoSelect = False
            ReadOnly = True
            DataSource = dsDades
            DataField = 'N_CODI'
          end
          object HYEdit6: THYEdit
            Left = 34
            Top = 396
            Width = 202
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data enviament'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Color = 15724527
            ParentColor = False
            Visible = False
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            AutoSelect = False
            ReadOnly = True
            DataSource = dsDades
            DataField = 'D_ORTO_ENVIA'
          end
          object HYEdit10: THYEdit
            Left = 34
            Top = 597
            Width = 202
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data anul'#183'laci'#243
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Color = 15724527
            ParentColor = False
            Visible = False
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            AutoSelect = False
            ReadOnly = True
            DataSource = dsDades
            DataField = 'D_ORTO_ANULA'
          end
          object MotiuDen: THYEdit
            Left = 34
            Top = 555
            Width = 671
            Height = 33
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Motiu denegaci'#243':'
            EtiSepara = 14
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Color = 15724527
            ParentColor = False
            Visible = False
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            AutoSelect = False
            ReadOnly = True
            DataSource = dsDades
            DataField = 'MOTIU_DEN'
          end
          object DBGrid1: TDBGrid
            Left = 34
            Top = 428
            Width = 666
            Height = 97
            Color = 15724527
            DataSource = dsOrte2
            FixedColor = clSilver
            TabOrder = 7
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Visible = False
            Columns = <
              item
                Expanded = False
                FieldName = 'N_Ortesis'
                Width = 518
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Preu_Oferta'
                Width = 110
                Visible = True
              end>
          end
          object mgcMotiuDen: THyMoveGroupControl
            Left = 26
            Top = 632
            Width = 369
            Height = 109
            Caption = 'Motiu de denegaci'#243' de l'#39'oferta'
            Color = 15724527
            ParentColor = False
            TabOrder = 8
            ColorCaption = 13553358
            FontCaption.Charset = DEFAULT_CHARSET
            FontCaption.Color = clWhite
            FontCaption.Height = -11
            FontCaption.Name = 'MS Sans Serif'
            FontCaption.Style = []
            ColorCaption2 = 13553358
            object sbOK: TSpeedButton
              Left = 88
              Top = 79
              Width = 89
              Height = 22
              Caption = 'OK'
              OnClick = sbOKClick
            end
            object sbCancel: TSpeedButton
              Left = 184
              Top = 79
              Width = 89
              Height = 22
              Caption = 'CANCEL'
              OnClick = sbCancelClick
            end
            object motiuD: TMemo
              Left = 8
              Top = 24
              Width = 353
              Height = 49
              MaxLength = 250
              TabOrder = 0
            end
          end
          object pGarant: TPanel
            Left = 530
            Top = 0
            Width = 502
            Height = 274
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 9
            Visible = False
            object Shape2: TShape
              Left = 1
              Top = 54
              Width = 487
              Height = 219
            end
            object Label14: TLabel
              Left = 13
              Top = 58
              Width = 98
              Height = 13
              Caption = 'Dades del garant'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 15
              Top = 111
              Width = 22
              Height = 13
              Caption = 'Nom'
            end
            object Label16: TLabel
              Left = 15
              Top = 220
              Width = 49
              Height = 13
              Caption = 'Document'
            end
            object Label17: TLabel
              Left = 15
              Top = 196
              Width = 34
              Height = 13
              Caption = 'Adre'#231'a'
            end
            object Label18: TLabel
              Left = 15
              Top = 244
              Width = 36
              Height = 13
              Caption = 'Relaci'#243
            end
            object Label19: TLabel
              Left = 76
              Top = 5
              Width = 368
              Height = 33
              Alignment = taCenter
              AutoSize = False
              Caption = 
                'Omplir nom'#233's en cas que el pagador sigui diferent del pacient'#13#10#201 +
                's el mateix per Facturaci'#243' i per Aportaci'#243' pacient.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object HYLabel5: THYLabel
              Left = 69
              Top = 132
              Width = 263
              Height = 19
              DataField = 'Garant_COGNOM1'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel6: THYLabel
              Left = 69
              Top = 154
              Width = 263
              Height = 19
              DataField = 'Garant_COGNOM2'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel7: THYLabel
              Left = 69
              Top = 108
              Width = 263
              Height = 19
              DataField = 'Garant_NOM'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel8: THYLabel
              Left = 69
              Top = 218
              Width = 175
              Height = 19
              DataField = 'Garant_DNI'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel9: THYLabel
              Left = 69
              Top = 194
              Width = 400
              Height = 19
              DataField = 'Garant_ADRESA'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel10: THYLabel
              Left = 69
              Top = 243
              Width = 400
              Height = 19
              DataField = 'Garant_RELACIO'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Button1: TButton
              Left = 324
              Top = 73
              Width = 98
              Height = 25
              Caption = 'Modificar dades'
              TabOrder = 0
              OnClick = bModificarGarantClick
            end
            object HYEdit15: THYEdit
              Left = 8
              Top = 76
              Width = 219
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'N'#250'mero identificador de garant'
              EtiSepara = 150
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 1
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'Id_Garant'
            end
            object Button2: TButton
              Left = 247
              Top = 73
              Width = 77
              Height = 25
              Caption = 'Nou garant'
              TabOrder = 2
              OnClick = bNouGarantClick
            end
          end
        end
        object Panel6: TPanel
          Left = 43
          Top = 122
          Width = 463
          Height = 19
          AutoSize = True
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
          object HYLabel4: THYLabel
            Left = 121
            Top = 0
            Width = 342
            Height = 19
            DataField = 'EstatFac_N_Codi'
            DataSource = dsOrte2
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYEdit13: THYEdit
            Left = 0
            Top = 0
            Width = 111
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Estat Fac.'
            EtiSepara = 60
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 0
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'EstatFac'
          end
        end
      end
      object HYGrid2: THYGrid
        Left = 0
        Top = 0
        Width = 129
        Height = 566
        Align = alLeft
        Color = clWhite
        DataSource = dsOrte2
        DefaultDrawing = False
        FixedColor = clSilver
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'C_Ortesis'
            Width = 107
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Aportaci'#243' pacient'
      ImageIndex = 6
      object Splitter4: TSplitter
        Left = 129
        Top = 0
        Width = 3
        Height = 566
        Cursor = crHSplit
      end
      object HYGrid4: THYGrid
        Left = 0
        Top = 0
        Width = 129
        Height = 566
        Align = alLeft
        Color = clWhite
        DataSource = dsOrte2
        DefaultDrawing = False
        FixedColor = clSilver
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'C_Ortesis'
            Width = 107
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 132
        Top = 0
        Width = 1092
        Height = 566
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 1
        object HYBarra5: THYBarra
          Left = 0
          Top = 0
          Width = 1092
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          Color = clSilver
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsOrte2
          AlInsertar = HYBarra3AlInsertar
          VerConsultar = False
          VerBorrar = False
          VerOrdenar = False
          VerSalir = False
          VerIndices = False
          Titulo = True
          VerPrint = False
          VerRefresh = True
        end
        object AreaPacient: THYArea
          Left = 0
          Top = 25
          Width = 1092
          Height = 541
          Align = alClient
          Color = clWhite
          ParentColor = False
          TabOrder = 1
          DataSource = dsOrte2
          object HYLabel13: THYLabel
            Left = 162
            Top = 73
            Width = 239
            Height = 19
            DataField = 'CentreFac2_N_CentreFac'
            DataSource = dsOrte2
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYLabel14: THYLabel
            Left = 162
            Top = 97
            Width = 239
            Height = 19
            DataField = 'Client2_N_Client'
            DataSource = dsOrte2
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYLabel17: THYLabel
            Left = 162
            Top = 138
            Width = 239
            Height = 19
            DataField = 'Delega2_N_Delegacio'
            DataSource = dsOrte2
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Bevel1: TBevel
            Left = 214
            Top = 264
            Width = 189
            Height = 102
            Shape = bsFrame
          end
          object Label6: TLabel
            Left = 325
            Top = 324
            Width = 32
            Height = 13
            Caption = 'Copies'
          end
          object HYLabel12: THYLabel
            Left = 377
            Top = 15
            Width = 204
            Height = 19
            DataField = 'N_CODI_1'
            DataSource = dsDades
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYCheck2: THYCheck
            Left = 9
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Aportaci'#243' pacient'
            DataField = 'AportacioPacient'
            DataSource = dsOrte2
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object HYEdit26: THYEdit
            Left = 10
            Top = 73
            Width = 135
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'CF aportaci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            OnExit = HYEdit26Exit
            TabOrder = 1
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'C_CentreFac2'
          end
          object HYEdit28: THYEdit
            Left = 10
            Top = 97
            Width = 135
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Client '
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 2
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'C_Client2'
          end
          object HYEdit29: THYEdit
            Left = 10
            Top = 138
            Width = 137
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Delegaci'#243' '
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 3
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'C_Delega2'
          end
          object HYEdit31: THYEdit
            Left = 10
            Top = 187
            Width = 391
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Refer'#232'ncia '
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 4
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'Referencia2'
          end
          object HYEdit32: THYEdit
            Left = 10
            Top = 211
            Width = 231
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Preu aportaci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 5
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'Preu2'
          end
          object Ed_Ortesis2_Data_CobroPacient: THYEdit
            Left = 10
            Top = 237
            Width = 231
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Cobrament '
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 6
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'Data_CobroPacient'
          end
          object Ed_Ortesis2_AlbaraPacient: THYEdit
            Left = 10
            Top = 264
            Width = 192
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Albar'#224' pacient'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 7
            AutoSelect = False
            ReadOnly = True
            DataSource = dsOrte2
            DataField = 'AlbaraPacient'
          end
          object bGenerarAlba: TBitBtn
            Left = 220
            Top = 269
            Width = 176
            Height = 22
            Caption = 'Generar Albar'#224
            TabOrder = 8
            OnClick = bGenerarAlbaClick
            Glyph.Data = {
              D6000000424DD60000000000000076000000280000000C0000000C0000000100
              0400000000006000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              000088888888888800008000000000080000808E8E8E8E08000080E000000808
              0000808E8E8E8E08000080E0000008080000808E8E8E8E080000800000000008
              0000888888888888000088888888888800008888888888880000}
          end
          object bPrevisualitzarAlba: TBitBtn
            Tag = 1
            Left = 220
            Top = 294
            Width = 176
            Height = 22
            Caption = 'Previsualitzar Albar'#224
            TabOrder = 9
            OnClick = bPrevisualitzarAlbaClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
              033333777777777773333330777777703333333773F333773333333330888033
              33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
              FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
              8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
              8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
              8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
              8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
              FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
            NumGlyphs = 2
          end
          object chImprimiralCrear: TCheckBox
            Left = 241
            Top = 346
            Width = 136
            Height = 13
            Caption = 'Imprimir Albar'#224' al  crear'
            Checked = True
            State = cbChecked
            TabOrder = 10
          end
          object bImprimirAlba: TBitBtn
            Tag = 2
            Left = 220
            Top = 319
            Width = 101
            Height = 22
            Caption = 'Imprimir Albar'#224
            TabOrder = 11
            OnClick = bPrevisualitzarAlbaClick
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
          end
          object seCopiasAlba: TSpinEdit
            Left = 362
            Top = 320
            Width = 36
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 12
            Value = 2
          end
          object pGarantDades: TPanel
            Left = 530
            Top = 42
            Width = 502
            Height = 274
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 13
            Visible = False
            object sGarant: TShape
              Left = 1
              Top = 54
              Width = 487
              Height = 219
            end
            object Label8: TLabel
              Left = 13
              Top = 58
              Width = 98
              Height = 13
              Caption = 'Dades del garant'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 15
              Top = 111
              Width = 22
              Height = 13
              Caption = 'Nom'
            end
            object Label10: TLabel
              Left = 15
              Top = 220
              Width = 49
              Height = 13
              Caption = 'Document'
            end
            object Label11: TLabel
              Left = 15
              Top = 196
              Width = 34
              Height = 13
              Caption = 'Adre'#231'a'
            end
            object Label12: TLabel
              Left = 15
              Top = 244
              Width = 36
              Height = 13
              Caption = 'Relaci'#243
            end
            object Eti_OrtesisLin_Garant_COGNOM1: THYLabel
              Left = 69
              Top = 132
              Width = 263
              Height = 19
              DataField = 'Garant_COGNOM1'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Eti_OrtesisLin_Garant_COGNOM2: THYLabel
              Left = 69
              Top = 154
              Width = 263
              Height = 19
              DataField = 'Garant_COGNOM2'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Eti_OrtesisLin_Garant_NOM: THYLabel
              Left = 69
              Top = 108
              Width = 263
              Height = 19
              DataField = 'Garant_NOM'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Eti_OrtesisLin_Garant_DNI: THYLabel
              Left = 69
              Top = 218
              Width = 175
              Height = 19
              DataField = 'Garant_DNI'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Eti_OrtesisLin_Garant_ADRESA: THYLabel
              Left = 69
              Top = 194
              Width = 400
              Height = 19
              DataField = 'Garant_ADRESA'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Eti_OrtesisLin_Garant_RELACIO: THYLabel
              Left = 69
              Top = 243
              Width = 400
              Height = 19
              DataField = 'Garant_RELACIO'
              DataSource = dsOrte2
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Label13: TLabel
              Left = 76
              Top = 5
              Width = 368
              Height = 33
              Alignment = taCenter
              AutoSize = False
              Caption = 
                'Omplir nom'#233's en cas que el pagador sigui diferent del pacient'#13#10#201 +
                's el mateix per Facturaci'#243' i per Aportaci'#243' pacient.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object bModificarGarant: TButton
              Left = 324
              Top = 73
              Width = 98
              Height = 25
              Caption = 'Modificar dades'
              TabOrder = 0
              OnClick = bModificarGarantClick
            end
            object Ed_OrtesisLin_Id_Garant: THYEdit
              Left = 8
              Top = 76
              Width = 219
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'N'#250'mero identificador de garant'
              EtiSepara = 150
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataOrtesis.InterconOrtesisLin
              TabOrder = 1
              AutoSelect = False
              DataSource = dsOrte2
              DataField = 'Id_Garant'
            end
            object bNouGarant: TButton
              Left = 247
              Top = 73
              Width = 77
              Height = 25
              Caption = 'Nou garant'
              TabOrder = 2
              OnClick = bNouGarantClick
            end
          end
          object edIndicadorFarmacia: THYEdit
            Left = 161
            Top = 15
            Width = 211
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Indicador farm'#224'cia'
            EtiSepara = 120
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 14
            AutoSelect = False
            ReadOnly = True
            DataSource = dsDades
            DataField = 'INDICADOR_FARMACIA'
          end
        end
        object Panel5: TPanel
          Left = 12
          Top = 147
          Width = 391
          Height = 19
          AutoSize = True
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
          object HYLabel11: THYLabel
            Left = 152
            Top = 0
            Width = 239
            Height = 19
            DataField = 'EstatFac2_N_Codi'
            DataSource = dsOrte2
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYEdit2: THYEdit
            Left = 0
            Top = 0
            Width = 135
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Estat fact. pacient'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataOrtesis.InterconOrtesisLin
            TabOrder = 0
            AutoSelect = False
            DataSource = dsOrte2
            DataField = 'C_EstatFac2'
          end
        end
      end
    end
    object tReport: TTabSheet
      Caption = 'tReport'
      ImageIndex = 4
      TabVisible = False
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 1224
        Height = 566
        HorzScrollBar.Style = ssFlat
        VertScrollBar.Style = ssFlat
        Align = alClient
        TabOrder = 0
        object QReport: TQuickRep
          Left = 1
          Top = 1
          Width = 794
          Height = 1123
          Cursor = crHandPoint
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = qDades
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Functions.Strings = (
            'PAGENUMBER'
            'COLUMNNUMBER'
            'REPORTTITLE')
          Functions.DATA = (
            '0'
            '0'
            #39#39)
          Options = [FirstPageHeader, LastPageFooter]
          Page.Columns = 1
          Page.Orientation = poPortrait
          Page.PaperSize = A4
          Page.Values = (
            100
            2970
            100
            2100
            100
            100
            0)
          PrinterSettings.Copies = 1
          PrinterSettings.Duplex = False
          PrinterSettings.FirstPage = 0
          PrinterSettings.LastPage = 0
          PrinterSettings.OutputBin = First
          PrintIfEmpty = True
          ReportTitle = ' ORTESIS '
          SnapToGrid = True
          Units = MM
          Zoom = 100
          object TitleBand1: TQRBand
            Left = 38
            Top = 38
            Width = 718
            Height = 112
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              296.333333333333
              1899.70833333333)
            BandType = rbTitle
            object QRSysData1: TQRSysData
              Left = 292
              Top = 4
              Width = 134
              Height = 29
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                76.7291666666667
                772.583333333333
                10.5833333333333
                354.541666666667)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              Color = clWhite
              Data = qrsReportTitle
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -24
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              FontSize = 18
            end
            object QRShape3: TQRShape
              Left = 13
              Top = 76
              Width = 685
              Height = 36
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                94.8090277777778
                33.0729166666667
                200.642361111111
                1812.39583333333)
              Shape = qrsRectangle
            end
            object QRShape2: TQRShape
              Left = 13
              Top = 36
              Width = 685
              Height = 36
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                94.8090277777778
                33.0729166666667
                94.8090277777778
                1812.39583333333)
              Shape = qrsRectangle
            end
            object QRLabel2: TQRLabel
              Left = 16
              Top = 38
              Width = 37
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                42.3333333333333
                100.541666666667
                97.8958333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Ingr'#233's'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText1: TQRDBText
              Left = 19
              Top = 55
              Width = 73
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                50.2708333333333
                145.520833333333
                193.145833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'DATA_INGRES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText2: TQRDBText
              Left = 122
              Top = 55
              Width = 71
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                322.791666666667
                145.520833333333
                187.854166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'C_PRESTACIO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel3: TQRLabel
              Left = 122
              Top = 38
              Width = 53
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                322.791666666667
                100.541666666667
                140.229166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Prestaci'#243
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText4: TQRDBText
              Left = 338
              Top = 55
              Width = 29
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                894.291666666667
                145.520833333333
                76.7291666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'Data1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel4: TQRLabel
              Left = 338
              Top = 38
              Width = 34
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                894.291666666667
                100.541666666667
                89.9583333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Data S'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText5: TQRDBText
              Left = 456
              Top = 55
              Width = 49
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1206.5
                145.520833333333
                129.645833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'C_Metge1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel5: TQRLabel
              Left = 456
              Top = 38
              Width = 46
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1206.5
                100.541666666667
                121.708333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Metge S'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel8: TQRLabel
              Left = 16
              Top = 77
              Width = 43
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                42.3333333333333
                203.729166666667
                113.770833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Hist'#242'ria'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText9: TQRDBText
              Left = 19
              Top = 95
              Width = 61
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                50.2708333333333
                251.354166666667
                161.395833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'C_HISTORIA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel9: TQRLabel
              Left = 88
              Top = 77
              Width = 74
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                232.833333333333
                203.729166666667
                195.791666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Nom complet'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText10: TQRDBText
              Left = 88
              Top = 95
              Width = 71
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                232.833333333333
                251.354166666667
                187.854166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'NOMCOMPLET'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel10: TQRLabel
              Left = 331
              Top = 77
              Width = 32
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                875.770833333333
                203.729166666667
                84.6666666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Unitat'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText11: TQRDBText
              Left = 331
              Top = 95
              Width = 37
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                875.770833333333
                251.354166666667
                97.8958333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'UNITAT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel11: TQRLabel
              Left = 400
              Top = 77
              Width = 34
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1058.33333333333
                203.729166666667
                89.9583333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Planta'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText12: TQRDBText
              Left = 400
              Top = 95
              Width = 55
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1058.33333333333
                251.354166666667
                145.520833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'C_PLANTA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel12: TQRLabel
              Left = 484
              Top = 77
              Width = 18
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1280.58333333333
                203.729166666667
                47.625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Llit'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText13: TQRDBText
              Left = 484
              Top = 95
              Width = 31
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1280.58333333333
                251.354166666667
                82.0208333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'C_LLit'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel14: TQRLabel
              Left = 542
              Top = 77
              Width = 24
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1434.04166666667
                203.729166666667
                63.5)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Edat'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText15: TQRDBText
              Left = 542
              Top = 95
              Width = 28
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1434.04166666667
                251.354166666667
                74.0833333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'EDAT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel15: TQRLabel
              Left = 594
              Top = 77
              Width = 43
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1571.625
                203.729166666667
                113.770833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Tel'#232'fon'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText16: TQRDBText
              Left = 594
              Top = 95
              Width = 54
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1571.625
                251.354166666667
                142.875)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'TELEFONO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel6: TQRLabel
              Left = 216
              Top = 38
              Width = 70
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                571.5
                100.541666666667
                185.208333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Coordinador'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText3: TQRDBText
              Left = 216
              Top = 55
              Width = 90
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                571.5
                145.520833333333
                238.125)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'C_COORDINADOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText6: TQRDBText
              Left = 483
              Top = 55
              Width = 87
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1277.9375
                145.520833333333
                230.1875)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'COGNOM_METGE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel7: TQRLabel
              Left = 596
              Top = 38
              Width = 28
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1576.91666666667
                100.541666666667
                74.0833333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Estat'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText7: TQRDBText
              Left = 596
              Top = 55
              Width = 19
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1576.91666666667
                145.520833333333
                50.2708333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = qDades
              DataField = 'FET'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRSysData2: TQRSysData
              Left = 497
              Top = 8
              Width = 159
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.9791666666667
                1314.97916666667
                21.1666666666667
                420.6875)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              Color = clWhite
              Data = qrsDateTime
              Text = 'Data Impressi'#243':'
              Transparent = True
              FontSize = 10
            end
          end
          object QRSubDetail1: TQRSubDetail
            Left = 38
            Top = 338
            Width = 718
            Height = 306
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              809.625
              1899.70833333333)
            Master = QReport
            DataSet = OrtesisLin
            HeaderBand = QRBand1
            PrintBefore = False
            PrintIfEmpty = False
            object QRLabel1: TQRLabel
              Left = 13
              Top = 2
              Width = 94
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                41.8923611111111
                33.0729166666667
                4.40972222222222
                249.149305555556)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'ELEMENTS'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 9
            end
            object QRShape5: TQRShape
              Left = 13
              Top = 15
              Width = 685
              Height = 291
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                769.9375
                34.3958333333333
                39.6875
                1812.39583333333)
              Shape = qrsRectangle
            end
            object QRDBText53: TQRDBText
              Left = 165
              Top = 174
              Width = 99
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                436.5625
                460.375
                261.9375)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'AportacioPacient'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 9
            end
            object QRLabel20: TQRLabel
              Left = 16
              Top = 16
              Width = 42
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                42.3333333333333
                42.3333333333333
                111.125)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cat'#224'leg'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText21: TQRDBText
              Left = 62
              Top = 17
              Width = 53
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                164.041666666667
                44.9791666666667
                140.229166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'CodiServei'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel21: TQRLabel
              Left = 120
              Top = 16
              Width = 70
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                317.5
                42.3333333333333
                185.208333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Nom Cat'#224'leg'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText22: TQRDBText
              Left = 120
              Top = 18
              Width = 573
              Height = 43
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                113.770833333333
                317.5
                47.625
                1516.0625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'N_Ortesis'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              OnPrint = QRDBText22Print
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel22: TQRLabel
              Left = 28
              Top = 52
              Width = 94
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                41.8923611111111
                72.7604166666667
                136.701388888889
                249.149305555556)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'FACTURACI'#211
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 9
            end
            object QRShape6: TQRShape
              Left = 28
              Top = 64
              Width = 666
              Height = 107
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                283.104166666667
                74.0833333333333
                169.333333333333
                1762.125)
              Shape = qrsRectangle
            end
            object QRLabel23: TQRLabel
              Left = 31
              Top = 66
              Width = 51
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                174.625
                134.9375)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Iva Venta'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText23: TQRDBText
              Left = 144
              Top = 66
              Width = 44
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                174.625
                116.416666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'IvaVenta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel24: TQRLabel
              Left = 31
              Top = 84
              Width = 98
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                222.25
                259.291666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Centre Facturaci'#243
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText24: TQRDBText
              Left = 144
              Top = 84
              Width = 64
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                222.25
                169.333333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'C_CentreFac'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel25: TQRLabel
              Left = 31
              Top = 101
              Width = 33
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                267.229166666667
                87.3125)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Client'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText25: TQRDBText
              Left = 144
              Top = 101
              Width = 40
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                267.229166666667
                105.833333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'C_Client'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel29: TQRLabel
              Left = 31
              Top = 119
              Width = 54
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                314.854166666667
                142.875)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Delegaci'#243
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText26: TQRDBText
              Left = 144
              Top = 119
              Width = 61
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                314.854166666667
                161.395833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'C_Delegacio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel30: TQRLabel
              Left = 209
              Top = 66
              Width = 48
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                552.979166666667
                174.625
                127)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = '% Usuari'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel31: TQRLabel
              Left = 364
              Top = 84
              Width = 27
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                963.083333333333
                222.25
                71.4375)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Preu'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel32: TQRLabel
              Left = 364
              Top = 101
              Width = 76
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                963.083333333333
                267.229166666667
                201.083333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Factura Client'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel37: TQRLabel
              Left = 364
              Top = 119
              Width = 87
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                963.083333333333
                314.854166666667
                230.1875)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Estat Facturacio'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText27: TQRDBText
              Left = 266
              Top = 66
              Width = 94
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                703.791666666667
                174.625
                248.708333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'PercentatgePacient'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText28: TQRDBText
              Left = 480
              Top = 84
              Width = 23
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1270
                222.25
                60.8541666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Preu'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText29: TQRDBText
              Left = 480
              Top = 101
              Width = 58
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1270
                267.229166666667
                153.458333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Data_FacCli'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText30: TQRDBText
              Left = 480
              Top = 119
              Width = 43
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1270
                314.854166666667
                113.770833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'EstatFac'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText33: TQRDBText
              Left = 184
              Top = 84
              Width = 120
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                486.833333333333
                222.25
                317.5)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'CentreFac_N_CentreFac'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText34: TQRDBText
              Left = 184
              Top = 101
              Width = 72
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                486.833333333333
                267.229166666667
                190.5)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Client_N_Client'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText35: TQRDBText
              Left = 184
              Top = 119
              Width = 100
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                486.833333333333
                314.854166666667
                264.583333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Delega_N_Delegacio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel38: TQRLabel
              Left = 364
              Top = 66
              Width = 60
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                963.083333333333
                174.625
                158.75)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Refer'#232'ncia'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText36: TQRDBText
              Left = 480
              Top = 66
              Width = 54
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1270
                174.625
                142.875)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Referencia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText39: TQRDBText
              Left = 520
              Top = 119
              Width = 83
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1375.83333333333
                314.854166666667
                219.604166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'EstatFac_N_Codi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel39: TQRLabel
              Left = 28
              Top = 175
              Width = 140
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                74.0833333333333
                463.020833333333
                370.416666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'APORTACI'#211' PACIENT'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 9
            end
            object QRShape7: TQRShape
              Left = 28
              Top = 189
              Width = 666
              Height = 63
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                166.6875
                74.0833333333333
                500.0625
                1762.125)
              Shape = qrsRectangle
            end
            object QRLabel41: TQRLabel
              Left = 31
              Top = 191
              Width = 98
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                505.354166666667
                259.291666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Centre Facturaci'#243
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText41: TQRDBText
              Left = 144
              Top = 191
              Width = 70
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                505.354166666667
                185.208333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'C_CentreFac2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel42: TQRLabel
              Left = 31
              Top = 205
              Width = 33
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                542.395833333333
                87.3125)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Client'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText42: TQRDBText
              Left = 144
              Top = 205
              Width = 46
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                542.395833333333
                121.708333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'C_Client2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel43: TQRLabel
              Left = 31
              Top = 221
              Width = 54
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                584.729166666667
                142.875)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Delegaci'#243
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText43: TQRDBText
              Left = 144
              Top = 221
              Width = 67
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                584.729166666667
                177.270833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'C_Delegacio2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel45: TQRLabel
              Left = 364
              Top = 221
              Width = 70
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                963.083333333333
                584.729166666667
                185.208333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Preu Pacient'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel47: TQRLabel
              Left = 31
              Top = 235
              Width = 89
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                621.770833333333
                235.479166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Data Cobrament'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText45: TQRDBText
              Left = 480
              Top = 221
              Width = 29
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1270
                584.729166666667
                76.7291666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Preu2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText47: TQRDBText
              Left = 144
              Top = 235
              Width = 93
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                621.770833333333
                246.0625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Data_CobroPacient'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText48: TQRDBText
              Left = 184
              Top = 191
              Width = 126
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                486.833333333333
                505.354166666667
                333.375)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'CentreFac2_N_CentreFac'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText49: TQRDBText
              Left = 184
              Top = 205
              Width = 78
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                486.833333333333
                542.395833333333
                206.375)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Client2_N_Client'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText50: TQRDBText
              Left = 184
              Top = 221
              Width = 106
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                486.833333333333
                584.729166666667
                280.458333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Delega2_N_Delegacio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel48: TQRLabel
              Left = 364
              Top = 205
              Width = 103
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                963.083333333333
                542.395833333333
                272.520833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Refer'#232'ncia Pacient'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText51: TQRDBText
              Left = 480
              Top = 205
              Width = 60
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1270
                542.395833333333
                158.75)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Referencia2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel40: TQRLabel
              Left = 364
              Top = 235
              Width = 95
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                963.083333333333
                621.770833333333
                251.354166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Estat Fac. Pacient'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText40: TQRDBText
              Left = 480
              Top = 235
              Width = 62
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1270
                621.770833333333
                164.041666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'C_EstatFac2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText44: TQRDBText
              Left = 520
              Top = 235
              Width = 89
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1375.83333333333
                621.770833333333
                235.479166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'EstatFac2_N_Codi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel44: TQRLabel
              Left = 28
              Top = 256
              Width = 93
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                74.0833333333333
                677.333333333333
                246.0625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'PROVE'#207'DOR'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 9
            end
            object QRShape8: TQRShape
              Left = 28
              Top = 269
              Width = 666
              Height = 33
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                87.3125
                74.0833333333333
                711.729166666667
                1762.125)
              Shape = qrsRectangle
            end
            object QRLabel46: TQRLabel
              Left = 31
              Top = 270
              Width = 55
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                714.375
                145.520833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Prove'#239'dor'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText52: TQRDBText
              Left = 144
              Top = 270
              Width = 36
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                714.375
                95.25)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'C_Prov'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel49: TQRLabel
              Left = 31
              Top = 285
              Width = 36
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                82.0208333333333
                754.0625
                95.25)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Albar'#224
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText54: TQRDBText
              Left = 144
              Top = 285
              Width = 33
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                381
                754.0625
                87.3125)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Albara'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel50: TQRLabel
              Left = 364
              Top = 270
              Width = 98
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                963.083333333333
                714.375
                259.291666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Factura Prove'#239'dor'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText55: TQRDBText
              Left = 479
              Top = 270
              Width = 69
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1267.35416666667
                714.375
                182.5625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Data_FacProv'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText58: TQRDBText
              Left = 184
              Top = 270
              Width = 64
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                486.833333333333
                714.375
                169.333333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Prov_N_Prov'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel54: TQRLabel
              Left = 364
              Top = 285
              Width = 109
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                963.083333333333
                754.0625
                288.395833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Estat Fac. Prove'#239'dor'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText62: TQRDBText
              Left = 479
              Top = 285
              Width = 65
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1267.35416666667
                754.0625
                171.979166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'EstatFacProv'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText63: TQRDBText
              Left = 519
              Top = 285
              Width = 105
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1373.1875
                754.0625
                277.8125)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'EstatFacProv_N_Codi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel26: TQRLabel
              Left = 31
              Top = 136
              Width = 79
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                82.0208333333333
                359.833333333333
                209.020833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Data Comanda'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText17: TQRDBText
              Left = 34
              Top = 152
              Width = 74
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                89.9583333333333
                402.166666666667
                195.791666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Data_Comanda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel27: TQRLabel
              Left = 144
              Top = 136
              Width = 69
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                381
                359.833333333333
                182.5625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Data Entrega'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText18: TQRDBText
              Left = 146
              Top = 152
              Width = 66
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                386.291666666667
                402.166666666667
                174.625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Data_Entrega'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel28: TQRLabel
              Left = 248
              Top = 136
              Width = 77
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                656.166666666667
                359.833333333333
                203.729166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Observacions'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText31: TQRDBText
              Left = 251
              Top = 152
              Width = 69
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                664.104166666667
                402.166666666667
                182.5625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OrtesisLin
              DataField = 'Observacions'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
          end
          object QRBand1: TQRBand
            Left = 38
            Top = 227
            Width = 718
            Height = 111
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              293.6875
              1899.70833333333)
            BandType = rbGroupHeader
            object QRLabel13: TQRLabel
              Left = 13
              Top = 6
              Width = 148
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                41.8923611111111
                35.2777777777778
                15.4340277777778
                390.260416666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'ORTESIS'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 9
            end
            object QRShape1: TQRShape
              Left = 13
              Top = 18
              Width = 685
              Height = 90
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                238.125
                34.3958333333333
                47.625
                1812.39583333333)
              Shape = qrsRectangle
            end
            object QRLabel16: TQRLabel
              Left = 16
              Top = 22
              Width = 26
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                42.3333333333333
                58.2083333333333
                68.7916666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Codi'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText8: TQRDBText
              Left = 51
              Top = 22
              Width = 38
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                134.9375
                58.2083333333333
                100.541666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = Ortesis1
              DataField = 'C_Grup'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel17: TQRLabel
              Left = 108
              Top = 22
              Width = 26
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                285.75
                58.2083333333333
                68.7916666666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Nom'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText14: TQRDBText
              Left = 16
              Top = 23
              Width = 398
              Height = 81
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                214.3125
                42.3333333333333
                60.8541666666667
                1053.04166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = Ortesis1
              DataField = 'N_Grup'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              OnPrint = QRDBText14Print
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel18: TQRLabel
              Left = 418
              Top = 21
              Width = 55
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1105.95833333333
                55.5625
                145.520833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cap Cl'#237'nic'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRDBText19: TQRDBText
              Left = 420
              Top = 35
              Width = 73
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1111.25
                92.6041666666667
                193.145833333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = Ortesis1
              DataField = 'C_MetgeValida'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRLabel19: TQRLabel
              Left = 579
              Top = 21
              Width = 76
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1531.9375
                55.5625
                201.083333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Data Validaci'#243
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRDBText20: TQRDBText
              Left = 579
              Top = 35
              Width = 59
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1531.9375
                92.6041666666667
                156.104166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = Ortesis1
              DataField = 'Data_Valida'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRLabel33: TQRLabel
              Left = 420
              Top = 52
              Width = 147
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1111.25
                137.583333333333
                388.9375)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'FULL SOL'#183'LICITUD MUTUA'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 9
            end
            object QRShape4: TQRShape
              Left = 419
              Top = 65
              Width = 270
              Height = 36
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                95.25
                1108.60416666667
                171.979166666667
                714.375)
              Shape = qrsRectangle
            end
            object QRLabel34: TQRLabel
              Left = 425
              Top = 67
              Width = 41
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1124.47916666667
                177.270833333333
                108.479166666667)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Impr'#233's'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText32: TQRDBText
              Left = 425
              Top = 85
              Width = 33
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1124.47916666667
                224.895833333333
                87.3125)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = Ortesis1
              DataField = 'Impres'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel35: TQRLabel
              Left = 555
              Top = 67
              Width = 93
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                42.3333333333333
                1468.4375
                177.270833333333
                246.0625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Data Conformitat'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRDBText37: TQRDBText
              Left = 555
              Top = 85
              Width = 84
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1468.4375
                224.895833333333
                222.25)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = Ortesis1
              DataField = 'Data_Conformitat'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 8
            end
            object QRLabel36: TQRLabel
              Left = 482
              Top = 21
              Width = 88
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1275.29166666667
                55.5625
                232.833333333333)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Metge Validaci'#243
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRDBText38: TQRDBText
              Left = 482
              Top = 35
              Width = 66
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.6875
                1275.29166666667
                92.6041666666667
                174.625)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = Ortesis1
              DataField = 'Valida_Metge'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
          end
          object ChildBand2: TQRChildBand
            Left = 38
            Top = 150
            Width = 718
            Height = 77
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            BeforePrint = ChildBand2BeforePrint
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              203.729166666667
              1899.70833333333)
            ParentBand = TitleBand1
            object QRAngledLabel2: TQRAngledLabel
              Left = 21
              Top = 8
              Width = 14
              Height = 58
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                153.458333333333
                55.5625
                21.1666666666667
                37.0416666666667)
              AnchorStyle = asNone
              Angle = 90
              Caption = 'Curs Cl'#237'nic'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              TrueTypeAlert = ttaAbort
            end
            object QRDBRichText2: TQRDBRichText
              Left = 53
              Top = 2
              Width = 644
              Height = 73
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                191.822916666667
                141.111111111111
                4.40972222222222
                1704.35763888889)
              Alignment = taLeftJustify
              AutoStretch = True
              Color = clWindow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              DataField = 'SOLICITA'
              DataSet = qDades
            end
          end
          object ChildBand3: TQRChildBand
            Left = 38
            Top = 644
            Width = 718
            Height = 43
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            BeforePrint = ChildBand3BeforePrint
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              113.770833333333
              1899.70833333333)
            ParentBand = QRSubDetail1
            object QRAngledLabel1: TQRAngledLabel
              Left = 21
              Top = 2
              Width = 14
              Height = 38
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                100.541666666667
                55.5625
                5.29166666666667
                37.0416666666667)
              AnchorStyle = asNone
              Angle = 90
              Caption = 'NOTES'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              TrueTypeAlert = ttaAbort
            end
            object QRDBRichText1: TQRDBRichText
              Left = 60
              Top = 2
              Width = 638
              Height = 38
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                99.21875
                158.75
                4.40972222222222
                1686.71875)
              Alignment = taLeftJustify
              AutoStretch = True
              Color = clWindow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              DataField = 'Notes'
              DataSet = OrtesisLin
            end
          end
        end
      end
    end
  end
  object mgcGarant: THyMoveGroupControl
    Left = 1071
    Top = 455
    Width = 689
    Height = 396
    Caption = 'Dades del garant'
    TabOrder = 3
    Visible = False
    FontCaption.Charset = DEFAULT_CHARSET
    FontCaption.Color = clWhite
    FontCaption.Height = -11
    FontCaption.Name = 'MS Sans Serif'
    FontCaption.Style = []
    object HYArea1: THYArea
      Left = 2
      Top = 44
      Width = 685
      Height = 350
      Align = alClient
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      DataSource = dsGarants
      object Eti_Garants_Pais_N_Pais: THYLabel
        Left = 110
        Top = 211
        Width = 400
        Height = 19
        DataField = 'Pais_N_Pais'
        DataSource = dsGarants
        EtiFontColor = -1
        HyColorNo = False
        EtiSepara = 100
        EtiOrienta = eoNoMostrar
        EtiAlign = taLeftJustify
      end
      object Eti_Garants_TipusDoc_N_Codi: THYLabel
        Left = 406
        Top = 37
        Width = 255
        Height = 19
        DataField = 'TipusDoc_N_Codi'
        DataSource = dsGarants
        EtiFontColor = -1
        HyColorNo = False
        EtiSepara = 100
        EtiOrienta = eoNoMostrar
        EtiAlign = taLeftJustify
      end
      object Ed_Garants_ID_GARANT: THYEdit
        Left = 8
        Top = 5
        Width = 129
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'N'#186' Garant'
        EtiSepara = 60
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        AutoSelect = False
        ReadOnly = True
        DataSource = dsGarants
        DataField = 'ID_GARANT'
      end
      object Ed_Garants_COGNOM1: THYEdit
        Left = 8
        Top = 60
        Width = 263
        Height = 33
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Primer cognom'
        EtiSepara = 14
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 1
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'COGNOM1'
      end
      object Ed_Garants_COGNOM2: THYEdit
        Left = 8
        Top = 96
        Width = 263
        Height = 33
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Segon cognom'
        EtiSepara = 14
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 2
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'COGNOM2'
      end
      object Ed_Garants_NOM: THYEdit
        Left = 8
        Top = 24
        Width = 263
        Height = 33
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Nom'
        EtiSepara = 14
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 0
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'NOM'
      end
      object Ed_Garants_DNI: THYEdit
        Left = 280
        Top = 63
        Width = 175
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'N'#186' document'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 4
        AutoSelect = False
        CharCase = ecUpperCase
        DataSource = dsGarants
        DataField = 'DNI'
      end
      object Ed_Garants_TELEFONO: THYEdit
        Left = 8
        Top = 280
        Width = 288
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Tel'#233'fon'
        EtiSepara = 45
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 11
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'TELEFONO'
      end
      object Ed_Garants_email: THYEdit
        Left = 8
        Top = 303
        Width = 345
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'E-mail'
        EtiSepara = 45
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 12
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'email'
      end
      object Ed_Garants_POBLACIO: THYEdit
        Left = 8
        Top = 164
        Width = 370
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Poblaci'#243
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 6
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'POBLACIO'
      end
      object Ed_Garants_PROVINCIA: THYEdit
        Left = 8
        Top = 188
        Width = 370
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Provincia'
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 8
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'PROVINCIA'
      end
      object Ed_Garants_PAIS: THYEdit
        Left = 8
        Top = 211
        Width = 97
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Pais'
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 9
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'PAIS'
      end
      object Ed_Garants_T_DOC: THYEdit
        Left = 280
        Top = 37
        Width = 120
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Tipus de document'
        EtiSepara = 100
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 3
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'T_DOC'
      end
      object Ed_Garants_CODIGO: THYEdit
        Left = 384
        Top = 164
        Width = 113
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Codi Postal'
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 7
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'CODIGO'
      end
      object Ed_tGarants_ADRESA: THYEdit
        Left = 8
        Top = 141
        Width = 370
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Adre'#231'a'
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 5
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'ADRESA'
      end
      object Ed_tGarants_RELACIO: THYEdit
        Left = 8
        Top = 247
        Width = 370
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Relaci'#243
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Garants
        TabOrder = 10
        AutoSelect = False
        DataSource = dsGarants
        DataField = 'RELACIO'
      end
    end
    object HYBarra4: THYBarra
      Left = 2
      Top = 19
      Width = 685
      Height = 25
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = clSilver
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      DataSource = dsGarants
      AlCancel = HYBarra4AlCancel
      VerBorrar = False
      VerOrdenar = False
      VerIndices = False
      Titulo = False
      VerPrint = False
      VerRefresh = True
    end
  end
  object qDades: THYSqlQuery
    BeforeEdit = PotEditar
    AfterScroll = qDadesAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      'SELECT'
      
        'T.DATA_INGRES, T.C_PRESTACIO, T.C_COORDINADOR, T.C_PLANTA, T.C_L' +
        'LIT,T.C_TRACTAMENT,'
      
        'T.C_HISTORIA, F.NOMCOMPLET, F.TSI, F.UNITAT, U.N_UNITATM, F.EDAT' +
        ', F.TELEFONO, F.POBLACIO, F.ADRESA, F.DNI, F.N_DIAGNOSTICNEUROLO' +
        'GIC, f.sexo,'
      
        'I.DATA1, I.C_METGE1, I.SOLICITA, i.resposta, i.estat, IE.FET || ' +
        'cast(F_StrNull('#39' - '#39' || IE.PENDENT, '#39#39') as varchar(25)) as FET, ' +
        'M.METGE AS NOM_METGE, M.TRACTE AS TRACTE_METGE, M.COGNOM AS COGN' +
        'OM_METGE,'
      
        'M.NMETGERECEPTA,I.C_INTERCON, I.ESTAT_ORTESI,I.D_ORTO_ENVIA, I.D' +
        '_ORTO_ANULA,C.N_CODI,I.D_ORTO_ENVIA, I.ORTO_UPDATED, I.MOTIU_DEN' +
        ', t.id_garant, f.indicador_farmacia, cc.n_codi'
      
        'FROM ((FILIACIO F JOIN TRACTAMENTS T ON F.NUM_HIST = T.C_HISTORI' +
        'A)'
      'JOIN INTERCON I ON T.C_TRACTAMENT = I.C_TRACTAMENT)'
      'JOIN ESTATINTERCON IE ON I.ESTAT = IE.C_ESTAT'
      'JOIN METGES M ON M.CODI = I.C_METGE1'
      
        'left join codicamps c on i.estat_ortesi=c.c_codi and c.tipuscodi' +
        '='#39'ESTAT_ORTESI'#39
      'LEFT JOIN UNITATM U ON F.UNITAT=U.C_UNITATM'
      
        'left join codicampsalfa CC on F.INDICADOR_FARMACIA=CC.c_codi and' +
        ' CC.tipuscodi='#39'RCA.IND_FARMACIA'#39
      'WHERE C_intercon = :C_INTERCON'
      ''
      ' '
      ' ')
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Tractaments
    IndiceActivo = 'InterCon'
    CalcSimple = True
    AutoPost = False
    SqlDic.Strings = (
      'SELECT'
      
        'T.DATA_INGRES, T.C_PRESTACIO, T.C_COORDINADOR, T.C_PLANTA, T.C_L' +
        'LIT,T.C_TRACTAMENT,'
      
        'T.C_HISTORIA, F.NOMCOMPLET, F.TSI, F.UNITAT, U.N_UNITATM, F.EDAT' +
        ', F.TELEFONO, F.POBLACIO, F.ADRESA, F.DNI, F.N_DIAGNOSTICNEUROLO' +
        'GIC, f.sexo,'
      
        'I.DATA1, I.C_METGE1, I.SOLICITA, i.resposta, i.estat, IE.FET || ' +
        'cast(F_StrNull('#39' - '#39' || IE.PENDENT, '#39#39') as varchar(25)) as FET, ' +
        'M.METGE AS NOM_METGE, M.TRACTE AS TRACTE_METGE, M.COGNOM AS COGN' +
        'OM_METGE,'
      
        'M.NMETGERECEPTA,I.C_INTERCON, I.ESTAT_ORTESI,I.D_ORTO_ENVIA, I.D' +
        '_ORTO_ANULA,C.N_CODI,I.D_ORTO_ENVIA, I.ORTO_UPDATED, I.MOTIU_DEN' +
        ', t.id_garant, f.indicador_farmacia, cc.n_codi'
      
        'FROM ((FILIACIO F JOIN TRACTAMENTS T ON F.NUM_HIST = T.C_HISTORI' +
        'A)'
      'JOIN INTERCON I ON T.C_TRACTAMENT = I.C_TRACTAMENT)'
      'JOIN ESTATINTERCON IE ON I.ESTAT = IE.C_ESTAT'
      'JOIN METGES M ON M.CODI = I.C_METGE1'
      
        'left join codicamps c on i.estat_ortesi=c.c_codi and c.tipuscodi' +
        '='#39'ESTAT_ORTESI'#39
      'LEFT JOIN UNITATM U ON F.UNITAT=U.C_UNITATM'
      
        'left join codicampsalfa CC on F.INDICADOR_FARMACIA=CC.c_codi and' +
        ' CC.tipuscodi='#39'RCA.IND_FARMACIA'#39
      'WHERE C_intercon = :C_INTERCON'
      ''
      ' '
      ' ')
    Left = 710
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
        Value = 554
      end>
    object qDadesDATA_INGRES: TDateTimeField
      FieldName = 'DATA_INGRES'
    end
    object qDadesC_PRESTACIO: TStringField
      FieldName = 'C_PRESTACIO'
      Size = 4
    end
    object qDadesC_COORDINADOR: TStringField
      FieldName = 'C_COORDINADOR'
      FixedChar = True
      Size = 5
    end
    object qDadesC_PLANTA: TStringField
      FieldName = 'C_PLANTA'
      Size = 15
    end
    object qDadesC_LLIT: TStringField
      FieldName = 'C_LLIT'
      Size = 3
    end
    object qDadesC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object qDadesNOMCOMPLET: TStringField
      FieldName = 'NOMCOMPLET'
      Size = 80
    end
    object qDadesUNITAT: TSmallintField
      FieldName = 'UNITAT'
    end
    object qDadesEDAT: TIntegerField
      FieldName = 'EDAT'
    end
    object qDadesTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 10
    end
    object qDadesPOBLACIO: TStringField
      FieldName = 'POBLACIO'
      Size = 44
    end
    object qDadesADRESA: TStringField
      FieldName = 'ADRESA'
      Size = 80
    end
    object qDadesDNI: TStringField
      FieldName = 'DNI'
      Size = 9
    end
    object qDadesN_DIAGNOSTICNEUROLOGIC: TStringField
      FieldName = 'N_DIAGNOSTICNEUROLOGIC'
      Size = 40
    end
    object qDadesSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qDadesDATA1: TDateTimeField
      FieldName = 'DATA1'
    end
    object qDadesC_METGE1: TStringField
      FieldName = 'C_METGE1'
      FixedChar = True
      Size = 5
    end
    object qDadesSOLICITA: TMemoField
      FieldName = 'SOLICITA'
      BlobType = ftMemo
      Size = 1
    end
    object qDadesRESPOSTA: TMemoField
      FieldName = 'RESPOSTA'
      BlobType = ftMemo
      Size = 1
    end
    object qDadesESTAT: TIntegerField
      FieldName = 'ESTAT'
    end
    object qDadesFET: TStringField
      FieldName = 'FET'
    end
    object qDadesNOM_METGE: TStringField
      FieldName = 'NOM_METGE'
    end
    object qDadesTRACTE_METGE: TStringField
      FieldName = 'TRACTE_METGE'
      FixedChar = True
      Size = 4
    end
    object qDadesCOGNOM_METGE: TStringField
      FieldName = 'COGNOM_METGE'
      Size = 15
    end
    object qDadesC_INTERCON: TIntegerField
      FieldName = 'C_INTERCON'
    end
    object qDadesESTAT_ORTESI: TSmallintField
      FieldName = 'ESTAT_ORTESI'
    end
    object qDadesD_ORTO_ENVIA: TDateTimeField
      FieldName = 'D_ORTO_ENVIA'
    end
    object qDadesD_ORTO_ANULA: TDateTimeField
      FieldName = 'D_ORTO_ANULA'
    end
    object qDadesN_CODI: TStringField
      FieldName = 'N_CODI'
      Size = 40
    end
    object qDadesD_ORTO_ENVIA_1: TDateTimeField
      FieldName = 'D_ORTO_ENVIA_1'
    end
    object qDadesORTO_UPDATED: TSmallintField
      FieldName = 'ORTO_UPDATED'
    end
    object qDadesMOTIU_DEN: TStringField
      FieldName = 'MOTIU_DEN'
      Size = 250
    end
    object qDadesTSI: TStringField
      FieldName = 'TSI'
      Size = 14
    end
    object qDadesN_UNITATM: TStringField
      FieldName = 'N_UNITATM'
      Size = 30
    end
    object qDadesNMETGERECEPTA: TStringField
      FieldName = 'NMETGERECEPTA'
      Size = 9
    end
    object qDadesC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
    object qDadesID_GARANT: TIntegerField
      FieldName = 'ID_GARANT'
    end
    object qDadesINDICADOR_FARMACIA: TStringField
      FieldName = 'INDICADOR_FARMACIA'
      Size = 15
    end
    object qDadesN_CODI_1: TStringField
      FieldName = 'N_CODI_1'
      Size = 60
    end
  end
  object dsDades: TDataSource
    DataSet = qDades
    Left = 768
    Top = 32
  end
  object Ortesis1: ThySqlTable
    BeforeEdit = PotEditar
    BeforePost = Ortesis1BeforePost
    AfterPost = Ortesis1AfterPost
    AfterCancel = Ortesis1AfterCancel
    AfterScroll = Ortesis1AfterScroll
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataOrtesis.InterconOrtesis
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    New.Active = True
    New.OrderDbField = 'C_Intercon'
    New.OpenFisrt = False
    Left = 710
    Top = 84
    object Ortesis1_C_Intercon: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Interconsulta'
      DisplayWidth = 8
      FieldName = 'C_Intercon'
      DisplayFormat = '#,##0;; '
    end
    object Ortesis1_Indicacions: TMemoField
      Tag = 100
      DisplayLabel = 'Indicacions Rehabilitaci'#243
      DisplayWidth = 1
      FieldName = 'Indicacions'
      BlobType = ftMemo
      Size = 1
    end
    object Ortesis1_Data_Indica: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Indicacions'
      DisplayWidth = 11
      FieldName = 'Data_Indica'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Ortesis1_C_MetgeIndica: TStringField
      Tag = 100
      DisplayLabel = 'Metge Indicacions'
      DisplayWidth = 3
      FieldName = 'C_MetgeIndica'
      Size = 3
    end
    object Ortesis1_FullSolicitud: TMemoField
      Tag = 100
      DisplayLabel = 'Full Sol'#183'licitud'
      DisplayWidth = 1
      FieldName = 'FullSolicitud'
      BlobType = ftMemo
      Size = 1
    end
    object Ortesis1_Impres: TDateTimeField
      Tag = 100
      DisplayWidth = 11
      FieldName = 'Impres'
      DisplayFormat = 'dd"."mmm"."yyyy hh":"mm":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object Ortesis1_Data_Conformitat: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data conformitat'
      DisplayWidth = 11
      FieldName = 'Data_Conformitat'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Ortesis1_N_DiagnosticNeurologic: TStringField
      Tag = 100
      DisplayLabel = 'Diagn'#242'stic'
      DisplayWidth = 40
      FieldName = 'N_DiagnosticNeurologic'
      Size = 40
    end
    object Ortesis1_N_Grup: TStringField
      Tag = 100
      DisplayLabel = 'Grup Ortesis'
      DisplayWidth = 250
      FieldName = 'N_Grup'
      Size = 250
    end
    object Ortesis1_C_Grup: TIntegerField
      Tag = 100
      DisplayLabel = 'Grup'
      DisplayWidth = 3
      FieldName = 'C_Grup'
    end
    object Ortesis1_ControlProces: TStringField
      Tag = 100
      DisplayLabel = 'Control del proc'#233's'
      DisplayWidth = 1
      FieldName = 'ControlProces'
      Size = 1
    end
    object Ortesis1_Estat_PAOS: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Estat_PAOS'
      Size = 1
    end
    object Ortesis1_N_Expedient: TStringField
      Tag = 100
      DisplayLabel = 'N'#250'mero expedient PAOS'
      DisplayWidth = 15
      FieldName = 'N_Expedient'
      Size = 15
    end
    object Ortesis1_SITUACIO_EXP: TStringField
      Tag = 100
      DisplayLabel = 'Situaci'#243' expedient PAOS'
      DisplayWidth = 3
      FieldName = 'SITUACIO_EXP'
      Size = 3
    end
    object Ortesis1_Reposicio: TStringField
      Tag = 100
      DisplayLabel = 'Reposici'#243
      DisplayWidth = 1
      FieldName = 'Reposicio'
      Size = 1
    end
    object Ortesis1_Validacio: TStringField
      Tag = 100
      DisplayLabel = 'Validaci'#243
      DisplayWidth = 1
      FieldName = 'Validacio'
      Size = 1
    end
    object Ortesis1_Presencial: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Presencial'
      Size = 1
    end
    object Ortesis1_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi Grup'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Grup_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Grup'
      Calculated = True
    end
    object Ortesis1_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Grup_N_Grup'
      LookupKeyFields = 'N_Grup'
      KeyFields = 'Grup'
      Size = 250
      Calculated = True
    end
    object Ortesis1_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Grup_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Grup'
      Size = 1
      Calculated = True
    end
    object Ortesis1_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'EstatPAOS_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'EstatPAOS'
      Size = 1
      Calculated = True
    end
    object Ortesis1_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'EstatPAOS_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'EstatPAOS'
      Size = 60
      Calculated = True
    end
    object Ortesis1_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'SituacioPAOS_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'SituacioPAOS'
      Size = 3
      Calculated = True
    end
    object Ortesis1_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'SituacioPAOS_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'SituacioPAOS'
      Size = 60
      Calculated = True
    end
  end
  object dsOrte1: TDataSource
    DataSet = Ortesis1
    Left = 768
    Top = 84
  end
  object OrtesisLin: THYSqlBrowse
    BeforeEdit = PotEditar
    BeforePost = OrtesisLinBeforePost
    AfterPost = OrtesisLinAfterPost
    AfterScroll = OrtesisLinAfterScroll
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM INTERCONORTESISLIN'
      'WHERE C_INTERCON = :C_INTERCON'#13#10
      'ORDER BY INTERCONORTESISLIN.'#39'C_OrtesisLin'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataOrtesis.InterconOrtesisLin
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'C_INTERCON = :C_INTERCON')
    Left = 830
    Top = 84
    ParamData = <
      item
        DataType = ftString
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end>
    object OrtesisLin_C_Intercon: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Interconsulta'
      DisplayWidth = 8
      FieldName = 'C_Intercon'
      DisplayFormat = '#,##0;; '
    end
    object OrtesisLin_C_Ortesis: TStringField
      Tag = 100
      DisplayLabel = 'Codi d'#39'Ortesis'
      DisplayWidth = 5
      FieldName = 'C_Ortesis'
      Size = 5
    end
    object OrtesisLin_Albara: TStringField
      Tag = 100
      DisplayLabel = 'Factura Prove'#239'dor'
      DisplayWidth = 40
      FieldName = 'Albara'
      Size = 40
    end
    object OrtesisLin_C_Prov: TStringField
      Tag = 100
      DisplayLabel = 'Proveedor'
      DisplayWidth = 10
      FieldName = 'C_Prov'
      Size = 10
    end
    object OrtesisLin_Data_FacProv: TDateTimeField
      Tag = 100
      DisplayLabel = 'Factura Prov.'
      DisplayWidth = 11
      FieldName = 'Data_FacProv'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object OrtesisLin_Data_FacCli: TDateTimeField
      Tag = 100
      DisplayLabel = 'Factura Cli.'
      DisplayWidth = 11
      FieldName = 'Data_FacCli'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object OrtesisLin_C_CentreFac: TStringField
      Tag = 100
      DisplayLabel = 'C.F.'
      DisplayWidth = 2
      FieldName = 'C_CentreFac'
      Size = 2
    end
    object OrtesisLin_C_Client: TStringField
      Tag = 100
      DisplayLabel = 'Client'
      DisplayWidth = 3
      FieldName = 'C_Client'
      Size = 3
    end
    object OrtesisLin_C_Delegacio: TStringField
      Tag = 100
      DisplayLabel = 'Delega.'
      DisplayWidth = 4
      FieldName = 'C_Delegacio'
      Size = 4
    end
    object OrtesisLin_PercentatgePacient: TFloatField
      Tag = 100
      DisplayLabel = '% Usuari'
      DisplayWidth = 4
      FieldName = 'PercentatgePacient'
      DisplayFormat = '#,##0.###;; '
    end
    object OrtesisLin_Referencia: TStringField
      Tag = 100
      DisplayLabel = 'Ref'
      DisplayWidth = 40
      FieldName = 'Referencia'
      Size = 40
    end
    object OrtesisLin_EstatFac: TSmallintField
      Tag = 100
      DisplayLabel = 'Estat Fac.'
      DisplayWidth = 3
      FieldName = 'EstatFac'
    end
    object OrtesisLin_EstatFacProv: TSmallintField
      Tag = 100
      DisplayLabel = 'Estat Fac. Prov'
      DisplayWidth = 3
      FieldName = 'EstatFacProv'
    end
    object OrtesisLin_AportacioPacient: TStringField
      Tag = 100
      DisplayLabel = 'Aportacio Pacient'
      DisplayWidth = 1
      FieldName = 'AportacioPacient'
      Size = 1
    end
    object OrtesisLin_C_CentreFac2: TStringField
      Tag = 100
      DisplayLabel = 'C.F. Pacient'
      DisplayWidth = 2
      FieldName = 'C_CentreFac2'
      Size = 2
    end
    object OrtesisLin_C_Client2: TStringField
      Tag = 100
      DisplayLabel = 'Client Pacient'
      DisplayWidth = 3
      FieldName = 'C_Client2'
      Size = 3
    end
    object OrtesisLin_C_Delega2: TStringField
      Tag = 100
      DisplayLabel = 'Delega. Pacient'
      DisplayWidth = 4
      FieldName = 'C_Delega2'
      Size = 4
    end
    object OrtesisLin_C_EstatFac2: TSmallintField
      Tag = 100
      DisplayLabel = 'Estat Fac. Pacient'
      DisplayWidth = 3
      FieldName = 'C_EstatFac2'
    end
    object OrtesisLin_Referencia2: TStringField
      Tag = 100
      DisplayLabel = 'Ref. Pacient'
      DisplayWidth = 40
      FieldName = 'Referencia2'
      Size = 40
    end
    object OrtesisLin_Preu2: TFloatField
      Tag = 100
      DisplayLabel = 'Preu Pacient'
      DisplayWidth = 13
      FieldName = 'Preu2'
      DisplayFormat = '#,##0.###;; '
    end
    object OrtesisLin_IvaVenta: TFloatField
      Tag = 100
      DisplayLabel = 'Iva Venta'
      DisplayWidth = 5
      FieldName = 'IvaVenta'
      DisplayFormat = '#,##0.###" %";; '
    end
    object OrtesisLin_Data_CobroPacient: TDateTimeField
      Tag = 100
      DisplayLabel = 'Cobrament de pacient'
      DisplayWidth = 11
      FieldName = 'Data_CobroPacient'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object OrtesisLin_IvaCompra: TFloatField
      Tag = 100
      DisplayLabel = 'Iva Compra'
      DisplayWidth = 5
      FieldName = 'IvaCompra'
      DisplayFormat = '#,##0.###" %";; '
    end
    object OrtesisLin_PreuVenta: TFloatField
      Tag = 100
      DisplayLabel = 'Preu'
      DisplayWidth = 13
      FieldName = 'PreuVenta'
      DisplayFormat = '#,##0.###;; '
    end
    object OrtesisLin_Observacions: TStringField
      Tag = 100
      DisplayWidth = 30
      FieldName = 'Observacions'
      Size = 30
    end
    object OrtesisLin_Notes: TMemoField
      Tag = 100
      DisplayWidth = 30000
      FieldName = 'Notes'
      BlobType = ftMemo
      Size = 30000
    end
    object OrtesisLin_TeNotes: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'TeNotes'
      Size = 1
    end
    object OrtesisLin_Data_Comanda: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data comanda'
      DisplayWidth = 11
      FieldName = 'Data_Comanda'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object OrtesisLin_PreuCompra: TFloatField
      Tag = 100
      DisplayLabel = 'Preu Compra'
      DisplayWidth = 13
      FieldName = 'PreuCompra'
      DisplayFormat = '#,##0.###;; '
    end
    object OrtesisLin_AlbaraPacient: TStringField
      Tag = 100
      DisplayLabel = 'Albara Pacient'
      DisplayWidth = 20
      FieldName = 'AlbaraPacient'
    end
    object OrtesisLin_Data_PeticioMutua: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Peticio Mutua'
      DisplayWidth = 11
      FieldName = 'Data_PeticioMutua'
      DisplayFormat = 'dd"."mmm"."yyyy" "hh":"mm":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object OrtesisLin_Data_ConformitatMutua: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Conformitat Mutua'
      DisplayWidth = 11
      FieldName = 'Data_ConformitatMutua'
      DisplayFormat = 'dd"."mmm"."yyyy" "hh":"mm":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object OrtesisLin_C_EstatRappel: TStringField
      Tag = 100
      DisplayLabel = 'Estat Rappel'
      DisplayWidth = 15
      FieldName = 'C_EstatRappel'
      Size = 15
    end
    object OrtesisLin_C_OrtesisLin: TIntegerField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 3
      FieldName = 'C_OrtesisLin'
    end
    object OrtesisLin_CodiServei: TStringField
      Tag = 100
      DisplayWidth = 20
      FieldName = 'CodiServei'
    end
    object OrtesisLin_N_Ortesis: TStringField
      Tag = 100
      DisplayLabel = 'Ortesis'
      DisplayWidth = 250
      FieldName = 'N_Ortesis'
      Size = 250
    end
    object OrtesisLin_Data_Liqui: TDateTimeField
      Tag = 100
      DisplayLabel = 'DataLiquidacio'
      DisplayWidth = 11
      FieldName = 'Data_Liqui'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object OrtesisLin_Old_Ortesis: TStringField
      Tag = 100
      DisplayWidth = 5
      FieldName = 'Old_Ortesis'
      Size = 5
    end
    object OrtesisLin_Old_ElementOrtesis: TSmallintField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'Old_ElementOrtesis'
    end
    object OrtesisLin_Data_Conta: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Contabilitzaci'#243
      DisplayWidth = 11
      FieldName = 'Data_Conta'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object OrtesisLin_Antic: TStringField
      Tag = 100
      DisplayLabel = 'Mecanisme Antic Rappels'
      DisplayWidth = 1
      FieldName = 'Antic'
      Size = 1
    end
    object OrtesisLin_Preu_Oferta: TFloatField
      Tag = 100
      DisplayLabel = 'Preu oferta ortop'#232'dia'
      DisplayWidth = 13
      FieldName = 'Preu_Oferta'
      DisplayFormat = '#,##0.###;; '
    end
    object OrtesisLin_Id_Garant: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero identificador de garant'
      DisplayWidth = 8
      FieldName = 'Id_Garant'
      DisplayFormat = '#,##0;; '
    end
    object OrtesisLin_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi Prov.'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Prov_C_Prov'
      LookupKeyFields = 'C_Prov'
      KeyFields = 'Prov'
      Size = 10
      Calculated = True
    end
    object OrtesisLin_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Proveidor'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Prov_N_Prov'
      LookupKeyFields = 'N_Prov'
      KeyFields = 'Prov'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Prov_Telefon'
      LookupKeyFields = 'Telefon'
      KeyFields = 'Prov'
      Size = 15
      Calculated = True
    end
    object OrtesisLin_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Prov_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'Prov'
      Calculated = True
    end
    object OrtesisLin_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Prova Especials'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prov_ProvaEsp'
      LookupKeyFields = 'ProvaEsp'
      KeyFields = 'Prov'
      Size = 1
      Calculated = True
    end
    object OrtesisLin_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Ortesis'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prov_Ortesis'
      LookupKeyFields = 'Ortesis'
      KeyFields = 'Prov'
      Size = 1
      Calculated = True
    end
    object OrtesisLin_C0_6: TSmallintField
      Tag = 101
      DisplayLabel = 'Nacionalidad del Proveedor'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prov_Nacionalidad'
      LookupKeyFields = 'Nacionalidad'
      KeyFields = 'Prov'
      Calculated = True
    end
    object OrtesisLin_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Direcci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Prov_Direccio'
      LookupKeyFields = 'Direccio'
      KeyFields = 'Prov'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'CentreFac_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'CentreFac'
      Size = 2
      Calculated = True
    end
    object OrtesisLin_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CentreFac_N_CentreFac'
      LookupKeyFields = 'N_CentreFac'
      KeyFields = 'CentreFac'
      Calculated = True
    end
    object OrtesisLin_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'EsPrivat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CentreFac_EsPrivat'
      LookupKeyFields = 'EsPrivat'
      KeyFields = 'CentreFac'
      Size = 1
      Calculated = True
    end
    object OrtesisLin_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Client_N_Client'
      LookupKeyFields = 'N_Client'
      KeyFields = 'Client'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Client_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'Client'
      Size = 2
      Calculated = True
    end
    object OrtesisLin_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Client_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'Client'
      Size = 3
      Calculated = True
    end
    object OrtesisLin_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Nif'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Client_NIF'
      LookupKeyFields = 'NIF'
      KeyFields = 'Client'
      Size = 9
      Calculated = True
    end
    object OrtesisLin_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Es Unespa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Client_Es_Unespa'
      LookupKeyFields = 'Es_Unespa'
      KeyFields = 'Client'
      Size = 1
      Calculated = True
    end
    object OrtesisLin_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Codi Unespa'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Client_CodiUnespa'
      LookupKeyFields = 'CodiUnespa'
      KeyFields = 'Client'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Delega_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'Delega'
      Size = 4
      Calculated = True
    end
    object OrtesisLin_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Delegaci'#243
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Delega_N_Delegacio'
      LookupKeyFields = 'N_Delegacio'
      KeyFields = 'Delega'
      Size = 50
      Calculated = True
    end
    object OrtesisLin_C3_2: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Delega_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'Delega'
      Size = 44
      Calculated = True
    end
    object OrtesisLin_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Delega_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'Delega'
      Size = 2
      Calculated = True
    end
    object OrtesisLin_C3_4: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Delega_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'Delega'
      Size = 3
      Calculated = True
    end
    object OrtesisLin_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Responsable'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Delega_Responsable'
      LookupKeyFields = 'Responsable'
      KeyFields = 'Delega'
      Calculated = True
    end
    object OrtesisLin_C3_6: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Delega_Telefono'
      LookupKeyFields = 'Telefono'
      KeyFields = 'Delega'
      Size = 10
      Calculated = True
    end
    object OrtesisLin_C3_7: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Delega_CPostal'
      LookupKeyFields = 'CPostal'
      KeyFields = 'Delega'
      Size = 5
      Calculated = True
    end
    object OrtesisLin_C3_8: TStringField
      Tag = 101
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Delega_Provincia'
      LookupKeyFields = 'Provincia'
      KeyFields = 'Delega'
      Size = 44
      Calculated = True
    end
    object OrtesisLin_C3_9: TStringField
      Tag = 101
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Delega_Pais'
      LookupKeyFields = 'Pais'
      KeyFields = 'Delega'
      Size = 3
      Calculated = True
    end
    object OrtesisLin_C3_10: TStringField
      Tag = 101
      DisplayLabel = 'Fax'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Delega_Fax'
      LookupKeyFields = 'Fax'
      KeyFields = 'Delega'
      Size = 10
      Calculated = True
    end
    object OrtesisLin_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'Nom via'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Delega_NomVia'
      LookupKeyFields = 'NomVia'
      KeyFields = 'Delega'
      Size = 30
      Calculated = True
    end
    object OrtesisLin_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Via'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Delega_TipusVia'
      LookupKeyFields = 'TipusVia'
      KeyFields = 'Delega'
      Size = 4
      Calculated = True
    end
    object OrtesisLin_C3_13: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Delega_PerPacient'
      LookupKeyFields = 'PerPacient'
      KeyFields = 'Delega'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object OrtesisLin_C3_14: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi tipus UP'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Delega_C_TIPUS_UP'
      LookupKeyFields = 'C_TIPUS_UP'
      KeyFields = 'Delega'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object OrtesisLin_C3_15: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' tipus UP'
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Delega_D_TIPUS_UP'
      LookupKeyFields = 'D_TIPUS_UP'
      KeyFields = 'Delega'
      Size = 255
      Calculated = True
    end
    object OrtesisLin_C3_16: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi subtipus UP'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Delega_C_SUBTIPUS_UP'
      LookupKeyFields = 'C_SUBTIPUS_UP'
      KeyFields = 'Delega'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object OrtesisLin_C3_17: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' subtipus UP'
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Delega_D_SUBTIPUS_UP'
      LookupKeyFields = 'D_SUBTIPUS_UP'
      KeyFields = 'Delega'
      Size = 255
      Calculated = True
    end
    object OrtesisLin_C4_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'EstatFac_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'EstatFac'
      Calculated = True
    end
    object OrtesisLin_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'EstatFac_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'EstatFac'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C4_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'EstatFac_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'EstatFac'
      Calculated = True
    end
    object OrtesisLin_C4_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'EstatFac_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'EstatFac'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C4_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'EstatFac_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'EstatFac'
      Size = 10
      Calculated = True
    end
    object OrtesisLin_C4_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'EstatFac_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'EstatFac'
      Calculated = True
    end
    object OrtesisLin_C5_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'EstatFacProv_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'EstatFacProv'
      Calculated = True
    end
    object OrtesisLin_C5_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'EstatFacProv_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'EstatFacProv'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C5_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'EstatFacProv_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'EstatFacProv'
      Calculated = True
    end
    object OrtesisLin_C5_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'EstatFacProv_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'EstatFacProv'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C5_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'EstatFacProv_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'EstatFacProv'
      Size = 10
      Calculated = True
    end
    object OrtesisLin_C5_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'EstatFacProv_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'EstatFacProv'
      Calculated = True
    end
    object OrtesisLin_C6_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'CentreFac2_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'CentreFac2'
      Size = 2
      Calculated = True
    end
    object OrtesisLin_C6_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CentreFac2_N_CentreFac'
      LookupKeyFields = 'N_CentreFac'
      KeyFields = 'CentreFac2'
      Calculated = True
    end
    object OrtesisLin_C6_2: TStringField
      Tag = 101
      DisplayLabel = 'EsPrivat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CentreFac2_EsPrivat'
      LookupKeyFields = 'EsPrivat'
      KeyFields = 'CentreFac2'
      Size = 1
      Calculated = True
    end
    object OrtesisLin_C7_0: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Client2_N_Client'
      LookupKeyFields = 'N_Client'
      KeyFields = 'Client2'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C7_1: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Client2_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'Client2'
      Size = 2
      Calculated = True
    end
    object OrtesisLin_C7_2: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Client2_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'Client2'
      Size = 3
      Calculated = True
    end
    object OrtesisLin_C7_3: TStringField
      Tag = 101
      DisplayLabel = 'Nif'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Client2_NIF'
      LookupKeyFields = 'NIF'
      KeyFields = 'Client2'
      Size = 9
      Calculated = True
    end
    object OrtesisLin_C7_4: TStringField
      Tag = 101
      DisplayLabel = 'Es Unespa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Client2_Es_Unespa'
      LookupKeyFields = 'Es_Unespa'
      KeyFields = 'Client2'
      Size = 1
      Calculated = True
    end
    object OrtesisLin_C7_5: TStringField
      Tag = 101
      DisplayLabel = 'Codi Unespa'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Client2_CodiUnespa'
      LookupKeyFields = 'CodiUnespa'
      KeyFields = 'Client2'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C8_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Delega2_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'Delega2'
      Size = 4
      Calculated = True
    end
    object OrtesisLin_C8_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Delegaci'#243
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Delega2_N_Delegacio'
      LookupKeyFields = 'N_Delegacio'
      KeyFields = 'Delega2'
      Size = 50
      Calculated = True
    end
    object OrtesisLin_C8_2: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Delega2_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'Delega2'
      Size = 44
      Calculated = True
    end
    object OrtesisLin_C8_3: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Delega2_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'Delega2'
      Size = 2
      Calculated = True
    end
    object OrtesisLin_C8_4: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Delega2_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'Delega2'
      Size = 3
      Calculated = True
    end
    object OrtesisLin_C8_5: TStringField
      Tag = 101
      DisplayLabel = 'Responsable'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Delega2_Responsable'
      LookupKeyFields = 'Responsable'
      KeyFields = 'Delega2'
      Calculated = True
    end
    object OrtesisLin_C8_6: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Delega2_Telefono'
      LookupKeyFields = 'Telefono'
      KeyFields = 'Delega2'
      Size = 10
      Calculated = True
    end
    object OrtesisLin_C8_7: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Delega2_CPostal'
      LookupKeyFields = 'CPostal'
      KeyFields = 'Delega2'
      Size = 5
      Calculated = True
    end
    object OrtesisLin_C8_8: TStringField
      Tag = 101
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Delega2_Provincia'
      LookupKeyFields = 'Provincia'
      KeyFields = 'Delega2'
      Size = 44
      Calculated = True
    end
    object OrtesisLin_C8_9: TStringField
      Tag = 101
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Delega2_Pais'
      LookupKeyFields = 'Pais'
      KeyFields = 'Delega2'
      Size = 3
      Calculated = True
    end
    object OrtesisLin_C8_10: TStringField
      Tag = 101
      DisplayLabel = 'Fax'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Delega2_Fax'
      LookupKeyFields = 'Fax'
      KeyFields = 'Delega2'
      Size = 10
      Calculated = True
    end
    object OrtesisLin_C8_11: TStringField
      Tag = 101
      DisplayLabel = 'Nom via'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Delega2_NomVia'
      LookupKeyFields = 'NomVia'
      KeyFields = 'Delega2'
      Size = 30
      Calculated = True
    end
    object OrtesisLin_C8_12: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Via'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Delega2_TipusVia'
      LookupKeyFields = 'TipusVia'
      KeyFields = 'Delega2'
      Size = 4
      Calculated = True
    end
    object OrtesisLin_C8_13: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Delega2_PerPacient'
      LookupKeyFields = 'PerPacient'
      KeyFields = 'Delega2'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object OrtesisLin_C8_14: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi tipus UP'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Delega2_C_TIPUS_UP'
      LookupKeyFields = 'C_TIPUS_UP'
      KeyFields = 'Delega2'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object OrtesisLin_C8_15: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' tipus UP'
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Delega2_D_TIPUS_UP'
      LookupKeyFields = 'D_TIPUS_UP'
      KeyFields = 'Delega2'
      Size = 255
      Calculated = True
    end
    object OrtesisLin_C8_16: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi subtipus UP'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Delega2_C_SUBTIPUS_UP'
      LookupKeyFields = 'C_SUBTIPUS_UP'
      KeyFields = 'Delega2'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object OrtesisLin_C8_17: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' subtipus UP'
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Delega2_D_SUBTIPUS_UP'
      LookupKeyFields = 'D_SUBTIPUS_UP'
      KeyFields = 'Delega2'
      Size = 255
      Calculated = True
    end
    object OrtesisLin_C9_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'EstatFac2_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'EstatFac2'
      Calculated = True
    end
    object OrtesisLin_C9_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'EstatFac2_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'EstatFac2'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C9_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'EstatFac2_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'EstatFac2'
      Calculated = True
    end
    object OrtesisLin_C9_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'EstatFac2_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'EstatFac2'
      Size = 40
      Calculated = True
    end
    object OrtesisLin_C9_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'EstatFac2_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'EstatFac2'
      Size = 10
      Calculated = True
    end
    object OrtesisLin_C9_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'EstatFac2_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'EstatFac2'
      Calculated = True
    end
    object OrtesisLin_C10_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi d'#39'Ortesis'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Ortesis_C_Ortesis'
      LookupKeyFields = 'C_Ortesis'
      KeyFields = 'Ortesis'
      Size = 5
      Calculated = True
    end
    object OrtesisLin_C10_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Ortesis_N_Ortesis'
      LookupKeyFields = 'N_Ortesis'
      KeyFields = 'Ortesis'
      Size = 250
      Calculated = True
    end
    object OrtesisLin_C10_2: TStringField
      Tag = 101
      DisplayLabel = 'Codi Servei'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Ortesis_CodiServei'
      LookupKeyFields = 'CodiServei'
      KeyFields = 'Ortesis'
      Calculated = True
    end
    object OrtesisLin_C10_3: TStringField
      Tag = 101
      DisplayLabel = 'Codi de Fam'#237'lia'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Ortesis_C_Familia'
      LookupKeyFields = 'C_Familia'
      KeyFields = 'Ortesis'
      Size = 3
      Calculated = True
    end
    object OrtesisLin_C10_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Ortesis_TipusOrtesis'
      LookupKeyFields = 'TipusOrtesis'
      KeyFields = 'Ortesis'
      Calculated = True
    end
    object OrtesisLin_C10_5: TFloatField
      Tag = 101
      DisplayLabel = 'Preu Maxim Servei'
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'Ortesis_PreuMaximServei'
      LookupKeyFields = 'PreuMaximServei'
      KeyFields = 'Ortesis'
      DisplayFormat = '#,##0.###;; '
      Calculated = True
    end
    object OrtesisLin_C10_6: TFloatField
      Tag = 101
      DisplayLabel = 'Aportacio Pacient'
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'Ortesis_AportacioServei'
      LookupKeyFields = 'AportacioServei'
      KeyFields = 'Ortesis'
      DisplayFormat = '#,##0.###;; '
      Calculated = True
    end
    object OrtesisLin_C11_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'EstatRappel_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'EstatRappel'
      Size = 15
      Calculated = True
    end
    object OrtesisLin_C11_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'EstatRappel_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'EstatRappel'
      Size = 60
      Calculated = True
    end
    object OrtesisLin_C11_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'EstatRappel_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'EstatRappel'
      Size = 60
      Calculated = True
    end
    object OrtesisLin_C11_3: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'EstatRappel_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'EstatRappel'
      Size = 10
      Calculated = True
    end
    object OrtesisLin_C12_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Garant'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Garant_ID_GARANT'
      LookupKeyFields = 'ID_GARANT'
      KeyFields = 'Garant'
      Calculated = True
    end
    object OrtesisLin_C12_1: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Garant_COGNOM1'
      LookupKeyFields = 'COGNOM1'
      KeyFields = 'Garant'
      Calculated = True
    end
    object OrtesisLin_C12_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Garant_COGNOM2'
      LookupKeyFields = 'COGNOM2'
      KeyFields = 'Garant'
      Calculated = True
    end
    object OrtesisLin_C12_3: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Garant_NOM'
      LookupKeyFields = 'NOM'
      KeyFields = 'Garant'
      Calculated = True
    end
    object OrtesisLin_C12_4: TStringField
      Tag = 101
      DisplayLabel = 'Tipus de document'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Garant_T_DOC'
      LookupKeyFields = 'T_DOC'
      KeyFields = 'Garant'
      Size = 1
      Calculated = True
    end
    object OrtesisLin_C12_5: TStringField
      Tag = 101
      DisplayLabel = 'Dni'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Garant_DNI'
      LookupKeyFields = 'DNI'
      KeyFields = 'Garant'
      Size = 9
      Calculated = True
    end
    object OrtesisLin_C12_6: TStringField
      Tag = 101
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'Garant_ADRESA'
      LookupKeyFields = 'ADRESA'
      KeyFields = 'Garant'
      Size = 80
      Calculated = True
    end
    object OrtesisLin_C12_7: TStringField
      Tag = 101
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Garant_CODIGO'
      LookupKeyFields = 'CODIGO'
      KeyFields = 'Garant'
      Size = 5
      Calculated = True
    end
    object OrtesisLin_C12_8: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Garant_POBLACIO'
      LookupKeyFields = 'POBLACIO'
      KeyFields = 'Garant'
      Size = 44
      Calculated = True
    end
    object OrtesisLin_C12_9: TStringField
      Tag = 101
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Garant_PROVINCIA'
      LookupKeyFields = 'PROVINCIA'
      KeyFields = 'Garant'
      Size = 44
      Calculated = True
    end
    object OrtesisLin_C12_10: TStringField
      Tag = 101
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Garant_PAIS'
      LookupKeyFields = 'PAIS'
      KeyFields = 'Garant'
      Size = 3
      Calculated = True
    end
    object OrtesisLin_C12_11: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Garant_TELEFONO'
      LookupKeyFields = 'TELEFONO'
      KeyFields = 'Garant'
      Size = 30
      Calculated = True
    end
    object OrtesisLin_C12_12: TStringField
      Tag = 101
      DisplayLabel = 'Email'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'Garant_email'
      LookupKeyFields = 'email'
      KeyFields = 'Garant'
      Size = 60
      Calculated = True
    end
    object OrtesisLin_C12_13: TStringField
      Tag = 101
      DisplayLabel = 'Relaci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Garant_RELACIO'
      LookupKeyFields = 'RELACIO'
      KeyFields = 'Garant'
      Size = 40
      Calculated = True
    end
  end
  object dsOrte2: TDataSource
    DataSet = OrtesisLin
    Left = 888
    Top = 84
  end
  object qFacParams: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'SELECT * FROM P_CENTREFAC_PARAMS (:C_CentreFac, :C_Client, :C_De' +
        'legacio, :C_Historia) '
      ' ')
    Left = 631
    Top = 390
    ParamData = <
      item
        DataType = ftString
        Name = 'C_CentreFac'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_Client'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_Delegacio'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'C_Historia'
        ParamType = ptUnknown
      end>
  end
  object qAnula: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'UPDATE INTERCON SET'
      'ESTAT = 80,'
      'RESPOSTA = :RESPOSTA'
      'WHERE C_INTERCON = :C_INTERCON')
    Left = 498
    Top = 390
    ParamData = <
      item
        DataType = ftMemo
        Name = 'RESPOSTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end>
  end
  object cAporta: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'SELECT I.C_INTERCON, I.C_HISTORIA, I.C_TRACTAMENT, T.C_PRESTACIO' +
        ', CO.N_Ortesis, CO.N_Ortesis2, A.C_Ortesis, A.C_OrtesisLin, A.C_' +
        'CentreFac2, A.C_Client2, A.C_Delega2, A.C_EstatFac2, A.Referenci' +
        'a2, A.Preu2'
      
        'FROM (((InterConOrtesisLin A JOIN INTERCONORTESIS B ON A.C_INTER' +
        'CON = B.C_INTERCON)'
      
        '                          JOIN INTERCON    I ON A.C_INTERCON   =' +
        ' I.C_INTERCON)'
      
        '                          JOIN TRACTAMENTS T ON T.C_TRACTAMENT =' +
        ' I.C_TRACTAMENT)'
      
        '                          JOIN CODIORTESIS CO ON CO.C_ORTESIS = ' +
        'A.C_ORTESIS'
      'WHERE T.C_HISTORIA = %s'
      '  AND A.Data_CobroPacient IS NULL'
      '  AND (A.AlbaraPacient IS NULL  OR A.AlbaraPacient = '#39#39')'
      '  AND A.AportacioPacient = "S"'
      '  AND (A.C_CentreFac2 = "%s")'
      '  %s  /* CLLIENT */'
      '  %s  /* DELEGACIO */'
      ' '
      '[AND FILTRO] '
      '[ORDEN]'
      ' '
      ' '
      ' ')
    SqlDicTotal.Strings = (
      'SELECT count(*) as Num_Aporta,  sum(A.Preu2) as Total_Aporta'
      
        'FROM ((InterConOrtesisLin A JOIN INTERCONORTESIS B ON A.C_INTERC' +
        'ON = B.C_INTERCON )'
      
        '                          JOIN INTERCON    I ON A.C_INTERCON   =' +
        ' I.C_INTERCON)'
      
        '                          JOIN TRACTAMENTS T ON T.C_TRACTAMENT =' +
        ' I.C_TRACTAMENT'
      'WHERE T.C_HISTORIA = %s'
      '  AND A.Data_CobroPacient IS NULL'
      '  AND A.AlbaraPacient IS NULL'
      '  AND A.AportacioPacient = "S"'
      '  AND (A.C_CentreFac2 = "%s")'
      '  %s  /* CLLIENT */'
      '  %s  /* DELEGACIO */'
      ' '
      '[AND FILTRO] '
      ' ')
    Dicionario1 = wDataOrtesis.InterconOrtesisLin
    Titulo = 'Llistat d'#39'aportacions del Pacient (%s)'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = True
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSeleccionar = True
    CamposOculta.Strings = (
      'C_OrtesisLin'
      'C_Intercon'
      '')
    AlSeleccionar = cAportaAlSeleccionar
    Left = 684
    Top = 521
  end
  object mtAporta: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 732
    Top = 521
    object mtAportaAlbaraPacient: TStringField
      Tag = 100
      DisplayLabel = 'Albara Pacient'
      DisplayWidth = 20
      FieldName = 'AlbaraPacient'
    end
    object mtAportaPreu2: TFloatField
      Tag = 100
      DisplayLabel = 'Preu Pacient'
      DisplayWidth = 13
      FieldName = 'Preu2'
      DisplayFormat = '#,##0.###;; '
    end
    object mtAportaC_CentreFac2: TStringField
      Tag = 100
      DisplayLabel = 'C.F. Pacient'
      DisplayWidth = 2
      FieldName = 'C_CentreFac2'
      Size = 2
    end
    object mtAportaREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      Size = 40
    end
    object mtAportaN_Ortesis3: TStringField
      Tag = 100
      DisplayLabel = 'Nom Ortesis'
      DisplayWidth = 250
      FieldName = 'N_Ortesis'
      Size = 250
    end
    object mtAportaN_Ortesis2: TStringField
      Tag = 100
      DisplayLabel = 'Nom Ortesis'
      DisplayWidth = 250
      FieldName = 'N_Ortesis2'
      Size = 250
    end
    object mtAportaC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object mtAportaC_OrtesisLin: TIntegerField
      FieldName = 'C_OrtesisLin'
    end
  end
  object qBuscaAlba: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'SELECT A.AlbaraPacient, I.C_INTERCON, I.C_HISTORIA, I.C_TRACTAME' +
        'NT, T.C_PRESTACIO, CO.N_Ortesis, CO.N_Ortesis2, A.C_Ortesis, A.C' +
        '_OrtesisLin, A.C_CentreFac2, A.C_Client2, A.C_Delega2, A.C_Estat' +
        'Fac2, A.Referencia2, A.Preu2'
      
        'FROM (((InterConOrtesisLin A JOIN INTERCONORTESIS B ON A.C_INTER' +
        'CON = B.C_INTERCON )'
      
        '                          JOIN INTERCON    I ON A.C_INTERCON   =' +
        ' I.C_INTERCON)'
      
        '                          JOIN TRACTAMENTS T ON T.C_TRACTAMENT =' +
        ' I.C_TRACTAMENT'
      
        '                          JOIN CODIORTESIS CO ON CO.C_ORTESIS = ' +
        'A.C_ORTESIS)'
      ''
      'WHERE A.AlbaraPacient = :Alba')
    Left = 794
    Top = 521
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Alba'
        ParamType = ptUnknown
      end>
    object qBuscaAlbaALBARAPACIENT: TStringField
      FieldName = 'ALBARAPACIENT'
    end
    object qBuscaAlbaN_Ortesis: TStringField
      FieldName = 'N_Ortesis'
      Size = 250
    end
    object qBuscaAlbaPREU2: TFloatField
      FieldName = 'PREU2'
    end
    object qBuscaAlbaC_CENTREFAC2: TStringField
      FieldName = 'C_CENTREFAC2'
      Size = 2
    end
    object qBuscaAlbaC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object qBuscaAlbaREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      Size = 40
    end
    object qBuscaAlbaN_ORTESIS2: TStringField
      FieldName = 'N_ORTESIS2'
      Size = 250
    end
  end
  object cFullSolicitud: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select I.C_INTERCON, I.C_HISTORIA, I.C_TRACTAMENT, F.N_DIAGNOSTI' +
        'CNEUROLOGIC, T.C_PRESTACIO,  A.N_ORTESIS,  A.C_Ortesis, A.C_Orte' +
        'sisLin, A.C_CentreFac, A.C_Client, A.C_Delegacio, A.EstatFac, A.' +
        'Referencia, A.PreuCompra, C.CODISERVEI'
      'from INTERCONORTESISLIN A '
      'join INTERCONORTESIS     B on A.C_INTERCON = B.C_INTERCON '
      
        'join INTERCON                     I on A.C_INTERCON = I.C_INTERC' +
        'ON'
      'join TRACTAMENTS            T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      
        'join FILIACIO                         F on F.NUM_HIST = I.C_HIST' +
        'ORIA'
      'left outer join CODIORTESIS C on A.C_Ortesis = C.C_ORTESIS'
      'where T.C_HISTORIA = %s'
      '  and ((A.ESTATFAC < 50) OR (A.ESTATFAC = 54))'
      '  and   A.Data_PeticioMutua is Null'
      '  and   I.ESTAT in (10, 11, 213)'
      '  and   A.C_CentreFac = "%s"'
      '  %s  /* CLLIENT */'
      '  %s  /* DELEGACIO */'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataOrtesis.InterconOrtesisLin
    Titulo = 'Llistat d'#39'ortesis pendents m'#250'tua'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = True
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSeleccionar = True
    CamposOculta.Strings = (
      'C_OrtesisLin'
      'C_Intercon'
      'SOLICITA'
      'CODISERVEI')
    AlSeleccionar = cFullSolicitudAlSeleccionar
    Left = 608
    Top = 481
  end
  object mtFull: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 554
    Top = 481
    object mtFullC_Intercon: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Interconsulta'
      DisplayWidth = 8
      FieldName = 'C_Intercon'
      DisplayFormat = '#,##0;; '
    end
    object mtFullC_OrtesisLin: TIntegerField
      Tag = 100
      DisplayLabel = 'Codi Element'
      DisplayWidth = 3
      FieldName = 'C_OrtesisLin'
    end
    object mtFullC_Ortesis: TStringField
      Tag = 100
      DisplayLabel = 'Codi d'#39'Ortesis'
      DisplayWidth = 5
      FieldName = 'C_Ortesis'
      Size = 5
    end
    object StringField2: TStringField
      Tag = 100
      DisplayLabel = 'Nom Cat'#224'leg Ortesis'
      DisplayWidth = 254
      FieldName = 'N_Ortesis'
      Size = 254
    end
    object mtFullSOLICITA: TMemoField
      FieldName = 'SOLICITA'
      BlobType = ftMemo
      Size = 1
    end
    object mtFullPreu: TCurrencyField
      FieldName = 'Preu'
    end
    object mtFullCodiServei: TStringField
      FieldName = 'CodiServei'
    end
  end
  object cOrtesis: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT C_ORTESIS, N_ORTESIS, CODISERVEI'
      'FROM CODIORTESIS'
      'WHERE ACTIU = "S"'
      '[AND FILTRO]'
      '[ORDEN]'
      ' ')
    Dicionario1 = wDataOrtesis.InterconOrtesis
    Titulo = 'Insertar Ortesis'
    Orden.Strings = (
      'Ortesis')
    OrdenDB.Strings = (
      'N_ORTESIS')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cOrtesisAlSeleccionar
    Left = 432
    Top = 481
  end
  object qDadesTract: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'SELECT C_CENTREFAC, C_CLIENT, C_DELEGACIO, PercentatgePacient, R' +
        'eferencia'
      'FROM TRACTAMENTS '
      'WHERE C_TRACTAMENT =  %s')
    Left = 704
    Top = 390
  end
  object qAnulaIntercon: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'UPDATE INTERCON SET '
      'ESTAT = :ESTAT'
      'WHERE C_INTERCON = :C_INTERCON')
    Left = 432
    Top = 390
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ESTAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end>
  end
  object cOrtesis2: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'SELECT C_ORTESIS, N_ORTESIS, CODISERVEI, AportacioServei, C_Fami' +
        'lia'
      'FROM CODIORTESIS'
      'WHERE ACTIU = "S"'
      '/*FILTRE PREU APORTACIO*/ '
      '[AND FILTRO]'
      '[ORDEN]'
      ' '
      ' ')
    Dicionario1 = wDataOrtesis.InterconOrtesisLin
    Titulo = 'Insertar Ortesis'
    Orden.Strings = (
      'Ortesis')
    OrdenDB.Strings = (
      'N_ORTESIS')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    CamposOculta.Strings = (
      'C_Familia')
    AlSeleccionar = cOrtesis2AlSeleccionar
    Left = 496
    Top = 481
  end
  object qSolicita: TQuery
    DatabaseName = 'Interna'
    Left = 553
    Top = 390
  end
  object dsOrteReg: TDataSource
    DataSet = OrtesisReg
    Left = 1024
    Top = 84
  end
  object OrtesisReg: THYSqlBrowse
    BeforeEdit = PotEditar
    AfterPost = OrtesisRegAfterPost
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataOrtesis.InterconOrtesisReg
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    ReadOnly = True
    Filtro.Strings = (
      'c_intercon = :c_intercon')
    Left = 960
    Top = 84
    object OrtesisReg_C_Intercon: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'm. interconsulta'
      DisplayWidth = 8
      FieldName = 'C_Intercon'
      DisplayFormat = '#,##0;; '
    end
    object OrtesisReg_Ordre: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Ordre'
      DisplayFormat = '#,##0;; '
    end
    object OrtesisReg_Tipus: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus registre'
      DisplayWidth = 2
      FieldName = 'Tipus'
    end
    object OrtesisReg_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object OrtesisReg_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object OrtesisReg_Text: TMemoField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Text'
      BlobType = ftMemo
      Size = 1
    end
    object OrtesisReg_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipusreg_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'tipusreg'
      Calculated = True
    end
    object OrtesisReg_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tipusreg_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'tipusreg'
      Size = 40
      Calculated = True
    end
    object OrtesisReg_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Usuari_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'Usuari'
      Size = 5
      Calculated = True
    end
    object OrtesisReg_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Usuari_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Usuari'
      Calculated = True
    end
    object OrtesisReg_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Usuari_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'Usuari'
      Size = 15
      Calculated = True
    end
    object OrtesisReg_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Usuari_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'Usuari'
      Size = 4
      Calculated = True
    end
    object OrtesisReg_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Usuari_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Usuari'
      Size = 2
      Calculated = True
    end
    object OrtesisReg_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Usuari_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'Usuari'
      Size = 2
      Calculated = True
    end
    object OrtesisReg_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Usuari_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Usuari'
      Size = 1
      Calculated = True
    end
    object OrtesisReg_C1_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Usuari_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Usuari'
      Calculated = True
    end
    object OrtesisReg_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Usuari_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'Usuari'
      Size = 1
      Calculated = True
    end
    object OrtesisReg_C1_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Usuari_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'Usuari'
      Size = 40
      Calculated = True
    end
  end
  object qOrteReg: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'INSERT INTO INTERCONORTESISREG (C_INTERCON,ORDRE,TIPUS,C_USUARI,' +
        'DATA,TEXT)'
      'VALUES(:C_INTERCON,:ORDRE,:TIPUS,:C_USUARI,:DATA,:TEXT)')
    Left = 768
    Top = 390
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ORDRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'TIPUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_USUARI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftBlob
        Name = 'TEXT'
        ParamType = ptUnknown
      end>
  end
  object qInsInterconOrtesisReg: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into INTERCONORTESISREG'
      '(C_INTERCON, ORDRE, TIPUS, DATA)'
      'values'
      '(:c_intercon, :ordre, :tipus, :data)')
    Left = 792
    Top = 579
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_intercon'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ordre'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'tipus'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptInput
      end>
  end
  object qDiags: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select d.n_diagnostic, c.n_icd from diagnostics d'
      
        'left join codiicd c on d.c_diagnostic=c.c_icd and d.versiocim=c.' +
        'versiocim'
      'where d.tipus='#39'A'#39' and d.classecmb='#39'D'#39
      'and d.c_tractament=:tractament'
      'order by d.ordrecmb rows 1')
    Left = 840
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tractament'
        ParamType = ptUnknown
      end>
  end
  object tGarants: ThySqlTable
    AfterInsert = tGarantsAfterInsert
    BeforePost = tGarantsBeforePost
    AfterPost = tGarantsAfterPost
    DatabaseName = 'Interna'
    RequestLive = True
    UniDirectional = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.Garants
    IndiceActivo = 'Tractament'
    CalcSimple = False
    AlConsultarCampoFiltro2 = tGarantsAlConsultarCampoFiltro2
    AutoPost = False
    New.Active = True
    New.IndexAsc = 'garant'
    New.OrderDbField = 'id_garant'
    Left = 912
    Top = 32
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Delegacio_Carrer'
      Size = 100
      Calculated = True
    end
    object tGarants_ID_GARANT: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Garant'
      DisplayWidth = 8
      FieldName = 'ID_GARANT'
    end
    object tGarants_COGNOM1: TStringField
      Tag = 100
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldName = 'COGNOM1'
    end
    object tGarants_COGNOM2: TStringField
      Tag = 100
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldName = 'COGNOM2'
    end
    object tGarants_NOM: TStringField
      Tag = 100
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldName = 'NOM'
    end
    object tGarants_DNI: TStringField
      Tag = 100
      DisplayLabel = 'Dni'
      DisplayWidth = 9
      FieldName = 'DNI'
      Size = 9
    end
    object tGarants_ADRESA: TStringField
      Tag = 100
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 80
      FieldName = 'ADRESA'
      Size = 80
    end
    object tGarants_TELEFONO: TStringField
      Tag = 100
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 30
      FieldName = 'TELEFONO'
      Size = 30
    end
    object tGarants_email: TStringField
      Tag = 100
      DisplayLabel = 'Email'
      DisplayWidth = 60
      FieldName = 'email'
      Size = 60
    end
    object tGarants_CODIGO: TStringField
      Tag = 100
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Size = 5
    end
    object tGarants_POBLACIO: TStringField
      Tag = 100
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldName = 'POBLACIO'
      Size = 44
    end
    object tGarants_PROVINCIA: TStringField
      Tag = 100
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldName = 'PROVINCIA'
      Size = 44
    end
    object tGarants_PAIS: TStringField
      Tag = 100
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldName = 'PAIS'
      Size = 3
    end
    object tGarants_T_DOC: TStringField
      Tag = 100
      DisplayLabel = 'Tipus de document'
      DisplayWidth = 1
      FieldName = 'T_DOC'
      Size = 1
    end
    object tGarants_RELACIO: TStringField
      Tag = 100
      DisplayLabel = 'Relaci'#243
      DisplayWidth = 40
      FieldName = 'RELACIO'
      Size = 40
    end
    object tGarants_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi Pa'#237's'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Pais_C_Pais'
      LookupKeyFields = 'C_Pais'
      KeyFields = 'Pais'
      Size = 3
      Calculated = True
    end
    object tGarants_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Pa'#237's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Pais_N_Pais'
      LookupKeyFields = 'N_Pais'
      KeyFields = 'Pais'
      Size = 40
      Calculated = True
    end
    object tGarants_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Codi SCS'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Pais_c_iso'
      LookupKeyFields = 'c_iso'
      KeyFields = 'Pais'
      Size = 3
      Calculated = True
    end
    object tGarants_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'CP_CPostal'
      LookupKeyFields = 'CPostal'
      KeyFields = 'CP'
      Size = 5
      Calculated = True
    end
    object tGarants_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Prov'#237'ncia'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'CP_C_Provincia'
      LookupKeyFields = 'C_Provincia'
      KeyFields = 'CP'
      Size = 2
      Calculated = True
    end
    object tGarants_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Residencia'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'CP_C_Residencia'
      LookupKeyFields = 'C_Residencia'
      KeyFields = 'CP'
      Size = 7
      Calculated = True
    end
    object tGarants_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'CP_N_Poblacio'
      LookupKeyFields = 'N_Poblacio'
      KeyFields = 'CP'
      Size = 44
      Calculated = True
    end
    object tGarants_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'poblacio_CPostal'
      LookupKeyFields = 'CPostal'
      KeyFields = 'poblacio'
      Size = 5
      Calculated = True
    end
    object tGarants_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Prov'#237'ncia'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'poblacio_C_Provincia'
      LookupKeyFields = 'C_Provincia'
      KeyFields = 'poblacio'
      Size = 2
      Calculated = True
    end
    object tGarants_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Residencia'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'poblacio_C_Residencia'
      LookupKeyFields = 'C_Residencia'
      KeyFields = 'poblacio'
      Size = 7
      Calculated = True
    end
    object tGarants_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'poblacio_N_Poblacio'
      LookupKeyFields = 'N_Poblacio'
      KeyFields = 'poblacio'
      Size = 44
      Calculated = True
    end
    object tGarants_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi Prov'#237'ncia'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Provincia_C_Provincia'
      LookupKeyFields = 'C_Provincia'
      KeyFields = 'Provincia'
      Size = 2
      Calculated = True
    end
    object tGarants_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Prov'#237'ncia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Provincia_N_Provincia'
      LookupKeyFields = 'N_Provincia'
      KeyFields = 'Provincia'
      Size = 44
      Calculated = True
    end
    object tGarants_C4_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'TipusDoc_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TipusDoc'
      Size = 1
      Calculated = True
    end
    object tGarants_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'TipusDoc_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'TipusDoc'
      Size = 60
      Calculated = True
    end
  end
  object dsGarants: TDataSource
    DataSet = tGarants
    Left = 968
    Top = 32
  end
  object cPoblacionsG: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT P.N_POBLACIO, P.CPOSTAL, V.N_PROVINCIA, P.C_RESIDENCIA'
      
        'FROM POBLACIO P JOIN PROVINCIA V ON P.C_PROVINCIA = V.C_PROVINCI' +
        'A'
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataCodis.Poblacio
    Orden.Strings = (
      'Provincia'
      'Poblacio'
      'Codi Postal')
    OrdenDB.Strings = (
      'C_Provincia'
      'N_Poblacio'
      'CPostal')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cPoblacionsGAlSeleccionar
    Left = 1072
    Top = 32
  end
end
