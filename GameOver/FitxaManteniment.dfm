object wFitxaManteniment: TwFitxaManteniment
  Left = 345
  Top = 144
  Width = 1200
  Height = 644
  Caption = 'Fitxa Manteniment Processos'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 261
    Width = 1192
    Height = 5
    Cursor = crVSplit
    Align = alTop
    Color = clSilver
    ParentColor = False
  end
  object areaProcessos: THYArea
    Left = 0
    Top = 266
    Width = 1192
    Height = 347
    VertScrollBar.Position = 260
    Align = alClient
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    DataSource = dsProcessos
    object Shape4: TShape
      Left = 0
      Top = -235
      Width = 1233
      Height = 342
      Align = alTop
    end
    object Eti_brwProcessos_Escola_NomEscola: THYLabel
      Left = 239
      Top = -166
      Width = 400
      Height = 19
      DataField = 'Escola_NomEscola'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_Escola_Poblacio: THYLabel
      Left = 239
      Top = -117
      Width = 400
      Height = 19
      DataField = 'Escola_Poblacio'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_TipusSessio_n_codi: THYLabel
      Left = 269
      Top = 78
      Width = 364
      Height = 19
      DataField = 'TipusSessio_n_codi'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_Escola_Comarca: THYLabel
      Left = 239
      Top = -142
      Width = 50
      Height = 19
      DataField = 'Escola_Comarca'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Shape5: TShape
      Left = 0
      Top = 107
      Width = 1233
      Height = 154
      Align = alTop
    end
    object Eti_brwProcessos_Professional_Nom: THYLabel
      Left = 239
      Top = 143
      Width = 263
      Height = 19
      DataField = 'Professional_Nom'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_Professional_Cognom1: THYLabel
      Left = 239
      Top = 119
      Width = 263
      Height = 19
      DataField = 'Professional_Cognom1'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_Professional_Cognom2: THYLabel
      Left = 503
      Top = 119
      Width = 263
      Height = 19
      DataField = 'Professional_Cognom2'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_Professional_Poblacio: THYLabel
      Left = 239
      Top = 218
      Width = 400
      Height = 19
      DataField = 'Professional_Poblacio'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_Professional_Comarca: THYLabel
      Left = 239
      Top = 193
      Width = 50
      Height = 19
      DataField = 'Professional_Comarca'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object sbMailMonitor: TSpeedButton
      Left = 22
      Top = 190
      Width = 113
      Height = 22
      Caption = 'Enviar e-mail monitor'
      OnClick = EnviarMailMonitor
    end
    object Shape6: TShape
      Left = 0
      Top = 261
      Width = 1233
      Height = 65
      Align = alTop
    end
    object sbMailEscola: TSpeedButton
      Left = 432
      Top = 269
      Width = 123
      Height = 22
      Caption = 'Enviar e-mail escola'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbMailEscolaClick
    end
    object sbAnulaProces: TSpeedButton
      Left = 432
      Top = 296
      Width = 123
      Height = 22
      Caption = 'Anul'#183'lar proc'#233's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbAnulaProcesClick
    end
    object Eti_brwProcessos_Estat_n_codi: THYLabel
      Left = 134
      Top = 272
      Width = 291
      Height = 19
      DataField = 'Estat_n_codi'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Label1: TLabel
      Left = 25
      Top = 275
      Width = 79
      Height = 13
      Caption = 'Estat del proc'#233's:'
    end
    object Eti_brwProcessos_Escola_Observacions: THYLabel
      Left = 650
      Top = -166
      Width = 263
      Height = 67
      DataField = 'Escola_Observacio'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object sbMonitor: TSpeedButton
      Left = 776
      Top = 118
      Width = 113
      Height = 20
      Caption = 'Consultar monitor'
      OnClick = sbMonitorClick
    end
    object Comarcae_n_codi: THYLabel
      Left = 295
      Top = -142
      Width = 344
      Height = 19
      DataField = 'ComarcaE_n_codi'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object comarcaP_n_codi: THYLabel
      Left = 295
      Top = 193
      Width = 343
      Height = 19
      DataField = 'ComarcaP_n_codi'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_Escola_Telefon: THYLabel
      Left = 238
      Top = -45
      Width = 400
      Height = 19
      DataField = 'Escola_Telefon'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_Escola_Adreca: THYLabel
      Left = 238
      Top = -93
      Width = 400
      Height = 19
      DataField = 'Escola_Adreca'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_Escola_Email: THYLabel
      Left = 238
      Top = -69
      Width = 400
      Height = 19
      DataField = 'Escola_Email'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Label_Observacions: TLabel
      Left = 650
      Top = -65
      Width = 68
      Height = 13
      Caption = 'Observacions:'
    end
    object Eti_brwProcessos_Professional_Mobil: THYLabel
      Left = 239
      Top = 166
      Width = 263
      Height = 19
      DataField = 'Professional_Mobil'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object sbCanviMonitor: TSpeedButton
      Left = 112
      Top = 117
      Width = 89
      Height = 22
      Caption = 'Canviar monitor'
      OnClick = sbCanviMonitorClick
    end
    object Eti_brwProcessos_Professional_Email: THYLabel
      Left = 503
      Top = 166
      Width = 400
      Height = 19
      DataField = 'Professional_Email'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Bevel1: TBevel
      Left = 460
      Top = -26
      Width = 106
      Height = 101
      Shape = bsFrame
      Style = bsRaised
    end
    object Eti_brwProcessos_Professional_MAX_XERRADES_MES: THYLabel
      Left = 645
      Top = 143
      Width = 51
      Height = 19
      DataField = 'Professional_MAX_XERRADES_MES'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Label8: TLabel
      Left = 505
      Top = 146
      Width = 137
      Height = 13
      Caption = 'M'#224'xim n'#186' de xerrades al mes:'
    end
    object Label9: TLabel
      Left = 923
      Top = -185
      Width = 219
      Height = 13
      Caption = 'Observacions internes (no s'#39'envien al monitor):'
    end
    object Eti_brwProcessos_Escola_ObsInternes: THYLabel
      Left = 922
      Top = -166
      Width = 263
      Height = 67
      DataField = 'Escola_ObsInternes'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Eti_brwProcessos_PeticioDe_n_codi: THYLabel
      Left = 119
      Top = -195
      Width = 231
      Height = 19
      DataField = 'PeticioDe_n_codi'
      DataSource = dsProcessos
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object bProcessos: THYBarra
      Left = 0
      Top = -260
      Width = 1233
      Height = 25
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = clSilver
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      DataSource = dsProcessos
      VerOrdenar = False
      VerIndices = False
      Titulo = False
      VerPrint = False
      VerRefresh = True
      object lUserActiu: TLabel
        Left = 1108
        Top = 0
        Width = 125
        Height = 25
        Align = alRight
        Caption = 'Usuari Actiu: XXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object sbDuplica: TSpeedButton
        Left = 272
        Top = 1
        Width = 23
        Height = 25
        Hint = 'Copia proc'#233's'
        Flat = True
        Glyph.Data = {
          96010000424D9601000000000000760000002800000018000000180000000100
          04000000000020010000130B0000130B00001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9990000000000000000999999990FFFFFFFFFFFFFF0999999090F00000FFFF88
          8F0999999890FFFFFFFFFF777F0999989000F0000FFFFFFFFF0999989090FFFF
          FFFFFF888F0998900090F000FFFFFF777F0997909890FFFFFFFFFFFFFF099808
          9090F000000FFFFFFF0990909800FFFFFFFFFFFFFF0998989090F00000000FFF
          FF0997980890FFFFFFFFFFFFFF09989090900000000000000009970898999990
          9999990999999098908080008080808089999790999990999999099999999898
          8088088088008089999997999990999999099999999998787808787870787999
          9999999990999999099999999999999999999999999999999999}
        OnClick = sbDuplicaClick
      end
    end
    object Ed_brwProcessos_Escola: THYEdit
      Left = 118
      Top = -167
      Width = 114
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Escola'
      EtiSepara = 45
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 3
      AutoSelect = False
      OnChange = Ed_brwProcessos_EscolaChange
      DataSource = dsProcessos
      DataField = 'Escola'
    end
    object Ed_brwProcessos_Data_Trucada: THYEdit
      Left = 22
      Top = -220
      Width = 163
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Data trucada'
      EtiSepara = 70
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 0
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Data_Trucada'
    end
    object Ed_brwProcessos_DataSollicitud: THYEdit
      Left = 201
      Top = -220
      Width = 178
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Data sol'#183'licitada'
      EtiSepara = 85
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 1
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'DATASOLLICITUD'
    end
    object Ed_brwProcessos_Horari: THYEdit
      Left = 30
      Top = -18
      Width = 410
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Horari'
      EtiSepara = 110
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 4
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Horari'
    end
    object Ed_brwProcessos_Curs: THYEdit
      Left = 30
      Top = 6
      Width = 410
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Curs'
      EtiSepara = 110
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      Enabled = False
      TabOrder = 5
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Curs'
    end
    object Ed_brwProcessos_Contacte: THYEdit
      Left = 30
      Top = 30
      Width = 410
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Persona de contacte'
      EtiSepara = 110
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 6
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Contacte'
    end
    object Ed_brwProcessos_Num_alumnes: THYEdit
      Left = 30
      Top = 54
      Width = 179
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'N'#250'mero d'#39'alumnes'
      EtiSepara = 110
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 7
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Num_alumnes'
    end
    object Ed_brwProcessos_Num_grup: THYEdit
      Left = 271
      Top = 54
      Width = 169
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'N'#250'mero de grup'
      EtiSepara = 100
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 8
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Num_grup'
    end
    object Ed_brwProcessos_Tipus_sessio: THYEdit
      Left = 30
      Top = 78
      Width = 179
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Tipus de sessio'
      EtiSepara = 110
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 9
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Tipus_sessio'
    end
    object Ed_brwProcessos_Monitor: THYEdit
      Left = 22
      Top = 118
      Width = 83
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Monitor'
      EtiSepara = 45
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 10
      AutoSelect = False
      OnChange = Ed_brwProcessos_MonitorChange
      DataSource = dsProcessos
      DataField = 'Monitor'
    end
    object Ed_brwProcessos_DATA_MONITOR: THYEdit
      Left = 22
      Top = 218
      Width = 203
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Data e-mail Monitor'
      EtiSepara = 110
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 11
      AutoSelect = False
      ReadOnly = True
      DataSource = dsProcessos
      DataField = 'DATA_MONITOR'
    end
    object Ed_brwProcessos_Data_Anula: THYEdit
      Left = 560
      Top = 301
      Width = 243
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Data anul'#183'laci'#243' proc'#233's'
      EtiSepara = 150
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      Enabled = False
      TabOrder = 13
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Data_Anula'
    end
    object Ed_brwProcessos_DATA_ESCOLA: THYEdit
      Left = 560
      Top = 272
      Width = 243
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Data enviament e-mail Escola'
      EtiSepara = 150
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 12
      AutoSelect = False
      ReadOnly = True
      DataSource = dsProcessos
      DataField = 'DATA_ESCOLA'
    end
    object cbCanvis: TDBCheckBox
      Left = 652
      Top = -95
      Width = 15
      Height = 17
      DataField = 'Canvis'
      DataSource = dsProcessos
      TabOrder = 14
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object eCanvis: TDBEdit
      Left = 676
      Top = -95
      Width = 235
      Height = 21
      DataField = 'L_canvis'
      DataSource = dsProcessos
      TabOrder = 15
    end
    object Memo_brwProcessos_Observacions: THYMemo
      Left = 650
      Top = -47
      Width = 583
      Height = 143
      DataField = 'Observacions'
      DataSource = dsProcessos
      TabOrder = 16
    end
    object Check_brwProcessos_Curs3erESO: THYCheck
      Left = 464
      Top = -23
      Width = 66
      Height = 17
      Alignment = taRightJustify
      Caption = '3er ESO'
      DataField = 'Curs3erESO'
      DataSource = dsProcessos
      TabOrder = 17
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Check_brwProcessos_Curs4rtESO: THYCheck
      Left = 464
      Top = -7
      Width = 61
      Height = 17
      Alignment = taRightJustify
      Caption = '4rt ESO'
      DataField = 'Curs4rtESO'
      DataSource = dsProcessos
      TabOrder = 18
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Check_brwProcessos_Curs1erBAT: THYCheck
      Left = 464
      Top = 9
      Width = 65
      Height = 17
      Alignment = taRightJustify
      Caption = '1er BAT'
      DataField = 'Curs1erBAT'
      DataSource = dsProcessos
      TabOrder = 19
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Check_brwProcessos_Curs2onBAT: THYCheck
      Left = 464
      Top = 25
      Width = 64
      Height = 17
      Alignment = taRightJustify
      Caption = '2on BAT'
      DataField = 'Curs2onBAT'
      DataSource = dsProcessos
      TabOrder = 20
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Check_brwProcessos_CiclesFormatius: THYCheck
      Left = 464
      Top = 41
      Width = 94
      Height = 17
      Alignment = taRightJustify
      Caption = 'Cicles formatius'
      DataField = 'CiclesFormatius'
      DataSource = dsProcessos
      TabOrder = 21
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Check_brwProcessos_AltresCursos: THYCheck
      Left = 464
      Top = 57
      Width = 84
      Height = 17
      Alignment = taRightJustify
      Caption = 'Altres Cursos'
      DataField = 'AltresCursos'
      DataSource = dsProcessos
      TabOrder = 22
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      OnClick = Check_brwProcessos_AltresCursosClick
    end
    object Ed_brwProcessos_Peticio_De_Altres: THYEdit
      Left = 356
      Top = -194
      Width = 335
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Altres'
      EtiSepara = 35
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 23
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Peticio_De_Altres'
    end
    object Ed_brwProcessos_Peticio_De: THYEdit
      Left = 22
      Top = -195
      Width = 94
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Petici'#243' de'
      EtiSepara = 70
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataGameOver.Processos
      TabOrder = 24
      AutoSelect = False
      DataSource = dsProcessos
      DataField = 'Peticio_De'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1192
    Height = 49
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    MANTENIMENT DE PROCESSOS'
    Color = clSilver
    TabOrder = 1
    object lTopeProcessos: TLabel
      Left = 728
      Top = 1
      Width = 72
      Height = 47
      Align = alRight
      Caption = 'N'#250'mero m'#224'xim de processos per dia: '
      Layout = tlCenter
      WordWrap = True
    end
    object Label10: TLabel
      Left = 800
      Top = 1
      Width = 42
      Height = 47
      Align = alRight
      Caption = '              '
    end
    object Panel2: TPanel
      Left = 842
      Top = 1
      Width = 349
      Height = 47
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Label2: TLabel
        Left = 18
        Top = 4
        Width = 59
        Height = 13
        Caption = 'Proc'#233's actiu'
      end
      object Shape1: TShape
        Left = 6
        Top = 4
        Width = 9
        Height = 13
        Brush.Color = 7124735
      end
      object Label3: TLabel
        Left = 17
        Top = 18
        Width = 157
        Height = 13
        Caption = 'Monitor avisat, falta avisar escola'
      end
      object Shape2: TShape
        Left = 6
        Top = 18
        Width = 9
        Height = 13
        Brush.Color = clAqua
      end
      object Shape3: TShape
        Left = 6
        Top = 33
        Width = 9
        Height = 13
        Brush.Color = 8454016
      end
      object Label4: TLabel
        Left = 19
        Top = 33
        Width = 166
        Height = 13
        Caption = 'Escola avisada, falta avisar monitor'
      end
      object Shape8: TShape
        Left = 214
        Top = 17
        Width = 9
        Height = 13
        Brush.Color = clRed
      end
      object Label5: TLabel
        Left = 227
        Top = 17
        Width = 32
        Height = 13
        Caption = 'Canvis'
      end
      object Shape9: TShape
        Left = 214
        Top = 32
        Width = 9
        Height = 13
        Brush.Color = 14869218
      end
      object Label6: TLabel
        Left = 227
        Top = 32
        Width = 46
        Height = 13
        Caption = 'Anul'#183'lats  '
      end
      object Shape10: TShape
        Left = 214
        Top = 2
        Width = 9
        Height = 13
        Brush.Color = 16717823
      end
      object Label7: TLabel
        Left = 227
        Top = 2
        Width = 116
        Height = 13
        Caption = 'Escola i monitor avisats  '
      end
    end
    object boto: TButton
      Left = 256
      Top = 16
      Width = 73
      Height = 18
      Hint = 'Clicar aqu'#237' per a veure TOTS els processos.'
      Caption = 'TOTS'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = botoClick
    end
  end
  object pcProcessos: HYPanelConsulta
    Left = 0
    Top = 49
    Width = 1192
    Height = 212
    Align = alTop
    Color = clSilver
    TabOrder = 2
    Abierta = False
    SqlDic.Strings = (
      
        'select p.datasollicitud, p.estat, p.canvis, p.id, e.nomescola, e' +
        '.poblacio as Poblacio_Escola, c.n_codi as Comarca_Escola, p.hora' +
        'ri, p.contacte, m.nom as NomMonitor, m.cognom1, m.cognom2'
      'from processos p'
      'left join escoles e on p.escola=e.id'
      
        'left join codis c on e.comarca=c.c_codi and c.tipuscodi='#39'COMARCA' +
        #39
      'left join professionals m on p.monitor=m.id'
      
        'where (p.datasollicitud is null or p.datasollicitud >= "TODAY") ' +
        '/* linia 5 */'
      '[AND FILTRO] /* linia 6 */'
      '[ORDEN] /* linia 7 */')
    Dicionario1 = wDataGameOver.Processos
    Dicionario2 = wDataGameOver.Escoles
    Dicionario3 = wDataGameOver.Professionals
    Orden.Strings = (
      'Data sol'#183'licitud')
    OrdenDB.Strings = (
      'datasollicitud')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerPrint = False
    CamposOculta.Strings = (
      'estat'
      'canvis'
      'id')
    PrinterOrientation = poPortrait
    ConsultaGetSqlField = pcProcessosConsultaGetSqlField
    AlChangeRegistro = pcProcessosAlChangeRegistro
    AlPintarGrid = pcProcessosAlPintarGrid
  end
  object dsProcessos: TDataSource
    DataSet = brwProcessos
    Left = 776
    Top = 416
  end
  object brwProcessos: THYSqlBrowse
    BeforeEdit = brwProcessosBeforeEdit
    BeforePost = brwProcessosBeforePost
    AfterPost = brwProcessosAfterPost
    AfterScroll = brwProcessosAfterScroll
    OnCalcFields = brwProcessosCalcFields
    AutoRefresh = True
    DatabaseName = 'InternaHola'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataGameOver.Processos
    IndiceActivo = 'ID'
    CalcSimple = False
    AlConsultarCampoFiltro2 = brwProcessosAlConsultarCampoFiltro2
    AutoPost = False
    Filtro.Strings = (
      'id = 2'
      'and (datasollicitud >= "today") or (datasollicitud is null)')
    OrdenBy = 'datasollicitud'
    Left = 848
    Top = 416
    object brwProcessos_ID: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero de proc'#233's'
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object brwProcessos_Data_Trucada: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data trucada'
      DisplayWidth = 11
      FieldName = 'Data_Trucada'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object brwProcessos_DataSollicitud: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data sol'#183'licitud'
      DisplayWidth = 11
      FieldName = 'DataSollicitud'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object brwProcessos_Escola: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Escola'
      DisplayFormat = '#,##0;; '
    end
    object brwProcessos_Data_Escola: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data e-mail Escola'
      DisplayWidth = 11
      FieldName = 'Data_Escola'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object brwProcessos_Monitor: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Monitor'
      DisplayFormat = '#,##0;; '
    end
    object brwProcessos_Data_Monitor: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data e-mail Monitor'
      DisplayWidth = 11
      FieldName = 'Data_Monitor'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object brwProcessos_Estat: TIntegerField
      Tag = 100
      DisplayLabel = 'Estat proc'#233's'
      DisplayWidth = 8
      FieldName = 'Estat'
      DisplayFormat = '#,##0;; '
    end
    object brwProcessos_Data_Anula: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Anul'#183'lat'
      DisplayWidth = 11
      FieldName = 'Data_Anula'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object brwProcessos_Horari: TStringField
      Tag = 100
      DisplayWidth = 40
      FieldName = 'Horari'
      Size = 40
    end
    object brwProcessos_Curs: TStringField
      Tag = 100
      DisplayWidth = 40
      FieldName = 'Curs'
      Size = 40
    end
    object brwProcessos_Contacte: TStringField
      Tag = 100
      DisplayLabel = 'Persona de contacte'
      DisplayWidth = 40
      FieldName = 'Contacte'
      Size = 40
    end
    object brwProcessos_Num_alumnes: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero d'#39'alumnes'
      DisplayWidth = 8
      FieldName = 'Num_alumnes'
      DisplayFormat = '#,##0;; '
    end
    object brwProcessos_Num_grup: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero de grup'
      DisplayWidth = 8
      FieldName = 'Num_grup'
      DisplayFormat = '#,##0;; '
    end
    object brwProcessos_Tipus_sessio: TIntegerField
      Tag = 100
      DisplayLabel = 'Tipus de sessio'
      DisplayWidth = 8
      FieldName = 'Tipus_sessio'
      DisplayFormat = '#,##0;; '
    end
    object brwProcessos_Observacions: TMemoField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Observacions'
      BlobType = ftMemo
      Size = 1
    end
    object brwProcessos_Canvis: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Canvis'
      Size = 1
    end
    object brwProcessos_L_canvis: TStringField
      Tag = 100
      DisplayLabel = 'Literal Canvis'
      DisplayWidth = 100
      FieldName = 'L_canvis'
      Size = 100
    end
    object brwProcessosComarcaP_n_codi: TStringField
      FieldKind = fkCalculated
      FieldName = 'ComarcaP_n_codi'
      Calculated = True
    end
    object brwProcessosComarcaE_n_codi: TStringField
      FieldKind = fkCalculated
      FieldName = 'ComarcaE_n_codi'
      Calculated = True
    end
    object brwProcessos_Facturat: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Facturat'
      Size = 1
    end
    object brwProcessos_Curs3erESO: TStringField
      Tag = 100
      DisplayLabel = '3er ESO'
      DisplayWidth = 1
      FieldName = 'Curs3erESO'
      Size = 1
    end
    object brwProcessos_Curs1erBAT: TStringField
      Tag = 100
      DisplayLabel = '1er BAT'
      DisplayWidth = 1
      FieldName = 'Curs1erBAT'
      Size = 1
    end
    object brwProcessos_Curs2onBAT: TStringField
      Tag = 100
      DisplayLabel = '2on BAT'
      DisplayWidth = 1
      FieldName = 'Curs2onBAT'
      Size = 1
    end
    object brwProcessos_CiclesFormatius: TStringField
      Tag = 100
      DisplayLabel = 'Cicles formatius'
      DisplayWidth = 1
      FieldName = 'CiclesFormatius'
      Size = 1
    end
    object brwProcessos_AltresCursos: TStringField
      Tag = 100
      DisplayLabel = 'Altres Cursos'
      DisplayWidth = 1
      FieldName = 'AltresCursos'
      Size = 1
    end
    object brwProcessos_Curs4rtESO: TStringField
      Tag = 100
      DisplayLabel = '4rt ESO'
      DisplayWidth = 1
      FieldName = 'Curs4rtESO'
      Size = 1
    end
    object brwProcessos_Peticio_De: TIntegerField
      Tag = 100
      DisplayLabel = 'Petici'#243' de'
      DisplayWidth = 8
      FieldName = 'Peticio_De'
      DisplayFormat = '#,##0;; '
    end
    object brwProcessos_Peticio_De_Altres: TStringField
      Tag = 100
      DisplayLabel = 'Petici'#243' de altres'
      DisplayWidth = 40
      FieldName = 'Peticio_De_Altres'
      Size = 40
    end
    object brwProcessos_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'mero identificador'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Professional_ID'
      LookupKeyFields = 'ID'
      KeyFields = 'Professional'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwProcessos_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Professional_Nom'
      LookupKeyFields = 'Nom'
      KeyFields = 'Professional'
      Calculated = True
    end
    object brwProcessos_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'Professional_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Professional'
      Size = 25
      Calculated = True
    end
    object brwProcessos_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Segon Cognom'
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'Professional_Cognom2'
      LookupKeyFields = 'Cognom2'
      KeyFields = 'Professional'
      Size = 25
      Calculated = True
    end
    object brwProcessos_C0_4: TIntegerField
      Tag = 101
      DisplayLabel = 'Comarca'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Professional_Comarca'
      LookupKeyFields = 'Comarca'
      KeyFields = 'Professional'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwProcessos_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#232'fon'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Professional_Telefon'
      LookupKeyFields = 'Telefon'
      KeyFields = 'Professional'
      Size = 30
      Calculated = True
    end
    object brwProcessos_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Professional_Adreca'
      LookupKeyFields = 'Adreca'
      KeyFields = 'Professional'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Professional_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'Professional'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Professional_Email'
      LookupKeyFields = 'Email'
      KeyFields = 'Professional'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C0_9: TStringField
      Tag = 101
      DisplayLabel = 'M'#242'bil'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Professional_Mobil'
      LookupKeyFields = 'Mobil'
      KeyFields = 'Professional'
      Size = 30
      Calculated = True
    end
    object brwProcessos_C0_10: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Naixement'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Professional_DataNaixement'
      LookupKeyFields = 'DataNaixement'
      KeyFields = 'Professional'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object brwProcessos_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Estudis'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Professional_Estudis'
      LookupKeyFields = 'Estudis'
      KeyFields = 'Professional'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C0_12: TStringField
      Tag = 101
      DisplayLabel = 'Pagament'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Professional_Pagament'
      LookupKeyFields = 'Pagament'
      KeyFields = 'Professional'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'S.Laboral'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Professional_SLaboral'
      LookupKeyFields = 'SLaboral'
      KeyFields = 'Professional'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C0_14: TStringField
      Tag = 101
      DisplayLabel = 'Disponibilitat'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'Professional_Disponibilitat'
      LookupKeyFields = 'Disponibilitat'
      KeyFields = 'Professional'
      Size = 100
      Calculated = True
    end
    object brwProcessos_C0_15: TStringField
      Tag = 101
      DisplayLabel = 'Altres dades'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Professional_Altres'
      LookupKeyFields = 'Altres'
      KeyFields = 'Professional'
      Size = 250
      Calculated = True
    end
    object brwProcessos_C0_16: TStringField
      Tag = 101
      DisplayLabel = 'Tipus de pensi'#243
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Professional_T_pensio'
      LookupKeyFields = 'T_pensio'
      KeyFields = 'Professional'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C0_17: TStringField
      Tag = 101
      DisplayLabel = 'Cotxe'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Professional_Cotxe'
      LookupKeyFields = 'Cotxe'
      KeyFields = 'Professional'
      Size = 1
      Calculated = True
    end
    object brwProcessos_C0_18: TIntegerField
      Tag = 101
      DisplayLabel = 'M'#224'xim n'#186' de xerrades al mes'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Professional_MAX_XERRADES_MES'
      LookupKeyFields = 'MAX_XERRADES_MES'
      KeyFields = 'Professional'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwProcessos_C1_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'mero identificador'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Escola_ID'
      LookupKeyFields = 'ID'
      KeyFields = 'Escola'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwProcessos_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom escola'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'Escola_NomEscola'
      LookupKeyFields = 'NomEscola'
      KeyFields = 'Escola'
      Size = 60
      Calculated = True
    end
    object brwProcessos_C1_2: TIntegerField
      Tag = 101
      DisplayLabel = 'Comarca'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Escola_Comarca'
      LookupKeyFields = 'Comarca'
      KeyFields = 'Escola'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwProcessos_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#232'fon'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Escola_Telefon'
      LookupKeyFields = 'Telefon'
      KeyFields = 'Escola'
      Size = 30
      Calculated = True
    end
    object brwProcessos_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Escola_Adreca'
      LookupKeyFields = 'Adreca'
      KeyFields = 'Escola'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Escola_Email'
      LookupKeyFields = 'Email'
      KeyFields = 'Escola'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Poblacio'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Escola_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'Escola'
      Size = 50
      Calculated = True
    end
    object brwProcessos_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Codi postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Escola_c_postal'
      LookupKeyFields = 'c_postal'
      KeyFields = 'Escola'
      Size = 5
      Calculated = True
    end
    object brwProcessos_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Observacions'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Escola_Observacio'
      LookupKeyFields = 'Observacio'
      KeyFields = 'Escola'
      Size = 250
      Calculated = True
    end
    object brwProcessos_C1_9: TStringField
      Tag = 101
      DisplayLabel = 'Observacions internes'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Escola_ObsInternes'
      LookupKeyFields = 'ObsInternes'
      KeyFields = 'Escola'
      Size = 250
      Calculated = True
    end
    object brwProcessos_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'tipuscodi'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TipusSessio_tipuscodi'
      LookupKeyFields = 'tipuscodi'
      KeyFields = 'TipusSessio'
      Size = 40
      Calculated = True
    end
    object brwProcessos_C2_1: TIntegerField
      Tag = 101
      DisplayLabel = 'c_codi'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TipusSessio_c_codi'
      LookupKeyFields = 'c_codi'
      KeyFields = 'TipusSessio'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwProcessos_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'n_codi'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TipusSessio_n_codi'
      LookupKeyFields = 'n_codi'
      KeyFields = 'TipusSessio'
      Size = 40
      Calculated = True
    end
    object brwProcessos_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'tipuscodi'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Estat_tipuscodi'
      LookupKeyFields = 'tipuscodi'
      KeyFields = 'Estat'
      Size = 40
      Calculated = True
    end
    object brwProcessos_C3_1: TIntegerField
      Tag = 101
      DisplayLabel = 'c_codi'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Estat_c_codi'
      LookupKeyFields = 'c_codi'
      KeyFields = 'Estat'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwProcessos_C3_2: TStringField
      Tag = 101
      DisplayLabel = 'n_codi'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Estat_n_codi'
      LookupKeyFields = 'n_codi'
      KeyFields = 'Estat'
      Size = 40
      Calculated = True
    end
    object brwProcessos_C4_0: TStringField
      Tag = 101
      DisplayLabel = 'tipuscodi'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'PeticioDe_tipuscodi'
      LookupKeyFields = 'tipuscodi'
      KeyFields = 'PeticioDe'
      Size = 40
      Calculated = True
    end
    object brwProcessos_C4_1: TIntegerField
      Tag = 101
      DisplayLabel = 'c_codi'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'PeticioDe_c_codi'
      LookupKeyFields = 'c_codi'
      KeyFields = 'PeticioDe'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwProcessos_C4_2: TStringField
      Tag = 101
      DisplayLabel = 'n_codi'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'PeticioDe_n_codi'
      LookupKeyFields = 'n_codi'
      KeyFields = 'PeticioDe'
      Size = 40
      Calculated = True
    end
  end
  object cProfessionals: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select p.id, p.nom, p.cognom1, p.poblacio, c.n_codi as comarca, ' +
        ' p.DISPONIBILITAT, p.cotxe, p.altres, p.mobil,P.MAX_XERRADES_MES' +
        ',sum(x.num_grup) as XERRADES_ASSIGNADES from professionals p JOI' +
        'N codis c on p.comarca = c.c_codi and c.tipuscodi ='#39'COMARCA'#39
      
        'left join processos x on p.id=x.monitor and f_month(x.datasollic' +
        'itud) = '
      
        '1 and f_year(x.datasollicitud)= 2011 /* l'#237'nia 2 - mes i any de l' +
        'a xerrada a la que volem assingar el monitor */'
      '[FILTRO] /* linia 3 */'
      
        'group by p.id, p.nom, p.cognom1, p.poblacio, c.n_codi,  p.DISPON' +
        'IBILITAT, p.cotxe, p.altres, p.mobil,P.MAX_XERRADES_MES'
      '[ORDEN]')
    Dicionario1 = wDataGameOver.Professionals
    Titulo = 'Llistat de Professionals'
    Orden.Strings = (
      'PRIMER COGNOM'
      'SEGON COGNOM'
      'NOM')
    OrdenDB.Strings = (
      'COGNOM1'
      'COGNOM2'
      'NOM')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerPrint = False
    VerSimple = True
    CamposOculta.Strings = (
      'id')
    AlSeleccionar = cProfessionalsAlSeleccionar
    AlDespuesOpen = cProfessionalsAlDespuesOpen
    Left = 760
    Top = 88
  end
  object cMonitor: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select p.datasollicitud as data_solicitada, p.horari, c.N_CODI A' +
        'S comarca, e.nomescola, p.curs'
      'from processos p '
      'left join escoles e on p.escola = e.id '
      
        'left join codis c on e.comarca = c.c_codi and c.tipuscodi = '#39'COM' +
        'ARCA'#39
      'where p.monitor = 5 /* linia 4 */'
      '[AND FILTRO]'
      '[ORDEN]')
    SqlDicTotal.Strings = (
      'select COUNT(*)'
      'from processos p '
      'left join escoles e on p.escola = e.id '
      
        'left join codis c on e.comarca = c.c_codi and c.tipuscodi = '#39'COM' +
        'ARCA'#39
      'where p.monitor = 5  /* linia 4 */'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataGameOver.Processos
    Titulo = 'Processos del monitor sel'#183'leccionat'
    Orden.Strings = (
      'data_solicitada '
      'horari '
      'comarca '
      'nom escola'
      'curs')
    OrdenDB.Strings = (
      'p.datasollicitud '
      'p.horari'
      'c.N_CODI '
      'e.nomescola'
      'p.curs')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSimple = True
    CamposOculta.Strings = (
      'id'
      'cognom2')
    AlDespuesOpen = cMonitorAlDespuesOpen
    Left = 824
    Top = 512
  end
  object cEscoles: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select e.id, e.nomescola, e.telefon, e.adreca, e.poblacio, c.n_c' +
        'odi, e.email, e.c_postal'
      'from escoles e'
      
        'left outer join codis c on e.comarca = c.c_codi and c.tipuscodi ' +
        '= '#39'COMARCA'#39
      '[FILTRO] '
      '[ORDEN]')
    Dicionario1 = wDataGameOver.Escoles
    Titulo = 'Processos del monitor sel'#183'leccionat'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSimple = True
    AlSeleccionar = cEscolesAlSeleccionar
    AlDespuesOpen = cEscolesAlDespuesOpen
    Left = 536
    Top = 368
  end
  object cPeticioDe: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT C_CODI, N_CODI FROM CODIS'
      'WHERE tipuscodi='#39'GAMEOVER.PETICIODE'#39' AND BAIXA='#39'N'#39
      '[AND FILTRO] '
      '[ORDEN]')
    Dicionario1 = wDataHolaComu.Codis
    Titulo = 'Petici'#243' de'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerSimple = True
    AlSeleccionar = cPeticioDeAlSeleccionar
    AlDespuesOpen = cPeticioDeAlDespuesOpen
    Left = 40
    Top = 376
  end
  object qAux: TQuery
    DatabaseName = 'InternaHola'
    SQL.Strings = (
      
        'select DATA_TRUCADA, DATASOLLICITUD, ESCOLA, DATA_ESCOLA, MONITO' +
        'R, DATA_MONITOR, ESTAT, '
      
        'DATA_ANULA, HORARI, CURS, CONTACTE, NUM_ALUMNES, NUM_GRUP, TIPUS' +
        '_SESSIO, OBSERVACIONS, '
      
        'CANVIS, L_CANVIS, FACTURAT, CURS3ERESO, CURS4RTESO, CURS1ERBAT, ' +
        'CURS2ONBAT, CICLESFORMATIUS,'
      'ALTRESCURSOS, PETICIO_DE, PETICIO_DE_ALTRES '
      'from PROCESSOS '
      'where id=:id')
    Left = 584
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
  end
end
