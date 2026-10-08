object wFitxaEspera: TwFitxaEspera
  Left = 371
  Top = 196
  Width = 1177
  Height = 705
  Caption = 'Fitxa Espera'
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
  object HYBarra1: THYBarra
    Left = 0
    Top = 0
    Width = 1169
    Height = 30
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clSilver
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    DataSource = dsEspera
    AlPost = HYBarra1AlPost
    VerInsertar = False
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
    object Bevel1: TBevel
      Left = 370
      Top = 0
      Width = 425
      Height = 29
      Shape = bsFrame
    end
    object Eti_tEspera_Presta_N_Prestacio: THYLabel
      Left = 631
      Top = 5
      Width = 156
      Height = 19
      DataField = 'Presta_N_Prestacio'
      DataSource = dsEspera
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object SpeedButton1: TSpeedButton
      Left = 336
      Top = 2
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
    object Ed_tEspera_C_Espera: THYEdit
      Left = 378
      Top = 5
      Width = 137
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'N'#250'm. Llista espera'
      EtiSepara = 100
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataAdmisio.Espera
      Enabled = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      AutoSelect = False
      CharCase = ecUpperCase
      ReadOnly = True
      DataSource = dsEspera
      DataField = 'C_Espera'
    end
    object Ed_tEspera_C_Prestacio: THYEdit
      Left = 530
      Top = 5
      Width = 97
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Prestaci'#243
      EtiSepara = 55
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataAdmisio.Espera
      Enabled = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      AutoSelect = False
      CharCase = ecUpperCase
      ReadOnly = True
      DataSource = dsEspera
      DataField = 'C_Prestacio'
    end
  end
  object PC: TPageControl
    Left = 0
    Top = 93
    Width = 1169
    Height = 581
    ActivePage = tsEspera
    Align = alClient
    Style = tsFlatButtons
    TabIndex = 0
    TabOrder = 1
    OnChange = PCChange
    object tsEspera: TTabSheet
      Caption = 'Dades Espera'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1161
        Height = 550
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        Color = clWhite
        TabOrder = 0
        DesignSize = (
          1161
          550)
        object HYArea3: THYArea
          Left = 0
          Top = 0
          Width = 1161
          Height = 45
          Align = alTop
          BorderStyle = bsNone
          Color = clWhite
          ParentColor = False
          TabOrder = 0
          DataSource = dsEspera
          object pMetgeCoordinador: TPanel
            Left = 0
            Top = 0
            Width = 1161
            Height = 45
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object Eti_tEspera_Metge_C_Especial: THYLabel
              Left = 447
              Top = 3
              Width = 68
              Height = 32
              DataField = 'Metge_C_Especial'
              DataSource = dsEspera
              EtiFontColor = -1
              HyColorNo = False
              Etiqueta = 'Especialitat'
              EtiSepara = 14
              EtiOrienta = eoArriba
              EtiAlign = taLeftJustify
            end
            object HYLabel3: THYLabel
              Left = 522
              Top = 18
              Width = 191
              Height = 17
              DataField = 'N_ESPECIAL'
              DataSource = dsEspecialitatMetge
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object HYLabel1: THYLabel
              Left = 321
              Top = 3
              Width = 121
              Height = 32
              DataField = 'Metge_Cognom'
              DataSource = dsEspera
              EtiFontColor = -1
              HyColorNo = False
              Etiqueta = 'Cognom'
              EtiSepara = 14
              EtiOrienta = eoArriba
              EtiAlign = taLeftJustify
            end
            object EditMetge: THYEdit
              Left = 8
              Top = 17
              Width = 174
              Height = 19
              Idioma = Catala
              EtiFontColor = clRed
              Eti = 'Metge coord.'
              EtiSepara = 85
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataAdmisio.Espera
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsEspera
              DataField = 'C_Coordinador'
            end
            object HYEdit1: THYEdit
              Left = 189
              Top = 1
              Width = 127
              Height = 35
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Nom'
              EtiSepara = 16
              EtiOrienta = eoArriba
              EtiAlign = taLeftJustify
              Diccionario = wDataAdmisio.Espera
              TabOrder = 1
              TabStop = False
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsEspera
              DataField = 'Metge_Metge'
            end
          end
        end
        object pComentari: THYArea
          Left = 0
          Top = 467
          Width = 1161
          Height = 18
          Align = alTop
          BorderStyle = bsNone
          Color = clWhite
          ParentColor = False
          TabOrder = 3
          DataSource = dsEspera
          object Label2: TLabel
            Left = 7
            Top = 4
            Width = 47
            Height = 13
            Caption = 'Comentari'
          end
        end
        object pEstat: TPanel
          Left = 0
          Top = 315
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 11
          object Eti_tEspera_Estat_N_Codi: THYLabel
            Left = 135
            Top = 1
            Width = 320
            Height = 19
            DataField = 'Estat_N_Codi'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Ed_tEspera_C_Estat: THYEdit
            Left = 8
            Top = 1
            Width = 113
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Estat'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'C_Estat'
          end
        end
        object pDiaFixe: TPanel
          Left = 0
          Top = 261
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 9
          Visible = False
          object Ed_tEspera_DataFixe: THYEdit
            Left = 8
            Top = 1
            Width = 178
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Dia fix'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'DataFixe'
          end
        end
        object pFrecuencia: TPanel
          Left = 0
          Top = 234
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 8
          object lbAvisFreq: TLabel
            Left = 195
            Top = 4
            Width = 349
            Height = 13
            Caption = 
              'Freq'#252#232'ncia automatitzada segons la pauta ambulat'#242'ria indicada pe' +
              'l metge'
            Visible = False
          end
          object edFrecuencia: THYEdit
            Left = 8
            Top = 1
            Width = 178
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Freq'#252#232'ncia'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'C_Frecuencia'
          end
        end
        object pCaracter: TPanel
          Left = 0
          Top = 207
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 7
          object Eti_tEspera_Caracter_N_Codi: THYLabel
            Left = 135
            Top = 1
            Width = 203
            Height = 19
            DataField = 'Caracter_N_Codi'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditCaracter: THYEdit
            Left = 8
            Top = 1
            Width = 113
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Car'#224'cter'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'C_Caracter'
          end
        end
        object pUnitat: TPanel
          Left = 0
          Top = 180
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 6
          object Eti_tEspera_Unitat_N_Unitat: THYLabel
            Left = 135
            Top = 1
            Width = 203
            Height = 19
            DataField = 'Unitat_N_Codi'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object edtUnitat: THYEdit
            Left = 8
            Top = 1
            Width = 113
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Unitat'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'C_Unitat'
          end
        end
        object pProcedencia: TPanel
          Left = 0
          Top = 153
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 5
          object Eti_tEspera_Origen_N_Codi: THYLabel
            Left = 135
            Top = 1
            Width = 203
            Height = 19
            DataField = 'Origen_N_Codi'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditProcedencia: THYEdit
            Left = 8
            Top = 1
            Width = 113
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Proced'#232'ncia'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'C_Procedencia'
          end
        end
        object pMotiuIngres: TPanel
          Left = 0
          Top = 126
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 4
          object Eti_tEspera_Motiu_N_Codi: THYLabel
            Left = 135
            Top = 1
            Width = 203
            Height = 19
            DataField = 'Motiu_N_Codi'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditMotiu: THYEdit
            Left = 8
            Top = 1
            Width = 113
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Motiu ingr'#233's'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'C_Motiu'
          end
        end
        object pIntervencio: TPanel
          Left = 0
          Top = 288
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 10
          object Ed_tEspera_INTERVENCIO: THYEdit
            Left = 8
            Top = 1
            Width = 250
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Intervenci'#243
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'INTERVENCIO'
          end
        end
        object Comentari: THYMemo
          Left = 7
          Top = 464
          Width = 1147
          Height = 80
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'COMENTARI'
          DataSource = dsEspera
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          MaxLength = 254
          ParentFont = False
          TabOrder = 12
        end
        object pPreIngres: TPanel
          Left = 0
          Top = 72
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          object pHoraPreIngres: TPanel
            Left = 186
            Top = 0
            Width = 163
            Height = 27
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object HYEdit10: THYEdit
              Left = 9
              Top = 1
              Width = 144
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Hora preingr'#233's'
              EtiSepara = 85
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataAdmisio.Espera
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsEspera
              DataField = 'Hora_PreIngres'
            end
          end
          object pPlantaPreingres: TPanel
            Left = 349
            Top = 0
            Width = 175
            Height = 27
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object HYEdit4: THYEdit
              Left = 7
              Top = 1
              Width = 146
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Planta preingr'#233's'
              EtiSepara = 85
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataAdmisio.Espera
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsEspera
              DataField = 'Lloc'
            end
          end
          object pDataPreingres: TPanel
            Left = 0
            Top = 0
            Width = 186
            Height = 27
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            object HYEdit5: THYEdit
              Left = 8
              Top = 1
              Width = 174
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Data preingr'#233's'
              EtiSepara = 85
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataAdmisio.Espera
              OnExit = HYEdit5Exit
              TabOrder = 0
              AutoSelect = False
              CharCase = ecUpperCase
              DataSource = dsEspera
              DataField = 'Data_PreIngres'
            end
          end
        end
        object pDataInclusio: TPanel
          Left = 0
          Top = 45
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object HYEdit2: THYEdit
            Left = 8
            Top = 1
            Width = 173
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data inclusi'#243
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            ReadOnly = True
            DataSource = dsEspera
            DataField = 'Data_Inclusio'
          end
        end
        object pFacturacio: TPanel
          Left = 0
          Top = 342
          Width = 1161
          Height = 69
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 13
          object Label1: TLabel
            Left = 8
            Top = 3
            Width = 96
            Height = 13
            Caption = 'Dades de facturaci'#243
          end
          object Eti_CentreFac_N_CentreFac: THYLabel
            Left = 135
            Top = 21
            Width = 320
            Height = 19
            DataField = 'CentreFac_N_CentreFac'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Client_N_Client: THYLabel
            Left = 135
            Top = 44
            Width = 320
            Height = 19
            DataField = 'Client_N_Client'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYEdit15: THYEdit
            Left = 32
            Top = 22
            Width = 83
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Centre'
            EtiSepara = 62
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'C_CENTREFAC'
          end
          object HYEdit16: THYEdit
            Left = 32
            Top = 45
            Width = 91
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Client'
            EtiSepara = 62
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 1
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'C_CLIENT'
          end
        end
        object pAltresDades: TPanel
          Left = 0
          Top = 411
          Width = 1161
          Height = 56
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 14
          object HYLabel2: THYLabel
            Left = 574
            Top = 6
            Width = 203
            Height = 19
            DataField = 'TransportSanitari_N_Codi'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object HYLabel4: THYLabel
            Left = 832
            Top = 6
            Width = 203
            Height = 19
            DataField = 'TransportSanitari_N_Codi2'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label4: TLabel
            Left = 784
            Top = 8
            Width = 43
            Height = 13
            Caption = 'Contacte'
          end
          object HYEdit17: THYEdit
            Left = 9
            Top = 5
            Width = 188
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data naixement'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'Data_Naix'
          end
          object HYEdit18: THYEdit
            Left = 296
            Top = 5
            Width = 126
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Risc social'
            EtiSepara = 57
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'RISC_SOCIAL'
          end
          object HYEdit19: THYEdit
            Left = 208
            Top = 5
            Width = 74
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Edat'
            EtiSepara = 27
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            TabStop = False
            AutoSelect = False
            CharCase = ecUpperCase
            ReadOnly = True
            DataSource = dsEspera
            DataField = 'Edat'
          end
          object HYEdit20: THYEdit
            Left = 441
            Top = 5
            Width = 128
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Transport sanitari'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 3
            TabStop = False
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'TransportSanitari_C_Codi'
          end
        end
        object pModalitat: TPanel
          Left = 0
          Top = 99
          Width = 1161
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 15
          object Eti_tEspera_Modalitat_N_Codi: THYLabel
            Left = 135
            Top = 1
            Width = 203
            Height = 19
            DataField = 'modalitat_N_Codi'
            DataSource = dsEspera
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object EditModalitat: THYEdit
            Left = 8
            Top = 1
            Width = 113
            Height = 19
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Modalitat'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsEspera
            DataField = 'C_Modalitat'
          end
        end
      end
    end
    object tsHistories: TTabSheet
      Caption = 'Hist'#242'ric'
      ImageIndex = 1
      object PanelHistoria: HYPanelConsulta
        Left = 0
        Top = 0
        Width = 805
        Height = 458
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Pacient no filiat'
        Color = clSilver
        TabOrder = 0
        Abierta = False
        SqlDic.Strings = (
          'SELECT * FROM P_ESPERA_HISTESPERA('
          '5566'
          ')'
          '[FILTRO]'
          '[ORDEN]')
        SqlDicTotal.Strings = (
          'SELECT COUNT(*) FROM P_ESPERA_HISTESPERA('
          '5566'
          ')'
          '[FILTRO]'
          '[ORDEN]')
        Dicionario1 = wDataAdmisio.Espera
        Dicionario2 = wDataBasics.Filiacio
        Dicionario3 = wDataCodis.CodiCamps
        Orden.Strings = (
          'DATA_INCLUSIO DESC')
        OrdenDB.Strings = (
          'DATA_INCLUSIO DESC')
        Filtros = <>
        OrdenAuto = True
        AgrupaPagina = False
        MultiSelect = False
        RowSelect = False
        PrintAncho = 0
        SoloUnaLinea = False
        CamposOculta.Strings = (
          'C_ESPERA'
          'C_ESTAT')
        PrinterOrientation = poPortrait
        AlSeleccionar = PanelHistoriaAlSeleccionar
        AlPintarGrid = PanelHistoriaAlPintarGrid
      end
    end
  end
  object pDadesPersonals: THYArea
    Left = 0
    Top = 30
    Width = 1169
    Height = 63
    Align = alTop
    BorderStyle = bsNone
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    DataSource = dsEspera
    object bHistoria: TSpeedButton
      Left = 61
      Top = 40
      Width = 44
      Height = 18
      Action = accHistoria
      Flat = True
    end
    object sbCreateModifyPerson: TSpeedButton
      Left = 983
      Top = 37
      Width = 120
      Height = 18
      Hint = 'Consulta de pacients'
      Caption = 'Crea/Modifica persona'
      ParentShowHint = False
      ShowHint = True
      OnClick = sbCreateModifyPersonClick
    end
    object PanelReadOnly: THYArea
      Left = 105
      Top = 20
      Width = 633
      Height = 39
      BorderStyle = bsNone
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      DataSource = dsEspera
      object HYEdit3: THYEdit
        Left = 3
        Top = 5
        Width = 127
        Height = 33
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Nom'
        EtiSepara = 14
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Espera
        Enabled = False
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        AutoSelect = False
        ReadOnly = True
        DataSource = dsEspera
        DataField = 'Nom'
      end
      object HYEdit7: THYEdit
        Left = 136
        Top = 5
        Width = 158
        Height = 33
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Primer Cognom'
        EtiSepara = 14
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Espera
        Enabled = False
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        AutoSelect = False
        ReadOnly = True
        DataSource = dsEspera
        DataField = 'Cognom1'
      end
      object HYEdit8: THYEdit
        Left = 300
        Top = 5
        Width = 158
        Height = 33
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Segon Cognom'
        EtiSepara = 14
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Espera
        Enabled = False
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        AutoSelect = False
        ReadOnly = True
        DataSource = dsEspera
        DataField = 'Cognom2'
      end
      object HYEdit9: THYEdit
        Left = 465
        Top = 5
        Width = 158
        Height = 33
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Tel'#232'fon'
        EtiSepara = 14
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Espera
        Enabled = False
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        AutoSelect = False
        ReadOnly = True
        DataSource = dsEspera
        DataField = 'TELEFON'
      end
    end
    object EditHistoria: THYEdit
      Left = 3
      Top = 23
      Width = 56
      Height = 35
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'N'#250'm Hist.'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataAdmisio.Espera
      Ctl3D = False
      ParentCtl3D = False
      OnExit = EditHistoriaExit
      TabOrder = 0
      TabStop = False
      AutoSelect = False
      CharCase = ecUpperCase
      ReadOnly = True
      DataSource = dsEspera
      DataField = 'C_Historia'
    end
    object PanelEditable: THYArea
      Left = 106
      Top = 2
      Width = 633
      Height = 56
      BorderStyle = bsNone
      Color = clWhite
      ParentColor = False
      TabOrder = 1
      DataSource = dsEspera
      object Label3: TLabel
        Left = 309
        Top = 7
        Width = 157
        Height = 28
        AutoSize = False
        Caption = 'Segon cognom (DEIXEU-LO BUIT SI NO EN T'#201')'
        WordWrap = True
      end
      object HYEdit6: THYEdit
        Left = 3
        Top = 21
        Width = 127
        Height = 35
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Nom'
        EtiSepara = 16
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Espera
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        AutoSelect = False
        CharCase = ecUpperCase
        DataSource = dsEspera
        DataField = 'Nom'
      end
      object EditCognom1: THYEdit
        Left = 136
        Top = 21
        Width = 165
        Height = 35
        Idioma = Castellano
        EtiFontColor = clRed
        Eti = '1r cognom'
        EtiSepara = 16
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Espera
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        AutoSelect = False
        CharCase = ecUpperCase
        DataSource = dsEspera
        DataField = 'Cognom1'
      end
      object HYEdit11: THYEdit
        Left = 308
        Top = 36
        Width = 158
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = '2n cognom'
        EtiSepara = 100
        EtiOrienta = eoNoMostrar
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Espera
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
        AutoSelect = False
        CharCase = ecUpperCase
        DataSource = dsEspera
        DataField = 'Cognom2'
      end
      object HYEdit12: THYEdit
        Left = 473
        Top = 21
        Width = 158
        Height = 35
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Tel'#232'fon'
        EtiSepara = 16
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Espera
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 3
        AutoSelect = False
        CharCase = ecUpperCase
        DataSource = dsEspera
        DataField = 'TELEFON'
      end
    end
    object ePersonId: THYEdit
      Left = 882
      Top = 23
      Width = 95
      Height = 35
      Hint = 'N'#250'm. usuari APP / id de persona a la nova HCE'
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Id de persona'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataAdmisio.Espera
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      TabStop = False
      AutoSelect = False
      ReadOnly = True
      DataSource = dsEspera
      DataField = 'hce_person_id'
    end
    object EditSexo: THYEdit
      Left = 742
      Top = 23
      Width = 33
      Height = 35
      Idioma = Castellano
      EtiFontColor = clRed
      Eti = 'Sexe'
      EtiSepara = 16
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataAdmisio.Espera
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 4
      AutoSelect = False
      CharCase = ecUpperCase
      DataSource = dsEspera
      DataField = 'SEXO'
    end
  end
  object tEspera: ThySqlTable
    AfterInsert = tEsperaAfterInsert
    BeforePost = tEsperaBeforePost
    AfterPost = tEsperaAfterPost
    BeforeCancel = tEsperaBeforeCancel
    AfterCancel = tEsperaAfterCancel
    OnCalcFields = tEsperaCalcFields
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.Espera
    IndiceActivo = 'Codi'
    CalcSimple = False
    AlConsultarCampo = tEsperaAlConsultarCampo
    AlConsultarCampoFiltro = tEsperaAlConsultarCampoFiltro
    AutoPost = False
    New.Active = True
    New.IndexAsc = 'Codi'
    New.OrderDbField = 'C_Espera'
    Left = 584
    Top = 432
    object tEspera_C_Espera: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Llista Espera'
      DisplayWidth = 4
      FieldName = 'C_Espera'
      DisplayFormat = '#,##0;; '
    end
    object tEspera_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldName = 'C_Historia'
      DisplayFormat = '####0;; '
    end
    object tEspera_C_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldName = 'C_Prestacio'
      Size = 4
    end
    object tEspera_C_Coordinador: TStringField
      Tag = 100
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldName = 'C_Coordinador'
      Size = 5
    end
    object tEspera_Data_Inclusio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Inclusi'#243
      DisplayWidth = 11
      FieldName = 'Data_Inclusio'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tEspera_Data_PreIngres: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data PreIngr'#233's'
      DisplayWidth = 11
      FieldName = 'Data_PreIngres'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tEspera_Hora_PreIngres: TStringField
      Tag = 100
      DisplayLabel = 'Hora PreIngr'#233's'
      DisplayWidth = 5
      FieldName = 'Hora_PreIngres'
      EditMask = '00:00'
      Size = 5
    end
    object tEspera_Nom: TStringField
      Tag = 100
      DisplayWidth = 20
      FieldName = 'Nom'
    end
    object tEspera_Cognom1: TStringField
      Tag = 100
      DisplayLabel = '1'#186' Cognom'
      DisplayWidth = 20
      FieldName = 'Cognom1'
    end
    object tEspera_Cognom2: TStringField
      Tag = 100
      DisplayLabel = '2'#186' Cognom'
      DisplayWidth = 20
      FieldName = 'Cognom2'
    end
    object tEspera_NomComplet: TStringField
      Tag = 100
      DisplayLabel = 'Nom Complet'
      DisplayWidth = 80
      FieldName = 'NomComplet'
      Size = 80
    end
    object tEspera_TELEFON: TStringField
      Tag = 100
      DisplayLabel = 'Telefon'
      DisplayWidth = 10
      FieldName = 'TELEFON'
      Size = 10
    end
    object tEspera_C_Unitat: TSmallintField
      Tag = 100
      DisplayLabel = 'Unitat'
      DisplayWidth = 3
      FieldName = 'C_Unitat'
    end
    object tEspera_C_Caracter: TSmallintField
      Tag = 100
      DisplayLabel = 'Caracter'
      DisplayWidth = 2
      FieldName = 'C_Caracter'
    end
    object tEspera_C_Procedencia: TSmallintField
      Tag = 100
      DisplayLabel = 'Procedencia'
      DisplayWidth = 2
      FieldName = 'C_Procedencia'
    end
    object tEspera_C_Motiu: TSmallintField
      Tag = 100
      DisplayLabel = 'Motiu'
      DisplayWidth = 2
      FieldName = 'C_Motiu'
    end
    object tEspera_C_Frecuencia: TStringField
      Tag = 100
      DisplayLabel = 'Frecuencia'
      DisplayWidth = 7
      FieldName = 'C_Frecuencia'
      Size = 7
    end
    object tEspera_DataFixe: TDateTimeField
      Tag = 100
      DisplayLabel = 'Dia Fixe'
      DisplayWidth = 11
      FieldName = 'DataFixe'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tEspera_Data_Exclusio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Exclusi'#243
      DisplayWidth = 11
      FieldName = 'Data_Exclusio'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tEspera_MotiuExclusio: TStringField
      Tag = 100
      DisplayLabel = 'Motiu Exclusi'#243
      DisplayWidth = 50
      FieldName = 'MotiuExclusio'
      Size = 50
    end
    object tEspera_INTERVENCIO: TStringField
      Tag = 100
      DisplayLabel = 'Intervencio'
      DisplayWidth = 20
      FieldName = 'INTERVENCIO'
    end
    object tEspera_COMENTARI: TStringField
      Tag = 100
      DisplayLabel = 'Comentari'
      DisplayWidth = 254
      FieldName = 'COMENTARI'
      Size = 254
    end
    object tEspera_C_Estat: TSmallintField
      Tag = 100
      DisplayLabel = 'Estat'
      DisplayWidth = 2
      FieldName = 'C_Estat'
    end
    object tEspera_C_TractamentDesti: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament Desti'
      DisplayWidth = 8
      FieldName = 'C_TractamentDesti'
    end
    object tEspera_ComentariMetge: TStringField
      Tag = 100
      DisplayLabel = 'Comentari Metge'
      DisplayWidth = 40
      FieldName = 'ComentariMetge'
      Size = 40
    end
    object tEspera_ComentariInfermera: TStringField
      Tag = 100
      DisplayLabel = 'Comentari Infermera'
      DisplayWidth = 40
      FieldName = 'ComentariInfermera'
      Size = 40
    end
    object tEspera_C_MetgeAutoritzacio: TStringField
      Tag = 100
      DisplayLabel = 'Metge Autoritzador'
      DisplayWidth = 5
      FieldName = 'C_MetgeAutoritzacio'
      Size = 5
    end
    object tEspera_Exclos: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Exclos'
      Size = 1
    end
    object tEspera_C_OM: TIntegerField
      Tag = 100
      DisplayLabel = 'Ordre m'#232'dica'
      DisplayWidth = 8
      FieldName = 'C_OM'
      DisplayFormat = '#,##0;; '
    end
    object tEspera_Lloc: TStringField
      Tag = 100
      DisplayWidth = 15
      FieldName = 'Lloc'
      Size = 15
    end
    object tEspera_SEXO: TStringField
      Tag = 100
      DisplayLabel = 'Sexe'
      DisplayWidth = 1
      FieldName = 'SEXO'
      Size = 1
    end
    object tEsperaC_TRACTAMENTORIGEN: TIntegerField
      FieldName = 'C_TRACTAMENTORIGEN'
      Origin = 'INTERNA.ESPERA.C_TRACTAMENTORIGEN'
    end
    object tEspera_IDREGISTRE: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Registre sol'#183'licitud ingr'#233's'
      DisplayWidth = 8
      FieldName = 'IDREGISTRE'
      DisplayFormat = '#,##0;; '
    end
    object tEspera_Metge_Programa: TStringField
      Tag = 100
      DisplayLabel = 'Programada per'
      DisplayWidth = 5
      FieldName = 'Metge_Programa'
      Size = 5
    end
    object tEspera_C_Proces: TIntegerField
      Tag = 100
      DisplayLabel = 'Proc'#233's NR'
      DisplayWidth = 8
      FieldName = 'C_Proces'
      DisplayFormat = '#,##0;; '
    end
    object tEspera_Data_Naix: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data naixement'
      DisplayWidth = 10
      FieldName = 'Data_Naix'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tEspera_CIP: TStringField
      Tag = 100
      DisplayWidth = 14
      FieldName = 'CIP'
      Size = 14
    end
    object tEspera_Accio_HCCC: TStringField
      Tag = 100
      DisplayLabel = 'Acci'#243' HCCC'
      DisplayWidth = 1
      FieldName = 'Accio_HCCC'
      Size = 1
    end
    object tEspera_Estat_HCCC: TStringField
      Tag = 100
      DisplayLabel = 'Estat HCCC'
      DisplayWidth = 1
      FieldName = 'Estat_HCCC'
      Size = 1
    end
    object tEspera_Sequencia_HCCC: TIntegerField
      Tag = 100
      DisplayLabel = 'Seq'#252#232'ncia HCCC'
      DisplayWidth = 8
      FieldName = 'Sequencia_HCCC'
      DisplayFormat = '#,##0;; '
    end
    object tEspera_CIP_Antic: TStringField
      Tag = 100
      DisplayLabel = 'CIP antic'
      DisplayWidth = 14
      FieldName = 'CIP_Antic'
      Size = 14
    end
    object tEspera_C_CENTREFAC: TStringField
      Tag = 100
      DisplayLabel = 'Centre de facturaci'#243
      DisplayWidth = 2
      FieldName = 'C_CENTREFAC'
      Size = 2
    end
    object tEspera_C_HospitalOrigen: TSmallintField
      Tag = 100
      DisplayLabel = 'Hospital origen'
      DisplayWidth = 2
      FieldName = 'C_HospitalOrigen'
    end
    object tEspera_T_SESSIO: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus de sessi'#243
      DisplayWidth = 3
      FieldName = 'T_SESSIO'
    end
    object tEspera_C_CLIENT: TStringField
      Tag = 100
      DisplayLabel = 'Client de facturaci'#243
      DisplayWidth = 3
      FieldName = 'C_CLIENT'
      Size = 3
    end
    object tEspera_hce_person_id: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero usuari app'
      DisplayWidth = 10
      FieldName = 'hce_person_id'
      DisplayFormat = '#,##0;; '
    end
    object tEspera_hce_schedule_id: TStringField
      Tag = 100
      DisplayLabel = 'ID Agenda HCE'
      DisplayWidth = 40
      FieldName = 'hce_schedule_id'
      Size = 40
    end
    object tEspera_RISC_SOCIAL: TIntegerField
      Tag = 100
      DisplayLabel = 'Risc social'
      DisplayWidth = 8
      FieldName = 'RISC_SOCIAL'
      DisplayFormat = '#,##0;; '
    end
    object tEsperaEdat: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Edat'
      Calculated = True
    end
    object tEspera_C_TRANSPORT_SANITARI: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi transport sanitari'
      DisplayWidth = 3
      FieldName = 'C_TRANSPORT_SANITARI'
    end
    object tEspera_C_Modalitat: TSmallintField
      Tag = 100
      DisplayLabel = 'Modalitat'
      DisplayWidth = 2
      FieldName = 'C_Modalitat'
    end
    object tEspera_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Fili_NUM_HIST'
      LookupKeyFields = 'NUM_HIST'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_1: TStringField
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
    object tEspera_C0_2: TStringField
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
    object tEspera_C0_3: TIntegerField
      Tag = 101
      DisplayLabel = 'Edat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_Edat'
      LookupKeyFields = 'Edat'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_4: TStringField
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
    object tEspera_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_APELLIDO1'
      LookupKeyFields = 'APELLIDO1'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_APELLIDO2'
      LookupKeyFields = 'APELLIDO2'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_NOMBRE'
      LookupKeyFields = 'NOMBRE'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_8: TSmallintField
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
    object tEspera_C0_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat M'#232'dica'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fili_C_UnitatMedica'
      LookupKeyFields = 'C_UnitatMedica'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_10: TStringField
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
    object tEspera_C0_11: TStringField
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
    object tEspera_C0_12: TDateTimeField
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
    object tEspera_C0_13: TStringField
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
    object tEspera_C0_14: TStringField
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
    object tEspera_C0_15: TStringField
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
    object tEspera_C0_16: TStringField
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
    object tEspera_C0_17: TSmallintField
      Tag = 101
      DisplayLabel = 'UM_ANTIGA'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_UM_ANTIGA'
      LookupKeyFields = 'UM_ANTIGA'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_18: TSmallintField
      Tag = 101
      DisplayLabel = 'Lateralitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_c_Lateralitat'
      LookupKeyFields = 'c_Lateralitat'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_19: TStringField
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
    object tEspera_C0_20: TStringField
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
    object tEspera_C0_21: TStringField
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
    object tEspera_C0_22: TStringField
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
    object tEspera_C0_23: TStringField
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
    object tEspera_C0_24: TSmallintField
      Tag = 101
      DisplayLabel = 'Hospital primera atencio'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Fili_C_HOSPITAL'
      LookupKeyFields = 'C_HOSPITAL'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_25: TStringField
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
    object tEspera_C0_26: TSmallintField
      Tag = 101
      DisplayLabel = 'Idioma'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fili_IDIOMA'
      LookupKeyFields = 'IDIOMA'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tEspera_C0_27: TStringField
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
    object tEspera_C0_28: TStringField
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
    object tEspera_C0_29: TStringField
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
    object tEspera_C0_30: TIntegerField
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
    object tEspera_C1_0: TStringField
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
    object tEspera_C1_1: TStringField
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
    object tEspera_C1_2: TStringField
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
    object tEspera_C1_3: TStringField
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
    object tEspera_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Presta_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Presta'
      Calculated = True
    end
    object tEspera_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'EsEase'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Presta_EsEase'
      LookupKeyFields = 'EsEase'
      KeyFields = 'Presta'
      Size = 1
      Calculated = True
    end
    object tEspera_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'No SCS'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Presta_NoSCS'
      LookupKeyFields = 'NoSCS'
      KeyFields = 'Presta'
      Size = 1
      Calculated = True
    end
    object tEspera_C1_7: TSmallintField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Presta_Grup'
      LookupKeyFields = 'Grup'
      KeyFields = 'Presta'
      Calculated = True
    end
    object tEspera_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Presta_Centre'
      LookupKeyFields = 'Centre'
      KeyFields = 'Presta'
      Size = 1
      Calculated = True
    end
    object tEspera_C2_0: TStringField
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
    object tEspera_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Metge_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tEspera_C2_2: TStringField
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
    object tEspera_C2_3: TStringField
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
    object tEspera_C2_4: TStringField
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
    object tEspera_C2_5: TStringField
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
    object tEspera_C2_6: TStringField
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
    object tEspera_C2_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Metge_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tEspera_C2_8: TStringField
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
    object tEspera_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Metge_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'Metge'
      Size = 40
      Calculated = True
    end
    object tEspera_C2_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Metge_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tEspera_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Metge_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tEspera_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Metge_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tEspera_C2_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'Metge_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'Metge'
      Size = 6
      Calculated = True
    end
    object tEspera_C2_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Metge_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'Metge'
      Size = 9
      Calculated = True
    end
    object tEspera_C2_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Metge_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'Metge'
      Size = 250
      Calculated = True
    end
    object tEspera_C2_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Metge_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'Metge'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tEspera_C2_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Metge_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'Metge'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object tEspera_C3_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Unitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object tEspera_C3_1: TStringField
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
    object tEspera_C3_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Unitat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object tEspera_C3_3: TStringField
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
    object tEspera_C3_4: TStringField
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
    object tEspera_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Unitat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object tEspera_C4_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Origen_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Origen'
      Calculated = True
    end
    object tEspera_C4_1: TStringField
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
    object tEspera_C5_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Caracter_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Caracter'
      Calculated = True
    end
    object tEspera_C5_1: TStringField
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
    object tEspera_C6_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Motiu'
      Calculated = True
    end
    object tEspera_C6_1: TStringField
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
    object tEspera_C7_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Estat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Estat'
      Calculated = True
    end
    object tEspera_C7_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Estat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Estat'
      Size = 40
      Calculated = True
    end
    object tEspera_C7_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Estat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Estat'
      Calculated = True
    end
    object tEspera_C7_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Estat_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Estat'
      Size = 40
      Calculated = True
    end
    object tEspera_C7_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Estat_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Estat'
      Size = 10
      Calculated = True
    end
    object tEspera_C7_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Estat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Estat'
      Calculated = True
    end
    object tEspera_C8_0: TStringField
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
    object tEspera_C8_1: TStringField
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
    object tEspera_C8_2: TStringField
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
    object tEspera_C8_3: TStringField
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
    object tEspera_C8_4: TSmallintField
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
    object tEspera_C9_0: TStringField
      Tag = 101
      DisplayLabel = 'Lloc'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'llocs_Lloc'
      LookupKeyFields = 'Lloc'
      KeyFields = 'llocs'
      Size = 15
      Calculated = True
    end
    object tEspera_C10_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'accio_hccc_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'accio_hccc'
      Size = 1
      Calculated = True
    end
    object tEspera_C10_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'accio_hccc_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'accio_hccc'
      Size = 60
      Calculated = True
    end
    object tEspera_C11_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'estat_hccc_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'estat_hccc'
      Size = 1
      Calculated = True
    end
    object tEspera_C11_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'estat_hccc_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'estat_hccc'
      Size = 60
      Calculated = True
    end
    object tEspera_C12_0: TStringField
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
    object tEspera_C12_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CentreFac_N_CentreFac'
      LookupKeyFields = 'N_CentreFac'
      KeyFields = 'CentreFac'
      Calculated = True
    end
    object tEspera_C12_2: TStringField
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
    object tEspera_C13_0: TSmallintField
      Tag = 101
      DisplayLabel = 'N'#186' Hospital'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hosporigen_C_Hospital'
      LookupKeyFields = 'C_Hospital'
      KeyFields = 'hosporigen'
      Calculated = True
    end
    object tEspera_C13_1: TStringField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'hosporigen_CODI'
      LookupKeyFields = 'CODI'
      KeyFields = 'hosporigen'
      Size = 9
      Calculated = True
    end
    object tEspera_C13_2: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 62
      FieldKind = fkCalculated
      FieldName = 'hosporigen_N_Hospital'
      LookupKeyFields = 'N_Hospital'
      KeyFields = 'hosporigen'
      Size = 62
      Calculated = True
    end
    object tEspera_C13_3: TStringField
      Tag = 101
      DisplayLabel = 'Unitat Productiva'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'hosporigen_C_UP'
      LookupKeyFields = 'C_UP'
      KeyFields = 'hosporigen'
      Size = 5
      Calculated = True
    end
    object tEspera_C13_4: TStringField
      Tag = 101
      DisplayLabel = 'Tipus UP'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'hosporigen_Tipus_UP'
      LookupKeyFields = 'Tipus_UP'
      KeyFields = 'hosporigen'
      Size = 2
      Calculated = True
    end
    object tEspera_C13_5: TStringField
      Tag = 101
      DisplayLabel = 'Actiu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'hosporigen_Actiu'
      LookupKeyFields = 'Actiu'
      KeyFields = 'hosporigen'
      Size = 1
      Calculated = True
    end
    object tEspera_C13_6: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'hosporigen_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'hosporigen'
      Size = 44
      Calculated = True
    end
    object tEspera_C13_7: TStringField
      Tag = 101
      DisplayLabel = 'Es centre de dany cerebral'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'hosporigen_DANY_CEREBRAL'
      LookupKeyFields = 'DANY_CEREBRAL'
      KeyFields = 'hosporigen'
      Size = 1
      Calculated = True
    end
    object tEspera_C14_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TSessio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object tEspera_C14_1: TStringField
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
    object tEspera_C14_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TSessio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object tEspera_C14_3: TStringField
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
    object tEspera_C14_4: TStringField
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
    object tEspera_C14_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TSessio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object tEspera_C15_0: TStringField
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
    object tEspera_C15_1: TStringField
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
    object tEspera_C15_2: TStringField
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
    object tEspera_C15_3: TStringField
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
    object tEspera_C15_4: TStringField
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
    object tEspera_C15_5: TStringField
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
    object tEspera_C16_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object tEspera_C16_1: TStringField
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
    object tEspera_C16_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object tEspera_C16_3: TStringField
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
    object tEspera_C16_4: TStringField
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
    object tEspera_C16_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object tEspera_C17_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'modalitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'modalitat'
      Calculated = True
    end
    object tEspera_C17_1: TStringField
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
    object tEspera_C17_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'modalitat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'modalitat'
      Calculated = True
    end
    object tEspera_C17_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'modalitat_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'modalitat'
      Size = 40
      Calculated = True
    end
    object tEspera_C17_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'modalitat_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'modalitat'
      Size = 10
      Calculated = True
    end
    object tEspera_C17_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'modalitat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'modalitat'
      Calculated = True
    end
  end
  object dsEspera: TDataSource
    DataSet = tEspera
    Left = 632
    Top = 432
  end
  object ActionList: TActionList
    Left = 688
    Top = 431
    object accHistoria: TAction
      Caption = '&Hist'#242'ria'
      OnExecute = accHistoriaExecute
    end
  end
  object cMetgePresta: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'SELECT A.Codi, A.Metge, A.Cognom, A.NC, A.Tracte, A.C_Grup, C.N_' +
        'Grup, A.C_Especial, D.N_Especial , B.C_Prestacio'
      'FROM [DIC1] A, [DIC2] B, [DIC3] C, [DIC4] D'
      
        'WHERE A.CODI             = B.CODI AND A.C_GRUP = C.C_GRUP AND A.' +
        'C_ESPECIAL = D.C_ESPECIAL  AND A.BAIXA = "N"'
      '/*      AND B.C_PRESTACIO = 1004*/'
      '[AND FILTRO]'
      '[ORDEN]'
      '')
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
    Left = 751
    Top = 431
  end
  object qEspecialitatMetge: THYSqlQuery
    DatabaseName = 'Interna'
    DataSource = dsEspera
    SQL.Strings = (
      
        'Select N_Especial from Especial where C_Especial = :Metge_C_Espe' +
        'cial')
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Especial
    IndiceActivo = 'Especial'
    CalcSimple = True
    AutoPost = False
    SqlDic.Strings = (
      
        'Select N_Especial from Especial where C_Especial = :Metge_C_Espe' +
        'cial')
    Left = 583
    Top = 363
    ParamData = <
      item
        DataType = ftString
        Name = 'Metge_C_Especial'
        ParamType = ptUnknown
      end>
  end
  object dsEspecialitatMetge: TDataSource
    DataSet = qEspecialitatMetge
    Left = 688
    Top = 363
  end
  object qInsEspera: TQuery
    BeforePost = tEsperaBeforePost
    AfterPost = tEsperaAfterPost
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'insert into espera(c_espera,c_historia,c_prestacio,data_inclusio' +
        ',data_preingres,hora_preingres,nom,cognom1,cognom2,telefon,lloc,' +
        'sexo,c_caracter,c_procedencia,exclos,c_estat,c_unitat,c_motiu,c_' +
        'modalitat,datafixe,c_frecuencia,intervencio,comentari,c_coordina' +
        'dor,c_centrefac, metge_programa,c_client, hce_person_id)'
      
        'values(:c_espera,:c_historia,:c_prestacio,:data_inclusio,:data_p' +
        'reingres,:hora_preingres,:nom,:cognom1,:cognom2,:telefon,:lloc,:' +
        'sexo,:c_caracter,:c_procedencia,:exclos,:c_estat,:c_unitat,:c_mo' +
        'tiu,:c_modalitat,:datafixe,:c_frecuencia,:intervencio,:comentari' +
        ',:c_coordinador,:c_centrefac, :metge_programa, :c_client,:hce_pe' +
        'rson_id)')
    Left = 520
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_espera'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_historia'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_prestacio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_inclusio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_preingres'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'hora_preingres'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nom'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cognom1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cognom2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'telefon'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lloc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'sexo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_caracter'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_procedencia'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'exclos'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_estat'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_unitat'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_motiu'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_modalitat'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'datafixe'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_frecuencia'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'intervencio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'comentari'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_coordinador'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_centrefac'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'metge_programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_client'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'hce_person_id'
        ParamType = ptInput
      end>
  end
end
