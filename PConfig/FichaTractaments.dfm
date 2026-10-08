object wFichaTractaments: TwFichaTractaments
  Left = 197
  Top = 60
  Width = 1519
  Height = 877
  Caption = 'Tractaments'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 313
    Top = 0
    Width = 3
    Height = 846
    Cursor = crHSplit
  end
  object Panel2: TPanel
    Left = 316
    Top = 0
    Width = 1195
    Height = 846
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter9: TSplitter
      Left = 0
      Top = 161
      Width = 1195
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object HYArea1: THYArea
      Left = 0
      Top = 25
      Width = 1195
      Height = 136
      Align = alTop
      Color = clWhite
      ParentColor = False
      TabOrder = 1
      DataSource = dsTract
      object Eti_Tract_Fili_NomComplet: THYLabel
        Left = 146
        Top = 36
        Width = 209
        Height = 19
        DataField = 'Fili_NomComplet'
        DataSource = dsTract
        EtiFontColor = -1
        HyColorNo = False
        EtiSepara = 100
        EtiOrienta = eoNoMostrar
        EtiAlign = taLeftJustify
      end
      object Eti_Tract_Fili_SEXO: THYLabel
        Left = 376
        Top = 36
        Width = 85
        Height = 19
        DataField = 'Fili_SEXO'
        DataSource = dsTract
        EtiFontColor = -1
        HyColorNo = False
        Etiqueta = 'Sexe'
        EtiSepara = 35
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
      end
      object Eti_Tract_Fili_EsViu: THYLabel
        Left = 472
        Top = 36
        Width = 91
        Height = 19
        DataField = 'Fili_EsViu'
        DataSource = dsTract
        EtiFontColor = -1
        HyColorNo = False
        Etiqueta = #201's viu'
        EtiSepara = 40
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
      end
      object Eti_Tract_Prestacio_N_Prestacio: THYLabel
        Left = 146
        Top = 60
        Width = 209
        Height = 19
        DataField = 'Prestacio_N_Prestacio'
        DataSource = dsTract
        EtiFontColor = -1
        HyColorNo = False
        EtiSepara = 100
        EtiOrienta = eoNoMostrar
        EtiAlign = taLeftJustify
      end
      object Eti_Tract_Coordinador_Nom: THYLabel
        Left = 146
        Top = 84
        Width = 209
        Height = 19
        DataField = 'Coordinador_Metge'
        DataSource = dsTract
        EtiFontColor = -1
        HyColorNo = False
        EtiSepara = 100
        EtiOrienta = eoNoMostrar
        EtiAlign = taLeftJustify
      end
      object Eti_Tract_IcdAlta_RIC: THYLabel
        Left = 574
        Top = 34
        Width = 60
        Height = 19
        DataField = 'IcdAlta_RIC'
        DataSource = dsTract
        Visible = False
        EtiFontColor = -1
        HyColorNo = False
        Etiqueta = 'RIC'
        EtiSepara = 35
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
      end
      object Eti_Tract_IcdAlta_GLF: THYLabel
        Left = 574
        Top = 56
        Width = 93
        Height = 19
        DataField = 'IcdAlta_GLF'
        DataSource = dsTract
        Visible = False
        EtiFontColor = -1
        HyColorNo = False
        Etiqueta = 'GLF'
        EtiSepara = 35
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
      end
      object Ed_Tract_C_Tractament: THYEdit
        Left = 10
        Top = 12
        Width = 129
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Tractament'
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Tractaments
        TabOrder = 0
        AutoSelect = False
        DataSource = dsTract
        DataField = 'C_Tractament'
      end
      object Ed_Tract_C_Historia: THYEdit
        Left = 10
        Top = 36
        Width = 129
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Hist'#242'ria'
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Tractaments
        TabOrder = 1
        AutoSelect = False
        DataSource = dsTract
        DataField = 'C_Historia'
      end
      object Ed_Tract_C_Prestacio: THYEdit
        Left = 10
        Top = 60
        Width = 129
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Prestaci'#243
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Tractaments
        TabOrder = 2
        AutoSelect = False
        DataSource = dsTract
        DataField = 'C_Prestacio'
      end
      object Ed_Tract_Data_Ingres: THYEdit
        Left = 378
        Top = 70
        Width = 85
        Height = 34
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Data ingr'#233's'
        EtiSepara = 14
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Tractaments
        TabOrder = 3
        AutoSelect = False
        DataSource = dsTract
        DataField = 'Data_Ingres'
      end
      object Ed_Tract_C_Coordinador: THYEdit
        Left = 10
        Top = 84
        Width = 129
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Coordinador'
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Tractaments
        TabOrder = 4
        AutoSelect = False
        DataSource = dsTract
        DataField = 'C_Coordinador'
      end
      object Ed_Tract_Durada: THYEdit
        Left = 148
        Top = 12
        Width = 103
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Durada'
        EtiSepara = 50
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Tractaments
        Enabled = False
        TabOrder = 5
        AutoSelect = False
        DataSource = dsTract
        DataField = 'Durada'
      end
      object Ed_Tract_Hora: THYEdit
        Left = 474
        Top = 70
        Width = 47
        Height = 34
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Hora'
        EtiSepara = 14
        EtiOrienta = eoArriba
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Tractaments
        TabOrder = 6
        AutoSelect = False
        DataSource = dsTract
        DataField = 'Hora'
      end
      object Ed_Tract_VersioCIM: THYEdit
        Left = 376
        Top = 10
        Width = 87
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Versi'#243' CIM'
        EtiSepara = 60
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Tractaments
        Color = 33023
        ParentColor = False
        TabOrder = 7
        AutoSelect = False
        DataSource = dsTract
        DataField = 'VersioCIM'
      end
      object HYEdit7: THYEdit
        Left = 472
        Top = 10
        Width = 139
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Versi'#243' CIM G'
        EtiSepara = 70
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataBasics.Tractaments
        Color = 33023
        ParentColor = False
        TabOrder = 8
        AutoSelect = False
        DataSource = dsTract
        DataField = 'VersioCIM_G'
      end
      object HYArea10: THYArea
        Left = 798
        Top = 0
        Width = 393
        Height = 132
        Align = alRight
        Color = clWhite
        ParentColor = False
        TabOrder = 9
        DataSource = dsTractCodificacio
        object Ed_TractCodificacio_GRD: THYEdit
          Left = 8
          Top = 35
          Width = 129
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'GRD'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataCurs.Tract_Codificacio
          TabOrder = 0
          AutoSelect = False
          DataSource = dsTractCodificacio
          DataField = 'GRD'
        end
        object Ed_TractCodificacio_NivellSeveritat: THYEdit
          Left = 8
          Top = 59
          Width = 113
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Nivell Severitat'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataCurs.Tract_Codificacio
          TabOrder = 1
          AutoSelect = False
          DataSource = dsTractCodificacio
          DataField = 'NivellSeveritat'
        end
        object Ed_TractCodificacio_Pes: THYEdit
          Left = 135
          Top = 84
          Width = 243
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Pes'
          EtiSepara = 25
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataCurs.Tract_Codificacio
          TabOrder = 2
          AutoSelect = False
          DataSource = dsTractCodificacio
          DataField = 'Pes'
        end
        object Ed_TractCodificacio_RiscMortalitat: THYEdit
          Left = 8
          Top = 84
          Width = 113
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Risc Mortalitat'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataCurs.Tract_Codificacio
          TabOrder = 3
          AutoSelect = False
          DataSource = dsTractCodificacio
          DataField = 'RiscMortalitat'
        end
        object Ed_TractCodificacio_CDM: THYEdit
          Left = 135
          Top = 59
          Width = 166
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Catagoria Major Diagn'#242'stica'
          EtiSepara = 145
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataCurs.Tract_Codificacio
          TabOrder = 4
          AutoSelect = False
          DataSource = dsTractCodificacio
          DataField = 'CDM'
        end
        object HYBarra12: THYBarra
          Left = 0
          Top = 0
          Width = 389
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 'Tract_Codificaci'#243'   '
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          DataSource = dsTractCodificacio
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
          VerRefresh = True
        end
      end
    end
    object HYBarra1: THYBarra
      Left = 0
      Top = 0
      Width = 1195
      Height = 25
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = clSilver
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      DataSource = dsTract
      VerConsultar = False
      VerOrdenar = False
      VerIndices = False
      Titulo = True
      VerPrint = True
      VerRefresh = True
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 164
      Width = 1195
      Height = 682
      ActivePage = TabSheet2
      Align = alClient
      TabIndex = 0
      TabOrder = 2
      OnChange = PageControl1Change
      object TabSheet2: TTabSheet
        Caption = 'Filiar'
        ImageIndex = 1
        object HYArea3: THYArea
          Left = 0
          Top = 0
          Width = 1187
          Height = 654
          Align = alClient
          Color = clWhite
          ParentColor = False
          TabOrder = 0
          DataSource = dsTract
          object Eti_Tract_Origen_N_CodiTract: THYLabel
            Left = 162
            Top = 85
            Width = 320
            Height = 19
            DataField = 'Origen_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_HtalOrigen_N_Hospital: THYLabel
            Left = 162
            Top = 110
            Width = 320
            Height = 19
            DataField = 'HtalOrigen_N_Hospital'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_HtalOrigen_Poblacio: THYLabel
            Left = 488
            Top = 110
            Width = 192
            Height = 19
            DataField = 'HtalOrigen_Poblacio'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Caracter_N_CodiTract: THYLabel
            Left = 162
            Top = 134
            Width = 320
            Height = 19
            DataField = 'Caracter_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Solicitud_N_CodiTract: THYLabel
            Left = 162
            Top = 158
            Width = 320
            Height = 19
            DataField = 'Solicitud_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Motiu_N_Codi: THYLabel
            Left = 162
            Top = 38
            Width = 320
            Height = 19
            DataField = 'Motiu_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_HtalOrigen_C_UP: THYLabel
            Left = 711
            Top = 110
            Width = 50
            Height = 19
            DataField = 'HtalOrigen_C_UP'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label3: TLabel
            Left = 688
            Top = 113
            Width = 18
            Height = 13
            Caption = 'UP:'
          end
          object Eti_Tract_modalitat_N_Codi: THYLabel
            Left = 162
            Top = 62
            Width = 400
            Height = 19
            DataField = 'modalitat_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Ed_Tract_C_PrestacioOrigen: THYEdit
            Left = 14
            Top = 12
            Width = 171
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Prestaci'#243' origen'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_PrestacioOrigen'
          end
          object Ed_Tract_C_Motiu: THYEdit
            Left = 14
            Top = 36
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Motiu'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 1
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Motiu'
          end
          object Ed_Tract_C_Origen: THYEdit
            Left = 14
            Top = 85
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Proced'#232'ncia / origen'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 2
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Origen'
          end
          object Ed_Tract_C_HospitalOrigen: THYEdit
            Left = 14
            Top = 110
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hospital'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 3
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_HospitalOrigen'
          end
          object Ed_Tract_C_Caracter: THYEdit
            Left = 14
            Top = 134
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Car'#224'cter'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 4
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Caracter'
          end
          object Ed_Tract_C_Solicitud: THYEdit
            Left = 14
            Top = 158
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Solicitud / Causa'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 5
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Solicitud'
          end
          object Ed_Tract_C_LLit: THYEdit
            Left = 102
            Top = 196
            Width = 55
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Llit'
            EtiSepara = 22
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 6
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_LLit'
          end
          object Ed_Tract_C_Planta: THYEdit
            Left = 14
            Top = 196
            Width = 80
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Planta'
            EtiSepara = 40
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 7
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Planta'
          end
          object Ed_Tract_C_Residencia: THYEdit
            Left = 14
            Top = 272
            Width = 195
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Resid'#232'ncia'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 8
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Residencia'
          end
          object Ed_Tract_Entrada: THYEdit
            Left = 14
            Top = 299
            Width = 193
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codificaci'#243' entrada'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 9
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Entrada'
          end
          object Ed_Tract_C_MetgePassi: THYEdit
            Left = 126
            Top = 235
            Width = 115
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Metge passi'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 10
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_MetgePassi'
          end
          object Check_Tract_Passi: THYCheck
            Left = 12
            Top = 236
            Width = 93
            Height = 17
            Caption = 'Pot fer passis'
            DataField = 'Passi'
            DataSource = dsTract
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object Ed_Tract_C_InfermeraPassi: THYEdit
            Left = 263
            Top = 235
            Width = 135
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Infermer/a passi'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 12
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_InfermeraPassi'
          end
          object Ed_Tract_EsProvisional: THYCheck
            Left = 196
            Top = 12
            Width = 93
            Height = 19
            Caption = #201's provisional'
            DataField = 'EsProvisional'
            DataSource = dsTract
            TabOrder = 13
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object Ed_Tract_C_Modalitat: THYEdit
            Left = 14
            Top = 62
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Modalitat'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 14
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Modalitat'
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Alta / prealta'
        object HYArea2: THYArea
          Left = 0
          Top = 0
          Width = 1187
          Height = 654
          Align = alClient
          Color = clWhite
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsTract
          object Eti_Tract_MetgePreAlta_Nom: THYLabel
            Left = 351
            Top = 13
            Width = 175
            Height = 19
            DataField = 'MetgePreAlta_Metge'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_MetgeAlta_Nom: THYLabel
            Left = 351
            Top = 37
            Width = 175
            Height = 19
            DataField = 'MetgeAlta_Metge'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Destinacio_N_CodiTract: THYLabel
            Left = 126
            Top = 72
            Width = 320
            Height = 19
            DataField = 'Destinacio_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_HtalDestinacio_N_Hospital: THYLabel
            Left = 126
            Top = 96
            Width = 320
            Height = 19
            DataField = 'HtalDestinacio_N_Hospital'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_HtalDestinacio_Poblacio: THYLabel
            Left = 454
            Top = 96
            Width = 143
            Height = 19
            DataField = 'HtalDestinacio_Poblacio'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_DESTI_CONT_EXT_N_Codi: THYLabel
            Left = 238
            Top = 133
            Width = 400
            Height = 19
            DataField = 'DESTI_CONT_EXT_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_DESTI_CONT_INT_N_Codi: THYLabel
            Left = 238
            Top = 157
            Width = 400
            Height = 19
            DataField = 'DESTI_CONT_INT_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_HtalDestinacio_C_UP: THYLabel
            Left = 630
            Top = 96
            Width = 50
            Height = 19
            DataField = 'HtalDestinacio_C_UP'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label2: TLabel
            Left = 608
            Top = 100
            Width = 18
            Height = 13
            Caption = 'UP:'
          end
          object Eti_Tract_DESTI_CONT_EXT_R_Codi: THYLabel
            Left = 644
            Top = 133
            Width = 86
            Height = 19
            DataField = 'DESTI_CONT_EXT_R_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_DESTI_CONT_INT_R_Codi: THYLabel
            Left = 644
            Top = 157
            Width = 86
            Height = 19
            DataField = 'DESTI_CONT_INT_R_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label4: TLabel
            Left = 659
            Top = 118
            Width = 55
            Height = 13
            Caption = 'Codi CMBD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Ed_Tract_Data_PreAlta: THYEdit
            Left = 10
            Top = 13
            Width = 148
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data prealta'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Data_PreAlta'
          end
          object Ed_Tract_C_MetgePreAlta: THYEdit
            Left = 232
            Top = 13
            Width = 115
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Metge prealta'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 1
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_MetgePreAlta'
          end
          object Ed_Tract_Data_Alta: THYEdit
            Left = 10
            Top = 37
            Width = 148
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data alta'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 2
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Data_Alta'
          end
          object Ed_Tract_C_MetgeAlta: THYEdit
            Left = 232
            Top = 37
            Width = 115
            Height = 19
            Hint = 
              'full d'#39'alta / data alta d'#39'EASE'#13#10'Si en donar l'#39'alta est'#224' buit, s'#39 +
              'hi posa el de prealta o el coordinador'
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Metge alta'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 4
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_MetgeAlta'
          end
          object Ed_Tract_C_Destinacio: THYEdit
            Left = 10
            Top = 72
            Width = 109
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Dest'#237
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 5
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Destinacio'
          end
          object Ed_Tract_C_HospitalDesti: THYEdit
            Left = 10
            Top = 96
            Width = 109
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hospital desti'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 6
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_HospitalDesti'
          end
          object Ed_Tract_ComentariMetge: THYEdit
            Left = 10
            Top = 183
            Width = 607
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Comentari mege'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 7
            AutoSelect = False
            DataSource = dsTract
            DataField = 'ComentariMetge'
          end
          object Ed_Tract_ComentariInfermeria: THYEdit
            Left = 10
            Top = 207
            Width = 607
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Comentari infermeria'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 8
            AutoSelect = False
            DataSource = dsTract
            DataField = 'ComentariInfermeria'
          end
          object Ed_Tract_Sortida: THYEdit
            Left = 10
            Top = 353
            Width = 153
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codificaci'#243' sortida'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 9
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Sortida'
          end
          object Check_Tract_Ambulancia: THYCheck
            Left = 8
            Top = 239
            Width = 115
            Height = 17
            Caption = 'Ambul'#224'ncia'
            DataField = 'Ambulancia'
            DataSource = dsTract
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object Ed_Tract_C_EsperaProgramada: THYEdit
            Left = 10
            Top = 265
            Width = 169
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Espera programada'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 13
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_EsperaProgramada'
          end
          object Ed_Tract_C_Stock: THYEdit
            Left = 10
            Top = 297
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi Stock'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 14
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Stock'
          end
          object Check_Tract_confirmstock: THYCheck
            Left = 8
            Top = 319
            Width = 115
            Height = 17
            Caption = 'Confirma stock'
            DataField = 'confirmstock'
            DataSource = dsTract
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object Ed_Tract_C_Proces: THYEdit
            Left = 533
            Top = 13
            Width = 139
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Proc'#233's'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 16
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Proces'
          end
          object Ed_Tract_Fi_Proces: THYEdit
            Left = 533
            Top = 37
            Width = 89
            Height = 17
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Fi de proc'#233's'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 17
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Fi_Proces'
          end
          object Ed_Tract_Metge_Proces: THYEdit
            Left = 637
            Top = 37
            Width = 128
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Metge fi proc'#233's'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 18
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Metge_Proces'
          end
          object Ed_Tract_Hora_Alta: THYEdit
            Left = 164
            Top = 22
            Width = 53
            Height = 33
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hora alta'
            EtiSepara = 14
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 3
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Hora_Alta'
          end
          object Ed_Tract_Data_fi_contractat: THYEdit
            Left = 10
            Top = 396
            Width = 193
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data fi contractat'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 10
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Data_fi_contractat'
          end
          object Ed_Tract_Data_no_renovacio: THYEdit
            Left = 10
            Top = 420
            Width = 193
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data no renovacio'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 11
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Data_no_renovacio'
          end
          object Ed_Tract_DESTI_CONT_EXT: THYEdit
            Left = 48
            Top = 134
            Width = 187
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Destinaci'#243' continu'#239'tat externa'
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 19
            AutoSelect = False
            DataSource = dsTract
            DataField = 'DESTI_CONT_EXT'
          end
          object Ed_Tract_DESTI_CONT_INT: THYEdit
            Left = 48
            Top = 158
            Width = 187
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Destinaci'#243' continu'#239'tat interna'
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 20
            AutoSelect = False
            DataSource = dsTract
            DataField = 'DESTI_CONT_INT'
          end
        end
      end
      object TabAmbulatori: TTabSheet
        Caption = 'Ambulatori / programaci'#243
        ImageIndex = 10
        object HYArea5: THYArea
          Left = 0
          Top = 0
          Width = 1187
          Height = 161
          Align = alTop
          Color = clWhite
          ParentColor = False
          TabOrder = 0
          DataSource = dsTract
          object Eti_Tract_Frequencia_DESCRIPCIO: THYLabel
            Left = 160
            Top = 44
            Width = 240
            Height = 19
            DataField = 'Frequencia_DESCRIPCIO'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Fisioterapeuta_Metge: THYLabel
            Left = 142
            Top = 100
            Width = 150
            Height = 19
            DataField = 'Fisioterapeuta_Metge'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Terapeuta_Metge: THYLabel
            Left = 142
            Top = 124
            Width = 150
            Height = 19
            DataField = 'Terapeuta_Metge'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label1: TLabel
            Left = 16
            Top = 16
            Width = 98
            Height = 16
            Caption = 'AMBULATORI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Ed_Tract_C_Frequencia: THYEdit
            Left = 16
            Top = 44
            Width = 137
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Freq'#252#232'ncia'
            EtiSepara = 75
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Frequencia'
          end
          object Ed_Tract_DiaFixe: THYEdit
            Left = 16
            Top = 68
            Width = 137
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Dia fix'
            EtiSepara = 75
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 1
            AutoSelect = False
            DataSource = dsTract
            DataField = 'DiaFixe'
          end
          object Ed_Tract_C_FisioTerapeuta: THYEdit
            Left = 16
            Top = 100
            Width = 120
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Fisioterapeuta'
            EtiSepara = 75
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 2
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_FisioTerapeuta'
          end
          object Ed_Tract_C_Terapeuta: THYEdit
            Left = 16
            Top = 124
            Width = 120
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Terapeuta'
            EtiSepara = 75
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 3
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Terapeuta'
          end
          object Ed_Tract_C_Infermeria: THYEdit
            Left = 488
            Top = 100
            Width = 110
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Infermeria'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 6
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Infermeria'
          end
          object Ed_Tract_C_Auxiliar: THYEdit
            Left = 488
            Top = 124
            Width = 110
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Auxiliar infer.'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 7
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Auxiliar'
          end
          object Ed_Tract_C_Psicoleg: THYEdit
            Left = 624
            Top = 100
            Width = 130
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Psicologia'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 9
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Psicoleg'
          end
          object Ed_Tract_C_TrevallSocial: THYEdit
            Left = 624
            Top = 124
            Width = 130
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Treball social'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 10
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_TrevallSocial'
          end
          object Ed_Tract_C_LOGOPEDA: THYEdit
            Left = 624
            Top = 76
            Width = 130
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Logop'#232'dia'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 8
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_LOGOPEDA'
          end
          object Ed_Tract_c_fisio_ar: THYEdit
            Left = 312
            Top = 101
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Auxilar Fisio'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 4
            AutoSelect = False
            DataSource = dsTract
            DataField = 'c_fisio_ar'
          end
          object Ed_Tract_c_fisio_labo_marxa: THYEdit
            Left = 312
            Top = 123
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Fisio Labo Marxa'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 5
            AutoSelect = False
            DataSource = dsTract
            DataField = 'c_fisio_labo_marxa'
          end
          object Ed_Tract_C_MUSICOTERAPEUTA: THYEdit
            Left = 624
            Top = 50
            Width = 128
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Musicoterapeuta'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 11
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_MUSICOTERAPEUTA'
          end
        end
        object Panel17: TPanel
          Left = 0
          Top = 161
          Width = 1187
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object DBText1: TDBText
            Left = 872
            Top = 10
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'motiu_N_Codi'
            DataSource = dsProces
          end
          object DBNavigator3: TDBNavigator
            Left = 0
            Top = 5
            Width = 240
            Height = 25
            DataSource = dsProces
            TabOrder = 0
          end
          object HYEdit4: THYEdit
            Left = 264
            Top = 8
            Width = 97
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Proc'#233's'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.ProcesNR
            TabOrder = 1
            AutoSelect = False
            DataSource = dsProces
            DataField = 'C_Proces'
          end
          object HYEdit5: THYEdit
            Left = 376
            Top = 8
            Width = 145
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data inici'
            EtiSepara = 60
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.ProcesNR
            TabOrder = 2
            AutoSelect = False
            DataSource = dsProces
            DataField = 'Data_inici'
          end
          object HYEdit6: THYEdit
            Left = 536
            Top = 8
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. Hist.'
            EtiSepara = 60
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.ProcesNR
            TabOrder = 3
            AutoSelect = False
            DataSource = dsProces
            DataField = 'C_Historia'
          end
          object HYEdit9: THYEdit
            Left = 696
            Top = 8
            Width = 169
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Motiu d'#39'assist'#232'ncia'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.ProcesNR
            TabOrder = 4
            AutoSelect = False
            DataSource = dsProces
            DataField = 'C_Motiu'
          end
        end
        object Panel18: TPanel
          Left = 744
          Top = 196
          Width = 443
          Height = 458
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object HYBarra11: THYBarra
            Left = 0
            Top = 0
            Width = 443
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = 'Torns   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsTorns
            VerEditar = False
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
          object HYGrid9: THYGrid
            Left = 0
            Top = 25
            Width = 443
            Height = 433
            Align = alClient
            Color = clWhite
            DataSource = dsTorns
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
                FieldName = 'C_Proces'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Dia_Inici'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Frequencia'
                Title.Caption = 'Freq.'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Torn'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_Usuari'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Data'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID'
                Visible = True
              end>
          end
        end
        object Panel19: TPanel
          Left = 0
          Top = 196
          Width = 744
          Height = 458
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          object HYGrid8: THYGrid
            Left = 0
            Top = 25
            Width = 744
            Height = 129
            Align = alClient
            Color = clWhite
            DataSource = dsPautes
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
                FieldName = 'C_Tractament'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Estat'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Data_inici'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Data_Prealta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Dies_Extra'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_Motiu'
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Comentari'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_Usuari'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Data'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_Usuari_Susp'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Data_Susp'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SegueixProtocolDurada'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SegueixProtocolFreq'
                Visible = True
              end>
          end
          object HYArea11: THYArea
            Left = 0
            Top = 154
            Width = 744
            Height = 304
            Align = alBottom
            Color = clWhite
            ParentColor = False
            TabOrder = 1
            DataSource = dsPautes
            object Eti_bPautes_metges_Metge: THYLabel
              Left = 158
              Top = 200
              Width = 263
              Height = 19
              DataField = 'metges_Metge'
              DataSource = dsPautes
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Eti_bPautes_metges2_Metge: THYLabel
              Left = 158
              Top = 248
              Width = 263
              Height = 19
              DataField = 'metges2_Metge'
              DataSource = dsPautes
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Eti_bPautes_motiu_N_Codi: THYLabel
              Left = 138
              Top = 136
              Width = 283
              Height = 19
              DataField = 'motiu_N_Codi'
              DataSource = dsPautes
              EtiFontColor = -1
              HyColorNo = False
              EtiSepara = 100
              EtiOrienta = eoNoMostrar
              EtiAlign = taLeftJustify
            end
            object Ed_bPautes_C_Proces: THYEdit
              Left = 352
              Top = 40
              Width = 149
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Proc'#233's'
              EtiSepara = 80
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 0
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'C_Proces'
            end
            object Ed_bPautes_Data_inici: THYEdit
              Left = 8
              Top = 16
              Width = 185
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Data inici'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 1
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'Data_inici'
            end
            object Ed_bPautes_ID: THYEdit
              Left = 352
              Top = 16
              Width = 149
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'ID'
              EtiSepara = 80
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 2
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'ID'
            end
            object Ed_bPautes_C_Tractament: THYEdit
              Left = 352
              Top = 64
              Width = 149
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'C_Tractament'
              EtiSepara = 80
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 3
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'C_Tractament'
            end
            object Ed_bPautes_Data_Prealta: THYEdit
              Left = 8
              Top = 40
              Width = 185
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Data prealta'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 4
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'Data_Prealta'
            end
            object Ed_bPautes_Dies_Extra: THYEdit
              Left = 8
              Top = 64
              Width = 145
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Dies extra'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 5
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'Dies_Extra'
            end
            object Ed_bPautes_Setmanes_5D: THYEdit
              Left = 8
              Top = 88
              Width = 125
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Setmanes 5D'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 6
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'Setmanes_5D'
            end
            object Ed_bPautes_Setmanes_3D: THYEdit
              Left = 8
              Top = 112
              Width = 125
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Setmanes 3D'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 7
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'Setmanes_3D'
            end
            object Ed_bPautes_C_Motiu: THYEdit
              Left = 8
              Top = 136
              Width = 125
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Motiu'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 8
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'C_Motiu'
            end
            object Ed_bPautes_Comentari: THYEdit
              Left = 8
              Top = 160
              Width = 413
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Comentari'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 9
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'Comentari'
            end
            object Ed_bPautes_Estat: THYEdit
              Left = 224
              Top = 16
              Width = 60
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Estat'
              EtiSepara = 40
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 10
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'Estat'
            end
            object Ed_bPautes_C_Usuari: THYEdit
              Left = 8
              Top = 200
              Width = 143
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Usuari'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 11
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'C_Usuari'
            end
            object Ed_bPautes_Data: THYEdit
              Left = 8
              Top = 224
              Width = 257
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Data'
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 12
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'Data'
            end
            object Ed_bPautes_C_Usuari_Susp: THYEdit
              Left = 8
              Top = 248
              Width = 143
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Usuari suspensi'#243
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 13
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'C_Usuari_Susp'
            end
            object Ed_bPautes_Data_Susp: THYEdit
              Left = 8
              Top = 272
              Width = 257
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Data suspensi'#243
              EtiSepara = 100
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataPerfilsNR.ProcesNR_Pautes
              TabOrder = 14
              AutoSelect = False
              DataSource = dsPautes
              DataField = 'Data_Susp'
            end
          end
          object HYBarra4: THYBarra
            Left = 0
            Top = 0
            Width = 744
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = 'Pautes   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            DataSource = dsPautes
            VerEditar = False
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
      end
      object TabSheet4: TTabSheet
        Caption = 'Comentari'
        ImageIndex = 3
        object HYMemo1: THYMemo
          Left = 0
          Top = 0
          Width = 1187
          Height = 654
          Align = alClient
          DataField = 'Comentari'
          DataSource = dsTract
          TabOrder = 0
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Diagn'#242'stics'
        ImageIndex = 4
        object Panel3: TPanel
          Left = 0
          Top = 145
          Width = 1122
          Height = 421
          Align = alClient
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 0
          object Splitter4: TSplitter
            Left = 1
            Top = 73
            Width = 1120
            Height = 4
            Cursor = crVSplit
            Align = alBottom
          end
          object Splitter5: TSplitter
            Left = 475
            Top = 5
            Width = 4
            Height = 68
            Cursor = crHSplit
          end
          object Splitter8: TSplitter
            Left = 1
            Top = 1
            Width = 1120
            Height = 4
            Cursor = crVSplit
            Align = alTop
          end
          object Panel4: TPanel
            Left = 479
            Top = 5
            Width = 642
            Height = 68
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 0
            object HYGrid1: THYGrid
              Left = 0
              Top = 25
              Width = 642
              Height = 43
              Align = alClient
              Color = clWhite
              DataSource = dsDiagP
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
                  FieldName = 'Ordre'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'N_Diagnostic'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Metge'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Data'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tipus'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VersioCIM'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Diagnostic'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'G_Diagnostic'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VersioCIM_G'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Codiicd_N_ICD'
                  Width = 300
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Tractament'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'id_diagnostic'
                  Width = 86
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Confianca'
                  Visible = True
                end>
            end
            object HYBarra2: THYBarra
              Left = 0
              Top = 0
              Width = 642
              Height = 25
              Alignment = taRightJustify
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = 'Diang'#242'stics de proc'#233's    '
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              DataSource = dsDiagP
              VerOrdenar = False
              VerSalir = False
              VerIndices = False
              Titulo = False
              VerPrint = False
              VerRefresh = True
            end
          end
          object Panel5: TPanel
            Left = 1
            Top = 77
            Width = 1120
            Height = 343
            Align = alBottom
            BevelOuter = bvNone
            Ctl3D = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
            object HYBarra3: THYBarra
              Left = 0
              Top = 0
              Width = 1120
              Height = 25
              Alignment = taRightJustify
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = 'Diang'#242'stics a l'#39'alta    '
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              DataSource = dsDiagA
              VerOrdenar = False
              VerSalir = False
              VerIndices = False
              Titulo = False
              VerPrint = False
              VerRefresh = True
            end
            object HYGrid2: THYGrid
              Left = 0
              Top = 25
              Width = 1120
              Height = 318
              Align = alClient
              Color = clWhite
              DataSource = dsDiagA
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
                  FieldName = 'Classe'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Ordre'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'POA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'N_Diagnostic'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Metge'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Data'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VersioCIM_G'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'G_Diagnostic'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Codiicd_N_ICD'
                  Title.Caption = 'Descripci'#243' Subcodi'
                  Width = 300
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ClasseCMB'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OrdreCMB'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'POACMB'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Diagnostic'
                  Title.Caption = 'Codi Iasist'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VersioCIM'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Codiicd2_N_ICD'
                  Title.Caption = 'Descripci'#243' Codi'
                  Width = 300
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tipus'
                  Width = 33
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Tractament'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'id_diagnostic'
                  Width = 86
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Confianca'
                  Visible = True
                end>
            end
          end
          object Panel12: TPanel
            Left = 1
            Top = 5
            Width = 474
            Height = 68
            Align = alLeft
            BevelOuter = bvNone
            Ctl3D = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 2
            object HYGrid5: THYGrid
              Left = 0
              Top = 25
              Width = 474
              Height = 43
              Align = alClient
              Color = clWhite
              DataSource = dsDiagI
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
                  FieldName = 'Ordre'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'POA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'N_Diagnostic'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Metge'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Data'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tipus'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VersioCIM'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Diagnostic'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'G_Diagnostic'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VersioCIM_G'
                  Title.Caption = 'Versi'#243' CIM'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Codiicd_N_ICD'
                  Width = 300
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Tractament'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_DIAGNOSTIC'
                  Width = 86
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONFIANCA'
                  Visible = True
                end>
            end
            object HYBarra7: THYBarra
              Left = 0
              Top = 0
              Width = 474
              Height = 25
              Alignment = taRightJustify
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = 'Diang'#242'stics a l'#39'ingr'#233's    '
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              DataSource = dsDiagI
              VerOrdenar = False
              VerSalir = False
              VerIndices = False
              Titulo = False
              VerPrint = False
              VerRefresh = True
            end
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 1122
          Height = 145
          Align = alTop
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 1
          object Splitter7: TSplitter
            Left = 475
            Top = 1
            Width = 4
            Height = 143
            Cursor = crHSplit
          end
          object Panel11: TPanel
            Left = 1
            Top = 1
            Width = 474
            Height = 143
            Align = alLeft
            BevelOuter = bvNone
            Ctl3D = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 0
            object HYArea8: THYArea
              Left = 0
              Top = 0
              Width = 474
              Height = 143
              Align = alClient
              BevelInner = bvNone
              Color = clWhite
              ParentColor = False
              TabOrder = 0
              DataSource = dsTract
              object Eti_Tract_IcdIngres_N_ICD: THYLabel
                Left = 173
                Top = 52
                Width = 296
                Height = 19
                DataField = 'IcdIngres_N_ICD'
                DataSource = dsTract
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Ed_Tract_C_DiagnosticNeurologicIngres: THYEdit
                Left = 6
                Top = 4
                Width = 164
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Diag. neur. ingr'#233's'
                EtiSepara = 90
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 0
                AutoSelect = False
                DataSource = dsTract
                DataField = 'C_DiagnosticNeurologicIngres'
              end
              object Ed_Tract_N_DiagnosticNeurologicIngres: THYEdit
                Left = 173
                Top = 4
                Width = 296
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Literal Diag.Neuro.Ingr'#233's'
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 1
                AutoSelect = False
                DataSource = dsTract
                DataField = 'N_DiagnosticNeurologicIngres'
              end
              object Ed_Tract_C_DiagnosticIngres: THYEdit
                Left = 6
                Top = 28
                Width = 164
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Diag./motiu ingr'#233's'
                EtiSepara = 90
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 2
                AutoSelect = False
                DataSource = dsTract
                DataField = 'C_DiagnosticIngres'
              end
              object Ed_Tract_N_DiagnosticIngres: THYEdit
                Left = 173
                Top = 28
                Width = 296
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Literal Diag.Principal Ingr'#233's'
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 3
                AutoSelect = False
                DataSource = dsTract
                DataField = 'N_DiagnosticIngres'
              end
              object Ed_Tract_G_DiagnosticIngres: THYEdit
                Left = 6
                Top = 52
                Width = 164
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'G_Diag ingr'#233's'
                EtiSepara = 90
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 4
                AutoSelect = False
                DataSource = dsTract
                DataField = 'G_DiagnosticIngres'
              end
              object Ed_Tract_ConfiancaDPI: THYEdit
                Left = 6
                Top = 76
                Width = 265
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Confian'#231'a diagn'#242'stic principal ingr'#233's'
                EtiSepara = 180
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 5
                AutoSelect = False
                DataSource = dsTract
                DataField = 'ConfiancaDPI'
              end
              object Ed_Tract_ID_DPI: THYEdit
                Left = 6
                Top = 98
                Width = 435
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Identificador WS DP ingr'#233's'
                EtiSepara = 135
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 6
                AutoSelect = False
                DataSource = dsTract
                DataField = 'ID_DPI'
              end
            end
          end
          object Panel13: TPanel
            Left = 479
            Top = 1
            Width = 642
            Height = 143
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
            object HYArea7: THYArea
              Left = 0
              Top = 0
              Width = 642
              Height = 143
              Align = alClient
              Color = clWhite
              ParentColor = False
              TabOrder = 0
              DataSource = dsTract
              object Eti_Tract_IcdAlta_N_ICD: THYLabel
                Left = 174
                Top = 51
                Width = 326
                Height = 19
                DataField = 'IcdAlta_N_ICD'
                DataSource = dsTract
                EtiFontColor = -1
                HyColorNo = False
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
              end
              object Ed_Tract_C_DiagnosticNeurologicAlta: THYEdit
                Left = 6
                Top = 3
                Width = 164
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Diag. neur. alta'
                EtiSepara = 85
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 0
                AutoSelect = False
                DataSource = dsTract
                DataField = 'C_DiagnosticNeurologicAlta'
              end
              object Ed_Tract_N_DiagnosticNeurologicAlta: THYEdit
                Left = 174
                Top = 3
                Width = 326
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Literal Diag.Neuro.Alta'
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 1
                AutoSelect = False
                DataSource = dsTract
                DataField = 'N_DiagnosticNeurologicAlta'
              end
              object Ed_Tract_C_DiagnosticAlta: THYEdit
                Left = 6
                Top = 27
                Width = 164
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Diagn'#242'stic alta'
                EtiSepara = 85
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 2
                AutoSelect = False
                DataSource = dsTract
                DataField = 'C_DiagnosticAlta'
              end
              object Ed_Tract_N_DiagnosticAlta: THYEdit
                Left = 174
                Top = 27
                Width = 326
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Literal Diag.Principal Alta'
                EtiSepara = 100
                EtiOrienta = eoNoMostrar
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 3
                AutoSelect = False
                DataSource = dsTract
                DataField = 'N_DiagnosticAlta'
              end
              object Ed_Tract_G_DiagnosticAlta: THYEdit
                Left = 6
                Top = 51
                Width = 164
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'G_Diag alta'
                EtiSepara = 85
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 4
                AutoSelect = False
                DataSource = dsTract
                DataField = 'G_DiagnosticAlta'
              end
              object HYEdit2: THYEdit
                Left = 7
                Top = 75
                Width = 170
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Pes Mig CMG'
                EtiSepara = 85
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 5
                AutoSelect = False
                DataSource = dsTract
                DataField = 'PM'
              end
              object HYEdit3: THYEdit
                Left = 182
                Top = 74
                Width = 155
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Pes Mig DRG'
                EtiSepara = 70
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 6
                AutoSelect = False
                DataSource = dsTract
                DataField = 'PMDRG'
              end
              object Ed_Tract_ConfiancaDPA: THYEdit
                Left = 6
                Top = 97
                Width = 265
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Confian'#231'a diagn'#242'stic principal alta'
                EtiSepara = 180
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 7
                AutoSelect = False
                DataSource = dsTract
                DataField = 'ConfiancaDPA'
              end
              object Ed_Tract_ID_DPA: THYEdit
                Left = 6
                Top = 118
                Width = 435
                Height = 19
                Idioma = Castellano
                EtiFontColor = clWindowText
                Eti = 'Identificador WS DP alta'
                EtiSepara = 135
                EtiOrienta = eoIzquierda
                EtiAlign = taLeftJustify
                Diccionario = wDataBasics.Tractaments
                TabOrder = 8
                AutoSelect = False
                DataSource = dsTract
                DataField = 'ID_DPA'
              end
            end
          end
        end
      end
      object tabSheet11: TTabSheet
        Caption = 'Procediments i altres'
        ImageIndex = 10
        object Splitter6: TSplitter
          Left = 0
          Top = 191
          Width = 1122
          Height = 4
          Cursor = crVSplit
          Align = alBottom
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1122
          Height = 191
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object HYGrid7: THYGrid
            Left = 0
            Top = 25
            Width = 1122
            Height = 166
            Align = alClient
            Color = clWhite
            DataSource = dsProcediments
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
                FieldName = 'Tipus'
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ordre'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'N_Procediment'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_Metge'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Data'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Dispositiu'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VersioCIM_G'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'G_Procediment'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Codiicd_N_ICD'
                Title.Caption = 'Descripci'#243' Subcodi'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_Procediment'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VersioCIM'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Codiicd2_N_ICD'
                Title.Caption = 'Descripci'#243' Codi'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_Tractament'
                Title.Caption = 'Tractament'
                Width = 60
                Visible = True
              end>
          end
          object HYBarra9: THYBarra
            Left = 0
            Top = 0
            Width = 1122
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Caption = 'Procediments    '
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            DataSource = dsProcediments
            VerOrdenar = False
            VerSalir = False
            VerIndices = False
            Titulo = False
            VerPrint = False
            VerRefresh = True
          end
        end
        object HYArea4: THYArea
          Left = 0
          Top = 195
          Width = 1122
          Height = 387
          Align = alBottom
          Color = clWhite
          ParentColor = False
          TabOrder = 1
          DataSource = dsTract
          object Eti_Tract_NumCas_N_CodiTract: THYLabel
            Left = 326
            Top = 340
            Width = 189
            Height = 19
            DataField = 'NumCas_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_ProcesOrigen_N_CodiTract: THYLabel
            Left = 326
            Top = 318
            Width = 189
            Height = 19
            DataField = 'ProcesOrigen_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label5: TLabel
            Left = 62
            Top = 16
            Width = 31
            Height = 13
            Caption = 'C_ICD'
          end
          object Label6: TLabel
            Left = 453
            Top = 16
            Width = 32
            Height = 13
            Caption = 'G_ICD'
          end
          object Label7: TLabel
            Left = 142
            Top = 16
            Width = 28
            Height = 13
            Caption = 'Literal'
          end
          object Ed_Tract_C_Cas: THYEdit
            Left = 210
            Top = 340
            Width = 109
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. cas'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Cas'
          end
          object Ed_Tract_Complicacions: THYEdit
            Left = 18
            Top = 340
            Width = 165
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Complicacions'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 1
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Complicacions'
          end
          object Ed_Tract_C_ProcesOrigen: THYEdit
            Left = 210
            Top = 318
            Width = 109
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Proc'#233's origen'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 2
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_ProcesOrigen'
          end
          object Ed_Tract_Frankel: THYEdit
            Left = 18
            Top = 318
            Width = 139
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Graus Frankel'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 3
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Frankel'
          end
          object Ed_Tract_C_Codi_E: THYEdit
            Left = 10
            Top = 34
            Width = 124
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 4
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Codi_E'
          end
          object Ed_Tract_N_Codi_E: THYEdit
            Left = 140
            Top = 34
            Width = 305
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Literal E '
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 5
            AutoSelect = False
            DataSource = dsTract
            DataField = 'N_Codi_E'
          end
          object Ed_Tract_C_Codi_E2: THYEdit
            Left = 10
            Top = 56
            Width = 124
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E2'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 6
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Codi_E2'
          end
          object Ed_Tract_N_Codi_E2: THYEdit
            Left = 140
            Top = 56
            Width = 305
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Literal E2'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 7
            AutoSelect = False
            DataSource = dsTract
            DataField = 'N_Codi_E2'
          end
          object Ed_Tract_C_Codi_E3: THYEdit
            Left = 10
            Top = 78
            Width = 124
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E3'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 8
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Codi_E3'
          end
          object Ed_Tract_N_Codi_E3: THYEdit
            Left = 140
            Top = 78
            Width = 305
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Literal E3'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 9
            AutoSelect = False
            DataSource = dsTract
            DataField = 'N_Codi_E3'
          end
          object Ed_Tract_C_Codi_E4: THYEdit
            Left = 10
            Top = 100
            Width = 124
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E4'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 10
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Codi_E4'
          end
          object Ed_Tract_N_Codi_E4: THYEdit
            Left = 140
            Top = 100
            Width = 305
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Literal E4'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 11
            AutoSelect = False
            DataSource = dsTract
            DataField = 'N_Codi_E4'
          end
          object Ed_Tract_C_Codi_E5: THYEdit
            Left = 10
            Top = 122
            Width = 124
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E5'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 12
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Codi_E5'
          end
          object Ed_Tract_N_Codi_E5: THYEdit
            Left = 140
            Top = 122
            Width = 305
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Literal E5'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 13
            AutoSelect = False
            DataSource = dsTract
            DataField = 'N_Codi_E5'
          end
          object Ed_Tract_G_CODI_E: THYEdit
            Left = 451
            Top = 34
            Width = 75
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E metges'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 14
            AutoSelect = False
            DataSource = dsTract
            DataField = 'G_CODI_E'
          end
          object Ed_Tract_G_CODI_E2: THYEdit
            Left = 451
            Top = 56
            Width = 75
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E2 metges'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 15
            AutoSelect = False
            DataSource = dsTract
            DataField = 'G_CODI_E2'
          end
          object Ed_Tract_G_CODI_E3: THYEdit
            Left = 451
            Top = 78
            Width = 75
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E3 metges'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 16
            AutoSelect = False
            DataSource = dsTract
            DataField = 'G_CODI_E3'
          end
          object Ed_Tract_G_CODI_E4: THYEdit
            Left = 451
            Top = 100
            Width = 75
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E4 metges'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 17
            AutoSelect = False
            DataSource = dsTract
            DataField = 'G_CODI_E4'
          end
          object Ed_Tract_G_CODI_E5: THYEdit
            Left = 451
            Top = 122
            Width = 75
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E5 metges'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 18
            AutoSelect = False
            DataSource = dsTract
            DataField = 'G_CODI_E5'
          end
          object Ed_Fili_C_Codi_E: THYEdit
            Left = 10
            Top = 182
            Width = 124
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 19
            AutoSelect = False
            DataSource = dsFili
            DataField = 'C_Codi_E'
          end
          object Ed_Fili_N_Codi_E: THYEdit
            Left = 140
            Top = 182
            Width = 305
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 20
            AutoSelect = False
            DataSource = dsFili
            DataField = 'N_Codi_E'
          end
          object Ed_Fili_C_Codi_E2: THYEdit
            Left = 10
            Top = 202
            Width = 124
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E2'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 21
            AutoSelect = False
            DataSource = dsFili
            DataField = 'C_Codi_E2'
          end
          object Ed_Fili_N_Codi_E2: THYEdit
            Left = 140
            Top = 202
            Width = 305
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Codi E2'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Filiacio
            TabOrder = 22
            AutoSelect = False
            DataSource = dsFili
            DataField = 'N_Codi_E2'
          end
          object HYBarra10: THYBarra
            Left = 10
            Top = 152
            Width = 517
            Height = 24
            Align = alNone
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = 'Filiaci'#243'   '
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 23
            DataSource = dsFili
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
            VerRefresh = True
            object HYEdit8: THYEdit
              Left = 324
              Top = 3
              Width = 95
              Height = 19
              Idioma = Castellano
              EtiFontColor = clWindowText
              Eti = 'Versi'#243' CIM'
              EtiSepara = 65
              EtiOrienta = eoIzquierda
              EtiAlign = taLeftJustify
              Diccionario = wDataBasics.Filiacio
              TabOrder = 0
              AutoSelect = False
              DataSource = dsFili
              DataField = 'VersioCIM'
            end
          end
        end
      end
      object TabDeficits: TTabSheet
        Caption = 'D'#232'ficits'
        ImageIndex = 9
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 838
          Height = 601
          Align = alClient
          Caption = 'Panel6'
          TabOrder = 0
          object Splitter3: TSplitter
            Left = 377
            Top = 1
            Width = 4
            Height = 599
            Cursor = crHSplit
          end
          object Splitter2: TSplitter
            Left = 757
            Top = 1
            Width = 4
            Height = 599
            Cursor = crHSplit
          end
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 376
            Height = 599
            Align = alLeft
            BevelOuter = bvNone
            Ctl3D = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 0
            object HYGrid6: THYGrid
              Left = 0
              Top = 25
              Width = 376
              Height = 574
              Align = alClient
              Color = clWhite
              DataSource = dsDeficitsI
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
                  FieldName = 'Qualificacio'
                  Title.Caption = 'Qualif.'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_ICF'
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Codiicf_N_ICF'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Usuari'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Data'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qualifica_N_Codi'
                  Title.Caption = 'Qualificaci'#243
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tipus'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Tractament'
                  Width = 60
                  Visible = True
                end>
            end
            object HYBarra8: THYBarra
              Left = 0
              Top = 0
              Width = 376
              Height = 25
              Alignment = taRightJustify
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = 'D'#232'ficits a l'#39'ingr'#233's    '
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              DataSource = dsDeficitsI
              VerOrdenar = False
              VerSalir = False
              VerIndices = False
              Titulo = False
              VerPrint = False
              VerRefresh = True
            end
          end
          object Panel8: TPanel
            Left = 381
            Top = 1
            Width = 376
            Height = 599
            Align = alLeft
            BevelOuter = bvNone
            Ctl3D = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
            object HYGrid3: THYGrid
              Left = 0
              Top = 25
              Width = 376
              Height = 574
              Align = alClient
              Color = clWhite
              DataSource = dsDeficitsP
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
                  FieldName = 'Qualificacio'
                  Title.Caption = 'Qualif.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_ICF'
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Codiicf_N_ICF'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Usuari'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Data'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qualifica_N_Codi'
                  Title.Caption = 'Qualificaci'#243
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tipus'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Tractament'
                  Width = 60
                  Visible = True
                end>
            end
            object HYBarra5: THYBarra
              Left = 0
              Top = 0
              Width = 376
              Height = 25
              Alignment = taRightJustify
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = 'D'#232'ficits de proc'#233's    '
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              DataSource = dsDeficitsP
              VerOrdenar = False
              VerSalir = False
              VerIndices = False
              Titulo = False
              VerPrint = False
              VerRefresh = True
            end
          end
          object Panel10: TPanel
            Left = 761
            Top = 1
            Width = 76
            Height = 599
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 2
            object HYBarra6: THYBarra
              Left = 0
              Top = 0
              Width = 76
              Height = 25
              Alignment = taRightJustify
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = 'D'#232'ficits a l'#39'alta    '
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              DataSource = dsDeficitsA
              VerOrdenar = False
              VerSalir = False
              VerIndices = False
              Titulo = False
              VerPrint = False
              VerRefresh = True
            end
            object HYGrid4: THYGrid
              Left = 0
              Top = 25
              Width = 76
              Height = 574
              Align = alClient
              Color = clWhite
              DataSource = dsDeficitsA
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
                  FieldName = 'Qualificacio'
                  Title.Caption = 'Qualif.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_ICF'
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Codiicf_N_ICF'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Usuari'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Data'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qualifica_N_Codi'
                  Title.Caption = 'Qualificaci'#243
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tipus'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'C_Tractament'
                  Width = 60
                  Visible = True
                end>
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Informe alta / revisi'#243
        ImageIndex = 5
        object HYArea6: THYArea
          Left = 0
          Top = 0
          Width = 1187
          Height = 59
          Align = alTop
          Color = clWhite
          ParentColor = False
          TabOrder = 0
          DataSource = dsTract
          object Ed_Tract_EstatInformeAlta: THYEdit
            Left = 10
            Top = 10
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Estat informe alta'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTract
            DataField = 'EstatInformeAlta'
          end
          object Ed_Tract_C_Metge_InfAlta: THYEdit
            Left = 160
            Top = 10
            Width = 120
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Metge Informe'
            EtiSepara = 75
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 1
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Metge_InfAlta'
          end
          object Ed_Tract_hccc_informe_alta: THYEdit
            Left = 288
            Top = 10
            Width = 400
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hccc id informe alta'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 2
            AutoSelect = False
            DataSource = dsTract
            DataField = 'hccc_informe_alta'
          end
          object HYEdit1: THYEdit
            Left = 288
            Top = 30
            Width = 400
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hccc id inf.alta infer.'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 3
            AutoSelect = False
            DataSource = dsTract
            DataField = 'hccc_infalta_infer'
          end
        end
        object DBRichEdit1: TDBRichEdit
          Left = 0
          Top = 59
          Width = 1187
          Height = 595
          Align = alClient
          DataField = 'InformeAlta'
          DataSource = dsTract
          TabOrder = 1
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Comod'#237
        ImageIndex = 6
        object HYMemo3: THYMemo
          Left = 0
          Top = 0
          Width = 838
          Height = 601
          Align = alClient
          DataField = 'Comodin'
          DataSource = dsTract
          TabOrder = 0
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Facturacio'
        ImageIndex = 7
        object HYArea9: THYArea
          Left = 0
          Top = 0
          Width = 1122
          Height = 566
          Align = alClient
          Color = clWhite
          ParentColor = False
          TabOrder = 0
          DataSource = dsTract
          object Eti_Tract_Centre_N_CentreFac: THYLabel
            Left = 176
            Top = 16
            Width = 375
            Height = 19
            DataField = 'Centre_N_CentreFac'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Client_N_Client: THYLabel
            Left = 176
            Top = 40
            Width = 375
            Height = 19
            DataField = 'Client_N_Client'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Delegacio_N_Delegacio: THYLabel
            Left = 176
            Top = 92
            Width = 375
            Height = 19
            DataField = 'Delegacio_N_Delegacio'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Client_Es_Unespa: THYLabel
            Left = 174
            Top = 65
            Width = 107
            Height = 19
            DataField = 'Client_Es_Unespa'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'UNESPA'
            EtiSepara = 60
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Client_CodiUnespa: THYLabel
            Left = 304
            Top = 65
            Width = 211
            Height = 19
            DataField = 'Client_CodiUnespa'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Codi UNESPA'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
          end
          object Shape1: TShape
            Left = 15
            Top = 272
            Width = 354
            Height = 41
          end
          object Eti_Tract_TipHab_N_Codi: THYLabel
            Left = 134
            Top = 372
            Width = 400
            Height = 19
            DataField = 'TipHab_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Garant_COGNOM1: THYLabel
            Left = 446
            Top = 396
            Width = 263
            Height = 19
            DataField = 'Garant_COGNOM1'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Garant_COGNOM2: THYLabel
            Left = 446
            Top = 418
            Width = 263
            Height = 19
            DataField = 'Garant_COGNOM2'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Garant_NOM: THYLabel
            Left = 182
            Top = 396
            Width = 263
            Height = 19
            DataField = 'Garant_NOM'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_TSessio_N_Codi: THYLabel
            Left = 142
            Top = 484
            Width = 400
            Height = 19
            DataField = 'TSessio_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Facilitador_COGNOM1: THYLabel
            Left = 182
            Top = 535
            Width = 263
            Height = 19
            DataField = 'Facilitador_COGNOM1'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Facilitador_COGNOM2: THYLabel
            Left = 449
            Top = 535
            Width = 263
            Height = 19
            DataField = 'Facilitador_COGNOM2'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_Facilitador_NOM: THYLabel
            Left = 182
            Top = 512
            Width = 400
            Height = 19
            DataField = 'Facilitador_NOM'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_EstatFac_N_Codi: THYLabel
            Left = 158
            Top = 192
            Width = 219
            Height = 19
            DataField = 'EstatFac_N_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_Tract_EstatFac_R_Codi: THYLabel
            Left = 382
            Top = 192
            Width = 59
            Height = 19
            DataField = 'EstatFac_R_Codi'
            DataSource = dsTract
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Ed_Tract_C_CentreFac: THYEdit
            Left = 16
            Top = 16
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. Centre'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 0
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_CentreFac'
          end
          object Ed_Tract_C_Client: THYEdit
            Left = 16
            Top = 40
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. Client'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 1
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Client'
          end
          object Ed_Tract_C_Delegacio: THYEdit
            Left = 16
            Top = 92
            Width = 143
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. Delegaci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 2
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_Delegacio'
          end
          object Ed_Tract_CaducaPermis: THYEdit
            Left = 16
            Top = 120
            Width = 193
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Caduca perm'#237's'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 3
            AutoSelect = False
            DataSource = dsTract
            DataField = 'CaducaPermis'
          end
          object Ed_Tract_PercentatgePacient: THYEdit
            Left = 16
            Top = 144
            Width = 137
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = '% pacient'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 4
            AutoSelect = False
            DataSource = dsTract
            DataField = 'PercentatgePacient'
          end
          object Ed_Tract_Referencia: THYEdit
            Left = 16
            Top = 168
            Width = 425
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Refer'#232'ncia'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 5
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Referencia'
          end
          object Ed_Tract_C_EstatFac: THYEdit
            Left = 16
            Top = 192
            Width = 137
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Estat facturaci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 6
            AutoSelect = False
            DataSource = dsTract
            DataField = 'C_EstatFac'
          end
          object Ed_Tract_Data_Sinistre: THYEdit
            Left = 16
            Top = 219
            Width = 193
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data sinistre'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 7
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Data_Sinistre'
          end
          object Ed_Tract_Matricula_Vehicle: THYEdit
            Left = 16
            Top = 243
            Width = 400
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Matr'#237'cula vehicle'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 8
            AutoSelect = False
            DataSource = dsTract
            DataField = 'Matricula_Vehicle'
          end
          object Ed_Tract_SIFCO: THYEdit
            Left = 23
            Top = 286
            Width = 155
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'SIFCO'
            EtiSepara = 40
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 9
            AutoSelect = False
            DataSource = dsTract
            DataField = 'SIFCO'
          end
          object Ed_Tract_FISS: THYEdit
            Left = 199
            Top = 286
            Width = 155
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'FISS'
            EtiSepara = 40
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 10
            AutoSelect = False
            DataSource = dsTract
            DataField = 'FISS'
          end
          object Ed_Tract_BECA: THYEdit
            Left = 16
            Top = 329
            Width = 185
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Percentatge beca'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 11
            AutoSelect = False
            DataSource = dsTract
            DataField = 'BECA'
          end
          object Ed_Tract_T_HABITACIO: THYEdit
            Left = 8
            Top = 372
            Width = 121
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tipus d'#39'habitaci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 12
            AutoSelect = False
            DataSource = dsTract
            DataField = 'T_HABITACIO'
          end
          object Ed_Tract_ID_GARANT: THYEdit
            Left = 8
            Top = 396
            Width = 169
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Garant'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 13
            AutoSelect = False
            DataSource = dsTract
            DataField = 'ID_GARANT'
          end
          object Ed_Tract_PRESSUPOST: THYEdit
            Left = 8
            Top = 454
            Width = 400
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#186' de pressupost'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 14
            AutoSelect = False
            DataSource = dsTract
            DataField = 'PRESSUPOST'
          end
          object Ed_Tract_T_SESSIO: THYEdit
            Left = 8
            Top = 484
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tipus de sessi'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 15
            AutoSelect = False
            DataSource = dsTract
            DataField = 'T_SESSIO'
          end
          object Ed_Tract_ID_FACILITADOR: THYEdit
            Left = 8
            Top = 512
            Width = 169
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Facilitador'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataBasics.Tractaments
            TabOrder = 16
            AutoSelect = False
            DataSource = dsTract
            DataField = 'ID_FACILITADOR'
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Permisos Sortida'
        ImageIndex = 10
        object HYBarra13: THYBarra
          Left = 0
          Top = 0
          Width = 1122
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsPermisos
          VerEditar = False
          VerConsultar = False
          VerOrdenar = False
          VerSalir = False
          VerIndices = False
          Titulo = True
          VerPrint = False
          VerRefresh = True
        end
        object HYGrid10: THYGrid
          Left = 0
          Top = 25
          Width = 1122
          Height = 168
          Align = alTop
          Color = clWhite
          DataSource = dsPermisos
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
              FieldName = 'c_permis'
              Title.Caption = 'C. Perm'#237's'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipus'
              Title.Caption = 'C. Tipus'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tipus_N_Codi'
              Title.Caption = 'Tipus'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_Estat'
              Title.Caption = 'C. Estat'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'estat_N_Codi'
              Title.Caption = 'Estat'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Motiu'
              Width = 351
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Autoritzacio'
              Width = 339
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Permanent'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ausencia'
              Title.Caption = 'Abs'#232'ncia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_permis'
              Title.Caption = 'Data sortida'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hora_permis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Horaentrada'
              Title.Caption = 'Hora tornada'
              Visible = True
            end>
        end
        object Panel20: TPanel
          Left = 0
          Top = 193
          Width = 1122
          Height = 373
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object HYBarra14: THYBarra
            Left = 0
            Top = 0
            Width = 1122
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsPermisosLog
            VerEditar = False
            VerConsultar = False
            VerOrdenar = False
            VerSalir = False
            VerIndices = False
            Titulo = True
            VerPrint = False
            VerRefresh = True
          end
          object HYGrid11: THYGrid
            Left = 0
            Top = 25
            Width = 1122
            Height = 348
            Align = alClient
            Color = clWhite
            DataSource = dsPermisosLog
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
                FieldName = 'c_log'
                Title.Caption = 'ID Log'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_Permis'
                Title.Caption = 'C. Perm'#237's'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'c_accio'
                Title.Caption = 'C. Acci'#243
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'accio_N_Codi'
                Title.Caption = 'Acci'#243
                Width = 234
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'c_usuari'
                Title.Caption = 'C. Usuari'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'usuari_Metge'
                Title.Caption = 'Usuari'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'data'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'hora'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Observacions'
                Width = 856
                Visible = True
              end>
          end
        end
      end
    end
  end
  object Panel14: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 846
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 5
    Color = 16772294
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 5
      Top = 289
      Width = 303
      Height = 552
      Align = alClient
      DataSource = dsBusca
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentColor = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'C_HISTORIA'
          Title.Caption = 'Hist'#242'ria'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C_PRESTACIO'
          Title.Caption = 'Prestaci'#243
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_INGRES'
          Title.Caption = 'Data ingr'#233's'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C_COORDINADOR'
          Title.Caption = 'Coord.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMCOMPLET'
          Title.Caption = 'Nom complet'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C_TRACTAMENT'
          Title.Caption = 'Tractament'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C_PROCES'
          Title.Caption = 'Proc'#233's'
          Width = 53
          Visible = True
        end>
    end
    object PageControl2: TPageControl
      Left = 5
      Top = 5
      Width = 303
      Height = 284
      ActivePage = TabSheet9
      Align = alTop
      TabIndex = 0
      TabOrder = 1
      object TabSheet9: TTabSheet
        Caption = 'Filtres Autom'#224'tics'
        object fHistoria: THYEditFiltro
          Left = 0
          Top = 54
          Width = 295
          Height = 27
          Diccionario = wDataBasics.Filiacio
          DiccionarioCampo = 'NUM_HIST'
          Campo = 'T.C_Historia'
          Tipo = tiNumero
          Condicion = tiIgual
          EtiSepara = 80
          CondiFija = False
          Caption = 'N'#250'm. hist.'
          ParentColor = True
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
        end
        object fNom: THYEditFiltro
          Left = 0
          Top = 81
          Width = 295
          Height = 27
          Diccionario = wDataBasics.Filiacio
          DiccionarioCampo = 'NOMCOMPLET'
          Campo = 'F.NomComplet'
          Tipo = tiCaracter
          Condicion = tiContiene
          EtiSepara = 80
          CondiFija = False
          Caption = 'Nom complet'
          ParentColor = True
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
        end
        object Panel15: TPanel
          Left = 0
          Top = 221
          Width = 295
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 5
          ParentColor = True
          TabOrder = 2
          object DBNavigator1: TDBNavigator
            Left = 184
            Top = 5
            Width = 106
            Height = 25
            DataSource = dsBusca
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alRight
            Flat = True
            TabOrder = 0
          end
          object bAplicaFiltre: TButton
            Left = 0
            Top = 5
            Width = 80
            Height = 25
            Caption = '&Aplica filtres'
            TabOrder = 1
            OnClick = bAplicaFiltreClick
          end
          object bNetejaFiltre: TButton
            Left = 88
            Top = 5
            Width = 80
            Height = 25
            Caption = '&Neteja filtres'
            TabOrder = 2
            OnClick = bNetejaFiltreClick
          end
        end
        object fTractament: THYEditFiltro
          Left = 0
          Top = 0
          Width = 295
          Height = 27
          Diccionario = wDataBasics.Tractaments
          DiccionarioCampo = 'C_TRACTAMENT'
          Campo = 'T.C_Tractament'
          Tipo = tiNumero
          Condicion = tiIgual
          EtiSepara = 80
          CondiFija = False
          Caption = 'Tractament'
          ParentColor = True
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
        end
        object fDataIngres: THYEditFiltro
          Left = 0
          Top = 135
          Width = 295
          Height = 27
          Campo = 'T.Data_Ingres'
          Tipo = tiFecha
          Condicion = tiMayor
          EtiSepara = 80
          CondiFija = False
          Caption = 'Data ingr'#233's'
          ParentColor = True
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
        end
        object fPrestacio: THYEditFiltro
          Left = 0
          Top = 108
          Width = 295
          Height = 27
          Diccionario = wDataBasics.Prestacion
          DiccionarioCampo = 'C_PRESTACIO'
          Campo = 'T.C_Prestacio'
          Tipo = tiCaracter
          Condicion = tiIgual
          EtiSepara = 80
          CondiFija = False
          Caption = 'Prestaci'#243
          ParentColor = True
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
        end
        object fDataAlta: THYEditFiltro
          Left = 0
          Top = 162
          Width = 295
          Height = 27
          Campo = 'T.Data_Alta'
          Tipo = tiFecha
          Condicion = tiMayor
          EtiSepara = 80
          CondiFija = False
          Caption = 'Data alta'
          ParentColor = True
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 6
        end
        object fCoordinador: THYEditFiltro
          Left = 0
          Top = 189
          Width = 295
          Height = 27
          Diccionario = wDataBasics.Metges
          DiccionarioCampo = 'CODI'
          Campo = 'T.C_Coordinador'
          Tipo = tiCaracter
          Condicion = tiIgual
          EtiSepara = 80
          CondiFija = False
          Caption = 'Usuari'
          ParentColor = True
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 7
        end
        object fProces: THYEditFiltro
          Left = 0
          Top = 27
          Width = 295
          Height = 27
          Diccionario = wDataBasics.Tractaments
          DiccionarioCampo = 'C_PROCES'
          Campo = 'T.C_Proces'
          Tipo = tiNumero
          Condicion = tiIgual
          EtiSepara = 80
          CondiFija = False
          Caption = 'Proc'#233's'
          ParentColor = True
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 8
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Custom SQL'
        ImageIndex = 1
        object Memo: TMemo
          Left = 0
          Top = 0
          Width = 295
          Height = 221
          Align = alClient
          Lines.Strings = (
            'select T.C_TRACTAMENT, T.C_PROCES, '
            'T.C_HISTORIA, F.NOMCOMPLET, T.C_PRESTACIO, '
            'T.DATA_INGRES, T.C_COORDINADOR'
            'from TRACTAMENTS T'
            'join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
            'order by T.C_HISTORIA, T.DATA_INGRES'
            '')
          TabOrder = 0
        end
        object Panel16: TPanel
          Left = 0
          Top = 221
          Width = 295
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 5
          ParentColor = True
          TabOrder = 1
          object DBNavigator2: TDBNavigator
            Left = 185
            Top = 5
            Width = 105
            Height = 25
            DataSource = dsBusca
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alRight
            Flat = True
            TabOrder = 0
          end
          object bAplicaSQL: TButton
            Left = 0
            Top = 5
            Width = 97
            Height = 25
            Caption = '&Aplica SQL'
            TabOrder = 1
            OnClick = bAplicaSQLClick
          end
        end
      end
    end
  end
  object dsTract: TDataSource
    DataSet = Tract
    Left = 264
    Top = 315
  end
  object DiagI: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCurs.Diagnostics
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'tipus = "I"')
    Padre = dsTract
    Left = 28
    Top = 376
    object DiagI_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
    end
    object DiagI_Tipus: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tipus'
      Size = 1
    end
    object DiagI_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Ordre'
    end
    object DiagI_C_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 15
      FieldName = 'C_Diagnostic'
      Size = 15
    end
    object DiagI_N_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldName = 'N_Diagnostic'
      Size = 40
    end
    object DiagI_C_Metge: TStringField
      Tag = 100
      DisplayLabel = 'Metge'
      DisplayWidth = 5
      FieldName = 'C_Metge'
      Size = 5
    end
    object DiagI_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"/"mm"/"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object DiagI_G_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'SubCodi'
      DisplayWidth = 15
      FieldName = 'G_Diagnostic'
      Size = 15
    end
    object DiagI_Classe: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Classe'
      Size = 1
    end
    object DiagI_POA: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'POA'
      Size = 1
    end
    object DiagI_OrdreCMB: TSmallintField
      Tag = 100
      DisplayLabel = 'Ordre CMB'
      DisplayWidth = 2
      FieldName = 'OrdreCMB'
    end
    object DiagI_ClasseCMB: TStringField
      Tag = 100
      DisplayLabel = 'Classe CMB'
      DisplayWidth = 1
      FieldName = 'ClasseCMB'
      Size = 1
    end
    object DiagI_POACMB: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'POACMB'
      Size = 1
    end
    object DiagI_VersioCIM: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldName = 'VersioCIM'
      DisplayFormat = '#,##0;; '
    end
    object DiagI_VersioCIM_G: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM SubCodi'
      DisplayWidth = 8
      FieldName = 'VersioCIM_G'
      DisplayFormat = '#,##0;; '
    end
    object DiagI_CONFIANCA: TFloatField
      Tag = 100
      DisplayLabel = 'Confian'#231'a diagn'#242'stic'
      DisplayWidth = 10
      FieldName = 'CONFIANCA'
    end
    object DiagI_ID_DIAGNOSTIC: TStringField
      Tag = 100
      DisplayLabel = 'Identificador WS'
      DisplayWidth = 100
      FieldName = 'ID_DIAGNOSTIC'
      Size = 100
    end
    object DiagI_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagI_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Codiicd_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'Codiicd'
      Size = 255
      Calculated = True
    end
    object DiagI_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagI_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagI_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagI_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'Codiicd_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'Codiicd'
      Size = 90
      Calculated = True
    end
    object DiagI_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Codiicd_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'Codiicd'
      Size = 24
      Calculated = True
    end
    object DiagI_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codiicd_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'Codiicd'
      Size = 40
      Calculated = True
    end
    object DiagI_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagI_C0_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagI_C0_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'Codiicd'
      Calculated = True
    end
    object DiagI_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagI_C0_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagI_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagI_C0_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagI_C0_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagI_C0_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Codiicd_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'Codiicd'
      Size = 50
      Calculated = True
    end
    object DiagI_C0_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Codiicd_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'Codiicd'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object DiagI_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagI_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'Codiicd2'
      Size = 255
      Calculated = True
    end
    object DiagI_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagI_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagI_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagI_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'Codiicd2'
      Size = 90
      Calculated = True
    end
    object DiagI_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'Codiicd2'
      Size = 24
      Calculated = True
    end
    object DiagI_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'Codiicd2'
      Size = 40
      Calculated = True
    end
    object DiagI_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagI_C1_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagI_C1_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'Codiicd2'
      Calculated = True
    end
    object DiagI_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagI_C1_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagI_C1_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagI_C1_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagI_C1_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagI_C1_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'Codiicd2'
      Size = 50
      Calculated = True
    end
    object DiagI_C1_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'Codiicd2'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object DiagI_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'classes_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'classes'
      Size = 1
      Calculated = True
    end
    object DiagI_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'classes_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'classes'
      Size = 60
      Calculated = True
    end
    object DiagI_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'classes2_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'classes2'
      Size = 1
      Calculated = True
    end
    object DiagI_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'classes2_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'classes2'
      Size = 60
      Calculated = True
    end
    object DiagI_C4_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'poa_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'poa'
      Size = 1
      Calculated = True
    end
    object DiagI_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'poa_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'poa'
      Size = 60
      Calculated = True
    end
    object DiagI_C5_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'poa2_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'poa2'
      Size = 1
      Calculated = True
    end
    object DiagI_C5_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'poa2_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'poa2'
      Size = 60
      Calculated = True
    end
  end
  object dsDiagI: TDataSource
    DataSet = DiagI
    Left = 76
    Top = 376
  end
  object DiagA: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCurs.Diagnostics
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'tipus = "A"')
    Padre = dsTract
    Left = 28
    Top = 480
    object DiagA_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
    end
    object DiagA_Tipus: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tipus'
      Size = 1
    end
    object DiagA_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Ordre'
    end
    object DiagA_C_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 15
      FieldName = 'C_Diagnostic'
      Size = 15
    end
    object DiagA_N_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldName = 'N_Diagnostic'
      Size = 40
    end
    object DiagA_C_Metge: TStringField
      Tag = 100
      DisplayLabel = 'Metge'
      DisplayWidth = 5
      FieldName = 'C_Metge'
      Size = 5
    end
    object DiagA_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"/"mm"/"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object DiagA_G_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'SubCodi'
      DisplayWidth = 15
      FieldName = 'G_Diagnostic'
      Size = 15
    end
    object DiagA_Classe: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Classe'
      Size = 1
    end
    object DiagA_OrdreCMB: TSmallintField
      Tag = 100
      DisplayLabel = 'Ordre CMB'
      DisplayWidth = 2
      FieldName = 'OrdreCMB'
    end
    object DiagA_ClasseCMB: TStringField
      Tag = 100
      DisplayLabel = 'Classe CMB'
      DisplayWidth = 1
      FieldName = 'ClasseCMB'
      Size = 1
    end
    object DiagA_POA: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'POA'
      Size = 1
    end
    object DiagA_POACMB: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'POACMB'
      Size = 1
    end
    object DiagA_VersioCIM: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldName = 'VersioCIM'
      DisplayFormat = '#,##0;; '
    end
    object DiagA_VersioCIM_G: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM SubCodi'
      DisplayWidth = 8
      FieldName = 'VersioCIM_G'
      DisplayFormat = '#,##0;; '
    end
    object DiagA_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagA_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Codiicd_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'Codiicd'
      Size = 255
      Calculated = True
    end
    object DiagA_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagA_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagA_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagA_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'Codiicd_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'Codiicd'
      Size = 90
      Calculated = True
    end
    object DiagA_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Codiicd_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'Codiicd'
      Size = 24
      Calculated = True
    end
    object DiagA_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codiicd_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'Codiicd'
      Size = 40
      Calculated = True
    end
    object DiagA_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagA_C0_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagA_C0_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'Codiicd'
      Calculated = True
    end
    object DiagA_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagA_C0_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagA_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagA_C0_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagA_C0_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagA_C0_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Codiicd_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'Codiicd'
      Size = 50
      Calculated = True
    end
    object DiagA_C0_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Codiicd_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'Codiicd'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object DiagA_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagA_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'Codiicd2'
      Size = 255
      Calculated = True
    end
    object DiagA_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagA_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagA_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagA_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'Codiicd2'
      Size = 90
      Calculated = True
    end
    object DiagA_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'Codiicd2'
      Size = 24
      Calculated = True
    end
    object DiagA_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'Codiicd2'
      Size = 40
      Calculated = True
    end
    object DiagA_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagA_C1_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagA_C1_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'Codiicd2'
      Calculated = True
    end
    object DiagA_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagA_C1_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagA_C1_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagA_C1_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagA_C1_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagA_C1_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'Codiicd2'
      Size = 50
      Calculated = True
    end
    object DiagA_C1_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'Codiicd2'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object DiagA_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'classes_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'classes'
      Size = 1
      Calculated = True
    end
    object DiagA_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'classes_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'classes'
      Size = 60
      Calculated = True
    end
    object DiagA_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'classes2_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'classes2'
      Size = 1
      Calculated = True
    end
    object DiagA_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'classes2_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'classes2'
      Size = 60
      Calculated = True
    end
    object DiagA_C4_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'poa_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'poa'
      Size = 1
      Calculated = True
    end
    object DiagA_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'poa_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'poa'
      Size = 60
      Calculated = True
    end
    object DiagA_C5_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'poa2_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'poa2'
      Size = 1
      Calculated = True
    end
    object DiagA_C5_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'poa2_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'poa2'
      Size = 60
      Calculated = True
    end
  end
  object dsDiagA: TDataSource
    DataSet = DiagA
    Left = 76
    Top = 480
  end
  object DeficitsI: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCurs.Deficits
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'tipus = "I"')
    Padre = dsTract
    Left = 145
    Top = 376
    object DeficitsI_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
    end
    object DeficitsI_Tipus: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tipus'
      Size = 1
    end
    object DeficitsI_C_ICF: TStringField
      Tag = 100
      DisplayLabel = 'Codi ICF'
      DisplayWidth = 4
      FieldName = 'C_ICF'
      Size = 4
    end
    object DeficitsI_Qualificacio: TSmallintField
      Tag = 100
      DisplayLabel = 'Qualificaci'#243
      DisplayWidth = 1
      FieldName = 'Qualificacio'
    end
    object DeficitsI_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object DeficitsI_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"/"mm"/"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object DeficitsI_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi ICF'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Codiicf_C_ICF'
      LookupKeyFields = 'C_ICF'
      KeyFields = 'Codiicf'
      Size = 4
      Calculated = True
    end
    object DeficitsI_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' ICF'
      DisplayWidth = 120
      FieldKind = fkCalculated
      FieldName = 'Codiicf_N_ICF'
      LookupKeyFields = 'N_ICF'
      KeyFields = 'Codiicf'
      Size = 120
      Calculated = True
    end
    object DeficitsI_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Grup ICF'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicf_Grup_ICF'
      LookupKeyFields = 'Grup_ICF'
      KeyFields = 'Codiicf'
      Size = 1
      Calculated = True
    end
    object DeficitsI_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicf_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicf'
      Size = 1
      Calculated = True
    end
    object DeficitsI_C0_4: TStringField
      Tag = 101
      DisplayLabel = #201's b'#224'sic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicf_ICF_Basic'
      LookupKeyFields = 'ICF_Basic'
      KeyFields = 'Codiicf'
      Size = 1
      Calculated = True
    end
    object DeficitsI_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Grup d'#39'usuaris'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Codiicf_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Codiicf'
      Size = 2
      Calculated = True
    end
    object DeficitsI_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'qualifica_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'qualifica'
      Calculated = True
    end
    object DeficitsI_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'qualifica_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'qualifica'
      Size = 40
      Calculated = True
    end
    object DeficitsI_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'qualifica_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'qualifica'
      Calculated = True
    end
    object DeficitsI_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'qualifica_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'qualifica'
      Size = 40
      Calculated = True
    end
    object DeficitsI_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'qualifica_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'qualifica'
      Size = 10
      Calculated = True
    end
  end
  object DeficitsA: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCurs.Deficits
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'tipus = "A"')
    Padre = dsTract
    Left = 145
    Top = 480
    object DeficitsA_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
    end
    object DeficitsA_Tipus: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tipus'
      Size = 1
    end
    object DeficitsA_C_ICF: TStringField
      Tag = 100
      DisplayLabel = 'Codi ICF'
      DisplayWidth = 4
      FieldName = 'C_ICF'
      Size = 4
    end
    object DeficitsA_Qualificacio: TSmallintField
      Tag = 100
      DisplayLabel = 'Qualificaci'#243
      DisplayWidth = 1
      FieldName = 'Qualificacio'
    end
    object DeficitsA_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object DeficitsA_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"/"mm"/"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object DeficitsA_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi ICF'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Codiicf_C_ICF'
      LookupKeyFields = 'C_ICF'
      KeyFields = 'Codiicf'
      Size = 4
      Calculated = True
    end
    object DeficitsA_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' ICF'
      DisplayWidth = 120
      FieldKind = fkCalculated
      FieldName = 'Codiicf_N_ICF'
      LookupKeyFields = 'N_ICF'
      KeyFields = 'Codiicf'
      Size = 120
      Calculated = True
    end
    object DeficitsA_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Grup ICF'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicf_Grup_ICF'
      LookupKeyFields = 'Grup_ICF'
      KeyFields = 'Codiicf'
      Size = 1
      Calculated = True
    end
    object DeficitsA_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicf_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicf'
      Size = 1
      Calculated = True
    end
    object DeficitsA_C0_4: TStringField
      Tag = 101
      DisplayLabel = #201's b'#224'sic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicf_ICF_Basic'
      LookupKeyFields = 'ICF_Basic'
      KeyFields = 'Codiicf'
      Size = 1
      Calculated = True
    end
    object DeficitsA_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Grup d'#39'usuaris'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Codiicf_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Codiicf'
      Size = 2
      Calculated = True
    end
    object DeficitsA_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'qualifica_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'qualifica'
      Calculated = True
    end
    object DeficitsA_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'qualifica_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'qualifica'
      Size = 40
      Calculated = True
    end
    object DeficitsA_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'qualifica_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'qualifica'
      Calculated = True
    end
    object DeficitsA_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'qualifica_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'qualifica'
      Size = 40
      Calculated = True
    end
    object DeficitsA_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'qualifica_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'qualifica'
      Size = 10
      Calculated = True
    end
  end
  object dsDeficitsI: TDataSource
    DataSet = DeficitsI
    Left = 206
    Top = 376
  end
  object dsDeficitsA: TDataSource
    DataSet = DeficitsA
    Left = 206
    Top = 480
  end
  object dsDeficitsP: TDataSource
    DataSet = DeficitsP
    Left = 206
    Top = 428
  end
  object DeficitsP: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCurs.Deficits
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'tipus = "P"')
    Padre = dsTract
    Left = 145
    Top = 428
    object DeficitsP_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
    end
    object DeficitsP_Tipus: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tipus'
      Size = 1
    end
    object DeficitsP_C_ICF: TStringField
      Tag = 100
      DisplayLabel = 'Codi ICF'
      DisplayWidth = 4
      FieldName = 'C_ICF'
      Size = 4
    end
    object DeficitsP_Qualificacio: TSmallintField
      Tag = 100
      DisplayLabel = 'Qualificaci'#243
      DisplayWidth = 1
      FieldName = 'Qualificacio'
    end
    object DeficitsP_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object DeficitsP_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"/"mm"/"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object DeficitsP_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi ICF'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Codiicf_C_ICF'
      LookupKeyFields = 'C_ICF'
      KeyFields = 'Codiicf'
      Size = 4
      Calculated = True
    end
    object DeficitsP_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' ICF'
      DisplayWidth = 120
      FieldKind = fkCalculated
      FieldName = 'Codiicf_N_ICF'
      LookupKeyFields = 'N_ICF'
      KeyFields = 'Codiicf'
      Size = 120
      Calculated = True
    end
    object DeficitsP_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Grup ICF'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicf_Grup_ICF'
      LookupKeyFields = 'Grup_ICF'
      KeyFields = 'Codiicf'
      Size = 1
      Calculated = True
    end
    object DeficitsP_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicf_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicf'
      Size = 1
      Calculated = True
    end
    object DeficitsP_C0_4: TStringField
      Tag = 101
      DisplayLabel = #201's b'#224'sic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicf_ICF_Basic'
      LookupKeyFields = 'ICF_Basic'
      KeyFields = 'Codiicf'
      Size = 1
      Calculated = True
    end
    object DeficitsP_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Grup d'#39'usuaris'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Codiicf_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'Codiicf'
      Size = 2
      Calculated = True
    end
    object DeficitsP_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'qualifica_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'qualifica'
      Calculated = True
    end
    object DeficitsP_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'qualifica_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'qualifica'
      Size = 40
      Calculated = True
    end
    object DeficitsP_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'qualifica_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'qualifica'
      Calculated = True
    end
    object DeficitsP_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'qualifica_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'qualifica'
      Size = 40
      Calculated = True
    end
    object DeficitsP_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'qualifica_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'qualifica'
      Size = 10
      Calculated = True
    end
  end
  object dsDiagP: TDataSource
    DataSet = DiagP
    Left = 76
    Top = 428
  end
  object DiagP: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCurs.Diagnostics
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'tipus = "P"')
    Padre = dsTract
    Left = 28
    Top = 428
    object DiagP_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
    end
    object DiagP_Tipus: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tipus'
      Size = 1
    end
    object DiagP_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Ordre'
    end
    object DiagP_C_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 15
      FieldName = 'C_Diagnostic'
      Size = 15
    end
    object DiagP_N_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldName = 'N_Diagnostic'
      Size = 40
    end
    object DiagP_C_Metge: TStringField
      Tag = 100
      DisplayLabel = 'Metge'
      DisplayWidth = 5
      FieldName = 'C_Metge'
      Size = 5
    end
    object DiagP_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"/"mm"/"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object DiagP_G_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'SubCodi'
      DisplayWidth = 15
      FieldName = 'G_Diagnostic'
      Size = 15
    end
    object DiagP_Classe: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Classe'
      Size = 1
    end
    object DiagP_OrdreCMB: TSmallintField
      Tag = 100
      DisplayLabel = 'Ordre CMB'
      DisplayWidth = 2
      FieldName = 'OrdreCMB'
    end
    object DiagP_ClasseCMB: TStringField
      Tag = 100
      DisplayLabel = 'Classe CMB'
      DisplayWidth = 1
      FieldName = 'ClasseCMB'
      Size = 1
    end
    object DiagP_POA: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'POA'
      Size = 1
    end
    object DiagP_POACMB: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'POACMB'
      Size = 1
    end
    object DiagP_VersioCIM: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldName = 'VersioCIM'
      DisplayFormat = '#,##0;; '
    end
    object DiagP_VersioCIM_G: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM SubCodi'
      DisplayWidth = 8
      FieldName = 'VersioCIM_G'
      DisplayFormat = '#,##0;; '
    end
    object DiagP_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagP_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Codiicd_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'Codiicd'
      Size = 255
      Calculated = True
    end
    object DiagP_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagP_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagP_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagP_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'Codiicd_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'Codiicd'
      Size = 90
      Calculated = True
    end
    object DiagP_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Codiicd_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'Codiicd'
      Size = 24
      Calculated = True
    end
    object DiagP_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codiicd_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'Codiicd'
      Size = 40
      Calculated = True
    end
    object DiagP_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagP_C0_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagP_C0_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'Codiicd'
      Calculated = True
    end
    object DiagP_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagP_C0_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagP_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object DiagP_C0_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagP_C0_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object DiagP_C0_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Codiicd_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'Codiicd'
      Size = 50
      Calculated = True
    end
    object DiagP_C0_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Codiicd_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'Codiicd'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object DiagP_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagP_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'Codiicd2'
      Size = 255
      Calculated = True
    end
    object DiagP_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagP_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagP_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagP_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'Codiicd2'
      Size = 90
      Calculated = True
    end
    object DiagP_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'Codiicd2'
      Size = 24
      Calculated = True
    end
    object DiagP_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'Codiicd2'
      Size = 40
      Calculated = True
    end
    object DiagP_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagP_C1_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagP_C1_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'Codiicd2'
      Calculated = True
    end
    object DiagP_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagP_C1_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagP_C1_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object DiagP_C1_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagP_C1_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object DiagP_C1_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'Codiicd2'
      Size = 50
      Calculated = True
    end
    object DiagP_C1_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'Codiicd2'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object DiagP_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'classes_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'classes'
      Size = 1
      Calculated = True
    end
    object DiagP_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'classes_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'classes'
      Size = 60
      Calculated = True
    end
    object DiagP_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'classes2_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'classes2'
      Size = 1
      Calculated = True
    end
    object DiagP_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'classes2_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'classes2'
      Size = 60
      Calculated = True
    end
    object DiagP_C4_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'poa_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'poa'
      Size = 1
      Calculated = True
    end
    object DiagP_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'poa_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'poa'
      Size = 60
      Calculated = True
    end
    object DiagP_C5_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'poa2_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'poa2'
      Size = 1
      Calculated = True
    end
    object DiagP_C5_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'poa2_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'poa2'
      Size = 60
      Calculated = True
    end
  end
  object Busca: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select T.C_TRACTAMENT, T.C_PROCES, T.C_HISTORIA, F.NOMCOMPLET, T' +
        '.C_PRESTACIO, T.DATA_INGRES, T.C_COORDINADOR'
      'from TRACTAMENTS T'
      'join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      'order by T.C_HISTORIA, T.DATA_INGRES')
    Left = 28
    Top = 315
  end
  object dsBusca: TDataSource
    DataSet = Busca
    Left = 68
    Top = 315
  end
  object Tract: THYSqlBrowse
    AfterScroll = TractAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsBusca
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TRACTAMENTS'
      'WHERE C_TRACTAMENT = :c_tractament'#13#10
      'ORDER BY TRACTAMENTS.'#39'C_Tractament'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Tractaments
    IndiceActivo = 'Tractament'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'C_TRACTAMENT = :c_tractament')
    Left = 216
    Top = 315
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptUnknown
        Size = 4
      end>
    object Tract_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
      DisplayFormat = '#,###;; '
    end
    object Tract_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldName = 'C_Historia'
    end
    object Tract_C_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldName = 'C_Prestacio'
      Size = 4
    end
    object Tract_C_PrestacioOrigen: TStringField
      Tag = 100
      DisplayLabel = 'Prestaci'#243' Origen'
      DisplayWidth = 4
      FieldName = 'C_PrestacioOrigen'
      Size = 4
    end
    object Tract_Data_Ingres: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Ingr'#233's'
      DisplayWidth = 11
      FieldName = 'Data_Ingres'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tract_Hora: TStringField
      Tag = 100
      DisplayWidth = 5
      FieldName = 'Hora'
      EditMask = '!99:99;1; '
      Size = 5
    end
    object Tract_C_Coordinador: TStringField
      Tag = 100
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldName = 'C_Coordinador'
      Size = 5
    end
    object Tract_Data_PreAlta: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data PreAlta'
      DisplayWidth = 11
      FieldName = 'Data_PreAlta'
      DisplayFormat = 'dd"/"mm"/"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tract_C_MetgePreAlta: TStringField
      Tag = 100
      DisplayLabel = 'Metge PreAlta'
      DisplayWidth = 5
      FieldName = 'C_MetgePreAlta'
      Size = 5
    end
    object Tract_Data_Alta: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Alta'
      DisplayWidth = 11
      FieldName = 'Data_Alta'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tract_C_MetgeAlta: TStringField
      Tag = 100
      DisplayLabel = 'Metge Alta'
      DisplayWidth = 5
      FieldName = 'C_MetgeAlta'
      Size = 5
    end
    object Tract_Durada: TFloatField
      Tag = 100
      DisplayWidth = 4
      FieldName = 'Durada'
      ReadOnly = True
    end
    object Tract_Comentari: TMemoField
      Tag = 100
      DisplayLabel = 'Comentari Admisions'
      DisplayWidth = 1
      FieldName = 'Comentari'
      BlobType = ftMemo
      Size = 1
    end
    object Tract_C_Motiu: TSmallintField
      Tag = 100
      DisplayLabel = 'Motiu'
      DisplayWidth = 3
      FieldName = 'C_Motiu'
    end
    object Tract_C_Origen: TSmallintField
      Tag = 100
      DisplayLabel = 'Procedencia/Origen'
      DisplayWidth = 3
      FieldName = 'C_Origen'
    end
    object Tract_C_HospitalOrigen: TSmallintField
      Tag = 100
      DisplayLabel = 'Hospital'
      DisplayWidth = 3
      FieldName = 'C_HospitalOrigen'
    end
    object Tract_C_Caracter: TSmallintField
      Tag = 100
      DisplayLabel = 'Car'#224'cter'
      DisplayWidth = 3
      FieldName = 'C_Caracter'
    end
    object Tract_C_Solicitud: TSmallintField
      Tag = 100
      DisplayLabel = 'Solicitud / Causa'
      DisplayWidth = 3
      FieldName = 'C_Solicitud'
    end
    object Tract_C_Destinacio: TSmallintField
      Tag = 100
      DisplayLabel = 'Destinacio'
      DisplayWidth = 3
      FieldName = 'C_Destinacio'
    end
    object Tract_C_HospitalDesti: TSmallintField
      Tag = 100
      DisplayLabel = 'Hospital Desti'
      DisplayWidth = 3
      FieldName = 'C_HospitalDesti'
    end
    object Tract_InformeAlta: TMemoField
      Tag = 100
      DisplayLabel = 'Informe Alta'
      DisplayWidth = 1
      FieldName = 'InformeAlta'
      BlobType = ftMemo
      Size = 1
    end
    object Tract_EstatInformeAlta: TIntegerField
      Tag = 100
      DisplayLabel = 'Estat informe alta'
      DisplayWidth = 3
      FieldName = 'EstatInformeAlta'
      DisplayFormat = '#,##0;; '
    end
    object Tract_ComentariMetge: TStringField
      Tag = 100
      DisplayLabel = 'Comentari Mege'
      DisplayWidth = 80
      FieldName = 'ComentariMetge'
      Size = 80
    end
    object Tract_ComentariInfermeria: TStringField
      Tag = 100
      DisplayLabel = 'Comentari Infermeria'
      DisplayWidth = 80
      FieldName = 'ComentariInfermeria'
      Size = 80
    end
    object Tract_c_Residencia: TStringField
      Tag = 100
      DisplayLabel = 'Residencia'
      DisplayWidth = 10
      FieldName = 'C_Residencia'
      Size = 10
    end
    object Tract_Entrada: TIntegerField
      Tag = 100
      DisplayLabel = 'Codificaci'#243' Entrada'
      DisplayWidth = 6
      FieldName = 'Entrada'
    end
    object Tract_Sortida: TIntegerField
      Tag = 100
      DisplayLabel = 'Codificaci'#243' Sortida'
      DisplayWidth = 6
      FieldName = 'Sortida'
    end
    object Tract_C_Frequencia: TStringField
      Tag = 100
      DisplayLabel = 'Freq'#252#232'ncia'
      DisplayWidth = 7
      FieldName = 'C_Frequencia'
      Size = 7
    end
    object Tract_C_FisioTerapeuta: TStringField
      Tag = 100
      DisplayLabel = 'FisioTerapeuta'
      DisplayWidth = 5
      FieldName = 'C_FisioTerapeuta'
      Size = 5
    end
    object Tract_C_Terapeuta: TStringField
      Tag = 100
      DisplayLabel = 'Terapeuta'
      DisplayWidth = 5
      FieldName = 'C_Terapeuta'
      Size = 5
    end
    object Tract_C_Cas: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#186' Cas'
      DisplayWidth = 3
      FieldName = 'C_Cas'
    end
    object Tract_Complicacions: TStringField
      Tag = 100
      DisplayWidth = 10
      FieldName = 'Complicacions'
      Size = 10
    end
    object Tract_C_ProcesOrigen: TSmallintField
      Tag = 100
      DisplayLabel = 'Proces origen'
      DisplayWidth = 3
      FieldName = 'C_ProcesOrigen'
    end
    object Tract_Frankel: TStringField
      Tag = 100
      DisplayLabel = 'Graus Frankel'
      DisplayWidth = 2
      FieldName = 'Frankel'
      Size = 2
    end
    object Tract_C_Codi_E: TStringField
      Tag = 100
      DisplayLabel = 'Codi E'
      DisplayWidth = 6
      FieldName = 'C_Codi_E'
      Size = 6
    end
    object Tract_N_Codi_E: TStringField
      Tag = 100
      DisplayLabel = 'Literal E '
      DisplayWidth = 40
      FieldName = 'N_Codi_E'
      Size = 40
    end
    object Tract_C_DiagnosticNeurologicIngres: TStringField
      Tag = 100
      DisplayLabel = 'Codi Diag.Neuro.Ingr'#233's'
      DisplayWidth = 15
      FieldName = 'C_DiagnosticNeurologicIngres'
      Size = 15
    end
    object Tract_N_DiagnosticNeurologicIngres: TStringField
      Tag = 100
      DisplayLabel = 'Literal Diag.Neuro.Ingr'#233's'
      DisplayWidth = 40
      FieldName = 'N_DiagnosticNeurologicIngres'
      Size = 40
    end
    object Tract_C_DiagnosticIngres: TStringField
      Tag = 100
      DisplayLabel = 'Codi Diag.Principal Ingr'#233's'
      DisplayWidth = 15
      FieldName = 'C_DiagnosticIngres'
      Size = 15
    end
    object Tract_N_DiagnosticIngres: TStringField
      Tag = 100
      DisplayLabel = 'Literal Diag.Principal Ingr'#233's'
      DisplayWidth = 40
      FieldName = 'N_DiagnosticIngres'
      Size = 40
    end
    object Tract_C_DiagnosticNeurologicAlta: TStringField
      Tag = 100
      DisplayLabel = 'Codi Diag.Neuro.Alta'
      DisplayWidth = 15
      FieldName = 'C_DiagnosticNeurologicAlta'
      Size = 15
    end
    object Tract_N_DiagnosticNeurologicAlta: TStringField
      Tag = 100
      DisplayLabel = 'Literal Diag.Neuro.Alta'
      DisplayWidth = 40
      FieldName = 'N_DiagnosticNeurologicAlta'
      Size = 40
    end
    object Tract_C_DiagnosticAlta: TStringField
      Tag = 100
      DisplayLabel = 'Codi Diag.Principal Alta'
      DisplayWidth = 15
      FieldName = 'C_DiagnosticAlta'
      Size = 15
    end
    object Tract_N_DiagnosticAlta: TStringField
      Tag = 100
      DisplayLabel = 'Literal Diag.Principal Alta'
      DisplayWidth = 40
      FieldName = 'N_DiagnosticAlta'
      Size = 40
    end
    object Tract_Comodin: TStringField
      Tag = 100
      DisplayWidth = 100
      FieldName = 'Comodin'
      Size = 100
    end
    object Tract_DiaFixe: TDateTimeField
      Tag = 100
      DisplayLabel = 'Dia Fixe'
      DisplayWidth = 11
      FieldName = 'DiaFixe'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tract_C_LLit: TStringField
      Tag = 100
      DisplayLabel = 'Llit'
      DisplayWidth = 3
      FieldName = 'C_LLit'
      Size = 3
    end
    object Tract_C_Planta: TStringField
      Tag = 100
      DisplayLabel = 'Planta'
      DisplayWidth = 15
      FieldName = 'C_Planta'
      Size = 15
    end
    object Tract_Vegada: TSmallintField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'Vegada'
    end
    object Tract_C_CentreFac: TStringField
      Tag = 100
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldName = 'C_CentreFac'
      Size = 2
    end
    object Tract_C_Client: TStringField
      Tag = 100
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldName = 'C_Client'
      Size = 3
    end
    object Tract_C_Delegacio: TStringField
      Tag = 100
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldName = 'C_Delegacio'
      Size = 4
    end
    object Tract_CaducaPermis: TDateTimeField
      Tag = 100
      DisplayLabel = 'Caduca Perm'#237's'
      DisplayWidth = 11
      FieldName = 'CaducaPermis'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tract_PercentatgePacient: TFloatField
      Tag = 100
      DisplayLabel = '% Pacient'
      DisplayWidth = 5
      FieldName = 'PercentatgePacient'
      DisplayFormat = '#,##0.###" %";; '
    end
    object Tract_Referencia: TStringField
      Tag = 100
      DisplayLabel = 'Refer'#232'ncia'
      DisplayWidth = 40
      FieldName = 'Referencia'
      Size = 40
    end
    object Tract_C_Infermeria: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Infermeria'
      DisplayWidth = 5
      FieldName = 'C_Infermeria'
      Size = 5
    end
    object Tract_C_Auxiliar: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Auxiliar  Cl'#237'nica'
      DisplayWidth = 5
      FieldName = 'C_Auxiliar'
      Size = 5
    end
    object Tract_C_Psicoleg: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Psicologia'
      DisplayWidth = 5
      FieldName = 'C_Psicoleg'
      Size = 5
    end
    object Tract_C_TrevallSocial: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Trevall Social'
      DisplayWidth = 5
      FieldName = 'C_TrevallSocial'
      Size = 5
    end
    object Tract_EsProvisional: TSmallintField
      Tag = 100
      DisplayLabel = 'Es un provisional'
      DisplayWidth = 3
      FieldName = 'EsProvisional'
    end
    object Tract_C_MetgePassi: TStringField
      Tag = 100
      DisplayLabel = 'Metge Passi'
      DisplayWidth = 5
      FieldName = 'C_MetgePassi'
      Size = 5
    end
    object Tract_Passi: TStringField
      Tag = 100
      DisplayLabel = 'Pot Fer Passis'
      DisplayWidth = 1
      FieldName = 'Passi'
      Size = 1
    end
    object Tract_Ambulancia: TStringField
      Tag = 100
      DisplayLabel = 'Ambul'#224'ncia'
      DisplayWidth = 1
      FieldName = 'Ambulancia'
      Size = 1
    end
    object Tract_C_EstatFac: TSmallintField
      Tag = 100
      DisplayLabel = 'Estat Facturaci'#243
      DisplayWidth = 10
      FieldName = 'C_EstatFac'
    end
    object Tract_C_EsperaProgramada: TIntegerField
      Tag = 100
      DisplayLabel = 'Espera Programada'
      DisplayWidth = 8
      FieldName = 'C_EsperaProgramada'
      DisplayFormat = '#,##0;; '
    end
    object Tract_C_Stock: TSmallintField
      Tag = 100
      DisplayLabel = 'C'#243'di Stock'
      DisplayWidth = 3
      FieldName = 'C_Stock'
    end
    object Tract_confirmstock: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'confirmstock'
      Size = 1
    end
    object Tract_C_InfermeraPassi: TStringField
      Tag = 100
      DisplayLabel = 'Infermera Passi'
      DisplayWidth = 5
      FieldName = 'C_InfermeraPassi'
      Size = 5
    end
    object Tract_NotaCarrec: TIntegerField
      Tag = 100
      DisplayLabel = 'Nota de C'#224'rrec per que no peti res antic'
      DisplayWidth = 8
      FieldName = 'NotaCarrec'
      DisplayFormat = '#,##0;; '
    end
    object Tract_NovaNotaCarrec: TStringField
      Tag = 100
      DisplayLabel = 'Nota de C'#224'rre'
      DisplayWidth = 40
      FieldName = 'NovaNotaCarrec'
      Size = 40
    end
    object Tract_C_EquipAssist: TIntegerField
      Tag = 100
      DisplayLabel = 'C Equip assistencial'
      DisplayWidth = 8
      FieldName = 'C_EquipAssist'
      DisplayFormat = '#,##0;; '
    end
    object Tract_c_logopeda: TStringField
      Tag = 100
      DisplayLabel = 'Responsable Logopeda'
      DisplayWidth = 5
      FieldName = 'C_LOGOPEDA'
      Origin = 'INTERNA.TRACTAMENTS.C_LOGOPEDA'
      Size = 5
    end
    object Tract_C_Metge_InfAlta: TStringField
      Tag = 100
      DisplayLabel = 'Metge Informe d'#39'Alta'
      DisplayWidth = 5
      FieldName = 'C_Metge_InfAlta'
      Size = 5
    end
    object Tract_C_Proces: TIntegerField
      Tag = 100
      DisplayLabel = 'Codi de Proc'#233's'
      DisplayWidth = 8
      FieldName = 'C_Proces'
      DisplayFormat = '#,##0;; '
    end
    object Tract_Fi_Proces: TStringField
      Tag = 100
      DisplayLabel = 'Fi de proc'#233's'
      DisplayWidth = 1
      FieldName = 'Fi_Proces'
      Size = 1
    end
    object Tract_Metge_Proces: TStringField
      Tag = 100
      DisplayLabel = 'Metge proc'#233's'
      DisplayWidth = 5
      FieldName = 'Metge_Proces'
      Size = 5
    end
    object Tract_C_Codi_E2: TStringField
      Tag = 100
      DisplayLabel = 'Codi E2'
      DisplayWidth = 15
      FieldName = 'C_Codi_E2'
      Size = 15
    end
    object Tract_N_Codi_E2: TStringField
      Tag = 100
      DisplayLabel = 'Literal E2'
      DisplayWidth = 40
      FieldName = 'N_Codi_E2'
      Size = 40
    end
    object Tract_C_Codi_E3: TStringField
      Tag = 100
      DisplayLabel = 'Codi E3'
      DisplayWidth = 15
      FieldName = 'C_Codi_E3'
      Size = 15
    end
    object Tract_N_Codi_E3: TStringField
      Tag = 100
      DisplayLabel = 'Literal E3'
      DisplayWidth = 40
      FieldName = 'N_Codi_E3'
      Size = 40
    end
    object Tract_Data_Sinistre: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Sinistre'
      DisplayWidth = 11
      FieldName = 'Data_Sinistre'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tract_Matricula_Vehicle: TStringField
      Tag = 100
      DisplayLabel = 'Matricula Vehicle'
      DisplayWidth = 40
      FieldName = 'Matricula_Vehicle'
      Size = 40
    end
    object Tract_SIFCO: TStringField
      Tag = 100
      DisplayWidth = 15
      FieldName = 'SIFCO'
      Size = 15
    end
    object Tract_FISS: TStringField
      Tag = 100
      DisplayWidth = 14
      FieldName = 'FISS'
      Size = 14
    end
    object Tract_C_Codi_E4: TStringField
      Tag = 100
      DisplayLabel = 'Codi E4'
      DisplayWidth = 15
      FieldName = 'C_Codi_E4'
      Size = 15
    end
    object Tract_N_Codi_E4: TStringField
      Tag = 100
      DisplayLabel = 'Literal E4'
      DisplayWidth = 40
      FieldName = 'N_Codi_E4'
      Size = 40
    end
    object Tract_C_Codi_E5: TStringField
      Tag = 100
      DisplayLabel = 'Codi E5'
      DisplayWidth = 15
      FieldName = 'C_Codi_E5'
      Size = 15
    end
    object Tract_N_Codi_E5: TStringField
      Tag = 100
      DisplayLabel = 'Literal E5'
      DisplayWidth = 40
      FieldName = 'N_Codi_E5'
      Size = 40
    end
    object Tract_G_DiagnosticIngres: TStringField
      Tag = 100
      DisplayLabel = 'Subcodi Diag. principal ingr'#233's'
      DisplayWidth = 15
      FieldName = 'G_DiagnosticIngres'
      Size = 15
    end
    object Tract_G_DiagnosticAlta: TStringField
      Tag = 100
      DisplayLabel = 'Subcodi Diag. principal alta'
      DisplayWidth = 15
      FieldName = 'G_DiagnosticAlta'
      Size = 15
    end
    object Tract_N_RESIDENCIA: TStringField
      Tag = 100
      DisplayLabel = 'Resid'#232'ncia PADES'
      DisplayWidth = 44
      FieldName = 'N_RESIDENCIA'
      Size = 44
    end
    object Tract_ACTUA_PADES: TStringField
      Tag = 100
      DisplayLabel = 'Actua PADES'
      DisplayWidth = 1
      FieldName = 'ACTUA_PADES'
      Size = 1
    end
    object Tract_hccc_informe_alta: TStringField
      Tag = 100
      DisplayLabel = 'Hccc id informe alta'
      DisplayWidth = 100
      FieldName = 'hccc_informe_alta'
      Size = 100
    end
    object Tract_G_CODI_E: TStringField
      Tag = 100
      DisplayLabel = 'Codi E metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E'
      Size = 15
    end
    object Tract_G_CODI_E2: TStringField
      Tag = 100
      DisplayLabel = 'Codi E2 metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E2'
      Size = 15
    end
    object Tract_G_CODI_E3: TStringField
      Tag = 100
      DisplayLabel = 'Codi E3 metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E3'
      Size = 15
    end
    object Tract_G_CODI_E4: TStringField
      Tag = 100
      DisplayLabel = 'Codi E4 metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E4'
      Size = 15
    end
    object Tract_G_CODI_E5: TStringField
      Tag = 100
      DisplayLabel = 'Codi E5 metges'
      DisplayWidth = 15
      FieldName = 'G_CODI_E5'
      Size = 15
    end
    object Tract_hccc_infalta_infer: TStringField
      Tag = 100
      DisplayLabel = 'Hccc id informe alta infermeria'
      DisplayWidth = 100
      FieldName = 'hccc_infalta_infer'
      Size = 100
    end
    object Tract_PM: TFloatField
      Tag = 100
      DisplayLabel = 'Pes Mig CMG'
      DisplayWidth = 10
      FieldName = 'PM'
      DisplayFormat = '#,##0.0000;;0.0000'
    end
    object Tract_PMDRG: TFloatField
      Tag = 100
      DisplayLabel = 'Pes Mig DRG'
      DisplayWidth = 10
      FieldName = 'PMDRG'
      DisplayFormat = '#,##0.0000;;0.0000'
    end
    object Tract_Hora_Alta: TStringField
      Tag = 100
      DisplayLabel = 'Hora alta'
      DisplayWidth = 5
      FieldName = 'Hora_Alta'
      EditMask = '!99:99;1; '
      Size = 5
    end
    object Tract_c_fisio_labo_marxa: TStringField
      Tag = 100
      DisplayLabel = 'Codi fisio labo marxa'
      DisplayWidth = 5
      FieldName = 'c_fisio_labo_marxa'
      Size = 5
    end
    object Tract_c_fisio_ar: TStringField
      Tag = 100
      DisplayLabel = 'Codi auxilar fisioterapia'
      DisplayWidth = 5
      FieldName = 'c_fisio_ar'
      Size = 5
    end
    object Tract_Data_fi_contractat: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data fi contractat'
      DisplayWidth = 11
      FieldName = 'Data_fi_contractat'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tract_Data_no_renovacio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data no renovacio'
      DisplayWidth = 11
      FieldName = 'Data_no_renovacio'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tract_BECA: TFloatField
      Tag = 100
      DisplayLabel = 'Percentatge beca'
      DisplayWidth = 10
      FieldName = 'BECA'
    end
    object Tract_DESTI_CONT_EXT: TSmallintField
      Tag = 100
      DisplayLabel = 'Destinaci'#243' continu'#239'tat externa'
      DisplayWidth = 4
      FieldName = 'DESTI_CONT_EXT'
    end
    object Tract_DESTI_CONT_INT: TSmallintField
      Tag = 100
      DisplayLabel = 'Destinaci'#243' continu'#239'tat interna'
      DisplayWidth = 4
      FieldName = 'DESTI_CONT_INT'
    end
    object Tract_C_MUSICOTERAPEUTA: TStringField
      Tag = 100
      DisplayLabel = 'Musicoterapeuta'
      DisplayWidth = 5
      FieldName = 'C_MUSICOTERAPEUTA'
      Size = 5
    end
    object Tract_CMBD_AEA: TStringField
      Tag = 100
      DisplayLabel = 'Identificador CMBD AEA'
      DisplayWidth = 100
      FieldName = 'CMBD_AEA'
      Size = 100
    end
    object Tract_REPUBLICAR_HC3: TStringField
      Tag = 100
      DisplayLabel = 'Republicar HC3'
      DisplayWidth = 1
      FieldName = 'REPUBLICAR_HC3'
      Size = 1
    end
    object Tract_T_HABITACIO: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus d'#39'habitaci'#243
      DisplayWidth = 2
      FieldName = 'T_HABITACIO'
    end
    object Tract_ID_GARANT: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero identificador de garant'
      DisplayWidth = 8
      FieldName = 'ID_GARANT'
      DisplayFormat = '#,##0;; '
    end
    object Tract_PRESSUPOST: TStringField
      Tag = 100
      DisplayLabel = 'N'#250'mero de pressupost'
      DisplayWidth = 40
      FieldName = 'PRESSUPOST'
      Size = 40
    end
    object Tract_T_SESSIO: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus de sessi'#243
      DisplayWidth = 3
      FieldName = 'T_SESSIO'
    end
    object Tract_ID_FACILITADOR: TIntegerField
      Tag = 100
      DisplayLabel = 'Facilitador'
      DisplayWidth = 8
      FieldName = 'ID_FACILITADOR'
      DisplayFormat = '#,##0;; '
    end
    object Tract_UCI: TStringField
      Tag = 100
      DisplayLabel = 'Pacient ve de la UCI?'
      DisplayWidth = 1
      FieldName = 'UCI'
      Size = 1
    end
    object Tract_METGE_MUTUA: TStringField
      Tag = 100
      DisplayLabel = 'Nom metge m'#250'tua'
      DisplayWidth = 40
      FieldName = 'METGE_MUTUA'
      Size = 40
    end
    object Tract_TELF_METGE_MUTUA: TStringField
      Tag = 100
      DisplayLabel = 'Tel'#232'fon metge m'#250'tua'
      DisplayWidth = 10
      FieldName = 'TELF_METGE_MUTUA'
      Size = 10
    end
    object Tract_VersioCIM: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldName = 'VersioCIM'
      DisplayFormat = '#,##0;; '
    end
    object Tract_VersioCIM_G: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM SubCodi'
      DisplayWidth = 8
      FieldName = 'VersioCIM_G'
      DisplayFormat = '#,##0;; '
    end
    object Tract_Publicacio_CMDB: TStringField
      Tag = 100
      DisplayLabel = 'Publicaci'#243' CMDB'
      DisplayWidth = 3
      FieldName = 'Publicacio_CMDB'
      Size = 3
    end
    object Tract_ConfiancaDPI: TFloatField
      Tag = 100
      DisplayLabel = 'Confian'#231'a diagn'#242'stic principal ingr'#233's'
      DisplayWidth = 10
      FieldName = 'ConfiancaDPI'
      DisplayFormat = '#,##0.0000;;0.0000'
    end
    object Tract_ConfiancaDPA: TFloatField
      Tag = 100
      DisplayLabel = 'Confian'#231'a diagn'#242'stic principal alta'
      DisplayWidth = 10
      FieldName = 'ConfiancaDPA'
      DisplayFormat = '#,##0.0000;;0.0000'
    end
    object Tract_ID_DPI: TStringField
      Tag = 100
      DisplayLabel = 'Identificador WS DP ingr'#233's'
      DisplayWidth = 100
      FieldName = 'ID_DPI'
      Size = 100
    end
    object Tract_ID_DPA: TStringField
      Tag = 100
      DisplayLabel = 'Identificador WS DP alta'
      DisplayWidth = 100
      FieldName = 'ID_DPA'
      Size = 100
    end
    object Tract_CADA_X_SETMANES: TIntegerField
      Tag = 100
      DisplayLabel = 'Visita cada X setmanes'
      DisplayWidth = 8
      FieldName = 'CADA_X_SETMANES'
      DisplayFormat = '#,##0;; '
    end
    object Tract_Motiu_Dia_Prealta: TStringField
      Tag = 100
      DisplayLabel = 'Motiu dia prealta'
      DisplayWidth = 40
      FieldName = 'Motiu_Dia_Prealta'
      Size = 40
    end
    object Tract_Motiu_Canvi_Prealta: TStringField
      Tag = 100
      DisplayLabel = 'Motiu canvi prealta'
      DisplayWidth = 200
      FieldName = 'Motiu_Canvi_Prealta'
      Size = 200
    end
    object Tract_C_Terapeuta_Resp: TStringField
      Tag = 100
      DisplayLabel = 'Terapeuta responsable'
      DisplayWidth = 5
      FieldName = 'C_Terapeuta_Resp'
      Size = 5
    end
    object Tract_Obs_Secre: TStringField
      Tag = 100
      DisplayLabel = 'Observacionsi secret'#224'ria m'#232'dica'
      DisplayWidth = 250
      FieldName = 'Obs_Secre'
      Size = 250
    end
    object Tract_Codificat_Revisat: TStringField
      Tag = 100
      DisplayLabel = 'Codificat - revisat'
      DisplayWidth = 1
      FieldName = 'Codificat_Revisat'
      Size = 1
    end
    object Tract_C_FREQUENCIA_TIPUS: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus de freq'#252#232'ncia'
      DisplayWidth = 3
      FieldName = 'C_FREQUENCIA_TIPUS'
    end
    object Tract_HORA_INI_REHAB: TStringField
      Tag = 100
      DisplayLabel = 'Hora inici rehabilitacio'
      DisplayWidth = 5
      FieldName = 'HORA_INI_REHAB'
      Size = 5
    end
    object Tract_HORA_FIN_REHAB: TStringField
      Tag = 100
      DisplayLabel = 'Hora final rehabilitaci'#243
      DisplayWidth = 5
      FieldName = 'HORA_FIN_REHAB'
      Size = 5
    end
    object Tract_DiesConsumits: TIntegerField
      Tag = 100
      DisplayLabel = 'Dies consumits UNESPA'
      DisplayWidth = 8
      FieldName = 'DiesConsumits'
      DisplayFormat = '#,##0;; '
    end
    object Tract_C_Prescriptor: TStringField
      Tag = 100
      DisplayLabel = 'Codi prescriptor'
      DisplayWidth = 5
      FieldName = 'C_Prescriptor'
      Size = 5
    end
    object Tract_C_MEF: TStringField
      Tag = 100
      DisplayLabel = 'Codi MEF'
      DisplayWidth = 5
      FieldName = 'C_MEF'
      Size = 5
    end
    object Tract_C_TRANSPORT_SANITARI: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi trasport'
      DisplayWidth = 3
      FieldName = 'C_TRANSPORT_SANITARI'
    end
    object Tract_C_Modalitat: TSmallintField
      Tag = 100
      DisplayLabel = 'Modalitat'
      DisplayWidth = 2
      FieldName = 'C_Modalitat'
    end
    object Tract_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Fili_NUM_HIST'
      LookupKeyFields = 'NUM_HIST'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_1: TStringField
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
    object Tract_C0_2: TStringField
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
    object Tract_C0_3: TIntegerField
      Tag = 101
      DisplayLabel = 'Edat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_Edat'
      LookupKeyFields = 'Edat'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_4: TStringField
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
    object Tract_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_APELLIDO1'
      LookupKeyFields = 'APELLIDO1'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_APELLIDO2'
      LookupKeyFields = 'APELLIDO2'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_NOMBRE'
      LookupKeyFields = 'NOMBRE'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_8: TSmallintField
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
    object Tract_C0_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat M'#232'dica'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fili_C_UnitatMedica'
      LookupKeyFields = 'C_UnitatMedica'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_10: TStringField
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
    object Tract_C0_11: TStringField
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
    object Tract_C0_12: TDateTimeField
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
    object Tract_C0_13: TStringField
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
    object Tract_C0_14: TStringField
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
    object Tract_C0_15: TStringField
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
    object Tract_C0_16: TStringField
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
    object Tract_C0_17: TSmallintField
      Tag = 101
      DisplayLabel = 'UM_ANTIGA'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_UM_ANTIGA'
      LookupKeyFields = 'UM_ANTIGA'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_18: TSmallintField
      Tag = 101
      DisplayLabel = 'Lateralitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_c_Lateralitat'
      LookupKeyFields = 'c_Lateralitat'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_19: TStringField
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
    object Tract_C0_20: TStringField
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
    object Tract_C0_21: TStringField
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
    object Tract_C0_22: TStringField
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
    object Tract_C0_23: TStringField
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
    object Tract_C0_24: TSmallintField
      Tag = 101
      DisplayLabel = 'Hospital primera atencio'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Fili_C_HOSPITAL'
      LookupKeyFields = 'C_HOSPITAL'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_25: TStringField
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
    object Tract_C0_26: TSmallintField
      Tag = 101
      DisplayLabel = 'Idioma'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fili_IDIOMA'
      LookupKeyFields = 'IDIOMA'
      KeyFields = 'Fili'
      Calculated = True
    end
    object Tract_C0_27: TStringField
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
    object Tract_C0_28: TStringField
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
    object Tract_C0_29: TStringField
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
    object Tract_C0_30: TIntegerField
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
    object Tract_C1_0: TStringField
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
    object Tract_C1_1: TStringField
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
    object Tract_C1_2: TStringField
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
    object Tract_C1_3: TStringField
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
    object Tract_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prestacio_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Prestacio'
      Calculated = True
    end
    object Tract_C1_5: TStringField
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
    object Tract_C1_6: TStringField
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
    object Tract_C1_7: TSmallintField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prestacio_Grup'
      LookupKeyFields = 'Grup'
      KeyFields = 'Prestacio'
      Calculated = True
    end
    object Tract_C1_8: TStringField
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
    object Tract_C2_0: TStringField
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
    object Tract_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object Tract_C2_2: TStringField
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
    object Tract_C2_3: TStringField
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
    object Tract_C2_4: TStringField
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
    object Tract_C2_5: TStringField
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
    object Tract_C2_6: TStringField
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
    object Tract_C2_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Coordinador_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object Tract_C2_8: TStringField
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
    object Tract_C2_9: TStringField
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
    object Tract_C2_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Coordinador_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object Tract_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object Tract_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Coordinador_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Coordinador'
      Calculated = True
    end
    object Tract_C2_13: TStringField
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
    object Tract_C2_14: TStringField
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
    object Tract_C2_15: TStringField
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
    object Tract_C2_16: TIntegerField
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
    object Tract_C2_17: TDateTimeField
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
    object Tract_C3_0: TStringField
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
    object Tract_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object Tract_C3_2: TStringField
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
    object Tract_C3_3: TStringField
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
    object Tract_C3_4: TStringField
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
    object Tract_C3_5: TStringField
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
    object Tract_C3_6: TStringField
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
    object Tract_C3_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object Tract_C3_8: TStringField
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
    object Tract_C3_9: TStringField
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
    object Tract_C3_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object Tract_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object Tract_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgePreAlta_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'MetgePreAlta'
      Calculated = True
    end
    object Tract_C3_13: TStringField
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
    object Tract_C3_14: TStringField
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
    object Tract_C3_15: TStringField
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
    object Tract_C3_16: TIntegerField
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
    object Tract_C3_17: TDateTimeField
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
    object Tract_C4_0: TStringField
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
    object Tract_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object Tract_C4_2: TStringField
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
    object Tract_C4_3: TStringField
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
    object Tract_C4_4: TStringField
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
    object Tract_C4_5: TStringField
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
    object Tract_C4_6: TStringField
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
    object Tract_C4_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object Tract_C4_8: TStringField
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
    object Tract_C4_9: TStringField
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
    object Tract_C4_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object Tract_C4_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object Tract_C4_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MetgeAlta_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'MetgeAlta'
      Calculated = True
    end
    object Tract_C4_13: TStringField
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
    object Tract_C4_14: TStringField
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
    object Tract_C4_15: TStringField
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
    object Tract_C4_16: TIntegerField
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
    object Tract_C4_17: TDateTimeField
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
    object Tract_C5_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Motiu'
      Calculated = True
    end
    object Tract_C5_1: TStringField
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
    object Tract_C6_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Origen_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Origen'
      Calculated = True
    end
    object Tract_C6_1: TStringField
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
    object Tract_C7_0: TSmallintField
      Tag = 101
      DisplayLabel = 'N'#186' Hospital'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'HtalOrigen_C_Hospital'
      LookupKeyFields = 'C_Hospital'
      KeyFields = 'HtalOrigen'
      Calculated = True
    end
    object Tract_C7_1: TStringField
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
    object Tract_C7_2: TStringField
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
    object Tract_C7_3: TStringField
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
    object Tract_C7_4: TStringField
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
    object Tract_C7_5: TStringField
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
    object Tract_C7_6: TStringField
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
    object Tract_C7_7: TStringField
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
    object Tract_C8_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Caracter_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Caracter'
      Calculated = True
    end
    object Tract_C8_1: TStringField
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
    object Tract_C9_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Solicitud_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Solicitud'
      Calculated = True
    end
    object Tract_C9_1: TStringField
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
    object Tract_C10_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Destinacio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Destinacio'
      Calculated = True
    end
    object Tract_C10_1: TStringField
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
    object Tract_C10_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Destinacio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Destinacio'
      Calculated = True
    end
    object Tract_C10_3: TStringField
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
    object Tract_C10_4: TStringField
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
    object Tract_C10_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Destinacio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Destinacio'
      Calculated = True
    end
    object Tract_C11_0: TSmallintField
      Tag = 101
      DisplayLabel = 'N'#186' Hospital'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'HtalDestinacio_C_Hospital'
      LookupKeyFields = 'C_Hospital'
      KeyFields = 'HtalDestinacio'
      Calculated = True
    end
    object Tract_C11_1: TStringField
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
    object Tract_C11_2: TStringField
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
    object Tract_C11_3: TStringField
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
    object Tract_C11_4: TStringField
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
    object Tract_C11_5: TStringField
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
    object Tract_C11_6: TStringField
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
    object Tract_C11_7: TStringField
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
    object Tract_C12_0: TStringField
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
    object Tract_C12_1: TStringField
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
    object Tract_C12_2: TStringField
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
    object Tract_C12_3: TStringField
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
    object Tract_C12_4: TSmallintField
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
    object Tract_C13_0: TStringField
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
    object Tract_C13_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object Tract_C13_2: TStringField
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
    object Tract_C13_3: TStringField
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
    object Tract_C13_4: TStringField
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
    object Tract_C13_5: TStringField
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
    object Tract_C13_6: TStringField
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
    object Tract_C13_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object Tract_C13_8: TStringField
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
    object Tract_C13_9: TStringField
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
    object Tract_C13_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object Tract_C13_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object Tract_C13_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fisioterapeuta_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Fisioterapeuta'
      Calculated = True
    end
    object Tract_C13_13: TStringField
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
    object Tract_C13_14: TStringField
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
    object Tract_C13_15: TStringField
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
    object Tract_C13_16: TIntegerField
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
    object Tract_C13_17: TDateTimeField
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
    object Tract_C14_0: TStringField
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
    object Tract_C14_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object Tract_C14_2: TStringField
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
    object Tract_C14_3: TStringField
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
    object Tract_C14_4: TStringField
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
    object Tract_C14_5: TStringField
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
    object Tract_C14_6: TStringField
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
    object Tract_C14_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object Tract_C14_8: TStringField
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
    object Tract_C14_9: TStringField
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
    object Tract_C14_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object Tract_C14_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object Tract_C14_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Terapeuta_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Terapeuta'
      Calculated = True
    end
    object Tract_C14_13: TStringField
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
    object Tract_C14_14: TStringField
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
    object Tract_C14_15: TStringField
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
    object Tract_C14_16: TIntegerField
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
    object Tract_C14_17: TDateTimeField
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
    object Tract_C15_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'NumCas_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'NumCas'
      Calculated = True
    end
    object Tract_C15_1: TStringField
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
    object Tract_C15_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'NumCas_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'NumCas'
      Calculated = True
    end
    object Tract_C15_3: TStringField
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
    object Tract_C15_4: TStringField
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
    object Tract_C15_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'NumCas_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'NumCas'
      Calculated = True
    end
    object Tract_C16_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'ProcesOrigen_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'ProcesOrigen'
      Calculated = True
    end
    object Tract_C16_1: TStringField
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
    object Tract_C16_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'ProcesOrigen_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'ProcesOrigen'
      Calculated = True
    end
    object Tract_C16_3: TStringField
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
    object Tract_C16_4: TStringField
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
    object Tract_C16_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'ProcesOrigen_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'ProcesOrigen'
      Calculated = True
    end
    object Tract_C17_0: TStringField
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
    object Tract_C17_1: TStringField
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
    object Tract_C17_2: TStringField
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
    object Tract_C17_3: TStringField
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
    object Tract_C17_4: TStringField
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
    object Tract_C17_5: TStringField
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
    object Tract_C17_6: TStringField
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
    object Tract_C17_7: TStringField
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
    object Tract_C17_8: TStringField
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
    object Tract_C17_9: TStringField
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
    object Tract_C17_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAlta_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'IcdAlta'
      Calculated = True
    end
    object Tract_C17_11: TStringField
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
    object Tract_C17_12: TStringField
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
    object Tract_C17_13: TStringField
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
    object Tract_C17_14: TStringField
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
    object Tract_C17_15: TStringField
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
    object Tract_C17_16: TStringField
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
    object Tract_C17_17: TIntegerField
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
    object Tract_C18_0: TStringField
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
    object Tract_C18_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Centre_N_CentreFac'
      LookupKeyFields = 'N_CentreFac'
      KeyFields = 'Centre'
      Calculated = True
    end
    object Tract_C18_2: TStringField
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
    object Tract_C19_0: TStringField
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
    object Tract_C19_1: TStringField
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
    object Tract_C19_2: TStringField
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
    object Tract_C19_3: TStringField
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
    object Tract_C19_4: TStringField
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
    object Tract_C19_5: TStringField
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
    object Tract_C20_0: TStringField
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
    object Tract_C20_1: TStringField
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
    object Tract_C20_2: TStringField
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
    object Tract_C20_3: TStringField
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
    object Tract_C20_4: TStringField
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
    object Tract_C20_5: TStringField
      Tag = 101
      DisplayLabel = 'Responsable'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Delegacio_Responsable'
      LookupKeyFields = 'Responsable'
      KeyFields = 'Delegacio'
      Calculated = True
    end
    object Tract_C20_6: TStringField
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
    object Tract_C20_7: TStringField
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
    object Tract_C20_8: TStringField
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
    object Tract_C20_9: TStringField
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
    object Tract_C20_10: TStringField
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
    object Tract_C20_11: TStringField
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
    object Tract_C20_12: TStringField
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
    object Tract_C20_13: TFloatField
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
    object Tract_C20_14: TIntegerField
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
    object Tract_C20_15: TStringField
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
    object Tract_C20_16: TIntegerField
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
    object Tract_C20_17: TStringField
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
    object Tract_C21_0: TStringField
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
    object Tract_C21_1: TStringField
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
    object Tract_C21_2: TStringField
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
    object Tract_C21_3: TStringField
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
    object Tract_C21_4: TStringField
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
    object Tract_C21_5: TStringField
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
    object Tract_C21_6: TStringField
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
    object Tract_C21_7: TStringField
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
    object Tract_C21_8: TStringField
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
    object Tract_C21_9: TStringField
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
    object Tract_C21_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngres_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'IcdIngres'
      Calculated = True
    end
    object Tract_C21_11: TStringField
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
    object Tract_C21_12: TStringField
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
    object Tract_C21_13: TStringField
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
    object Tract_C21_14: TStringField
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
    object Tract_C21_15: TStringField
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
    object Tract_C21_16: TStringField
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
    object Tract_C21_17: TIntegerField
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
    object Tract_C22_0: TStringField
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
    object Tract_C22_1: TStringField
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
    object Tract_C22_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Llit_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Llit'
      Calculated = True
    end
    object Tract_C23_0: TStringField
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
    object Tract_C23_1: TStringField
      Tag = 101
      DisplayLabel = 'Planta'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Planta_N_Planta'
      LookupKeyFields = 'N_Planta'
      KeyFields = 'Planta'
      Calculated = True
    end
    object Tract_C23_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Dia'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Planta_Dia'
      LookupKeyFields = 'Dia'
      KeyFields = 'Planta'
      Calculated = True
    end
    object Tract_C23_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Planta_Unitat'
      LookupKeyFields = 'Unitat'
      KeyFields = 'Planta'
      Calculated = True
    end
    object Tract_C24_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Provisional_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Provisional'
      Calculated = True
    end
    object Tract_C24_1: TStringField
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
    object Tract_C24_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Provisional_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Provisional'
      Calculated = True
    end
    object Tract_C24_3: TStringField
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
    object Tract_C24_4: TStringField
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
    object Tract_C24_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Provisional_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Provisional'
      Calculated = True
    end
    object Tract_C25_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Stock_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Stock'
      Calculated = True
    end
    object Tract_C25_1: TStringField
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
    object Tract_C25_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Stock_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Stock'
      Calculated = True
    end
    object Tract_C25_3: TStringField
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
    object Tract_C25_4: TStringField
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
    object Tract_C25_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Stock_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Stock'
      Calculated = True
    end
    object Tract_C26_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'vegada_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'vegada'
      Calculated = True
    end
    object Tract_C26_1: TStringField
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
    object Tract_C26_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'vegada_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'vegada'
      Calculated = True
    end
    object Tract_C26_3: TStringField
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
    object Tract_C26_4: TStringField
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
    object Tract_C26_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'vegada_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'vegada'
      Calculated = True
    end
    object Tract_C27_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'EstatFac_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'EstatFac'
      Calculated = True
    end
    object Tract_C27_1: TStringField
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
    object Tract_C27_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'EstatFac_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'EstatFac'
      Calculated = True
    end
    object Tract_C27_3: TStringField
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
    object Tract_C27_4: TStringField
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
    object Tract_C27_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'EstatFac_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'EstatFac'
      Calculated = True
    end
    object Tract_C28_0: TIntegerField
      Tag = 101
      DisplayLabel = 'C Equip'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'EquipAssist_c_equip'
      LookupKeyFields = 'c_equip'
      KeyFields = 'EquipAssist'
      Calculated = True
    end
    object Tract_C28_1: TStringField
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
    object Tract_C28_2: TStringField
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
    object Tract_C28_3: TSmallintField
      Tag = 101
      DisplayLabel = 'C Unitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'EquipAssist_c_unitat'
      LookupKeyFields = 'c_unitat'
      KeyFields = 'EquipAssist'
      Calculated = True
    end
    object Tract_C28_4: TStringField
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
    object Tract_C29_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_EXT_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'DESTI_CONT_EXT'
      Calculated = True
    end
    object Tract_C29_1: TStringField
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
    object Tract_C29_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_EXT_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'DESTI_CONT_EXT'
      Calculated = True
    end
    object Tract_C29_3: TStringField
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
    object Tract_C29_4: TStringField
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
    object Tract_C29_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_EXT_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'DESTI_CONT_EXT'
      Calculated = True
    end
    object Tract_C30_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_INT_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'DESTI_CONT_INT'
      Calculated = True
    end
    object Tract_C30_1: TStringField
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
    object Tract_C30_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_INT_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'DESTI_CONT_INT'
      Calculated = True
    end
    object Tract_C30_3: TStringField
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
    object Tract_C30_4: TStringField
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
    object Tract_C30_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'DESTI_CONT_INT_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'DESTI_CONT_INT'
      Calculated = True
    end
    object Tract_C31_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TipHab_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TipHab'
      Calculated = True
    end
    object Tract_C31_1: TStringField
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
    object Tract_C31_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TipHab_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TipHab'
      Calculated = True
    end
    object Tract_C31_3: TStringField
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
    object Tract_C31_4: TStringField
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
    object Tract_C31_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TipHab_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TipHab'
      Calculated = True
    end
    object Tract_C32_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Garant'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Garant_ID_GARANT'
      LookupKeyFields = 'ID_GARANT'
      KeyFields = 'Garant'
      Calculated = True
    end
    object Tract_C32_1: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Garant_COGNOM1'
      LookupKeyFields = 'COGNOM1'
      KeyFields = 'Garant'
      Calculated = True
    end
    object Tract_C32_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Garant_COGNOM2'
      LookupKeyFields = 'COGNOM2'
      KeyFields = 'Garant'
      Calculated = True
    end
    object Tract_C32_3: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Garant_NOM'
      LookupKeyFields = 'NOM'
      KeyFields = 'Garant'
      Calculated = True
    end
    object Tract_C32_4: TStringField
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
    object Tract_C32_5: TStringField
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
    object Tract_C32_6: TStringField
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
    object Tract_C32_7: TStringField
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
    object Tract_C32_8: TStringField
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
    object Tract_C32_9: TStringField
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
    object Tract_C32_10: TStringField
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
    object Tract_C32_11: TStringField
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
    object Tract_C32_12: TStringField
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
    object Tract_C32_13: TStringField
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
    object Tract_C33_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TSessio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object Tract_C33_1: TStringField
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
    object Tract_C33_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TSessio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object Tract_C33_3: TStringField
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
    object Tract_C33_4: TStringField
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
    object Tract_C33_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TSessio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object Tract_C34_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Facilitador'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Facilitador_ID_FACILITADOR'
      LookupKeyFields = 'ID_FACILITADOR'
      KeyFields = 'Facilitador'
      Calculated = True
    end
    object Tract_C34_1: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Facilitador_COGNOM1'
      LookupKeyFields = 'COGNOM1'
      KeyFields = 'Facilitador'
      Calculated = True
    end
    object Tract_C34_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Facilitador_COGNOM2'
      LookupKeyFields = 'COGNOM2'
      KeyFields = 'Facilitador'
      Calculated = True
    end
    object Tract_C34_3: TStringField
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
    object Tract_C34_4: TStringField
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
    object Tract_C35_0: TStringField
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
    object Tract_C35_1: TStringField
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
    object Tract_C35_2: TStringField
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
    object Tract_C35_3: TStringField
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
    object Tract_C35_4: TStringField
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
    object Tract_C35_5: TStringField
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
    object Tract_C35_6: TStringField
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
    object Tract_C35_7: TStringField
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
    object Tract_C35_8: TStringField
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
    object Tract_C35_9: TStringField
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
    object Tract_C35_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdIngresC_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'IcdIngresC'
      Calculated = True
    end
    object Tract_C35_11: TStringField
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
    object Tract_C35_12: TStringField
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
    object Tract_C35_13: TStringField
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
    object Tract_C35_14: TStringField
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
    object Tract_C35_15: TStringField
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
    object Tract_C35_16: TStringField
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
    object Tract_C35_17: TIntegerField
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
    object Tract_C36_0: TStringField
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
    object Tract_C36_1: TStringField
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
    object Tract_C36_2: TStringField
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
    object Tract_C36_3: TStringField
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
    object Tract_C36_4: TStringField
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
    object Tract_C36_5: TStringField
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
    object Tract_C36_6: TStringField
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
    object Tract_C36_7: TStringField
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
    object Tract_C36_8: TStringField
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
    object Tract_C36_9: TStringField
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
    object Tract_C36_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdAltaC_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'IcdAltaC'
      Calculated = True
    end
    object Tract_C36_11: TStringField
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
    object Tract_C36_12: TStringField
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
    object Tract_C36_13: TStringField
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
    object Tract_C36_14: TStringField
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
    object Tract_C36_15: TStringField
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
    object Tract_C36_16: TStringField
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
    object Tract_C36_17: TIntegerField
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
    object Tract_C37_0: TStringField
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
    object Tract_C37_1: TStringField
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
    object Tract_C38_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TipusFrequencia_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TipusFrequencia'
      Calculated = True
    end
    object Tract_C38_1: TStringField
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
    object Tract_C38_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TipusFrequencia_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TipusFrequencia'
      Calculated = True
    end
    object Tract_C38_3: TStringField
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
    object Tract_C38_4: TStringField
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
    object Tract_C38_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TipusFrequencia_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TipusFrequencia'
      Calculated = True
    end
    object Tract_C39_0: TStringField
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
    object Tract_C39_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object Tract_C39_2: TStringField
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
    object Tract_C39_3: TStringField
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
    object Tract_C39_4: TStringField
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
    object Tract_C39_5: TStringField
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
    object Tract_C39_6: TStringField
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
    object Tract_C39_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object Tract_C39_8: TStringField
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
    object Tract_C39_9: TStringField
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
    object Tract_C39_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object Tract_C39_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object Tract_C39_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Prescriptor_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Prescriptor'
      Calculated = True
    end
    object Tract_C39_13: TStringField
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
    object Tract_C39_14: TStringField
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
    object Tract_C39_15: TStringField
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
    object Tract_C39_16: TIntegerField
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
    object Tract_C39_17: TDateTimeField
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
    object Tract_C40_0: TStringField
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
    object Tract_C40_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MEF_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'MEF'
      Calculated = True
    end
    object Tract_C40_2: TStringField
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
    object Tract_C40_3: TStringField
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
    object Tract_C40_4: TStringField
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
    object Tract_C40_5: TStringField
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
    object Tract_C40_6: TStringField
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
    object Tract_C40_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'MEF_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'MEF'
      Calculated = True
    end
    object Tract_C40_8: TStringField
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
    object Tract_C40_9: TStringField
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
    object Tract_C40_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'MEF_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'MEF'
      Calculated = True
    end
    object Tract_C40_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MEF_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'MEF'
      Calculated = True
    end
    object Tract_C40_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'MEF_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'MEF'
      Calculated = True
    end
    object Tract_C40_13: TStringField
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
    object Tract_C40_14: TStringField
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
    object Tract_C40_15: TStringField
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
    object Tract_C40_16: TIntegerField
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
    object Tract_C40_17: TDateTimeField
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
    object Tract_C41_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object Tract_C41_1: TStringField
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
    object Tract_C41_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object Tract_C41_3: TStringField
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
    object Tract_C41_4: TStringField
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
    object Tract_C41_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object Tract_C42_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'modalitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'modalitat'
      Calculated = True
    end
    object Tract_C42_1: TStringField
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
    object TractALTRESPROCEDIMENTS: TStringField
      FieldName = 'ALTRESPROCEDIMENTS'
      Origin = 'INTERNA.TRACTAMENTS.ALTRESPROCEDIMENTS'
      Size = 40
    end
    object TractENQUESTA: TStringField
      FieldName = 'ENQUESTA'
      Origin = 'INTERNA.TRACTAMENTS.ENQUESTA'
      FixedChar = True
      Size = 1
    end
  end
  object Procediments: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCurs.Procediments
    IndiceActivo = 'Pk'
    CalcSimple = False
    AutoPost = False
    Padre = dsTract
    Left = 28
    Top = 539
    object Procediments_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'C Tractament'
      DisplayWidth = 4
      FieldName = 'C_Tractament'
      DisplayFormat = '#,##0;; '
    end
    object Procediments_Tipus: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tipus'
      Size = 1
    end
    object Procediments_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Ordre'
    end
    object Procediments_C_Metge: TStringField
      Tag = 100
      DisplayLabel = 'Metge'
      DisplayWidth = 5
      FieldName = 'C_Metge'
      Size = 5
    end
    object Procediments_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"/"mm"/"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object Procediments_C_Procediment: TStringField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 15
      FieldName = 'C_Procediment'
      Size = 15
    end
    object Procediments_G_Procediment: TStringField
      Tag = 100
      DisplayLabel = 'SubCodi'
      DisplayWidth = 15
      FieldName = 'G_Procediment'
      Size = 15
    end
    object Procediments_N_Procediment: TStringField
      Tag = 100
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldName = 'N_Procediment'
      Size = 40
    end
    object Procediments_Dispositiu: TStringField
      Tag = 100
      DisplayWidth = 15
      FieldName = 'Dispositiu'
      Size = 15
    end
    object Procediments_VersioCIM: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldName = 'VersioCIM'
      DisplayFormat = '#,##0;; '
    end
    object Procediments_VersioCIM_G: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM SubCodi'
      DisplayWidth = 8
      FieldName = 'VersioCIM_G'
      DisplayFormat = '#,##0;; '
    end
    object Procediments_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object Procediments_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Codiicd_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'Codiicd'
      Size = 255
      Calculated = True
    end
    object Procediments_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object Procediments_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object Procediments_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object Procediments_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'Codiicd_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'Codiicd'
      Size = 90
      Calculated = True
    end
    object Procediments_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Codiicd_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'Codiicd'
      Size = 24
      Calculated = True
    end
    object Procediments_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codiicd_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'Codiicd'
      Size = 40
      Calculated = True
    end
    object Procediments_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object Procediments_C0_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object Procediments_C0_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'Codiicd'
      Calculated = True
    end
    object Procediments_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object Procediments_C0_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object Procediments_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'Codiicd'
      Size = 1
      Calculated = True
    end
    object Procediments_C0_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object Procediments_C0_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'Codiicd'
      Size = 15
      Calculated = True
    end
    object Procediments_C0_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Codiicd_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'Codiicd'
      Size = 50
      Calculated = True
    end
    object Procediments_C0_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Codiicd_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'Codiicd'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Procediments_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object Procediments_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'Codiicd2'
      Size = 255
      Calculated = True
    end
    object Procediments_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object Procediments_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object Procediments_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object Procediments_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'Codiicd2'
      Size = 90
      Calculated = True
    end
    object Procediments_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'Codiicd2'
      Size = 24
      Calculated = True
    end
    object Procediments_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'Codiicd2'
      Size = 40
      Calculated = True
    end
    object Procediments_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object Procediments_C1_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object Procediments_C1_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'Codiicd2'
      Calculated = True
    end
    object Procediments_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object Procediments_C1_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object Procediments_C1_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'Codiicd2'
      Size = 1
      Calculated = True
    end
    object Procediments_C1_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object Procediments_C1_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'Codiicd2'
      Size = 15
      Calculated = True
    end
    object Procediments_C1_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'Codiicd2'
      Size = 50
      Calculated = True
    end
    object Procediments_C1_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Codiicd2_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'Codiicd2'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Procediments_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'dispositiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'dispositiu'
      Size = 15
      Calculated = True
    end
    object Procediments_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'dispositiu_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'dispositiu'
      Size = 60
      Calculated = True
    end
    object Procediments_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'dispositiu_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'dispositiu'
      Size = 60
      Calculated = True
    end
    object Procediments_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'dispositiu_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'dispositiu'
      Size = 10
      Calculated = True
    end
  end
  object dsProcediments: TDataSource
    DataSet = Procediments
    Left = 104
    Top = 539
  end
  object Fili: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsBusca
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBasics.Filiacio
    IndiceActivo = 'Historia'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'NUM_HIST = :c_historia')
    Left = 128
    Top = 317
    object Fili_C_ORIGEN: TSmallintField
      Tag = 100
      DisplayLabel = 'Origen UM'
      DisplayWidth = 8
      FieldName = 'C_Origen'
      DisplayFormat = '#,##0;; '
    end
    object Fili_Frankel: TStringField
      Tag = 100
      DisplayLabel = 'Graus Frankel'
      DisplayWidth = 2
      FieldName = 'Frankel'
      Size = 2
    end
    object Fili_C_Codi_E: TStringField
      Tag = 100
      DisplayLabel = 'C'#243'di E'
      DisplayWidth = 15
      FieldName = 'C_Codi_E'
      Size = 15
    end
    object Fili_N_Codi_E: TStringField
      Tag = 100
      DisplayLabel = 'Literal E'
      DisplayWidth = 40
      FieldName = 'N_Codi_E'
      Size = 40
    end
    object Fili_Comodin: TStringField
      Tag = 100
      DisplayWidth = 100
      FieldName = 'Comodin'
      Size = 100
    end
    object Fili_C_Codi_E2: TStringField
      Tag = 100
      DisplayLabel = 'Codi E2'
      DisplayWidth = 15
      FieldName = 'C_Codi_E2'
      Size = 15
    end
    object Fili_N_Codi_E2: TStringField
      Tag = 100
      DisplayLabel = 'Literal E2'
      DisplayWidth = 40
      FieldName = 'N_Codi_E2'
      Size = 40
    end
    object Fili_NUM_HIST: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldName = 'NUM_HIST'
    end
    object Fili_APELLIDO1: TStringField
      Tag = 100
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldName = 'APELLIDO1'
    end
    object Fili_APELLIDO2: TStringField
      Tag = 100
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldName = 'APELLIDO2'
    end
    object Fili_NOMBRE: TStringField
      Tag = 100
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldName = 'NOMBRE'
    end
    object Fili_NomComplet: TStringField
      Tag = 100
      DisplayLabel = 'Nom complet'
      DisplayWidth = 80
      FieldName = 'NomComplet'
      Size = 80
    end
    object Fili_DNI: TStringField
      Tag = 100
      DisplayLabel = 'Dni'
      DisplayWidth = 9
      FieldName = 'DNI'
      Size = 9
    end
    object Fili_NOMVIA: TStringField
      Tag = 100
      DisplayLabel = 'Nomvia'
      DisplayWidth = 50
      FieldName = 'NOMVIA'
      Size = 50
    end
    object Fili_ADRESA: TStringField
      Tag = 100
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 80
      FieldName = 'ADRESA'
      Size = 80
    end
    object Fili_TELEFONO: TStringField
      Tag = 100
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldName = 'TELEFONO'
      Size = 10
    end
    object Fili_email: TStringField
      Tag = 100
      DisplayWidth = 60
      FieldName = 'email'
      Size = 60
    end
    object Fili_TIPUSVIA: TStringField
      Tag = 100
      DisplayLabel = 'Tipusvia'
      DisplayWidth = 4
      FieldName = 'TIPUSVIA'
      Size = 4
    end
    object Fili_CODIGO: TStringField
      Tag = 100
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Size = 5
    end
    object Fili_NUMERO: TStringField
      Tag = 100
      DisplayLabel = 'Numero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Size = 10
    end
    object Fili_BLOC: TStringField
      Tag = 100
      DisplayLabel = 'Bloc'
      DisplayWidth = 2
      FieldName = 'BLOC'
      Size = 2
    end
    object Fili_ESCALA: TStringField
      Tag = 100
      DisplayLabel = 'Escala'
      DisplayWidth = 2
      FieldName = 'ESCALA'
      Size = 2
    end
    object Fili_PIS: TStringField
      Tag = 100
      DisplayLabel = 'Pis'
      DisplayWidth = 5
      FieldName = 'PIS'
      Size = 5
    end
    object Fili_PORTA: TStringField
      Tag = 100
      DisplayLabel = 'Porta'
      DisplayWidth = 3
      FieldName = 'PORTA'
      Size = 3
    end
    object Fili_POBLACIO: TStringField
      Tag = 100
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldName = 'POBLACIO'
      Size = 44
    end
    object Fili_PROVINCIA: TStringField
      Tag = 100
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldName = 'PROVINCIA'
      Size = 44
    end
    object Fili_RESIDENCIA: TStringField
      Tag = 100
      DisplayLabel = 'Residencia'
      DisplayWidth = 7
      FieldName = 'RESIDENCIA'
      Size = 7
    end
    object Fili_PAIS: TStringField
      Tag = 100
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldName = 'PAIS'
      Size = 3
    end
    object Fili_SEXO: TStringField
      Tag = 100
      DisplayLabel = 'Sexe'
      DisplayWidth = 1
      FieldName = 'SEXO'
      Size = 1
    end
    object Fili_FECHA_NAC: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Naix.'
      DisplayWidth = 11
      FieldName = 'FECHA_NAC'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Fili_LUGAR_NAC: TStringField
      Tag = 100
      DisplayLabel = 'Lloc Naix.'
      DisplayWidth = 44
      FieldName = 'LUGAR_NAC'
      Size = 44
    end
    object Fili_ESTADO_CIV: TStringField
      Tag = 100
      DisplayLabel = 'Estat Civil'
      DisplayWidth = 2
      FieldName = 'ESTADO_CIV'
      Size = 2
    end
    object Fili_SOE: TStringField
      Tag = 100
      DisplayLabel = 'Soe'
      DisplayWidth = 12
      FieldName = 'SOE'
      Size = 12
    end
    object Fili_TSI: TStringField
      Tag = 100
      DisplayLabel = 'Tsi'
      DisplayWidth = 14
      FieldName = 'TSI'
      Size = 14
    end
    object Fili_TITULAR: TStringField
      Tag = 100
      DisplayLabel = 'Titular'
      DisplayWidth = 1
      FieldName = 'TITULAR'
      Size = 1
    end
    object Fili_PENSIONIST: TStringField
      Tag = 100
      DisplayLabel = 'Pensionista'
      DisplayWidth = 1
      FieldName = 'PENSIONIST'
      Size = 1
    end
    object Fili_IDIOMA: TSmallintField
      Tag = 100
      DisplayLabel = 'Idioma'
      DisplayWidth = 2
      FieldName = 'IDIOMA'
    end
    object Fili_TELEFO1_FAM: TStringField
      Tag = 100
      DisplayLabel = 'Telefo1 Fam'
      DisplayWidth = 10
      FieldName = 'TELEFO1_FAM'
      Size = 10
    end
    object Fili_DESCRIPCIO1: TStringField
      Tag = 100
      DisplayLabel = 'Descripcio1'
      DisplayWidth = 30
      FieldName = 'DESCRIPCIO1'
      Size = 30
    end
    object Fili_TELEFO2_FAM: TStringField
      Tag = 100
      DisplayLabel = 'Telefo2 Fam'
      DisplayWidth = 10
      FieldName = 'TELEFO2_FAM'
      Size = 10
    end
    object Fili_DESCRIPCIO2: TStringField
      Tag = 100
      DisplayLabel = 'Descripcio2'
      DisplayWidth = 30
      FieldName = 'DESCRIPCIO2'
      Size = 30
    end
    object Fili_AMIC: TFloatField
      Tag = 100
      DisplayLabel = 'Amic'
      DisplayWidth = 8
      FieldName = 'AMIC'
      DisplayFormat = '#,##0.###;; '
    end
    object Fili_MORT: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Defunci'#243
      DisplayWidth = 11
      FieldName = 'MORT'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Fili_EsViu: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'EsViu'
      Size = 1
    end
    object Fili_Edat: TIntegerField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'Edat'
      ReadOnly = True
    end
    object Fili_USRA: TIntegerField
      Tag = 100
      DisplayLabel = 'Usra'
      DisplayWidth = 4
      FieldName = 'USRA'
      DisplayFormat = '#,##0;; '
    end
    object Fili_UNITAT: TSmallintField
      Tag = 100
      DisplayLabel = 'Unitat'
      DisplayWidth = 3
      FieldName = 'UNITAT'
      DisplayFormat = '#,##0;; '
    end
    object Fili_C_UnitatMedica: TSmallintField
      Tag = 100
      DisplayLabel = 'Unitat M'#232'dica'
      DisplayWidth = 2
      FieldName = 'C_UnitatMedica'
    end
    object Fili_Bloqueig: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Bloqueig'
      Size = 1
    end
    object Fili_Objectius: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Objectius'
      DisplayFormat = '#,##0;; '
    end
    object Fili_C_Etiologia: TStringField
      Tag = 100
      DisplayLabel = 'C'#243'di Etiologia'
      DisplayWidth = 15
      FieldName = 'C_Etiologia'
      Size = 15
    end
    object Fili_N_Etiologia: TStringField
      Tag = 100
      DisplayLabel = 'Literal Etiologia'
      DisplayWidth = 100
      FieldName = 'N_Etiologia'
      Size = 100
    end
    object Fili_Data_Lessio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Lessi'#243
      DisplayWidth = 11
      FieldName = 'Data_Lessio'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Fili_C_ClasAnat: TSmallintField
      Tag = 100
      DisplayLabel = 'Classificaci'#243' Anat'#242'mica'
      DisplayWidth = 3
      FieldName = 'C_ClasAnat'
    end
    object Fili_C_FracturaVertebral: TSmallintField
      Tag = 100
      DisplayLabel = 'Fractura Vertebral'
      DisplayWidth = 3
      FieldName = 'C_FracturaVertebral'
    end
    object Fili_c_TipusBufeta: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus Bufeta'
      DisplayWidth = 3
      FieldName = 'c_TipusBufeta'
    end
    object Fili_C_Bipedestacio: TSmallintField
      Tag = 100
      DisplayLabel = 'Bipedestaci'#243
      DisplayWidth = 3
      FieldName = 'C_Bipedestacio'
    end
    object Fili_C_InfeccioUrinaria: TSmallintField
      Tag = 100
      DisplayLabel = 'Infecci'#243' Urinaria'
      DisplayWidth = 3
      FieldName = 'C_InfeccioUrinaria'
    end
    object Fili_C_Disreflexia: TSmallintField
      Tag = 100
      DisplayLabel = 'Disreflexia NeuroVegetativa'
      DisplayWidth = 3
      FieldName = 'C_Disreflexia'
    end
    object Fili_C_Cadira: TSmallintField
      Tag = 100
      DisplayLabel = 'Cadira'
      DisplayWidth = 3
      FieldName = 'C_Cadira'
    end
    object Fili_C_FuncioSexual: TSmallintField
      Tag = 100
      DisplayLabel = 'Funci'#243' Sexual'
      DisplayWidth = 3
      FieldName = 'C_FuncioSexual'
    end
    object Fili_C_Ereccio: TSmallintField
      Tag = 100
      DisplayLabel = 'Erecci'#243
      DisplayWidth = 3
      FieldName = 'C_Ereccio'
    end
    object Fili_C_Ejaculacio: TSmallintField
      Tag = 100
      DisplayLabel = 'Ejaculaci'#243
      DisplayWidth = 3
      FieldName = 'C_Ejaculacio'
    end
    object Fili_C_Semen: TSmallintField
      Tag = 100
      DisplayLabel = 'Semen'
      DisplayWidth = 3
      FieldName = 'C_Semen'
    end
    object Fili_C_TractamentOrtopedic: TSmallintField
      Tag = 100
      DisplayLabel = 'Tractament Ortop'#233'dic'
      DisplayWidth = 3
      FieldName = 'C_TractamentOrtopedic'
    end
    object Fili_C_Deambulacio: TSmallintField
      Tag = 100
      DisplayLabel = 'Deambulaci'#243
      DisplayWidth = 3
      FieldName = 'C_Deambulacio'
    end
    object Fili_C_Bitutors: TSmallintField
      Tag = 100
      DisplayLabel = 'Bitutors'
      DisplayWidth = 3
      FieldName = 'C_Bitutors'
    end
    object Fili_C_Ajudes: TSmallintField
      Tag = 100
      DisplayLabel = 'Ajudes'
      DisplayWidth = 3
      FieldName = 'C_Ajudes'
    end
    object Fili_C_DrenatgeUrinari: TSmallintField
      Tag = 100
      DisplayLabel = 'Drenatge Urinari'
      DisplayWidth = 3
      FieldName = 'C_DrenatgeUrinari'
    end
    object Fili_Alergies: TStringField
      Tag = 100
      DisplayWidth = 250
      FieldName = 'Alergies'
      Size = 250
    end
    object Fili_Data_Contacte: TDateTimeField
      Tag = 100
      DisplayLabel = '1'#186' Contacte'
      DisplayWidth = 11
      FieldName = 'Data_Contacte'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Fili_Data_UltimContacte: TDateTimeField
      Tag = 100
      DisplayLabel = 'Ultim Contacte'
      DisplayWidth = 11
      FieldName = 'Data_UltimContacte'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Fili_Ultima1: TDateTimeField
      Tag = 100
      DisplayWidth = 11
      FieldName = 'Ultima1'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Fili_AnticsTractaments: TMemoField
      Tag = 100
      DisplayLabel = 'Antics Tractaments'
      DisplayWidth = 1
      FieldName = 'AnticsTractaments'
      BlobType = ftMemo
      Size = 1
    end
    object Fili_C_DIAGNOSTICNEUROLOGIC: TStringField
      Tag = 100
      DisplayLabel = 'Codi Diag.Neurol'#243'gic'
      DisplayWidth = 15
      FieldName = 'C_DIAGNOSTICNEUROLOGIC'
      Size = 15
    end
    object Fili_N_DIAGNOSTICNEUROLOGIC: TStringField
      Tag = 100
      DisplayLabel = 'Diag.Neurol'#243'gic'
      DisplayWidth = 40
      FieldName = 'N_DIAGNOSTICNEUROLOGIC'
      Size = 40
    end
    object Fili_C_Dieta: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi Dieta'
      DisplayWidth = 2
      FieldName = 'C_Dieta'
    end
    object Fili_Obs_Dieta: TStringField
      Tag = 100
      DisplayLabel = 'Observacions Dieta'
      DisplayWidth = 40
      FieldName = 'Obs_Dieta'
      Size = 40
    end
    object Fili_CONSENTIMENT: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Consentiment'
      Size = 1
    end
    object Fili_Voluntats: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Voluntats'
      Size = 1
    end
    object Fili_ConsentimentInf: TStringField
      Tag = 100
      DisplayLabel = 'Consentiment Informat'
      DisplayWidth = 40
      FieldName = 'ConsentimentInf'
      Size = 40
    end
    object Fili_Donant: TStringField
      Tag = 100
      DisplayLabel = #201's donant d'#39#242'rgans'
      DisplayWidth = 1
      FieldName = 'Donant'
      Size = 1
    end
    object Fili_RCP: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'RCP'
      Size = 1
    end
    object Fili_Glasgow: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Glasgow'
    end
    object Fili_PesCadira: TFloatField
      Tag = 100
      DisplayLabel = 'Pes Cadira'
      DisplayWidth = 13
      FieldName = 'PesCadira'
      DisplayFormat = '#,##0.###;; '
    end
    object Fili_NIHSS: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'NIHSS'
    end
    object Fili_C_CAUSA: TSmallintField
      Tag = 100
      DisplayLabel = 'Causa UM'
      DisplayWidth = 8
      FieldName = 'C_CAUSA'
      DisplayFormat = '#,##0;; '
    end
    object Fili_C_Causa_Detall: TSmallintField
      Tag = 100
      DisplayLabel = 'Causa detallada UM'
      DisplayWidth = 8
      FieldName = 'C_Causa_Detall'
      DisplayFormat = '#,##0;; '
    end
    object Fili_CAUSA_ALTRES: TStringField
      Tag = 100
      DisplayLabel = 'Altres causes'
      DisplayWidth = 30
      FieldName = 'CAUSA_ALTRES'
      Size = 30
    end
    object Fili_UM_ANTIGA: TSmallintField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'UM_ANTIGA'
    end
    object Fili_Dies_APT: TIntegerField
      Tag = 100
      DisplayLabel = 'Dies APT'
      DisplayWidth = 8
      FieldName = 'Dies_APT'
    end
    object Fili_Previrnec: TIntegerField
      Tag = 100
      DisplayLabel = 'GNPT'
      DisplayWidth = 8
      FieldName = 'Previrnec'
      DisplayFormat = '#,##0;; '
    end
    object Fili_c_Lateralitat: TSmallintField
      Tag = 100
      DisplayLabel = 'Lateralitat'
      DisplayWidth = 3
      FieldName = 'c_Lateralitat'
    end
    object Fili_G_DeficitNeurologic: TStringField
      Tag = 100
      DisplayLabel = 'D'#232'ficit neurol'#242'gic'
      DisplayWidth = 15
      FieldName = 'G_DeficitNeurologic'
      Size = 15
    end
    object Fili_G_EfecteTarda: TStringField
      Tag = 100
      DisplayLabel = 'Efecte tard'#224' (seq'#252'ela)'
      DisplayWidth = 15
      FieldName = 'G_EfecteTarda'
      Size = 15
    end
    object Fili_Incapacitat: TStringField
      Tag = 100
      DisplayLabel = 'Incapacitat?'
      DisplayWidth = 1
      FieldName = 'Incapacitat'
      Size = 1
    end
    object Fili_Incapacitat_Tutor: TStringField
      Tag = 100
      DisplayLabel = 'Incapacitat Tutor'
      DisplayWidth = 40
      FieldName = 'Incapacitat_Tutor'
      Size = 40
    end
    object Fili_Incapacitat_Telefon: TStringField
      Tag = 100
      DisplayLabel = 'Incapacitat Tel'#232'fon'
      DisplayWidth = 30
      FieldName = 'Incapacitat_Telefon'
      Size = 30
    end
    object Fili_LleiDEP: TSmallintField
      Tag = 100
      DisplayLabel = 'Llei de depend'#232'ncia'
      DisplayWidth = 3
      FieldName = 'LleiDEP'
    end
    object Fili_RIC: TStringField
      Tag = 100
      DisplayWidth = 15
      FieldName = 'RIC'
      Size = 15
    end
    object Fili_GLF: TStringField
      Tag = 100
      DisplayLabel = 'Grup de limitaci'#243' funcional'
      DisplayWidth = 15
      FieldName = 'GLF'
      Size = 15
    end
    object Fili_C_HOSPITAL: TSmallintField
      Tag = 100
      DisplayLabel = 'Hospital primera atencio'
      DisplayWidth = 8
      FieldName = 'C_HOSPITAL'
    end
    object Fili_C_EXITUS: TStringField
      Tag = 100
      DisplayLabel = 'Causa de la mort'
      DisplayWidth = 15
      FieldName = 'C_EXITUS'
      Size = 15
    end
    object Fili_MR: TStringField
      Tag = 100
      DisplayLabel = 'Microorganisme Multiresisten'
      DisplayWidth = 1
      FieldName = 'MR'
      Size = 1
    end
    object Fili_T_DOC: TStringField
      Tag = 100
      DisplayLabel = 'Tipus de document'
      DisplayWidth = 1
      FieldName = 'T_DOC'
      Size = 1
    end
    object Fili_CRITIC: TStringField
      Tag = 100
      DisplayLabel = #201's cr'#237'tic'
      DisplayWidth = 1
      FieldName = 'CRITIC'
      Size = 1
    end
    object Fili_Severitat: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Severitat'
    end
    object Fili_Correspondencia: TStringField
      Tag = 100
      DisplayLabel = 'Rebre correspond'#232'ncia'
      DisplayWidth = 1
      FieldName = 'CORRESPONDENCIA'
      Size = 1
    end
    object Fili_Impagat: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Impagat'
      Size = 1
    end
    object Fili_SNS: TStringField
      Tag = 100
      DisplayLabel = 'N'#250'm. del Servicio Nacional de Salud'
      DisplayWidth = 25
      FieldName = 'SNS'
      Size = 25
    end
    object Fili_PAIS_NAIX: TStringField
      Tag = 100
      DisplayLabel = 'Pais naixement'
      DisplayWidth = 3
      FieldName = 'PAIS_NAIX'
      Size = 3
    end
    object Fili_Nivell_cobertura: TSmallintField
      Tag = 100
      DisplayLabel = 'Nivell de cobertura RCA'
      DisplayWidth = 3
      FieldName = 'Nivell_cobertura'
    end
    object Fili_CCAA: TStringField
      Tag = 100
      DisplayLabel = 'Comunitat autnoma'
      DisplayWidth = 15
      FieldName = 'CCAA'
      Size = 15
    end
    object Fili_PAIS_DOC: TStringField
      Tag = 100
      DisplayLabel = 'Pais document'
      DisplayWidth = 3
      FieldName = 'PAIS_DOC'
      Size = 3
    end
    object Fili_SMS: TStringField
      Tag = 100
      DisplayLabel = 'Rebre SMS'
      DisplayWidth = 1
      FieldName = 'SMS'
      Size = 1
    end
    object Fili_REVISTA: TStringField
      Tag = 100
      DisplayLabel = 'Rebre REVISTA'
      DisplayWidth = 1
      FieldName = 'REVISTA'
      Size = 1
    end
    object Fili_LMS_Activitat: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data registre LMS_Activitat'
      DisplayWidth = 11
      FieldName = 'LMS_Activitat'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object Fili_RISC_SUICIDI: TStringField
      Tag = 100
      DisplayLabel = 'Risc de su'#239'cidi'
      DisplayWidth = 1
      FieldName = 'RISC_SUICIDI'
      Size = 1
    end
    object Fili_LMS_REGISTRE: TIntegerField
      Tag = 100
      DisplayLabel = 'LMS registre'
      DisplayWidth = 8
      FieldName = 'LMS_REGISTRE'
      DisplayFormat = '#,##0;; '
    end
    object Fili_VersioCIM: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldName = 'VersioCIM'
      DisplayFormat = '#,##0;; '
    end
    object Fili_VersioCIM_G: TIntegerField
      Tag = 100
      DisplayLabel = 'Versi'#243' CIM SubCodi'
      DisplayWidth = 8
      FieldName = 'VersioCIM_G'
      DisplayFormat = '#,##0;; '
    end
    object Fili_Hora_Dinar: TStringField
      Tag = 100
      DisplayLabel = 'Hora dinar'
      DisplayWidth = 5
      FieldName = 'Hora_Dinar'
      EditMask = '!99:99;1; '
      Size = 5
    end
    object Fili_C_Ubicacio_Dinar: TSmallintField
      Tag = 100
      DisplayLabel = 'Ubicaci'#243' dinar'
      DisplayWidth = 3
      FieldName = 'C_Ubicacio_Dinar'
    end
    object Fili_Autoritza_llit: TStringField
      Tag = 100
      DisplayLabel = 'Autoritza llit'
      DisplayWidth = 1
      FieldName = 'Autoritza_llit'
      Size = 1
    end
    object Fili_Autoritza_enquestes: TStringField
      Tag = 100
      DisplayLabel = 'Autoritza enquestes'
      DisplayWidth = 1
      FieldName = 'Autoritza_enquestes'
      Size = 1
    end
    object Fili_Autoritza_investigacio: TStringField
      Tag = 100
      DisplayLabel = 'Autoritza projectes investigaci'#243
      DisplayWidth = 1
      FieldName = 'Autoritza_investigacio'
      Size = 1
    end
    object Fili_HCE_DEDUPE: TIntegerField
      Tag = 100
      DisplayLabel = 'HCE evitar duplicats'
      DisplayWidth = 8
      FieldName = 'HCE_DEDUPE'
      DisplayFormat = '#,##0;; '
    end
    object Fili_C0_0: TStringField
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
    object Fili_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Via'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TipusVia_N_Via'
      LookupKeyFields = 'N_Via'
      KeyFields = 'TipusVia'
      Calculated = True
    end
    object Fili_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Via2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TipusVia_N_Via2'
      LookupKeyFields = 'N_Via2'
      KeyFields = 'TipusVia'
      Calculated = True
    end
    object Fili_C1_0: TStringField
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
    object Fili_C1_1: TStringField
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
    object Fili_C1_2: TStringField
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
    object Fili_C2_0: TStringField
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
    object Fili_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Catala'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'EstatCivil_N_Estat'
      LookupKeyFields = 'N_Estat'
      KeyFields = 'EstatCivil'
      Calculated = True
    end
    object Fili_C3_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Idioma_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Idioma'
      Calculated = True
    end
    object Fili_C3_1: TStringField
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
    object Fili_C3_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Idioma_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Idioma'
      Calculated = True
    end
    object Fili_C3_3: TStringField
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
    object Fili_C3_4: TStringField
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
    object Fili_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Idioma_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Idioma'
      Calculated = True
    end
    object Fili_C4_0: TIntegerField
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
    object Fili_C4_1: TIntegerField
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
    object Fili_C4_2: TStringField
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
    object Fili_C4_3: TStringField
      Tag = 101
      DisplayLabel = '1'#186' Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Parent_COGNOM1'
      LookupKeyFields = 'COGNOM1'
      KeyFields = 'Parent'
      Calculated = True
    end
    object Fili_C4_4: TStringField
      Tag = 101
      DisplayLabel = '2'#186' Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Parent_COGNOM2'
      LookupKeyFields = 'COGNOM2'
      KeyFields = 'Parent'
      Calculated = True
    end
    object Fili_C5_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Unitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object Fili_C5_1: TStringField
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
    object Fili_C5_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Unitat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object Fili_C5_3: TStringField
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
    object Fili_C5_4: TStringField
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
    object Fili_C5_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Unitat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object Fili_C6_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'ClasAnat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'ClasAnat'
      Calculated = True
    end
    object Fili_C6_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'ClasAnat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'ClasAnat'
      Size = 40
      Calculated = True
    end
    object Fili_C6_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'ClasAnat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'ClasAnat'
      Calculated = True
    end
    object Fili_C6_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'ClasAnat_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'ClasAnat'
      Size = 40
      Calculated = True
    end
    object Fili_C6_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'ClasAnat_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'ClasAnat'
      Size = 10
      Calculated = True
    end
    object Fili_C6_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'ClasAnat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'ClasAnat'
      Calculated = True
    end
    object Fili_C7_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'FracVert_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'FracVert'
      Calculated = True
    end
    object Fili_C7_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'FracVert_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'FracVert'
      Size = 40
      Calculated = True
    end
    object Fili_C7_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'FracVert_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'FracVert'
      Calculated = True
    end
    object Fili_C7_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'FracVert_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'FracVert'
      Size = 40
      Calculated = True
    end
    object Fili_C7_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'FracVert_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'FracVert'
      Size = 10
      Calculated = True
    end
    object Fili_C7_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'FracVert_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'FracVert'
      Calculated = True
    end
    object Fili_C8_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Bufeta_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Bufeta'
      Calculated = True
    end
    object Fili_C8_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Bufeta_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Bufeta'
      Size = 40
      Calculated = True
    end
    object Fili_C8_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Bufeta_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Bufeta'
      Calculated = True
    end
    object Fili_C8_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Bufeta_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Bufeta'
      Size = 40
      Calculated = True
    end
    object Fili_C8_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Bufeta_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Bufeta'
      Size = 10
      Calculated = True
    end
    object Fili_C8_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Bufeta_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Bufeta'
      Calculated = True
    end
    object Fili_C9_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Bipedestacio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Bipedestacio'
      Calculated = True
    end
    object Fili_C9_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Bipedestacio_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Bipedestacio'
      Size = 40
      Calculated = True
    end
    object Fili_C9_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Bipedestacio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Bipedestacio'
      Calculated = True
    end
    object Fili_C9_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Bipedestacio_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Bipedestacio'
      Size = 40
      Calculated = True
    end
    object Fili_C9_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Bipedestacio_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Bipedestacio'
      Size = 10
      Calculated = True
    end
    object Fili_C9_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Bipedestacio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Bipedestacio'
      Calculated = True
    end
    object Fili_C10_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'InfUri_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'InfUri'
      Calculated = True
    end
    object Fili_C10_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'InfUri_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'InfUri'
      Size = 40
      Calculated = True
    end
    object Fili_C10_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'InfUri_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'InfUri'
      Calculated = True
    end
    object Fili_C10_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'InfUri_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'InfUri'
      Size = 40
      Calculated = True
    end
    object Fili_C10_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'InfUri_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'InfUri'
      Size = 10
      Calculated = True
    end
    object Fili_C10_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'InfUri_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'InfUri'
      Calculated = True
    end
    object Fili_C11_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'DisNeuro_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'DisNeuro'
      Calculated = True
    end
    object Fili_C11_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DisNeuro_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'DisNeuro'
      Size = 40
      Calculated = True
    end
    object Fili_C11_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'DisNeuro_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'DisNeuro'
      Calculated = True
    end
    object Fili_C11_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DisNeuro_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'DisNeuro'
      Size = 40
      Calculated = True
    end
    object Fili_C11_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'DisNeuro_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'DisNeuro'
      Size = 10
      Calculated = True
    end
    object Fili_C11_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'DisNeuro_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'DisNeuro'
      Calculated = True
    end
    object Fili_C12_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Cadira_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Cadira'
      Calculated = True
    end
    object Fili_C12_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Cadira_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Cadira'
      Size = 40
      Calculated = True
    end
    object Fili_C12_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Cadira_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Cadira'
      Calculated = True
    end
    object Fili_C12_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Cadira_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Cadira'
      Size = 40
      Calculated = True
    end
    object Fili_C12_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Cadira_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Cadira'
      Size = 10
      Calculated = True
    end
    object Fili_C12_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Cadira_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Cadira'
      Calculated = True
    end
    object Fili_C13_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'FuncSexual_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'FuncSexual'
      Calculated = True
    end
    object Fili_C13_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'FuncSexual_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'FuncSexual'
      Size = 40
      Calculated = True
    end
    object Fili_C13_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'FuncSexual_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'FuncSexual'
      Calculated = True
    end
    object Fili_C13_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'FuncSexual_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'FuncSexual'
      Size = 40
      Calculated = True
    end
    object Fili_C13_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'FuncSexual_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'FuncSexual'
      Size = 10
      Calculated = True
    end
    object Fili_C13_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'FuncSexual_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'FuncSexual'
      Calculated = True
    end
    object Fili_C14_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Ereccio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Ereccio'
      Calculated = True
    end
    object Fili_C14_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Ereccio_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Ereccio'
      Size = 40
      Calculated = True
    end
    object Fili_C14_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Ereccio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Ereccio'
      Calculated = True
    end
    object Fili_C14_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Ereccio_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Ereccio'
      Size = 40
      Calculated = True
    end
    object Fili_C14_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Ereccio_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Ereccio'
      Size = 10
      Calculated = True
    end
    object Fili_C14_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Ereccio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Ereccio'
      Calculated = True
    end
    object Fili_C15_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Ejaculacio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Ejaculacio'
      Calculated = True
    end
    object Fili_C15_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Ejaculacio_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Ejaculacio'
      Size = 40
      Calculated = True
    end
    object Fili_C15_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Ejaculacio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Ejaculacio'
      Calculated = True
    end
    object Fili_C15_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Ejaculacio_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Ejaculacio'
      Size = 40
      Calculated = True
    end
    object Fili_C15_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Ejaculacio_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Ejaculacio'
      Size = 10
      Calculated = True
    end
    object Fili_C15_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Ejaculacio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Ejaculacio'
      Calculated = True
    end
    object Fili_C16_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Semen_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Semen'
      Calculated = True
    end
    object Fili_C16_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Semen_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Semen'
      Size = 40
      Calculated = True
    end
    object Fili_C16_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Semen_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Semen'
      Calculated = True
    end
    object Fili_C16_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Semen_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Semen'
      Size = 40
      Calculated = True
    end
    object Fili_C16_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Semen_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Semen'
      Size = 10
      Calculated = True
    end
    object Fili_C16_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Semen_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Semen'
      Calculated = True
    end
    object Fili_C17_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TracOrto_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TracOrto'
      Calculated = True
    end
    object Fili_C17_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TracOrto_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'TracOrto'
      Size = 40
      Calculated = True
    end
    object Fili_C17_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TracOrto_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TracOrto'
      Calculated = True
    end
    object Fili_C17_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'TracOrto_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'TracOrto'
      Size = 40
      Calculated = True
    end
    object Fili_C17_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TracOrto_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'TracOrto'
      Size = 10
      Calculated = True
    end
    object Fili_C17_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TracOrto_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TracOrto'
      Calculated = True
    end
    object Fili_C18_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Deambulacio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Deambulacio'
      Calculated = True
    end
    object Fili_C18_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Deambulacio_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Deambulacio'
      Size = 40
      Calculated = True
    end
    object Fili_C18_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Deambulacio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Deambulacio'
      Calculated = True
    end
    object Fili_C18_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Deambulacio_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Deambulacio'
      Size = 40
      Calculated = True
    end
    object Fili_C18_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Deambulacio_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Deambulacio'
      Size = 10
      Calculated = True
    end
    object Fili_C18_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Deambulacio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Deambulacio'
      Calculated = True
    end
    object Fili_C19_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Bitutors_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Bitutors'
      Calculated = True
    end
    object Fili_C19_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Bitutors_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Bitutors'
      Size = 40
      Calculated = True
    end
    object Fili_C19_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Bitutors_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Bitutors'
      Calculated = True
    end
    object Fili_C19_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Bitutors_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Bitutors'
      Size = 40
      Calculated = True
    end
    object Fili_C19_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Bitutors_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Bitutors'
      Size = 10
      Calculated = True
    end
    object Fili_C19_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Bitutors_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Bitutors'
      Calculated = True
    end
    object Fili_C20_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Ajudes_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Ajudes'
      Calculated = True
    end
    object Fili_C20_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Ajudes_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Ajudes'
      Size = 40
      Calculated = True
    end
    object Fili_C20_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Ajudes_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Ajudes'
      Calculated = True
    end
    object Fili_C20_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Ajudes_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Ajudes'
      Size = 40
      Calculated = True
    end
    object Fili_C20_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Ajudes_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Ajudes'
      Size = 10
      Calculated = True
    end
    object Fili_C20_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Ajudes_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Ajudes'
      Calculated = True
    end
    object Fili_C21_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'DrenUri_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'DrenUri'
      Calculated = True
    end
    object Fili_C21_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DrenUri_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'DrenUri'
      Size = 40
      Calculated = True
    end
    object Fili_C21_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'DrenUri_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'DrenUri'
      Calculated = True
    end
    object Fili_C21_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DrenUri_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'DrenUri'
      Size = 40
      Calculated = True
    end
    object Fili_C21_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'DrenUri_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'DrenUri'
      Size = 10
      Calculated = True
    end
    object Fili_C21_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'DrenUri_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'DrenUri'
      Calculated = True
    end
    object Fili_C22_0: TStringField
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
    object Fili_C22_1: TStringField
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
    object Fili_C22_2: TStringField
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
    object Fili_C22_3: TStringField
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
    object Fili_C23_0: TStringField
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
    object Fili_C23_1: TStringField
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
    object Fili_C23_2: TStringField
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
    object Fili_C23_3: TStringField
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
    object Fili_C24_0: TStringField
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
    object Fili_C24_1: TStringField
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
    object Fili_C25_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Dieta_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Dieta'
      Calculated = True
    end
    object Fili_C25_1: TStringField
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
    object Fili_C25_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Dieta_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Dieta'
      Calculated = True
    end
    object Fili_C25_3: TStringField
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
    object Fili_C25_4: TStringField
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
    object Fili_C25_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Dieta_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Dieta'
      Calculated = True
    end
    object Fili_C26_0: TSmallintField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'UnitatMedica_C_UNITATM'
      LookupKeyFields = 'C_UNITATM'
      KeyFields = 'UnitatMedica'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Fili_C26_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'UnitatMedica_N_UNITATM'
      LookupKeyFields = 'N_UNITATM'
      KeyFields = 'UnitatMedica'
      Size = 30
      Calculated = True
    end
    object Fili_C26_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat Administrativa'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'UnitatMedica_C_UNITATA'
      LookupKeyFields = 'C_UNITATA'
      KeyFields = 'UnitatMedica'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Fili_C26_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat RM'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'UnitatMedica_C_UNITATRM'
      LookupKeyFields = 'C_UNITATRM'
      KeyFields = 'UnitatMedica'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Fili_C26_4: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'UnitatMedica_BAIXA'
      LookupKeyFields = 'BAIXA'
      KeyFields = 'UnitatMedica'
      Size = 1
      Calculated = True
    end
    object Fili_C26_5: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'UnitatMedica_C_GRUP'
      LookupKeyFields = 'C_GRUP'
      KeyFields = 'UnitatMedica'
      Size = 1
      Calculated = True
    end
    object Fili_C26_6: TSmallintField
      Tag = 101
      DisplayLabel = 'Diagnostic_UM'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'UnitatMedica_Diagnostic_UM'
      LookupKeyFields = 'Diagnostic_UM'
      KeyFields = 'UnitatMedica'
      Calculated = True
    end
    object Fili_C27_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'OrigenUM_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'OrigenUM'
      Calculated = True
    end
    object Fili_C27_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'OrigenUM_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'OrigenUM'
      Size = 40
      Calculated = True
    end
    object Fili_C27_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'OrigenUM_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'OrigenUM'
      Calculated = True
    end
    object Fili_C27_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'OrigenUM_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'OrigenUM'
      Size = 40
      Calculated = True
    end
    object Fili_C27_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'OrigenUM_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'OrigenUM'
      Size = 10
      Calculated = True
    end
    object Fili_C27_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'OrigenUM_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'OrigenUM'
      Calculated = True
    end
    object Fili_C28_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'UMantiga_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'UMantiga'
      Calculated = True
    end
    object Fili_C28_1: TStringField
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
    object Fili_C28_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'UMantiga_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'UMantiga'
      Calculated = True
    end
    object Fili_C28_3: TStringField
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
    object Fili_C28_4: TStringField
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
    object Fili_C28_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'UMantiga_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'UMantiga'
      Calculated = True
    end
    object Fili_C29_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Lateralitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Lateralitat'
      Calculated = True
    end
    object Fili_C29_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Lateralitat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Lateralitat'
      Size = 40
      Calculated = True
    end
    object Fili_C29_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Lateralitat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Lateralitat'
      Calculated = True
    end
    object Fili_C29_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Lateralitat_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Lateralitat'
      Size = 40
      Calculated = True
    end
    object Fili_C29_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Lateralitat_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Lateralitat'
      Size = 10
      Calculated = True
    end
    object Fili_C29_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Lateralitat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Lateralitat'
      Calculated = True
    end
    object Fili_C30_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'CausaUM_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'CausaUM'
      Calculated = True
    end
    object Fili_C30_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'CausaUM_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'CausaUM'
      Size = 40
      Calculated = True
    end
    object Fili_C30_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'CausaUM_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'CausaUM'
      Calculated = True
    end
    object Fili_C30_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'CausaUM_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'CausaUM'
      Size = 40
      Calculated = True
    end
    object Fili_C30_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'CausaUM_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'CausaUM'
      Size = 10
      Calculated = True
    end
    object Fili_C30_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CausaUM_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'CausaUM'
      Calculated = True
    end
    object Fili_C31_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'CausaDetUM_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'CausaDetUM'
      Calculated = True
    end
    object Fili_C31_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'CausaDetUM_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'CausaDetUM'
      Size = 40
      Calculated = True
    end
    object Fili_C31_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'CausaDetUM_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'CausaDetUM'
      Calculated = True
    end
    object Fili_C31_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'CausaDetUM_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'CausaDetUM'
      Size = 40
      Calculated = True
    end
    object Fili_C31_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'CausaDetUM_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'CausaDetUM'
      Size = 10
      Calculated = True
    end
    object Fili_C31_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CausaDetUM_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'CausaDetUM'
      Calculated = True
    end
    object Fili_C32_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'deficitneuro'
      Size = 15
      Calculated = True
    end
    object Fili_C32_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'deficitneuro'
      Size = 255
      Calculated = True
    end
    object Fili_C32_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'deficitneuro'
      Size = 1
      Calculated = True
    end
    object Fili_C32_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'deficitneuro'
      Size = 1
      Calculated = True
    end
    object Fili_C32_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'deficitneuro'
      Size = 15
      Calculated = True
    end
    object Fili_C32_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'deficitneuro'
      Size = 90
      Calculated = True
    end
    object Fili_C32_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'deficitneuro'
      Size = 24
      Calculated = True
    end
    object Fili_C32_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'deficitneuro'
      Size = 40
      Calculated = True
    end
    object Fili_C32_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'deficitneuro'
      Size = 15
      Calculated = True
    end
    object Fili_C32_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'deficitneuro'
      Size = 15
      Calculated = True
    end
    object Fili_C32_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'deficitneuro'
      Calculated = True
    end
    object Fili_C32_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'deficitneuro'
      Size = 1
      Calculated = True
    end
    object Fili_C32_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'deficitneuro'
      Size = 1
      Calculated = True
    end
    object Fili_C32_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'deficitneuro'
      Size = 1
      Calculated = True
    end
    object Fili_C32_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'deficitneuro'
      Size = 15
      Calculated = True
    end
    object Fili_C32_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'deficitneuro'
      Size = 15
      Calculated = True
    end
    object Fili_C32_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'deficitneuro'
      Size = 50
      Calculated = True
    end
    object Fili_C32_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'deficitneuro_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'deficitneuro'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Fili_C33_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'efectetarda_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'efectetarda'
      Size = 15
      Calculated = True
    end
    object Fili_C33_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'efectetarda_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'efectetarda'
      Size = 255
      Calculated = True
    end
    object Fili_C33_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'efectetarda_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'efectetarda'
      Size = 1
      Calculated = True
    end
    object Fili_C33_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'efectetarda_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'efectetarda'
      Size = 1
      Calculated = True
    end
    object Fili_C33_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'efectetarda_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'efectetarda'
      Size = 15
      Calculated = True
    end
    object Fili_C33_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'efectetarda_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'efectetarda'
      Size = 90
      Calculated = True
    end
    object Fili_C33_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'efectetarda_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'efectetarda'
      Size = 24
      Calculated = True
    end
    object Fili_C33_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'efectetarda_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'efectetarda'
      Size = 40
      Calculated = True
    end
    object Fili_C33_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'efectetarda_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'efectetarda'
      Size = 15
      Calculated = True
    end
    object Fili_C33_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'efectetarda_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'efectetarda'
      Size = 15
      Calculated = True
    end
    object Fili_C33_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'efectetarda_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'efectetarda'
      Calculated = True
    end
    object Fili_C33_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'efectetarda_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'efectetarda'
      Size = 1
      Calculated = True
    end
    object Fili_C33_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'efectetarda_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'efectetarda'
      Size = 1
      Calculated = True
    end
    object Fili_C33_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'efectetarda_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'efectetarda'
      Size = 1
      Calculated = True
    end
    object Fili_C33_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'efectetarda_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'efectetarda'
      Size = 15
      Calculated = True
    end
    object Fili_C33_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'efectetarda_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'efectetarda'
      Size = 15
      Calculated = True
    end
    object Fili_C33_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'efectetarda_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'efectetarda'
      Size = 50
      Calculated = True
    end
    object Fili_C33_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'efectetarda_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'efectetarda'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Fili_C34_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'DEP_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'DEP'
      Calculated = True
    end
    object Fili_C34_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DEP_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'DEP'
      Size = 40
      Calculated = True
    end
    object Fili_C34_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'DEP_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'DEP'
      Calculated = True
    end
    object Fili_C34_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DEP_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'DEP'
      Size = 40
      Calculated = True
    end
    object Fili_C34_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'DEP_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'DEP'
      Size = 10
      Calculated = True
    end
    object Fili_C34_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'DEP_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'DEP'
      Calculated = True
    end
    object Fili_C35_0: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'RIC_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'RIC'
      Size = 15
      Calculated = True
    end
    object Fili_C35_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' RIC'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'RIC_N_RIC'
      LookupKeyFields = 'N_RIC'
      KeyFields = 'RIC'
      Size = 100
      Calculated = True
    end
    object Fili_C35_2: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'RIC_ESTAT'
      LookupKeyFields = 'ESTAT'
      KeyFields = 'RIC'
      Size = 1
      Calculated = True
    end
    object Fili_C36_0: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'GLF_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'GLF'
      Size = 15
      Calculated = True
    end
    object Fili_C36_1: TStringField
      Tag = 101
      DisplayLabel = 'Grup de limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'GLF_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'GLF'
      Size = 15
      Calculated = True
    end
    object Fili_C36_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' GLF'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'GLF_N_GLF'
      LookupKeyFields = 'N_GLF'
      KeyFields = 'GLF'
      Size = 100
      Calculated = True
    end
    object Fili_C36_3: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'GLF_ESTAT'
      LookupKeyFields = 'ESTAT'
      KeyFields = 'GLF'
      Size = 1
      Calculated = True
    end
    object Fili_C37_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Etiologia_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'Etiologia'
      Size = 15
      Calculated = True
    end
    object Fili_C37_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'Etiologia_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'Etiologia'
      Size = 255
      Calculated = True
    end
    object Fili_C37_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Etiologia_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'Etiologia'
      Size = 1
      Calculated = True
    end
    object Fili_C37_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Etiologia_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'Etiologia'
      Size = 1
      Calculated = True
    end
    object Fili_C37_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Etiologia_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'Etiologia'
      Size = 15
      Calculated = True
    end
    object Fili_C37_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'Etiologia_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'Etiologia'
      Size = 90
      Calculated = True
    end
    object Fili_C37_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Etiologia_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'Etiologia'
      Size = 24
      Calculated = True
    end
    object Fili_C37_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Etiologia_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'Etiologia'
      Size = 40
      Calculated = True
    end
    object Fili_C37_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Etiologia_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'Etiologia'
      Size = 15
      Calculated = True
    end
    object Fili_C37_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Etiologia_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'Etiologia'
      Size = 15
      Calculated = True
    end
    object Fili_C37_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Etiologia_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'Etiologia'
      Calculated = True
    end
    object Fili_C37_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Etiologia_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Etiologia'
      Size = 1
      Calculated = True
    end
    object Fili_C37_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Etiologia_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'Etiologia'
      Size = 1
      Calculated = True
    end
    object Fili_C37_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Etiologia_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'Etiologia'
      Size = 1
      Calculated = True
    end
    object Fili_C37_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Etiologia_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'Etiologia'
      Size = 15
      Calculated = True
    end
    object Fili_C37_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Etiologia_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'Etiologia'
      Size = 15
      Calculated = True
    end
    object Fili_C37_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Etiologia_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'Etiologia'
      Size = 50
      Calculated = True
    end
    object Fili_C37_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Etiologia_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'Etiologia'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Fili_C38_0: TSmallintField
      Tag = 101
      DisplayLabel = 'N'#186' Hospital'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Hospital_C_Hospital'
      LookupKeyFields = 'C_Hospital'
      KeyFields = 'Hospital'
      Calculated = True
    end
    object Fili_C38_1: TStringField
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
    object Fili_C38_2: TStringField
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
    object Fili_C38_3: TStringField
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
    object Fili_C38_4: TStringField
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
    object Fili_C38_5: TStringField
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
    object Fili_C38_6: TStringField
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
    object Fili_C38_7: TStringField
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
    object Fili_C39_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'IcdExitus'
      Size = 15
      Calculated = True
    end
    object Fili_C39_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'IcdExitus'
      Size = 255
      Calculated = True
    end
    object Fili_C39_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'IcdExitus'
      Size = 1
      Calculated = True
    end
    object Fili_C39_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'IcdExitus'
      Size = 1
      Calculated = True
    end
    object Fili_C39_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'IcdExitus'
      Size = 15
      Calculated = True
    end
    object Fili_C39_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'IcdExitus'
      Size = 90
      Calculated = True
    end
    object Fili_C39_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'IcdExitus'
      Size = 24
      Calculated = True
    end
    object Fili_C39_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'IcdExitus'
      Size = 40
      Calculated = True
    end
    object Fili_C39_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'IcdExitus'
      Size = 15
      Calculated = True
    end
    object Fili_C39_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'IcdExitus'
      Size = 15
      Calculated = True
    end
    object Fili_C39_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'IcdExitus'
      Calculated = True
    end
    object Fili_C39_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'IcdExitus'
      Size = 1
      Calculated = True
    end
    object Fili_C39_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'IcdExitus'
      Size = 1
      Calculated = True
    end
    object Fili_C39_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'IcdExitus'
      Size = 1
      Calculated = True
    end
    object Fili_C39_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'IcdExitus'
      Size = 15
      Calculated = True
    end
    object Fili_C39_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'IcdExitus'
      Size = 15
      Calculated = True
    end
    object Fili_C39_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'IcdExitus'
      Size = 50
      Calculated = True
    end
    object Fili_C39_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'IcdExitus_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'IcdExitus'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Fili_C40_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'CodiE'
      Size = 15
      Calculated = True
    end
    object Fili_C40_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'CodiE_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'CodiE'
      Size = 255
      Calculated = True
    end
    object Fili_C40_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'CodiE'
      Size = 1
      Calculated = True
    end
    object Fili_C40_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'CodiE'
      Size = 1
      Calculated = True
    end
    object Fili_C40_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'CodiE'
      Size = 15
      Calculated = True
    end
    object Fili_C40_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'CodiE_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'CodiE'
      Size = 90
      Calculated = True
    end
    object Fili_C40_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'CodiE_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'CodiE'
      Size = 24
      Calculated = True
    end
    object Fili_C40_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'CodiE_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'CodiE'
      Size = 40
      Calculated = True
    end
    object Fili_C40_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'CodiE'
      Size = 15
      Calculated = True
    end
    object Fili_C40_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'CodiE'
      Size = 15
      Calculated = True
    end
    object Fili_C40_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'CodiE'
      Calculated = True
    end
    object Fili_C40_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'CodiE'
      Size = 1
      Calculated = True
    end
    object Fili_C40_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'CodiE'
      Size = 1
      Calculated = True
    end
    object Fili_C40_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'CodiE'
      Size = 1
      Calculated = True
    end
    object Fili_C40_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'CodiE'
      Size = 15
      Calculated = True
    end
    object Fili_C40_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'CodiE'
      Size = 15
      Calculated = True
    end
    object Fili_C40_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'CodiE_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'CodiE'
      Size = 50
      Calculated = True
    end
    object Fili_C40_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'CodiE_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'CodiE'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Fili_C41_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE2_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'CodiE2'
      Size = 15
      Calculated = True
    end
    object Fili_C41_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'CodiE2_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'CodiE2'
      Size = 255
      Calculated = True
    end
    object Fili_C41_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE2_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'CodiE2'
      Size = 1
      Calculated = True
    end
    object Fili_C41_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE2_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'CodiE2'
      Size = 1
      Calculated = True
    end
    object Fili_C41_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE2_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'CodiE2'
      Size = 15
      Calculated = True
    end
    object Fili_C41_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 90
      FieldKind = fkCalculated
      FieldName = 'CodiE2_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'CodiE2'
      Size = 90
      Calculated = True
    end
    object Fili_C41_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'CodiE2_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'CodiE2'
      Size = 24
      Calculated = True
    end
    object Fili_C41_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'CodiE2_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'CodiE2'
      Size = 40
      Calculated = True
    end
    object Fili_C41_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE2_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'CodiE2'
      Size = 15
      Calculated = True
    end
    object Fili_C41_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE2_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'CodiE2'
      Size = 15
      Calculated = True
    end
    object Fili_C41_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE2_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'CodiE2'
      Calculated = True
    end
    object Fili_C41_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE2_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'CodiE2'
      Size = 1
      Calculated = True
    end
    object Fili_C41_12: TStringField
      Tag = 101
      DisplayLabel = #201's causa de mort'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE2_CausaMort'
      LookupKeyFields = 'CausaMort'
      KeyFields = 'CodiE2'
      Size = 1
      Calculated = True
    end
    object Fili_C41_13: TStringField
      Tag = 101
      DisplayLabel = 'POA exempt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'CodiE2_POA'
      LookupKeyFields = 'POA'
      KeyFields = 'CodiE2'
      Size = 1
      Calculated = True
    end
    object Fili_C41_14: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu H'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE2_DispositiuH'
      LookupKeyFields = 'DispositiuH'
      KeyFields = 'CodiE2'
      Size = 15
      Calculated = True
    end
    object Fili_C41_15: TStringField
      Tag = 101
      DisplayLabel = 'Dispositiu A'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CodiE2_DispositiuA'
      LookupKeyFields = 'DispositiuA'
      KeyFields = 'CodiE2'
      Size = 15
      Calculated = True
    end
    object Fili_C41_16: TStringField
      Tag = 101
      DisplayLabel = 'Freq'#252'ent per a...'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'CodiE2_C_Frequent'
      LookupKeyFields = 'C_Frequent'
      KeyFields = 'CodiE2'
      Size = 50
      Calculated = True
    end
    object Fili_C41_17: TIntegerField
      Tag = 101
      DisplayLabel = 'Versi'#243' CIM'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'CodiE2_VersioCIM'
      LookupKeyFields = 'VersioCIM'
      KeyFields = 'CodiE2'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object Fili_C42_0: TStringField
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
    object Fili_C42_1: TStringField
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
    object Fili_C43_0: TSmallintField
      Tag = 101
      DisplayLabel = 'Codi unitat m'#232'dica'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'severitat_C_UnitatMedica'
      LookupKeyFields = 'C_UnitatMedica'
      KeyFields = 'severitat'
      Calculated = True
    end
    object Fili_C43_1: TSmallintField
      Tag = 101
      DisplayLabel = 'Codi severitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'severitat_C_Severitat'
      LookupKeyFields = 'C_Severitat'
      KeyFields = 'severitat'
      Calculated = True
    end
    object Fili_C43_2: TStringField
      Tag = 101
      DisplayLabel = 'Desc. Severitat'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'severitat_N_Severitat'
      LookupKeyFields = 'N_Severitat'
      KeyFields = 'severitat'
      Size = 40
      Calculated = True
    end
    object Fili_C44_0: TStringField
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
    object Fili_C44_1: TStringField
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
    object Fili_C44_2: TStringField
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
    object Fili_C45_0: TStringField
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
    object Fili_C45_1: TStringField
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
    object Fili_C45_2: TStringField
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
    object Fili_C45_3: TStringField
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
    object Fili_C46_0: TStringField
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
    object Fili_C46_1: TStringField
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
    object Fili_C46_2: TStringField
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
    object Fili_C47_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'UbiDinar_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'UbiDinar'
      Calculated = True
    end
    object Fili_C47_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'UbiDinar_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'UbiDinar'
      Size = 40
      Calculated = True
    end
    object Fili_C47_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'UbiDinar_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'UbiDinar'
      Calculated = True
    end
    object Fili_C47_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'UbiDinar_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'UbiDinar'
      Size = 40
      Calculated = True
    end
    object Fili_C47_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'UbiDinar_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'UbiDinar'
      Size = 10
      Calculated = True
    end
    object Fili_C47_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'UbiDinar_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'UbiDinar'
      Calculated = True
    end
  end
  object dsFili: TDataSource
    DataSet = Fili
    Left = 162
    Top = 317
  end
  object bProces: THYSqlBrowse
    AfterScroll = bProcesAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsFili
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataPerfilsNR.ProcesNR
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'c_historia = :num_hist')
    Left = 24
    Top = 702
    object bProces_C_Proces: TIntegerField
      Tag = 100
      DisplayLabel = 'Proc'#233's'
      DisplayWidth = 8
      FieldName = 'C_Proces'
      DisplayFormat = '#,##0;; '
    end
    object bProces_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldName = 'C_Historia'
      DisplayFormat = '#,##0;; '
    end
    object bProces_Data_inici: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data inici'
      DisplayWidth = 10
      FieldName = 'Data_inici'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bProces_C_Motiu: TIntegerField
      Tag = 100
      DisplayLabel = 'Motiu d'#39'assist'#232'ncia'
      DisplayWidth = 8
      FieldName = 'C_Motiu'
    end
    object bProces_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'hist_NUM_HIST'
      LookupKeyFields = 'NUM_HIST'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom complet'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'hist_NomComplet'
      LookupKeyFields = 'NomComplet'
      KeyFields = 'hist'
      Size = 80
      Calculated = True
    end
    object bProces_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Sexe'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'hist_SEXO'
      LookupKeyFields = 'SEXO'
      KeyFields = 'hist'
      Size = 1
      Calculated = True
    end
    object bProces_C0_3: TIntegerField
      Tag = 101
      DisplayLabel = 'Edat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_Edat'
      LookupKeyFields = 'Edat'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'EsViu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'hist_EsViu'
      LookupKeyFields = 'EsViu'
      KeyFields = 'hist'
      Size = 1
      Calculated = True
    end
    object bProces_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'hist_APELLIDO1'
      LookupKeyFields = 'APELLIDO1'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'hist_APELLIDO2'
      LookupKeyFields = 'APELLIDO2'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'hist_NOMBRE'
      LookupKeyFields = 'NOMBRE'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_8: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'hist'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bProces_C0_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat M'#232'dica'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'hist_C_UnitatMedica'
      LookupKeyFields = 'C_UnitatMedica'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_10: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'hist_TELEFONO'
      LookupKeyFields = 'TELEFONO'
      KeyFields = 'hist'
      Size = 10
      Calculated = True
    end
    object bProces_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Tsi'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'hist_TSI'
      LookupKeyFields = 'TSI'
      KeyFields = 'hist'
      Size = 14
      Calculated = True
    end
    object bProces_C0_12: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Naix.'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'hist_FECHA_NAC'
      LookupKeyFields = 'FECHA_NAC'
      KeyFields = 'hist'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bProces_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'Residencia'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'hist_RESIDENCIA'
      LookupKeyFields = 'RESIDENCIA'
      KeyFields = 'hist'
      Size = 7
      Calculated = True
    end
    object bProces_C0_14: TStringField
      Tag = 101
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_PAIS'
      LookupKeyFields = 'PAIS'
      KeyFields = 'hist'
      Size = 3
      Calculated = True
    end
    object bProces_C0_15: TStringField
      Tag = 101
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'hist_PROVINCIA'
      LookupKeyFields = 'PROVINCIA'
      KeyFields = 'hist'
      Size = 44
      Calculated = True
    end
    object bProces_C0_16: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'hist_POBLACIO'
      LookupKeyFields = 'POBLACIO'
      KeyFields = 'hist'
      Size = 44
      Calculated = True
    end
    object bProces_C0_17: TSmallintField
      Tag = 101
      DisplayLabel = 'UM_ANTIGA'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_UM_ANTIGA'
      LookupKeyFields = 'UM_ANTIGA'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_18: TSmallintField
      Tag = 101
      DisplayLabel = 'Lateralitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_c_Lateralitat'
      LookupKeyFields = 'c_Lateralitat'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_19: TStringField
      Tag = 101
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'hist_ADRESA'
      LookupKeyFields = 'ADRESA'
      KeyFields = 'hist'
      Size = 80
      Calculated = True
    end
    object bProces_C0_20: TStringField
      Tag = 101
      DisplayLabel = 'Dni'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'hist_DNI'
      LookupKeyFields = 'DNI'
      KeyFields = 'hist'
      Size = 9
      Calculated = True
    end
    object bProces_C0_21: TStringField
      Tag = 101
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'hist_CODIGO'
      LookupKeyFields = 'CODIGO'
      KeyFields = 'hist'
      Size = 5
      Calculated = True
    end
    object bProces_C0_22: TStringField
      Tag = 101
      DisplayLabel = 'Lloc Naix.'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'hist_LUGAR_NAC'
      LookupKeyFields = 'LUGAR_NAC'
      KeyFields = 'hist'
      Size = 44
      Calculated = True
    end
    object bProces_C0_23: TStringField
      Tag = 101
      DisplayLabel = 'Estat Civil'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'hist_ESTADO_CIV'
      LookupKeyFields = 'ESTADO_CIV'
      KeyFields = 'hist'
      Size = 2
      Calculated = True
    end
    object bProces_C0_24: TSmallintField
      Tag = 101
      DisplayLabel = 'Hospital primera atencio'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'hist_C_HOSPITAL'
      LookupKeyFields = 'C_HOSPITAL'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_25: TStringField
      Tag = 101
      DisplayLabel = 'Causa de la mort'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'hist_C_EXITUS'
      LookupKeyFields = 'C_EXITUS'
      KeyFields = 'hist'
      Size = 15
      Calculated = True
    end
    object bProces_C0_26: TSmallintField
      Tag = 101
      DisplayLabel = 'Idioma'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'hist_IDIOMA'
      LookupKeyFields = 'IDIOMA'
      KeyFields = 'hist'
      Calculated = True
    end
    object bProces_C0_27: TStringField
      Tag = 101
      DisplayLabel = 'Tipus de document'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'hist_T_DOC'
      LookupKeyFields = 'T_DOC'
      KeyFields = 'hist'
      Size = 1
      Calculated = True
    end
    object bProces_C0_28: TStringField
      Tag = 101
      DisplayLabel = 'Soe'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'hist_SOE'
      LookupKeyFields = 'SOE'
      KeyFields = 'hist'
      Size = 12
      Calculated = True
    end
    object bProces_C0_29: TStringField
      Tag = 101
      DisplayLabel = 'N'#250'm. del Servicio Nacional de Salud'
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'hist_SNS'
      LookupKeyFields = 'SNS'
      KeyFields = 'hist'
      Size = 25
      Calculated = True
    end
    object bProces_C0_30: TIntegerField
      Tag = 101
      DisplayLabel = 'GNPT'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'hist_Previrnec'
      LookupKeyFields = 'Previrnec'
      KeyFields = 'hist'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bProces_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'motiu'
      Calculated = True
    end
    object bProces_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'motiu_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'motiu'
      Size = 40
      Calculated = True
    end
    object bProces_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'motiu_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'motiu'
      Calculated = True
    end
    object bProces_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'motiu_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'motiu'
      Size = 40
      Calculated = True
    end
    object bProces_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'motiu_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'motiu'
      Size = 10
      Calculated = True
    end
    object bProces_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'motiu_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'motiu'
      Calculated = True
    end
  end
  object dsProces: TDataSource
    DataSet = bProces
    Left = 68
    Top = 702
  end
  object bPautes: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataPerfilsNR.ProcesNR_Pautes
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsProces
    Left = 124
    Top = 702
    object bPautes_C_Proces: TIntegerField
      Tag = 100
      DisplayLabel = 'Proc'#233's'
      DisplayWidth = 8
      FieldName = 'C_Proces'
      DisplayFormat = '#,##0;; '
    end
    object bPautes_Data_Inici: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data inici'
      DisplayWidth = 10
      FieldName = 'Data_inici'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bPautes_ID: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object bPautes_C_Tractament: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'C_Tractament'
      DisplayFormat = '#,##0;; '
    end
    object bPautes_Data_Prealta: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data prealta'
      DisplayWidth = 10
      FieldName = 'Data_Prealta'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bPautes_Dies_Extra: TIntegerField
      Tag = 100
      DisplayLabel = 'Dies extra'
      DisplayWidth = 8
      FieldName = 'Dies_Extra'
      DisplayFormat = '#,##0;; '
    end
    object bPautes_Setmanes_5D: TSmallintField
      Tag = 100
      DisplayLabel = 'Setmanes 5D'
      DisplayWidth = 2
      FieldName = 'Setmanes_5D'
      DisplayFormat = '#,##0;; '
    end
    object bPautes_Setmanes_3D: TSmallintField
      Tag = 100
      DisplayLabel = 'Setmanes 3D'
      DisplayWidth = 2
      FieldName = 'Setmanes_3D'
    end
    object bPautes_C_Motiu: TSmallintField
      Tag = 100
      DisplayLabel = 'Motiu'
      DisplayWidth = 2
      FieldName = 'C_Motiu'
    end
    object bPautes_Comentari: TStringField
      Tag = 100
      DisplayWidth = 255
      FieldName = 'Comentari'
      Size = 255
    end
    object bPautes_Estat: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Estat'
      Size = 1
    end
    object bPautes_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object bPautes_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bPautes_C_Usuari_Susp: TStringField
      Tag = 100
      DisplayLabel = 'Usuari suspensi'#243
      DisplayWidth = 5
      FieldName = 'C_Usuari_Susp'
      Size = 5
    end
    object bPautes_Data_Susp: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data suspensi'#243
      DisplayWidth = 19
      FieldName = 'Data_Susp'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bPautes_SegueixProtocolDurada: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'SegueixProtocolDurada'
      Size = 1
    end
    object bPautes_SegueixProtocolFreq: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'SegueixProtocolFreq'
      Size = 1
    end
    object bPautes_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Proc'#233's'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Proces_C_Proces'
      LookupKeyFields = 'C_Proces'
      KeyFields = 'Proces'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPautes_C0_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Proces_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'Proces'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPautes_C0_2: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data inici'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Proces_Data_inici'
      LookupKeyFields = 'Data_inici'
      KeyFields = 'Proces'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      Calculated = True
    end
    object bPautes_C1_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'Tract'
      DisplayFormat = '#,###;; '
      Calculated = True
    end
    object bPautes_C1_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'Tract'
      Calculated = True
    end
    object bPautes_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'Tract'
      Size = 4
      Calculated = True
    end
    object bPautes_C1_3: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Ingr'#233's'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Tract_Data_Ingres'
      LookupKeyFields = 'Data_Ingres'
      KeyFields = 'Tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bPautes_C1_4: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Alta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Tract_Data_Alta'
      LookupKeyFields = 'Data_Alta'
      KeyFields = 'Tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bPautes_C1_5: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data PreAlta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Tract_Data_PreAlta'
      LookupKeyFields = 'Data_PreAlta'
      KeyFields = 'Tract'
      DisplayFormat = 'dd"/"mm"/"yyyy'
      Calculated = True
    end
    object bPautes_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Coordinador'
      LookupKeyFields = 'C_Coordinador'
      KeyFields = 'Tract'
      Size = 5
      Calculated = True
    end
    object bPautes_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_C_DiagnosticAlta'
      LookupKeyFields = 'C_DiagnosticAlta'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object bPautes_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Alta'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Tract_N_DiagnosticAlta'
      LookupKeyFields = 'N_DiagnosticAlta'
      KeyFields = 'Tract'
      Size = 40
      Calculated = True
    end
    object bPautes_C1_9: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Tract_PercentatgePacient'
      LookupKeyFields = 'PercentatgePacient'
      KeyFields = 'Tract'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object bPautes_C1_10: TStringField
      Tag = 101
      DisplayLabel = 'Refer'#232'ncia'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Tract_Referencia'
      LookupKeyFields = 'Referencia'
      KeyFields = 'Tract'
      Size = 40
      Calculated = True
    end
    object bPautes_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Tract_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'Tract'
      Size = 2
      Calculated = True
    end
    object bPautes_C1_12: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'Tract'
      Size = 3
      Calculated = True
    end
    object bPautes_C1_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'Tract'
      Size = 4
      Calculated = True
    end
    object bPautes_C1_14: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat Facturaci'#243
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Tract_C_EstatFac'
      LookupKeyFields = 'C_EstatFac'
      KeyFields = 'Tract'
      Calculated = True
    end
    object bPautes_C1_15: TSmallintField
      Tag = 101
      DisplayLabel = 'Vegada'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Tract_Vegada'
      LookupKeyFields = 'Vegada'
      KeyFields = 'Tract'
      Calculated = True
    end
    object bPautes_C1_16: TSmallintField
      Tag = 101
      DisplayLabel = 'Motiu'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Motiu'
      LookupKeyFields = 'C_Motiu'
      KeyFields = 'Tract'
      Calculated = True
    end
    object bPautes_C1_17: TStringField
      Tag = 101
      DisplayLabel = 'Fi de proc'#233's'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tract_Fi_Proces'
      LookupKeyFields = 'Fi_Proces'
      KeyFields = 'Tract'
      Size = 1
      Calculated = True
    end
    object bPautes_C1_18: TStringField
      Tag = 101
      DisplayLabel = 'Metge proc'#233's'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Tract_Metge_Proces'
      LookupKeyFields = 'Metge_Proces'
      KeyFields = 'Tract'
      Size = 5
      Calculated = True
    end
    object bPautes_C1_19: TStringField
      Tag = 101
      DisplayLabel = 'Planta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Planta'
      LookupKeyFields = 'C_Planta'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object bPautes_C1_20: TIntegerField
      Tag = 101
      DisplayLabel = 'Estat informe alta'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Tract_EstatInformeAlta'
      LookupKeyFields = 'EstatInformeAlta'
      KeyFields = 'Tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPautes_C1_21: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_C_DiagnosticIngres'
      LookupKeyFields = 'C_DiagnosticIngres'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object bPautes_C1_22: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_G_DiagnosticIngres'
      LookupKeyFields = 'G_DiagnosticIngres'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object bPautes_C1_23: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Ingr'#233's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Tract_N_DiagnosticIngres'
      LookupKeyFields = 'N_DiagnosticIngres'
      KeyFields = 'Tract'
      Size = 40
      Calculated = True
    end
    object bPautes_C1_24: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_G_DiagnosticAlta'
      LookupKeyFields = 'G_DiagnosticAlta'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object bPautes_C1_25: TStringField
      Tag = 101
      DisplayLabel = 'Residencia'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Tract_c_Residencia'
      LookupKeyFields = 'c_Residencia'
      KeyFields = 'Tract'
      Size = 10
      Calculated = True
    end
    object bPautes_C1_26: TStringField
      Tag = 101
      DisplayLabel = 'Resid'#232'ncia PADES'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Tract_N_RESIDENCIA'
      LookupKeyFields = 'N_RESIDENCIA'
      KeyFields = 'Tract'
      Size = 44
      Calculated = True
    end
    object bPautes_C1_27: TStringField
      Tag = 101
      DisplayLabel = 'Actua PADES'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tract_ACTUA_PADES'
      LookupKeyFields = 'ACTUA_PADES'
      KeyFields = 'Tract'
      Size = 1
      Calculated = True
    end
    object bPautes_C1_28: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Sinistre'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Tract_Data_Sinistre'
      LookupKeyFields = 'Data_Sinistre'
      KeyFields = 'Tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bPautes_C1_29: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi de Proc'#233's'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Proces'
      LookupKeyFields = 'C_Proces'
      KeyFields = 'Tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPautes_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'metges_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'metges'
      Size = 5
      Calculated = True
    end
    object bPautes_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metges_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'metges'
      Calculated = True
    end
    object bPautes_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'metges_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'metges'
      Size = 15
      Calculated = True
    end
    object bPautes_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'metges_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'metges'
      Size = 4
      Calculated = True
    end
    object bPautes_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metges_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'metges'
      Size = 2
      Calculated = True
    end
    object bPautes_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metges_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'metges'
      Size = 2
      Calculated = True
    end
    object bPautes_C2_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metges_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'metges'
      Size = 1
      Calculated = True
    end
    object bPautes_C2_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metges_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'metges'
      Calculated = True
    end
    object bPautes_C2_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metges_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'metges'
      Size = 1
      Calculated = True
    end
    object bPautes_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'metges_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'metges'
      Size = 40
      Calculated = True
    end
    object bPautes_C2_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metges_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'metges'
      Calculated = True
    end
    object bPautes_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metges_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'metges'
      Calculated = True
    end
    object bPautes_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metges_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'metges'
      Calculated = True
    end
    object bPautes_C2_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'metges_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'metges'
      Size = 6
      Calculated = True
    end
    object bPautes_C2_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'metges_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'metges'
      Size = 9
      Calculated = True
    end
    object bPautes_C2_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'metges_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'metges'
      Size = 250
      Calculated = True
    end
    object bPautes_C2_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metges_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'metges'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPautes_C2_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'metges_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'metges'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object bPautes_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'metges2_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'metges2'
      Size = 5
      Calculated = True
    end
    object bPautes_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metges2_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'metges2'
      Calculated = True
    end
    object bPautes_C3_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'metges2_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'metges2'
      Size = 15
      Calculated = True
    end
    object bPautes_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'metges2_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'metges2'
      Size = 4
      Calculated = True
    end
    object bPautes_C3_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metges2_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'metges2'
      Size = 2
      Calculated = True
    end
    object bPautes_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metges2_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'metges2'
      Size = 2
      Calculated = True
    end
    object bPautes_C3_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metges2_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'metges2'
      Size = 1
      Calculated = True
    end
    object bPautes_C3_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metges2_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'metges2'
      Calculated = True
    end
    object bPautes_C3_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metges2_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'metges2'
      Size = 1
      Calculated = True
    end
    object bPautes_C3_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'metges2_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'metges2'
      Size = 40
      Calculated = True
    end
    object bPautes_C3_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metges2_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'metges2'
      Calculated = True
    end
    object bPautes_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metges2_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'metges2'
      Calculated = True
    end
    object bPautes_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metges2_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'metges2'
      Calculated = True
    end
    object bPautes_C3_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'metges2_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'metges2'
      Size = 6
      Calculated = True
    end
    object bPautes_C3_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'metges2_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'metges2'
      Size = 9
      Calculated = True
    end
    object bPautes_C3_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'metges2_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'metges2'
      Size = 250
      Calculated = True
    end
    object bPautes_C3_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metges2_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'metges2'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPautes_C3_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'metges2_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'metges2'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object bPautes_C4_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'motiu'
      Calculated = True
    end
    object bPautes_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'motiu_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'motiu'
      Size = 40
      Calculated = True
    end
    object bPautes_C4_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'motiu_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'motiu'
      Calculated = True
    end
    object bPautes_C4_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'motiu_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'motiu'
      Size = 40
      Calculated = True
    end
    object bPautes_C4_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'motiu_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'motiu'
      Size = 10
      Calculated = True
    end
    object bPautes_C4_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'motiu_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'motiu'
      Calculated = True
    end
  end
  object dsPautes: TDataSource
    DataSet = bPautes
    Left = 168
    Top = 702
  end
  object bTorns: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataPerfilsNR.ProcesNR_Torns
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsProces
    Left = 217
    Top = 702
    object bTorns_C_Proces: TIntegerField
      Tag = 100
      DisplayLabel = 'Proc'#233's'
      DisplayWidth = 8
      FieldName = 'C_Proces'
      DisplayFormat = '#,##0;; '
    end
    object bTorns_Dia_Inici: TDateTimeField
      Tag = 100
      DisplayLabel = 'Dia inici'
      DisplayWidth = 10
      FieldName = 'Dia_Inici'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bTorns_Frequencia: TSmallintField
      Tag = 100
      DisplayLabel = 'Freq'#252#232'ncia'
      DisplayWidth = 2
      FieldName = 'Frequencia'
      DisplayFormat = '0"D";; '
    end
    object bTorns_Torn: TStringField
      Tag = 100
      DisplayWidth = 7
      FieldName = 'Torn'
      Size = 7
    end
    object bTorns_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object bTorns_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bTorns_ID: TIntegerField
      Tag = 100
      DisplayLabel = 'Identificador'
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object bTorns_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Proc'#233's'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'proces_C_Proces'
      LookupKeyFields = 'C_Proces'
      KeyFields = 'proces'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bTorns_C0_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'proces_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'proces'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bTorns_C0_2: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data inici'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'proces_Data_inici'
      LookupKeyFields = 'Data_inici'
      KeyFields = 'proces'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      Calculated = True
    end
    object bTorns_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'torn_CODI'
      LookupKeyFields = 'CODI'
      KeyFields = 'torn'
      Size = 7
      Calculated = True
    end
    object bTorns_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'torn_DESCRIPCIO'
      LookupKeyFields = 'DESCRIPCIO'
      KeyFields = 'torn'
      Size = 30
      Calculated = True
    end
    object bTorns_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' llarga'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'torn_DESC_LONG'
      LookupKeyFields = 'DESC_LONG'
      KeyFields = 'torn'
      Size = 100
      Calculated = True
    end
    object bTorns_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Torn'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'torn_Codi2'
      LookupKeyFields = 'Codi2'
      KeyFields = 'torn'
      Size = 7
      Calculated = True
    end
    object bTorns_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Freq'#252#232'ncia'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'torn_Frequencia'
      LookupKeyFields = 'Frequencia'
      KeyFields = 'torn'
      DisplayFormat = '0"D";; '
      Calculated = True
    end
    object bTorns_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'usuari_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'usuari'
      Size = 5
      Calculated = True
    end
    object bTorns_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bTorns_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'usuari_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'usuari'
      Size = 15
      Calculated = True
    end
    object bTorns_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'usuari_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'usuari'
      Size = 4
      Calculated = True
    end
    object bTorns_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'usuari'
      Size = 2
      Calculated = True
    end
    object bTorns_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'usuari'
      Size = 2
      Calculated = True
    end
    object bTorns_C2_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuari_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'usuari'
      Size = 1
      Calculated = True
    end
    object bTorns_C2_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuari_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bTorns_C2_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuari_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'usuari'
      Size = 1
      Calculated = True
    end
    object bTorns_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'usuari_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'usuari'
      Size = 40
      Calculated = True
    end
    object bTorns_C2_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bTorns_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bTorns_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bTorns_C2_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'usuari_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'usuari'
      Size = 6
      Calculated = True
    end
    object bTorns_C2_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'usuari_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'usuari'
      Size = 9
      Calculated = True
    end
    object bTorns_C2_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'usuari_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'usuari'
      Size = 250
      Calculated = True
    end
    object bTorns_C2_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuari_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'usuari'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bTorns_C2_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'usuari_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'usuari'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object bTorns_C3_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'freq_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'freq'
      Calculated = True
    end
    object bTorns_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'freq_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'freq'
      Size = 40
      Calculated = True
    end
    object bTorns_C3_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'freq_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'freq'
      Calculated = True
    end
    object bTorns_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'freq_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'freq'
      Size = 40
      Calculated = True
    end
    object bTorns_C3_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'freq_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'freq'
      Size = 10
      Calculated = True
    end
    object bTorns_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'freq_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'freq'
      Calculated = True
    end
  end
  object dsTorns: TDataSource
    DataSet = bTorns
    Left = 255
    Top = 702
  end
  object TractCodificacio: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCurs.Tract_Codificacio
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsTract
    Left = 188
    Top = 544
    object TractCodificacio_C_TRACTAMENT: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero de tractament'
      DisplayWidth = 8
      FieldName = 'C_TRACTAMENT'
      DisplayFormat = '#,##0;; '
    end
    object TractCodificacio_GRD: TIntegerField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'GRD'
      DisplayFormat = '#,##0;; '
    end
    object TractCodificacio_NivellSeveritat: TIntegerField
      Tag = 100
      DisplayLabel = 'Nivell Severitat'
      DisplayWidth = 1
      FieldName = 'NivellSeveritat'
      DisplayFormat = '#,##0;; '
    end
    object TractCodificacio_Pes: TStringField
      Tag = 100
      DisplayWidth = 30
      FieldName = 'Pes'
      Size = 30
    end
    object TractCodificacio_RiscMortalitat: TIntegerField
      Tag = 100
      DisplayLabel = 'Risc Mortalitat'
      DisplayWidth = 1
      FieldName = 'RiscMortalitat'
      DisplayFormat = '#,##0;; '
    end
    object TractCodificacio_CDM: TIntegerField
      Tag = 100
      DisplayLabel = 'Catagoria Major Diagn'#242'stica'
      DisplayWidth = 2
      FieldName = 'CDM'
      DisplayFormat = '#,##0;; '
    end
    object TractCodificacio_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'Tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object TractCodificacio_C0_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'Tract'
      Calculated = True
    end
    object TractCodificacio_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'Tract'
      Size = 4
      Calculated = True
    end
    object TractCodificacio_C0_3: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Ingr'#233's'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Tract_Data_Ingres'
      LookupKeyFields = 'Data_Ingres'
      KeyFields = 'Tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object TractCodificacio_C0_4: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Alta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Tract_Data_Alta'
      LookupKeyFields = 'Data_Alta'
      KeyFields = 'Tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object TractCodificacio_C0_5: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data PreAlta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Tract_Data_PreAlta'
      LookupKeyFields = 'Data_PreAlta'
      KeyFields = 'Tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object TractCodificacio_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Coordinador'
      LookupKeyFields = 'C_Coordinador'
      KeyFields = 'Tract'
      Size = 5
      Calculated = True
    end
    object TractCodificacio_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_C_DiagnosticAlta'
      LookupKeyFields = 'C_DiagnosticAlta'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object TractCodificacio_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Alta'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Tract_N_DiagnosticAlta'
      LookupKeyFields = 'N_DiagnosticAlta'
      KeyFields = 'Tract'
      Size = 40
      Calculated = True
    end
    object TractCodificacio_C0_9: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Tract_PercentatgePacient'
      LookupKeyFields = 'PercentatgePacient'
      KeyFields = 'Tract'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object TractCodificacio_C0_10: TStringField
      Tag = 101
      DisplayLabel = 'Refer'#232'ncia'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Tract_Referencia'
      LookupKeyFields = 'Referencia'
      KeyFields = 'Tract'
      Size = 40
      Calculated = True
    end
    object TractCodificacio_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Tract_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'Tract'
      Size = 2
      Calculated = True
    end
    object TractCodificacio_C0_12: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'Tract'
      Size = 3
      Calculated = True
    end
    object TractCodificacio_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'Tract'
      Size = 4
      Calculated = True
    end
    object TractCodificacio_C0_14: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat Facturaci'#243
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Tract_C_EstatFac'
      LookupKeyFields = 'C_EstatFac'
      KeyFields = 'Tract'
      Calculated = True
    end
    object TractCodificacio_C0_15: TSmallintField
      Tag = 101
      DisplayLabel = 'Vegada'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Tract_Vegada'
      LookupKeyFields = 'Vegada'
      KeyFields = 'Tract'
      Calculated = True
    end
    object TractCodificacio_C0_16: TSmallintField
      Tag = 101
      DisplayLabel = 'Motiu'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Motiu'
      LookupKeyFields = 'C_Motiu'
      KeyFields = 'Tract'
      Calculated = True
    end
    object TractCodificacio_C0_17: TStringField
      Tag = 101
      DisplayLabel = 'Fi de proc'#233's'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tract_Fi_Proces'
      LookupKeyFields = 'Fi_Proces'
      KeyFields = 'Tract'
      Size = 1
      Calculated = True
    end
    object TractCodificacio_C0_18: TStringField
      Tag = 101
      DisplayLabel = 'Metge proc'#233's'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Tract_Metge_Proces'
      LookupKeyFields = 'Metge_Proces'
      KeyFields = 'Tract'
      Size = 5
      Calculated = True
    end
    object TractCodificacio_C0_19: TStringField
      Tag = 101
      DisplayLabel = 'Planta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Planta'
      LookupKeyFields = 'C_Planta'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object TractCodificacio_C0_20: TIntegerField
      Tag = 101
      DisplayLabel = 'Estat informe alta'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Tract_EstatInformeAlta'
      LookupKeyFields = 'EstatInformeAlta'
      KeyFields = 'Tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object TractCodificacio_C0_21: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_C_DiagnosticIngres'
      LookupKeyFields = 'C_DiagnosticIngres'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object TractCodificacio_C0_22: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_G_DiagnosticIngres'
      LookupKeyFields = 'G_DiagnosticIngres'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object TractCodificacio_C0_23: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Ingr'#233's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Tract_N_DiagnosticIngres'
      LookupKeyFields = 'N_DiagnosticIngres'
      KeyFields = 'Tract'
      Size = 40
      Calculated = True
    end
    object TractCodificacio_C0_24: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Tract_G_DiagnosticAlta'
      LookupKeyFields = 'G_DiagnosticAlta'
      KeyFields = 'Tract'
      Size = 15
      Calculated = True
    end
    object TractCodificacio_C0_25: TStringField
      Tag = 101
      DisplayLabel = 'Residencia'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Tract_c_Residencia'
      LookupKeyFields = 'c_Residencia'
      KeyFields = 'Tract'
      Size = 10
      Calculated = True
    end
    object TractCodificacio_C0_26: TStringField
      Tag = 101
      DisplayLabel = 'Resid'#232'ncia PADES'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'Tract_N_RESIDENCIA'
      LookupKeyFields = 'N_RESIDENCIA'
      KeyFields = 'Tract'
      Size = 44
      Calculated = True
    end
    object TractCodificacio_C0_27: TStringField
      Tag = 101
      DisplayLabel = 'Actua PADES'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tract_ACTUA_PADES'
      LookupKeyFields = 'ACTUA_PADES'
      KeyFields = 'Tract'
      Size = 1
      Calculated = True
    end
    object TractCodificacio_C0_28: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Sinistre'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Tract_Data_Sinistre'
      LookupKeyFields = 'Data_Sinistre'
      KeyFields = 'Tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object TractCodificacio_C0_29: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi de Proc'#233's'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Tract_C_Proces'
      LookupKeyFields = 'C_Proces'
      KeyFields = 'Tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
  end
  object dsTractCodificacio: TDataSource
    DataSet = TractCodificacio
    Left = 276
    Top = 544
  end
  object tPermisos: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.PermisosSortida
    IndiceActivo = 'pk'
    CalcSimple = False
    AutoPost = False
    Padre = dsTract
    Left = 32
    Top = 608
    object tPermisos_c_permis: TIntegerField
      Tag = 100
      DisplayLabel = 'Permis Sortida'
      DisplayWidth = 10
      FieldName = 'c_permis'
    end
    object tPermisos_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 10
      FieldName = 'C_Tractament'
    end
    object tPermisos_C_Estat: TStringField
      Tag = 100
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldName = 'C_Estat'
      Size = 1
    end
    object tPermisos_Tipus: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tipus'
      Size = 1
    end
    object tPermisos_Motiu: TStringField
      Tag = 100
      DisplayWidth = 250
      FieldName = 'Motiu'
      Size = 250
    end
    object tPermisos_Autoritzacio: TStringField
      Tag = 100
      DisplayLabel = 'Autoritzaci'#243
      DisplayWidth = 250
      FieldName = 'Autoritzacio'
      Size = 250
    end
    object tPermisos_Ausencia: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Ausencia'
      Size = 1
    end
    object tPermisos_data_permis: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Sortida'
      DisplayWidth = 40
      FieldName = 'data_permis'
    end
    object tPermisos_hora_permis: TStringField
      Tag = 100
      DisplayLabel = 'Hora sortida'
      DisplayWidth = 5
      FieldName = 'hora_permis'
      Size = 5
    end
    object tPermisos_Permanent: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Permanent'
      Size = 1
    end
    object tPermisos_Horaentrada: TSmallintField
      Tag = 100
      DisplayLabel = 'Duraci'#243' sortida'
      DisplayWidth = 2
      FieldName = 'Horaentrada'
    end
    object tPermisos_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tract_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tPermisos_C0_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'tract'
      Calculated = True
    end
    object tPermisos_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'tract_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'tract'
      Size = 4
      Calculated = True
    end
    object tPermisos_C0_3: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Ingr'#233's'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_Ingres'
      LookupKeyFields = 'Data_Ingres'
      KeyFields = 'tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object tPermisos_C0_4: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Alta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_Alta'
      LookupKeyFields = 'Data_Alta'
      KeyFields = 'tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object tPermisos_C0_5: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data PreAlta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_PreAlta'
      LookupKeyFields = 'Data_PreAlta'
      KeyFields = 'tract'
      DisplayFormat = 'dd"/"mm"/"yyyy'
      Calculated = True
    end
    object tPermisos_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_C_Coordinador'
      LookupKeyFields = 'C_Coordinador'
      KeyFields = 'tract'
      Size = 5
      Calculated = True
    end
    object tPermisos_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_C_DiagnosticAlta'
      LookupKeyFields = 'C_DiagnosticAlta'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object tPermisos_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Alta'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tract_N_DiagnosticAlta'
      LookupKeyFields = 'N_DiagnosticAlta'
      KeyFields = 'tract'
      Size = 40
      Calculated = True
    end
    object tPermisos_C0_9: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_PercentatgePacient'
      LookupKeyFields = 'PercentatgePacient'
      KeyFields = 'tract'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object tPermisos_C0_10: TStringField
      Tag = 101
      DisplayLabel = 'Refer'#232'ncia'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tract_Referencia'
      LookupKeyFields = 'Referencia'
      KeyFields = 'tract'
      Size = 40
      Calculated = True
    end
    object tPermisos_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tract_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'tract'
      Size = 2
      Calculated = True
    end
    object tPermisos_C0_12: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'tract'
      Size = 3
      Calculated = True
    end
    object tPermisos_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'tract_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'tract'
      Size = 4
      Calculated = True
    end
    object tPermisos_C0_14: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat Facturaci'#243
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'tract_C_EstatFac'
      LookupKeyFields = 'C_EstatFac'
      KeyFields = 'tract'
      Calculated = True
    end
    object tPermisos_C0_15: TSmallintField
      Tag = 101
      DisplayLabel = 'Vegada'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_Vegada'
      LookupKeyFields = 'Vegada'
      KeyFields = 'tract'
      Calculated = True
    end
    object tPermisos_C0_16: TSmallintField
      Tag = 101
      DisplayLabel = 'Motiu'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_C_Motiu'
      LookupKeyFields = 'C_Motiu'
      KeyFields = 'tract'
      Calculated = True
    end
    object tPermisos_C0_17: TStringField
      Tag = 101
      DisplayLabel = 'Fi de proc'#233's'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tract_Fi_Proces'
      LookupKeyFields = 'Fi_Proces'
      KeyFields = 'tract'
      Size = 1
      Calculated = True
    end
    object tPermisos_C0_18: TStringField
      Tag = 101
      DisplayLabel = 'Metge proc'#233's'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_Metge_Proces'
      LookupKeyFields = 'Metge_Proces'
      KeyFields = 'tract'
      Size = 5
      Calculated = True
    end
    object tPermisos_C0_19: TStringField
      Tag = 101
      DisplayLabel = 'Planta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_C_Planta'
      LookupKeyFields = 'C_Planta'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object tPermisos_C0_20: TIntegerField
      Tag = 101
      DisplayLabel = 'Estat informe alta'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_EstatInformeAlta'
      LookupKeyFields = 'EstatInformeAlta'
      KeyFields = 'tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tPermisos_C0_21: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_C_DiagnosticIngres'
      LookupKeyFields = 'C_DiagnosticIngres'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object tPermisos_C0_22: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_G_DiagnosticIngres'
      LookupKeyFields = 'G_DiagnosticIngres'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object tPermisos_C0_23: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Ingr'#233's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tract_N_DiagnosticIngres'
      LookupKeyFields = 'N_DiagnosticIngres'
      KeyFields = 'tract'
      Size = 40
      Calculated = True
    end
    object tPermisos_C0_24: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_G_DiagnosticAlta'
      LookupKeyFields = 'G_DiagnosticAlta'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object tPermisos_C0_25: TStringField
      Tag = 101
      DisplayLabel = 'Residencia'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'tract_c_Residencia'
      LookupKeyFields = 'c_Residencia'
      KeyFields = 'tract'
      Size = 10
      Calculated = True
    end
    object tPermisos_C0_26: TStringField
      Tag = 101
      DisplayLabel = 'Resid'#232'ncia PADES'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'tract_N_RESIDENCIA'
      LookupKeyFields = 'N_RESIDENCIA'
      KeyFields = 'tract'
      Size = 44
      Calculated = True
    end
    object tPermisos_C0_27: TStringField
      Tag = 101
      DisplayLabel = 'Actua PADES'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tract_ACTUA_PADES'
      LookupKeyFields = 'ACTUA_PADES'
      KeyFields = 'tract'
      Size = 1
      Calculated = True
    end
    object tPermisos_C0_28: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Sinistre'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_Sinistre'
      LookupKeyFields = 'Data_Sinistre'
      KeyFields = 'tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object tPermisos_C0_29: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi de Proc'#233's'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tract_C_Proces'
      LookupKeyFields = 'C_Proces'
      KeyFields = 'tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object tPermisos_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'estat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'estat'
      Size = 1
      Calculated = True
    end
    object tPermisos_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'estat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'estat'
      Size = 60
      Calculated = True
    end
    object tPermisos_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object tPermisos_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'tipus_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'tipus'
      Size = 60
      Calculated = True
    end
  end
  object tPermisosLog: THYSqlBrowse
    AutoRefresh = True
    DatabaseName = 'Interna'
    DataSource = dsPermisos
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.PermisosSortidaLog
    IndiceActivo = 'pk'
    CalcSimple = False
    AutoPost = False
    Padre = dsPermisos
    Left = 187
    Top = 608
    object tPermisosLog_c_log: TIntegerField
      Tag = 100
      DisplayLabel = 'Log'
      DisplayWidth = 10
      FieldName = 'c_log'
    end
    object tPermisosLog_C_Permis: TIntegerField
      Tag = 100
      DisplayLabel = 'Permis'
      DisplayWidth = 10
      FieldName = 'C_Permis'
    end
    object tPermisosLog_c_accio: TStringField
      Tag = 100
      DisplayLabel = 'Accio'
      DisplayWidth = 1
      FieldName = 'c_accio'
      Size = 1
    end
    object tPermisosLog_c_usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'c_usuari'
      Size = 5
    end
    object tPermisosLog_data: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data'
      DisplayWidth = 11
      FieldName = 'data'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object tPermisosLog_hora: TStringField
      Tag = 100
      DisplayLabel = 'Hora'
      DisplayWidth = 5
      FieldName = 'hora'
      Size = 5
    end
    object tPermisosLog_Observacions: TStringField
      Tag = 100
      DisplayWidth = 250
      FieldName = 'Observacions'
      Size = 250
    end
    object tPermisosLog_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'usuari_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'usuari'
      Size = 5
      Calculated = True
    end
    object tPermisosLog_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'usuari'
      Calculated = True
    end
    object tPermisosLog_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'usuari_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'usuari'
      Size = 15
      Calculated = True
    end
    object tPermisosLog_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'usuari_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'usuari'
      Size = 4
      Calculated = True
    end
    object tPermisosLog_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'usuari'
      Size = 2
      Calculated = True
    end
    object tPermisosLog_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'usuari'
      Size = 2
      Calculated = True
    end
    object tPermisosLog_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuari_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'usuari'
      Size = 1
      Calculated = True
    end
    object tPermisosLog_C0_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuari_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'usuari'
      Calculated = True
    end
    object tPermisosLog_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuari_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'usuari'
      Size = 1
      Calculated = True
    end
    object tPermisosLog_C0_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'usuari_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'usuari'
      Size = 40
      Calculated = True
    end
    object tPermisosLog_C0_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'usuari'
      Calculated = True
    end
    object tPermisosLog_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'usuari'
      Calculated = True
    end
    object tPermisosLog_C0_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'usuari'
      Calculated = True
    end
    object tPermisosLog_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'usuari_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'usuari'
      Size = 6
      Calculated = True
    end
    object tPermisosLog_C0_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'usuari_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'usuari'
      Size = 9
      Calculated = True
    end
    object tPermisosLog_C1_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Permis Sortida'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'permis_c_permis'
      LookupKeyFields = 'c_permis'
      KeyFields = 'permis'
      Calculated = True
    end
    object tPermisosLog_C1_1: TIntegerField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'permis_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'permis'
      Calculated = True
    end
    object tPermisosLog_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'permis_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'permis'
      Size = 1
      Calculated = True
    end
    object tPermisosLog_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'permis_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'permis'
      Size = 1
      Calculated = True
    end
    object tPermisosLog_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Motiu'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'permis_Motiu'
      LookupKeyFields = 'Motiu'
      KeyFields = 'permis'
      Size = 250
      Calculated = True
    end
    object tPermisosLog_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Autoritzaci'#243
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'permis_Autoritzacio'
      LookupKeyFields = 'Autoritzacio'
      KeyFields = 'permis'
      Size = 250
      Calculated = True
    end
    object tPermisosLog_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Ausencia'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'permis_Ausencia'
      LookupKeyFields = 'Ausencia'
      KeyFields = 'permis'
      Size = 1
      Calculated = True
    end
    object tPermisosLog_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'accio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'accio'
      Size = 1
      Calculated = True
    end
    object tPermisosLog_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'accio_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'accio'
      Size = 60
      Calculated = True
    end
  end
  object dsPermisos: TDataSource
    DataSet = tPermisos
    Left = 88
    Top = 611
  end
  object dsPermisosLog: TDataSource
    DataSet = tPermisosLog
    Left = 251
    Top = 611
  end
end
