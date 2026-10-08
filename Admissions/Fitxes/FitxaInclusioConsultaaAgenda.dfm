object wFitxaInclusioConsultaaAgenda: TwFitxaInclusioConsultaaAgenda
  Left = 318
  Top = 188
  Width = 1350
  Height = 668
  Caption = 'Inclusi'#243' d'#39'una Consulta a Agenda'
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
    Width = 1342
    Height = 25
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clSilver
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    DataSource = dsAgenda
    AlBorrar = HYBarra1AlBorrar
    AlPost = HYBarra1AlPost
    AlCancel = HYBarra1AlCancel
    VerInsertar = False
    VerOrdenar = False
    VerSiguiente = False
    VerAnterior = False
    VerPrimero = False
    VerUltimo = False
    VerIndices = False
    Titulo = False
    VerPrint = False
    VerRefresh = True
  end
  object HYArea1: THYArea
    Left = 0
    Top = 39
    Width = 1342
    Height = 76
    Align = alTop
    BorderStyle = bsNone
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    DataSource = dsAgenda
    object bRecercaHoraLliure: TSpeedButton
      Left = 146
      Top = 22
      Width = 20
      Height = 18
      Flat = True
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        1800000000007404000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000
        00C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0808080000000000000000000808080C0C0C000FFFF80
        8080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C000000080808080808080808080808080808000000000000000FFFFC0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C000000080
        8080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFF808080000000C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0808080808080FFFFFFC0C0
        C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFF808080808080C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000808080C0C0C0FFFFFFC0C0C0
        FFFFFFC0C0C0FFFFFFC0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000C0C0C0000000808080FFFFFFC0C0C0FFFFFFC0C0C0FF
        FFFFC0C0C0FFFFFF808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0000000808080C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFF
        FFC0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0808080808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFF
        808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0000000808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFF808080000000C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0000000808080808080808080808080808080000000C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0808080000000000000000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000}
      OnClick = CercaHorariLliure
    end
    object Data_PreIngres: THYEdit
      Left = 9
      Top = 5
      Width = 84
      Height = 36
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Data'
      EtiSepara = 17
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataAdmisio.Espera
      TabOrder = 0
      AutoSelect = False
      CharCase = ecUpperCase
      DataSource = dsAgenda
      DataField = 'Data_PreIngres'
    end
    object Hora_PreIngres: THYEdit
      Left = 99
      Top = 5
      Width = 44
      Height = 36
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Hora'
      EtiSepara = 17
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataAdmisio.Espera
      TabOrder = 1
      AutoSelect = False
      CharCase = ecUpperCase
      DataSource = dsAgenda
      DataField = 'Hora_PreIngres'
    end
    object Panel3: TPanel
      Left = 188
      Top = 11
      Width = 797
      Height = 62
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object LabelMetge: TLabel
        Left = 5
        Top = 11
        Width = 30
        Height = 13
        Hint = 'Ctrl + M'
        Caption = 'Metge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object labelPresta: TLabel
        Left = 225
        Top = 11
        Width = 44
        Height = 13
        Hint = 'Ctrl + P'
        Caption = 'Prestaci'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object eMetgeX: TEdit
        Left = 45
        Top = 8
        Width = 166
        Height = 21
        CharCase = ecUpperCase
        Color = clAqua
        TabOrder = 0
        OnDblClick = eMetgeXDblClick
        OnEnter = eMetgeXEnter
        OnKeyPress = eMetgeXKeyPress
        OnKeyUp = eMetgeXKeyUp
      end
      object ePrestaX: TEdit
        Left = 278
        Top = 8
        Width = 269
        Height = 21
        CharCase = ecUpperCase
        Color = clAqua
        TabOrder = 1
        OnDblClick = ePrestaXDblClick
        OnEnter = ePrestaXEnter
        OnExit = ePrestaXExit
        OnKeyPress = ePrestaXKeyPress
        OnKeyUp = ePrestaXKeyUp
      end
      object edLloc: THYEdit
        Left = 465
        Top = 35
        Width = 82
        Height = 19
        Idioma = Castellano
        EtiFontColor = clWindowText
        Eti = 'Lloc'
        EtiSepara = 30
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Diccionario = wDataAdmisio.Espera
        TabOrder = 2
        AutoSelect = False
        DataSource = dsAgenda
        DataField = 'Lloc'
      end
      object pMotiu: TPanel
        Left = 560
        Top = 7
        Width = 223
        Height = 19
        AutoSize = True
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        Visible = False
        object Eti_tAgenda_Motiu_N_Codi: THYLabel
          Left = 66
          Top = 0
          Width = 157
          Height = 19
          DataField = 'Motiu_N_Codi'
          DataSource = dsAgenda
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object edMotiu: THYEdit
          Left = 0
          Top = 0
          Width = 60
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Motiu'
          EtiSepara = 35
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataAdmisio.Espera
          TabOrder = 0
          AutoSelect = False
          DataSource = dsAgenda
          DataField = 'C_Motiu'
        end
      end
      object pModalitat: TPanel
        Left = 225
        Top = 35
        Width = 231
        Height = 19
        AutoSize = True
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 4
        Visible = False
        object Eti_tAgenda_Modalitat_N_Codi: THYLabel
          Left = 84
          Top = 0
          Width = 147
          Height = 19
          DataField = 'modalitat_N_Codi'
          DataSource = dsAgenda
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object edModalitat: THYEdit
          Left = 0
          Top = 0
          Width = 79
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Modalitat'
          EtiSepara = 53
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataAdmisio.Espera
          TabOrder = 0
          AutoSelect = False
          DataSource = dsAgenda
          DataField = 'C_Modalitat'
        end
      end
    end
  end
  object HYArea2: THYArea
    Left = 0
    Top = 115
    Width = 1342
    Height = 522
    Align = alClient
    BorderStyle = bsNone
    Color = clWindow
    ParentColor = False
    TabOrder = 2
    object Panel2: TPanel
      Left = 0
      Top = 289
      Width = 1342
      Height = 233
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object HYGrid1: THYGrid
        Left = 0
        Top = 0
        Width = 1342
        Height = 233
        Align = alClient
        Color = clWhite
        DataSource = dsPanelInfo
        DefaultDrawing = False
        FixedColor = clSilver
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        AlPintarGrid = HYGrid1AlPintarGrid
        DefaultRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'C_ESPERA'
            Title.Caption = 'N'#250'm. Llista espera'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VISITAT'
            Title.Caption = 'Visitat'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA_PREINGRES'
            Title.Caption = 'Hora preingr'#233's'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_HISTORIA'
            Title.Caption = 'N'#250'm. Hist.'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMCOMPLET'
            Title.Caption = 'Nom complet'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFON'
            Title.Caption = 'Tel'#232'fon'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_UNITAT'
            Title.Caption = 'Unitat'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_COORDINADOR'
            Title.Caption = 'Coordinador'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_PRESTACIO'
            Title.Caption = 'Prestaci'#243
            Width = 58
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1342
      Height = 289
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object pGroupDadesPersonals: TPanel
        Left = 0
        Top = 0
        Width = 1342
        Height = 218
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object bHistoria: TSpeedButton
          Left = 80
          Top = 28
          Width = 44
          Height = 18
          Hint = 'Consulta de pacients'
          Caption = 'Hist.'
          ParentShowHint = False
          ShowHint = True
          OnClick = bHistoriaClick
        end
        object lAvis: TLabel
          Left = 811
          Top = 116
          Width = 265
          Height = 71
          Alignment = taCenter
          AutoSize = False
          Caption = 'TR'#192'NSIT NO COBREIX REVISIONS!!'
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          Visible = False
          WordWrap = True
        end
        object Label2: TLabel
          Left = 455
          Top = 114
          Width = 47
          Height = 13
          Caption = 'Comentari'
        end
        object LabelCentreFacturacio: THYLabel
          Left = 119
          Top = 152
          Width = 180
          Height = 19
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object Eti_tAgenda_Unitat_N_Codi: THYLabel
          Left = 87
          Top = 128
          Width = 150
          Height = 19
          DataField = 'Unitat_N_Codi'
          DataSource = dsAgenda
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object Label4: TLabel
          Left = 11
          Top = 179
          Width = 26
          Height = 13
          Caption = 'Client'
        end
        object LabelClient: THYLabel
          Left = 51
          Top = 177
          Width = 248
          Height = 19
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object Label7: TLabel
          Left = 243
          Top = 131
          Width = 17
          Height = 13
          Caption = 'UM'
        end
        object LabelUM: THYLabel
          Left = 265
          Top = 128
          Width = 171
          Height = 19
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object sbCreateModifyPerson: TSpeedButton
          Left = 113
          Top = 97
          Width = 120
          Height = 18
          Hint = 'Creaci'#243'/modificaci'#243' dades de persona'
          Caption = 'Crea/Modifica persona'
          ParentShowHint = False
          ShowHint = True
          OnClick = sbCreateModifyPersonClick
        end
        object HYLabel1: THYLabel
          Left = 261
          Top = 74
          Width = 167
          Height = 19
          DataField = 'TransportSanitari_N_Codi'
          DataSource = dsAgenda
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object HYLabel2: THYLabel
          Left = 485
          Top = 74
          Width = 198
          Height = 19
          DataField = 'TransportSanitari_N_Codi2'
          DataSource = dsAgenda
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object Label8: TLabel
          Left = 433
          Top = 77
          Width = 43
          Height = 13
          Caption = 'Contacte'
        end
        object PanelReadOnly: THYArea
          Left = 132
          Top = 10
          Width = 669
          Height = 60
          BorderStyle = bsNone
          Color = clWindow
          ParentColor = False
          TabOrder = 2
          object HYEdit3: THYEdit
            Left = 0
            Top = 1
            Width = 158
            Height = 36
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Nom'
            EtiSepara = 17
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            AutoSelect = False
            ReadOnly = True
            DataSource = dsAgenda
            DataField = 'Nom'
          end
          object HYEdit7: THYEdit
            Left = 165
            Top = 1
            Width = 170
            Height = 36
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Primer cognom'
            EtiSepara = 17
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            AutoSelect = False
            ReadOnly = True
            DataSource = dsAgenda
            DataField = 'Cognom1'
          end
          object HYEdit8: THYEdit
            Left = 341
            Top = 1
            Width = 170
            Height = 36
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Segon cognom'
            EtiSepara = 17
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            AutoSelect = False
            ReadOnly = True
            DataSource = dsAgenda
            DataField = 'Cognom2'
          end
          object HYEdit1: THYEdit
            Left = 519
            Top = 0
            Width = 150
            Height = 36
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tel'#232'fon'
            EtiSepara = 17
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            AutoSelect = False
            ReadOnly = True
            DataSource = dsAgenda
            DataField = 'TELEFON'
          end
          object HYEdit2: THYEdit
            Left = 75
            Top = 40
            Width = 159
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data naixement'
            EtiSepara = 78
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 4
            AutoSelect = False
            DataSource = dsAgenda
            DataField = 'Data_Naix'
          end
          object HYEdit5: THYEdit
            Left = 242
            Top = 40
            Width = 62
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Edat'
            EtiSepara = 27
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Enabled = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            TabStop = False
            AutoSelect = False
            ReadOnly = True
            DataSource = dsAgenda
            DataField = 'Edat'
          end
          object HYEdit4: THYEdit
            Left = 314
            Top = 40
            Width = 125
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Risc social'
            EtiSepara = 56
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 6
            AutoSelect = False
            DataSource = dsAgenda
            DataField = 'RISC_SOCIAL'
          end
        end
        object PanelEditable: THYArea
          Left = 132
          Top = 3
          Width = 669
          Height = 67
          AutoSize = True
          BorderStyle = bsNone
          Color = clWindow
          ParentColor = False
          TabOrder = 1
          object Label5: TLabel
            Left = 446
            Top = 51
            Width = 218
            Height = 13
            Caption = '* camps necessaris per calcular el CIP a l'#39'RCA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 14483456
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 341
            Top = 0
            Width = 166
            Height = 26
            AutoSize = False
            Caption = 'Segon cognom *  (DEIXEU-LO BUIT SI NO EN T'#201')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object HYEdit6: THYEdit
            Left = 0
            Top = 9
            Width = 158
            Height = 36
            Idioma = Castellano
            EtiFontColor = 14483456
            Eti = 'Nom *'
            EtiSepara = 17
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsAgenda
            DataField = 'Nom'
          end
          object EditCognom1: THYEdit
            Left = 165
            Top = 9
            Width = 170
            Height = 36
            Idioma = Castellano
            EtiFontColor = clRed
            Eti = 'Primer cognom'
            EtiSepara = 17
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsAgenda
            DataField = 'Cognom1'
          end
          object HYEdit11: THYEdit
            Left = 341
            Top = 26
            Width = 170
            Height = 19
            Idioma = Castellano
            EtiFontColor = 14483456
            Eti = 'Segon cognom *  (DEIXEU-LO BUIT SI NO EN T'#201')'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 2
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsAgenda
            DataField = 'Cognom2'
          end
          object HYEdit12: THYEdit
            Left = 519
            Top = 8
            Width = 150
            Height = 36
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tel'#232'fon'
            EtiSepara = 17
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 3
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsAgenda
            DataField = 'TELEFON'
          end
          object EditSexo: THYEdit
            Left = 0
            Top = 48
            Width = 60
            Height = 19
            Idioma = Castellano
            EtiFontColor = 14483456
            Eti = 'Sexe *'
            EtiSepara = 40
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 4
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsAgenda
            DataField = 'SEXO'
          end
          object edDataNaix: THYEdit
            Left = 75
            Top = 48
            Width = 166
            Height = 19
            Idioma = Castellano
            EtiFontColor = 14483456
            Eti = 'Data naixement *'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 5
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsAgenda
            DataField = 'Data_Naix'
          end
          object HYEdit9: THYEdit
            Left = 251
            Top = 48
            Width = 58
            Height = 19
            Idioma = Castellano
            EtiFontColor = 14483456
            Eti = 'Edat'
            EtiSepara = 27
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            TabStop = False
            AutoSelect = False
            CharCase = ecUpperCase
            ReadOnly = True
            DataSource = dsAgenda
            DataField = 'Edat'
          end
          object HYEdit10: THYEdit
            Left = 315
            Top = 48
            Width = 98
            Height = 19
            Idioma = Castellano
            EtiFontColor = 14483456
            Eti = 'Risc social'
            EtiSepara = 56
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 7
            AutoSelect = False
            CharCase = ecUpperCase
            DataSource = dsAgenda
            DataField = 'RISC_SOCIAL'
          end
        end
        object inputHistoria: THYTextEdit
          Left = 9
          Top = 11
          Width = 65
          Height = 36
          Eti = 'N'#250'm. Hist.'
          EtiSepara = 17
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          OnChange = inputHistoriaChange
          Ctl3D = False
          ParentCtl3D = False
          OnExit = inputHistoriaExit
          OnKeyDown = inputHistoriaKeyDown
          TabOrder = 0
          TabStop = True
          AutoSelect = False
          ReadOnly = True
        end
        object edtUnitat: THYEdit
          Left = 11
          Top = 128
          Width = 70
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Unitat'
          EtiSepara = 40
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataAdmisio.Espera
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 3
          AutoSelect = False
          DataSource = dsAgenda
          DataField = 'C_Unitat'
        end
        object HYMemo1: THYMemo
          Left = 455
          Top = 128
          Width = 346
          Height = 45
          DataField = 'COMENTARI'
          DataSource = dsAgenda
          MaxLength = 254
          TabOrder = 4
        end
        object PanelCIP: TPanel
          Left = 456
          Top = 178
          Width = 260
          Height = 36
          AutoSize = True
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 5
          object bCIP: TSpeedButton
            Left = 180
            Top = 0
            Width = 80
            Height = 19
            Caption = 'Cerca a l'#39'RCA'
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
          object Label6: TLabel
            Left = 29
            Top = 23
            Width = 214
            Height = 13
            Caption = 'Necessari si voleu publicar l'#39'agenda a l'#39'HCCC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 14483456
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edCIP: THYEdit
            Left = 0
            Top = 0
            Width = 175
            Height = 19
            Idioma = Catala
            EtiFontColor = 14483456
            Eti = 'CIP'
            EtiSepara = 30
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataAdmisio.Espera
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            AutoSelect = False
            CharCase = ecUpperCase
            OnChange = edCIPChange
            DataSource = dsAgenda
            DataField = 'CIP'
          end
        end
        object eCentreFac: THYEdit
          Left = 11
          Top = 152
          Width = 106
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Centre facturaci'#243
          EtiSepara = 85
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataAdmisio.Espera
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          AutoSelect = False
          DataSource = dsAgenda
          DataField = 'C_CENTREFAC'
        end
        object ePersonId: THYEdit
          Left = 9
          Top = 83
          Width = 99
          Height = 33
          Hint = 'N'#250'm. usuari APP / id de persona a la nova HCE'
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Id de persona'
          EtiSepara = 14
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          Diccionario = wDataAdmisio.Espera
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          TabStop = False
          AutoSelect = False
          CharCase = ecUpperCase
          ReadOnly = True
          DataSource = dsAgenda
          DataField = 'hce_person_id'
        end
        object HYEdit13: THYEdit
          Left = 132
          Top = 74
          Width = 122
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Transport sanitari'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataAdmisio.Espera
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 8
          TabStop = False
          AutoSelect = False
          DataSource = dsAgenda
          DataField = 'TransportSanitari_C_Codi'
        end
      end
      object pIncapacitat: TPanel
        Left = 0
        Top = 248
        Width = 1342
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 1
        Visible = False
        object Label1: TLabel
          Left = 30
          Top = 12
          Width = 143
          Height = 13
          Caption = 'PACIENT INCAPACITAT.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDadesIncapacitat: TLabel
          Left = 192
          Top = 12
          Width = 92
          Height = 13
          Caption = 'lbDadesIncapacitat'
        end
      end
      object pProcedencia: TPanel
        Left = 0
        Top = 218
        Width = 1342
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 2
        Visible = False
        object HYLabel3: THYLabel
          Left = 143
          Top = 2
          Width = 239
          Height = 19
          DataField = 'Origen_N_Codi'
          DataSource = dsAgenda
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object HYEdit14: THYEdit
          Left = 12
          Top = 2
          Width = 121
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Procedencia/Origen'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataAdmisio.Espera
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          TabStop = False
          AutoSelect = False
          DataSource = dsAgenda
          DataField = 'C_Procedencia'
        end
      end
    end
  end
  object LblEstat: TPanel
    Left = 0
    Top = 25
    Width = 1342
    Height = 14
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object tAgenda: ThySqlTable
    BeforePost = tAgendaBeforePost
    AfterPost = tAgendaAfterPost
    AfterCancel = tAgendaAfterCancel
    AfterScroll = tAgendaAfterScroll
    OnCalcFields = tAgendaCalcFields
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ESPERA WHERE C_Espera= :P0')
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.Espera
    IndiceActivo = 'Codi'
    CalcSimple = False
    AlConsultarCampo = tAgendaAlConsultarCampo
    AutoPost = False
    New.Active = True
    New.IndexAsc = 'Codi'
    New.OrderDbField = 'C_Espera'
    Left = 120
    Top = 361
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P0'
        ParamType = ptUnknown
        Value = 5
      end>
    object tAgenda_C_Espera: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Llista Espera'
      DisplayWidth = 4
      FieldName = 'C_Espera'
      DisplayFormat = '#,##0;; '
    end
    object tAgenda_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldName = 'C_Historia'
      DisplayFormat = '####0;; '
    end
    object tAgenda_C_Prestacio: TStringField
      Tag = 100
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldName = 'C_Prestacio'
      OnChange = tAgenda_C_PrestacioChange
      OnValidate = tAgenda_C_PrestacioValidate
      Size = 4
    end
    object tAgenda_C_Coordinador: TStringField
      Tag = 100
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldName = 'C_Coordinador'
      OnChange = tAgenda_C_PrestacioChange
      OnValidate = tAgenda_C_CoordinadorValidate
      Size = 5
    end
    object tAgenda_Data_Inclusio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Inclusi'#243
      DisplayWidth = 11
      FieldName = 'Data_Inclusio'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tAgenda_Data_PreIngres: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data PreIngr'#233's'
      DisplayWidth = 11
      FieldName = 'Data_PreIngres'
      OnValidate = tAgenda_Data_PreIngresValidate
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tAgenda_Hora_PreIngres: TStringField
      Tag = 100
      DisplayLabel = 'Hora PreIngr'#233's'
      DisplayWidth = 5
      FieldName = 'Hora_PreIngres'
      OnValidate = tAgenda_Hora_PreIngresValidate
      EditMask = '00:00'
      Size = 5
    end
    object tAgenda_Nom: TStringField
      Tag = 100
      DisplayWidth = 20
      FieldName = 'Nom'
    end
    object tAgenda_Cognom1: TStringField
      Tag = 100
      DisplayLabel = '1'#186' Cognom'
      DisplayWidth = 20
      FieldName = 'Cognom1'
      OnChange = tAgenda_Cognom1Change
    end
    object tAgenda_Cognom2: TStringField
      Tag = 100
      DisplayLabel = '2'#186' Cognom'
      DisplayWidth = 20
      FieldName = 'Cognom2'
    end
    object tAgenda_NomComplet: TStringField
      Tag = 100
      DisplayLabel = 'Nom Complet'
      DisplayWidth = 80
      FieldName = 'NomComplet'
      ReadOnly = True
      Size = 80
    end
    object tAgenda_TELEFON: TStringField
      Tag = 100
      DisplayLabel = 'Telefon'
      DisplayWidth = 10
      FieldName = 'TELEFON'
      Size = 10
    end
    object tAgenda_C_Unitat: TSmallintField
      Tag = 100
      DisplayLabel = 'Unitat'
      DisplayWidth = 3
      FieldName = 'C_Unitat'
    end
    object tAgenda_C_Caracter: TSmallintField
      Tag = 100
      DisplayLabel = 'Caracter'
      DisplayWidth = 2
      FieldName = 'C_Caracter'
    end
    object tAgenda_C_Procedencia: TSmallintField
      Tag = 100
      DisplayLabel = 'Procedencia'
      DisplayWidth = 2
      FieldName = 'C_Procedencia'
    end
    object tAgenda_C_Motiu: TSmallintField
      Tag = 100
      DisplayLabel = 'Motiu'
      DisplayWidth = 2
      FieldName = 'C_Motiu'
    end
    object tAgenda_C_Frecuencia: TStringField
      Tag = 100
      DisplayLabel = 'Frecuencia'
      DisplayWidth = 7
      FieldName = 'C_Frecuencia'
      Size = 7
    end
    object tAgenda_DataFixe: TDateTimeField
      Tag = 100
      DisplayLabel = 'Dia Fixe'
      DisplayWidth = 11
      FieldName = 'DataFixe'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tAgenda_Data_Exclusio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data Exclusi'#243
      DisplayWidth = 11
      FieldName = 'Data_Exclusio'
      DisplayFormat = 'dd"."mmm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tAgenda_MotiuExclusio: TStringField
      Tag = 100
      DisplayLabel = 'Motiu Exclusi'#243
      DisplayWidth = 50
      FieldName = 'MotiuExclusio'
      Size = 50
    end
    object tAgenda_INTERVENCIO: TStringField
      Tag = 100
      DisplayLabel = 'Intervencio'
      DisplayWidth = 20
      FieldName = 'INTERVENCIO'
    end
    object tAgenda_COMENTARI: TStringField
      Tag = 100
      DisplayLabel = 'Comentari'
      DisplayWidth = 254
      FieldName = 'COMENTARI'
      Size = 254
    end
    object tAgenda_C_Estat: TSmallintField
      Tag = 100
      DisplayLabel = 'Estat'
      DisplayWidth = 2
      FieldName = 'C_Estat'
    end
    object tAgenda_C_TractamentDesti: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament Desti'
      DisplayWidth = 8
      FieldName = 'C_TractamentDesti'
    end
    object tAgenda_ComentariMetge: TStringField
      Tag = 100
      DisplayLabel = 'Comentari Metge'
      DisplayWidth = 40
      FieldName = 'ComentariMetge'
      Size = 40
    end
    object tAgenda_ComentariInfermera: TStringField
      Tag = 100
      DisplayLabel = 'Comentari Infermera'
      DisplayWidth = 40
      FieldName = 'ComentariInfermera'
      Size = 40
    end
    object tAgenda_C_MetgeAutoritzacio: TStringField
      Tag = 100
      DisplayLabel = 'Metge Autoritzador'
      DisplayWidth = 5
      FieldName = 'C_MetgeAutoritzacio'
      Size = 5
    end
    object tAgenda_Exclos: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Exclos'
      Size = 1
    end
    object tAgenda_C_OM: TIntegerField
      Tag = 100
      DisplayLabel = 'Ordre m'#232'dica'
      DisplayWidth = 8
      FieldName = 'C_OM'
      DisplayFormat = '#,##0;; '
    end
    object tAgenda_Lloc: TStringField
      Tag = 100
      DisplayWidth = 15
      FieldName = 'Lloc'
      Size = 15
    end
    object tAgenda_SEXO: TStringField
      Tag = 100
      DisplayLabel = 'Sexe'
      DisplayWidth = 1
      FieldName = 'SEXO'
      Size = 1
    end
    object tAgenda_IDREGISTRE: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Registre sol'#183'licitud ingr'#233's'
      DisplayWidth = 8
      FieldName = 'IDREGISTRE'
      DisplayFormat = '#,##0;; '
    end
    object tAgenda_Metge_Programa: TStringField
      Tag = 100
      DisplayLabel = 'Programada per'
      DisplayWidth = 5
      FieldName = 'Metge_Programa'
      Size = 5
    end
    object tAgenda_C_Proces: TIntegerField
      Tag = 100
      DisplayLabel = 'Proc'#233's NR'
      DisplayWidth = 8
      FieldName = 'C_Proces'
      DisplayFormat = '#,##0;; '
    end
    object tAgenda_CIP: TStringField
      Tag = 100
      DisplayWidth = 14
      FieldName = 'CIP'
      Size = 14
    end
    object tAgenda_Accio_HCCC: TStringField
      Tag = 100
      DisplayLabel = 'Acci'#243' HCCC'
      DisplayWidth = 1
      FieldName = 'Accio_HCCC'
      Size = 1
    end
    object tAgenda_Estat_HCCC: TStringField
      Tag = 100
      DisplayLabel = 'Estat HCCC'
      DisplayWidth = 1
      FieldName = 'Estat_HCCC'
      Size = 1
    end
    object tAgenda_Data_Naix: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data naixement'
      DisplayWidth = 10
      FieldName = 'Data_Naix'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object tAgenda_Sequencia_HCCC: TIntegerField
      Tag = 100
      DisplayLabel = 'Seq'#252#232'ncia HCCC'
      DisplayWidth = 8
      FieldName = 'Sequencia_HCCC'
      DisplayFormat = '#,##0;; '
    end
    object tAgenda_CIP_Antic: TStringField
      Tag = 100
      DisplayLabel = 'CIP antic'
      DisplayWidth = 14
      FieldName = 'CIP_Antic'
      Size = 14
    end
    object tAgenda_C_CENTREFAC: TStringField
      Tag = 100
      DisplayLabel = 'Centre de facturaci'#243
      DisplayWidth = 2
      FieldName = 'C_CENTREFAC'
      Size = 2
    end
    object tAgenda_C_HospitalOrigen: TSmallintField
      Tag = 100
      DisplayLabel = 'Hospital origen'
      DisplayWidth = 2
      FieldName = 'C_HospitalOrigen'
    end
    object tAgenda_T_SESSIO: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus de sessi'#243
      DisplayWidth = 3
      FieldName = 'T_SESSIO'
    end
    object tAgenda_C_CLIENT: TStringField
      Tag = 100
      DisplayLabel = 'Client de facturaci'#243
      DisplayWidth = 3
      FieldName = 'C_CLIENT'
      Size = 3
    end
    object tAgenda_hce_person_id: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'mero usuari app'
      DisplayWidth = 10
      FieldName = 'hce_person_id'
      DisplayFormat = '#,##0;; '
    end
    object tAgenda_hce_schedule_id: TStringField
      Tag = 100
      DisplayLabel = 'ID Agenda HCE'
      DisplayWidth = 40
      FieldName = 'hce_schedule_id'
      Size = 40
    end
    object tAgenda_RISC_SOCIAL: TIntegerField
      Tag = 100
      DisplayLabel = 'Risc social'
      DisplayWidth = 8
      FieldName = 'RISC_SOCIAL'
      DisplayFormat = '#,##0;; '
    end
    object tAgendaEdat: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Edat'
      Calculated = True
    end
    object tAgenda_C_TRANSPORT_SANITARI: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi transport'
      DisplayWidth = 3
      FieldName = 'C_TRANSPORT_SANITARI'
    end
    object tAgenda_C_Modalitat: TSmallintField
      Tag = 100
      DisplayLabel = 'Modalitat'
      DisplayWidth = 2
      FieldName = 'C_Modalitat'
    end
    object tAgenda_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Fili_NUM_HIST'
      LookupKeyFields = 'NUM_HIST'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_1: TStringField
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
    object tAgenda_C0_2: TStringField
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
    object tAgenda_C0_3: TIntegerField
      Tag = 101
      DisplayLabel = 'Edat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_Edat'
      LookupKeyFields = 'Edat'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_4: TStringField
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
    object tAgenda_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_APELLIDO1'
      LookupKeyFields = 'APELLIDO1'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_APELLIDO2'
      LookupKeyFields = 'APELLIDO2'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fili_NOMBRE'
      LookupKeyFields = 'NOMBRE'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_8: TSmallintField
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
    object tAgenda_C0_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat M'#232'dica'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fili_C_UnitatMedica'
      LookupKeyFields = 'C_UnitatMedica'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_10: TStringField
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
    object tAgenda_C0_11: TStringField
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
    object tAgenda_C0_12: TDateTimeField
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
    object tAgenda_C0_13: TStringField
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
    object tAgenda_C0_14: TStringField
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
    object tAgenda_C0_15: TStringField
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
    object tAgenda_C0_16: TStringField
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
    object tAgenda_C0_17: TSmallintField
      Tag = 101
      DisplayLabel = 'UM_ANTIGA'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_UM_ANTIGA'
      LookupKeyFields = 'UM_ANTIGA'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_18: TSmallintField
      Tag = 101
      DisplayLabel = 'Lateralitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Fili_c_Lateralitat'
      LookupKeyFields = 'c_Lateralitat'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_19: TStringField
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
    object tAgenda_C0_20: TStringField
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
    object tAgenda_C0_21: TStringField
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
    object tAgenda_C0_22: TStringField
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
    object tAgenda_C0_23: TStringField
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
    object tAgenda_C0_24: TSmallintField
      Tag = 101
      DisplayLabel = 'Hospital primera atencio'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Fili_C_HOSPITAL'
      LookupKeyFields = 'C_HOSPITAL'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_25: TStringField
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
    object tAgenda_C0_26: TSmallintField
      Tag = 101
      DisplayLabel = 'Idioma'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fili_IDIOMA'
      LookupKeyFields = 'IDIOMA'
      KeyFields = 'Fili'
      Calculated = True
    end
    object tAgenda_C0_27: TStringField
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
    object tAgenda_C0_28: TStringField
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
    object tAgenda_C0_29: TStringField
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
    object tAgenda_C0_30: TIntegerField
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
    object tAgenda_C1_0: TStringField
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
    object tAgenda_C1_1: TStringField
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
    object tAgenda_C1_2: TStringField
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
    object tAgenda_C1_3: TStringField
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
    object tAgenda_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Presta_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Presta'
      Calculated = True
    end
    object tAgenda_C1_5: TStringField
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
    object tAgenda_C1_6: TStringField
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
    object tAgenda_C1_7: TSmallintField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Presta_Grup'
      LookupKeyFields = 'Grup'
      KeyFields = 'Presta'
      Calculated = True
    end
    object tAgenda_C1_8: TStringField
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
    object tAgenda_C2_0: TStringField
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
    object tAgenda_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Metge_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tAgenda_C2_2: TStringField
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
    object tAgenda_C2_3: TStringField
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
    object tAgenda_C2_4: TStringField
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
    object tAgenda_C2_5: TStringField
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
    object tAgenda_C2_6: TStringField
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
    object tAgenda_C2_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Metge_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tAgenda_C2_8: TStringField
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
    object tAgenda_C2_9: TStringField
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
    object tAgenda_C2_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Metge_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tAgenda_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Metge_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tAgenda_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Metge_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Metge'
      Calculated = True
    end
    object tAgenda_C2_13: TStringField
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
    object tAgenda_C2_14: TStringField
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
    object tAgenda_C2_15: TStringField
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
    object tAgenda_C2_16: TIntegerField
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
    object tAgenda_C2_17: TDateTimeField
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
    object tAgenda_C3_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Unitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object tAgenda_C3_1: TStringField
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
    object tAgenda_C3_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Unitat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object tAgenda_C3_3: TStringField
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
    object tAgenda_C3_4: TStringField
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
    object tAgenda_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Unitat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Unitat'
      Calculated = True
    end
    object tAgenda_C4_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Origen_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Origen'
      Calculated = True
    end
    object tAgenda_C4_1: TStringField
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
    object tAgenda_C5_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Caracter_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Caracter'
      Calculated = True
    end
    object tAgenda_C5_1: TStringField
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
    object tAgenda_C6_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Motiu'
      Calculated = True
    end
    object tAgenda_C6_1: TStringField
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
    object tAgenda_C7_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Estat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Estat'
      Calculated = True
    end
    object tAgenda_C7_1: TStringField
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
    object tAgenda_C7_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Estat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Estat'
      Calculated = True
    end
    object tAgenda_C7_3: TStringField
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
    object tAgenda_C7_4: TStringField
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
    object tAgenda_C7_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Estat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Estat'
      Calculated = True
    end
    object tAgenda_C8_0: TStringField
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
    object tAgenda_C8_1: TStringField
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
    object tAgenda_C8_2: TStringField
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
    object tAgenda_C8_3: TStringField
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
    object tAgenda_C8_4: TSmallintField
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
    object tAgenda_C9_0: TStringField
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
    object tAgenda_C10_0: TStringField
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
    object tAgenda_C10_1: TStringField
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
    object tAgenda_C11_0: TStringField
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
    object tAgenda_C11_1: TStringField
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
    object tAgenda_C12_0: TStringField
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
    object tAgenda_C12_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CentreFac_N_CentreFac'
      LookupKeyFields = 'N_CentreFac'
      KeyFields = 'CentreFac'
      Calculated = True
    end
    object tAgenda_C12_2: TStringField
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
    object tAgenda_C13_0: TSmallintField
      Tag = 101
      DisplayLabel = 'N'#186' Hospital'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hosporigen_C_Hospital'
      LookupKeyFields = 'C_Hospital'
      KeyFields = 'hosporigen'
      Calculated = True
    end
    object tAgenda_C13_1: TStringField
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
    object tAgenda_C13_2: TStringField
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
    object tAgenda_C13_3: TStringField
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
    object tAgenda_C13_4: TStringField
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
    object tAgenda_C13_5: TStringField
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
    object tAgenda_C13_6: TStringField
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
    object tAgenda_C13_7: TStringField
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
    object tAgenda_C14_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TSessio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object tAgenda_C14_1: TStringField
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
    object tAgenda_C14_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TSessio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object tAgenda_C14_3: TStringField
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
    object tAgenda_C14_4: TStringField
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
    object tAgenda_C14_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TSessio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TSessio'
      Calculated = True
    end
    object tAgenda_C15_0: TStringField
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
    object tAgenda_C15_1: TStringField
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
    object tAgenda_C15_2: TStringField
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
    object tAgenda_C15_3: TStringField
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
    object tAgenda_C15_4: TStringField
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
    object tAgenda_C15_5: TStringField
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
    object tAgenda_C16_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object tAgenda_C16_1: TStringField
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
    object tAgenda_C16_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object tAgenda_C16_3: TStringField
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
    object tAgenda_C16_4: TStringField
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
    object tAgenda_C16_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TransportSanitari_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'TransportSanitari'
      Calculated = True
    end
    object tAgenda_C17_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'modalitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'modalitat'
      Calculated = True
    end
    object tAgenda_C17_1: TStringField
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
    object tAgendaC_TRACTAMENTORIGEN: TIntegerField
      FieldName = 'C_TRACTAMENTORIGEN'
      Origin = 'INTERNA.ESPERA.C_TRACTAMENTORIGEN'
    end
  end
  object dsAgenda: TDataSource
    DataSet = tAgenda
    Left = 194
    Top = 361
  end
  object qHoraris: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'SELECT * FROM HORARIO'
      'WHERE C_METGE = "U02"')
    Left = 52
    Top = 361
  end
  object qBucleHoraris: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'Select (H.HDesde||":"||H.MDesde) as HORAINICI, (H.HHasta||":"||H' +
        '.MHasta) AS HORAFI'
      'from HORARIO H'
      
        'where H.C_Metge = :Metge                                        ' +
        '             /*tAgenda.FieldbyName('#39'C_Coordinador'#39').asString*/'
      
        '  and H.Dia =  :Dia                                             ' +
        '             /*IntToStr(DiaDelaSemana(tAgenda.FieldbyName('#39'Data_' +
        'PreIngres'#39').asDateTime))*/'
      
        '  AND NOT H.DIA IN (SELECT HP.DIA FROM HORARIOPRESTA HP WHERE HP' +
        '.DIA = :Dia  /*IntToStr(DiaDelaSemana(tAgenda.FieldbyName('#39'Data_' +
        'PreIngres'#39').asDateTime)) */'
      
        '                       AND HP.C_PRESTACIO = :Prestacio          ' +
        '             /*tAgenda.FieldbyName('#39'C_Prestacio'#39').asString*/'
      
        '                       AND HP.C_METGE = :Metge                  ' +
        '                 /* tAgenda.FieldbyName('#39'C_Coordinador'#39').asStrin' +
        'g*/'
      
        '                       and hp.hdesde = h.hdesde and hp.mdesde=h.' +
        'mdesde and hp.hhasta = h.hhasta and hp.mhasta=h.mhasta)'
      'ORDER BY H.HDesde,H.MDesde'
      '/*COJEMOS TODOS LOS HORARIOS DE UN MISMO DIA'
      '      PARA BUSCAR HORAS EN SUS RANGOS        */'
      ''
      ''
      ''
      ' ')
    Left = 52
    Top = 457
    ParamData = <
      item
        DataType = ftString
        Name = 'Metge'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Prestacio'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Metge'
        ParamType = ptUnknown
      end>
  end
  object qHores: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'SELECT E.HORA_PREINGRES, E.C_PRESTACIO, MP.MINUTS FROM ESPERA E ' +
        'JOIN METGEPRESTA MP ON MP.C_PRESTACIO = E.C_PRESTACIO AND MP.COD' +
        'I = E.C_COORDINADOR'
      'WHERE E.DATA_PREINGRES  = Data'
      'AND E.C_COORDINADOR = Metge'
      
        'AND ((E.C_ESTAT BETWEEN 30 AND 39) OR (E.C_ESTAT BETWEEN 95 AND ' +
        '99))'
      '/*AND C_ESPERA <> ESPERAACTIVA ----> QUAN ES MODIFICA*/'
      'AND E.HORA_PREINGRES >= HORAINICIHORARI'
      'AND E.EXCLOS = "N"'
      'ORDER BY E.HORA_PREINGRES')
    Left = 52
    Top = 409
  end
  object qPanelInfo: THYSqlQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select C_ESPERA, '
      
        '          cast(F_If(C_TRACTAMENTDESTI, "IS", "NULL", "N", "S") a' +
        's Char(1)) as VISITAT,'
      '          HORA_PREINGRES, C_HISTORIA, NOMCOMPLET, '
      '          TELEFON, C_UNITAT, C_COORDINADOR, C_PRESTACIO '
      'from    ESPERA '
      'where DATA_PREINGRES >= "TODAY"         /* l'#237'nia 5 */'
      'and    DATA_PREINGRES <= "TODAY"          /* l'#237'nia 6 */'
      'and    C_COORDINADOR = "P06"                   /* l'#237'nia 7 */'
      
        'and  ((C_ESTAT between 30 and 39) or (C_ESTAT between 95 and 99)' +
        ')'
      'and    EXCLOS = "N"'
      
        'order by 3                                                      ' +
        '     /* l'#237'nia 9 */')
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataAdmisio.Espera
    IndiceActivo = 'Codi'
    CalcSimple = True
    AutoPost = False
    SqlDic.Strings = (
      'select C_ESPERA, '
      
        '          cast(F_If(C_TRACTAMENTDESTI, "IS", "NULL", "N", "S") a' +
        's Char(1)) as VISITAT,'
      '          HORA_PREINGRES, C_HISTORIA, NOMCOMPLET, '
      '          TELEFON, C_UNITAT, C_COORDINADOR, C_PRESTACIO '
      'from    ESPERA '
      'where DATA_PREINGRES >= "TODAY"         /* l'#237'nia 5 */'
      'and    DATA_PREINGRES <= "TODAY"          /* l'#237'nia 6 */'
      'and    C_COORDINADOR = "P06"                   /* l'#237'nia 7 */'
      
        'and  ((C_ESTAT between 30 and 39) or (C_ESTAT between 95 and 99)' +
        ')'
      'and    EXCLOS = "N"'
      
        'order by 3                                                      ' +
        '     /* l'#237'nia 9 */')
    Left = 121
    Top = 456
    object qPanelInfoC_ESPERA: TIntegerField
      FieldName = 'C_ESPERA'
    end
    object qPanelInfoVISITAT: TStringField
      FieldName = 'VISITAT'
      Size = 1
    end
    object qPanelInfoHORA_PREINGRES: TStringField
      FieldName = 'HORA_PREINGRES'
      Size = 5
    end
    object qPanelInfoC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object qPanelInfoNOMCOMPLET: TStringField
      FieldName = 'NOMCOMPLET'
      Size = 80
    end
    object qPanelInfoTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 10
    end
    object qPanelInfoC_UNITAT: TSmallintField
      FieldName = 'C_UNITAT'
    end
    object qPanelInfoC_COORDINADOR: TStringField
      FieldName = 'C_COORDINADOR'
      Size = 5
    end
    object qPanelInfoC_PRESTACIO: TStringField
      FieldName = 'C_PRESTACIO'
      Size = 4
    end
  end
  object dsPanelInfo: TDataSource
    DataSet = qPanelInfo
    Left = 193
    Top = 456
  end
  object ListMetgePresta: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT '
      '* '
      'FROM P_METGEPRESTA_LIST'
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataCodis.MetgePresta
    Filtros = <
      item
        Nombre = 'C_Metge'
        NombreDB = 'C_Metge'
        Tipo = tiCaracter
        Condicion = tiIgual
      end
      item
        Nombre = 'N_Metge'
        NombreDB = 'N_Metge'
        Tipo = tiCaracter
        Condicion = tiContiene
      end
      item
        Nombre = 'C_Prestacio'
        NombreDB = 'C_Prestacio'
        Tipo = tiCaracter
        Condicion = tiIgual
      end
      item
        Nombre = 'N_Prestacio'
        NombreDB = 'N_Prestacio'
        Tipo = tiCaracter
        Condicion = tiContiene
      end>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    CamposOculta.Strings = (
      'C_METGE'
      'C_PRESTACIO')
    AlSeleccionar = ListMetgePrestaAlSeleccionar
    Left = 120
    Top = 411
  end
  object Dades: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 256
    Top = 360
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
  object qInsEspera: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'insert into espera(c_espera,c_historia,c_prestacio,data_inclusio' +
        ',data_preingres,hora_preingres,nom,cognom1,cognom2,telefon,lloc,' +
        'sexo,c_caracter,c_procedencia,exclos,c_estat,c_unitat,c_motiu,c_' +
        'modalitat,datafixe,comentari,c_coordinador,metge_programa, data_' +
        'naix, cip, c_tractamentorigen, t_sessio, hce_person_id)'
      
        'values(:c_espera,:c_historia,:c_prestacio,:data_inclusio,:data_p' +
        'reingres,:hora_preingres,:nom,:cognom1,:cognom2,:telefon,:lloc,:' +
        'sexo,:c_caracter,:c_procedencia,:exclos,:c_estat,:c_unitat,:c_mo' +
        'tiu,:c_modalitat,:datafixe,:comentari,:c_coordinador,:metge_prog' +
        'rama, :data_naix, :cip, :c_tractamentorigen, :t_sessio, :hce_per' +
        'son_id)')
    Left = 320
    Top = 360
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
        Name = 'metge_programa'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_naix'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cip'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_tractamentorigen'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 't_sessio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'hce_person_id'
        ParamType = ptInput
      end>
  end
  object cCF: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select C_CENTREFAC, N_CENTREFAC FROM CENTREFAC'
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataFactu.CentreFac
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cCFAlSeleccionar
    Left = 272
    Top = 440
  end
end
