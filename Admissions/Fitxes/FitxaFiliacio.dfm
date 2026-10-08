object wFitxaFiliacio: TwFitxaFiliacio
  Left = 438
  Top = 116
  Width = 1421
  Height = 860
  Caption = 'Filiaci'#243
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
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 640
    Top = 474
    Width = 129
    Height = 13
    Caption = #201's centre de salut cerebral:'
  end
  object JvDBFotografia: TJvDBImage
    Left = 16
    Top = 106
    Width = 151
    Height = 193
    Hint = 'Bot'#243' dret per esborrar'
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataField = 'FOTO'
    DataSource = dsFotos
    ParentCtl3D = False
    PopupMenu = popFoto
    ReadOnly = True
    Stretch = True
    TabOrder = 5
    OnDblClick = JvDBFotografiaDblClick
    Proportional = True
  end
  object PC: TPageControl
    Left = 0
    Top = 88
    Width = 1405
    Height = 733
    ActivePage = tsPrestacio
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabIndex = 1
    TabOrder = 0
    OnChange = PCChange
    object tsPersonals: TTabSheet
      Caption = 'Personals'
      object HYArea1: THYArea
        Left = 0
        Top = 0
        Width = 1397
        Height = 705
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        DataSource = dsFiliacio
        object HYArea3: THYArea
          Left = 0
          Top = 58
          Width = 1393
          Height = 533
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          DataSource = dsFiliacio
          object Shape1: TShape
            Left = 8
            Top = 461
            Width = 487
            Height = 183
          end
          object Eti_tFiliacio_Unitat_N_Unitat: THYLabel
            Left = 113
            Top = 378
            Width = 261
            Height = 19
            DataField = 'Unitat_N_Codi'
            DataSource = dsFiliacio
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_tFiliacio_Pais_N_Pais: THYLabel
            Left = 286
            Top = 88
            Width = 379
            Height = 19
            DataField = 'Pais_N_Pais'
            DataSource = dsFiliacio
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_tFiliacio_EstatCivil_N_Estat: THYLabel
            Left = 113
            Top = 353
            Width = 156
            Height = 19
            DataField = 'EstatCivil_N_Estat'
            DataSource = dsFiliacio
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object bUSRA: TSpeedButton
            Left = 757
            Top = 215
            Width = 89
            Height = 33
            Action = USRA
            AllowAllUp = True
            Flat = True
            Glyph.Data = {
              92080000424D92080000000000003604000028000000220000001F0000000100
              0800000000005C04000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFF6080808B4B4B4080808F6FFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFF608B4737373737373737373B408F6FFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF08B4737373737373737373737373
              737308FFFFFFFFFFFFFFFFFF0000FFFFFFFFF6FFFF0873737373737373737363
              7373737373737308FFFFF6FFFFFFFFFF0000FFFFFFFF07ED0873737373737373
              73735A735A73737373737373080807F6FFFFFFFF0000FFFFFFFF085B5A737373
              7373737373116273115A737373737373739BEDFFFFFFFFFF0000FFFFFFFFF65A
              0A737373737373735A0A7373110A6373737373735A0A07FFFFFFFFFF0000FFFF
              FFFF085A0011737373737363005A737362001173737373730A0A08FFFFFFFFFF
              0000FFFFFFF6B4630A0073737373730A00737373730A005A7373735A005A7308
              FFFFFFFF0000FFFFFF08737311000A7373730A00597373737311000073736300
              0A637308FFFFFFFF0000FFFFFFB473735A0000117311000063737373735A0000
              0A731100117373B4F6FFFFFF0000FFFFF6747373630000000A00001173737373
              73630A00000A00005A737373F6FFFFFF0000FFFFF6737373730A00000000005A
              7373737373731100000000006373737308FFFFFF0000FFFF0873737373590000
              000011737373737373735A00000000117373737308FFFFFF0000FFFFF6B47373
              735A0000000059737373737373736300000000597373737308FFFFFF0000FFFF
              F67363625A0A000000000A595A6373635A5A11000000000A115A636B08FFFFFF
              0000FF07A41100000000000000000000000A110A000000000000000000000A11
              A508FFFF0000FF07F7A35A5A5A5A0A00000A5A5A5A5A5A5A5A5A5A1100000059
              5A5A5A9BED08FFFF0000FFFFFFF6747373730A00000063737373737373737311
              0000005A6B6B6B08FFFFFFFF0000FFFFFFFF0873736200000000117373737373
              73736300000000116B6BB4F6FFFFFFFF0000FFFFFFFF08737363000000005A73
              737373737373630A000000116B6B08FFFFFFFFFF0000FFFFFFFFFF0873735A0A
              0A117373737373737373735A0A0011636B08FFFFFFFFFFFF0000FFFFFFFFFFF6
              0873736363737373737373737373737373637373B4F6FFFFFFFFFFFF0000FFFF
              FFFFFFFFF6737373737373737373737373737373737373B4F6FFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFF60873737373737373737373737373737308F6FFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFF73B47373737373737373737373B408FFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFF608B474737373B4B40808
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          end
          object Eti_tFiliacio_Idioma_N_Codi: THYLabel
            Left = 113
            Top = 304
            Width = 156
            Height = 19
            DataField = 'Idioma_N_Codi'
            DataSource = dsFiliacio
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label4: TLabel
            Left = 186
            Top = 36
            Width = 44
            Height = 13
            Caption = 'ADRE'#199'A'
          end
          object Label5: TLabel
            Left = 8
            Top = 218
            Width = 70
            Height = 13
            Caption = 'Data fotografia'
          end
          object DBText1: TDBText
            Left = 84
            Top = 218
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'FECHAFOTO'
            DataSource = dsFotos
          end
          object JVFotografia: TJvImage
            Left = 8
            Top = 26
            Width = 153
            Height = 193
            Hint = 'Bot'#243' dret per esborrar'
            Center = True
            PopupMenu = popFoto
            Proportional = True
            Stretch = True
            OnDblClick = JvDBFotografiaDblClick
          end
          object Eti_tFiliacio_UnitatM_N_UNITATM: THYLabel
            Left = 113
            Top = 403
            Width = 343
            Height = 19
            DataField = 'UnitatM_N_UNITATM'
            DataSource = dsFiliacio
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object sbDistrictes: TSpeedButton
            Left = 795
            Top = 111
            Width = 53
            Height = 19
            Caption = 'Districtes'
            Flat = True
            OnClick = sbDistrictesClick
          end
          object Eti_tFiliacio_UMantiga_N_Codi: THYLabel
            Left = 113
            Top = 428
            Width = 343
            Height = 19
            DataField = 'UMantiga_N_Codi'
            DataSource = dsFiliacio
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label9: TLabel
            Left = 555
            Top = 225
            Width = 23
            Height = 13
            Caption = 'Amic'
          end
          object Eti_tFiliacio_PaisNaix_N_Pais: THYLabel
            Left = 120
            Top = 279
            Width = 367
            Height = 19
            DataField = 'PaisNaix_N_Pais'
            DataSource = dsFiliacio
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label22: TLabel
            Left = 96
            Top = 554
            Width = 353
            Height = 28
            AutoSize = False
            Caption = 
              'que utilitzin les meves dades (nom, adre'#231'a, tel'#232'fons i correu el' +
              'ectr'#242'nic)'#13#10'per mantenir-me informat sobre NOVETATS, PUBLICACIONS' +
              ' I ACTES.'
            WordWrap = True
          end
          object Label10: TLabel
            Left = 96
            Top = 514
            Width = 383
            Height = 13
            Caption = 
              'que informeu les visites de la meva UBICACI'#211' (n'#250'mero d'#39'habitaci'#243 +
              ' o apartament).'
          end
          object Label13: TLabel
            Left = 96
            Top = 534
            Width = 371
            Height = 13
            Caption = 
              'que m'#39'env'#239'n RECORDATORIS DE VISITES a trav'#233's de SMS, Whatsapp, e' +
              'tc.'
          end
          object Label21: TLabel
            Left = 96
            Top = 585
            Width = 332
            Height = 13
            Caption = 
              'la realitzaci'#243' d'#39'ENQUESTES DE SATISFACCI'#211' per tel'#232'fon o correu-e' +
              '.'
            WordWrap = True
          end
          object Label23: TLabel
            Left = 96
            Top = 605
            Width = 350
            Height = 26
            Caption = 
              'que es pugui accedir a les meves DADES DE SALUT per a PROJECTES ' +
              'D'#39'INVESTIGACI'#211'.'
            WordWrap = True
          end
          object Check_tFiliacio_LLIT: TJvDBRadioPanel
            Left = 10
            Top = 515
            Width = 82
            Height = 13
            BevelOuter = bvNone
            Columns = 2
            DataField = 'AUTORITZA_LLIT'
            DataSource = dsFiliacio
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'S'#237
              'No')
            ParentColor = True
            ParentFont = False
            TabOrder = 28
            TabStop = True
            Values.Strings = (
              'S'
              'N')
          end
          object Ed_tFiliacio_NOMVIA: THYEdit
            Left = 277
            Top = 18
            Width = 383
            Height = 35
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Nom via'
            EtiSepara = 16
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 1
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'NOMVIA'
          end
          object Ed_tFiliacio_CODIGO: THYEdit
            Left = 212
            Top = 61
            Width = 78
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'CP'
            EtiSepara = 30
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 7
            AutoSelect = False
            CharCase = ecUpperCase
            OnChange = Ed_tFiliacio_CODIGOChange
            DataSource = dsFiliacio
            DataField = 'CODIGO'
          end
          object Ed_tFiliacio_POBLACIO: THYEdit
            Left = 299
            Top = 62
            Width = 308
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Poblaci'#243
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio_Resum
            OnEnter = EditOnEnter
            OnExit = EditOnExit
            OnKeyDown = Ed_tFiliacio_POBLACIOKeyDown
            TabOrder = 8
            AutoSelect = False
            CharCase = ecUpperCase
            OnChange = Ed_tFiliacio_CODIGOChange
            DataSource = dsFiliacio
            DataField = 'POBLACIO'
          end
          object Ed_tFiliacio_PROVINCIA: THYEdit
            Left = 615
            Top = 62
            Width = 233
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Prov'#237'ncia'
            EtiSepara = 52
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio_Resum
            OnEnter = EditOnEnter
            OnExit = EditOnExit
            OnKeyDown = Ed_tFiliacio_PROVINCIAKeyDown
            TabOrder = 9
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'PROVINCIA'
          end
          object Ed_tFiliacio_RESIDENCIA: THYEdit
            Left = 696
            Top = 88
            Width = 152
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'C. Resid'#232'ncia'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 11
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'RESIDENCIA'
          end
          object Ed_tFiliacio_PAIS: THYEdit
            Left = 212
            Top = 88
            Width = 65
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Pa'#237's'
            EtiSepara = 30
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 10
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'PAIS'
          end
          object Ed_tFiliacio_AMIC: THYEdit
            Left = 594
            Top = 222
            Width = 121
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Amic'
            EtiSepara = 40
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            Visible = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 35
            AutoSelect = False
            CharCase = ecUpperCase
            ReadOnly = True
            DataSource = dsFiliacio
            DataField = 'AMIC'
          end
          object Ed_tFiliacio_UNITAT: THYEdit
            Left = 10
            Top = 378
            Width = 98
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Unitat'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 25
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'UNITAT'
          end
          object Ed_tFiliacio_NUMERO: THYEdit
            Left = 667
            Top = 18
            Width = 43
            Height = 35
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'mero'
            EtiSepara = 16
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 2
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'NUMERO'
          end
          object Ed_tFiliacio_BLOC: THYEdit
            Left = 715
            Top = 18
            Width = 27
            Height = 35
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Bloc'
            EtiSepara = 16
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 3
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'BLOC'
          end
          object Ed_tFiliacio_ESCALA: THYEdit
            Left = 747
            Top = 18
            Width = 38
            Height = 35
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Escala'
            EtiSepara = 16
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 4
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'ESCALA'
          end
          object Ed_tFiliacio_PIS: THYEdit
            Left = 790
            Top = 18
            Width = 22
            Height = 35
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Pis'
            EtiSepara = 16
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 5
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'PIS'
          end
          object Ed_tFiliacio_PORTA: THYEdit
            Left = 817
            Top = 18
            Width = 31
            Height = 35
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Porta'
            EtiSepara = 16
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 6
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'PORTA'
          end
          object Ed_tFiliacio_TELEFONO: THYEdit
            Left = 186
            Top = 142
            Width = 156
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tel'#232'fon'
            EtiSepara = 56
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 13
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'TELEFONO'
          end
          object Ed_tFiliacio_TELEFO1_FAM: THYEdit
            Left = 365
            Top = 142
            Width = 180
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tel'#232'fon familiar 1'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 14
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'TELEFO1_FAM'
          end
          object Ed_tFiliacio_DESCRIPCIO1: THYEdit
            Left = 558
            Top = 142
            Width = 290
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Comentari 1'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 15
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'DESCRIPCIO1'
          end
          object Ed_tFiliacio_TELEFO2_FAM: THYEdit
            Left = 365
            Top = 166
            Width = 180
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tel'#232'fon familiar 2'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 16
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'TELEFO2_FAM'
          end
          object Ed_tFiliacio_DESCRIPCIO2: THYEdit
            Left = 558
            Top = 167
            Width = 289
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Comentari 2'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 17
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'DESCRIPCIO2'
          end
          object EditSexe: THYEdit
            Left = 10
            Top = 328
            Width = 98
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'G'#232'nere (H/D)'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 23
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'SEXO'
          end
          object Ed_tFiliacio_FECHA_NAC: THYEdit
            Left = 10
            Top = 253
            Width = 150
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data naix.'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 19
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'FECHA_NAC'
          end
          object Ed_tFiliacio_LUGAR_NAC: THYEdit
            Left = 168
            Top = 253
            Width = 320
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Lloc'
            EtiSepara = 30
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 20
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'LUGAR_NAC'
          end
          object Ed_tFiliacio_IDIOMA: THYEdit
            Left = 10
            Top = 303
            Width = 98
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Idioma'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 22
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'IDIOMA'
          end
          object Ed_tFiliacio_ESTADO_CIV: THYEdit
            Left = 10
            Top = 353
            Width = 98
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Estat civil'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 24
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'ESTADO_CIV'
          end
          object GroupBox2: TGroupBox
            Left = 506
            Top = 252
            Width = 396
            Height = 295
            Caption = ' Documents identificatius sanitaris '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 33
            object SpeedButton4: TSpeedButton
              Left = 353
              Top = 19
              Width = 34
              Height = 19
              Caption = 'RCA'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Margin = 6
              ParentFont = False
              Spacing = 0
              OnClick = SpeedButton4Click
            end
            object Eti_tFiliacio_CCAA_N_Codi: THYLabel
              Left = 62
              Top = 85
              Width = 323
              Height = 19
              DataField = 'CCAA_N_Codi'
              DataSource = dsFiliacio
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object bCIP: TSpeedButton
              Left = 226
              Top = 19
              Width = 128
              Height = 19
              Caption = 'Actualitza (des de l'#39'RCA)'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Margin = 6
              ParentFont = False
              OnClick = bCIPClick
            end
            object Label12: TLabel
              Left = 12
              Top = 68
              Width = 197
              Height = 13
              Caption = 'Comunitat aut'#242'noma de la tarjeta sanit'#224'ria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Eti_tFiliacio_cobertura_N_Codi: THYLabel
              Left = 144
              Top = 42
              Width = 238
              Height = 19
              DataField = 'cobertura_N_Codi'
              DataSource = dsFiliacio
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object sbNetejarCIP: TSpeedButton
              Left = 186
              Top = 19
              Width = 40
              Height = 19
              Hint = 'Clicar aqu'#237' per buidar el CIP'
              Caption = 'Buida'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Margin = 6
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = sbNetejarCIPClick
            end
            object GroupBox1: TGroupBox
              Left = 9
              Top = 207
              Width = 378
              Height = 78
              Caption = ' Afiliaci'#243' Seg. Social  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              object Ed_tFiliacio_SOE: THYEdit
                Left = 10
                Top = 23
                Width = 240
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'SOE'
                EtiSepara = 62
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Filiacio
                TabOrder = 0
                AutoSelect = False
                CharCase = ecUpperCase
                DataSource = dsFiliacio
                DataField = 'SOE'
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 263
                Top = 6
                Width = 106
                Height = 66
                DataField = 'TITULAR'
                DataSource = dsFiliacio
                Items.Strings = (
                  '&No assignat  '
                  '&Titular'
                  '&Beneficiari')
                TabOrder = 1
                Values.Strings = (
                  ' '
                  'T'
                  'B')
              end
              object cbPensionista: THYCheck
                Left = 8
                Top = 48
                Width = 78
                Height = 19
                Caption = 'Pensionista'
                DataField = 'PENSIONIST'
                DataSource = dsFiliacio
                TabOrder = 2
                ValueChecked = 'P'
                ValueUnchecked = ' '
              end
            end
            object Ed_tFiliacio_TSI: THYEdit
              Left = 12
              Top = 19
              Width = 172
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'CIP'
              EtiSepara = 20
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Filiacio
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsFiliacio
              DataField = 'TSI'
            end
            object HYEdit8: THYEdit
              Left = 12
              Top = 42
              Width = 129
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Nivell de cobertura'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Filiacio_Resum
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsFiliacio
              DataField = 'NIVELL_COBERTURA'
            end
            object HYGrid1: THYGrid
              Left = 10
              Top = 134
              Width = 319
              Height = 69
              Hint = 'ESC per cancel'#183'lar'
              Color = clWhite
              DataSource = dsTDI
              DefaultDrawing = False
              FixedColor = clSilver
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              DefaultRowHeight = 17
              FesUpDown = True
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TDI'
                  Title.Caption = ' Tipus'
                  Width = 42
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CDI'
                  Title.Caption = 'Codi document identificatiu'
                  Width = 236
                  Visible = True
                end>
            end
            object Ed_tFiliacio_CCAA: THYEdit
              Left = 12
              Top = 85
              Width = 45
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Comunitat aut'#242'noma de la tarjeta sanit'#224'ria'
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Filiacio_Resum
              TabOrder = 2
              AutoSelect = False
              DataSource = dsFiliacio
              DataField = 'CCAA'
            end
            object HYBarra3: THYBarra
              Left = 9
              Top = 109
              Width = 320
              Height = 25
              Hint = 'Nou registre'
              Align = alNone
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Caption = ' '
              Color = clSilver
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              DataSource = dsTDI
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
            end
          end
          object HYEdit5: THYEdit
            Left = 242
            Top = 18
            Width = 32
            Height = 35
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tipus'
            EtiSepara = 16
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsFiliacio
            DataField = 'TIPUSVIA'
          end
          object Check_tFiliacio_Consentiment: THYCheck
            Left = 16
            Top = 464
            Width = 169
            Height = 17
            Alignment = taRightJustify
            Caption = 'CONSENTIMENT INFORMAT'
            DataField = 'Consentiment'
            DataSource = dsFiliacio
            TabOrder = 26
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object Ed_tFiliacio_ConsentimentInf: THYEdit
            Left = 192
            Top = 464
            Width = 295
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Consentiment Informat'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio_Resum
            TabOrder = 27
            AutoSelect = False
            DataSource = dsFiliacio
            DataField = 'ConsentimentInf'
          end
          object Ed_tFiliacio_EMAIL: THYEdit
            Left = 186
            Top = 119
            Width = 480
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'e-mail'
            EtiSepara = 56
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio_Resum
            TabOrder = 12
            AutoSelect = False
            DataSource = dsFiliacio
            DataField = 'EMAIL'
          end
          object StaticText1: TStaticText
            Left = 9
            Top = 99
            Width = 151
            Height = 29
            Hint = 'Bot'#243' dret per esborrar'
            Alignment = taCenter
            AutoSize = False
            Caption = 'Doble clic per assignar una fotografia'
            Color = clWhite
            ParentColor = False
            ParentShowHint = False
            PopupMenu = popFoto
            ShowHint = True
            TabOrder = 37
            OnDblClick = JvDBFotografiaDblClick
          end
          object Ed_tFiliacio_c_Unitatmedica: THYEdit
            Left = 10
            Top = 403
            Width = 99
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Unitat m'#232'dica'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio_Resum
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 38
            AutoSelect = False
            ReadOnly = True
            DataSource = dsFiliacio
            DataField = 'c_Unitatmedica'
          end
          object Ed_tFiliacio_UM_ANTIGA: THYEdit
            Left = 10
            Top = 428
            Width = 99
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'UM antiga'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio_Resum
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 36
            AutoSelect = False
            ReadOnly = True
            DataSource = dsFiliacio
            DataField = 'UM_ANTIGA'
          end
          object eAmic: TEdit
            Left = 594
            Top = 222
            Width = 81
            Height = 19
            AutoSelect = False
            CharCase = ecUpperCase
            Ctl3D = False
            ParentColor = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 18
            Text = 'EDIT1'
          end
          object Ed_tFiliacio_PAIS_NAIX: THYEdit
            Left = 10
            Top = 278
            Width = 105
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Pa'#237's naix.'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio_Resum
            TabOrder = 21
            AutoSelect = False
            DataSource = dsFiliacio
            DataField = 'PAIS_NAIX'
          end
          object mgcAvis: THyMoveGroupControl
            Left = 915
            Top = -8
            Width = 862
            Height = 462
            Caption = '  ATENCI'#211' !!!'
            Color = clSilver
            ParentColor = False
            TabOrder = 34
            ColorCaption = clRed
            FontCaption.Charset = DEFAULT_CHARSET
            FontCaption.Color = clWhite
            FontCaption.Height = -11
            FontCaption.Name = 'MS Sans Serif'
            FontCaption.Style = []
            ColorCaption2 = clRed
            object Panel8: TPanel
              Left = 2
              Top = 72
              Width = 858
              Height = 42
              Align = alTop
              BevelOuter = bvNone
              Color = clSilver
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object Panel10: TPanel
                Left = 93
                Top = 0
                Width = 53
                Height = 42
                Align = alLeft
                Caption = 'N.H.'
                Color = clSilver
                TabOrder = 0
              end
              object bDataFoto: TPanel
                Left = 0
                Top = 0
                Width = 93
                Height = 42
                Align = alLeft
                Caption = 'Fotografia'
                Color = clSilver
                TabOrder = 1
              end
              object Panel14: TPanel
                Left = 354
                Top = 0
                Width = 104
                Height = 42
                Align = alLeft
                Caption = 'Nom'
                Color = clSilver
                TabOrder = 2
              end
              object Panel15: TPanel
                Left = 458
                Top = 0
                Width = 38
                Height = 42
                Align = alLeft
                Caption = 'Edat'
                Color = clSilver
                TabOrder = 3
              end
              object Panel16: TPanel
                Left = 496
                Top = 0
                Width = 41
                Height = 42
                Align = alLeft
                Caption = 'Sexe'
                Color = clSilver
                TabOrder = 4
              end
              object Panel17: TPanel
                Left = 146
                Top = 0
                Width = 104
                Height = 42
                Align = alLeft
                Caption = 'Cognom 1'
                Color = clSilver
                TabOrder = 5
              end
              object Panel18: TPanel
                Left = 250
                Top = 0
                Width = 104
                Height = 42
                Align = alLeft
                Caption = 'Cognom 2'
                Color = clSilver
                TabOrder = 6
              end
              object Panel19: TPanel
                Left = 537
                Top = 0
                Width = 82
                Height = 42
                Align = alLeft
                Caption = 'DNI'
                Color = clSilver
                TabOrder = 7
              end
              object Panel22: TPanel
                Left = 619
                Top = 0
                Width = 97
                Height = 42
                Align = alLeft
                Caption = 'CIP'
                Color = clSilver
                TabOrder = 8
              end
              object Panel23: TPanel
                Left = 716
                Top = 0
                Width = 82
                Height = 42
                Align = alLeft
                Caption = 'SOE'
                Color = clSilver
                TabOrder = 9
              end
            end
            object Grid: TDBCtrlGrid
              Left = 2
              Top = 114
              Width = 858
              Height = 315
              Align = alClient
              AllowDelete = False
              AllowInsert = False
              ColCount = 1
              Color = 15066597
              DataSource = dsLlistat
              PanelHeight = 105
              PanelWidth = 841
              ParentColor = False
              TabOrder = 1
              RowCount = 3
              SelectedColor = 16749459
              OnDblClick = GridDblClick
              object DBText2: TDBText
                Left = 146
                Top = 0
                Width = 104
                Height = 105
                Align = alLeft
                Alignment = taCenter
                Color = clSilver
                DataField = 'APELLIDO1'
                DataSource = dsLlistat
                ParentColor = False
                Transparent = True
                OnDblClick = GridDblClick
              end
              object Bevel1: TBevel
                Left = 797
                Top = 0
                Width = 2
                Height = 105
                Align = alLeft
                Shape = bsLeftLine
              end
              object DBText3: TDBText
                Left = 93
                Top = 0
                Width = 53
                Height = 105
                Align = alLeft
                Alignment = taCenter
                Color = clSilver
                DataField = 'c_historia'
                DataSource = dsLlistat
                ParentColor = False
                Transparent = True
                OnDblClick = GridDblClick
              end
              object DBText4: TDBText
                Left = 250
                Top = 0
                Width = 104
                Height = 105
                Align = alLeft
                Alignment = taCenter
                Color = clSilver
                DataField = 'APELLIDO2'
                DataSource = dsLlistat
                ParentColor = False
                Transparent = True
                OnDblClick = GridDblClick
              end
              object DBText5: TDBText
                Left = 354
                Top = 0
                Width = 104
                Height = 105
                Align = alLeft
                Alignment = taCenter
                Color = clSilver
                DataField = 'NOMBRE'
                DataSource = dsLlistat
                ParentColor = False
                Transparent = True
                OnDblClick = GridDblClick
              end
              object DBText6: TDBText
                Left = 458
                Top = 0
                Width = 38
                Height = 105
                Align = alLeft
                Alignment = taCenter
                Color = clSilver
                DataField = 'Edat'
                DataSource = dsLlistat
                ParentColor = False
                Transparent = True
                OnDblClick = GridDblClick
              end
              object DBText7: TDBText
                Left = 496
                Top = 0
                Width = 41
                Height = 105
                Align = alLeft
                Alignment = taCenter
                Color = clSilver
                DataField = 'Sexe'
                DataSource = dsLlistat
                ParentColor = False
                Transparent = True
                OnDblClick = GridDblClick
              end
              object DBText8: TDBText
                Left = 537
                Top = 0
                Width = 82
                Height = 105
                Align = alLeft
                Alignment = taCenter
                Color = clSilver
                DataField = 'DNI'
                DataSource = dsLlistat
                ParentColor = False
                Transparent = True
                OnDblClick = GridDblClick
              end
              object DBText9: TDBText
                Left = 619
                Top = 0
                Width = 97
                Height = 105
                Align = alLeft
                Alignment = taCenter
                Color = clSilver
                DataField = 'TSI'
                DataSource = dsLlistat
                ParentColor = False
                Transparent = True
                OnDblClick = GridDblClick
              end
              object DBText10: TDBText
                Left = 716
                Top = 0
                Width = 81
                Height = 105
                Align = alLeft
                Alignment = taCenter
                Color = clSilver
                DataField = 'SOE'
                DataSource = dsLlistat
                ParentColor = False
                Transparent = True
                OnDblClick = GridDblClick
              end
              object JvDBImage1: TJvDBImage
                Left = 0
                Top = 0
                Width = 93
                Height = 105
                Align = alLeft
                BorderStyle = bsNone
                Color = clSilver
                Ctl3D = True
                DataField = 'foto'
                DataSource = dsLlistat
                ParentCtl3D = False
                ReadOnly = True
                Stretch = True
                TabOrder = 0
                OnDblClick = GridDblClick
                BevelInner = bvNone
                Proportional = True
              end
            end
            object TopPanel: TPanel
              Left = 2
              Top = 429
              Width = 858
              Height = 31
              Align = alBottom
              BevelOuter = bvNone
              Color = clSilver
              TabOrder = 2
              object lQuants: TLabel
                Left = 204
                Top = 7
                Width = 55
                Height = 20
                Caption = 'lQuants'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object bSortir: TButton
                Left = 920
                Top = 8
                Width = 65
                Height = 57
                Caption = 'SORTIR'
                TabOrder = 0
                TabStop = False
              end
              object DBNavigator1: TDBNavigator
                Left = 14
                Top = 5
                Width = 176
                Height = 25
                DataSource = dsLlistat
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                TabOrder = 1
              end
            end
            object Panel20: TPanel
              Left = 2
              Top = 19
              Width = 858
              Height = 53
              Align = alTop
              BevelOuter = bvLowered
              BorderWidth = 5
              Color = clSilver
              TabOrder = 3
              DesignSize = (
                858
                53)
              object Label8: TLabel
                Left = 6
                Top = 6
                Width = 846
                Height = 41
                Align = alClient
                Caption = 
                  'Esteu segur que aquest pacient '#233's nou? No '#233's cap dels que es lli' +
                  'sten a continuaci'#243'?'#13#10'Trieu el pacient fent doble clic. Tanqueu a' +
                  'questa finestra per a filiar un nou pacient.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                WordWrap = True
              end
              object sbSurt: TSpeedButton
                Left = 829
                Top = 8
                Width = 18
                Height = 19
                Hint = 'Sortir'
                Anchors = [akTop, akRight]
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
                NumGlyphs = 2
                OnClick = sbSurtClick
              end
            end
          end
          object Label14: TStaticText
            Left = 97
            Top = 495
            Width = 76
            Height = 17
            Caption = 'AUTORITZO...'
            TabOrder = 39
          end
          object JvDBRadioPanel1: TJvDBRadioPanel
            Left = 10
            Top = 535
            Width = 82
            Height = 13
            BevelOuter = bvNone
            Columns = 2
            DataField = 'SMS'
            DataSource = dsFiliacio
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'S'#237
              'No')
            ParentColor = True
            ParentFont = False
            TabOrder = 29
            TabStop = True
            Values.Strings = (
              'S'
              'N')
          end
          object JvDBRadioPanel2: TJvDBRadioPanel
            Left = 10
            Top = 555
            Width = 82
            Height = 13
            BevelOuter = bvNone
            Columns = 2
            DataField = 'CORRESPONDENCIA'
            DataSource = dsFiliacio
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'S'#237
              'No')
            ParentColor = True
            ParentFont = False
            TabOrder = 30
            TabStop = True
            Values.Strings = (
              'S'
              'N')
          end
          object JvDBRadioPanel3: TJvDBRadioPanel
            Left = 9
            Top = 606
            Width = 82
            Height = 13
            BevelOuter = bvNone
            Columns = 2
            DataField = 'Autoritza_investigacio'
            DataSource = dsFiliacio
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'S'#237
              'No')
            ParentColor = True
            ParentFont = False
            TabOrder = 32
            TabStop = True
            Values.Strings = (
              'S'
              'N')
          end
          object Check_tFiliacio_ENQUESTES: TJvDBRadioPanel
            Left = 9
            Top = 586
            Width = 82
            Height = 13
            BevelOuter = bvNone
            Columns = 2
            DataField = 'AUTORITZA_ENQUESTES'
            DataSource = dsFiliacio
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'S'#237
              'No')
            ParentColor = True
            ParentFont = False
            TabOrder = 31
            TabStop = True
            Values.Strings = (
              'S'
              'N')
          end
        end
        object pNovaHCE: TPanel
          Left = 0
          Top = 0
          Width = 1393
          Height = 58
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          object Label26: TLabel
            Left = 10
            Top = 12
            Width = 63
            Height = 13
            Caption = 'Num. Hist'#242'ria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lEspera: TLabel
            Left = 10
            Top = 37
            Width = 73
            Height = 13
            Caption = 'Llista d'#39'espera: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object eNHCNovaHCE: TEdit
            Left = 80
            Top = 9
            Width = 73
            Height = 21
            Hint = 'Enter per consultar dades del NHC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnChange = eNHCNovaHCEChange
            OnKeyPress = eNHCNovaHCEKeyPress
          end
          object bbCercaNovaHCE: TBitBtn
            Left = 167
            Top = 7
            Width = 68
            Height = 25
            Caption = 'Cerca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = bbCercaNovaHCEClick
            Glyph.Data = {
              42050000424D4205000000000000360000002800000016000000130000000100
              1800000000000C05000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFF8F7F6F6F3F1FEFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFF0F1EFA7AAAD938C9CD7C5CBFFFBF8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFE1E6E65F90B6366AB68477A1D9C3C7FFFCF9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFECF4F983CBFA37A4FD3F76C87F749DD9
              C2C6FFFEFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDEF2FE82CDFF3BA4FA
              3C74C883759CDDC5C5FFFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFEDFF0
              FC81CDFF39A4FB3B71C57A6D97DED1D4FFFFFFF5FFFFEFF0F4F4F5F6F6F8FBFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEE4F2FD80CCFE2DA1FF376EB9A2AEB4E9ECF2B9928EB69088C5A79C
              CBADA4D1BAB9F1ECEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFBE0F0F89FD6FCA8C5D4968384BC7E77EBD5AAF9F2
              C5F8F3D4F4EECCD9C4ACC7ABA3ECE2E1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D8D7CB8F80FEE9BAFF
              FFD2FFFFD2FFFFDEFFFFEEFFFFFFE2D3D3C7ADABF1ECECFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9FBD4B4B2EDD7B2
              FFF7C0FFE8B4FFFFD5FFFFE6FFFFF8FFFFFFFFFFF5CEB8A3D0BDBAFBFAFBFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE4E7D3B2
              A6F8F1C2FFD49FFFEFBCFFFFD4FFFFE3FFFFF2FFFFF0FFFFEADACAABCAB4ADF7
              F4F6FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB
              E2E6D3B8ACF9F4C1FFD3A0FFE8B0FFFFCCFFFFDAFFFFE0FFFFDDFFFFE0E1D0AF
              D0BAB2F7F3F7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEE8EDD2B4A8F7F0C5FFF0CBFFDBA9FFEDB8FFFACAFFFCCDFFFCCDFFFF
              D2D8C09BCAB1ADF7F5F7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFCFCFED4BAB4E7D3B8FFFFFFFFECD9FFDBA7FFE2B0FFE4B1FF
              F6C1FBF0BACEAD91D9C8C7FCFCFDFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFECE5E5CBADA4E8DAD9FFFFFFFFF7C7FFEFB7
              FFF0B7FEEAB5DBB491D1B5ADF4F1F3FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E3E3C3A5A6D0B4A2E0CB
              A4E6D0A4E5C8A0D5AE97D3B5AFEEE7E9FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F4F4D3
              BDB9CFB7B2DAC0BCDEC5C3E5D5D7F7F4F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000}
          end
          object bbFiliaNovaHCE: TBitBtn
            Left = 239
            Top = 7
            Width = 68
            Height = 25
            Caption = 'Filia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = bbFiliaNovaHCEClick
            Glyph.Data = {
              42020000424D4202000000000000420000002800000010000000100000000100
              1000030000000002000000000000000000000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C00000000000000000000000000000000000000000000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7F0000FF7F00001F7C
              1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7F000000001F7C1F7C
              1F7C1F7C1F7C1F7C1F7C000000000000000000000000000000001F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C}
          end
          object bbModiNovaHCE: TBitBtn
            Left = 311
            Top = 7
            Width = 81
            Height = 25
            Caption = 'Modificar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = bbModiNovaHCEClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
              0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
              0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
              0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
              0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
              0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
              5555557FFFFF7755555555500000005555555577777775555555555555555555
              5555555555555555555555555555555555555555555555555555}
            NumGlyphs = 2
          end
          object bbRefrescaNovaHCE: TBitBtn
            Left = 396
            Top = 7
            Width = 81
            Height = 25
            Caption = 'Refrescar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = bbRefrescaNovaHCEClick
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333777733
              3333307337000077333330077000000073333000000333000733300000333330
              0073300000333333007330000003333377733333333333333333333333333377
              7777337773333300000733007333333000073330073337700007333000777000
              0007333300000000330733333300003333333333333333333333}
          end
        end
        object pFiliDadesfac: TPanel
          Left = 0
          Top = 591
          Width = 1393
          Height = 110
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 2
          object Eti_tFiliacio_Hospital_N_Hospital: THYLabel
            Left = 55
            Top = 20
            Width = 441
            Height = 19
            DataField = 'Hospital_N_Hospital'
            DataSource = dsFiliacio
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label27: TLabel
            Left = 10
            Top = 5
            Width = 113
            Height = 13
            Caption = 'Hospital primera atenci'#243
          end
          object GroupBox3: TGroupBox
            Left = 507
            Top = 3
            Width = 396
            Height = 101
            Caption = 
              ' Dades de facturaci'#243' per al proper tractament (nom'#233's si varien) ' +
              ' '
            Color = clWhite
            Ctl3D = True
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 0
            object HYLabel5: THYLabel
              Left = 114
              Top = 21
              Width = 160
              Height = 19
              Color = clWhite
              DataField = 'centrefac_N_CentreFac'
              DataSource = dsFiliDadesFac
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel6: THYLabel
              Left = 114
              Top = 45
              Width = 273
              Height = 19
              Color = clWhite
              DataField = 'client_N_Client'
              DataSource = dsFiliDadesFac
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel7: THYLabel
              Left = 115
              Top = 69
              Width = 272
              Height = 19
              Color = clWhite
              DataField = 'delegacio_N_Delegacio'
              DataSource = dsFiliDadesFac
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object edFiliCentreFac: THYEdit
              Left = 12
              Top = 20
              Width = 97
              Height = 19
              Idioma = Castellano
              EtiFontColor = clBlack
              Eti = 'Centre'
              EtiSepara = 60
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Fili_DadesFac
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Ctl3D = True
              ParentCtl3D = False
              OnExit = edFiliDadesFacExit
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsFiliDadesFac
              DataField = 'C_CentreFac'
            end
            object HYEdit10: THYEdit
              Left = 12
              Top = 44
              Width = 97
              Height = 19
              Idioma = Castellano
              EtiFontColor = clBlack
              Eti = 'Client'
              EtiSepara = 60
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Fili_DadesFac
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Ctl3D = True
              ParentCtl3D = False
              OnExit = edFiliDadesFacExit
              TabOrder = 1
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsFiliDadesFac
              DataField = 'C_Client'
            end
            object HYEdit11: THYEdit
              Left = 12
              Top = 68
              Width = 97
              Height = 19
              Idioma = Castellano
              EtiFontColor = clBlack
              Eti = 'Delegaci'#243
              EtiSepara = 60
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Fili_DadesFac
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Ctl3D = True
              ParentCtl3D = False
              OnExit = edFiliDadesFacExit
              TabOrder = 2
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsFiliDadesFac
              DataField = 'C_Delegacio'
            end
          end
          object Ed_tFiliacio_C_HOSPITAL: THYEdit
            Left = 10
            Top = 20
            Width = 42
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            EtiSepara = 0
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio_Resum
            TabOrder = 1
            AutoSelect = False
            DataSource = dsFiliacio
            DataField = 'C_HOSPITAL'
          end
        end
      end
    end
    object tsPrestacio: TTabSheet
      Caption = 'Prestaci'#243
      ImageIndex = 1
      object HYArea4: THYArea
        Left = 0
        Top = 0
        Width = 1397
        Height = 421
        Align = alTop
        AutoSize = True
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        DataSource = dsTractaments
        object Panel5: TPanel
          Left = 0
          Top = 59
          Width = 1393
          Height = 30
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object HYLabel10: THYLabel
            Left = 574
            Top = 8
            Width = 265
            Height = 19
            DataField = 'TransportSanitari_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label29: TLabel
            Left = 849
            Top = 11
            Width = 43
            Height = 13
            Caption = 'Contacte'
          end
          object HYLabel11: THYLabel
            Left = 899
            Top = 8
            Width = 265
            Height = 19
            DataField = 'TransportSanitari_N_Codi2'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object pDataIngres: TPanel
            Left = 0
            Top = 0
            Width = 242
            Height = 30
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object sbCanviDataIngres: TSpeedButton
              Left = 218
              Top = 7
              Width = 20
              Height = 20
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                180000000000680200000000000000000000000000000000000085B7850F6F0F
                1674161A761A1A761A187818177917137D130D7F0D0A7E0A077C07027B020070
                007FB07F00001183111F8C1F2A912A2F932F2E942E2C962C299A29239E231CA3
                1C15A4150DA40D059F05019101006F000000198D192C962C379C373D9F3D3C9F
                3C39A139A3D6A3FFFFFF24AF241CB11C13B2130AAD0A049F0402790200002291
                22389C3843A24348A44845A54542A642FFFFFFFFFFFFFFFFFF21B52118B6180E
                B10E08A308057E0500002C962C42A0424CA54C4FA74F4CA74C46A74640AA40FF
                FFFFFFFFFFFFFFFF1AB31A14AF140FA30F0B800B0000359A354BA54B52A85253
                A9534EA84E49A74941A84138AA38FFFFFFFFFFFFFFFFFF19AC1918A218128212
                00003F9F3F53A953FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF1F9E1F188118000045A2455AAC5AFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF259A251D7F1D00004FA74F63B163
                61AF6159AB5951A65148A2483F9F3F369C36FFFFFFFFFFFFFFFFFF2699262A97
                2A217E21000053A9536CB66C68B4685EAD5E54A8544CA34C429F42FFFFFFFFFF
                FFFFFFFF2997292B982B2D952D237E2300005EAF5E7ABD7A70B87063B0635AAB
                5A52A652FFFFFFFFFFFFFFFFFF3399333099303098302F942F237D2300006BB5
                6B8DC68D80C0806FB76F67B26760AE60B4D9B4FFFFFF4CA54C49A44941A1413A
                9D3A3095301E7A1E000077BB779DCF9D8CC68C79BC7970B87069B46965B26562
                B0625DAE5D56AB564EA74E41A1412F942F1977190000B1D8B176BB7667B3675B
                AD5B54A9544FA74F4AA44A4BA54B46A3463FA03F3B9E3B319831238C238ABB8A
                0000}
              Margin = 1
              Spacing = 0
              Visible = False
              OnClick = sbCanviDataIngresClick
            end
            object Data_Ingres: THYEdit
              Left = 12
              Top = 9
              Width = 204
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Data ingr'#233's'
              EtiSepara = 110
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              ReadOnly = True
              DataSource = dsTractaments
              DataField = 'Data_Ingres'
            end
          end
          object pHora: TPanel
            Left = 242
            Top = 0
            Width = 130
            Height = 30
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Ed_tTractaments_Hora: THYEdit
              Left = 12
              Top = 7
              Width = 104
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Hora'
              EtiSepara = 50
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsTractaments
              DataField = 'Hora'
            end
          end
          object pDurada: TPanel
            Left = 372
            Top = 0
            Width = 94
            Height = 30
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            object HYEdit3: THYEdit
              Left = 1
              Top = 7
              Width = 87
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Durada'
              EtiSepara = 50
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsTractaments
              DataField = 'Durada'
            end
          end
          object HYEdit19: THYEdit
            Left = 476
            Top = 8
            Width = 89
            Height = 19
            Idioma = Castellano
            EtiFontColor = clBlack
            Eti = 'Trasport'
            EtiSepara = 60
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 3
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_TRANSPORT_SANITARI'
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 32
          Width = 1393
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object HYEdit1: THYEdit
            Left = 12
            Top = 6
            Width = 203
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'C. Tractament'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            AutoSelect = False
            ReadOnly = True
            DataSource = dsTractaments
            DataField = 'C_Tractament'
          end
        end
        object pLlitPlanta: TPanel
          Left = 0
          Top = 89
          Width = 1393
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          object pLlit: TPanel
            Left = 0
            Top = 0
            Width = 242
            Height = 27
            Align = alLeft
            BevelOuter = bvNone
            Ctl3D = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 0
            object EtiLlit: THYEdit
              Left = 12
              Top = 5
              Width = 204
              Height = 19
              Idioma = Castellano
              EtiFontColor = clRed
              Eti = 'Llit'
              EtiSepara = 110
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              ReadOnly = True
              DataSource = dsTractaments
              DataField = 'C_LLit'
            end
          end
          object pPlanta: TPanel
            Left = 242
            Top = 0
            Width = 640
            Height = 27
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Eti_tTractaments_Planta_N_Planta: THYLabel
              Left = 130
              Top = 5
              Width = 89
              Height = 19
              DataField = 'Planta_N_Planta'
              DataSource = dsTractaments
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Eti_tTractaments_TipHab_N_Codi: THYLabel
              Left = 370
              Top = 4
              Width = 187
              Height = 19
              DataField = 'TipHab_N_Codi'
              DataSource = dsTractaments
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object EtiPlanta: THYEdit
              Left = 12
              Top = 5
              Width = 104
              Height = 19
              Idioma = Castellano
              EtiFontColor = clRed
              Eti = 'Planta'
              EtiSepara = 50
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              ReadOnly = True
              DataSource = dsTractaments
              DataField = 'C_Planta'
            end
            object EtiTHabitacio: THYEdit
              Left = 254
              Top = 4
              Width = 109
              Height = 19
              Idioma = Castellano
              EtiFontColor = clRed
              Eti = 'Tipus d'#39'habitaci'#243
              EtiSepara = 85
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              AutoSelect = False
              DataSource = dsTractaments
              DataField = 'T_HABITACIO'
            end
          end
        end
        object pMetge: TPanel
          Left = 0
          Top = 0
          Width = 1393
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 3
          object Eti_tTractaments_Coordinador_Nom: THYLabel
            Left = 190
            Top = 6
            Width = 265
            Height = 19
            DataField = 'Coordinador_Metge'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Nom'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object sbCanviCoordinador: TSpeedButton
            Left = 459
            Top = 6
            Width = 20
            Height = 20
            Flat = True
            Glyph.Data = {
              9E020000424D9E0200000000000036000000280000000E0000000E0000000100
              180000000000680200000000000000000000000000000000000085B7850F6F0F
              1674161A761A1A761A187818177917137D130D7F0D0A7E0A077C07027B020070
              007FB07F00001183111F8C1F2A912A2F932F2E942E2C962C299A29239E231CA3
              1C15A4150DA40D059F05019101006F000000198D192C962C379C373D9F3D3C9F
              3C39A139A3D6A3FFFFFF24AF241CB11C13B2130AAD0A049F0402790200002291
              22389C3843A24348A44845A54542A642FFFFFFFFFFFFFFFFFF21B52118B6180E
              B10E08A308057E0500002C962C42A0424CA54C4FA74F4CA74C46A74640AA40FF
              FFFFFFFFFFFFFFFF1AB31A14AF140FA30F0B800B0000359A354BA54B52A85253
              A9534EA84E49A74941A84138AA38FFFFFFFFFFFFFFFFFF19AC1918A218128212
              00003F9F3F53A953FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF1F9E1F188118000045A2455AAC5AFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF259A251D7F1D00004FA74F63B163
              61AF6159AB5951A65148A2483F9F3F369C36FFFFFFFFFFFFFFFFFF2699262A97
              2A217E21000053A9536CB66C68B4685EAD5E54A8544CA34C429F42FFFFFFFFFF
              FFFFFFFF2997292B982B2D952D237E2300005EAF5E7ABD7A70B87063B0635AAB
              5A52A652FFFFFFFFFFFFFFFFFF3399333099303098302F942F237D2300006BB5
              6B8DC68D80C0806FB76F67B26760AE60B4D9B4FFFFFF4CA54C49A44941A1413A
              9D3A3095301E7A1E000077BB779DCF9D8CC68C79BC7970B87069B46965B26562
              B0625DAE5D56AB564EA74E41A1412F942F1977190000B1D8B176BB7667B3675B
              AD5B54A9544FA74F4AA44A4BA54B46A3463FA03F3B9E3B319831238C238ABB8A
              0000}
            Margin = 1
            Spacing = 0
            Visible = False
            OnClick = sbCanviCoordinadorClick
          end
          object EditCoordinador: THYEdit
            Left = 12
            Top = 6
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Metge coordinador'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_Coordinador'
          end
        end
        object pSolicitud: TPanel
          Left = 0
          Top = 174
          Width = 1393
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 4
          object Eti_tTractaments_Solicitud_N_Codi: THYLabel
            Left = 190
            Top = 0
            Width = 265
            Height = 19
            DataField = 'Solicitud_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Solicitud: THYEdit
            Left = 12
            Top = 0
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Sol'#183'licitud / causa'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_Solicitud'
          end
        end
        object pCaracter: TPanel
          Left = 0
          Top = 200
          Width = 1393
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 5
          object Eti_tTractaments_Caracter_N_Codi: THYLabel
            Left = 190
            Top = 0
            Width = 265
            Height = 19
            DataField = 'Caracter_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditCaracter: THYEdit
            Left = 12
            Top = 0
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Car'#224'cter'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_Caracter'
          end
        end
        object pHospital: TPanel
          Left = 0
          Top = 391
          Width = 1393
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 6
          Visible = False
          object Eti_tTractaments_HtalOrigen_N_Hospital: THYLabel
            Left = 190
            Top = 0
            Width = 265
            Height = 19
            DataField = 'HtalOrigen_N_Hospital'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_tTractaments_HtalOrigen_Poblacio: THYLabel
            Left = 466
            Top = -15
            Width = 160
            Height = 34
            DataField = 'HtalOrigen_Poblacio'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Poblaci'#243
            EtiSepara = 14
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object Eti_tTractaments_HtalOrigen_Dany_Cerebral: THYLabel
            Left = 799
            Top = 0
            Width = 39
            Height = 19
            DataField = 'HtalOrigen_Dany_Cerebral'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label24: TLabel
            Left = 666
            Top = 4
            Width = 130
            Height = 13
            Caption = #201's centre de dany cerebral:'
          end
          object EditHospital: THYEdit
            Left = 13
            Top = 0
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Hospital'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_HospitalOrigen'
          end
        end
        object pProcedencia: TPanel
          Left = 0
          Top = 365
          Width = 1393
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 7
          object Eti_tTractaments_Origen_N_Codi: THYLabel
            Left = 190
            Top = 0
            Width = 265
            Height = 19
            DataField = 'Origen_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditOrigen: THYEdit
            Left = 12
            Top = 0
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Proced'#232'ncia/origen'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_Origen'
          end
          object pUCI: TPanel
            Left = 472
            Top = 0
            Width = 105
            Height = 25
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            object Check_tTractaments_UCI: THYCheck
              Left = 6
              Top = 3
              Width = 90
              Height = 17
              Alignment = taRightJustify
              Caption = 'Ve de la UCI?'
              DataField = 'UCI'
              DataSource = dsTractaments
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object pPrestacio: TPanel
          Left = 0
          Top = 116
          Width = 1393
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 8
          object HYLabel2: THYLabel
            Left = 190
            Top = 6
            Width = 265
            Height = 19
            DataField = 'Prestacio_N_Prestacio'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Nom Prestaci'#243
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYEdit2: THYEdit
            Left = 12
            Top = 6
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Prestaci'#243
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            ReadOnly = True
            DataSource = dsTractaments
            DataField = 'C_Prestacio'
          end
        end
        object pFrequencia: TPanel
          Left = 0
          Top = 252
          Width = 1393
          Height = 61
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 9
          object HYLabel3: THYLabel
            Left = 190
            Top = 0
            Width = 265
            Height = 19
            DataField = 'Frequencia_DESCRIPCIO'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object lbAvisFreq: TLabel
            Left = 123
            Top = 21
            Width = 529
            Height = 13
            Caption = 
              'Segons centre de facturaci'#243' i motiu, la freq'#252#232'ncia anir'#224' determi' +
              'nada per la pauta ambulat'#242'ria indicada pel metge'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object HYLabel8: THYLabel
            Left = 191
            Top = 37
            Width = 264
            Height = 19
            DataField = 'TipusFrequencia_N_Codi'
            DataSource = dsTractaments
            Visible = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditFrequencia: THYEdit
            Left = 12
            Top = 0
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Freq'#252#232'ncia'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            OnChange = EditFrequenciaChange
            DataSource = dsTractaments
            DataField = 'C_Frequencia'
          end
          object EditTFrequencia: THYEdit
            Left = 48
            Top = 37
            Width = 139
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Tipus de freq'#252#232'ncia'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Visible = False
            TabOrder = 1
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'C_FREQUENCIA_TIPUS'
          end
          object HYEdit16: THYEdit
            Left = 466
            Top = 1
            Width = 155
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hora inici rehabilitaci'#243
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 2
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'HORA_INI_REHAB'
          end
          object HYEdit17: THYEdit
            Left = 630
            Top = 2
            Width = 155
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hora final rehabilitaci'#243
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 3
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'HORA_FIN_REHAB'
          end
        end
        object pMotiuEspera: TPanel
          Left = 0
          Top = 226
          Width = 1393
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 10
          object HYLabel4: THYLabel
            Left = 190
            Top = 0
            Width = 265
            Height = 19
            DataField = 'Motiu_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditMotiuEspera: THYEdit
            Left = 12
            Top = 0
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Motiu'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_Motiu'
          end
          object eMotiu: TEdit
            Left = 464
            Top = 0
            Width = 273
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
            Visible = False
          end
        end
        object pTSessio: TPanel
          Left = 0
          Top = 313
          Width = 1393
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 11
          Visible = False
          object Eti_tTractaments_TSessio_N_Codi: THYLabel
            Left = 155
            Top = 2
            Width = 400
            Height = 19
            DataField = 'TSessio_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditTSessio: THYEdit
            Left = 12
            Top = 2
            Width = 139
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Tipus de sessi'#243
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'T_SESSIO'
          end
        end
        object pSessionsCadaXSetmanes: TPanel
          Left = 0
          Top = 339
          Width = 1393
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 12
          Visible = False
          object EditCadaXSetmanes: THYEdit
            Left = 12
            Top = 2
            Width = 172
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Visita cada X setmanes'
            EtiSepara = 120
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'CADA_X_SETMANES'
          end
        end
        object pModalitatEspera: TPanel
          Left = 0
          Top = 142
          Width = 1393
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 13
          object HYLabel12: THYLabel
            Left = 190
            Top = 6
            Width = 265
            Height = 19
            DataField = 'modalitat_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditModalitatEspera: THYEdit
            Left = 12
            Top = 6
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Modalitat'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_Modalitat'
          end
        end
      end
      object pcPrestaciones: TPageControl
        Left = 0
        Top = 421
        Width = 1397
        Height = 284
        ActivePage = tsTractaments
        Align = alClient
        Style = tsButtons
        TabIndex = 1
        TabOrder = 1
        object tsPrestacionsPendents: TTabSheet
          Caption = 'Llistat de prestacions pendents'
          object PanelPrestacions: TPanel
            Left = 0
            Top = 0
            Width = 1397
            Height = 402
            Align = alClient
            BevelOuter = bvNone
            Caption = 'PanelPrestacions'
            TabOrder = 0
            object HYPC: HYPanelConsulta
              Left = 0
              Top = 0
              Width = 1397
              Height = 402
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Prestacions pendents'
              Color = clSilver
              TabOrder = 1
              Abierta = False
              SqlDic.Strings = (
                
                  ' SELECT A.C_Espera, A.Data_Inclusio, A.DATA_PREINGRES,A.C_COORDI' +
                  'NADOR, A.C_Prestacio, B.N_Prestacio, A.C_ESTAT'
                ' FROM ESPERA A, PRESTACION B'
                ' WHERE A.C_PRESTACIO = B.C_PRESTACIO'
                '       AND A.C_HISTORIA = 5566'
                '       AND A.C_ESTAT >= 20'
                '       AND A.C_ESTAT <=   29'
                '       AND NOT A.C_ESPERA = 58'
                '       AND A.DATA_PREINGRES >= "TODAY"'
                '[AND FILTRO]'
                '[ORDEN]')
              SqlDicTotal.Strings = (
                ' SELECT  COUNT(*) as REGISTRES'
                ' FROM ESPERA A, PRESTACION B'
                ' WHERE A.C_PRESTACIO = B.C_PRESTACIO'
                '       AND A.C_HISTORIA = 5566'
                '       AND A.C_ESTAT >= 20'
                '       AND A.C_ESTAT <=   29'
                '       AND NOT A.C_ESPERA = 58'
                '       AND A.DATA_PREINGRES >= "TODAY"'
                '[AND FILTRO]'
                '[ORDEN]')
              Dicionario1 = wDataAdmisio.Espera
              Dicionario2 = wDataBasics.Prestacion
              Titulo = 'Prestaciones Pendientes'
              Orden.Strings = (
                'DATA_PREINGRES')
              OrdenDB.Strings = (
                'A.DATA_PREINGRES')
              Filtros = <>
              OrdenAuto = True
              AgrupaPagina = False
              MultiSelect = True
              RowSelect = False
              PrintAncho = 0
              SoloUnaLinea = False
              CamposOculta.Strings = (
                'C_ESTAT')
              PrinterOrientation = poPortrait
              AlSeleccionar = HYPCAlSeleccionar
              AlPintarGrid = HYPCAlPintarGrid
            end
            object Panel9: TPanel
              Left = 497
              Top = 6
              Width = 209
              Height = 37
              BevelOuter = bvNone
              TabOrder = 0
              object bBorrar: TSpeedButton
                Left = 0
                Top = 0
                Width = 209
                Height = 37
                Caption = 'Esborrar prestacions sel'#183'leccionades'
                Flat = True
                Glyph.Data = {
                  F6000000424DF600000000000000760000002800000010000000100000000100
                  0400000000008000000000000000000000001000000010000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                  7777777777777777777777777777777771F77771F7777777777777111F777777
                  1F7777111F777771F777777111F77711F7777777111F711F77777777711111F7
                  7777777777111F7777777777711111F777777777111F71F77777771111F77711
                  F77771111F7777711F77711F7777777711F77777777777777777}
                OnClick = bBorrarClick
              end
            end
          end
        end
        object tsTractaments: TTabSheet
          Caption = 'Tractaments actius'
          ImageIndex = 1
          object HistTract: HYPanelConsulta
            Left = 0
            Top = 0
            Width = 1389
            Height = 253
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Historial de tractaments'
            Color = clSilver
            TabOrder = 0
            Abierta = False
            SqlDic.Strings = (
              
                'SELECT C_PRESTACIO, N_PRESTACIO, DATA_INGRES, C_COORDINADOR, MET' +
                'GE, DATA_ALTA'
              'FROM V_TRACTAMENTS_ACTIUS_SENSEL T'
              'WHERE C_HISTORIA ='
              '7219'
              
                '/*AND T.C_PRESTACIO NOT IN (SELECT C.C_PRESTACOMP FROM PRESTACOM' +
                'P C WHERE C.C_PRESTACIO = T.C_PRESTACIO)*/'
              '[AND FILTRO]'
              '[ORDEN]')
            SqlDicTotal.Strings = (
              'SELECT count(*) as REGISTRES'
              'FROM V_TRACTAMENTS_ACTIUS_SENSEL T'
              'WHERE C_HISTORIA = '
              '7219'
              
                'AND T.C_PRESTACIO NOT IN (SELECT C.C_PRESTACOMP FROM PRESTACOMP ' +
                'C WHERE C.C_PRESTACIO = T.C_PRESTACIO)'
              '[AND FILTRO]'
              '[ORDEN]')
            Dicionario1 = wDataBasics.Tractaments
            Dicionario2 = wDataBasics.PrestaComp
            Titulo = 'Historial de Tractaments'
            Filtros = <>
            OrdenAuto = True
            AgrupaPagina = False
            MultiSelect = False
            RowSelect = False
            PrintAncho = 0
            SoloUnaLinea = False
            PrinterOrientation = poPortrait
            AlPintarGrid = HistTractAlPintarGrid
            object Panel7: TPanel
              Left = 596
              Top = 0
              Width = 793
              Height = 253
              Align = alRight
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              Visible = False
              object qrDieta: TQuickRep
                Left = 0
                Top = 0
                Width = 794
                Height = 1123
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
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
                PrinterSettings.OutputBin = Auto
                PrintIfEmpty = True
                SnapToGrid = True
                Units = MM
                Zoom = 100
                object QRBand1: TQRBand
                  Left = 38
                  Top = 38
                  Width = 718
                  Height = 43
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
                    113.770833333333
                    1899.70833333333)
                  BandType = rbTitle
                  object QRSysData1: TQRSysData
                    Left = 626
                    Top = 12
                    Width = 84
                    Height = 19
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      50.2708333333333
                      1656.29166666667
                      31.75
                      222.25)
                    Alignment = taRightJustify
                    AlignToBand = False
                    AutoSize = True
                    Color = clWhite
                    Data = qrsDateTime
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = False
                    FontSize = 12
                  end
                end
                object QRBand2: TQRBand
                  Left = 38
                  Top = 81
                  Width = 718
                  Height = 199
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
                    526.520833333333
                    1899.70833333333)
                  BandType = rbDetail
                  object QRShape1: TQRShape
                    Left = 8
                    Top = 8
                    Width = 705
                    Height = 183
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      484.1875
                      21.1666666666667
                      21.1666666666667
                      1865.3125)
                    Shape = qrsRectangle
                  end
                  object qrlPacient: TQRLabel
                    Left = 38
                    Top = 21
                    Width = 54
                    Height = 19
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      50.2708333333333
                      100.541666666667
                      55.5625
                      142.875)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Caption = 'Pacient'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRLabel2: TQRLabel
                    Left = 38
                    Top = 69
                    Width = 43
                    Height = 19
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      50.2708333333333
                      100.541666666667
                      182.5625
                      113.770833333333)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Caption = 'Dieta:'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRDBText2: TQRDBText
                    Left = 96
                    Top = 21
                    Width = 72
                    Height = 20
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      52.9166666666667
                      254
                      55.5625
                      190.5)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Color = clWhite
                    DataSet = qDieta
                    DataField = 'PACIENT'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRDBText1: TQRDBText
                    Left = 97
                    Top = 45
                    Width = 50
                    Height = 20
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      52.9166666666667
                      256.645833333333
                      119.0625
                      132.291666666667)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = False
                    AutoStretch = False
                    Color = clWhite
                    DataSet = qDieta
                    DataField = 'C_PLANTA'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRLabel1: TQRLabel
                    Left = 39
                    Top = 45
                    Width = 41
                    Height = 19
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      50.2708333333333
                      103.1875
                      119.0625
                      108.479166666667)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Caption = 'Unitat'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRDBText3: TQRDBText
                    Left = 203
                    Top = 45
                    Width = 56
                    Height = 20
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      52.9166666666667
                      537.104166666667
                      119.0625
                      148.166666666667)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Color = clWhite
                    DataSet = qDieta
                    DataField = 'C_LLIT'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRDBText6: TQRDBText
                    Left = 141
                    Top = 92
                    Width = 556
                    Height = 64
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      169.333333333333
                      373.0625
                      243.416666666667
                      1471.08333333333)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = False
                    AutoStretch = False
                    Color = clWhite
                    DataSet = qDieta
                    DataField = 'OBS_DIETA'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRDBText4: TQRDBText
                    Left = 85
                    Top = 70
                    Width = 612
                    Height = 20
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      52.9166666666667
                      224.895833333333
                      185.208333333333
                      1619.25)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = False
                    AutoStretch = False
                    Color = clWhite
                    DataSet = qDieta
                    DataField = 'N_CODI'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRLabel3: TQRLabel
                    Left = 38
                    Top = 91
                    Width = 101
                    Height = 19
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      50.2708333333333
                      100.541666666667
                      240.770833333333
                      267.229166666667)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Caption = 'Observacions:'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRDBText5: TQRDBText
                    Left = 121
                    Top = 162
                    Width = 108
                    Height = 20
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      52.9166666666667
                      320.145833333333
                      428.625
                      285.75)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Color = clWhite
                    DataSet = qDieta
                    DataField = 'HORA_DINAR'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRLabel4: TQRLabel
                    Left = 38
                    Top = 162
                    Width = 78
                    Height = 19
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      50.2708333333333
                      100.541666666667
                      428.625
                      206.375)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Caption = 'Hora dinar:'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRLabel5: TQRLabel
                    Left = 175
                    Top = 45
                    Width = 21
                    Height = 19
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      50.2708333333333
                      463.020833333333
                      119.0625
                      55.5625)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Caption = 'Llit'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRLabel6: TQRLabel
                    Left = 422
                    Top = 162
                    Width = 98
                    Height = 19
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      50.2708333333333
                      1116.54166666667
                      428.625
                      259.291666666667)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Caption = 'Canvis fets el:'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object qrlHoraCanvis: TQRLabel
                    Left = 524
                    Top = 162
                    Width = 92
                    Height = 20
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      52.9166666666667
                      1386.41666666667
                      428.625
                      243.416666666667)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Caption = 'Hora canvis'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRLabel7: TQRLabel
                    Left = 270
                    Top = 44
                    Width = 63
                    Height = 19
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      50.2708333333333
                      714.375
                      116.416666666667
                      166.6875)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = True
                    AutoStretch = False
                    Caption = 'Ubicaci'#243
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                  object QRDBText7: TQRDBText
                    Left = 337
                    Top = 44
                    Width = 360
                    Height = 20
                    Frame.Color = clBlack
                    Frame.DrawTop = False
                    Frame.DrawBottom = False
                    Frame.DrawLeft = False
                    Frame.DrawRight = False
                    Size.Values = (
                      52.9166666666667
                      891.645833333333
                      116.416666666667
                      952.5)
                    Alignment = taLeftJustify
                    AlignToBand = False
                    AutoSize = False
                    AutoStretch = False
                    Color = clWhite
                    DataSet = qDieta
                    DataField = 'UBICACIO'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    FontSize = 12
                  end
                end
              end
            end
          end
        end
      end
    end
    object tsFacturacio: TTabSheet
      Caption = 'Facturaci'#243
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      object HYArea5: THYArea
        Left = 0
        Top = 0
        Width = 1397
        Height = 705
        Align = alClient
        Color = clWhite
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        DataSource = dsTractaments
        object pEstatFactu: TPanel
          Left = 0
          Top = 0
          Width = 1393
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          Visible = False
          object Eti_tTractaments_EstatFac_N_Codi: THYLabel
            Left = 184
            Top = 3
            Width = 240
            Height = 19
            DataField = 'EstatFac_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditEstatFactu: THYEdit
            Left = 34
            Top = 3
            Width = 135
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Estat Facturaci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'C_EstatFac'
          end
        end
        object pEstatsFacturacion: TPanel
          Left = 0
          Top = 25
          Width = 1393
          Height = 83
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object PapersPendents: TLabel
            Left = 600
            Top = 63
            Width = 119
            Height = 16
            Caption = 'Papers pendents'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object rgEstadosFacturacion: TDBRadioGroup
            Left = 32
            Top = 0
            Width = 185
            Height = 81
            Caption = ' Estats facturaci'#243' '
            DataField = 'C_EstatFac'
            DataSource = dsTractaments
            TabOrder = 0
            OnClick = rgEstadosFacturacionClick
          end
        end
        object Panel13: TPanel
          Left = 0
          Top = 108
          Width = 1393
          Height = 507
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object pFacturacio: TGroupBox
            Left = 32
            Top = 2
            Width = 689
            Height = 382
            Caption = ' Dades facturaci'#243' '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object Panel4: TPanel
              Left = 2
              Top = 203
              Width = 685
              Height = 66
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object pCaducaPermis: TPanel
                Left = 0
                Top = 0
                Width = 685
                Height = 22
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Ed_tTractaments_CaducaPermis: THYEdit
                  Left = 66
                  Top = 3
                  Width = 173
                  Height = 19
                  Idioma = Castellano
                  EtiFontColor = clWindowText
                  Eti = 'Caduca perm'#237's'
                  EtiSepara = 80
                  EtiOrienta = eoIzquierda
                  EtiAlign = taLeftJustify
                  Diccionario = wDataBasics.Tractaments
                  TabOrder = 0
                  AutoSelect = False
                  CharCase = ecUpperCase
                  DataSource = dsTractaments
                  DataField = 'CaducaPermis'
                end
              end
              object pPerPacient: TPanel
                Left = 0
                Top = 22
                Width = 685
                Height = 22
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Ed_tTractaments_PercentatgePacient: THYEdit
                  Left = 67
                  Top = 3
                  Width = 125
                  Height = 19
                  Idioma = Castellano
                  EtiFontColor = clWindowText
                  Eti = '% pacient'
                  EtiSepara = 80
                  EtiOrienta = eoIzquierda
                  EtiAlign = taLeftJustify
                  Diccionario = wDataBasics.Tractaments
                  TabOrder = 0
                  AutoSelect = False
                  CharCase = ecUpperCase
                  DataSource = dsTractaments
                  DataField = 'PercentatgePacient'
                end
              end
              object pReferencia: TPanel
                Left = 0
                Top = 44
                Width = 685
                Height = 25
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 2
                object Ed_tTractaments_Referencia: THYEdit
                  Left = 67
                  Top = 4
                  Width = 293
                  Height = 19
                  Idioma = Castellano
                  EtiFontColor = clWindowText
                  Eti = 'Refer'#232'ncia'
                  EtiSepara = 80
                  EtiOrienta = eoIzquierda
                  EtiAlign = taLeftJustify
                  Diccionario = wDataBasics.Tractaments
                  TabOrder = 0
                  AutoSelect = False
                  CharCase = ecUpperCase
                  DataSource = dsTractaments
                  DataField = 'Referencia'
                end
              end
            end
            object PanelDadesDelegacio: TPanel
              Left = 2
              Top = 89
              Width = 685
              Height = 70
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object Eti_tTractaments_Delegacio_Responsable: THYLabel
                Left = 186
                Top = 1
                Width = 184
                Height = 34
                DataField = 'Delegacio_Responsable'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                Etiqueta = 'Responsable'
                EtiSepara = 14
                EtiOrienta = eoArriba
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Delegacio_Telefono: THYLabel
                Left = 379
                Top = 0
                Width = 118
                Height = 34
                DataField = 'Delegacio_Telefono'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                Etiqueta = 'Tel'#232'fon'
                EtiSepara = 14
                EtiOrienta = eoArriba
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Delegacio_CPostal: THYLabel
                Left = 379
                Top = 36
                Width = 78
                Height = 34
                DataField = 'Delegacio_CPostal'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                Etiqueta = 'Codi postal'
                EtiSepara = 14
                EtiOrienta = eoArriba
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Delegacio_Provincia: THYLabel
                Left = 472
                Top = 36
                Width = 193
                Height = 34
                DataField = 'Delegacio_Provincia'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                Etiqueta = 'Prov'#237'ncia'
                EtiSepara = 14
                EtiOrienta = eoArriba
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Delegacio_Pais: THYLabel
                Left = 186
                Top = 36
                Width = 184
                Height = 34
                DataField = 'Delegacio_Pais'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                Etiqueta = 'Pa'#237's'
                EtiSepara = 14
                EtiOrienta = eoArriba
                EtiAlign = taLeftJustify
              end
              object HYLabel1: THYLabel
                Left = 506
                Top = 0
                Width = 159
                Height = 34
                DataField = 'Delegacio_fax'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                Etiqueta = 'Fax'
                EtiSepara = 14
                EtiOrienta = eoArriba
                EtiAlign = taLeftJustify
              end
            end
            object Panel12: TPanel
              Left = 2
              Top = 15
              Width = 685
              Height = 74
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 2
              object Eti_tTractaments_Centre_N_CentreFac: THYLabel
                Left = 186
                Top = 7
                Width = 160
                Height = 19
                DataField = 'Centre_N_CentreFac'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Client_N_Client: THYLabel
                Left = 186
                Top = 29
                Width = 287
                Height = 19
                DataField = 'Client_N_Client'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Delegacio_N_Delegacio: THYLabel
                Left = 186
                Top = 52
                Width = 286
                Height = 19
                DataField = 'Delegacio_Carrer'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Client_NIF: THYLabel
                Left = 480
                Top = 29
                Width = 185
                Height = 19
                DataField = 'Client_NIF'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Delegacio_Poblacio: THYLabel
                Left = 480
                Top = 52
                Width = 185
                Height = 19
                DataField = 'Delegacio_Poblacio'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Centre: THYEdit
                Left = 66
                Top = 6
                Width = 101
                Height = 19
                Idioma = Castellano
                EtiFontColor = clBlack
                Eti = 'Centre'
                EtiSepara = 80
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                OnExit = CentreExit
                TabOrder = 0
                AutoSelect = False
                CharCase = ecUpperCase
                DataSource = dsTractaments
                DataField = 'C_CentreFac'
              end
              object Client: THYEdit
                Left = 66
                Top = 29
                Width = 109
                Height = 19
                Idioma = Castellano
                EtiFontColor = clBlack
                Eti = 'Client'
                EtiSepara = 80
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 1
                AutoSelect = False
                CharCase = ecUpperCase
                DataSource = dsTractaments
                DataField = 'C_Client'
              end
              object Delegacio: THYEdit
                Left = 66
                Top = 52
                Width = 117
                Height = 19
                Idioma = Castellano
                EtiFontColor = clBlack
                Eti = 'Delegaci'#243
                EtiSepara = 80
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 2
                AutoSelect = False
                CharCase = ecUpperCase
                DataSource = dsTractaments
                DataField = 'C_Delegacio'
              end
            end
            object pBECA: TPanel
              Left = 2
              Top = 293
              Width = 685
              Height = 24
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 4
              Visible = False
              object Label11: TLabel
                Left = 197
                Top = 7
                Width = 8
                Height = 13
                Caption = '%'
              end
              object HYEdit12: THYEdit
                Left = 67
                Top = 3
                Width = 127
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'BECA'
                EtiSepara = 80
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 0
                AutoSelect = False
                CharCase = ecUpperCase
                DataSource = dsTractaments
                DataField = 'BECA'
              end
            end
            object pPressupost: TPanel
              Left = 2
              Top = 269
              Width = 685
              Height = 24
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 3
              object HYEdit13: THYEdit
                Left = 67
                Top = 3
                Width = 293
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'N'#186' Pressupost'
                EtiSepara = 80
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 0
                AutoSelect = False
                CharCase = ecUpperCase
                DataSource = dsTractaments
                DataField = 'Pressupost'
              end
            end
            object pVolant: TPanel
              Left = 2
              Top = 317
              Width = 685
              Height = 49
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              object Eti_tTractaments_Facilitador_COGNOM1: THYLabel
                Left = 174
                Top = 26
                Width = 182
                Height = 19
                DataField = 'Facilitador_COGNOM1'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Facilitador_COGNOM2: THYLabel
                Left = 358
                Top = 26
                Width = 169
                Height = 19
                DataField = 'Facilitador_COGNOM2'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Eti_tTractaments_Facilitador_NOM: THYLabel
                Left = 174
                Top = 2
                Width = 274
                Height = 19
                DataField = 'Facilitador_NOM'
                DataSource = dsTractaments
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Ed_tTractaments_ID_FACILITADOR: THYEdit
                Left = 67
                Top = 1
                Width = 102
                Height = 19
                Hint = 'Enter per llistar els Facilitadors'
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Facilitador'
                EtiSepara = 80
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                OnKeyDown = Ed_tTractaments_ID_FACILITADORKeyDown
                TabOrder = 0
                AutoSelect = False
                DataSource = dsTractaments
                DataField = 'ID_FACILITADOR'
              end
            end
            object pMetgeMutua: TPanel
              Left = 2
              Top = 159
              Width = 685
              Height = 44
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              TabOrder = 6
              object HYEdit14: THYEdit
                Left = 184
                Top = 3
                Width = 401
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Nom contacte m'#232'dic'
                EtiSepara = 105
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 0
                AutoSelect = False
                CharCase = ecUpperCase
                DataSource = dsTractaments
                DataField = 'METGE_MUTUA'
              end
              object HYEdit15: THYEdit
                Left = 184
                Top = 23
                Width = 190
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Telf. contacte m'#232'dic'
                EtiSepara = 105
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 1
                AutoSelect = False
                CharCase = ecUpperCase
                DataSource = dsTractaments
                DataField = 'TELF_METGE_MUTUA'
              end
            end
          end
          object pUnespa: TPanel
            Left = 32
            Top = 388
            Width = 697
            Height = 49
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            Visible = False
            object Label6: TLabel
              Left = 6
              Top = 0
              Width = 163
              Height = 14
              Caption = 'La m'#250'tua t'#233' conveni amb Unespa'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object lDiesConsumitsSolIng: TLabel
              Left = 516
              Top = 20
              Width = 149
              Height = 13
              Caption = '(Informats a sol'#183'licitud d'#39'ingr'#233's: )'
            end
            object Ed_tTractaments_Data_Sinistre: THYEdit
              Left = 5
              Top = 16
              Width = 161
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Data sinistre'
              EtiSepara = 70
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 0
              AutoSelect = False
              DataSource = dsTractaments
              DataField = 'Data_Sinistre'
            end
            object Ed_tTractaments_Matricula_Vehicle: THYEdit
              Left = 184
              Top = 17
              Width = 183
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Matr'#237'cula vehicle'
              EtiSepara = 90
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 1
              AutoSelect = False
              DataSource = dsTractaments
              DataField = 'Matricula_Vehicle'
            end
            object Ed_tTractaments_DiesConsumits: THYEdit
              Left = 380
              Top = 17
              Width = 129
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Dies consumits'
              EtiSepara = 85
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 2
              AutoSelect = False
              DataSource = dsTractaments
              DataField = 'DiesConsumits'
            end
          end
          object pACA: TPanel
            Left = 33
            Top = 438
            Width = 190
            Height = 21
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            Visible = False
            object SIFCO: THYEdit
              Left = 4
              Top = 0
              Width = 167
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'SIFCO'
              EtiSepara = 50
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 0
              AutoSelect = False
              DataSource = dsTractaments
              DataField = 'SIFCO'
            end
          end
          object pCI: TPanel
            Left = 36
            Top = 460
            Width = 187
            Height = 21
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 3
            Visible = False
            object HYEdit7: THYEdit
              Left = 1
              Top = 1
              Width = 167
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'FISS'
              EtiSepara = 50
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 0
              AutoSelect = False
              DataSource = dsTractaments
              DataField = 'FISS'
            end
          end
        end
        object mgcGarant: THyMoveGroupControl
          Left = 456
          Top = 48
          Width = 689
          Height = 396
          Caption = 'Dades del garant'
          TabOrder = 3
          Visible = False
          OnExit = mgcGarantExit
          FontCaption.Charset = DEFAULT_CHARSET
          FontCaption.Color = clWhite
          FontCaption.Height = -11
          FontCaption.Name = 'MS Sans Serif'
          FontCaption.Style = []
          object HYArea6: THYArea
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
        object pGarant: TPanel
          Left = 40
          Top = 589
          Width = 545
          Height = 255
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 4
          Visible = False
          object sGarant: TShape
            Left = 1
            Top = 26
            Width = 498
            Height = 202
          end
          object Label15: TLabel
            Left = 13
            Top = 30
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
          object Eti_tTractaments_Garant_DNI: THYLabel
            Left = 77
            Top = 172
            Width = 175
            Height = 19
            DataField = 'Garant_DNI'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_tTractaments_Garant_ADRESA: THYLabel
            Left = 77
            Top = 148
            Width = 400
            Height = 19
            DataField = 'Garant_ADRESA'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label16: TLabel
            Left = 15
            Top = 76
            Width = 22
            Height = 13
            Caption = 'Nom'
          end
          object Label17: TLabel
            Left = 15
            Top = 176
            Width = 49
            Height = 13
            Caption = 'Document'
          end
          object Label18: TLabel
            Left = 15
            Top = 152
            Width = 34
            Height = 13
            Caption = 'Adre'#231'a'
          end
          object Eti_tTractaments_Garant_COGNOM1: THYLabel
            Left = 77
            Top = 99
            Width = 263
            Height = 19
            DataField = 'Garant_COGNOM1'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_tTractaments_Garant_COGNOM2: THYLabel
            Left = 77
            Top = 123
            Width = 263
            Height = 19
            DataField = 'Garant_COGNOM2'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_tTractaments_Garant_NOM: THYLabel
            Left = 77
            Top = 75
            Width = 263
            Height = 19
            DataField = 'Garant_NOM'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_tTractaments_Garant_RELACIO: THYLabel
            Left = 77
            Top = 196
            Width = 400
            Height = 19
            DataField = 'Garant_RELACIO'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label19: TLabel
            Left = 15
            Top = 200
            Width = 36
            Height = 13
            Caption = 'Relaci'#243
          end
          object Label20: TLabel
            Left = 76
            Top = 5
            Width = 368
            Height = 16
            Caption = 'Omplir nom'#233's en cas que el pagador sigui diferent del pacient'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Ed_tTractaments_ID_GARANT: THYEdit
            Left = 12
            Top = 47
            Width = 203
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'mero identificador de garant'
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'ID_GARANT'
          end
          object bModificarGarant: TButton
            Left = 293
            Top = 45
            Width = 98
            Height = 25
            Caption = 'Modificar dades'
            TabOrder = 1
            OnClick = bModificarGarantClick
          end
          object bNouGarant: TButton
            Left = 218
            Top = 45
            Width = 76
            Height = 25
            Caption = 'Nou garant'
            TabOrder = 2
            OnClick = bNouGarantClick
          end
        end
        object mgcFacilitador: THyMoveGroupControl
          Left = 1091
          Top = 594
          Width = 438
          Height = 159
          Caption = 'Dades del facilitador'
          TabOrder = 5
          Visible = False
          FontCaption.Charset = DEFAULT_CHARSET
          FontCaption.Color = clWhite
          FontCaption.Height = -11
          FontCaption.Name = 'MS Sans Serif'
          FontCaption.Style = []
          object Panel21: TPanel
            Left = 2
            Top = 19
            Width = 434
            Height = 138
            Align = alClient
            BevelOuter = bvNone
            Caption = 'PanelUSRA'
            TabOrder = 0
            object HYArea8: THYArea
              Left = 0
              Top = 25
              Width = 434
              Height = 113
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              ParentColor = False
              TabOrder = 0
              DataSource = dsFacilitadors
              object Ed_tFacilitadors_COGNOM1: THYEdit
                Left = 16
                Top = 43
                Width = 293
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Primer cognom'
                EtiSepara = 100
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataAdmisio.Facilitadors
                TabOrder = 0
                AutoSelect = False
                DataSource = dsFacilitadors
                DataField = 'COGNOM1'
              end
              object Ed_tFacilitadors_COGNOM2: THYEdit
                Left = 16
                Top = 67
                Width = 293
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Segon cognom'
                EtiSepara = 100
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataAdmisio.Facilitadors
                TabOrder = 1
                AutoSelect = False
                DataSource = dsFacilitadors
                DataField = 'COGNOM2'
              end
              object Ed_tFacilitadors_NOM: THYEdit
                Left = 16
                Top = 17
                Width = 400
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Nom / Empresa'
                EtiSepara = 100
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataAdmisio.Facilitadors
                TabOrder = 2
                AutoSelect = False
                DataSource = dsFacilitadors
                DataField = 'NOM'
              end
            end
            object HYBarra5: THYBarra
              Left = 0
              Top = 0
              Width = 434
              Height = 25
              Alignment = taRightJustify
              BevelOuter = bvNone
              Caption = ' '
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              DataSource = dsFacilitadors
              AlCancel = HYBarra5AlCancel
              VerBorrar = False
              VerOrdenar = False
              VerIndices = False
              Titulo = False
              VerPrint = False
              VerRefresh = True
            end
          end
        end
        object pPrescriptor: TPanel
          Left = 584
          Top = 613
          Width = 401
          Height = 60
          BevelInner = bvSpace
          BevelOuter = bvSpace
          BorderStyle = bsSingle
          ParentColor = True
          TabOrder = 6
          object Label28: TLabel
            Left = 13
            Top = 5
            Width = 122
            Height = 13
            Caption = 'Dades del prescriptor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object HYLabel9: THYLabel
            Left = 125
            Top = 23
            Width = 263
            Height = 19
            DataField = 'Prescriptor_Nomsencer'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYEdit18: THYEdit
            Left = 12
            Top = 23
            Width = 105
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Prescriptor'
            EtiSepara = 60
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'C_Prescriptor'
          end
        end
      end
    end
    object tsPreAlta: TTabSheet
      Caption = 'PreAlta'
      ImageIndex = 3
      TabVisible = False
      object AreaPrealta: THYArea
        Left = 0
        Top = 0
        Width = 1405
        Height = 713
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        DataSource = dsTractaments
        object pProgramacioPrestacio: TPanel
          Left = 0
          Top = 304
          Width = 1401
          Height = 188
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 5
          object pProgramacio: TPanel
            Left = 40
            Top = 4
            Width = 481
            Height = 179
            BevelOuter = bvLowered
            ParentColor = True
            TabOrder = 0
            object SpeedButton2: TSpeedButton
              Left = 16
              Top = 8
              Width = 246
              Height = 22
              Caption = 'Cancel'#183'lar la espera programada'
              Flat = True
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333883333333
                3333339118333339833333911183339118333391111839111183333911118111
                1183333391111111183333333911111183333333331111183333333333911118
                3333333339111118333333339111811183333339111839111833333911833391
                1183333391333339111333333333333391933333333333333333}
              Transparent = False
              OnClick = SpeedButton2Click
            end
            object C_PrestaProgramada: THYTextEdit
              Left = 17
              Top = 34
              Width = 185
              Height = 19
              Projecto = wData.Projecte
              Tipo = teConsultaCustom
              ConsultaCustom = PrestaProgramada
              CanNull = True
              CheckValueOnExit = True
              Eti = 'Prestaci'#243' a Programar'
              EtiSepara = 125
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              OnExit = ComprobarDatosPrealta
              TabOrder = 0
              TabStop = True
              AutoSelect = False
              CharCase = ecUpperCase
            end
            object N_PrestaProgramada: THYTextEdit
              Left = 209
              Top = 34
              Width = 254
              Height = 19
              Projecto = wData.Projecte
              Eti = 'Prestaci'#243' a Programar'
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
              Enabled = False
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 6
              TabStop = True
              AutoSelect = False
              ReadOnly = True
            end
            object C_MotiuProgramacio: THYTextEdit
              Left = 17
              Top = 59
              Width = 185
              Height = 19
              AlConsultar = C_MotiuProgramacioAlConsultar
              Projecto = wData.Projecte
              Tipo = teConsultaCustom
              ConsultaCustom = MotiuPrestaProgramada
              CanNull = True
              CheckValueOnExit = True
              Eti = 'Motiu'
              EtiSepara = 125
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              OnChange = C_MotiuProgramacioChange
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnExit = ComprobarDatosPrealta
              TabOrder = 1
              TabStop = True
              AutoSelect = False
              CharCase = ecUpperCase
            end
            object N_MotiuProgramacio: THYTextEdit
              Left = 209
              Top = 59
              Width = 254
              Height = 19
              Projecto = wData.Projecte
              Eti = 'Prestaci'#243' a Programar'
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
              Enabled = False
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              TabStop = True
              AutoSelect = False
              ReadOnly = True
            end
            object FrequenciaProgramacio: THYTextEdit
              Left = 17
              Top = 83
              Width = 185
              Height = 19
              Projecto = wData.Projecte
              Tipo = teConsultaCustom
              ConsultaCustom = FrequenciaProgramada
              CanNull = True
              CheckValueOnExit = True
              Eti = 'Freq'#252#232'ncia'
              EtiSepara = 125
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              OnChange = FrequenciaProgramacioChange
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnExit = ComprobarDatosPrealta
              TabOrder = 2
              TabStop = True
              AutoSelect = False
              CharCase = ecUpperCase
            end
            object ComentariMetge: THYTextEdit
              Left = 17
              Top = 132
              Width = 446
              Height = 19
              Projecto = wData.Projecte
              Eti = 'Comentari Metge'
              EtiSepara = 125
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Size = 40
              OnExit = ComprobarDatosPrealta
              TabOrder = 4
              TabStop = True
              AutoSelect = False
            end
            object ComentariInfermeria: THYTextEdit
              Left = 17
              Top = 156
              Width = 446
              Height = 19
              Projecto = wData.Projecte
              Eti = 'Comentari Infermeria'
              EtiSepara = 125
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Size = 40
              Visible = False
              OnExit = ComprobarDatosPrealta
              TabOrder = 5
              TabStop = True
              AutoSelect = False
            end
            object N_Frequencia: THYTextEdit
              Left = 209
              Top = 83
              Width = 254
              Height = 19
              Projecto = wData.Projecte
              Eti = 'Prestaci'#243' a Programar'
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
              Enabled = False
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 8
              TabStop = True
              AutoSelect = False
              ReadOnly = True
            end
            object CaracterProgramacio: THYTextEdit
              Left = 17
              Top = 107
              Width = 184
              Height = 19
              AlConsultar = CaracterProgramacioAlConsultar
              Projecto = wData.Projecte
              Tipo = teConsultaCustom
              ConsultaCustom = cnsCaracterProgramacio
              CanNull = True
              CheckValueOnExit = True
              Eti = 'Car'#224'cter'
              EtiSepara = 125
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              OnChange = CaracterProgramacioChange
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnExit = ComprobarDatosPrealta
              OnKeyDown = CaracterProgramacioKeyDown
              TabOrder = 3
              TabStop = True
              AutoSelect = False
            end
            object N_CaracterProgramacio: THYTextEdit
              Left = 209
              Top = 107
              Width = 254
              Height = 19
              Projecto = wData.Projecte
              Eti = 'Prestaci'#243' a Programar'
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
              Enabled = False
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 9
              TabStop = True
              AutoSelect = False
              ReadOnly = True
            end
            object Ed_tTractaments_C_EsperaProgramada: THYEdit
              Left = 271
              Top = 10
              Width = 194
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Espera Programada'
              EtiSepara = 125
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              Enabled = False
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 10
              AutoSelect = False
              DataSource = dsTractaments
              DataField = 'C_EsperaProgramada'
            end
          end
        end
        object panel: TPanel
          Left = 0
          Top = 0
          Width = 1401
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object PDataPreAlta: TPanel
            Left = 0
            Top = 0
            Width = 249
            Height = 27
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'PDataPreAlta'
            ParentColor = True
            TabOrder = 0
            object PreAlta: THYEdit
              Left = 42
              Top = 5
              Width = 193
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Data PreAlta'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsTractaments
              DataField = 'Data_PreAlta'
            end
          end
          object pMetgePreAlta: TPanel
            Left = 249
            Top = 0
            Width = 1152
            Height = 27
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Eti_tTractaments_MetgePreAlta_Metge: THYLabel
              Left = 187
              Top = 5
              Width = 160
              Height = 19
              DataField = 'MetgePreAlta_Metge'
              DataSource = dsTractaments
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Ed_tTractaments_C_MetgePreAlta: THYEdit
              Left = 23
              Top = 5
              Width = 145
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Metge PreAlta'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsTractaments
              DataField = 'C_MetgePreAlta'
            end
          end
        end
        object pMotiu: TPanel
          Left = 0
          Top = 53
          Width = 1401
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object Eti_tTractaments_Motiu_N_Codi: THYLabel
            Left = 194
            Top = 3
            Width = 223
            Height = 19
            DataField = 'Motiu_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYEdit4: THYEdit
            Left = 42
            Top = 3
            Width = 130
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Motiu'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'C_Motiu'
          end
        end
        object pComentariMetge: TPanel
          Left = 0
          Top = 177
          Width = 1401
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          Visible = False
          object Label1: TLabel
            Left = 43
            Top = 1
            Width = 80
            Height = 13
            Caption = 'Comentari Metge'
          end
          object MemoMetge: THYMemo
            Left = 42
            Top = 17
            Width = 559
            Height = 32
            DataField = 'ComentariMetge'
            DataSource = dsTractaments
            ParentColor = True
            TabOrder = 0
          end
        end
        object pComentariInfermeria: TPanel
          Left = 0
          Top = 226
          Width = 1401
          Height = 52
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 3
          Visible = False
          object Label3: TLabel
            Left = 43
            Top = 4
            Width = 96
            Height = 13
            Caption = 'Comentari Infermeria'
          end
          object MemoInfermeria: THYMemo
            Left = 42
            Top = 20
            Width = 559
            Height = 32
            DataField = 'ComentariInfermeria'
            DataSource = dsTractaments
            ParentColor = True
            TabOrder = 0
          end
        end
        object pAmbulancia: TPanel
          Left = 0
          Top = 278
          Width = 1401
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 4
          object Check_tTractaments_Ambulancia: THYCheck
            Left = 40
            Top = 7
            Width = 115
            Height = 17
            Caption = 'Ambul'#224'ncia'
            DataField = 'Ambulancia'
            DataSource = dsTractaments
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object pRenovaNPC: TPanel
          Left = 0
          Top = 27
          Width = 1401
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 6
          Visible = False
          object tDataFiContractat: THYEdit
            Left = 42
            Top = 3
            Width = 193
            Height = 19
            Hint = 'Nom'#233's es pot informar si la DATA_PREALTA est'#224' buida'
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data fi contractat'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            OnChange = tDataFiContractatChange
            DataSource = dsTractaments
            DataField = 'Data_fi_contractat'
          end
          object HYEdit9: THYEdit
            Left = 356
            Top = 3
            Width = 193
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data no renovaci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            AutoSelect = False
            CharCase = ecUpperCase
            ReadOnly = True
            DataSource = dsTractaments
            DataField = 'Data_no_renovacio'
          end
          object bbNoRenovaNPC: TButton
            Left = 271
            Top = 4
            Width = 75
            Height = 18
            Hint = 'Nom'#233's disponible si la DATA FI CONTRACTAT est'#224' informada'
            Caption = 'No renova'
            TabOrder = 2
            OnClick = bbNoRenovaNPCClick
          end
        end
        object pDestinacioPreAlta: TPanel
          Left = 0
          Top = 77
          Width = 1401
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 7
          object HYLabel13: THYLabel
            Left = 194
            Top = 19
            Width = 320
            Height = 19
            DataField = 'Destinacio_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object N_HospitalPreAlta: THYLabel
            Left = 194
            Top = 73
            Width = 319
            Height = 19
            DataField = 'HtalDestinacio_N_Hospital'
            DataSource = dsTractaments
            Visible = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object N_Desti_cont_extPreAlta: THYLabel
            Left = 214
            Top = 46
            Width = 300
            Height = 19
            DataField = 'DESTI_CONT_EXT_N_Codi'
            DataSource = dsTractaments
            Visible = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object N_Desti_cont_intPreAlta: THYLabel
            Left = 214
            Top = 46
            Width = 300
            Height = 19
            DataField = 'DESTI_CONT_INT_N_Codi'
            DataSource = dsTractaments
            Visible = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object DestinacioPreAlta: THYEdit
            Left = 42
            Top = 19
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Destinaci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_Destinacio'
          end
          object HospitalPreAlta: THYEdit
            Left = 42
            Top = 73
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Hospital dest'#237
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Visible = False
            TabOrder = 1
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_HospitalDesti'
          end
          object Desti_cont_extPreAlta: THYEdit
            Left = 48
            Top = 46
            Width = 162
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Dest'#237' continu'#239'tat externa'
            EtiSepara = 125
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
            TabOrder = 2
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'Desti_cont_ext'
          end
          object Desti_cont_intPreAlta: THYEdit
            Left = 48
            Top = 46
            Width = 162
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Dest'#237' continu'#239'tat interna'
            EtiSepara = 125
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
            TabOrder = 3
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'Desti_cont_int'
          end
        end
      end
    end
    object tsAlta: TTabSheet
      Caption = 'Alta'
      ImageIndex = 4
      TabVisible = False
      object HYArea7: THYArea
        Left = 0
        Top = 0
        Width = 1405
        Height = 713
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        DataSource = dsTractaments
        object Panel11: TPanel
          Left = 0
          Top = 41
          Width = 1401
          Height = 39
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object pMetgeAlta: TPanel
            Left = 0
            Top = 0
            Width = 337
            Height = 39
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object Eti_tTractaments_MetgeAlta_Metge: THYLabel
              Left = 162
              Top = 10
              Width = 160
              Height = 19
              DataField = 'MetgeAlta_Metge'
              DataSource = dsTractaments
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object MetgeAlta: THYEdit
              Left = 10
              Top = 10
              Width = 145
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Metge alta'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Tractaments
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsTractaments
              DataField = 'C_MetgeAlta'
            end
          end
          object pConfirmacioStock: TPanel
            Left = 337
            Top = 0
            Width = 1064
            Height = 39
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Confirmacio: THYCheck
              Left = 13
              Top = 12
              Width = 122
              Height = 17
              Alignment = taRightJustify
              Caption = 'Confirmacio de stock'
              DataField = 'confirmstock'
              DataSource = dsTractaments
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object pDataAlta: TPanel
          Left = 0
          Top = 0
          Width = 1401
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object Alta: THYEdit
            Left = 10
            Top = 16
            Width = 193
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data alta'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'Data_Alta'
          end
          object edHoraAlta: THYEdit
            Left = 214
            Top = 15
            Width = 115
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hora alta'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 1
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'Hora_Alta'
          end
        end
        object pDestinacio: TPanel
          Left = 0
          Top = 80
          Width = 1401
          Height = 86
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          object Eti_tTractaments_Destinacio_N_Codi: THYLabel
            Left = 162
            Top = 3
            Width = 320
            Height = 19
            DataField = 'Destinacio_N_Codi'
            DataSource = dsTractaments
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object N_Hospital: THYLabel
            Left = 162
            Top = 57
            Width = 319
            Height = 19
            DataField = 'HtalDestinacio_N_Hospital'
            DataSource = dsTractaments
            Visible = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object N_Desti_cont_int: THYLabel
            Left = 182
            Top = 30
            Width = 300
            Height = 19
            DataField = 'DESTI_CONT_INT_N_Codi'
            DataSource = dsTractaments
            Visible = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object N_Desti_cont_ext: THYLabel
            Left = 182
            Top = 30
            Width = 300
            Height = 19
            DataField = 'DESTI_CONT_EXT_N_Codi'
            DataSource = dsTractaments
            Visible = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Destinacio: THYEdit
            Left = 10
            Top = 3
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Destinaci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_Destinacio'
          end
          object Hospital: THYEdit
            Left = 10
            Top = 57
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Hospital dest'#237
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Visible = False
            TabOrder = 1
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsTractaments
            DataField = 'C_HospitalDesti'
          end
          object Desti_cont_ext: THYEdit
            Left = 16
            Top = 30
            Width = 162
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Dest'#237' continu'#239'tat externa'
            EtiSepara = 125
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
            TabOrder = 2
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'Desti_cont_ext'
          end
          object Desti_cont_int: THYEdit
            Left = 16
            Top = 30
            Width = 162
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Dest'#237' continu'#239'tat interna'
            EtiSepara = 125
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
            TabOrder = 3
            AutoSelect = False
            DataSource = dsTractaments
            DataField = 'Desti_cont_int'
          end
        end
      end
    end
  end
  object HYBarra1: THYBarra
    Left = 0
    Top = 60
    Width = 1405
    Height = 28
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clSilver
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    DataSource = dsFiliacio
    AlPost = HYBarra1AlPost
    AlCancel = HYBarra1AlCancel
    VerInsertar = False
    VerEditar = False
    VerConsultar = False
    VerBorrar = False
    VerOrdenar = False
    VerSiguiente = False
    VerAnterior = False
    VerPrimero = False
    VerUltimo = False
    VerSalir = False
    VerIndices = False
    Titulo = False
    VerPrint = False
    VerRefresh = False
    object Label2: TLabel
      Left = 858
      Top = 0
      Width = 133
      Height = 28
      Align = alRight
      AutoSize = False
      Caption = 'Dades Filiaci'#243
      Transparent = True
      Layout = tlCenter
    end
    object Panel6: TPanel
      Left = 991
      Top = 0
      Width = 200
      Height = 28
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 1
        Width = 33
        Height = 25
        Hint = 'Sortir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F3333333F7F333301111111B10333337F333333737F33330111111111
          0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
          0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
          0333337F377777337F333301111111110333337F333333337F33330111111111
          0333337FFFFFFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object bFullFiliacio: TSpeedButton
        Left = 33
        Top = 1
        Width = 86
        Height = 25
        Caption = 'Full &Filiaci'#243
        Flat = True
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
        ParentShowHint = False
        ShowHint = True
        OnClick = bFullFiliacioClick
      end
      object SpeedButton3: TSpeedButton
        Left = 119
        Top = 1
        Width = 79
        Height = 25
        Hint = 'Sortir'
        Caption = '&Etiquetes'
        Flat = True
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
      end
    end
    object pCompromis: TPanel
      Left = 1294
      Top = 0
      Width = 111
      Height = 28
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
    end
    object pNotaCarrec: TPanel
      Left = 1191
      Top = 0
      Width = 103
      Height = 28
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object bNotaCarrec: TSpeedButton
        Left = -3
        Top = 1
        Width = 105
        Height = 25
        Hint = 'Sortir'
        Caption = 'Nota de c'#224'rrrec'
        Flat = True
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
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
    end
    object enfocado: TCheckBox
      Left = 248
      Top = 8
      Width = 0
      Height = 17
      Caption = 'enfocado'
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1405
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      1405
      60)
    object bCalculaLetraNIF: TSpeedButton
      Left = 938
      Top = 33
      Width = 18
      Height = 20
      Hint = 'Recalcula lletra DNI'
      Caption = '!'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = bCalculaLetraNIFClick
    end
    object Eti_tFiliacio_TipusDoc_N_Codi: THYLabel
      Left = 670
      Top = 34
      Width = 169
      Height = 19
      DataField = 'TipusDoc_N_Codi'
      DataSource = dsFiliacio
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Label7: TLabel
      Left = 636
      Top = 18
      Width = 91
      Height = 13
      Caption = 'Tipus de document'
    end
    object sbNCobertura: TSpeedButton
      Left = 1322
      Top = 0
      Width = 87
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Nivell cobertura'
      Flat = True
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = False
      Visible = False
      OnClick = sbNCoberturaClick
    end
    object bScanDoc: TSpeedButton
      Left = 856
      Top = -1
      Width = 65
      Height = 19
      Caption = 'scan doc'
      Flat = True
      OnClick = bScanDocClick
    end
    object Label25: TLabel
      Left = 277
      Top = 6
      Width = 173
      Height = 27
      AutoSize = False
      Caption = 'Segon cognom '#13#10'(DEIXEU-LO BUIT SI NO EN T'#201')'
      WordWrap = True
    end
    object Ed_tFiliacio_NUM_HIST: THYEdit
      Left = 13
      Top = 18
      Width = 76
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Num. Hist'#242'ria'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Filiacio
      TabOrder = 0
      AutoSelect = False
      CharCase = ecUpperCase
      ReadOnly = True
      DataSource = dsFiliacio
      DataField = 'NUM_HIST'
    end
    object Ed_tFiliacio_APELLIDO1: THYEdit
      Left = 702
      Top = 376
      Width = 167
      Height = 33
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Primer Cognom'
      EtiSepara = 14
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Filiacio
      TabOrder = 1
      AutoSelect = False
      CharCase = ecUpperCase
      DataSource = dsFiliacio
      DataField = 'APELLIDO1'
    end
    object Ed_tFiliacio_APELLIDO2: THYEdit
      Left = 276
      Top = 34
      Width = 176
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Filiacio
      TabOrder = 2
      AutoSelect = False
      CharCase = ecUpperCase
      DataSource = dsFiliacio
      DataField = 'APELLIDO2'
    end
    object Nom: THYEdit
      Left = 457
      Top = 18
      Width = 167
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Nom'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Filiacio
      TabOrder = 3
      AutoSelect = False
      CharCase = ecUpperCase
      DataSource = dsFiliacio
      DataField = 'NOMBRE'
    end
    object Ed_tFiliacio_DNI: THYEdit
      Left = 842
      Top = 18
      Width = 91
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Document'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Filiacio_Resum
      TabOrder = 4
      AutoSelect = False
      CharCase = ecUpperCase
      DataSource = dsFiliacio
      DataField = 'DNI'
    end
    object HYEdit6: THYEdit
      Left = 92
      Top = 18
      Width = 179
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Primer cognom'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Filiacio_Resum
      TabOrder = 5
      AutoSelect = False
      CharCase = ecUpperCase
      DataSource = dsFiliacio
      DataField = 'APELLIDO1'
    end
    object Ed_tFiliacio_T_DOC: THYEdit
      Left = 635
      Top = 34
      Width = 31
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
      Diccionario = wDataBasics.Filiacio_Resum
      OnExit = Ed_tFiliacio_T_DOCExit
      TabOrder = 6
      AutoSelect = False
      CharCase = ecUpperCase
      DataSource = dsFiliacio
      DataField = 'T_DOC'
    end
    object pPaisDoc: TPanel
      Left = 960
      Top = 30
      Width = 250
      Height = 27
      BevelOuter = bvNone
      TabOrder = 7
      Visible = False
      object Eti_tFiliacio_PaisDoc_N_Pais: THYLabel
        Left = 59
        Top = 6
        Width = 188
        Height = 19
        DataField = 'PaisDoc_N_Pais'
        DataSource = dsFiliacio
        EtiFontColor = -1
        HyColorNo = False
        EtiSepara = 100
        EtiOrienta = eoNoMostrar
        EtiAlign = taLeftJustify
      end
      object Ed_tFiliacio_PaisDoc: THYEdit
        Left = 1
        Top = 6
        Width = 52
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Pais'
        EtiSepara = 25
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Filiacio_Resum
        TabOrder = 0
        AutoSelect = False
        DataSource = dsFiliacio
        DataField = 'PAIS_DOC'
      end
    end
  end
  object Panel3: TPanel
    Left = 270
    Top = 65
    Width = 527
    Height = 19
    BevelOuter = bvNone
    TabOrder = 3
    object lMORT: TLabel
      Left = -1
      Top = 0
      Width = 184
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'EXITUS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object bCanviPrestacio: TSpeedButton
      Left = 501
      Top = -1
      Width = 20
      Height = 20
      Flat = True
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        180000000000680200000000000000000000000000000000000085B7850F6F0F
        1674161A761A1A761A187818177917137D130D7F0D0A7E0A077C07027B020070
        007FB07F00001183111F8C1F2A912A2F932F2E942E2C962C299A29239E231CA3
        1C15A4150DA40D059F05019101006F000000198D192C962C379C373D9F3D3C9F
        3C39A139A3D6A3FFFFFF24AF241CB11C13B2130AAD0A049F0402790200002291
        22389C3843A24348A44845A54542A642FFFFFFFFFFFFFFFFFF21B52118B6180E
        B10E08A308057E0500002C962C42A0424CA54C4FA74F4CA74C46A74640AA40FF
        FFFFFFFFFFFFFFFF1AB31A14AF140FA30F0B800B0000359A354BA54B52A85253
        A9534EA84E49A74941A84138AA38FFFFFFFFFFFFFFFFFF19AC1918A218128212
        00003F9F3F53A953FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF1F9E1F188118000045A2455AAC5AFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF259A251D7F1D00004FA74F63B163
        61AF6159AB5951A65148A2483F9F3F369C36FFFFFFFFFFFFFFFFFF2699262A97
        2A217E21000053A9536CB66C68B4685EAD5E54A8544CA34C429F42FFFFFFFFFF
        FFFFFFFF2997292B982B2D952D237E2300005EAF5E7ABD7A70B87063B0635AAB
        5A52A652FFFFFFFFFFFFFFFFFF3399333099303098302F942F237D2300006BB5
        6B8DC68D80C0806FB76F67B26760AE60B4D9B4FFFFFF4CA54C49A44941A1413A
        9D3A3095301E7A1E000077BB779DCF9D8CC68C79BC7970B87069B46965B26562
        B0625DAE5D56AB564EA74E41A1412F942F1977190000B1D8B176BB7667B3675B
        AD5B54A9544FA74F4AA44A4BA54B46A3463FA03F3B9E3B319831238C238ABB8A
        0000}
      Margin = 1
      Spacing = 0
      Visible = False
      OnClick = bCanviPrestacioClick
    end
    object lPrestacio: THYTextEdit
      Left = 187
      Top = 0
      Width = 309
      Height = 18
      Projecto = wData.Projecte
      Eti = 'Prestaci'#243
      EtiSepara = 60
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      TabStop = True
      AutoSelect = False
      CharCase = ecUpperCase
      ReadOnly = True
    end
  end
  object mgUSRA: THyMoveGroupControl
    Left = 931
    Top = 212
    Width = 561
    Height = 311
    Caption = 'Dades del parent'
    TabOrder = 4
    Visible = False
    FontCaption.Charset = DEFAULT_CHARSET
    FontCaption.Color = clWhite
    FontCaption.Height = -11
    FontCaption.Name = 'MS Sans Serif'
    FontCaption.Style = []
    object PanelUSRA: TPanel
      Left = 2
      Top = 19
      Width = 557
      Height = 290
      Align = alClient
      BevelOuter = bvNone
      Caption = 'PanelUSRA'
      TabOrder = 0
      object HYBarra2: THYBarra
        Left = 0
        Top = 0
        Width = 557
        Height = 28
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = ' '
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        DataSource = dsParent
        VerInsertar = False
        VerEditar = False
        VerConsultar = False
        VerBorrar = False
        VerOrdenar = False
        VerSiguiente = False
        VerAnterior = False
        VerPrimero = False
        VerUltimo = False
        VerSalir = False
        VerIndices = False
        Titulo = False
        VerPrint = False
        VerRefresh = False
        object bCerrarUSRA: TSpeedButton
          Left = 514
          Top = 1
          Width = 35
          Height = 25
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
            03333377777777777F333301111111110333337F333333337F33330111111111
            0333337F333333337F333301111111110333337F333333337F33330111111111
            0333337F333333337F333301111111110333337F333333337F33330111111111
            0333337F3333333F7F333301111111B10333337F333333737F33330111111111
            0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
            0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
            0333337F377777337F333301111111110333337F333333337F33330111111111
            0333337FFFFFFFFF7F3333000000000003333377777777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = bCerrarUSRAClick
        end
      end
      object HYArea2: THYArea
        Left = 0
        Top = 28
        Width = 557
        Height = 262
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        ParentColor = False
        TabOrder = 1
        DataSource = dsParent
        object Ed_tParent_POBLACIO: THYEdit
          Left = 182
          Top = 143
          Width = 258
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Poblaci'#243
          EtiSepara = 70
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 5
          AutoSelect = False
          CharCase = ecUpperCase
          DataSource = dsParent
          DataField = 'POBLACIO'
        end
        object Ed_tParent_PROVINCIA: THYEdit
          Left = 182
          Top = 167
          Width = 257
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Prov'#237'ncia'
          EtiSepara = 70
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 6
          AutoSelect = False
          CharCase = ecUpperCase
          DataSource = dsParent
          DataField = 'PROVINCIA'
        end
        object Ed_tParent_NOM: THYEdit
          Left = 25
          Top = 46
          Width = 268
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Nom'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 0
          AutoSelect = False
          CharCase = ecUpperCase
          DataSource = dsParent
          DataField = 'NOM'
        end
        object Ed_tParent_COGNOM1: THYEdit
          Left = 25
          Top = 70
          Width = 268
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = '1r cognom'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 1
          AutoSelect = False
          CharCase = ecUpperCase
          DataSource = dsParent
          DataField = 'COGNOM1'
        end
        object Ed_tParent_COGNOM2: THYEdit
          Left = 25
          Top = 94
          Width = 268
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = '2n cognom'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 2
          AutoSelect = False
          CharCase = ecUpperCase
          DataSource = dsParent
          DataField = 'COGNOM2'
        end
        object Ed_tParent_ADRECA: THYEdit
          Left = 25
          Top = 118
          Width = 508
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Adre'#231'a'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 3
          AutoSelect = False
          CharCase = ecUpperCase
          DataSource = dsParent
          DataField = 'ADRECA'
        end
        object Ed_tParent_CODI: THYEdit
          Left = 25
          Top = 143
          Width = 145
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Codi postal'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 4
          AutoSelect = False
          CharCase = ecUpperCase
          DataSource = dsParent
          DataField = 'CODI'
        end
        object Ed_tParent_TELEFON: THYEdit
          Left = 25
          Top = 192
          Width = 228
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Tel'#232'fon'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 7
          AutoSelect = False
          CharCase = ecUpperCase
          DataSource = dsParent
          DataField = 'TELEFON'
        end
        object Ed_tParent_DATANAC: THYEdit
          Left = 24
          Top = 218
          Width = 229
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Data naixement'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 8
          AutoSelect = False
          CharCase = ecUpperCase
          DataSource = dsParent
          DataField = 'DATANAC'
        end
        object Ed_tParent_NUMPAR: THYEdit
          Left = 25
          Top = 22
          Width = 137
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Parella'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataBasics.Parent
          TabOrder = 9
          AutoSelect = False
          CharCase = ecUpperCase
          ReadOnly = True
          DataSource = dsParent
          DataField = 'NUMPAR'
        end
      end
    end
  end
  object logRCA: TMemo
    Left = 1186
    Top = 76
    Width = 29
    Height = 20
    TabOrder = 6
    Visible = False
  end
  object tFiliacio: ThySqlTable
    AfterOpen = tFiliacioAfterOpen
    BeforeEdit = tFiliacioBeforeEdit
    BeforePost = tFiliacioBeforePost
    BeforeScroll = tFiliacioBeforeScroll
    AfterScroll = tFiliacioAfterScroll
    OnCalcFields = tFiliacioCalcFields
    DatabaseName = 'Interna'
    RequestLive = True
    UniDirectional = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Filiacio_Resum
    IndiceActivo = 'Historia'
    CalcSimple = False
    AlConsultarCampo = tFiliacioAlConsultarCampo
    AlConsultarCampoFiltro2 = tFiliacioAlConsultarCampoFiltro2
    AutoPost = False
    New.Active = True
    New.IndexAsc = 'Historia'
    New.OrderDbField = 'NUM_HIST'
    New.OpenFisrt = False
    Left = 960
    Top = 521
    object tFiliacio_NUM_HIST: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'm. Hist'#242'ria'
      DisplayWidth = 4
      FieldName = 'NUM_HIST'
    end
    object tFiliacio_APELLIDO1: TStringField
      Tag = 100
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldName = 'APELLIDO1'
    end
    object tFiliacio_APELLIDO2: TStringField
      Tag = 100
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldName = 'APELLIDO2'
    end
    object tFiliacio_NOMBRE: TStringField
      Tag = 100
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldName = 'NOMBRE'
    end
    object tFiliacio_NomComplet: TStringField
      Tag = 100
      DisplayLabel = 'Nom complet'
      DisplayWidth = 80
      FieldName = 'NomComplet'
      ReadOnly = True
      Size = 80
    end
    object tFiliacio_DNI: TStringField
      Tag = 100
      DisplayLabel = 'Dni'
      DisplayWidth = 9
      FieldName = 'DNI'
      Size = 9
    end
    object tFiliacio_NOMVIA: TStringField
      Tag = 100
      DisplayLabel = 'Nomvia'
      DisplayWidth = 50
      FieldName = 'NOMVIA'
      Size = 50
    end
    object tFiliacio_ADRESA: TStringField
      Tag = 100
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 80
      FieldName = 'ADRESA'
      Size = 80
    end
    object tFiliacio_TELEFONO: TStringField
      Tag = 100
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldName = 'TELEFONO'
      Size = 10
    end
    object tFiliacio_email: TStringField
      Tag = 100
      DisplayWidth = 60
      FieldName = 'email'
      Size = 60
    end
    object tFiliacio_TIPUSVIA: TStringField
      Tag = 100
      DisplayLabel = 'Tipusvia'
      DisplayWidth = 4
      FieldName = 'TIPUSVIA'
      Size = 4
    end
    object tFiliacio_CODIGO: TStringField
      Tag = 100
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Size = 5
    end
    object tFiliacio_NUMERO: TStringField
      Tag = 100
      DisplayLabel = 'Numero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Size = 10
    end
    object tFiliacio_BLOC: TStringField
      Tag = 100
      DisplayLabel = 'Bloc'
      DisplayWidth = 2
      FieldName = 'BLOC'
      Size = 2
    end
    object tFiliacio_ESCALA: TStringField
      Tag = 100
      DisplayLabel = 'Escala'
      DisplayWidth = 2
      FieldName = 'ESCALA'
      Size = 2
    end
    object tFiliacio_PIS: TStringField
      Tag = 100
      DisplayLabel = 'Pis'
      DisplayWidth = 5
      FieldName = 'PIS'
      Size = 5
    end
    object tFiliacio_PORTA: TStringField
      Tag = 100
      DisplayLabel = 'Porta'
      DisplayWidth = 3
      FieldName = 'PORTA'
      Size = 3
    end
    object tFiliacio_POBLACIO: TStringField
      Tag = 100
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldName = 'POBLACIO'
      Size = 44
    end
    object tFiliacio_PROVINCIA: TStringField
      Tag = 100
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldName = 'PROVINCIA'
      Size = 44
    end
    object tFiliacio_RESIDENCIA: TStringField
      Tag = 100
      DisplayLabel = 'Residencia'
      DisplayWidth = 7
      FieldName = 'RESIDENCIA'
      Size = 7
    end
    object tFiliacio_PAIS: TStringField
      Tag = 100
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldName = 'PAIS'
      Size = 3
    end
    object tFiliacio_SEXO: TStringField
      Tag = 100
      DisplayLabel = 'Sexe'
      DisplayWidth = 1
      FieldName = 'SEXO'
      Size = 1
    end
    object tFiliacio_FECHA_NAC: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Naix.'
      DisplayWidth = 11
      FieldName = 'FECHA_NAC'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tFiliacio_LUGAR_NAC: TStringField
      Tag = 100
      DisplayLabel = 'Lloc Naix.'
      DisplayWidth = 44
      FieldName = 'LUGAR_NAC'
      Size = 44
    end
    object tFiliacio_ESTADO_CIV: TStringField
      Tag = 100
      DisplayLabel = 'Estat Civil'
      DisplayWidth = 2
      FieldName = 'ESTADO_CIV'
      Size = 2
    end
    object tFiliacio_Edat: TIntegerField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Edat'
      ReadOnly = True
    end
    object tFiliacio_SOE: TStringField
      Tag = 100
      DisplayLabel = 'Soe'
      DisplayWidth = 12
      FieldName = 'SOE'
      Size = 12
    end
    object tFiliacio_TSI: TStringField
      Tag = 100
      DisplayLabel = 'Tsi'
      DisplayWidth = 14
      FieldName = 'TSI'
      Size = 14
    end
    object tFiliacio_TITULAR: TStringField
      Tag = 100
      DisplayLabel = 'Titular'
      DisplayWidth = 1
      FieldName = 'TITULAR'
      Size = 1
    end
    object tFiliacio_PENSIONIST: TStringField
      Tag = 100
      DisplayLabel = 'Pensionista'
      DisplayWidth = 1
      FieldName = 'PENSIONIST'
      Size = 1
    end
    object tFiliacio_IDIOMA: TSmallintField
      Tag = 100
      DisplayLabel = 'Idioma'
      DisplayWidth = 2
      FieldName = 'IDIOMA'
    end
    object tFiliacio_TELEFO1_FAM: TStringField
      Tag = 100
      DisplayLabel = 'Telefo1 Fam'
      DisplayWidth = 10
      FieldName = 'TELEFO1_FAM'
      Size = 10
    end
    object tFiliacio_DESCRIPCIO1: TStringField
      Tag = 100
      DisplayLabel = 'Descripcio1'
      DisplayWidth = 30
      FieldName = 'DESCRIPCIO1'
      Size = 30
    end
    object tFiliacio_TELEFO2_FAM: TStringField
      Tag = 100
      DisplayLabel = 'Telefo2 Fam'
      DisplayWidth = 10
      FieldName = 'TELEFO2_FAM'
      Size = 10
    end
    object tFiliacio_DESCRIPCIO2: TStringField
      Tag = 100
      DisplayLabel = 'Descripcio2'
      DisplayWidth = 30
      FieldName = 'DESCRIPCIO2'
      Size = 30
    end
    object tFiliacio_AMIC: TFloatField
      Tag = 100
      DisplayLabel = 'Amic'
      DisplayWidth = 8
      FieldName = 'AMIC'
      DisplayFormat = '#,##0.###;; '
    end
    object tFiliacio_MORT: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Defunci'#243
      DisplayWidth = 11
      FieldName = 'MORT'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tFiliacio_EsViu: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'EsViu'
      Size = 1
    end
    object tFiliacio_USRA: TIntegerField
      Tag = 100
      DisplayLabel = 'Usra'
      DisplayWidth = 4
      FieldName = 'USRA'
      DisplayFormat = '#,##0;; '
    end
    object tFiliacio_UNITAT: TSmallintField
      Tag = 100
      DisplayLabel = 'Unitat'
      DisplayWidth = 3
      FieldName = 'UNITAT'
      DisplayFormat = '#,##0;; '
    end
    object tFiliacio_Bloqueig: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Bloqueig'
      Size = 1
    end
    object tFiliacio_Objectius: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Objectius'
      DisplayFormat = '#,##0;; '
    end
    object tFiliacio_Data_Contacte: TDateTimeField
      Tag = 100
      DisplayLabel = '1'#186' Contacte'
      DisplayWidth = 11
      FieldName = 'Data_Contacte'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tFiliacio_Data_UltimContacte: TDateTimeField
      Tag = 100
      DisplayLabel = 'Ultim Contacte'
      DisplayWidth = 11
      FieldName = 'Data_UltimContacte'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tFiliacio_Ultima1: TDateTimeField
      Tag = 100
      DisplayWidth = 11
      FieldName = 'Ultima1'
      ReadOnly = True
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tFiliacio_C_Dieta: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi Dieta'
      DisplayWidth = 2
      FieldName = 'C_Dieta'
    end
    object tFiliacio_Obs_Dieta: TStringField
      Tag = 100
      DisplayLabel = 'Observacions Dieta'
      DisplayWidth = 40
      FieldName = 'Obs_Dieta'
      Size = 40
    end
    object tFiliacio_ConsentimentInf: TStringField
      Tag = 100
      DisplayLabel = 'Consentiment Informat'
      DisplayWidth = 40
      FieldName = 'ConsentimentInf'
      Size = 40
    end
    object tFiliacio_c_Unitatmedica: TSmallintField
      Tag = 100
      DisplayLabel = 'Unitat m'#232'dica'
      DisplayWidth = 3
      FieldName = 'c_Unitatmedica'
      DisplayFormat = '#,##0;; '
    end
    object tFiliacio_UM_antiga: TSmallintField
      Tag = 100
      DisplayLabel = 'UM antiga'
      DisplayWidth = 3
      FieldName = 'UM_antiga'
    end
    object tFiliacio_C_HOSPITAL: TSmallintField
      Tag = 100
      DisplayLabel = 'Hospital primera atenci'#243
      DisplayWidth = 8
      FieldName = 'C_HOSPITAL'
    end
    object tFiliacio_Consentiment: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Consentiment'
      Size = 1
    end
    object tFiliacio_T_DOC: TStringField
      Tag = 100
      DisplayLabel = 'Tipus de document'
      DisplayWidth = 1
      FieldName = 'T_DOC'
      Origin = 'INTERNA.FILIACIO.T_DOC'
      FixedChar = True
      Size = 1
    end
    object tFiliacio_CORRESPONDENCIA: TStringField
      Tag = 100
      DisplayLabel = 'Rebre correspond'#232'ncia'
      DisplayWidth = 1
      FieldName = 'CORRESPONDENCIA'
      Size = 1
    end
    object tFiliacio_SNS: TStringField
      Tag = 100
      DisplayLabel = 'N'#250'm. del Servicio Nacional de Salud'
      DisplayWidth = 25
      FieldName = 'SNS'
      Origin = 'INTERNA.FILIACIO.SNS'
      Size = 25
    end
    object tFiliacio_PAIS_NAIX: TStringField
      Tag = 100
      DisplayLabel = 'Pais naixement'
      DisplayWidth = 3
      FieldName = 'PAIS_NAIX'
      Origin = 'INTERNA.FILIACIO.PAIS_NAIX'
      Size = 3
    end
    object tFiliacio_CCAA: TStringField
      Tag = 100
      DisplayLabel = 'Comunitat aut'#242'noma'
      DisplayWidth = 15
      FieldName = 'CCAA'
      Size = 15
    end
    object tFiliacio_Nivell_cobertura: TSmallintField
      Tag = 100
      DisplayLabel = 'Nivell de cobertura RCA'
      DisplayWidth = 3
      FieldName = 'Nivell_cobertura'
    end
    object tFiliacio_PAIS_DOC: TStringField
      Tag = 100
      DisplayLabel = 'Pais document'
      DisplayWidth = 3
      FieldName = 'PAIS_DOC'
      Size = 3
    end
    object tFiliacio_SMS: TStringField
      Tag = 100
      DisplayLabel = 'Rebre SMS'
      DisplayWidth = 1
      FieldName = 'SMS'
      Size = 1
    end
    object tFiliacio_REVISTA: TStringField
      Tag = 100
      DisplayLabel = 'Rebre REVISTA'
      DisplayWidth = 1
      FieldName = 'REVISTA'
      Size = 1
    end
    object tFiliacio_Autoritza_llit: TStringField
      Tag = 100
      DisplayLabel = 'Comunicar LLIT a visites'
      DisplayWidth = 1
      FieldName = 'AUTORITZA_LLIT'
      Origin = 'INTERNA.FILIACIO.AUTORITZA_LLIT'
      FixedChar = True
      Size = 1
    end
    object tFiliacio_Autoritza_enquestes: TStringField
      Tag = 100
      DisplayLabel = 'Autoritza ENQUESTES'
      DisplayWidth = 1
      FieldName = 'AUTORITZA_ENQUESTES'
      Origin = 'INTERNA.FILIACIO.AUTORITZA_ENQUESTES'
      FixedChar = True
      Size = 1
    end
    object tFiliacio_Autoritza_investigacio: TStringField
      Tag = 100
      DisplayLabel = 'Autoritza PROJECTES INVESTIGACI'#211
      DisplayWidth = 1
      FieldName = 'Autoritza_investigacio'
      Size = 1
    end
    object tFiliacioDATA_LESSIO: TDateTimeField
      FieldName = 'DATA_LESSIO'
      Origin = 'INTERNA.FILIACIO.DATA_LESSIO'
    end
    object tFiliacio_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'TipusVia_C_Via'
      LookupKeyFields = 'C_Via'
      KeyFields = 'TipusVia'
      Size = 4
      Calculated = True
    end
    object tFiliacio_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Via'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TipusVia_N_Via'
      LookupKeyFields = 'N_Via'
      KeyFields = 'TipusVia'
      Calculated = True
    end
    object tFiliacio_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Via2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TipusVia_N_Via2'
      LookupKeyFields = 'N_Via2'
      KeyFields = 'TipusVia'
      Calculated = True
    end
    object tFiliacio_C1_0: TStringField
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
    object tFiliacio_C1_1: TStringField
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
    object tFiliacio_C1_2: TStringField
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
    object tFiliacio_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'Estat Civil'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'EstatCivil_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'EstatCivil'
      Size = 2
      Calculated = True
    end
    object tFiliacio_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Catala'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'EstatCivil_N_Estat'
      LookupKeyFields = 'N_Estat'
      KeyFields = 'EstatCivil'
      Calculated = True
    end
    object tFiliacio_C3_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Idioma_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Idioma'
      Calculated = True
    end
    object tFiliacio_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Idioma_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Idioma'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C3_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Idioma_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Idioma'
      Calculated = True
    end
    object tFiliacio_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Idioma_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Idioma'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C3_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Idioma_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Idioma'
      Size = 10
      Calculated = True
    end
    object tFiliacio_C4_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Numpar'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Parent_NUMPAR'
      LookupKeyFields = 'NUMPAR'
      KeyFields = 'Parent'
      DisplayFormat = '#,##0.###;; '
      Calculated = True
    end
    object tFiliacio_C4_1: TIntegerField
      Tag = 101
      DisplayLabel = 'Num Hist'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Parent_NUM_HIST'
      LookupKeyFields = 'NUM_HIST'
      KeyFields = 'Parent'
      DisplayFormat = '#,##0.###;; '
      Calculated = True
    end
    object tFiliacio_C4_2: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Parent_NOM'
      LookupKeyFields = 'NOM'
      KeyFields = 'Parent'
      Size = 15
      Calculated = True
    end
    object tFiliacio_C4_3: TStringField
      Tag = 101
      DisplayLabel = '1'#186' Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Parent_COGNOM1'
      LookupKeyFields = 'COGNOM1'
      KeyFields = 'Parent'
      Calculated = True
    end
    object tFiliacio_C4_4: TStringField
      Tag = 101
      DisplayLabel = '2'#186' Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Parent_COGNOM2'
      LookupKeyFields = 'COGNOM2'
      KeyFields = 'Parent'
      Calculated = True
    end
    object tFiliacio_C5_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Unitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object tFiliacio_C5_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Unitat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Unitat'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C5_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Unitat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object tFiliacio_C5_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Unitat_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Unitat'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C5_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Unitat_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Unitat'
      Size = 10
      Calculated = True
    end
    object tFiliacio_C6_0: TStringField
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
    object tFiliacio_C6_1: TStringField
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
    object tFiliacio_C6_2: TStringField
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
    object tFiliacio_C6_3: TStringField
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
    object tFiliacio_C7_0: TStringField
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
    object tFiliacio_C7_1: TStringField
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
    object tFiliacio_C7_2: TStringField
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
    object tFiliacio_C7_3: TStringField
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
    object tFiliacio_C8_0: TStringField
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
    object tFiliacio_C8_1: TStringField
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
    object tFiliacio_C9_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Dieta_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Dieta'
      Calculated = True
    end
    object tFiliacio_C9_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Dieta_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Dieta'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C9_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Dieta_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Dieta'
      Calculated = True
    end
    object tFiliacio_C9_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Dieta_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Dieta'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C9_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Dieta_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Dieta'
      Size = 10
      Calculated = True
    end
    object tFiliacio_C10_0: TSmallintField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'UnitatM_C_UNITATM'
      LookupKeyFields = 'C_UNITATM'
      KeyFields = 'UnitatM'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tFiliacio_C10_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'UnitatM_N_UNITATM'
      LookupKeyFields = 'N_UNITATM'
      KeyFields = 'UnitatM'
      Size = 30
      Calculated = True
    end
    object tFiliacio_C10_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat Administrativa'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'UnitatM_C_UNITATA'
      LookupKeyFields = 'C_UNITATA'
      KeyFields = 'UnitatM'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tFiliacio_C10_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat RM'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'UnitatM_C_UNITATRM'
      LookupKeyFields = 'C_UNITATRM'
      KeyFields = 'UnitatM'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tFiliacio_C10_4: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'UnitatM_BAIXA'
      LookupKeyFields = 'BAIXA'
      KeyFields = 'UnitatM'
      Size = 1
      Calculated = True
    end
    object tFiliacio_C10_5: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'UnitatM_C_GRUP'
      LookupKeyFields = 'C_GRUP'
      KeyFields = 'UnitatM'
      Size = 1
      Calculated = True
    end
    object tFiliacio_C11_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'UMantiga_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'UMantiga'
      Calculated = True
    end
    object tFiliacio_C11_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'UMantiga_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'UMantiga'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C11_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'UMantiga_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'UMantiga'
      Calculated = True
    end
    object tFiliacio_C11_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'UMantiga_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'UMantiga'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C11_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'UMantiga_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'UMantiga'
      Size = 10
      Calculated = True
    end
    object tFiliacio_C12_0: TSmallintField
      Tag = 101
      DisplayLabel = 'N'#186' Hospital'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Hospital_C_Hospital'
      LookupKeyFields = 'C_Hospital'
      KeyFields = 'Hospital'
      Calculated = True
    end
    object tFiliacio_C12_1: TStringField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Hospital_CODI'
      LookupKeyFields = 'CODI'
      KeyFields = 'Hospital'
      Size = 9
      Calculated = True
    end
    object tFiliacio_C12_2: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 62
      FieldKind = fkCalculated
      FieldName = 'Hospital_N_Hospital'
      LookupKeyFields = 'N_Hospital'
      KeyFields = 'Hospital'
      Size = 62
      Calculated = True
    end
    object tFiliacio_C12_3: TStringField
      Tag = 101
      DisplayLabel = 'Unitat Productiva'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Hospital_C_UP'
      LookupKeyFields = 'C_UP'
      KeyFields = 'Hospital'
      Size = 5
      Calculated = True
    end
    object tFiliacio_C12_4: TStringField
      Tag = 101
      DisplayLabel = 'Tipus UP'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Hospital_Tipus_UP'
      LookupKeyFields = 'Tipus_UP'
      KeyFields = 'Hospital'
      Size = 2
      Calculated = True
    end
    object tFiliacio_C12_5: TStringField
      Tag = 101
      DisplayLabel = 'Actiu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Hospital_Actiu'
      LookupKeyFields = 'Actiu'
      KeyFields = 'Hospital'
      Size = 1
      Calculated = True
    end
    object tFiliacio_C12_6: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Hospital_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'Hospital'
      Size = 44
      Calculated = True
    end
    object tFiliacio_C12_7: TStringField
      Tag = 101
      DisplayLabel = 'Es centre de dany cerebral'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Hospital_DANY_CEREBRAL'
      LookupKeyFields = 'DANY_CEREBRAL'
      KeyFields = 'Hospital'
      Size = 1
      Calculated = True
    end
    object tFiliacio_C13_0: TStringField
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
    object tFiliacio_C13_1: TStringField
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
    object tFiliacio_C14_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi Pa'#237's'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'PaisNaix_C_Pais'
      LookupKeyFields = 'C_Pais'
      KeyFields = 'PaisNaix'
      Size = 3
      Calculated = True
    end
    object tFiliacio_C14_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Pa'#237's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'PaisNaix_N_Pais'
      LookupKeyFields = 'N_Pais'
      KeyFields = 'PaisNaix'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C14_2: TStringField
      Tag = 101
      DisplayLabel = 'Codi SCS'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'PaisNaix_c_iso'
      LookupKeyFields = 'c_iso'
      KeyFields = 'PaisNaix'
      Size = 3
      Calculated = True
    end
    object tFiliacio_C15_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CCAA_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'CCAA'
      Size = 15
      Calculated = True
    end
    object tFiliacio_C15_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'CCAA_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'CCAA'
      Size = 60
      Calculated = True
    end
    object tFiliacio_C15_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'CCAA_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'CCAA'
      Size = 60
      Calculated = True
    end
    object tFiliacio_C15_3: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'CCAA_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'CCAA'
      Size = 10
      Calculated = True
    end
    object tFiliacio_C16_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cobertura_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'cobertura'
      Calculated = True
    end
    object tFiliacio_C16_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'cobertura_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'cobertura'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C16_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'cobertura_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'cobertura'
      Calculated = True
    end
    object tFiliacio_C16_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'cobertura_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'cobertura'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C16_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'cobertura_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'cobertura'
      Size = 10
      Calculated = True
    end
    object tFiliacio_C17_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi Pa'#237's'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'PaisDoc_C_Pais'
      LookupKeyFields = 'C_Pais'
      KeyFields = 'PaisDoc'
      Size = 3
      Calculated = True
    end
    object tFiliacio_C17_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Pa'#237's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'PaisDoc_N_Pais'
      LookupKeyFields = 'N_Pais'
      KeyFields = 'PaisDoc'
      Size = 40
      Calculated = True
    end
    object tFiliacio_C17_2: TStringField
      Tag = 101
      DisplayLabel = 'Codi SCS'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'PaisDoc_c_iso'
      LookupKeyFields = 'c_iso'
      KeyFields = 'PaisDoc'
      Size = 3
      Calculated = True
    end
  end
  object tTractaments: ThySqlTable
    AfterOpen = tTractamentsAfterOpen
    BeforeInsert = tTractamentsBeforeInsert
    AfterInsert = tTractamentsAfterInsert
    BeforeEdit = tTractamentsBeforeEdit
    AfterEdit = tTractamentsAfterEdit
    BeforePost = tTractamentsBeforePost
    AfterPost = tTractamentsAfterPost
    AfterScroll = tTractamentsAfterScroll
    OnCalcFields = tTractamentsCalcFields
    DatabaseName = 'Interna'
    RequestLive = True
    UniDirectional = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Tractaments
    IndiceActivo = 'Tractament'
    CalcSimple = False
    AlConsultarCampo = tTractamentsAlConsultarCampo
    AlConsultarCampoFiltro2 = tTractamentsAlConsultarCampoFiltro2
    AlConsultaChanged = tTractamentsAlConsultaChanged
    AutoPost = False
    New.Active = True
    New.IndexAsc = 'Tractament'
    New.OrderDbField = 'C_Tractament'
    Left = 1088
    Top = 520
    object tTractaments_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
      DisplayFormat = '#,###;; '
    end
    object tTractaments_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldName = 'C_Historia'
    end
    object tTractaments_C_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldName = 'C_Prestacio'
      OnChange = tTractaments_C_PrestacioChange
      Size = 4
    end
    object tTractaments_C_PrestacioOrigen: TStringField
      Tag = 100
      DisplayLabel = 'Prestaci'#243' Origen'
      DisplayWidth = 4
      FieldName = 'C_PrestacioOrigen'
      Size = 4
    end
    object tTractaments_Data_Ingres: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Ingr'#233's'
      DisplayWidth = 11
      FieldName = 'Data_Ingres'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tTractaments_Hora: TStringField
      Tag = 100
      DisplayWidth = 5
      FieldName = 'Hora'
      EditMask = '!99:99;1; '
      Size = 5
    end
    object tTractaments_C_Coordinador: TStringField
      Tag = 100
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldName = 'C_Coordinador'
      OnChange = tTractaments_C_CoordinadorChange
      Size = 5
    end
    object tTractaments_Data_PreAlta: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data PreAlta'
      DisplayWidth = 11
      FieldName = 'Data_PreAlta'
      OnChange = tTractaments_Data_PreAltaChange
      DisplayFormat = 'dd"/"mm"/"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tTractaments_C_MetgePreAlta: TStringField
      Tag = 100
      DisplayLabel = 'Metge PreAlta'
      DisplayWidth = 5
      FieldName = 'C_MetgePreAlta'
      Size = 5
    end
    object tTractaments_Data_Alta: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Alta'
      DisplayWidth = 11
      FieldName = 'Data_Alta'
      OnChange = tTractaments_Data_AltaChange
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tTractaments_C_MetgeAlta: TStringField
      Tag = 100
      DisplayLabel = 'Metge Alta'
      DisplayWidth = 5
      FieldName = 'C_MetgeAlta'
      Size = 5
    end
    object tTractaments_Durada: TFloatField
      Tag = 100
      DisplayWidth = 4
      FieldName = 'Durada'
      ReadOnly = True
    end
    object tTractaments_Comentari: TMemoField
      Tag = 100
      DisplayLabel = 'Comentari Admisions'
      DisplayWidth = 1
      FieldName = 'Comentari'
      BlobType = ftMemo
      Size = 1
    end
    object tTractaments_C_Motiu: TSmallintField
      Tag = 100
      DisplayLabel = 'Motiu'
      DisplayWidth = 3
      FieldName = 'C_Motiu'
      OnChange = tTractaments_C_MotiuChange
    end
    object tTractaments_C_Origen: TSmallintField
      Tag = 100
      DisplayLabel = 'Procedencia/Origen'
      DisplayWidth = 3
      FieldName = 'C_Origen'
      OnChange = tTractaments_C_OrigenChange
    end
    object tTractaments_C_HospitalOrigen: TSmallintField
      Tag = 100
      DisplayLabel = 'Hospital'
      DisplayWidth = 3
      FieldName = 'C_HospitalOrigen'
      OnChange = tTractaments_C_HospitalOrigenChange
    end
    object tTractaments_C_Caracter: TSmallintField
      Tag = 100
      DisplayLabel = 'Car'#224'cter'
      DisplayWidth = 3
      FieldName = 'C_Caracter'
      OnChange = tTractaments_C_CaracterChange
    end
    object tTractaments_C_Solicitud: TSmallintField
      Tag = 100
      DisplayLabel = 'Solicitud / Causa'
      DisplayWidth = 3
      FieldName = 'C_Solicitud'
    end
    object tTractaments_C_LLit: TStringField
      Tag = 100
      DisplayLabel = 'Llit'
      DisplayWidth = 3
      FieldName = 'C_LLit'
      OnChange = tTractaments_C_LLitChange
      Size = 3
    end
    object tTractaments_C_Planta: TStringField
      Tag = 100
      DisplayLabel = 'Planta'
      DisplayWidth = 15
      FieldName = 'C_Planta'
      OnChange = tTractaments_C_PlantaChange
      Size = 15
    end
    object tTractaments_C_Destinacio: TSmallintField
      Tag = 100
      DisplayLabel = 'Destinacio'
      DisplayWidth = 3
      FieldName = 'C_Destinacio'
      OnChange = tTractaments_C_DestinacioChange
    end
    object tTractaments_C_HospitalDesti: TSmallintField
      Tag = 100
      DisplayLabel = 'Hospital Desti'
      DisplayWidth = 3
      FieldName = 'C_HospitalDesti'
      OnChange = tTractaments_C_HospitalDestiChange
    end
    object tTractaments_InformeAlta: TMemoField
      Tag = 100
      DisplayLabel = 'Informe Alta'
      DisplayWidth = 1
      FieldName = 'InformeAlta'
      BlobType = ftMemo
      Size = 1
    end
    object tTractaments_EstatInformeAlta: TIntegerField
      Tag = 100
      DisplayLabel = 'Estat informe alta'
      DisplayWidth = 3
      FieldName = 'EstatInformeAlta'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_ComentariMetge: TStringField
      Tag = 100
      DisplayLabel = 'Comentari Mege'
      DisplayWidth = 80
      FieldName = 'ComentariMetge'
      Size = 80
    end
    object tTractaments_ComentariInfermeria: TStringField
      Tag = 100
      DisplayLabel = 'Comentari Infermeria'
      DisplayWidth = 80
      FieldName = 'ComentariInfermeria'
      Size = 80
    end
    object tTractaments_Entrada: TIntegerField
      Tag = 100
      DisplayLabel = 'Codificaci'#243' Entrada'
      DisplayWidth = 6
      FieldName = 'Entrada'
    end
    object tTractaments_Sortida: TIntegerField
      Tag = 100
      DisplayLabel = 'Codificaci'#243' Sortida'
      DisplayWidth = 6
      FieldName = 'Sortida'
    end
    object tTractaments_DiaFixe: TDateTimeField
      Tag = 100
      DisplayLabel = 'Dia Fixe'
      DisplayWidth = 11
      FieldName = 'DiaFixe'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tTractaments_C_FisioTerapeuta: TStringField
      Tag = 100
      DisplayLabel = 'FisioTerapeuta'
      DisplayWidth = 5
      FieldName = 'C_FisioTerapeuta'
      Size = 5
    end
    object tTractaments_C_Terapeuta: TStringField
      Tag = 100
      DisplayLabel = 'Terapeuta'
      DisplayWidth = 5
      FieldName = 'C_Terapeuta'
      Size = 5
    end
    object tTractaments_C_Cas: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#186' Cas'
      DisplayWidth = 3
      FieldName = 'C_Cas'
    end
    object tTractaments_Complicacions: TStringField
      Tag = 100
      DisplayWidth = 10
      FieldName = 'Complicacions'
      Size = 10
    end
    object tTractaments_C_ProcesOrigen: TSmallintField
      Tag = 100
      DisplayLabel = 'Proces origen'
      DisplayWidth = 3
      FieldName = 'C_ProcesOrigen'
    end
    object tTractaments_Frankel: TStringField
      Tag = 100
      DisplayLabel = 'Graus Frankel'
      DisplayWidth = 2
      FieldName = 'Frankel'
      Size = 2
    end
    object tTractaments_C_Codi_E: TStringField
      Tag = 100
      DisplayLabel = 'Codi E'
      DisplayWidth = 6
      FieldName = 'C_Codi_E'
      Size = 6
    end
    object tTractaments_N_Codi_E: TStringField
      Tag = 100
      DisplayLabel = 'Literal E '
      DisplayWidth = 40
      FieldName = 'N_Codi_E'
      Size = 40
    end
    object tTractaments_C_DiagnosticNeurologicIngres: TStringField
      Tag = 100
      DisplayLabel = 'Codi Diag.Neuro.Ingr'#233's'
      DisplayWidth = 15
      FieldName = 'C_DiagnosticNeurologicIngres'
      Size = 15
    end
    object tTractaments_N_DiagnosticNeurologicIngres: TStringField
      Tag = 100
      DisplayLabel = 'Literal Diag.Neuro.Ingr'#233's'
      DisplayWidth = 40
      FieldName = 'N_DiagnosticNeurologicIngres'
      Size = 40
    end
    object tTractaments_C_DiagnosticIngres: TStringField
      Tag = 100
      DisplayLabel = 'Codi Diag.Principal Ingr'#233's'
      DisplayWidth = 15
      FieldName = 'C_DiagnosticIngres'
      Size = 15
    end
    object tTractaments_N_DiagnosticIngres: TStringField
      Tag = 100
      DisplayLabel = 'Literal Diag.Principal Ingr'#233's'
      DisplayWidth = 40
      FieldName = 'N_DiagnosticIngres'
      Size = 40
    end
    object tTractaments_C_DiagnosticNeurologicAlta: TStringField
      Tag = 100
      DisplayLabel = 'Codi Diag.Neuro.Alta'
      DisplayWidth = 15
      FieldName = 'C_DiagnosticNeurologicAlta'
      Size = 15
    end
    object tTractaments_N_DiagnosticNeurologicAlta: TStringField
      Tag = 100
      DisplayLabel = 'Literal Diag.Neuro.Alta'
      DisplayWidth = 40
      FieldName = 'N_DiagnosticNeurologicAlta'
      Size = 40
    end
    object tTractaments_C_DiagnosticAlta: TStringField
      Tag = 100
      DisplayLabel = 'Codi Diag.Principal Alta'
      DisplayWidth = 15
      FieldName = 'C_DiagnosticAlta'
      Size = 15
    end
    object tTractaments_N_DiagnosticAlta: TStringField
      Tag = 100
      DisplayLabel = 'Literal Diag.Principal Alta'
      DisplayWidth = 40
      FieldName = 'N_DiagnosticAlta'
      Size = 40
    end
    object tTractaments_Comodin: TStringField
      Tag = 100
      DisplayWidth = 100
      FieldName = 'Comodin'
      Size = 100
    end
    object tTractaments_Vegada: TSmallintField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'Vegada'
    end
    object tTractaments_C_CentreFac: TStringField
      Tag = 100
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldName = 'C_CentreFac'
      OnChange = tTractaments_C_CentreFacChange
      OnValidate = tTractaments_C_CentreFacValidate
      Size = 2
    end
    object tTractaments_C_Client: TStringField
      Tag = 100
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldName = 'C_Client'
      OnValidate = tTractaments_C_ClientValidate
      Size = 3
    end
    object tTractaments_C_Delegacio: TStringField
      Tag = 100
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldName = 'C_Delegacio'
      OnChange = tTractaments_C_DelegacioChange
      OnValidate = tTractaments_C_DelegacioValidate
      Size = 4
    end
    object tTractaments_CaducaPermis: TDateTimeField
      Tag = 100
      DisplayLabel = 'Caduca Perm'#237's'
      DisplayWidth = 11
      FieldName = 'CaducaPermis'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tTractaments_PercentatgePacient: TFloatField
      Tag = 100
      DisplayLabel = '% Pacient'
      DisplayWidth = 5
      FieldName = 'PercentatgePacient'
      DisplayFormat = '#,##0.###" %";; '
    end
    object tTractaments_Referencia: TStringField
      Tag = 100
      DisplayLabel = 'Refer'#232'ncia'
      DisplayWidth = 40
      FieldName = 'Referencia'
      Size = 40
    end
    object tTractaments_C_Infermeria: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Infermeria'
      DisplayWidth = 5
      FieldName = 'C_Infermeria'
      Size = 5
    end
    object tTractaments_C_Auxiliar: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Auxiliar  Cl'#237'nica'
      DisplayWidth = 5
      FieldName = 'C_Auxiliar'
      Size = 5
    end
    object tTractaments_C_Psicoleg: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Psicologia'
      DisplayWidth = 5
      FieldName = 'C_Psicoleg'
      Size = 5
    end
    object tTractaments_C_TrevallSocial: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Trevall Social'
      DisplayWidth = 5
      FieldName = 'C_TrevallSocial'
      Size = 5
    end
    object tTractaments_EsProvisional: TSmallintField
      Tag = 100
      DisplayLabel = 'Es un provisional'
      DisplayWidth = 3
      FieldName = 'EsProvisional'
    end
    object tTractaments_C_MetgePassi: TStringField
      Tag = 100
      DisplayLabel = 'Metge Passi'
      DisplayWidth = 5
      FieldName = 'C_MetgePassi'
      Size = 5
    end
    object tTractaments_Passi: TStringField
      Tag = 100
      DisplayLabel = 'Pot Fer Passis'
      DisplayWidth = 1
      FieldName = 'Passi'
      Size = 1
    end
    object tTractaments_Ambulancia: TStringField
      Tag = 100
      DisplayLabel = 'Ambul'#224'ncia'
      DisplayWidth = 1
      FieldName = 'Ambulancia'
      Size = 1
    end
    object tTractaments_C_EstatFac: TSmallintField
      Tag = 100
      DisplayLabel = 'Estat Facturaci'#243
      DisplayWidth = 10
      FieldName = 'C_EstatFac'
    end
    object tTractaments_C_EsperaProgramada: TIntegerField
      Tag = 100
      DisplayLabel = 'Espera Programada'
      DisplayWidth = 8
      FieldName = 'C_EsperaProgramada'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_C_Stock: TSmallintField
      Tag = 100
      DisplayLabel = 'C'#243'di Stock'
      DisplayWidth = 3
      FieldName = 'C_Stock'
    end
    object tTractaments_confirmstock: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'confirmstock'
      Size = 1
    end
    object tTractamentsDelegacio_Carrer: TStringField
      FieldKind = fkCalculated
      FieldName = 'Delegacio_Carrer'
      Size = 100
      Calculated = True
    end
    object tTractaments_C_InfermeraPassi: TStringField
      Tag = 100
      DisplayLabel = 'Infermera Passi'
      DisplayWidth = 5
      FieldName = 'C_InfermeraPassi'
      Size = 5
    end
    object tTractaments_NotaCarrec: TIntegerField
      Tag = 100
      DisplayLabel = 'Nota de C'#224'rrec per que no peti res antic'
      DisplayWidth = 8
      FieldName = 'NOTACARREC'
      Origin = 'TRACTAMENTS.NOTACARREC'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_NovaNotaCarrec: TStringField
      Tag = 100
      DisplayLabel = 'Nota de C'#224'rre'
      DisplayWidth = 40
      FieldName = 'NOVANOTACARREC'
      Origin = 'TRACTAMENTS.NOVANOTACARREC'
      Size = 40
    end
    object tTractaments_C_EquipAssist: TIntegerField
      Tag = 100
      DisplayLabel = 'C Equip assistencial'
      DisplayWidth = 8
      FieldName = 'C_EquipAssist'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_c_logopeda: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Logopeda'
      DisplayWidth = 5
      FieldName = 'c_logopeda'
      Size = 5
    end
    object tTractaments_C_Frequencia: TStringField
      Tag = 100
      DisplayLabel = 'Freq'#252#232'ncia'
      DisplayWidth = 7
      FieldName = 'C_Frequencia'
      OnChange = tTractaments_C_FrequenciaChange
      Size = 7
    end
    object tTractaments_C_Metge_InfAlta: TStringField
      Tag = 100
      DisplayLabel = 'Metge Informe d'#39'Alta'
      DisplayWidth = 5
      FieldName = 'C_Metge_InfAlta'
      Size = 5
    end
    object tTractaments_C_Proces: TIntegerField
      Tag = 100
      DisplayLabel = 'Codi de Proc'#233's'
      DisplayWidth = 8
      FieldName = 'C_Proces'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_Fi_Proces: TStringField
      Tag = 100
      DisplayLabel = 'Fi de proc'#233's'
      DisplayWidth = 1
      FieldName = 'Fi_Proces'
      Size = 1
    end
    object tTractaments_C_Codi_E2: TStringField
      Tag = 100
      DisplayLabel = 'Codi E2'
      DisplayWidth = 15
      FieldName = 'C_Codi_E2'
      Size = 15
    end
    object tTractaments_N_Codi_E2: TStringField
      Tag = 100
      DisplayLabel = 'Literal E2'
      DisplayWidth = 40
      FieldName = 'N_Codi_E2'
      Size = 40
    end
    object tTractaments_C_Codi_E3: TStringField
      Tag = 100
      DisplayLabel = 'Codi E3'
      DisplayWidth = 15
      FieldName = 'C_Codi_E3'
      Size = 15
    end
    object tTractaments_N_Codi_E3: TStringField
      Tag = 100
      DisplayLabel = 'Literal E3'
      DisplayWidth = 40
      FieldName = 'N_Codi_E3'
      Size = 40
    end
    object tTractaments_c_Residencia: TStringField
      Tag = 100
      DisplayLabel = 'Residencia'
      DisplayWidth = 10
      FieldName = 'c_Residencia'
      Size = 10
    end
    object tTractaments_Metge_Proces: TStringField
      Tag = 100
      DisplayLabel = 'Metge proc'#233's'
      DisplayWidth = 5
      FieldName = 'Metge_Proces'
      Size = 5
    end
    object tTractaments_Data_Sinistre: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Sinistre'
      DisplayWidth = 11
      FieldName = 'Data_Sinistre'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tTractaments_Matricula_Vehicle: TStringField
      Tag = 100
      DisplayLabel = 'Matricula Vehicle'
      DisplayWidth = 40
      FieldName = 'Matricula_Vehicle'
      Size = 40
    end
    object tTractaments_SIFCO: TStringField
      Tag = 100
      DisplayWidth = 15
      FieldName = 'SIFCO'
      Size = 15
    end
    object tTractaments_FISS: TStringField
      Tag = 100
      DisplayWidth = 14
      FieldName = 'FISS'
      Size = 14
    end
    object tTractaments_G_DiagnosticIngres: TStringField
      Tag = 100
      DisplayLabel = 'Subcodi Diag. principal ingr'#233's'
      DisplayWidth = 15
      FieldName = 'G_DiagnosticIngres'
      Size = 15
    end
    object tTractaments_G_DiagnosticAlta: TStringField
      Tag = 100
      DisplayLabel = 'Subcodi Diag. principal alta'
      DisplayWidth = 15
      FieldName = 'G_DiagnosticAlta'
      Size = 15
    end
    object tTractaments_C_Codi_E4: TStringField
      Tag = 100
      DisplayLabel = 'Codi E4'
      DisplayWidth = 15
      FieldName = 'C_Codi_E4'
      Size = 15
    end
    object tTractaments_N_Codi_E4: TStringField
      Tag = 100
      DisplayLabel = 'Literal E4'
      DisplayWidth = 40
      FieldName = 'N_Codi_E4'
      Size = 40
    end
    object tTractaments_C_Codi_E5: TStringField
      Tag = 100
      DisplayLabel = 'Codi E5'
      DisplayWidth = 15
      FieldName = 'C_Codi_E5'
      Size = 15
    end
    object tTractaments_N_Codi_E5: TStringField
      Tag = 100
      DisplayLabel = 'Literal E5'
      DisplayWidth = 40
      FieldName = 'N_Codi_E5'
      Size = 40
    end
    object tTractaments_N_RESIDENCIA: TStringField
      Tag = 100
      DisplayLabel = 'Resid'#232'ncia PADES'
      DisplayWidth = 44
      FieldName = 'N_RESIDENCIA'
      Size = 44
    end
    object tTractaments_ACTUA_PADES: TStringField
      Tag = 100
      DisplayLabel = 'Actua PADES'
      DisplayWidth = 1
      FieldName = 'ACTUA_PADES'
      Size = 1
    end
    object tTractaments_hccc_informe_alta: TStringField
      Tag = 100
      DisplayLabel = 'Hccc id informe alta'
      DisplayWidth = 100
      FieldName = 'hccc_informe_alta'
      Size = 100
    end
    object tTractaments_G_CODI_E: TStringField
      Tag = 100
      DisplayLabel = 'Codi E metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E'
      Size = 15
    end
    object tTractaments_G_CODI_E2: TStringField
      Tag = 100
      DisplayLabel = 'Codi E2 metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E2'
      Size = 15
    end
    object tTractaments_G_CODI_E3: TStringField
      Tag = 100
      DisplayLabel = 'Codi E3 metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E3'
      Size = 15
    end
    object tTractaments_G_CODI_E4: TStringField
      Tag = 100
      DisplayLabel = 'Codi E4 metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E4'
      Size = 15
    end
    object tTractaments_G_CODI_E5: TStringField
      Tag = 100
      DisplayLabel = 'Codi E5 metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E5'
      Size = 15
    end
    object tTractaments_hccc_infalta_infer: TStringField
      Tag = 100
      DisplayLabel = 'Hccc id informe alta infermeria'
      DisplayWidth = 100
      FieldName = 'hccc_infalta_infer'
      Size = 100
    end
    object tTractaments_PM: TFloatField
      Tag = 100
      DisplayLabel = 'Pes Mig CMG'
      DisplayWidth = 10
      FieldName = 'PM'
      DisplayFormat = '#,##0.0000;;0.0000'
    end
    object tTractaments_PMDRG: TFloatField
      Tag = 100
      DisplayLabel = 'Pes Mig DRG'
      DisplayWidth = 10
      FieldName = 'PMDRG'
      DisplayFormat = '#,##0.0000;;0.0000'
    end
    object tTractaments_Hora_Alta: TStringField
      Tag = 100
      DisplayLabel = 'Hora alta'
      DisplayWidth = 5
      FieldName = 'Hora_Alta'
      EditMask = '!99:99;1; '
      Size = 5
    end
    object tTractaments_c_fisio_labo_marxa: TStringField
      Tag = 100
      DisplayLabel = 'Codi fisio labo marxa'
      DisplayWidth = 5
      FieldName = 'c_fisio_labo_marxa'
      Size = 5
    end
    object tTractaments_c_fisio_ar: TStringField
      Tag = 100
      DisplayLabel = 'Codi auxilar fisioterapia'
      DisplayWidth = 5
      FieldName = 'c_fisio_ar'
      Size = 5
    end
    object tTractaments_Data_fi_contractat: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data fi contractat'
      DisplayWidth = 11
      FieldName = 'Data_fi_contractat'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tTractaments_Data_no_renovacio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data no renovacio'
      DisplayWidth = 11
      FieldName = 'Data_no_renovacio'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tTractaments_DESTI_CONT_EXT: TSmallintField
      Tag = 100
      DisplayLabel = 'Destinaci'#243' continu'#239'tat externa'
      DisplayWidth = 4
      FieldName = 'Desti_cont_ext'
      OnChange = tTractaments_DESTI_CONT_EXTChange
    end
    object tTractaments_DESTI_CONT_INT: TSmallintField
      Tag = 100
      DisplayLabel = 'Destinaci'#243' continu'#239'tat interna'
      DisplayWidth = 4
      FieldName = 'Desti_cont_int'
      OnChange = tTractaments_DESTI_CONT_INTChange
    end
    object tTractaments_BECA: TFloatField
      Tag = 100
      DisplayLabel = 'Percentatge beca'
      DisplayWidth = 10
      FieldName = 'BECA'
    end
    object tTractaments_C_MUSICOTERAPEUTA: TStringField
      Tag = 100
      DisplayLabel = 'Musicoterapeuta'
      DisplayWidth = 5
      FieldName = 'C_MUSICOTERAPEUTA'
      Size = 5
    end
    object tTractaments_CMBD_AEA: TStringField
      Tag = 100
      DisplayLabel = 'Identificador CMBD AEA'
      DisplayWidth = 100
      FieldName = 'CMBD_AEA'
      Size = 100
    end
    object tTractaments_REPUBLICAR_HC3: TStringField
      Tag = 100
      DisplayLabel = 'Republicar HC3'
      DisplayWidth = 1
      FieldName = 'REPUBLICAR_HC3'
      Size = 1
    end
    object tTractaments_T_HABITACIO: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus d'#39'habitaci'#243
      DisplayWidth = 2
      FieldName = 'T_HABITACIO'
      OnChange = tTractaments_T_HABITACIOChange
    end
    object tTractaments_ID_GARANT: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero identificador de garant'
      DisplayWidth = 8
      FieldName = 'ID_GARANT'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_PRESSUPOST: TStringField
      Tag = 100
      DisplayLabel = 'N'#250'mero de pressupost'
      DisplayWidth = 40
      FieldName = 'PRESSUPOST'
      Size = 40
    end
    object tTractaments_T_SESSIO: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus de sessi'#243
      DisplayWidth = 3
      FieldName = 'T_SESSIO'
      OnChange = tTractaments_T_SESSIOChange
    end
    object tTractaments_ID_FACILITADOR: TIntegerField
      Tag = 100
      DisplayLabel = 'Facilitador'
      DisplayWidth = 8
      FieldName = 'ID_FACILITADOR'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_UCI: TStringField
      Tag = 100
      DisplayLabel = 'Pacient ve de la UCI?'
      DisplayWidth = 1
      FieldName = 'UCI'
      Size = 1
    end
    object tTractaments_METGE_MUTUA: TStringField
      Tag = 100
      DisplayLabel = 'Nom metge m'#250'tua'
      DisplayWidth = 40
      FieldName = 'METGE_MUTUA'
      Size = 40
    end
    object tTractaments_TELF_METGE_MUTUA: TStringField
      Tag = 100
      DisplayLabel = 'Tel'#232'fon metge m'#250'tua'
      DisplayWidth = 10
      FieldName = 'TELF_METGE_MUTUA'
      Size = 10
    end
    object tTractaments_VersioCIM: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldName = 'VersioCIM'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_VersioCIM_G: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM SubCodi'
      DisplayWidth = 8
      FieldName = 'VersioCIM_G'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_Publicacio_CMDB: TStringField
      Tag = 100
      DisplayLabel = 'Publicaci'#243' CMDB'
      DisplayWidth = 3
      FieldName = 'Publicacio_CMDB'
      Size = 3
    end
    object tTractaments_ConfiancaDPI: TFloatField
      Tag = 100
      DisplayLabel = 'Confian'#231'a diagn'#242'stic principal ingr'#233's'
      DisplayWidth = 10
      FieldName = 'ConfiancaDPI'
      DisplayFormat = '#,##0.0000;;0.0000'
    end
    object tTractaments_ConfiancaDPA: TFloatField
      Tag = 100
      DisplayLabel = 'Confian'#231'a diagn'#242'stic principal alta'
      DisplayWidth = 10
      FieldName = 'ConfiancaDPA'
      DisplayFormat = '#,##0.0000;;0.0000'
    end
    object tTractaments_ID_DPI: TStringField
      Tag = 100
      DisplayLabel = 'Identificador WS DP ingr'#233's'
      DisplayWidth = 100
      FieldName = 'ID_DPI'
      Size = 100
    end
    object tTractaments_ID_DPA: TStringField
      Tag = 100
      DisplayLabel = 'Identificador WS DP alta'
      DisplayWidth = 100
      FieldName = 'ID_DPA'
      Size = 100
    end
    object tTractaments_CADA_X_SETMANES: TIntegerField
      Tag = 100
      DisplayLabel = 'Visita cada X setmanes'
      DisplayWidth = 8
      FieldName = 'CADA_X_SETMANES'
      OnChange = tTractaments_CADA_X_SETMANESChange
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_Motiu_Dia_Prealta: TStringField
      Tag = 100
      DisplayLabel = 'Motiu dia prealta'
      DisplayWidth = 40
      FieldName = 'Motiu_Dia_Prealta'
      Size = 40
    end
    object tTractaments_Motiu_Canvi_Prealta: TStringField
      Tag = 100
      DisplayLabel = 'Motiu canvi prealta'
      DisplayWidth = 200
      FieldName = 'Motiu_Canvi_Prealta'
      Size = 200
    end
    object tTractaments_C_Terapeuta_Resp: TStringField
      Tag = 100
      DisplayLabel = 'Terapeuta responsable'
      DisplayWidth = 5
      FieldName = 'C_Terapeuta_Resp'
      Size = 5
    end
    object tTractaments_Obs_Secre: TStringField
      Tag = 100
      DisplayLabel = 'Observacionsi secret'#224'ria m'#232'dica'
      DisplayWidth = 250
      FieldName = 'Obs_Secre'
      Size = 250
    end
    object tTractaments_Codificat_Revisat: TStringField
      Tag = 100
      DisplayLabel = 'Codificat - revisat'
      DisplayWidth = 1
      FieldName = 'Codificat_Revisat'
      Size = 1
    end
    object tTractaments_C_FREQUENCIA_TIPUS: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus de freq'#252#232'ncia'
      DisplayWidth = 3
      FieldName = 'C_FREQUENCIA_TIPUS'
      OnChange = tTractaments_C_FREQUENCIA_TIPUSChange
    end
    object tTractaments_HORA_INI_REHAB: TStringField
      Tag = 100
      DisplayLabel = 'Hora inici rehabilitacio'
      DisplayWidth = 5
      FieldName = 'HORA_INI_REHAB'
      Size = 5
    end
    object tTractaments_HORA_FIN_REHAB: TStringField
      Tag = 100
      DisplayLabel = 'Hora final rehabilitaci'#243
      DisplayWidth = 5
      FieldName = 'HORA_FIN_REHAB'
      Size = 5
    end
    object tTractaments_DiesConsumits: TIntegerField
      Tag = 100
      DisplayLabel = 'Dies consumits UNESPA'
      DisplayWidth = 8
      FieldName = 'DiesConsumits'
      DisplayFormat = '#,##0;; '
    end
    object tTractaments_C_Prescriptor: TStringField
      Tag = 100
      DisplayLabel = 'Codi prescriptor'
      DisplayWidth = 5
      FieldName = 'C_Prescriptor'
      Size = 5
    end
    object tTractaments_C_MEF: TStringField
      Tag = 100
      DisplayLabel = 'Codi MEF'
      DisplayWidth = 5
      FieldName = 'C_MEF'
      Size = 5
    end
    object tTractaments_C_TRANSPORT_SANITARI: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi trasport sanitari'
      DisplayWidth = 3
      FieldName = 'C_TRANSPORT_SANITARI'
    end
    object tTractaments_C_Modalitat: TSmallintField
      Tag = 100
      DisplayLabel = 'Modalitat'
      DisplayWidth = 2
      FieldName = 'C_Modalitat'
      OnChange = tTractaments_C_ModalitatChange
    end
    object tTractaments_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Fili_NUM_HIST'
      LookupKeyFields = 'NUM_HIST'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom complet'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'Fili_NomComplet'
      LookupKeyFields = 'NomComplet'
      KeyFields = 'Fili'
      Size = 80
      Calculated = True
    end
    object tTractaments_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Sexe'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Fili_SEXO'
      LookupKeyFields = 'SEXO'
      KeyFields = 'Fili'
      Size = 1
      Calculated = True
    end
    object tTractaments_C0_3: TIntegerField
      Tag = 101
      DisplayLabel = 'Edat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_Edat'
      LookupKeyFields = 'Edat'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'EsViu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Fili_EsViu'
      LookupKeyFields = 'EsViu'
      KeyFields = 'Fili'
      Size = 1
      Calculated = True
    end
    object tTractaments_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_APELLIDO1'
      LookupKeyFields = 'APELLIDO1'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_APELLIDO2'
      LookupKeyFields = 'APELLIDO2'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_NOMBRE'
      LookupKeyFields = 'NOMBRE'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_8: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Fili'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C0_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat M'#232'dica'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fili_C_UnitatMedica'
      LookupKeyFields = 'C_UnitatMedica'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_10: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Fili_TELEFONO'
      LookupKeyFields = 'TELEFONO'
      KeyFields = 'Fili'
      Size = 10
      Calculated = True
    end
    object tTractaments_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Tsi'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'Fili_TSI'
      LookupKeyFields = 'TSI'
      KeyFields = 'Fili'
      Size = 14
      Calculated = True
    end
    object tTractaments_C0_12: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Naix.'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Fili_FECHA_NAC'
      LookupKeyFields = 'FECHA_NAC'
      KeyFields = 'Fili'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object tTractaments_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'Residencia'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'Fili_RESIDENCIA'
      LookupKeyFields = 'RESIDENCIA'
      KeyFields = 'Fili'
      Size = 7
      Calculated = True
    end
    object tTractaments_C0_14: TStringField
      Tag = 101
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_PAIS'
      LookupKeyFields = 'PAIS'
      KeyFields = 'Fili'
      Size = 3
      Calculated = True
    end
    object tTractaments_C0_15: TStringField
      Tag = 101
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Fili_PROVINCIA'
      LookupKeyFields = 'PROVINCIA'
      KeyFields = 'Fili'
      Size = 44
      Calculated = True
    end
    object tTractaments_C0_16: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Fili_POBLACIO'
      LookupKeyFields = 'POBLACIO'
      KeyFields = 'Fili'
      Size = 44
      Calculated = True
    end
    object tTractaments_C0_17: TSmallintField
      Tag = 101
      DisplayLabel = 'UM_ANTIGA'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_UM_ANTIGA'
      LookupKeyFields = 'UM_ANTIGA'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_18: TSmallintField
      Tag = 101
      DisplayLabel = 'Lateralitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_c_Lateralitat'
      LookupKeyFields = 'c_Lateralitat'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_19: TStringField
      Tag = 101
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'Fili_ADRESA'
      LookupKeyFields = 'ADRESA'
      KeyFields = 'Fili'
      Size = 80
      Calculated = True
    end
    object tTractaments_C0_20: TStringField
      Tag = 101
      DisplayLabel = 'Dni'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Fili_DNI'
      LookupKeyFields = 'DNI'
      KeyFields = 'Fili'
      Size = 9
      Calculated = True
    end
    object tTractaments_C0_21: TStringField
      Tag = 101
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Fili_CODIGO'
      LookupKeyFields = 'CODIGO'
      KeyFields = 'Fili'
      Size = 5
      Calculated = True
    end
    object tTractaments_C0_22: TStringField
      Tag = 101
      DisplayLabel = 'Lloc Naix.'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Fili_LUGAR_NAC'
      LookupKeyFields = 'LUGAR_NAC'
      KeyFields = 'Fili'
      Size = 44
      Calculated = True
    end
    object tTractaments_C0_23: TStringField
      Tag = 101
      DisplayLabel = 'Estat Civil'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fili_ESTADO_CIV'
      LookupKeyFields = 'ESTADO_CIV'
      KeyFields = 'Fili'
      Size = 2
      Calculated = True
    end
    object tTractaments_C0_24: TSmallintField
      Tag = 101
      DisplayLabel = 'Hospital primera atencio'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Fili_C_HOSPITAL'
      LookupKeyFields = 'C_HOSPITAL'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_25: TStringField
      Tag = 101
      DisplayLabel = 'Causa de la mort'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Fili_C_EXITUS'
      LookupKeyFields = 'C_EXITUS'
      KeyFields = 'Fili'
      Size = 15
      Calculated = True
    end
    object tTractaments_C0_26: TSmallintField
      Tag = 101
      DisplayLabel = 'Idioma'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fili_IDIOMA'
      LookupKeyFields = 'IDIOMA'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tTractaments_C0_27: TStringField
      Tag = 101
      DisplayLabel = 'Tipus de document'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Fili_T_DOC'
      LookupKeyFields = 'T_DOC'
      KeyFields = 'Fili'
      Size = 1
      Calculated = True
    end
    object tTractaments_C0_28: TStringField
      Tag = 101
      DisplayLabel = 'Soe'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Fili_SOE'
      LookupKeyFields = 'SOE'
      KeyFields = 'Fili'
      Size = 12
      Calculated = True
    end
    object tTractaments_C0_29: TStringField
      Tag = 101
      DisplayLabel = 'N'#250'm. del Servicio Nacional de Salud'
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'Fili_SNS'
      LookupKeyFields = 'SNS'
      KeyFields = 'Fili'
      Size = 25
      Calculated = True
    end
    object tTractaments_C0_30: TIntegerField
      Tag = 101
      DisplayLabel = 'GNPT'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Fili_Previrnec'
      LookupKeyFields = 'Previrnec'
      KeyFields = 'Fili'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C1_0: TStringField
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
    object tTractaments_C1_1: TStringField
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
    object tTractaments_C1_2: TStringField
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
    object tTractaments_C1_3: TStringField
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
    object tTractaments_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prestacio_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Prestacio'
      Calculated = True
    end
    object tTractaments_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'EsEase'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prestacio_EsEase'
      LookupKeyFields = 'EsEase'
      KeyFields = 'Prestacio'
      Size = 1
      Calculated = True
    end
    object tTractaments_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'No SCS'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prestacio_NoSCS'
      LookupKeyFields = 'NoSCS'
      KeyFields = 'Prestacio'
      Size = 1
      Calculated = True
    end
    object tTractaments_C1_7: TSmallintField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prestacio_Grup'
      LookupKeyFields = 'Grup'
      KeyFields = 'Prestacio'
      Calculated = True
    end
    object tTractaments_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prestacio_Centre'
      LookupKeyFields = 'Centre'
      KeyFields = 'Prestacio'
      Size = 1
      Calculated = True
    end
    object tTractaments_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'Coordinador'
      Size = 5
      Calculated = True
    end
    object tTractaments_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object tTractaments_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'Coordinador'
      Size = 15
      Calculated = True
    end
    object tTractaments_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'Coordinador'
      Size = 4
      Calculated = True
    end
    object tTractaments_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Coordinador_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Coordinador'
      Size = 2
      Calculated = True
    end
    object tTractaments_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Coordinador_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'Coordinador'
      Size = 2
      Calculated = True
    end
    object tTractaments_C2_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Coordinador'
      Size = 1
      Calculated = True
    end
    object tTractaments_C2_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Coordinador_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object tTractaments_C2_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Coordinador_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'Coordinador'
      Size = 1
      Calculated = True
    end
    object tTractaments_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'Coordinador'
      Size = 40
      Calculated = True
    end
    object tTractaments_C2_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Coordinador_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object tTractaments_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object tTractaments_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object tTractaments_C2_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'Coordinador_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'Coordinador'
      Size = 6
      Calculated = True
    end
    object tTractaments_C2_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Coordinador_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'Coordinador'
      Size = 9
      Calculated = True
    end
    object tTractaments_C2_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Coordinador_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'Coordinador'
      Size = 250
      Calculated = True
    end
    object tTractaments_C2_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Coordinador_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'Coordinador'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C2_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Coordinador_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'Coordinador'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object tTractaments_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'MetgePreAlta'
      Size = 5
      Calculated = True
    end
    object tTractaments_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object tTractaments_C3_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'MetgePreAlta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'MetgePreAlta'
      Size = 4
      Calculated = True
    end
    object tTractaments_C3_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'MetgePreAlta'
      Size = 2
      Calculated = True
    end
    object tTractaments_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'MetgePreAlta'
      Size = 2
      Calculated = True
    end
    object tTractaments_C3_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'MetgePreAlta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C3_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object tTractaments_C3_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'MetgePreAlta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C3_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'MetgePreAlta'
      Size = 40
      Calculated = True
    end
    object tTractaments_C3_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object tTractaments_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object tTractaments_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object tTractaments_C3_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'MetgePreAlta'
      Size = 6
      Calculated = True
    end
    object tTractaments_C3_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'MetgePreAlta'
      Size = 9
      Calculated = True
    end
    object tTractaments_C3_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'MetgePreAlta'
      Size = 250
      Calculated = True
    end
    object tTractaments_C3_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'MetgePreAlta'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C3_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'MetgePreAlta'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object tTractaments_C4_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'MetgeAlta'
      Size = 5
      Calculated = True
    end
    object tTractaments_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object tTractaments_C4_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'MetgeAlta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C4_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'MetgeAlta'
      Size = 4
      Calculated = True
    end
    object tTractaments_C4_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'MetgeAlta'
      Size = 2
      Calculated = True
    end
    object tTractaments_C4_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'MetgeAlta'
      Size = 2
      Calculated = True
    end
    object tTractaments_C4_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'MetgeAlta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C4_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object tTractaments_C4_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'MetgeAlta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C4_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'MetgeAlta'
      Size = 40
      Calculated = True
    end
    object tTractaments_C4_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object tTractaments_C4_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object tTractaments_C4_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object tTractaments_C4_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'MetgeAlta'
      Size = 6
      Calculated = True
    end
    object tTractaments_C4_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'MetgeAlta'
      Size = 9
      Calculated = True
    end
    object tTractaments_C4_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'MetgeAlta'
      Size = 250
      Calculated = True
    end
    object tTractaments_C4_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'MetgeAlta'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C4_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'MetgeAlta'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object tTractaments_C5_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Motiu'
      Calculated = True
    end
    object tTractaments_C5_1: TStringField
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
    object tTractaments_C6_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Origen_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Origen'
      Calculated = True
    end
    object tTractaments_C6_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Origen_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Origen'
      Size = 40
      Calculated = True
    end
    object tTractaments_C7_0: TSmallintField
      Tag = 101
      DisplayLabel = 'N'#186' Hospital'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'HtalOrigen_C_Hospital'
      LookupKeyFields = 'C_Hospital'
      KeyFields = 'HtalOrigen'
      Calculated = True
    end
    object tTractaments_C7_1: TStringField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'HtalOrigen_CODI'
      LookupKeyFields = 'CODI'
      KeyFields = 'HtalOrigen'
      Size = 9
      Calculated = True
    end
    object tTractaments_C7_2: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 62
      FieldKind = fkCalculated
      FieldName = 'HtalOrigen_N_Hospital'
      LookupKeyFields = 'N_Hospital'
      KeyFields = 'HtalOrigen'
      Size = 62
      Calculated = True
    end
    object tTractaments_C7_3: TStringField
      Tag = 101
      DisplayLabel = 'Unitat Productiva'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'HtalOrigen_C_UP'
      LookupKeyFields = 'C_UP'
      KeyFields = 'HtalOrigen'
      Size = 5
      Calculated = True
    end
    object tTractaments_C7_4: TStringField
      Tag = 101
      DisplayLabel = 'Tipus UP'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'HtalOrigen_Tipus_UP'
      LookupKeyFields = 'Tipus_UP'
      KeyFields = 'HtalOrigen'
      Size = 2
      Calculated = True
    end
    object tTractaments_C7_5: TStringField
      Tag = 101
      DisplayLabel = 'Actiu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'HtalOrigen_Actiu'
      LookupKeyFields = 'Actiu'
      KeyFields = 'HtalOrigen'
      Size = 1
      Calculated = True
    end
    object tTractaments_C7_6: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'HtalOrigen_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'HtalOrigen'
      Size = 44
      Calculated = True
    end
    object tTractaments_C7_7: TStringField
      Tag = 101
      DisplayLabel = 'Es centre de dany cerebral'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'HtalOrigen_DANY_CEREBRAL'
      LookupKeyFields = 'DANY_CEREBRAL'
      KeyFields = 'HtalOrigen'
      Size = 1
      Calculated = True
    end
    object tTractaments_C8_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Caracter_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Caracter'
      Calculated = True
    end
    object tTractaments_C8_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Caracter_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Caracter'
      Size = 40
      Calculated = True
    end
    object tTractaments_C9_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Solicitud_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Solicitud'
      Calculated = True
    end
    object tTractaments_C9_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Solicitud_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Solicitud'
      Size = 40
      Calculated = True
    end
    object tTractaments_C10_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Destinacio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Destinacio'
      Calculated = True
    end
    object tTractaments_C10_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Destinacio_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Destinacio'
      Size = 40
      Calculated = True
    end
    object tTractaments_C10_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Destinacio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Destinacio'
      Calculated = True
    end
    object tTractaments_C10_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Destinacio_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Destinacio'
      Size = 40
      Calculated = True
    end
    object tTractaments_C10_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Destinacio_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Destinacio'
      Size = 10
      Calculated = True
    end
    object tTractaments_C10_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Destinacio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Destinacio'
      Calculated = True
    end
    object tTractaments_C11_0: TSmallintField
      Tag = 101
      DisplayLabel = 'N'#186' Hospital'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'HtalDestinacio_C_Hospital'
      LookupKeyFields = 'C_Hospital'
      KeyFields = 'HtalDestinacio'
      Calculated = True
    end
    object tTractaments_C11_1: TStringField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'HtalDestinacio_CODI'
      LookupKeyFields = 'CODI'
      KeyFields = 'HtalDestinacio'
      Size = 9
      Calculated = True
    end
    object tTractaments_C11_2: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 62
      FieldKind = fkCalculated
      FieldName = 'HtalDestinacio_N_Hospital'
      LookupKeyFields = 'N_Hospital'
      KeyFields = 'HtalDestinacio'
      Size = 62
      Calculated = True
    end
    object tTractaments_C11_3: TStringField
      Tag = 101
      DisplayLabel = 'Unitat Productiva'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'HtalDestinacio_C_UP'
      LookupKeyFields = 'C_UP'
      KeyFields = 'HtalDestinacio'
      Size = 5
      Calculated = True
    end
    object tTractaments_C11_4: TStringField
      Tag = 101
      DisplayLabel = 'Tipus UP'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'HtalDestinacio_Tipus_UP'
      LookupKeyFields = 'Tipus_UP'
      KeyFields = 'HtalDestinacio'
      Size = 2
      Calculated = True
    end
    object tTractaments_C11_5: TStringField
      Tag = 101
      DisplayLabel = 'Actiu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'HtalDestinacio_Actiu'
      LookupKeyFields = 'Actiu'
      KeyFields = 'HtalDestinacio'
      Size = 1
      Calculated = True
    end
    object tTractaments_C11_6: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'HtalDestinacio_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'HtalDestinacio'
      Size = 44
      Calculated = True
    end
    object tTractaments_C11_7: TStringField
      Tag = 101
      DisplayLabel = 'Es centre de dany cerebral'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'HtalDestinacio_DANY_CEREBRAL'
      LookupKeyFields = 'DANY_CEREBRAL'
      KeyFields = 'HtalDestinacio'
      Size = 1
      Calculated = True
    end
    object tTractaments_C12_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'Frequencia_CODI'
      LookupKeyFields = 'CODI'
      KeyFields = 'Frequencia'
      Size = 7
      Calculated = True
    end
    object tTractaments_C12_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Frequencia_DESCRIPCIO'
      LookupKeyFields = 'DESCRIPCIO'
      KeyFields = 'Frequencia'
      Size = 30
      Calculated = True
    end
    object tTractaments_C12_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' llarga'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'Frequencia_DESC_LONG'
      LookupKeyFields = 'DESC_LONG'
      KeyFields = 'Frequencia'
      Size = 100
      Calculated = True
    end
    object tTractaments_C12_3: TStringField
      Tag = 101
      DisplayLabel = 'Torn'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'Frequencia_Codi2'
      LookupKeyFields = 'Codi2'
      KeyFields = 'Frequencia'
      Size = 7
      Calculated = True
    end
    object tTractaments_C12_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Freq'#252#232'ncia'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Frequencia_Frequencia'
      LookupKeyFields = 'Frequencia'
      KeyFields = 'Frequencia'
      DisplayFormat = '0"D";; '
      Calculated = True
    end
    object tTractaments_C13_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'Fisioterapeuta'
      Size = 5
      Calculated = True
    end
    object tTractaments_C13_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object tTractaments_C13_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'Fisioterapeuta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C13_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'Fisioterapeuta'
      Size = 4
      Calculated = True
    end
    object tTractaments_C13_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Fisioterapeuta'
      Size = 2
      Calculated = True
    end
    object tTractaments_C13_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'Fisioterapeuta'
      Size = 2
      Calculated = True
    end
    object tTractaments_C13_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Fisioterapeuta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C13_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object tTractaments_C13_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'Fisioterapeuta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C13_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'Fisioterapeuta'
      Size = 40
      Calculated = True
    end
    object tTractaments_C13_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object tTractaments_C13_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object tTractaments_C13_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object tTractaments_C13_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'Fisioterapeuta'
      Size = 6
      Calculated = True
    end
    object tTractaments_C13_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'Fisioterapeuta'
      Size = 9
      Calculated = True
    end
    object tTractaments_C13_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'Fisioterapeuta'
      Size = 250
      Calculated = True
    end
    object tTractaments_C13_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'Fisioterapeuta'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C13_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'Fisioterapeuta'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object tTractaments_C14_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'Terapeuta'
      Size = 5
      Calculated = True
    end
    object tTractaments_C14_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object tTractaments_C14_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'Terapeuta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C14_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'Terapeuta'
      Size = 4
      Calculated = True
    end
    object tTractaments_C14_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Terapeuta'
      Size = 2
      Calculated = True
    end
    object tTractaments_C14_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'Terapeuta'
      Size = 2
      Calculated = True
    end
    object tTractaments_C14_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Terapeuta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C14_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object tTractaments_C14_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'Terapeuta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C14_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'Terapeuta'
      Size = 40
      Calculated = True
    end
    object tTractaments_C14_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object tTractaments_C14_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object tTractaments_C14_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object tTractaments_C14_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'Terapeuta'
      Size = 6
      Calculated = True
    end
    object tTractaments_C14_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'Terapeuta'
      Size = 9
      Calculated = True
    end
    object tTractaments_C14_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'Terapeuta'
      Size = 250
      Calculated = True
    end
    object tTractaments_C14_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'Terapeuta'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C14_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'Terapeuta'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object tTractaments_C15_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'NumCas_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'NumCas'
      Calculated = True
    end
    object tTractaments_C15_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'NumCas_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'NumCas'
      Size = 40
      Calculated = True
    end
    object tTractaments_C15_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'NumCas_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'NumCas'
      Calculated = True
    end
    object tTractaments_C15_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'NumCas_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'NumCas'
      Size = 40
      Calculated = True
    end
    object tTractaments_C15_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'NumCas_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'NumCas'
      Size = 10
      Calculated = True
    end
    object tTractaments_C15_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'NumCas_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'NumCas'
      Calculated = True
    end
    object tTractaments_C16_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'ProcesOrigen_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'ProcesOrigen'
      Calculated = True
    end
    object tTractaments_C16_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'ProcesOrigen_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'ProcesOrigen'
      Size = 40
      Calculated = True
    end
    object tTractaments_C16_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'ProcesOrigen_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'ProcesOrigen'
      Calculated = True
    end
    object tTractaments_C16_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'ProcesOrigen_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'ProcesOrigen'
      Size = 40
      Calculated = True
    end
    object tTractaments_C16_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'ProcesOrigen_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'ProcesOrigen'
      Size = 10
      Calculated = True
    end
    object tTractaments_C16_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'ProcesOrigen_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'ProcesOrigen'
      Calculated = True
    end
    object tTractaments_C17_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'IcdAlta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C17_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'IcdAlta'
      Size = 255
      Calculated = True
    end
    object tTractaments_C17_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'IcdAlta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C17_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'IcdAlta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C17_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'IcdAlta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C17_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'IcdAlta'
      Size = 90
      Calculated = True
    end
    object tTractaments_C17_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'IcdAlta'
      Size = 24
      Calculated = True
    end
    object tTractaments_C17_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'IcdAlta'
      Size = 40
      Calculated = True
    end
    object tTractaments_C17_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'IcdAlta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C17_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'IcdAlta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C17_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'IcdAlta'
      Calculated = True
    end
    object tTractaments_C17_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'IcdAlta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C17_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'IcdAlta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C17_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'IcdAlta'
      Size = 1
      Calculated = True
    end
    object tTractaments_C17_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'IcdAlta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C17_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'IcdAlta'
      Size = 15
      Calculated = True
    end
    object tTractaments_C17_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'IcdAlta'
      Size = 50
      Calculated = True
    end
    object tTractaments_C17_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'IcdAlta'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C18_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Centre_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'Centre'
      Size = 2
      Calculated = True
    end
    object tTractaments_C18_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Centre_N_CentreFac'
      LookupKeyFields = 'N_CentreFac'
      KeyFields = 'Centre'
      Calculated = True
    end
    object tTractaments_C18_2: TStringField
      Tag = 101
      DisplayLabel = 'EsPrivat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Centre_EsPrivat'
      LookupKeyFields = 'EsPrivat'
      KeyFields = 'Centre'
      Size = 1
      Calculated = True
    end
    object tTractaments_C19_0: TStringField
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
    object tTractaments_C19_1: TStringField
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
    object tTractaments_C19_2: TStringField
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
    object tTractaments_C19_3: TStringField
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
    object tTractaments_C19_4: TStringField
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
    object tTractaments_C19_5: TStringField
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
    object tTractaments_C20_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Delegacio_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'Delegacio'
      Size = 4
      Calculated = True
    end
    object tTractaments_C20_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Delegaci'#243
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Delegacio_N_Delegacio'
      LookupKeyFields = 'N_Delegacio'
      KeyFields = 'Delegacio'
      Size = 50
      Calculated = True
    end
    object tTractaments_C20_2: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Delegacio_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'Delegacio'
      Size = 44
      Calculated = True
    end
    object tTractaments_C20_3: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Delegacio_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'Delegacio'
      Size = 2
      Calculated = True
    end
    object tTractaments_C20_4: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Delegacio_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'Delegacio'
      Size = 3
      Calculated = True
    end
    object tTractaments_C20_5: TStringField
      Tag = 101
      DisplayLabel = 'Responsable'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Delegacio_Responsable'
      LookupKeyFields = 'Responsable'
      KeyFields = 'Delegacio'
      Calculated = True
    end
    object tTractaments_C20_6: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Delegacio_Telefono'
      LookupKeyFields = 'Telefono'
      KeyFields = 'Delegacio'
      Size = 10
      Calculated = True
    end
    object tTractaments_C20_7: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Delegacio_CPostal'
      LookupKeyFields = 'CPostal'
      KeyFields = 'Delegacio'
      Size = 5
      Calculated = True
    end
    object tTractaments_C20_8: TStringField
      Tag = 101
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Delegacio_Provincia'
      LookupKeyFields = 'Provincia'
      KeyFields = 'Delegacio'
      Size = 44
      Calculated = True
    end
    object tTractaments_C20_9: TStringField
      Tag = 101
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Delegacio_Pais'
      LookupKeyFields = 'Pais'
      KeyFields = 'Delegacio'
      Size = 3
      Calculated = True
    end
    object tTractaments_C20_10: TStringField
      Tag = 101
      DisplayLabel = 'Fax'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Delegacio_Fax'
      LookupKeyFields = 'Fax'
      KeyFields = 'Delegacio'
      Size = 10
      Calculated = True
    end
    object tTractaments_C20_11: TStringField
      Tag = 101
      DisplayLabel = 'Nom via'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Delegacio_NomVia'
      LookupKeyFields = 'NomVia'
      KeyFields = 'Delegacio'
      Size = 30
      Calculated = True
    end
    object tTractaments_C20_12: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Via'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Delegacio_TipusVia'
      LookupKeyFields = 'TipusVia'
      KeyFields = 'Delegacio'
      Size = 4
      Calculated = True
    end
    object tTractaments_C20_13: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Delegacio_PerPacient'
      LookupKeyFields = 'PerPacient'
      KeyFields = 'Delegacio'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object tTractaments_C20_14: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi tipus UP'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Delegacio_C_TIPUS_UP'
      LookupKeyFields = 'C_TIPUS_UP'
      KeyFields = 'Delegacio'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C20_15: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' tipus UP'
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Delegacio_D_TIPUS_UP'
      LookupKeyFields = 'D_TIPUS_UP'
      KeyFields = 'Delegacio'
      Size = 255
      Calculated = True
    end
    object tTractaments_C20_16: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi subtipus UP'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Delegacio_C_SUBTIPUS_UP'
      LookupKeyFields = 'C_SUBTIPUS_UP'
      KeyFields = 'Delegacio'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C20_17: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' subtipus UP'
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Delegacio_D_SUBTIPUS_UP'
      LookupKeyFields = 'D_SUBTIPUS_UP'
      KeyFields = 'Delegacio'
      Size = 255
      Calculated = True
    end
    object tTractaments_C21_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'IcdIngres'
      Size = 15
      Calculated = True
    end
    object tTractaments_C21_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'IcdIngres'
      Size = 255
      Calculated = True
    end
    object tTractaments_C21_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'IcdIngres'
      Size = 1
      Calculated = True
    end
    object tTractaments_C21_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'IcdIngres'
      Size = 1
      Calculated = True
    end
    object tTractaments_C21_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'IcdIngres'
      Size = 15
      Calculated = True
    end
    object tTractaments_C21_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'IcdIngres'
      Size = 90
      Calculated = True
    end
    object tTractaments_C21_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'IcdIngres'
      Size = 24
      Calculated = True
    end
    object tTractaments_C21_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'IcdIngres'
      Size = 40
      Calculated = True
    end
    object tTractaments_C21_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'IcdIngres'
      Size = 15
      Calculated = True
    end
    object tTractaments_C21_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'IcdIngres'
      Size = 15
      Calculated = True
    end
    object tTractaments_C21_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'IcdIngres'
      Calculated = True
    end
    object tTractaments_C21_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'IcdIngres'
      Size = 1
      Calculated = True
    end
    object tTractaments_C21_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'IcdIngres'
      Size = 1
      Calculated = True
    end
    object tTractaments_C21_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'IcdIngres'
      Size = 1
      Calculated = True
    end
    object tTractaments_C21_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'IcdIngres'
      Size = 15
      Calculated = True
    end
    object tTractaments_C21_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'IcdIngres'
      Size = 15
      Calculated = True
    end
    object tTractaments_C21_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'IcdIngres'
      Size = 50
      Calculated = True
    end
    object tTractaments_C21_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'IcdIngres'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C22_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Llit'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Llit_C_LLit'
      LookupKeyFields = 'C_LLit'
      KeyFields = 'Llit'
      Size = 3
      Calculated = True
    end
    object tTractaments_C22_1: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Planta'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Llit_C_Planta'
      LookupKeyFields = 'C_Planta'
      KeyFields = 'Llit'
      Size = 10
      Calculated = True
    end
    object tTractaments_C22_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Llit_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Llit'
      Calculated = True
    end
    object tTractaments_C23_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Planta'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Planta_C_Planta'
      LookupKeyFields = 'C_Planta'
      KeyFields = 'Planta'
      Size = 10
      Calculated = True
    end
    object tTractaments_C23_1: TStringField
      Tag = 101
      DisplayLabel = 'Planta'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Planta_N_Planta'
      LookupKeyFields = 'N_Planta'
      KeyFields = 'Planta'
      Calculated = True
    end
    object tTractaments_C23_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Dia'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Planta_Dia'
      LookupKeyFields = 'Dia'
      KeyFields = 'Planta'
      Calculated = True
    end
    object tTractaments_C23_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Planta_Unitat'
      LookupKeyFields = 'Unitat'
      KeyFields = 'Planta'
      Calculated = True
    end
    object tTractaments_C24_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Provisional_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Provisional'
      Calculated = True
    end
    object tTractaments_C24_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Provisional_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Provisional'
      Size = 40
      Calculated = True
    end
    object tTractaments_C24_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Provisional_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Provisional'
      Calculated = True
    end
    object tTractaments_C24_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Provisional_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Provisional'
      Size = 40
      Calculated = True
    end
    object tTractaments_C24_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Provisional_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Provisional'
      Size = 10
      Calculated = True
    end
    object tTractaments_C24_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Provisional_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Provisional'
      Calculated = True
    end
    object tTractaments_C25_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Stock_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Stock'
      Calculated = True
    end
    object tTractaments_C25_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Stock_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Stock'
      Size = 40
      Calculated = True
    end
    object tTractaments_C25_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Stock_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Stock'
      Calculated = True
    end
    object tTractaments_C25_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Stock_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Stock'
      Size = 40
      Calculated = True
    end
    object tTractaments_C25_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Stock_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Stock'
      Size = 10
      Calculated = True
    end
    object tTractaments_C25_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Stock_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Stock'
      Calculated = True
    end
    object tTractaments_C26_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'vegada_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'vegada'
      Calculated = True
    end
    object tTractaments_C26_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'vegada_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'vegada'
      Size = 40
      Calculated = True
    end
    object tTractaments_C26_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'vegada_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'vegada'
      Calculated = True
    end
    object tTractaments_C26_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'vegada_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'vegada'
      Size = 40
      Calculated = True
    end
    object tTractaments_C26_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'vegada_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'vegada'
      Size = 10
      Calculated = True
    end
    object tTractaments_C26_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'vegada_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'vegada'
      Calculated = True
    end
    object tTractaments_C27_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'EstatFac_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'EstatFac'
      Calculated = True
    end
    object tTractaments_C27_1: TStringField
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
    object tTractaments_C27_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'EstatFac_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'EstatFac'
      Calculated = True
    end
    object tTractaments_C27_3: TStringField
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
    object tTractaments_C27_4: TStringField
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
    object tTractaments_C27_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'EstatFac_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'EstatFac'
      Calculated = True
    end
    object tTractaments_C28_0: TIntegerField
      Tag = 101
      DisplayLabel = 'C Equip'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'EquipAssist_c_equip'
      LookupKeyFields = 'c_equip'
      KeyFields = 'EquipAssist'
      Calculated = True
    end
    object tTractaments_C28_1: TStringField
      Tag = 101
      DisplayLabel = 'C Coordinador'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'EquipAssist_c_coordinador'
      LookupKeyFields = 'c_coordinador'
      KeyFields = 'EquipAssist'
      Size = 5
      Calculated = True
    end
    object tTractaments_C28_2: TStringField
      Tag = 101
      DisplayLabel = 'C Planta'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'EquipAssist_c_planta'
      LookupKeyFields = 'c_planta'
      KeyFields = 'EquipAssist'
      Size = 10
      Calculated = True
    end
    object tTractaments_C28_3: TSmallintField
      Tag = 101
      DisplayLabel = 'C Unitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'EquipAssist_c_unitat'
      LookupKeyFields = 'c_unitat'
      KeyFields = 'EquipAssist'
      Calculated = True
    end
    object tTractaments_C28_4: TStringField
      Tag = 101
      DisplayLabel = 'C Prestacio'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'EquipAssist_c_prestacio'
      LookupKeyFields = 'c_prestacio'
      KeyFields = 'EquipAssist'
      Size = 4
      Calculated = True
    end
    object tTractaments_C29_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_EXT_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'DESTI_CONT_EXT'
      Calculated = True
    end
    object tTractaments_C29_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_EXT_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'DESTI_CONT_EXT'
      Size = 40
      Calculated = True
    end
    object tTractaments_C29_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_EXT_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'DESTI_CONT_EXT'
      Calculated = True
    end
    object tTractaments_C29_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_EXT_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'DESTI_CONT_EXT'
      Size = 40
      Calculated = True
    end
    object tTractaments_C29_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_EXT_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'DESTI_CONT_EXT'
      Size = 10
      Calculated = True
    end
    object tTractaments_C29_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_EXT_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'DESTI_CONT_EXT'
      Calculated = True
    end
    object tTractaments_C30_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_INT_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'DESTI_CONT_INT'
      Calculated = True
    end
    object tTractaments_C30_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_INT_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'DESTI_CONT_INT'
      Size = 40
      Calculated = True
    end
    object tTractaments_C30_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_INT_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'DESTI_CONT_INT'
      Calculated = True
    end
    object tTractaments_C30_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_INT_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'DESTI_CONT_INT'
      Size = 40
      Calculated = True
    end
    object tTractaments_C30_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_INT_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'DESTI_CONT_INT'
      Size = 10
      Calculated = True
    end
    object tTractaments_C30_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_INT_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'DESTI_CONT_INT'
      Calculated = True
    end
    object tTractaments_C31_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TipHab_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TipHab'
      Calculated = True
    end
    object tTractaments_C31_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TipHab_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'TipHab'
      Size = 40
      Calculated = True
    end
    object tTractaments_C31_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TipHab_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TipHab'
      Calculated = True
    end
    object tTractaments_C31_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TipHab_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'TipHab'
      Size = 40
      Calculated = True
    end
    object tTractaments_C31_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TipHab_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'TipHab'
      Size = 10
      Calculated = True
    end
    object tTractaments_C31_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TipHab_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TipHab'
      Calculated = True
    end
    object tTractaments_C32_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Garant'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Garant_ID_GARANT'
      LookupKeyFields = 'ID_GARANT'
      KeyFields = 'Garant'
      Calculated = True
    end
    object tTractaments_C32_1: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Garant_COGNOM1'
      LookupKeyFields = 'COGNOM1'
      KeyFields = 'Garant'
      Calculated = True
    end
    object tTractaments_C32_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Garant_COGNOM2'
      LookupKeyFields = 'COGNOM2'
      KeyFields = 'Garant'
      Calculated = True
    end
    object tTractaments_C32_3: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Garant_NOM'
      LookupKeyFields = 'NOM'
      KeyFields = 'Garant'
      Calculated = True
    end
    object tTractaments_C32_4: TStringField
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
    object tTractaments_C32_5: TStringField
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
    object tTractaments_C32_6: TStringField
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
    object tTractaments_C32_7: TStringField
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
    object tTractaments_C32_8: TStringField
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
    object tTractaments_C32_9: TStringField
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
    object tTractaments_C32_10: TStringField
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
    object tTractaments_C32_11: TStringField
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
    object tTractaments_C32_12: TStringField
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
    object tTractaments_C32_13: TStringField
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
    object tTractaments_C33_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TSessio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object tTractaments_C33_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TSessio_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'TSessio'
      Size = 40
      Calculated = True
    end
    object tTractaments_C33_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TSessio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object tTractaments_C33_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TSessio_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'TSessio'
      Size = 40
      Calculated = True
    end
    object tTractaments_C33_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TSessio_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'TSessio'
      Size = 10
      Calculated = True
    end
    object tTractaments_C33_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TSessio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object tTractaments_C34_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Facilitador'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Facilitador_ID_FACILITADOR'
      LookupKeyFields = 'ID_FACILITADOR'
      KeyFields = 'Facilitador'
      Calculated = True
    end
    object tTractaments_C34_1: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Facilitador_COGNOM1'
      LookupKeyFields = 'COGNOM1'
      KeyFields = 'Facilitador'
      Calculated = True
    end
    object tTractaments_C34_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Facilitador_COGNOM2'
      LookupKeyFields = 'COGNOM2'
      KeyFields = 'Facilitador'
      Calculated = True
    end
    object tTractaments_C34_3: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Facilitador_NOM'
      LookupKeyFields = 'NOM'
      KeyFields = 'Facilitador'
      Size = 40
      Calculated = True
    end
    object tTractaments_C34_4: TStringField
      Tag = 101
      DisplayLabel = 'Nom d'#39'usuari'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Facilitador_NOM_USUARI'
      LookupKeyFields = 'NOM_USUARI'
      KeyFields = 'Facilitador'
      Size = 40
      Calculated = True
    end
    object tTractaments_C35_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'IcdIngresC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C35_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'IcdIngresC'
      Size = 255
      Calculated = True
    end
    object tTractaments_C35_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'IcdIngresC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C35_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'IcdIngresC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C35_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'IcdIngresC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C35_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'IcdIngresC'
      Size = 90
      Calculated = True
    end
    object tTractaments_C35_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'IcdIngresC'
      Size = 24
      Calculated = True
    end
    object tTractaments_C35_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'IcdIngresC'
      Size = 40
      Calculated = True
    end
    object tTractaments_C35_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'IcdIngresC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C35_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'IcdIngresC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C35_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'IcdIngresC'
      Calculated = True
    end
    object tTractaments_C35_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'IcdIngresC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C35_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'IcdIngresC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C35_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'IcdIngresC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C35_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'IcdIngresC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C35_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'IcdIngresC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C35_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'IcdIngresC'
      Size = 50
      Calculated = True
    end
    object tTractaments_C35_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'IcdIngresC'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C36_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'IcdAltaC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C36_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'IcdAltaC'
      Size = 255
      Calculated = True
    end
    object tTractaments_C36_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'IcdAltaC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C36_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'IcdAltaC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C36_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'IcdAltaC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C36_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'IcdAltaC'
      Size = 90
      Calculated = True
    end
    object tTractaments_C36_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'IcdAltaC'
      Size = 24
      Calculated = True
    end
    object tTractaments_C36_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'IcdAltaC'
      Size = 40
      Calculated = True
    end
    object tTractaments_C36_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'IcdAltaC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C36_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'IcdAltaC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C36_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'IcdAltaC'
      Calculated = True
    end
    object tTractaments_C36_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'IcdAltaC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C36_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'IcdAltaC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C36_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'IcdAltaC'
      Size = 1
      Calculated = True
    end
    object tTractaments_C36_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'IcdAltaC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C36_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'IcdAltaC'
      Size = 15
      Calculated = True
    end
    object tTractaments_C36_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'IcdAltaC'
      Size = 50
      Calculated = True
    end
    object tTractaments_C36_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'IcdAltaC'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C37_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'PublicaCMDB_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'PublicaCMDB'
      Size = 3
      Calculated = True
    end
    object tTractaments_C37_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'PublicaCMDB_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'PublicaCMDB'
      Size = 60
      Calculated = True
    end
    object tTractaments_C38_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TipusFrequencia_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TipusFrequencia'
      Calculated = True
    end
    object tTractaments_C38_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TipusFrequencia_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'TipusFrequencia'
      Size = 40
      Calculated = True
    end
    object tTractaments_C38_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TipusFrequencia_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TipusFrequencia'
      Calculated = True
    end
    object tTractaments_C38_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TipusFrequencia_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'TipusFrequencia'
      Size = 40
      Calculated = True
    end
    object tTractaments_C38_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TipusFrequencia_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'TipusFrequencia'
      Size = 10
      Calculated = True
    end
    object tTractaments_C38_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TipusFrequencia_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TipusFrequencia'
      Calculated = True
    end
    object tTractaments_C39_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'Prescriptor'
      Size = 5
      Calculated = True
    end
    object tTractaments_C39_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object tTractaments_C39_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'Prescriptor'
      Size = 15
      Calculated = True
    end
    object tTractaments_C39_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'Prescriptor'
      Size = 4
      Calculated = True
    end
    object tTractaments_C39_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Prescriptor'
      Size = 2
      Calculated = True
    end
    object tTractaments_C39_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'Prescriptor'
      Size = 2
      Calculated = True
    end
    object tTractaments_C39_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Prescriptor'
      Size = 1
      Calculated = True
    end
    object tTractaments_C39_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object tTractaments_C39_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'Prescriptor'
      Size = 1
      Calculated = True
    end
    object tTractaments_C39_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'Prescriptor'
      Size = 40
      Calculated = True
    end
    object tTractaments_C39_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object tTractaments_C39_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object tTractaments_C39_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object tTractaments_C39_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'Prescriptor'
      Size = 6
      Calculated = True
    end
    object tTractaments_C39_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'Prescriptor'
      Size = 9
      Calculated = True
    end
    object tTractaments_C39_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'Prescriptor'
      Size = 250
      Calculated = True
    end
    object tTractaments_C39_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'Prescriptor'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C39_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'Prescriptor'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object tTractaments_C40_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'MEF_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'MEF'
      Size = 5
      Calculated = True
    end
    object tTractaments_C40_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MEF_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'MEF'
      Calculated = True
    end
    object tTractaments_C40_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'MEF_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'MEF'
      Size = 15
      Calculated = True
    end
    object tTractaments_C40_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'MEF_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'MEF'
      Size = 4
      Calculated = True
    end
    object tTractaments_C40_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MEF_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'MEF'
      Size = 2
      Calculated = True
    end
    object tTractaments_C40_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MEF_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'MEF'
      Size = 2
      Calculated = True
    end
    object tTractaments_C40_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'MEF_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'MEF'
      Size = 1
      Calculated = True
    end
    object tTractaments_C40_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'MEF_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'MEF'
      Calculated = True
    end
    object tTractaments_C40_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'MEF_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'MEF'
      Size = 1
      Calculated = True
    end
    object tTractaments_C40_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'MEF_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'MEF'
      Size = 40
      Calculated = True
    end
    object tTractaments_C40_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MEF_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'MEF'
      Calculated = True
    end
    object tTractaments_C40_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MEF_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'MEF'
      Calculated = True
    end
    object tTractaments_C40_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MEF_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'MEF'
      Calculated = True
    end
    object tTractaments_C40_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'MEF_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'MEF'
      Size = 6
      Calculated = True
    end
    object tTractaments_C40_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'MEF_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'MEF'
      Size = 9
      Calculated = True
    end
    object tTractaments_C40_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'MEF_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'MEF'
      Size = 250
      Calculated = True
    end
    object tTractaments_C40_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'MEF_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'MEF'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tTractaments_C40_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'MEF_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'MEF'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object tTractaments_C41_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object tTractaments_C41_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'TransportSanitari'
      Size = 40
      Calculated = True
    end
    object tTractaments_C41_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object tTractaments_C41_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'TransportSanitari'
      Size = 40
      Calculated = True
    end
    object tTractaments_C41_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'TransportSanitari'
      Size = 10
      Calculated = True
    end
    object tTractaments_C41_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object tTractaments_C42_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'modalitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'modalitat'
      Calculated = True
    end
    object tTractaments_C42_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'modalitat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'modalitat'
      Size = 40
      Calculated = True
    end
  end
  object dsFiliacio: TDataSource
    DataSet = tFiliacio
    Left = 962
    Top = 571
  end
  object dsTractaments: TDataSource
    DataSet = tTractaments
    Left = 1089
    Top = 571
  end
  object tParent: ThySqlTable
    BeforeEdit = tParentBeforeEdit
    BeforePost = tParentBeforePost
    AfterPost = tParentAfterPost
    AfterCancel = tParentAfterCancel
    DatabaseName = 'Interna'
    RequestLive = True
    UniDirectional = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Parent
    IndiceActivo = 'Historia'
    CalcSimple = False
    AutoPost = False
    New.Active = True
    New.IndexAsc = 'Parent'
    New.OrderDbField = 'NUM_PAR'
    Left = 1016
    Top = 520
    object tParent_NUMPAR: TIntegerField
      Tag = 100
      DisplayLabel = 'Numpar'
      DisplayWidth = 4
      FieldName = 'NUMPAR'
      DisplayFormat = '#,##0.###;; '
    end
    object tParent_NUM_HIST: TIntegerField
      Tag = 100
      DisplayLabel = 'Num Hist'
      DisplayWidth = 4
      FieldName = 'NUM_HIST'
      DisplayFormat = '#,##0.###;; '
    end
    object tParent_NOM: TStringField
      Tag = 100
      DisplayLabel = 'Nom'
      DisplayWidth = 15
      FieldName = 'NOM'
      Size = 15
    end
    object tParent_COGNOM1: TStringField
      Tag = 100
      DisplayLabel = '1'#186' Cognom'
      DisplayWidth = 20
      FieldName = 'COGNOM1'
    end
    object tParent_COGNOM2: TStringField
      Tag = 100
      DisplayLabel = '2'#186' Cognom'
      DisplayWidth = 20
      FieldName = 'COGNOM2'
    end
    object tParent_ADRECA: TStringField
      Tag = 100
      DisplayLabel = 'Adreca'
      DisplayWidth = 30
      FieldName = 'ADRECA'
      Size = 30
    end
    object tParent_CODI: TStringField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 5
      FieldName = 'CODI'
      Size = 5
    end
    object tParent_POBLACIO: TStringField
      Tag = 100
      DisplayLabel = 'Poblacio'
      DisplayWidth = 30
      FieldName = 'POBLACIO'
      Size = 30
    end
    object tParent_PROVINCIA: TStringField
      Tag = 100
      DisplayLabel = 'Provincia'
      DisplayWidth = 20
      FieldName = 'PROVINCIA'
    end
    object tParent_TELEFON: TStringField
      Tag = 100
      DisplayLabel = 'Telefon'
      DisplayWidth = 10
      FieldName = 'TELEFON'
      Size = 10
    end
    object tParent_DATANAC: TDateTimeField
      Tag = 100
      DisplayLabel = 'Datanac'
      DisplayWidth = 8
      FieldName = 'DATANAC'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
  end
  object dsParent: TDataSource
    DataSet = tParent
    Left = 1017
    Top = 571
  end
  object cMetgePresta: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'SELECT A.Codi, A.Metge, A.Cognom, A.NC, A.Tracte, A.C_Grup, C.N_' +
        'Grup, A.C_Especial, D.N_Especial , B.C_Prestacio'
      'FROM [DIC1] A, [DIC2] B, [DIC3] C, [DIC4] D'
      
        'WHERE A.CODI             = B.CODI AND A.C_GRUP = C.C_GRUP AND A.' +
        'C_ESPECIAL = D.C_ESPECIAL'
      '/*      AND B.C_PRESTACIO = 1004*/'
      '[AND FILTRO]'
      '[ORDEN]'
      ''
      ' ')
    Dicionario1 = wDataBasics.Metges
    Dicionario2 = wDataCodis.MetgePresta
    Dicionario3 = wDataBasics.Grups
    Dicionario4 = wDataBasics.Especial
    Titulo = 'Consulta de Metges per prestaci'#243
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cMetgePrestaAlSeleccionar
    Left = 999
    Top = 265
  end
  object cParella: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select * from [Dic1]')
    Dicionario1 = wDataBasics.Parent
    Dicionario2 = wDataBasics.Filiacio
    Titulo = 'Consulta Parents'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cParellaAlSeleccionar
    Left = 1088
    Top = 263
  end
  object ActionList1: TActionList
    Images = wData.Images
    Left = 886
    Top = 114
    object USRA: TAction
      Caption = 'USRA'
      ImageIndex = 17
      OnExecute = USRAExecute
    end
    object accAmbulatori: TAction
      Caption = 'Impressi'#243' d'#39'Alta de Ambulatori'
    end
    object accAltaIngres: TAction
      Caption = 'Impressi'#243' de l'#39'Alta de la prestaci'#243' (%s)'
    end
    object accHDia: TAction
      Caption = 'accHDia'
    end
  end
  object Metge: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT Codi, Metge, C_Grup  FROM [DIC1] WHERE BAIXA = "N"'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataBasics.Metges
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = MetgeAlSeleccionar
    Left = 1088
    Top = 465
  end
  object Prestacio: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT P.*'
      
        'FROM DRETSPRESTA D JOIN PRESTACION P ON D.C_PRESTACIO = P.C_PRES' +
        'TACIO'
      'WHERE c_dret = "P2"'
      '[AND FILTRO]'
      '[ORDEN]'
      '')
    Dicionario1 = wDataBasics.Prestacion
    Orden.Strings = (
      'C_Prestacio')
    OrdenDB.Strings = (
      'C_Prestacio')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = PrestacioAlSeleccionar
    Left = 1088
    Top = 414
  end
  object consultaLlits: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT C_LLIT, PLANTA, N_PLANTA, TIPUS, PACIENT, DATA_ALTA'
      'FROM P_ESPERA_LLITS(NULL, "S")'
      'WHERE (TIPUS = "L"'
      'OR NOT DATA_ALTA IS NULL) AND PLANTA_TIPUS<>'#39'Q'#39
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataAdmisio.Llits
    Titulo = 'Consulta de Llits'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    CamposOculta.Strings = (
      'TIPUS')
    AlSeleccionar = consultaLlitsAlSeleccionar
    Left = 1088
    Top = 366
  end
  object PrestaProgramada: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT P.*'
      
        'FROM DRETSPRESTA D JOIN PRESTACION P ON D.C_PRESTACIO = P.C_PRES' +
        'TACIO'
      'WHERE c_dret = "P94"'
      '[AND FILTRO]'
      '[ORDEN]'
      '')
    Dicionario1 = wDataBasics.Prestacion
    Titulo = 'Prestacions Programables'
    Orden.Strings = (
      'C_Prestacio')
    OrdenDB.Strings = (
      'C_Prestacio')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = PrestaProgramadaAlSeleccionar
    Left = 1000
    Top = 316
  end
  object MotiuPrestaProgramada: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'Select P.C_CODI, C.N_CODI'
      'from prestacodicamps p, codicamps c'
      'where  P.C_CODI = C.C_CODI'
      'AND C_Prestacio = "1004" '
      'AND P.TIPUSCODI = "MOTIU"'
      'AND P.TIPUSCODI = C.TIPUSCODI'
      ''
      '')
    Dicionario1 = wDataCodis.CodiCamps
    Titulo = 'Motius de Prestacio Programada'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = MotiuPrestaProgramadaAlSeleccionar
    Left = 1000
    Top = 366
  end
  object qEsperaProg: THYSqlQuery
    DatabaseName = 'Interna'
    DataSource = dsTractaments
    SQL.Strings = (
      
        'SELECT E.C_PRESTACIO, P.N_PRESTACIO, E.C_MOTIU, C.N_CODI, E.C_CA' +
        'RACTER, C2.N_CODI AS N_CARACTER, E.C_FRECUENCIA, T.DESCRIPCIO AS' +
        ' N_FREQUENCIA, E.COMENTARIMETGE, E.COMENTARIINFERMERA'
      'FROM ((( ESPERA  E'
      
        '                 LEFT OUTER JOIN PRESTACION P ON E.C_PRESTACIO =' +
        ' P.C_PRESTACIO)'
      
        '                 LEFT OUTER JOIN CODICAMPS C ON C.TIPUSCODI = "M' +
        'OTIU" AND E.C_MOTIU = C.C_CODI)'
      
        '                 LEFT OUTER JOIN CODICAMPS C2 ON C2.TIPUSCODI = ' +
        '"CARACTER" AND E.C_CARACTER = C2.C_CODI)'
      
        '                 LEFT OUTER JOIN TORNAMB T ON E.C_FRECUENCIA = T' +
        '.CODI'
      'WHERE C_ESPERA = :C_ESPERAPROGRAMADA')
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.Espera
    IndiceActivo = 'Codi'
    CalcSimple = True
    AutoPost = False
    SqlDic.Strings = (
      
        'SELECT E.C_PRESTACIO, P.N_PRESTACIO, E.C_MOTIU, C.N_CODI, E.C_CA' +
        'RACTER, C2.N_CODI AS N_CARACTER, E.C_FRECUENCIA, T.DESCRIPCIO AS' +
        ' N_FREQUENCIA, E.COMENTARIMETGE, E.COMENTARIINFERMERA'
      'FROM ((( ESPERA  E'
      
        '                 LEFT OUTER JOIN PRESTACION P ON E.C_PRESTACIO =' +
        ' P.C_PRESTACIO)'
      
        '                 LEFT OUTER JOIN CODICAMPS C ON C.TIPUSCODI = "M' +
        'OTIU" AND E.C_MOTIU = C.C_CODI)'
      
        '                 LEFT OUTER JOIN CODICAMPS C2 ON C2.TIPUSCODI = ' +
        '"CARACTER" AND E.C_CARACTER = C2.C_CODI)'
      
        '                 LEFT OUTER JOIN TORNAMB T ON E.C_FRECUENCIA = T' +
        '.CODI'
      'WHERE C_ESPERA = :C_ESPERAPROGRAMADA')
    Left = 1088
    Top = 210
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_EsperaProgramada'
        ParamType = ptUnknown
      end>
    object qEsperaProgC_PRESTACIO: TStringField
      FieldName = 'C_PRESTACIO'
      Size = 4
    end
    object qEsperaProgN_PRESTACIO: TStringField
      FieldName = 'N_PRESTACIO'
      Size = 35
    end
    object qEsperaProgC_MOTIU: TSmallintField
      FieldName = 'C_MOTIU'
    end
    object qEsperaProgN_CODI: TStringField
      FieldName = 'N_CODI'
      Size = 40
    end
    object qEsperaProgC_FRECUENCIA: TStringField
      FieldName = 'C_FRECUENCIA'
      Size = 5
    end
    object qEsperaProgCOMENTARIMETGE: TStringField
      FieldName = 'COMENTARIMETGE'
      Size = 40
    end
    object qEsperaProgCOMENTARIINFERMERA: TStringField
      FieldName = 'COMENTARIINFERMERA'
      Size = 40
    end
    object qEsperaProgC_CARACTER: TSmallintField
      FieldName = 'C_CARACTER'
    end
    object qEsperaProgN_CARACTER: TStringField
      FieldName = 'N_CARACTER'
      Size = 40
    end
    object qEsperaProgN_FREQUENCIA: TStringField
      FieldName = 'N_FREQUENCIA'
      Size = 30
    end
  end
  object FrequenciaProgramada: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT CODI, DESCRIPCIO FROM [DIC1]')
    Dicionario1 = wDataGimnas.TornAmb
    Titulo = 'freq'#252#232'ncia de la Prestacio a Programmar'
    Orden.Strings = (
      'C_Prestacio')
    OrdenDB.Strings = (
      'C_Prestacio')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = FrequenciaProgramadaAlSeleccionar
    Left = 1002
    Top = 415
  end
  object cnsCaracterProgramacio: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'Select P.C_CODI, C.N_CODI'
      'from prestacodicamps p, codicamps c'
      'where  P.C_CODI = C.C_CODI'
      'AND C_Prestacio = "1004" '
      'AND P.TIPUSCODI = "CARACTER"'
      'AND P.TIPUSCODI = C.TIPUSCODI'
      ''
      '')
    Dicionario1 = wDataCodis.CodiCamps
    Titulo = 'Car'#224'cter de la prestacio a Programmar'
    Orden.Strings = (
      'C_Prestacio')
    OrdenDB.Strings = (
      'C_Prestacio')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cnsCaracterProgramacioAlSeleccionar
    Left = 1002
    Top = 465
  end
  object qPapers: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'Select C_EstatFac, C_Tractament'
      'from Tractaments '
      'where c_Historia = :Historia'
      'order by C_Tractament Desc')
    Left = 1006
    Top = 108
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Historia'
        ParamType = ptUnknown
      end>
  end
  object qDadesFactu: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select T.CADUCAPERMIS, T.REFERENCIA, T.PERCENTATGEPACIENT, T.C_C' +
        'ENTREFAC, T.C_CLIENT, T.C_DELEGACIO, C.N_CENTREFAC, D.N_DELEGACI' +
        'O, t.id_garant, g.nom, g.cognom1, g.cognom2'
      'from TRACTAMENTS T  '
      
        'join PRESTACION P on P.C_PRESTACIO = T.C_PRESTACIO and P.FACTURA' +
        'R = '#39'S'#39' and P.ESEASE = '#39'N'#39
      'left outer join CENTREFAC C on T.C_CENTREFAC = C.C_CENTREFAC'
      
        'left outer join DELEGACIONS D on T.C_CENTREFAC = D.C_CENTREFAC a' +
        'nd T.C_CLIENT = D.C_CLIENT and T.C_DELEGACIO = D.C_DELEGACIO'
      'left outer join GARANTS G on T.ID_GARANT=G.ID_GARANT'
      'where T.C_HISTORIA = :C_HISTORIA '
      'order by T.DATA_INGRES desc'
      ''
      '')
    Left = 1006
    Top = 159
    ParamData = <
      item
        DataType = ftString
        Name = 'C_HISTORIA'
        ParamType = ptUnknown
      end>
  end
  object cPoblacions: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'SELECT P.N_POBLACIO, P.CPOSTAL, V.N_PROVINCIA, P.C_RESIDENCIA, P' +
        '.C_PROVINCIA'
      
        'FROM POBLACIO P JOIN PROVINCIA V ON P.C_PROVINCIA = V.C_PROVINCI' +
        'A'
      'WHERE F_STRINGLENGTH(P.CPOSTAL)=5'
      '[AND FILTRO]'
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
    CamposOculta.Strings = (
      'C_PROVINCIA')
    AlSeleccionar = cPoblacionsAlSeleccionar
    Left = 1088
    Top = 316
  end
  object qFindEspera: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTractaments
    SQL.Strings = (
      'Select * from espera'
      
        'where (/*Data_Preingres is null or */Data_Preingres  = :Data_Ing' +
        'res )'
      '   and c_historia            = :c_historia  '
      '   and c_prestacio         = :c_prestacio '
      '   and c_estat between 30 and 39')
    Left = 1086
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Data_Ingres'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'c_historia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'c_prestacio'
        ParamType = ptUnknown
      end>
  end
  object qParametresFactu: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTractaments
    SQL.Strings = (
      'SELECT *'
      
        'FROM P_CENTREFAC_PARAMS (:C_CentreFac, :C_Client, :C_Delegacio, ' +
        ':C_Historia)')
    Left = 1086
    Top = 159
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
  object qEstatsFac: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select * from CodiCamps where TipusCodi = "ESTATFACTU"')
    Left = 1006
    Top = 210
  end
  object dsFotos: TDataSource
    DataSet = tFotos
    Left = 88
    Top = 296
  end
  object popFoto: TPopupMenu
    Left = 40
    Top = 296
    object Esborrar1: TMenuItem
      Caption = 'Esborrar'
      OnClick = Esborrar1Click
    end
    object Assignar1: TMenuItem
      Caption = 'Assignar'
      OnClick = JvDBFotografiaDblClick
    end
  end
  object tFotos: TIBDataSet
    Database = wDataImatges.Gdb
    Transaction = wDataImatges.Trans
    AfterCancel = tFotosAfterCancel
    AfterScroll = tFotosAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FOTOPACIENTE'
      'where c_HISTORIA = :C_HISTORIA')
    InsertSQL.Strings = (
      'INSERT INTO FOTOPACIENTE'
      '( FOTO,  C_HISTORIA,  FECHAFOTO)'
      'values'
      '(:FOTO, :C_HISTORIA, :FECHAFOTO)'
      '')
    RefreshSQL.Strings = (
      'SELECT  *'
      'FROM FOTOPACIENTE'
      'WHERE C_HISTORIA = :C_HISTORIA')
    SelectSQL.Strings = (
      'SELECT  *'
      'FROM FOTOPACIENTE'
      'WHERE C_HISTORIA = :C_HISTORIA')
    ModifySQL.Strings = (
      'UPDATE FOTOPACIENTE'
      'SET FOTO=:FOTO,'
      'FECHAFOTO=:FECHAFTO'
      'WHERE C_HISTORIA = :C_HISTORIA'
      '')
    Left = 40
    Top = 304
  end
  object qFotos2: TIBDataSet
    Database = wDataImatges.Gdb
    Transaction = wDataImatges.Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FOTOPACIENTE'
      'where c_HISTORIA = :C_HISTORIA')
    InsertSQL.Strings = (
      'INSERT INTO FOTOPACIENTE'
      '( FOTO,  C_HISTORIA,  FECHAFOTO)'
      'values'
      '(:FOTO, :C_HISTORIA, :FECHAFOTO)'
      '')
    RefreshSQL.Strings = (
      'SELECT  *'
      'FROM FOTOPACIENTE'
      'WHERE C_HISTORIA = :C_HISTORIA')
    SelectSQL.Strings = (
      'SELECT  *'
      'FROM FOTOPACIENTE'
      'WHERE C_HISTORIA = :C_HISTORIA')
    ModifySQL.Strings = (
      'UPDATE FOTOPACIENTE'
      'SET FOTO=:FOTO,'
      'FECHAFOTO=:FECHAFOTO'
      'WHERE C_HISTORIA = :C_HISTORIA'
      '')
    Left = 144
    Top = 304
  end
  object cPais: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select c_pais, n_pais from pais'
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataCodis.Pais
    Orden.Strings = (
      'codi pa'#237's'
      'descripci'#243' pa'#237's'
      '')
    OrdenDB.Strings = (
      'c_pais'
      'n_pais')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSimple = True
    AlSeleccionar = cPaisAlSeleccionar
    Left = 1088
    Top = 632
  end
  object cDistrictes: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select n_codi, c_codi '
      'from codicampsalfa'
      'where tipuscodi = '#39'DISTRICTES'#39
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataCodis.CodiCampsAlfa
    Titulo = 'Districtes de Barcelona Ciutat'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    VerSimple = True
    AlSeleccionar = cDistrictesAlSeleccionar
    Left = 1024
    Top = 632
  end
  object qEsUnespa: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTractaments
    SQL.Strings = (
      'SELECT ES_UNESPA'
      'FROM CLIENTS'
      'WHERE C_CENTREFAC = :C_CENTREFAC'
      'AND C_CLIENT =  :C_CLIENT')
    Left = 934
    Top = 175
    ParamData = <
      item
        DataType = ftString
        Name = 'C_CentreFac'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftString
        Name = 'C_Client'
        ParamType = ptUnknown
        Size = 4
      end>
    object qEsUnespaES_UNESPA: TStringField
      FieldName = 'ES_UNESPA'
      Origin = 'INTERNA.CLIENTS.ES_UNESPA'
      FixedChar = True
      Size = 1
    end
  end
  object qDieta: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select f.num_hist, f.nomcomplet as pacient, f.c_dieta, c.n_codi,' +
        ' f.obs_dieta, t.c_llit, t.c_planta, f.hora_dinar, f.c_ubicacio_d' +
        'inar, c2.n_codi as ubicacio'
      'from filiacio f join tractaments t on f.num_hist = t.c_historia'
      
        'left join codicamps c on f.c_dieta = c.c_codi and c.tipuscodi ="' +
        'DIETES"'
      
        'left join codicamps c2 on c2.tipuscodi="UBICACIO_DINAR" and c2.c' +
        '_codi=f.c_ubicacio_dinar'
      'WHERE t.c_tractament = 123456 /* LINIA 4 */')
    Left = 587
    Top = 417
    object qDietaPACIENT: TStringField
      FieldName = 'PACIENT'
      Size = 80
    end
    object qDietaC_DIETA: TSmallintField
      FieldName = 'C_DIETA'
    end
    object qDietaN_CODI: TStringField
      FieldName = 'N_CODI'
      Size = 40
    end
    object qDietaOBS_DIETA: TStringField
      FieldName = 'OBS_DIETA'
      Size = 40
    end
    object qDietaC_LLIT: TStringField
      FieldName = 'C_LLIT'
      Size = 3
    end
    object qDietaC_PLANTA: TStringField
      FieldName = 'C_PLANTA'
      Size = 15
    end
    object qDietaNUM_HIST: TIntegerField
      FieldName = 'NUM_HIST'
    end
    object qDietaHORA_DINAR: TStringField
      FieldName = 'HORA_DINAR'
      FixedChar = True
      Size = 5
    end
    object qDietaC_UBICACIO_DINAR: TSmallintField
      FieldName = 'C_UBICACIO_DINAR'
    end
    object qDietaUBICACIO: TStringField
      FieldName = 'UBICACIO'
      Size = 40
    end
  end
  object qFili: THYSqlQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select num_hist, apellido1, apellido2, nombre, edat, sexo, dni, ' +
        'tsi, soe from filiacio '
      'where apellido1='#39'GARCIA'#39' and apellido2='#39'GARCIA'#39'  /* l'#237'nia 1 */'
      'order by nombre, num_hist')
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Filiacio
    IndiceActivo = 'Historia'
    CalcSimple = True
    AutoPost = False
    SqlDic.Strings = (
      
        'select num_hist, apellido1, apellido2, nombre, edat, sexo, dni, ' +
        'tsi, soe from filiacio '
      'where apellido1='#39'GARCIA'#39' and apellido2='#39'GARCIA'#39'  /* l'#237'nia 1 */'
      'order by nombre, num_hist')
    Left = 520
    Top = 417
  end
  object Llistat: TkbmMemTable
    AutoSort = True
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 600
    Top = 473
    object LlistatFoto: TBlobField
      FieldName = 'Foto'
    end
    object Llistatc_historia: TIntegerField
      FieldName = 'c_historia'
    end
    object LlistatAPELLIDO1: TStringField
      FieldName = 'APELLIDO1'
    end
    object LlistatAPELLIDO2: TStringField
      FieldName = 'APELLIDO2'
    end
    object LlistatNOMBRE: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMBRE'
      Calculated = True
    end
    object LlistatEdat: TIntegerField
      FieldName = 'Edat'
    end
    object LlistatSexe: TStringField
      FieldName = 'Sexe'
    end
    object LlistatDNI: TStringField
      FieldKind = fkCalculated
      FieldName = 'DNI'
      Size = 9
      Calculated = True
    end
    object LlistatTSI: TStringField
      DisplayWidth = 14
      FieldName = 'TSI'
      Size = 14
    end
    object LlistatSOE: TStringField
      DisplayWidth = 12
      FieldName = 'SOE'
      Size = 12
    end
  end
  object dsLlistat: TDataSource
    DataSet = Llistat
    Left = 640
    Top = 473
  end
  object Dades: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 936
    Top = 112
    object DadesId: TStringField
      DisplayWidth = 8
      FieldName = 'Id'
      Size = 250
    end
    object DadesDFC_ACE: TStringField
      Tag = 1
      DisplayLabel = 'Adre'#231'a correu electr'#243'nic'
      DisplayWidth = 25
      FieldName = 'DFC_ACE'
      Size = 250
    end
    object DadesDFC_ALO: TStringField
      Tag = 1
      DisplayLabel = 'Any de lot (control lot seq'#252#232'ncia)'
      DisplayWidth = 50
      FieldName = 'DFC_ALO'
      Visible = False
      Size = 250
    end
    object DadesDFC_ANT: TStringField
      Tag = 1
      DisplayLabel = 'Any i ordre de TSI'
      DisplayWidth = 50
      FieldName = 'DFC_ANT'
      Visible = False
      Size = 250
    end
    object DadesDFC_AOFT: TStringField
      Tag = 1
      DisplayLabel = 'Any i ordre fabricaci'#243' targeta'
      DisplayWidth = 50
      FieldName = 'DFC_AOFT'
      Visible = False
      Size = 250
    end
    object DadesDFC_CABS: TStringField
      Tag = 1
      DisplayLabel = 'Codi ABS ('#224'rea b'#224'sica de salut)'
      DisplayWidth = 50
      FieldName = 'DFC_CABS'
      Visible = False
      Size = 250
    end
    object DadesDFC_CAD: TStringField
      Tag = 1
      DisplayLabel = 'Codi aplicaci'#243' destinaci'#243' (control lot seq'#252#232'ncia)'
      DisplayWidth = 50
      FieldName = 'DFC_CAD'
      Visible = False
      Size = 250
    end
    object DadesDFC_CAP: TStringField
      Tag = 1
      DisplayLabel = 'Aplicaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_CAP'
      Visible = False
      Size = 250
    end
    object DadesDFC_CAP_O: TStringField
      Tag = 1
      DisplayLabel = 'Codi aplicaci'#243' origen (control lot seq'#252#232'ncia)'
      DisplayWidth = 50
      FieldName = 'DFC_CAP_O'
      Visible = False
      Size = 250
    end
    object DadesDFC_CAUP: TStringField
      Tag = 1
      DisplayLabel = 'Criteri assignaci'#243' UP'
      DisplayWidth = 50
      FieldName = 'DFC_CAUP'
      Visible = False
      Size = 250
    end
    object DadesDFC_CBL: TStringField
      Tag = 1
      DisplayLabel = 'Bloc (adre'#231'a)'
      DisplayWidth = 50
      FieldName = 'DFC_CBL'
      Visible = False
      Size = 250
    end
    object DadesDFC_CCC_A: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero testimoni dades assegurament'
      DisplayWidth = 50
      FieldName = 'DFC_CCC_A'
      Visible = False
      Size = 250
    end
    object DadesDFC_CCC_CI: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero testimoni dades CIP'
      DisplayWidth = 50
      FieldName = 'DFC_CCC_CIP'
      Visible = False
      Size = 250
    end
    object DadesDFC_CCC_I: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero testimoni dades identificatives'
      DisplayWidth = 50
      FieldName = 'DFC_CCC_I'
      Visible = False
      Size = 250
    end
    object DadesDFC_CCC_L: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero testimoni dades localitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_CCC_L'
      Visible = False
      Size = 250
    end
    object DadesDFC_CCC_T: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero testimoni dades targeta'
      DisplayWidth = 50
      FieldName = 'DFC_CCC_T'
      Visible = False
      Size = 250
    end
    object DadesDFC_CCP: TStringField
      Tag = 1
      DisplayLabel = 'Codi nivell de cobertura'
      DisplayWidth = 27
      FieldName = 'DFC_CCP'
      Size = 250
    end
    object DadesDFC_CDE_1: TStringField
      Tag = 1
      DisplayLabel = 'Codi de la destinaci'#243' (control lot seq'#252#232'ncia)'
      DisplayWidth = 50
      FieldName = 'DFC_CDE_1'
      Visible = False
      Size = 250
    end
    object DadesDFC_CDE_2: TStringField
      Tag = 1
      DisplayLabel = 'Codi de la destinaci'#243' (control lot seq'#252#232'ncia)'
      DisplayWidth = 50
      FieldName = 'DFC_CDE_2'
      Visible = False
      Size = 250
    end
    object DadesDFC_CDINE: TStringField
      Tag = 1
      DisplayLabel = 'codi districte INE'
      DisplayWidth = 50
      FieldName = 'DFC_CDINE'
      Visible = False
      Size = 250
    end
    object DadesDFC_CDP: TStringField
      Tag = 1
      DisplayLabel = 'Codi districte postal (adre'#231'a)'
      DisplayWidth = 28
      FieldName = 'DFC_CDP'
      Size = 250
    end
    object DadesDFC_CEC: TStringField
      Tag = 1
      DisplayLabel = 'Codi entitat cotitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_CEC'
      Visible = False
      Size = 250
    end
    object DadesDFC_CES: TStringField
      Tag = 1
      DisplayLabel = 'Escala (adre'#231'a)'
      DisplayWidth = 16
      FieldName = 'DFC_CES'
      Size = 250
    end
    object DadesDFC_CFO_PC: TStringField
      Tag = 1
      DisplayLabel = 'Codi fon'#232'tic primer cognom assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_CFO_PC'
      Visible = False
      Size = 250
    end
    object DadesDFC_CFO_SC: TStringField
      Tag = 1
      DisplayLabel = 'Codi fon'#232'tic segon cognom assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_CFO_SC'
      Visible = False
      Size = 250
    end
    object DadesDFC_CGGC: TStringField
      Tag = 1
      DisplayLabel = 'Codi grup garanties'
      DisplayWidth = 50
      FieldName = 'DFC_CGGC'
      Visible = False
      Size = 250
    end
    object DadesDFC_CIDI: TStringField
      Tag = 1
      DisplayLabel = 'Idioma comunicaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_CIDI'
      Visible = False
      Size = 250
    end
    object DadesDFC_CIP: TStringField
      Tag = 1
      DisplayLabel = 'CIP Codi identificaci'#243' personal'
      DisplayWidth = 50
      FieldName = 'DFC_CIP'
      Visible = False
      Size = 250
    end
    object DadesDFC_CIP_V: TStringField
      Tag = 1
      DisplayLabel = 'CIP vigent'
      DisplayWidth = 19
      FieldName = 'DFC_CIP_V'
      Size = 250
    end
    object DadesDFC_CLO: TStringField
      Tag = 1
      DisplayLabel = 'Codi localitat (adre'#231'a)'
      DisplayWidth = 50
      FieldName = 'DFC_CLO'
      Visible = False
      Size = 250
    end
    object DadesDFC_CMCT: TStringField
      Tag = 1
      DisplayLabel = 'Codi de motiu de cancel'#183'laci'#243' de targeta'
      DisplayWidth = 50
      FieldName = 'DFC_CMCT'
      Visible = False
      Size = 250
    end
    object DadesDFC_CMO: TStringField
      Tag = 1
      DisplayLabel = 'Codi moviment comunicacions'
      DisplayWidth = 50
      FieldName = 'DFC_CMO'
      Visible = False
      Size = 250
    end
    object DadesDFC_CMRTS: TStringField
      Tag = 1
      DisplayLabel = 'Codi de motiu retorn targeta'
      DisplayWidth = 50
      FieldName = 'DFC_CMRTS'
      Visible = False
      Size = 250
    end
    object DadesDFC_CNSQ: TStringField
      Tag = 1
      DisplayLabel = 'Seq'#252'encial que cont'#233' resposta a una consulta'
      DisplayWidth = 50
      FieldName = 'DFC_CNSQ'
      Visible = False
      Size = 250
    end
    object DadesDFC_COR: TStringField
      Tag = 1
      DisplayLabel = 'Codi organitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_COR'
      Visible = False
      Size = 250
    end
    object DadesDFC_COR_1: TStringField
      Tag = 1
      DisplayLabel = 'Codi de origen 1 (control lot seq'#252#232'ncia)'
      DisplayWidth = 50
      FieldName = 'DFC_COR_1'
      Visible = False
      Size = 250
    end
    object DadesDFC_COR_2: TStringField
      Tag = 1
      DisplayLabel = 'Codi de origen 2 (control lot seq'#252#232'ncia)'
      DisplayWidth = 50
      FieldName = 'DFC_COR_2'
      Visible = False
      Size = 250
    end
    object DadesDFC_COT: TStringField
      Tag = 1
      DisplayLabel = 'Codi origen tramesa'
      DisplayWidth = 50
      FieldName = 'DFC_COT'
      Visible = False
      Size = 250
    end
    object DadesDFC_CPA: TStringField
      Tag = 1
      DisplayLabel = 'Nacionalitat administrativa'
      DisplayWidth = 50
      FieldName = 'DFC_CPA'
      Visible = False
      Size = 250
    end
    object DadesDFC_CPASS: TStringField
      Tag = 1
      DisplayLabel = 'Codi proced'#232'ncia'
      DisplayWidth = 50
      FieldName = 'DFC_CPASS'
      Visible = False
      Size = 250
    end
    object DadesDFC_CPE: TStringField
      Tag = 1
      DisplayLabel = 'Codi proc'#233's a executar en destinaci'#243' (control lot seq'#252#232'ncia)'
      DisplayWidth = 59
      FieldName = 'DFC_CPE'
      Size = 250
    end
    object DadesDFC_CPIS: TStringField
      Tag = 1
      DisplayLabel = 'Pis (adre'#231'a)'
      DisplayWidth = 15
      FieldName = 'DFC_CPIS'
      Size = 250
    end
    object DadesDFC_CPO: TStringField
      Tag = 1
      DisplayLabel = 'Porta (adre'#231'a)'
      DisplayWidth = 15
      FieldName = 'DFC_CPO'
      Size = 250
    end
    object DadesDFC_CPOR: TStringField
      Tag = 1
      DisplayLabel = 'Portal (adre'#231'a)'
      DisplayWidth = 16
      FieldName = 'DFC_CPOR'
      Size = 250
    end
    object DadesDFC_CRAA: TStringField
      Tag = 1
      DisplayLabel = 'R'#232'gim afiliaci'#243' assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_CRAA'
      Visible = False
      Size = 250
    end
    object DadesDFC_CSA: TStringField
      Tag = 1
      DisplayLabel = 'Situaci'#243' assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_CSA'
      Visible = False
      Size = 250
    end
    object DadesDFC_CSINE: TStringField
      Tag = 1
      DisplayLabel = 'codi secci'#243' INE'
      DisplayWidth = 50
      FieldName = 'DFC_CSINE'
      Visible = False
      Size = 250
    end
    object DadesDFC_CSTSI: TStringField
      Tag = 1
      DisplayLabel = 'Codi de situaci'#243' de TSI'
      DisplayWidth = 50
      FieldName = 'DFC_CSTSI'
      Visible = False
      Size = 250
    end
    object DadesDFC_CTO: TStringField
      Tag = 1
      DisplayLabel = 'Tipus organitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_CTO'
      Visible = False
      Size = 250
    end
    object DadesDFC_CTP: TStringField
      Tag = 1
      DisplayLabel = 'Codi tipus fitxers'
      DisplayWidth = 50
      FieldName = 'DFC_CTP'
      Visible = False
      Size = 250
    end
    object DadesDFC_CTT: TStringField
      Tag = 1
      DisplayLabel = 'Indicador de tipus targeta'
      DisplayWidth = 50
      FieldName = 'DFC_CTT'
      Visible = False
      Size = 250
    end
    object DadesDFC_CUG: TStringField
      Tag = 1
      DisplayLabel = 'Codi unitat GTF'
      DisplayWidth = 50
      FieldName = 'DFC_CUG'
      Visible = False
      Size = 250
    end
    object DadesDFC_CUP: TStringField
      Tag = 1
      DisplayLabel = 'Codi unitat prove'#239'dora assignada'
      DisplayWidth = 50
      FieldName = 'DFC_CUP'
      Visible = False
      Size = 250
    end
    object DadesDFC_CUP_S: TStringField
      Tag = 1
      DisplayLabel = 'Codi unitat prove'#239'dora sol'#183'licitada'
      DisplayWidth = 50
      FieldName = 'DFC_CUP_S'
      Visible = False
      Size = 250
    end
    object DadesDFC_CUP_T: TStringField
      Tag = 1
      DisplayLabel = 'Codi unitat prove'#239'dora per territorial'
      DisplayWidth = 50
      FieldName = 'DFC_CUP_T'
      Visible = False
      Size = 250
    end
    object DadesDFC_CUS_C: TStringField
      Tag = 1
      DisplayLabel = 'Usuari dades'
      DisplayWidth = 50
      FieldName = 'DFC_CUS_C'
      Visible = False
      Size = 250
    end
    object DadesDFC_DAL: TStringField
      Tag = 1
      DisplayLabel = 'Data creaci'#243' de targeta'
      DisplayWidth = 50
      FieldName = 'DFC_DAL'
      Visible = False
      Size = 250
    end
    object DadesDFC_DAL_A: TStringField
      Tag = 1
      DisplayLabel = 'Data dalta assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_DAL_A'
      Visible = False
      Size = 250
    end
    object DadesDFC_DCF: TStringField
      Tag = 1
      DisplayLabel = 'Data creaci'#243' fitxer'
      DisplayWidth = 50
      FieldName = 'DFC_DCF'
      Visible = False
      Size = 250
    end
    object DadesDFC_DCF_A: TStringField
      Tag = 1
      DisplayLabel = 'Data CF'
      DisplayWidth = 50
      FieldName = 'DFC_DCF_A'
      Visible = False
      Size = 250
    end
    object DadesDFC_DCP: TStringField
      Tag = 1
      DisplayLabel = 'Descripci'#243' nivell de cobertura'
      DisplayWidth = 50
      FieldName = 'DFC_DCP'
      Visible = False
      Size = 250
    end
    object DadesDFC_DDA: TStringField
      Tag = 1
      DisplayLabel = 'Data dades assegurament'
      DisplayWidth = 50
      FieldName = 'DFC_DDA'
      Visible = False
      Size = 250
    end
    object DadesDFC_DDA_A: TStringField
      Tag = 1
      DisplayLabel = 'Data dades assegurament assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_DDA_A'
      Visible = False
      Size = 250
    end
    object DadesDFC_DDID: TStringField
      Tag = 1
      DisplayLabel = 'Data dades identificatives'
      DisplayWidth = 50
      FieldName = 'DFC_DDID'
      Visible = False
      Size = 250
    end
    object DadesDFC_DDID_A: TStringField
      Tag = 1
      DisplayLabel = 'Data dades identificatives assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_DDID_A'
      Visible = False
      Size = 250
    end
    object DadesDFC_DDL: TStringField
      Tag = 1
      DisplayLabel = 'Data dades localitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_DDL'
      Visible = False
      Size = 250
    end
    object DadesDFC_DDL_A: TStringField
      Tag = 1
      DisplayLabel = 'Data dades localitzaci'#243' assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_DDL_A'
      Visible = False
      Size = 250
    end
    object DadesDFC_DDTSI: TStringField
      Tag = 1
      DisplayLabel = 'Data dades de targeta'
      DisplayWidth = 50
      FieldName = 'DFC_DDTSI'
      Visible = False
      Size = 250
    end
    object DadesDFC_DDTSI_: TStringField
      Tag = 1
      DisplayLabel = 'Data dades targeta assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_DDTSI_A'
      Visible = False
      Size = 250
    end
    object DadesDFC_DFDP: TStringField
      Tag = 1
      DisplayLabel = 'Data final del per'#237'ode'
      DisplayWidth = 50
      FieldName = 'DFC_DFDP'
      Visible = False
      Size = 250
    end
    object DadesDFC_DFDP_A: TStringField
      Tag = 1
      DisplayLabel = 'Data dades final'
      DisplayWidth = 50
      FieldName = 'DFC_DFDP_A'
      Visible = False
      Size = 250
    end
    object DadesDFC_DIDP: TStringField
      Tag = 1
      DisplayLabel = 'Data inici del per'#237'ode'
      DisplayWidth = 50
      FieldName = 'DFC_DIDP'
      Visible = False
      Size = 250
    end
    object DadesDFC_DIDP_A: TStringField
      Tag = 1
      DisplayLabel = 'Data dades inicials'
      DisplayWidth = 50
      FieldName = 'DFC_DIDP_A'
      Visible = False
      Size = 250
    end
    object DadesDFC_DIP: TStringField
      Tag = 1
      DisplayLabel = 'DIP'
      DisplayWidth = 50
      FieldName = 'DFC_DIP'
      Visible = False
      Size = 250
    end
    object DadesDFC_DNA: TStringField
      Tag = 1
      DisplayLabel = 'Data naixement'
      DisplayWidth = 50
      FieldName = 'DFC_DNA'
      Visible = False
      Size = 250
    end
    object DadesDFC_DNA_A: TStringField
      Tag = 1
      DisplayLabel = 'Data de naixement assegurat'
      DisplayWidth = 28
      FieldName = 'DFC_DNA_A'
      Size = 250
    end
    object DadesDFC_ERR: TStringField
      Tag = 1
      DisplayLabel = 'Codi error detectat al registre'
      DisplayWidth = 50
      FieldName = 'DFC_ERR'
      Visible = False
      Size = 250
    end
    object DadesDFC_IBIS: TStringField
      Tag = 1
      DisplayLabel = 'Indicador de bis (adre'#231'a)'
      DisplayWidth = 50
      FieldName = 'DFC_IBIS'
      Visible = False
      Size = 250
    end
    object DadesDFC_ICIPM: TStringField
      Tag = 1
      DisplayLabel = 'Indicador CIP malsonant'
      DisplayWidth = 50
      FieldName = 'DFC_ICIPM'
      Visible = False
      Size = 250
    end
    object DadesDFC_IDA: TStringField
      Tag = 1
      DisplayLabel = 'Indicador dades afiliaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_IDA'
      Visible = False
      Size = 250
    end
    object DadesDFC_IDI: TStringField
      Tag = 1
      DisplayLabel = 'Indicador dades identificatives'
      DisplayWidth = 50
      FieldName = 'DFC_IDI'
      Visible = False
      Size = 250
    end
    object DadesDFC_IDL: TStringField
      Tag = 1
      DisplayLabel = 'Indicador dades localitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_IDL'
      Visible = False
      Size = 250
    end
    object DadesDFC_IDM: TStringField
      Tag = 1
      DisplayLabel = 'Indicador de dades modificables'
      DisplayWidth = 50
      FieldName = 'DFC_IDM'
      Visible = False
      Size = 250
    end
    object DadesDFC_IDT: TStringField
      Tag = 1
      DisplayLabel = 'Indicador dades de targeta'
      DisplayWidth = 50
      FieldName = 'DFC_IDT'
      Visible = False
      Size = 250
    end
    object DadesDFC_IIEC: TStringField
      Tag = 1
      DisplayLabel = 'Indicador "i"'#157' entre cognoms'
      DisplayWidth = 50
      FieldName = 'DFC_IIEC'
      Visible = False
      Size = 250
    end
    object DadesDFC_IIT: TStringField
      Tag = 1
      DisplayLabel = 'Identificador intern tramesa'
      DisplayWidth = 50
      FieldName = 'DFC_IIT'
      Visible = False
      Size = 250
    end
    object DadesDFC_ILTU: TStringField
      Tag = 1
      DisplayLabel = 'Indicador de lliurament de la targeta a la UP'
      DisplayWidth = 50
      FieldName = 'DFC_ILTU'
      Visible = False
      Size = 250
    end
    object DadesDFC_IPAD: TStringField
      Tag = 1
      DisplayLabel = 'Indicador padr'#243
      DisplayWidth = 50
      FieldName = 'DFC_IPAD'
      Visible = False
      Size = 250
    end
    object DadesDFC_ITRE: TStringField
      Tag = 1
      DisplayLabel = 'Indicador sol'#183'licitud reemisi'#243' de targeta'
      DisplayWidth = 50
      FieldName = 'DFC_ITRE'
      Visible = False
      Size = 250
    end
    object DadesDFC_LSE: TStringField
      Tag = 1
      DisplayLabel = 'Lletra secci'#243' INE'
      DisplayWidth = 50
      FieldName = 'DFC_LSE'
      Visible = False
      Size = 250
    end
    object DadesDFC_MEC: TStringField
      Tag = 1
      DisplayLabel = 'Indicador de multicotitzaci'#243' de l'#39'assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_MEC'
      Visible = False
      Size = 250
    end
    object DadesDFC_NAAS: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero afiliaci'#243
      DisplayWidth = 16
      FieldName = 'DFC_NAAS'
      Size = 250
    end
    object DadesDFC_NART_S: TStringField
      Tag = 1
      DisplayLabel = 'Nom redu'#239't sol'#183'licitat per assegurat en la targeta'
      DisplayWidth = 50
      FieldName = 'DFC_NART_SOL'
      Visible = False
      Size = 250
    end
    object DadesDFC_NCP: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero de cap'#231'alera'
      DisplayWidth = 50
      FieldName = 'DFC_NCP'
      Visible = False
      Size = 250
    end
    object DadesDFC_NDID: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero document identificador'
      DisplayWidth = 50
      FieldName = 'DFC_NDID'
      Visible = False
      Size = 250
    end
    object DadesDFC_NFI: TStringField
      Tag = 1
      DisplayLabel = 'Nom del fitxer'
      DisplayWidth = 50
      FieldName = 'DFC_NFI'
      Visible = False
      Size = 250
    end
    object DadesDFC_NIA: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero intern assegurat'
      DisplayWidth = 50
      FieldName = 'DFC_NIA'
      Visible = False
      Size = 250
    end
    object DadesDFC_NLO: TStringField
      Tag = 1
      DisplayLabel = 'Nom localitat (adre'#231'a)'
      DisplayWidth = 50
      FieldName = 'DFC_NLO'
      Visible = False
      Size = 250
    end
    object DadesDFC_NLT: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero de lot (control lot seq'#252#232'ncia)'
      DisplayWidth = 50
      FieldName = 'DFC_NLT'
      Visible = False
      Size = 250
    end
    object DadesDFC_NOGT: TStringField
      Tag = 1
      DisplayLabel = 'Ordre final de la targeta'
      DisplayWidth = 50
      FieldName = 'DFC_NOGT'
      Visible = False
      Size = 250
    end
    object DadesDFC_NPE: TStringField
      Tag = 1
      DisplayLabel = 'Nom assegurat'
      DisplayWidth = 15
      FieldName = 'DFC_NPE'
      Size = 250
    end
    object DadesDFC_NQU: TStringField
      Tag = 1
      DisplayLabel = 'Quil'#242'metre (adre'#231'a)'
      DisplayWidth = 82
      FieldName = 'DFC_NQU'
      Size = 250
    end
    object DadesDFC_NRD: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero de registre de detall'
      DisplayWidth = 50
      FieldName = 'DFC_NRD'
      Visible = False
      Size = 250
    end
    object DadesDFC_NRD_ID: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero de registre de detall assegurament'
      DisplayWidth = 50
      FieldName = 'DFC_NRD_IDA'
      Visible = False
      Size = 250
    end
    object DadesDFC_NRD_TD: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero de registre de detall altres dades localitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_NRD_TDL'
      Visible = False
      Size = 250
    end
    object DadesDFC_NRE: TStringField
      Tag = 1
      DisplayLabel = 'Numero registre relacionats'
      DisplayWidth = 50
      FieldName = 'DFC_NRE'
      Visible = False
      Size = 250
    end
    object DadesDFC_NSAPA: TStringField
      Tag = 1
      DisplayWidth = 50
      FieldName = 'DFC_NSAPA'
      Visible = False
      Size = 250
    end
    object DadesDFC_NSQ: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero seq'#252'encial del registre'
      DisplayWidth = 50
      FieldName = 'DFC_NSQ'
      Visible = False
      Size = 250
    end
    object DadesDFC_NTE_1: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero tel'#232'fon 1'
      DisplayWidth = 18
      FieldName = 'DFC_NTE_1'
      Size = 250
    end
    object DadesDFC_NTE_2: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero tel'#232'fon 2'
      DisplayWidth = 19
      FieldName = 'DFC_NTE_2'
      Size = 250
    end
    object DadesDFC_NVI: TStringField
      Tag = 1
      DisplayLabel = 'Nom de via (adre'#231'a)'
      DisplayWidth = 20
      FieldName = 'DFC_NVI'
      Size = 250
    end
    object DadesDFC_NVIA_F: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero via final (adre'#231'a)'
      DisplayWidth = 25
      FieldName = 'DFC_NVIA_F'
      Size = 250
    end
    object DadesDFC_NVIA_I: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero via inicial (adre'#231'a)'
      DisplayWidth = 82
      FieldName = 'DFC_NVIA_I'
      Size = 250
    end
    object DadesDFC_PCG: TStringField
      Tag = 1
      DisplayLabel = 'Primer cognom assegurat       '
      DisplayWidth = 82
      FieldName = 'DFC_PCG'
      Size = 250
    end
    object DadesDFC_PRO: TStringField
      Tag = 1
      DisplayLabel = 'Codi processat'
      DisplayWidth = 50
      FieldName = 'DFC_PRO'
      Visible = False
      Size = 250
    end
    object DadesDFC_RAEC: TStringField
      Tag = 1
      DisplayLabel = 'Relaci'#243' amb entitat cotitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_RAEC'
      Visible = False
      Size = 250
    end
    object DadesDFC_SCG: TStringField
      Tag = 1
      DisplayLabel = 'Segon cognom assegurat'
      DisplayWidth = 82
      FieldName = 'DFC_SCG'
      Size = 250
    end
    object DadesDFC_SEXE: TStringField
      Tag = 1
      DisplayLabel = 'G'#232'nere assegurat'
      DisplayWidth = 82
      FieldName = 'DFC_SEXE'
      Size = 250
    end
    object DadesDFC_TAA: TStringField
      Tag = 1
      DisplayLabel = 'Tipus afiliaci'#243' assegurat'
      DisplayWidth = 82
      FieldName = 'DFC_TAA'
      Size = 250
    end
    object DadesDFC_TDI: TStringField
      Tag = 1
      DisplayLabel = 'T'#237'pus document identificador'
      DisplayWidth = 50
      FieldName = 'DFC_TDI'
      Visible = False
      Size = 250
    end
    object DadesDFC_TDL: TStringField
      Tag = 1
      DisplayLabel = 'Tipus dades localitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_TDL'
      Visible = False
      Size = 250
    end
    object DadesDFC_TFX: TStringField
      Tag = 1
      DisplayLabel = 'Tipus de registre'
      DisplayWidth = 50
      FieldName = 'DFC_TFX'
      Visible = False
      Size = 250
    end
    object DadesDFC_TOR: TStringField
      Tag = 1
      DisplayLabel = 'Tipus organitzaci'#243
      DisplayWidth = 50
      FieldName = 'DFC_TOR'
      Visible = False
      Size = 250
    end
    object DadesDFC_TRE: TStringField
      Tag = 1
      DisplayLabel = 'Tipus de registre de detall'
      DisplayWidth = 50
      FieldName = 'DFC_TRE'
      Visible = False
      Size = 250
    end
    object DadesDFC_TVI: TStringField
      Tag = 1
      DisplayLabel = 'Tipus de via (adre'#231'a)'
      DisplayWidth = 82
      FieldName = 'DFC_TVI'
      Size = 250
    end
    object DadesLAS_CBL: TStringField
      Tag = 1
      DisplayLabel = 'Bloc (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_CBL'
      Visible = False
      Size = 250
    end
    object DadesLAS_CDP: TStringField
      Tag = 1
      DisplayLabel = 'Codi districte postal (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_CDP'
      Visible = False
      Size = 250
    end
    object DadesLAS_CES: TStringField
      Tag = 1
      DisplayLabel = 'Escala (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_CES'
      Visible = False
      Size = 250
    end
    object DadesLAS_CLO: TStringField
      Tag = 1
      DisplayLabel = 'Codi localitat (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_CLO'
      Visible = False
      Size = 250
    end
    object DadesLAS_CPIS: TStringField
      Tag = 1
      DisplayLabel = 'Pis (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_CPIS'
      Visible = False
      Size = 250
    end
    object DadesLAS_CPO: TStringField
      Tag = 1
      DisplayLabel = 'Porta (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_CPO'
      Visible = False
      Size = 250
    end
    object DadesLAS_CPOR: TStringField
      Tag = 1
      DisplayLabel = 'Portal (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_CPOR'
      Visible = False
      Size = 250
    end
    object DadesLAS_DDL: TStringField
      Tag = 1
      DisplayLabel = 'Data altres dades localitzaci'#243
      DisplayWidth = 50
      FieldName = 'LAS_DDL'
      Visible = False
      Size = 250
    end
    object DadesLAS_DDL_A: TStringField
      Tag = 1
      DisplayLabel = 'Data altres dades de localitzaci'#243' assegurat'
      DisplayWidth = 50
      FieldName = 'LAS_DDL_A'
      Visible = False
      Size = 250
    end
    object DadesLAS_IBIS: TStringField
      Tag = 1
      DisplayLabel = 'Indicador Bis (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_IBIS'
      Visible = False
      Size = 250
    end
    object DadesLAS_NLO: TStringField
      Tag = 1
      DisplayLabel = 'Nom localitat (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_NLO'
      Visible = False
      Size = 250
    end
    object DadesLAS_NQU: TStringField
      Tag = 1
      DisplayLabel = 'Quil'#243'metre (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_NQU'
      Visible = False
      Size = 250
    end
    object DadesLAS_NVI: TStringField
      Tag = 1
      DisplayLabel = 'Nom de via (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_NVI'
      Visible = False
      Size = 250
    end
    object DadesLAS_NVIA_F: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero via final (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_NVIA_F'
      Visible = False
      Size = 250
    end
    object DadesLAS_NVIA_I: TStringField
      Tag = 1
      DisplayLabel = 'N'#250'mero via inicial (adre'#231'a altres dades localitzaci'#243')'
      DisplayWidth = 50
      FieldName = 'LAS_NVIA_I'
      Visible = False
      Size = 250
    end
  end
  object cCentre: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select c_centrefac, n_centrefac'
      'from centrefac'
      'where c_centrefac <>'#39'04'#39
      '[AND FILTRO]'
      'order by c_centrefac')
    Dicionario1 = wDataFactu.CentreFac
    Titulo = 'Centres de facturaci'#243
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cCentreAlSeleccionar
    Left = 960
    Top = 632
  end
  object cProvincies: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT C_PROVINCIA, N_PROVINCIA, N_PROVINCIA2'
      'FROM PROVINCIA '
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataCodis.Provincia
    Orden.Strings = (
      'Provincia')
    OrdenDB.Strings = (
      'C_Provincia')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cProvinciesAlSeleccionar
    Left = 960
    Top = 684
  end
  object qInfSol: TQuery
    DatabaseName = 'InternaHola'
    SQL.Strings = (
      'select NOMARXIU, TIPUS, DATAINFORME, USUARI'
      'from INFORMES'
      'where IDREGISTRE = :idregistre')
    Left = 632
    Top = 417
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idregistre'
        ParamType = ptInput
      end>
  end
  object tFiliDadesFac: ThySqlTable
    BeforeInsert = tFiliDadesFacBeforeInsert
    BeforeEdit = tFiliDadesFacBeforeEdit
    DatabaseName = 'Interna'
    RequestLive = True
    UniDirectional = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Fili_DadesFac
    IndiceActivo = 'pk'
    CalcSimple = False
    AutoPost = False
    New.Active = True
    New.IndexAsc = 'pk'
    New.OrderDbField = 'C_Historia'
    Left = 464
    Top = 416
    object tFiliDadesFac_C_Historia: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'C_Historia'
      DisplayFormat = '#,##0;; '
    end
    object tFiliDadesFac_C_CentreFac: TStringField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'C_CentreFac'
      Size = 2
    end
    object tFiliDadesFac_C_Client: TStringField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'C_Client'
      Size = 3
    end
    object tFiliDadesFac_C_Delegacio: TStringField
      Tag = 100
      DisplayWidth = 4
      FieldName = 'C_Delegacio'
      Size = 4
    end
    object tFiliDadesFac_data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'data'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object tFiliDadesFac_usuari: TStringField
      Tag = 100
      DisplayWidth = 5
      FieldName = 'usuari'
      Size = 5
    end
    object tFiliDadesFac_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'centrefac_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'centrefac'
      Size = 2
      Calculated = True
    end
    object tFiliDadesFac_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'centrefac_N_CentreFac'
      LookupKeyFields = 'N_CentreFac'
      KeyFields = 'centrefac'
      Calculated = True
    end
    object tFiliDadesFac_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'EsPrivat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'centrefac_EsPrivat'
      LookupKeyFields = 'EsPrivat'
      KeyFields = 'centrefac'
      Size = 1
      Calculated = True
    end
    object tFiliDadesFac_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'client_N_Client'
      LookupKeyFields = 'N_Client'
      KeyFields = 'client'
      Size = 40
      Calculated = True
    end
    object tFiliDadesFac_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'client_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'client'
      Size = 2
      Calculated = True
    end
    object tFiliDadesFac_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'client_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'client'
      Size = 3
      Calculated = True
    end
    object tFiliDadesFac_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Nif'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'client_NIF'
      LookupKeyFields = 'NIF'
      KeyFields = 'client'
      Size = 9
      Calculated = True
    end
    object tFiliDadesFac_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Es Unespa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'client_Es_Unespa'
      LookupKeyFields = 'Es_Unespa'
      KeyFields = 'client'
      Size = 1
      Calculated = True
    end
    object tFiliDadesFac_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Codi Unespa'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'client_CodiUnespa'
      LookupKeyFields = 'CodiUnespa'
      KeyFields = 'client'
      Size = 40
      Calculated = True
    end
    object tFiliDadesFac_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'delegacio_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'delegacio'
      Size = 4
      Calculated = True
    end
    object tFiliDadesFac_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Delegaci'#243
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'delegacio_N_Delegacio'
      LookupKeyFields = 'N_Delegacio'
      KeyFields = 'delegacio'
      Size = 50
      Calculated = True
    end
    object tFiliDadesFac_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'delegacio_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'delegacio'
      Size = 44
      Calculated = True
    end
    object tFiliDadesFac_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'delegacio_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'delegacio'
      Size = 2
      Calculated = True
    end
    object tFiliDadesFac_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'delegacio_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'delegacio'
      Size = 3
      Calculated = True
    end
    object tFiliDadesFac_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Responsable'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'delegacio_Responsable'
      LookupKeyFields = 'Responsable'
      KeyFields = 'delegacio'
      Calculated = True
    end
    object tFiliDadesFac_C2_6: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'delegacio_Telefono'
      LookupKeyFields = 'Telefono'
      KeyFields = 'delegacio'
      Size = 10
      Calculated = True
    end
    object tFiliDadesFac_C2_7: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'delegacio_CPostal'
      LookupKeyFields = 'CPostal'
      KeyFields = 'delegacio'
      Size = 5
      Calculated = True
    end
    object tFiliDadesFac_C2_8: TStringField
      Tag = 101
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'delegacio_Provincia'
      LookupKeyFields = 'Provincia'
      KeyFields = 'delegacio'
      Size = 44
      Calculated = True
    end
    object tFiliDadesFac_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'delegacio_Pais'
      LookupKeyFields = 'Pais'
      KeyFields = 'delegacio'
      Size = 3
      Calculated = True
    end
    object tFiliDadesFac_C2_10: TStringField
      Tag = 101
      DisplayLabel = 'Fax'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'delegacio_Fax'
      LookupKeyFields = 'Fax'
      KeyFields = 'delegacio'
      Size = 10
      Calculated = True
    end
    object tFiliDadesFac_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Nom via'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'delegacio_NomVia'
      LookupKeyFields = 'NomVia'
      KeyFields = 'delegacio'
      Size = 30
      Calculated = True
    end
    object tFiliDadesFac_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Via'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'delegacio_TipusVia'
      LookupKeyFields = 'TipusVia'
      KeyFields = 'delegacio'
      Size = 4
      Calculated = True
    end
    object tFiliDadesFac_C2_13: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'delegacio_PerPacient'
      LookupKeyFields = 'PerPacient'
      KeyFields = 'delegacio'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object tFiliDadesFac_C2_14: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi tipus UP'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'delegacio_C_TIPUS_UP'
      LookupKeyFields = 'C_TIPUS_UP'
      KeyFields = 'delegacio'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tFiliDadesFac_C2_15: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' tipus UP'
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'delegacio_D_TIPUS_UP'
      LookupKeyFields = 'D_TIPUS_UP'
      KeyFields = 'delegacio'
      Size = 255
      Calculated = True
    end
    object tFiliDadesFac_C2_16: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi subtipus UP'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'delegacio_C_SUBTIPUS_UP'
      LookupKeyFields = 'C_SUBTIPUS_UP'
      KeyFields = 'delegacio'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tFiliDadesFac_C2_17: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' subtipus UP'
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'delegacio_D_SUBTIPUS_UP'
      LookupKeyFields = 'D_SUBTIPUS_UP'
      KeyFields = 'delegacio'
      Size = 255
      Calculated = True
    end
  end
  object dsFiliDadesFac: TDataSource
    DataSet = tFiliDadesFac
    Left = 530
    Top = 475
  end
  object dsTDI: TDataSource
    DataSet = tFiliTDI
    Left = 410
    Top = 419
  end
  object tFiliTDI: THYSqlBrowse
    BeforeInsert = tFiliTDIBefore
    BeforeEdit = tFiliTDIBefore
    BeforePost = tFiliTDIBeforePost
    BeforeDelete = tFiliTDIBeforeDelete
    DatabaseName = 'Interna'
    RequestLive = True
    UniDirectional = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Fili_TDI
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsFiliacio
    Left = 408
    Top = 368
    object tFiliTDI_C_HISTORIA: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Hist'#242'ria'
      DisplayWidth = 8
      FieldName = 'C_HISTORIA'
      DisplayFormat = '#,##0;; '
    end
    object tFiliTDI_TDI: TStringField
      Tag = 100
      DisplayLabel = 'Tipus de document identificatiu'
      DisplayWidth = 20
      FieldName = 'TDI'
    end
    object tFiliTDI_CDI: TStringField
      Tag = 100
      DisplayLabel = 'Codi de document identificatiu'
      DisplayWidth = 25
      FieldName = 'CDI'
      Size = 25
    end
    object tFiliTDI_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'TDI_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TDI'
      Size = 15
      Calculated = True
    end
    object tFiliTDI_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'TDI_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'TDI'
      Size = 60
      Calculated = True
    end
  end
  object cDelegacio: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select d.c_delegacio, d.n_delegacio, d.c_centrefac, c.n_centrefa' +
        'c, d.c_client, cl.n_client, d.actiu'
      'from centrefac c'
      'join clients cl on c.c_centrefac=cl.c_centrefac'
      
        'join delegacions d on c.c_centrefac=d.c_centrefac and cl.c_clien' +
        't=d.c_client'
      'where d.actiu = '#39'S'#39
      'and d.c_centrefac = c_delegacio  /* linia 5 */'
      'and d.c_client = c_client  /* linia 6 */'
      '[AND FILTRO]'
      'order by d.n_delegacio')
    Dicionario1 = wDataFactu.CentreFac
    Titulo = 'Delegacions de facturaci'#243
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cDelegacioAlSeleccionar
    Left = 1028
    Top = 683
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
    Left = 1088
    Top = 688
    object StringField38: TStringField
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
    Left = 1144
    Top = 688
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
    Left = 1088
    Top = 740
  end
  object tFacilitadors: ThySqlTable
    AfterInsert = tFacilitadorsAfterInsert
    BeforePost = tFacilitadorsBeforePost
    AfterPost = tFacilitadorsAfterPost
    DatabaseName = 'Interna'
    RequestLive = True
    UniDirectional = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.Facilitadors
    IndiceActivo = 'Historia'
    CalcSimple = False
    AutoPost = False
    New.Active = True
    New.IndexAsc = 'facilitador'
    New.OrderDbField = 'id_facilitador'
    Left = 896
    Top = 520
    object tFacilitadors_NOM: TStringField
      Tag = 100
      DisplayLabel = 'Nom'
      DisplayWidth = 40
      FieldName = 'NOM'
      Size = 40
    end
    object tFacilitadors_COGNOM1: TStringField
      Tag = 100
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldName = 'COGNOM1'
    end
    object tFacilitadors_COGNOM2: TStringField
      Tag = 100
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldName = 'COGNOM2'
    end
    object tFacilitadors_ID_FACILITADOR: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Facilitador'
      DisplayWidth = 8
      FieldName = 'ID_FACILITADOR'
    end
  end
  object dsFacilitadors: TDataSource
    DataSet = tFacilitadors
    Left = 897
    Top = 571
  end
  object cFacilitadors: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select nom, cognom1, cognom2, id_facilitador from facilitadors')
    Dicionario1 = wDataAdmisio.Facilitadors
    Titulo = 'Llistat de facilitadors'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VeureAltreBoto = True
    NomAltraCosa = 'Modificar'
    NomAltreBoto = 'Nou'
    Indicacio = 'Bot'#243' NOU per a donar d'#39'alta nou facilitador'
    VerSimple = True
    CamposOculta.Strings = (
      'id_facilitador')
    AlSeleccionar = cFacilitadorsAlSeleccionar
    EnClicAltreBoto = cFacilitadorsEnClicAltreBoto
    Left = 896
    Top = 632
  end
  object cHtalDesti: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select c_hospital, CODI, n_hospital, POBLACIO, c_up'
      'from hospital'
      'where ACTIU='#39'S'#39
      '[AND FILTRO]')
    Dicionario1 = wDataCodis.Hospital
    Titulo = 'Hospital dest'#237
    Filtros = <
      item
        Nombre = 'tipus_up'
        NombreDB = 'tipus_up'
        Valor1 = '10'
        Tipo = tiNumero
        Condicion = tiIgual
      end>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    AlSeleccionar = cHtalDestiAlSeleccionar
    Left = 888
    Top = 688
  end
  object cEstatCivil: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select c_estat, n_estat from ESTATCIVIL'
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataCodis.EstatCivil
    Titulo = 'Llistat d'#39'estat civils'
    Orden.Strings = (
      'codi'
      'descripci'#243)
    OrdenDB.Strings = (
      'c_estat'
      'n_estat')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSimple = True
    AlSeleccionar = cEstatCivilAlSeleccionar
    Left = 1144
    Top = 632
  end
  object cCanviPresta: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select P.C_PRESTACIO, P.RESUM, P.N_PRESTACIO'
      'from PRESTACION P'
      
        'join DRETSPRESTA D on P.C_PRESTACIO = D.C_PRESTACIO and D.C_DRET' +
        ' = '#39'P175'#39
      
        'where P.C_PRESTACIO <> '#39'1004'#39'   /* l'#237'nia 3 - diferent de l'#39'origi' +
        'nal */'
      
        'and P.TIPUS = 2                              /* l'#237'nia 4 - mateix' +
        ' tipus que l'#39'original */'
      
        'and P.ESEASE = '#39'C'#39'                         /* l'#237'nia 5 - mateix g' +
        'rup que l'#39'original */'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataBasics.Prestacion
    Titulo = 'Escolliu la prestaci'#243
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    AlSeleccionar = cCanviPrestaAlSeleccionar
    Left = 768
    Top = 88
  end
  object cCanviCoord: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select M.CODI, M.NOMSENCER'
      'from METGES M '
      'join metgepresta mp on m.codi=mp.codi '
      'WHERE M.BAIXA = "N"'
      
        'AND M.CODI NOT IN(SELECT DM.C_USUARI FROM DRETSMETGES DM WHERE D' +
        'M.C_DRET='#39'M99'#39')'
      'and mp.c_prestacio='#39'3002'#39' /* linia 5 */'
      'and m.codi <> '#39'P05'#39' /* linia 6 */'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataBasics.MetgesVirtual
    Titulo = 'Escolliu el coordinador'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    AlSeleccionar = cCanviCoordAlSeleccionar
    Left = 504
    Top = 224
  end
  object cClient: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select cl.c_client, cl.n_client, cl.c_centrefac, c.n_centrefac'
      'from centrefac c'
      'join clients cl on c.c_centrefac=cl.c_centrefac'
      'where cl.c_centrefac = '#39'09'#39'  /* linia 3 */'
      '[AND FILTRO]'
      'order by cl.n_client')
    Dicionario1 = wDataFactu.CentreFac
    Titulo = 'Clients de facturaci'#243
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cClientAlSeleccionar
    Left = 820
    Top = 689
  end
  object qValSol: TQuery
    DatabaseName = 'InternaHola'
    SQL.Strings = (
      'select COMENTARI, DATA, USUARI'
      'from PACIENTSLIN'
      'where IDREGISTRE = :idregistre'
      'and TIPUS = '#39'R'#39' '
      'and DATA >= :data_desde'
      'order by DATA desc')
    Left = 680
    Top = 417
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idregistre'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'data_desde'
        ParamType = ptUnknown
      end>
  end
  object insValSol: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'insert into  HISTORIA ( C_Anotacio,  C_Historia,  Data,  Anotaci' +
        'o,  C_Usuari,  C_Grup,  C_Tractament,  C_Prestacio,  Data_Ingres' +
        ',  C_Coordinador,  EsRCP,  QueEs,  Link)'
      
        'values  (:C_Anotacio, :C_Historia, :Data, :Anotacio, :C_Usuari, ' +
        ':C_Grup, :C_Tractament, :C_Prestacio, :Data_Ingres, :C_Coordinad' +
        'or, :EsRCP, :QueEs, :Link)')
    Left = 728
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_Anotacio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_Historia'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Anotacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_Usuari'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_Grup'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_Tractament'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_Prestacio'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Data_Ingres'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_Coordinador'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EsRCP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QueEs'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Link'
        ParamType = ptInput
      end>
  end
  object consultaPlantes: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT C_PLANTA, N_PLANTA, DIA, UNITAT FROM PLANTES'
      'WHERE TIPUS <> '#39'Q'#39
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataAdmisio.Plantas
    Titulo = 'Consulta de Plantes'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    CamposOculta.Strings = (
      'TIPUS')
    AlSeleccionar = consultaPlantesAlSeleccionar
    Left = 1176
    Top = 366
  end
  object qFiSol: TQuery
    DatabaseName = 'InternaHola'
    SQL.Strings = (
      'select COMENTARI, DATA, USUARI'
      'from PACIENTSLIN'
      'where IDREGISTRE = :idregistre'
      'and TIPUS = '#39'F'#39
      'and DATA >= :data_desde'
      'order by DATA desc')
    Left = 680
    Top = 377
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idregistre'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'data_desde'
        ParamType = ptUnknown
      end>
  end
end
