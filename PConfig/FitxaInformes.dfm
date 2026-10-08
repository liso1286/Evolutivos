object wFitxaInformes: TwFitxaInformes
  Left = 240
  Top = 173
  Width = 1551
  Height = 800
  Caption = 'wFitxaInformes'
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
  object Splitter2: TSplitter
    Left = 1273
    Top = 0
    Width = 4
    Height = 769
    Cursor = crHSplit
    Align = alRight
  end
  object Panel9: TPanel
    Left = 1277
    Top = 0
    Width = 266
    Height = 769
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object HYBarra4: THYBarra
      Left = 0
      Top = 0
      Width = 266
      Height = 25
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 
        '                                                          L'#205'NIES' +
        ' ('#205'TEMS)'
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
      DataSource = dsInformesLin
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
      Width = 266
      Height = 399
      Align = alClient
      Color = clWhite
      DataSource = dsInformesLin
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
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_Informe'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C_Item'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'item_N_Item'
          Width = 216
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C_Usuari'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'usuari_Metge'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Tmp'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C_Usuari_Tmp'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'usuarit_Metge'
          Visible = True
        end>
    end
    object HYArea2: THYArea
      Left = 0
      Top = 424
      Width = 266
      Height = 345
      Align = alBottom
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      DataSource = dsInformesLin
      DesignSize = (
        262
        341)
      object TEXT: TLabel
        Left = 10
        Top = 10
        Width = 28
        Height = 13
        Caption = 'TEXT'
      end
      object Label4: TLabel
        Left = 10
        Top = 174
        Width = 54
        Height = 13
        Caption = 'TEXT TMP'
      end
      object Ed_bInformesLin_Text: THYMemo
        Left = 10
        Top = 30
        Width = 244
        Height = 136
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Text'
        DataSource = dsInformesLin
        ParentColor = True
        TabOrder = 0
      end
      object Ed_bInformesLin_Text_Tmp: THYMemo
        Left = 10
        Top = 192
        Width = 244
        Height = 136
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Text_Tmp'
        DataSource = dsInformesLin
        ParentColor = True
        TabOrder = 1
      end
    end
  end
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 1273
    Height = 769
    Align = alClient
    Caption = 'Panel10'
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 357
      Top = 1
      Width = 6
      Height = 767
      Cursor = crHSplit
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 356
      Height = 767
      Align = alLeft
      Color = 16772294
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 354
        Height = 205
        ActivePage = TabSheet1
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabIndex = 0
        TabOrder = 0
        object TabSheet1: TTabSheet
          BorderWidth = 5
          Caption = 'Filtres autom'#224'tics'
          object Panel2: TPanel
            Left = 0
            Top = 141
            Width = 336
            Height = 25
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 5
            ParentColor = True
            TabOrder = 0
            object DBNavigator1: TDBNavigator
              Left = 251
              Top = 5
              Width = 80
              Height = 18
              DataSource = dsBusca
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alRight
              Flat = True
              TabOrder = 0
            end
            object bAplicaFiltres: TButton
              Left = 0
              Top = 0
              Width = 87
              Height = 25
              Caption = 'Aplica filtres'
              TabOrder = 1
              OnClick = bAplicaFiltresClick
            end
            object bNetejaFiltres: TButton
              Left = 93
              Top = 0
              Width = 87
              Height = 25
              Caption = 'Neteja filtres'
              TabOrder = 2
              OnClick = bNetejaFiltresClick
            end
          end
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 336
            Height = 136
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 1
            object fHistoria: THYEditFiltro
              Left = 0
              Top = 0
              Width = 336
              Height = 27
              Diccionario = wDataBasics.Filiacio
              DiccionarioCampo = 'num_hist'
              Campo = 'I.C_HISTORIA'
              Tipo = tiNumero
              Condicion = tiIgual
              EtiSepara = 100
              CondiFija = False
              Caption = 'N'#250'm. Hist'#242'ria'
              ParentColor = True
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
            end
            object fDataSol: THYEditFiltro
              Left = 0
              Top = 54
              Width = 336
              Height = 27
              Campo = 'R.DATA'
              Tipo = tiFecha
              Condicion = tiMayor
              EtiSepara = 100
              CondiFija = False
              Caption = 'Data de sol'#183'licitud'
              ParentColor = True
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
            end
            object fUsuari: THYEditFiltro
              Left = 0
              Top = 27
              Width = 336
              Height = 27
              Diccionario = wDataBasics.Metges
              DiccionarioCampo = 'codi'
              Campo = 'I.C_USUARI'
              Tipo = tiCaracter
              Condicion = tiIgual
              EtiSepara = 100
              CondiFija = False
              Caption = 'Usuari'
              ParentColor = True
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
            end
            object fTipus: THYEditFiltro
              Left = 0
              Top = 81
              Width = 336
              Height = 27
              Diccionario = wDataInformes.Informes_Tipus
              DiccionarioCampo = 'C_TIPUS'
              Campo = 'I.C_TIPUS'
              Tipo = tiCaracter
              Condicion = tiIgual
              EtiSepara = 100
              CondiFija = False
              Caption = 'Tipus d'#39'informe'
              ParentColor = True
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 3
            end
            object fEstat: THYEditFiltro
              Left = 0
              Top = 108
              Width = 336
              Height = 27
              Diccionario = wDataCodis.CodiCamps
              DiccionarioCampo = 'C_CODI'
              DiccionarioFiltro = 'TIPUSCODI = '#39'INFORMES.ESTAT'#39
              Campo = 'I.C_ESTAT'
              Tipo = tiNumero
              Condicion = tiIgual
              EtiSepara = 100
              CondiFija = False
              Caption = 'Estat'
              ParentColor = True
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 4
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 136
            Width = 336
            Height = 5
            Align = alBottom
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
          end
        end
        object TabSheet2: TTabSheet
          BorderWidth = 5
          Caption = 'Custom SQL'
          ImageIndex = 1
          object Memo: TMemo
            Left = 0
            Top = 0
            Width = 336
            Height = 136
            Align = alClient
            Lines.Strings = (
              'select * from INFORMES I'
              
                'left outer join INFORMES_REG R on I.ID_INFORME = R.ID_INFORME an' +
                'd R.LINIA = 1 and R.ACCIO = 1'
              'left outer join METGES M on I.C_USUARI = M.CODI'
              'where 1 = 1 '
              'order by R.DATA, I.C_HISTORIA')
            ScrollBars = ssBoth
            TabOrder = 0
            WordWrap = False
          end
          object Panel4: TPanel
            Left = 0
            Top = 141
            Width = 336
            Height = 25
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 5
            ParentColor = True
            TabOrder = 1
            object DBNavigator2: TDBNavigator
              Left = 240
              Top = 5
              Width = 80
              Height = 18
              DataSource = dsBusca
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alRight
              Flat = True
              TabOrder = 0
            end
            object bAplicaSQL: TButton
              Left = 0
              Top = 0
              Width = 97
              Height = 25
              Caption = 'Aplica SQL'
              TabOrder = 1
              OnClick = bAplicaSQLClick
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 136
            Width = 336
            Height = 5
            Align = alBottom
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
          end
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 206
        Width = 354
        Height = 560
        Align = alClient
        DataSource = dsBusca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_INFORME'
            Title.Caption = 'ID'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_HISTORIA'
            Title.Caption = 'N'#250'm. Hist.'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_TIPUS'
            Title.Caption = 'TIpus'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_USUARI'
            Title.Caption = 'Codi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'METGE'
            Title.Caption = 'Usuari'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data sol'#183'licitud'
            Visible = True
          end>
      end
    end
    object Panel6: TPanel
      Left = 363
      Top = 1
      Width = 909
      Height = 767
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter3: TSplitter
        Left = 0
        Top = 634
        Width = 909
        Height = 6
        Cursor = crVSplit
        Align = alBottom
      end
      object Splitter4: TSplitter
        Left = 0
        Top = 449
        Width = 909
        Height = 6
        Cursor = crVSplit
        Align = alBottom
      end
      object HYBarra1: THYBarra
        Left = 0
        Top = 0
        Width = 909
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = ' '
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        DataSource = dsInformes
        VerOrdenar = False
        VerIndices = False
        Titulo = False
        VerPrint = False
        VerRefresh = True
      end
      object Panel7: TPanel
        Left = 0
        Top = 455
        Width = 909
        Height = 179
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object HYBarra2: THYBarra
          Left = 0
          Top = 0
          Width = 909
          Height = 25
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 
            '                                                                ' +
            '                          REGISTRE D'#39'ACCIONS'
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
          DataSource = dsInformesReg
          VerOrdenar = False
          VerSalir = False
          VerIndices = False
          Titulo = False
          VerPrint = False
          VerRefresh = True
        end
        object HYGrid1: THYGrid
          Left = 0
          Top = 25
          Width = 909
          Height = 154
          Align = alClient
          Color = clWhite
          DataSource = dsInformesReg
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
              FieldName = 'ID_Informe'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Linia'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Accio'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'accio_N_Codi'
              Title.Caption = 'Descripci'#243' acci'#243
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_USUARI'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usuari_Metge'
              Title.Caption = 'Nom usuari'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMENTARI'
              Width = 300
              Visible = True
            end>
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 640
        Width = 909
        Height = 127
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object HYBarra3: THYBarra
          Left = 0
          Top = 0
          Width = 909
          Height = 30
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 
            '                                                         PUBLICA' +
            'CI'#211' HCCC'
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
          DataSource = dsInformesHC3
          VerOrdenar = False
          VerSalir = False
          VerIndices = False
          Titulo = False
          VerPrint = False
          VerRefresh = True
          object bRepublica: TSpeedButton
            Left = 351
            Top = 1
            Width = 74
            Height = 25
            Caption = 'Republica'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000A0000000D0000000100
              04000000000068000000CE0E0000D80E00001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
              0000333333333300000099333333330000009F993333330000009FFF99333300
              00009FFFFF99330000009FFFFFFF930000009FFFFF99330000009FFF99333300
              00009F9933333300000099333333330000003333333333000000333333333300
              0000}
            ParentFont = False
            OnClick = bRepublicaClick
          end
          object Label2: TLabel
            Left = 577
            Top = 1
            Width = 344
            Height = 26
            Caption = 
              'Publicar_HC3/Publicar_APP prevalen sobre el que consti al tipus ' +
              'd'#39'informe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object bEsborra: TSpeedButton
            Left = 426
            Top = 1
            Width = 95
            Height = 25
            Caption = 'Despublica'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              AA030000424DAA03000000000000360000002800000011000000110000000100
              1800000000007403000000000000000000000000000000000000DFE6E7CAD5D6
              C5D0D2C8D3D4C8D3D4C8D3D4C9D4D6C9D4D6CAD5D6CAD5D6CFD9DACFD9DACFD8
              DACFD8DACDD7D8C8D3D5D4DBDC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D3
              D500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED8DA00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFD0DADB00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DADB00FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF585858000000FFFFFFFFFFFFFFFFFFFFFFFF00
              0000585858FFFFFFFFFFFFFFFFFFCFD9DB00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF585858000000000000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFF
              FFFFCFD9DB00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
              00585858000000000000FFFFFFFFFFFFFFFFFFFFFFFFCCD6D800FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000585858FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFCCD6D800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000000000000000585858FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD6
              D800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000585858
              000000000000FFFFFFFFFFFFFFFFFFFFFFFFCDD7D900FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF000000585858585858FFFFFFFFFFFF000000585858585858FFFFFF
              FFFFFFFFFFFFCDD7D900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF585858000000FF
              FFFFFFFFFFFFFFFFFFFFFF585858585858FFFFFFFFFFFFFFFFFFCBD6D700FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBD6D700FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFCBD5D700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAD5D600FDFEFEF5F9F9
              F1F6F7EDF4F5EBF3F4EBF3F4EAF2F3EAF2F3E9F2F3E9F2F3E8F1F2E8F1F2E7F0
              F2E7F0F2E5EFF1E1ECEDDFE6E700}
            ParentFont = False
            OnClick = bEsborraClick
          end
        end
        object HYGrid3: THYGrid
          Left = 0
          Top = 30
          Width = 909
          Height = 97
          Align = alClient
          Color = clWhite
          DataSource = dsInformesHC3
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
              FieldName = 'ID_Informe'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Linia'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_nHCE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Publicar_HC3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_HCCC_OLD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_HCCC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Publicar_APP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_APP'
              Width = 243
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_APP_OLD'
              Visible = True
            end>
        end
      end
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 25
        Width = 909
        Height = 424
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 3
        object HYArea1: THYArea
          Left = 0
          Top = 0
          Width = 905
          Height = 417
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = True
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
          DataSource = dsInformes
          object Eti_bInformes_hist_NomComplet: THYLabel
            Left = 176
            Top = 58
            Width = 320
            Height = 19
            DataField = 'hist_NomComplet'
            DataSource = dsInformes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tipus_N_Tipus: THYLabel
            Left = 145
            Top = 82
            Width = 302
            Height = 19
            DataField = 'tipus_N_Tipus'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_usuari_Metge: THYLabel
            Left = 145
            Top = 106
            Width = 91
            Height = 19
            DataField = 'usuari_Metge'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_usuari_Nomsencer: THYLabel
            Left = 243
            Top = 106
            Width = 254
            Height = 19
            DataField = 'usuari_Nomsencer'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tdoc_N_Codi: THYLabel
            Left = 126
            Top = 186
            Width = 57
            Height = 19
            DataField = 'tdoc_N_Codi'
            DataSource = dsInformes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_entrega_N_Codi: THYLabel
            Left = 126
            Top = 214
            Width = 150
            Height = 19
            DataField = 'entrega_N_Codi'
            DataSource = dsInformes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tract_C_Prestacio: THYLabel
            Left = 176
            Top = 19
            Width = 50
            Height = 34
            DataField = 'tract_C_Prestacio'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Prestaci'#243
            EtiSepara = 13
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tract_Data_Ingres: THYLabel
            Left = 233
            Top = 19
            Width = 70
            Height = 34
            DataField = 'tract_Data_Ingres'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Data ingr'#233's'
            EtiSepara = 13
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tract_Data_Alta: THYLabel
            Left = 385
            Top = 19
            Width = 70
            Height = 34
            DataField = 'tract_Data_Alta'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Data alta'
            EtiSepara = 13
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tract_C_Coordinador: THYLabel
            Left = 462
            Top = 19
            Width = 34
            Height = 34
            DataField = 'tract_C_Coordinador'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Coord.'
            EtiSepara = 13
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object Label1: TLabel
            Left = 554
            Top = 154
            Width = 47
            Height = 13
            Caption = 'Comentari'
          end
          object Eti_bInformes_estat_N_Codi: THYLabel
            Left = 88
            Top = 386
            Width = 312
            Height = 19
            DataField = 'estat_N_Codi'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 50
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_plantilla_N_Plantilla: THYLabel
            Left = 88
            Top = 337
            Width = 312
            Height = 19
            DataField = 'plantilla_N_Plantilla'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 0
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_gestionat_N_Codi: THYLabel
            Left = 126
            Top = 134
            Width = 150
            Height = 19
            DataField = 'gestionat_N_Codi'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tipus_Publicar_HC3: THYLabel
            Left = 457
            Top = 82
            Width = 104
            Height = 19
            DataField = 'tipus_Publicar_HC3'
            DataSource = dsInformes
            EtiFontColor = 16744448
            HyColorNo = False
            Etiqueta = 'Publicar a l'#39'HC3'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
          end
          object Label3: TLabel
            Left = 572
            Top = 365
            Width = 242
            Height = 13
            Caption = '(anotaci'#243' que ha generat l'#39'informe - CE*/F2*/INF...)'
          end
          object Eti_bInformes_tract_Fi_Proces: THYLabel
            Left = 566
            Top = 19
            Width = 19
            Height = 34
            DataField = 'tract_Fi_Proces'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Fi'
            EtiSepara = 13
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tract_C_Proces: THYLabel
            Left = 502
            Top = 19
            Width = 58
            Height = 34
            DataField = 'tract_C_Proces'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'C. Proc'#233's'
            EtiSepara = 13
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tract_C_CentreFac: THYLabel
            Left = 598
            Top = 19
            Width = 50
            Height = 34
            DataField = 'tract_C_CentreFac'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'CentreFac'
            EtiSepara = 13
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_hist_IDIOMA: THYLabel
            Left = 502
            Top = 58
            Width = 119
            Height = 19
            DataField = 'hist_IDIOMA'
            DataSource = dsInformes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            EtiFontColor = clGreen
            HyColorNo = False
            Etiqueta = 'Idioma del pacient'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_plantilla_Idioma: THYLabel
            Left = 412
            Top = 337
            Width = 219
            Height = 19
            DataField = 'plantilla_Idioma'
            DataSource = dsInformes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            EtiFontColor = clGreen
            HyColorNo = False
            Etiqueta = 'Idioma de la plantilla'
            EtiSepara = 110
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tract_Data_PreAlta: THYLabel
            Left = 309
            Top = 19
            Width = 70
            Height = 34
            DataField = 'tract_Data_PreAlta'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Data prealta'
            EtiSepara = 13
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tipus_Publicar_APP: THYLabel
            Left = 573
            Top = 82
            Width = 104
            Height = 19
            DataField = 'tipus_Publicar_APP'
            DataSource = dsInformes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            EtiFontColor = 16744703
            HyColorNo = False
            Etiqueta = 'Publicar a l'#39'APP'
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_tract_C_Client: THYLabel
            Left = 654
            Top = 19
            Width = 50
            Height = 34
            DataField = 'tract_C_Client'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            Etiqueta = 'Client'
            EtiSepara = 13
            EtiOrienta = eoArriba
            EtiAlign = taLeftJustify
          end
          object HYLabel1: THYLabel
            Left = 693
            Top = 82
            Width = 99
            Height = 19
            Hint = 
              'Valor S: S'#39'ha de publicar amb el diagn'#242'stic a l'#39'alta de l'#39'episod' +
              'i'
            DataField = 'tipus_DIAGNOSTIC_ALTA'
            DataSource = dsInformes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            EtiFontColor = clBlack
            HyColorNo = False
            Etiqueta = 'Diagn'#242'stic alta'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
          end
          object Eti_bInformes_idioma_N_Codi: THYLabel
            Left = 88
            Top = 307
            Width = 85
            Height = 19
            DataField = 'idioma_N_Codi'
            DataSource = dsInformes
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Label5: TLabel
            Left = 182
            Top = 310
            Width = 383
            Height = 13
            Caption = 
              '---> Per a l'#39'informe d'#39#237'tems, si n'#39'hi ha. S'#39'utilitzar'#224' per a tri' +
              'ar la plantilla posteriorment'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 118
            Top = 278
            Width = 694
            Height = 13
            Caption = 
              '---> Per a l'#39'informe d'#39#237'tems. S'#39'utilitza per a filtrar els '#237'tems' +
              ' quan un tipus d'#39'informe t'#233' diverses plantilles amb '#237'tems difere' +
              'nts. (= TipusECB per als AHO)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Ed_bInformes_C_HISTORIA: THYEdit
            Left = 10
            Top = 58
            Width = 159
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. Hist.'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'C_HISTORIA'
          end
          object Ed_bInformes_C_USUARI: THYEdit
            Left = 10
            Top = 106
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Qui el far'#224
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'C_USUARI'
          end
          object Ed_bInformes_SOLICITANT: THYEdit
            Left = 10
            Top = 162
            Width = 309
            Height = 19
            Idioma = Castellano
            EtiFontColor = clGray
            Eti = 'Sol'#183'licitant'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 2
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'SOLICITANT'
          end
          object Ed_bInformes_C_ENTREGA: THYEdit
            Left = 10
            Top = 214
            Width = 110
            Height = 19
            Idioma = Castellano
            EtiFontColor = 16744703
            Eti = 'Forma d'#39'entrega'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'C_ENTREGA'
          end
          object Check_bInformes_URGENT: THYCheck
            Left = 296
            Top = 135
            Width = 79
            Height = 17
            Alignment = taRightJustify
            Caption = 'Urgent'
            DataField = 'URGENT'
            DataSource = dsInformes
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object Ed_bInformes_ID_Informe: THYEdit
            Left = 10
            Top = 10
            Width = 159
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'ID Informe'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'ID_Informe'
          end
          object Ed_bInformes_C_Tipus: THYEdit
            Left = 10
            Top = 82
            Width = 129
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tipus'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'C_Tipus'
          end
          object Ed_bInformes_Parentiu: THYEdit
            Left = 338
            Top = 162
            Width = 157
            Height = 19
            Idioma = Castellano
            EtiFontColor = clGray
            Eti = 'Parentiu'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'Parentiu'
          end
          object Ed_bInformes_T_DOC: THYEdit
            Left = 10
            Top = 186
            Width = 110
            Height = 19
            Idioma = Castellano
            EtiFontColor = clGray
            Eti = 'Document'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'T_DOC'
          end
          object Ed_bInformes_NUM_DOC: THYEdit
            Left = 190
            Top = 186
            Width = 86
            Height = 19
            Idioma = Castellano
            EtiFontColor = clGray
            Eti = 'N'#250'm. Document'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 9
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'NUM_DOC'
          end
          object Ed_bInformes_Contacte: THYEdit
            Left = 282
            Top = 214
            Width = 229
            Height = 19
            Idioma = Castellano
            EtiFontColor = clGray
            Eti = 'Contacte'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'Contacte'
          end
          object Ed_bInformes_C_Tractament: THYEdit
            Left = 10
            Top = 34
            Width = 159
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'C. Tractament'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 11
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'C_Tractament'
          end
          object Ed_bInformes_COMENTARI: THYMemo
            Left = 554
            Top = 170
            Width = 335
            Height = 57
            DataField = 'COMENTARI'
            DataSource = dsInformes
            ParentColor = True
            TabOrder = 12
          end
          object Ed_bInformes_C_ESTAT: THYEdit
            Left = 10
            Top = 386
            Width = 75
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Estat'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'C_ESTAT'
          end
          object Ed_bInformes_Arxiu: THYEdit
            Left = 10
            Top = 362
            Width = 313
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Arxiu'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 14
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'Arxiu'
          end
          object Ed_bInformes_C_Plantilla: THYEdit
            Left = 10
            Top = 338
            Width = 75
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Plantilla'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'C_Plantilla'
          end
          object Ed_bInformes_Gestionat: THYEdit
            Left = 10
            Top = 134
            Width = 111
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Gestionat per'
            EtiSepara = 90
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'Gestionat'
          end
          object Ed_bInformes_C_Anotacio: THYEdit
            Left = 412
            Top = 362
            Width = 154
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'C Anotaci'#243
            EtiSepara = 85
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            TabOrder = 17
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'C_Anotacio'
          end
          object Ed_bInformes_Versio: THYEdit
            Left = 334
            Top = 362
            Width = 66
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Versi'#243
            EtiSepara = 40
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            TabOrder = 18
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'Versio'
          end
          object Check_bInformes_Publicar_HC3: THYCheck
            Left = 10
            Top = 243
            Width = 113
            Height = 17
            Alignment = taRightJustify
            Caption = 'Publicar a l'#39'HC3'
            DataField = 'Publicar_HC3'
            DataSource = dsInformes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16744448
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object Ed_bInformes_Idioma: THYEdit
            Left = 10
            Top = 307
            Width = 75
            Height = 19
            Idioma = Castellano
            EtiFontColor = clGreen
            Eti = 'Idioma'
            EtiSepara = 50
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'Idioma'
          end
          object Ed_bInformes_Tipus_Plantilla: THYEdit
            Left = 10
            Top = 275
            Width = 101
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tipus plantilla'
            EtiSepara = 78
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataInformes.Informes
            TabOrder = 21
            AutoSelect = False
            DataSource = dsInformes
            DataField = 'Tipus_Plantilla'
          end
        end
      end
    end
  end
  object bInformes: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsBusca
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInformes.Informes
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'ID_INFORME = :id_informe')
    Padre = dsBusca
    Left = 40
    Top = 312
    object bInformes_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldName = 'C_HISTORIA'
      DisplayFormat = '#,##0;; '
    end
    object bInformes_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_USUARI'
      Size = 5
    end
    object bInformes_Solicitant: TStringField
      Tag = 100
      DisplayLabel = 'Sol'#183'licitant'
      DisplayWidth = 80
      FieldName = 'SOLICITANT'
      Size = 80
    end
    object bInformes_C_Entrega: TSmallintField
      Tag = 100
      DisplayLabel = 'Forma d'#39'entrega'
      DisplayWidth = 2
      FieldName = 'C_ENTREGA'
    end
    object bInformes_Urgent: TStringField
      Tag = 100
      DisplayLabel = 'Urgent'
      DisplayWidth = 1
      FieldName = 'URGENT'
      Size = 1
    end
    object bInformes_C_Estat: TSmallintField
      Tag = 100
      DisplayLabel = 'Estat'
      DisplayWidth = 2
      FieldName = 'C_ESTAT'
    end
    object bInformes_Comentari: TStringField
      Tag = 100
      DisplayLabel = 'Comentari'
      DisplayWidth = 250
      FieldName = 'COMENTARI'
      Size = 250
    end
    object bInformes_ID_Informe: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Informe'
      DisplayWidth = 8
      FieldName = 'ID_Informe'
      DisplayFormat = '#,##0;; '
    end
    object bInformes_C_Tipus: TStringField
      Tag = 100
      DisplayLabel = 'Tipus'
      DisplayWidth = 3
      FieldName = 'C_Tipus'
      Size = 3
    end
    object bInformes_Parentiu: TStringField
      Tag = 100
      DisplayWidth = 80
      FieldName = 'Parentiu'
      Size = 80
    end
    object bInformes_T_DOC: TStringField
      Tag = 100
      DisplayLabel = 'Tipus document'
      DisplayWidth = 1
      FieldName = 'T_DOC'
      Size = 1
    end
    object bInformes_NUM_DOC: TStringField
      Tag = 100
      DisplayLabel = 'N'#250'm. Document'
      DisplayWidth = 15
      FieldName = 'NUM_DOC'
      Size = 15
    end
    object bInformes_Contacte: TStringField
      Tag = 100
      DisplayWidth = 40
      FieldName = 'Contacte'
      Size = 40
    end
    object bInformes_Arxiu: TStringField
      Tag = 100
      DisplayWidth = 100
      FieldName = 'Arxiu'
      Size = 100
    end
    object bInformes_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
      DisplayFormat = '#,##0;; '
    end
    object bInformes_C_Plantilla: TIntegerField
      Tag = 100
      DisplayLabel = 'Codi de plantilla'
      DisplayWidth = 8
      FieldName = 'C_Plantilla'
      DisplayFormat = '#,##0;; '
    end
    object bInformes_Gestionat: TSmallintField
      Tag = 100
      DisplayLabel = 'Gestionat per'
      DisplayWidth = 2
      FieldName = 'Gestionat'
    end
    object bInformes_C_Anotacio: TIntegerField
      Tag = 100
      DisplayLabel = 'C Anotaci'#243
      DisplayWidth = 8
      FieldName = 'C_Anotacio'
      DisplayFormat = '#,##0;; '
    end
    object bInformes_Versio: TSmallintField
      Tag = 100
      DisplayLabel = 'Versi'#243
      DisplayWidth = 2
      FieldName = 'Versio'
    end
    object bInformes_Publicar_HC3: TStringField
      Tag = 100
      DisplayLabel = 'Publicar a l'#39'HC3'
      DisplayWidth = 1
      FieldName = 'Publicar_HC3'
      Size = 1
    end
    object bInformes_Idioma: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Idioma'
    end
    object bInformes_Tipus_Plantilla: TIntegerField
      Tag = 100
      DisplayLabel = 'Tipus plantilla'
      DisplayWidth = 8
      FieldName = 'Tipus_Plantilla'
      DisplayFormat = '#,##0;; '
    end
    object bInformes_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'hist_NUM_HIST'
      LookupKeyFields = 'NUM_HIST'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_1: TStringField
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
    object bInformes_C0_2: TStringField
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
    object bInformes_C0_3: TIntegerField
      Tag = 101
      DisplayLabel = 'Edat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_Edat'
      LookupKeyFields = 'Edat'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_4: TStringField
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
    object bInformes_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'hist_APELLIDO1'
      LookupKeyFields = 'APELLIDO1'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'hist_APELLIDO2'
      LookupKeyFields = 'APELLIDO2'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'hist_NOMBRE'
      LookupKeyFields = 'NOMBRE'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_8: TSmallintField
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
    object bInformes_C0_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat M'#232'dica'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'hist_C_UnitatMedica'
      LookupKeyFields = 'C_UnitatMedica'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_10: TStringField
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
    object bInformes_C0_11: TStringField
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
    object bInformes_C0_12: TDateTimeField
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
    object bInformes_C0_13: TStringField
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
    object bInformes_C0_14: TStringField
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
    object bInformes_C0_15: TStringField
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
    object bInformes_C0_16: TStringField
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
    object bInformes_C0_17: TSmallintField
      Tag = 101
      DisplayLabel = 'UM_ANTIGA'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_UM_ANTIGA'
      LookupKeyFields = 'UM_ANTIGA'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_18: TSmallintField
      Tag = 101
      DisplayLabel = 'Lateralitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_c_Lateralitat'
      LookupKeyFields = 'c_Lateralitat'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_19: TStringField
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
    object bInformes_C0_20: TStringField
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
    object bInformes_C0_21: TStringField
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
    object bInformes_C0_22: TStringField
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
    object bInformes_C0_23: TStringField
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
    object bInformes_C0_24: TSmallintField
      Tag = 101
      DisplayLabel = 'Hospital primera atencio'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'hist_C_HOSPITAL'
      LookupKeyFields = 'C_HOSPITAL'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_25: TStringField
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
    object bInformes_C0_26: TSmallintField
      Tag = 101
      DisplayLabel = 'Idioma'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'hist_IDIOMA'
      LookupKeyFields = 'IDIOMA'
      KeyFields = 'hist'
      Calculated = True
    end
    object bInformes_C0_27: TStringField
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
    object bInformes_C0_28: TStringField
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
    object bInformes_C0_29: TStringField
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
    object bInformes_C0_30: TIntegerField
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
    object bInformes_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi tipus'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tipus_C_Tipus'
      LookupKeyFields = 'C_Tipus'
      KeyFields = 'tipus'
      Size = 3
      Calculated = True
    end
    object bInformes_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' tipus'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'tipus_N_Tipus'
      LookupKeyFields = 'N_Tipus'
      KeyFields = 'tipus'
      Size = 80
      Calculated = True
    end
    object bInformes_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_Centre'
      LookupKeyFields = 'Centre'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object bInformes_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Sol'#183'licitable'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_Solicitable'
      LookupKeyFields = 'Solicitable'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object bInformes_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipus_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'tipus'
      Calculated = True
    end
    object bInformes_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Conjunt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_Conjunt'
      LookupKeyFields = 'Conjunt'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object bInformes_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'S'#39'ha de corregir'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_Corregir'
      LookupKeyFields = 'Corregir'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object bInformes_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Validaci'#243' autom'#224'tica'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_ValidacioAuto'
      LookupKeyFields = 'ValidacioAuto'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object bInformes_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Impressi'#243' autom'#224'tica'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_ImpressioAuto'
      LookupKeyFields = 'ImpressioAuto'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object bInformes_C1_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Gestionat per'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipus_Gestionat'
      LookupKeyFields = 'Gestionat'
      KeyFields = 'tipus'
      Calculated = True
    end
    object bInformes_C1_10: TStringField
      Tag = 101
      DisplayLabel = 'Publicar a l'#39'HC3'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_Publicar_HC3'
      LookupKeyFields = 'Publicar_HC3'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object bInformes_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Utilitza diagn'#242'stic a l'#39'alta'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_Diagnostic_Alta'
      LookupKeyFields = 'Diagnostic_Alta'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object bInformes_C1_12: TStringField
      Tag = 101
      DisplayLabel = 'Publicar a l'#39'APP'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipus_Publicar_APP'
      LookupKeyFields = 'Publicar_APP'
      KeyFields = 'tipus'
      Size = 1
      Calculated = True
    end
    object bInformes_C2_0: TStringField
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
    object bInformes_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformes_C2_2: TStringField
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
    object bInformes_C2_3: TStringField
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
    object bInformes_C2_4: TStringField
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
    object bInformes_C2_5: TStringField
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
    object bInformes_C2_6: TStringField
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
    object bInformes_C2_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuari_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformes_C2_8: TStringField
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
    object bInformes_C2_9: TStringField
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
    object bInformes_C2_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformes_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformes_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformes_C2_13: TStringField
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
    object bInformes_C2_14: TStringField
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
    object bInformes_C2_15: TStringField
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
    object bInformes_C2_16: TIntegerField
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
    object bInformes_C2_17: TDateTimeField
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
    object bInformes_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tdoc_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'tdoc'
      Size = 1
      Calculated = True
    end
    object bInformes_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'tdoc_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'tdoc'
      Size = 60
      Calculated = True
    end
    object bInformes_C4_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'entrega_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'entrega'
      Calculated = True
    end
    object bInformes_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'entrega_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'entrega'
      Size = 40
      Calculated = True
    end
    object bInformes_C4_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'entrega_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'entrega'
      Calculated = True
    end
    object bInformes_C4_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'entrega_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'entrega'
      Size = 40
      Calculated = True
    end
    object bInformes_C4_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'entrega_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'entrega'
      Size = 10
      Calculated = True
    end
    object bInformes_C4_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'entrega_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'entrega'
      Calculated = True
    end
    object bInformes_C5_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'estat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'estat'
      Calculated = True
    end
    object bInformes_C5_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'estat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'estat'
      Size = 40
      Calculated = True
    end
    object bInformes_C5_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'estat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'estat'
      Calculated = True
    end
    object bInformes_C5_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'estat_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'estat'
      Size = 40
      Calculated = True
    end
    object bInformes_C5_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'estat_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'estat'
      Size = 10
      Calculated = True
    end
    object bInformes_C5_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'estat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'estat'
      Calculated = True
    end
    object bInformes_C6_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tract_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'tract'
      DisplayFormat = '#,###;; '
      Calculated = True
    end
    object bInformes_C6_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'tract'
      Calculated = True
    end
    object bInformes_C6_2: TStringField
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
    object bInformes_C6_3: TDateTimeField
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
    object bInformes_C6_4: TDateTimeField
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
    object bInformes_C6_5: TDateTimeField
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
    object bInformes_C6_6: TStringField
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
    object bInformes_C6_7: TStringField
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
    object bInformes_C6_8: TStringField
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
    object bInformes_C6_9: TFloatField
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
    object bInformes_C6_10: TStringField
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
    object bInformes_C6_11: TStringField
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
    object bInformes_C6_12: TStringField
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
    object bInformes_C6_13: TStringField
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
    object bInformes_C6_14: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat Facturaci'#243
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'tract_C_EstatFac'
      LookupKeyFields = 'C_EstatFac'
      KeyFields = 'tract'
      Calculated = True
    end
    object bInformes_C6_15: TSmallintField
      Tag = 101
      DisplayLabel = 'Vegada'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_Vegada'
      LookupKeyFields = 'Vegada'
      KeyFields = 'tract'
      Calculated = True
    end
    object bInformes_C6_16: TSmallintField
      Tag = 101
      DisplayLabel = 'Motiu'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_C_Motiu'
      LookupKeyFields = 'C_Motiu'
      KeyFields = 'tract'
      Calculated = True
    end
    object bInformes_C6_17: TStringField
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
    object bInformes_C6_18: TStringField
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
    object bInformes_C6_19: TStringField
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
    object bInformes_C6_20: TIntegerField
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
    object bInformes_C6_21: TStringField
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
    object bInformes_C6_22: TStringField
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
    object bInformes_C6_23: TStringField
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
    object bInformes_C6_24: TStringField
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
    object bInformes_C6_25: TStringField
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
    object bInformes_C6_26: TStringField
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
    object bInformes_C6_27: TStringField
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
    object bInformes_C6_28: TDateTimeField
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
    object bInformes_C6_29: TIntegerField
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
    object bInformes_C7_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi Plantilla'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'plantilla_C_Plantilla'
      LookupKeyFields = 'C_Plantilla'
      KeyFields = 'plantilla'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformes_C7_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' plantilla'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'plantilla_N_Plantilla'
      LookupKeyFields = 'N_Plantilla'
      KeyFields = 'plantilla'
      Size = 40
      Calculated = True
    end
    object bInformes_C7_2: TStringField
      Tag = 101
      DisplayLabel = 'Codi Tipus'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'plantilla_C_Tipus'
      LookupKeyFields = 'C_Tipus'
      KeyFields = 'plantilla'
      Size = 3
      Calculated = True
    end
    object bInformes_C7_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Idioma'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'plantilla_Idioma'
      LookupKeyFields = 'Idioma'
      KeyFields = 'plantilla'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformes_C7_4: TStringField
      Tag = 101
      DisplayLabel = 'Arxiu'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'plantilla_Arxiu'
      LookupKeyFields = 'Arxiu'
      KeyFields = 'plantilla'
      Size = 100
      Calculated = True
    end
    object bInformes_C7_5: TIntegerField
      Tag = 101
      DisplayLabel = 'Tipus ECB'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'plantilla_TipusECB'
      LookupKeyFields = 'TipusECB'
      KeyFields = 'plantilla'
      Calculated = True
    end
    object bInformes_C8_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'gestionat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'gestionat'
      Calculated = True
    end
    object bInformes_C8_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'gestionat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'gestionat'
      Size = 40
      Calculated = True
    end
    object bInformes_C8_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'gestionat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'gestionat'
      Calculated = True
    end
    object bInformes_C8_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'gestionat_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'gestionat'
      Size = 40
      Calculated = True
    end
    object bInformes_C8_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'gestionat_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'gestionat'
      Size = 10
      Calculated = True
    end
    object bInformes_C8_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'gestionat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'gestionat'
      Calculated = True
    end
    object bInformes_C9_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Hist'#242'ria'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'anota_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'anota'
      Calculated = True
    end
    object bInformes_C9_1: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data'
      DisplayWidth = 16
      FieldKind = fkCalculated
      FieldName = 'anota_Data'
      LookupKeyFields = 'Data'
      KeyFields = 'anota'
      DisplayFormat = 'dd"."mmm"."yyyy hh:nn:ss'
      Calculated = True
    end
    object bInformes_C9_2: TStringField
      Tag = 101
      DisplayLabel = 'Impr'#233's'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'anota_Impres'
      LookupKeyFields = 'Impres'
      KeyFields = 'anota'
      Size = 1
      Calculated = True
    end
    object bInformes_C9_3: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Anotaci'#243
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'anota_C_Anotacio'
      LookupKeyFields = 'C_Anotacio'
      KeyFields = 'anota'
      Calculated = True
    end
    object bInformes_C9_4: TIntegerField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'anota_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'anota'
      Calculated = True
    end
    object bInformes_C9_5: TStringField
      Tag = 101
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'anota_C_Usuari'
      LookupKeyFields = 'C_Usuari'
      KeyFields = 'anota'
      Size = 5
      Calculated = True
    end
    object bInformes_C9_6: TStringField
      Tag = 101
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'anota_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'anota'
      Size = 4
      Calculated = True
    end
    object bInformes_C10_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'idioma_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'idioma'
      Calculated = True
    end
    object bInformes_C10_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'idioma_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'idioma'
      Size = 40
      Calculated = True
    end
    object bInformes_C10_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'idioma_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'idioma'
      Calculated = True
    end
    object bInformes_C10_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'idioma_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'idioma'
      Size = 40
      Calculated = True
    end
    object bInformes_C10_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'idioma_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'idioma'
      Size = 10
      Calculated = True
    end
    object bInformes_C10_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'idioma_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'idioma'
      Calculated = True
    end
  end
  object dsBusca: TDataSource
    DataSet = qBusca
    Left = 94
    Top = 248
  end
  object dsInformes: TDataSource
    DataSet = bInformes
    Left = 40
    Top = 360
  end
  object qBusca: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from INFORMES I'
      
        'left outer join INFORMES_REG R on I.ID_INFORME = R.ID_INFORME an' +
        'd R.LINIA = 1'
      'left outer join METGES M on I.C_USUARI = M.CODI'
      '/* filtres */'
      'order by ID_INFORME, C_HISTORIA')
    Left = 40
    Top = 248
    object qBuscaID_INFORME: TIntegerField
      FieldName = 'ID_INFORME'
      Origin = 'INFORMES.ID_INFORME'
      Required = True
    end
    object qBuscaC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
      Origin = 'INFORMES.C_HISTORIA'
      Required = True
    end
    object qBuscaC_TIPUS: TIBStringField
      FieldName = 'C_TIPUS'
      Origin = 'INFORMES.C_TIPUS'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qBuscaC_USUARI: TIBStringField
      FieldName = 'C_USUARI'
      Origin = 'INFORMES.C_USUARI'
      Size = 5
    end
    object qBuscaSOLICITANT: TIBStringField
      FieldName = 'SOLICITANT'
      Origin = 'INFORMES.SOLICITANT'
      Size = 80
    end
    object qBuscaPARENTIU: TIBStringField
      FieldName = 'PARENTIU'
      Origin = 'INFORMES.PARENTIU'
      Size = 80
    end
    object qBuscaT_DOC: TIBStringField
      FieldName = 'T_DOC'
      Origin = 'INFORMES.T_DOC'
      Size = 1
    end
    object qBuscaNUM_DOC: TIBStringField
      FieldName = 'NUM_DOC'
      Origin = 'INFORMES.NUM_DOC'
      Size = 10
    end
    object qBuscaC_ENTREGA: TSmallintField
      FieldName = 'C_ENTREGA'
      Origin = 'INFORMES.C_ENTREGA'
    end
    object qBuscaCONTACTE: TIBStringField
      FieldName = 'CONTACTE'
      Origin = 'INFORMES.CONTACTE'
      Size = 40
    end
    object qBuscaURGENT: TIBStringField
      FieldName = 'URGENT'
      Origin = 'INFORMES.URGENT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qBuscaCOMENTARI: TIBStringField
      FieldName = 'COMENTARI'
      Origin = 'INFORMES.COMENTARI'
      Size = 250
    end
    object qBuscaC_ESTAT: TSmallintField
      FieldName = 'C_ESTAT'
      Origin = 'INFORMES.C_ESTAT'
    end
    object qBuscaARXIU: TIBStringField
      FieldName = 'ARXIU'
      Origin = 'INFORMES.ARXIU'
      Size = 100
    end
    object qBuscaID_INFORME1: TIntegerField
      FieldName = 'ID_INFORME1'
      Origin = 'INFORMES_REG.ID_INFORME'
      Required = True
    end
    object qBuscaLINIA: TIntegerField
      FieldName = 'LINIA'
      Origin = 'INFORMES_REG.LINIA'
      Required = True
    end
    object qBuscaACCIO: TSmallintField
      FieldName = 'ACCIO'
      Origin = 'INFORMES_REG.ACCIO'
      Required = True
    end
    object qBuscaC_USUARI1: TIBStringField
      FieldName = 'C_USUARI1'
      Origin = 'INFORMES_REG.C_USUARI'
      Size = 5
    end
    object qBuscaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'INFORMES_REG.DATA'
    end
    object qBuscaCOMENTARI1: TIBStringField
      FieldName = 'COMENTARI1'
      Origin = 'INFORMES_REG.COMENTARI'
      Size = 200
    end
    object qBuscaCODI: TIBStringField
      FieldName = 'CODI'
      Origin = 'METGES.CODI'
      Required = True
      Size = 5
    end
    object qBuscaMETGE: TIBStringField
      FieldName = 'METGE'
      Origin = 'METGES.METGE'
    end
    object qBuscaCOGNOM: TIBStringField
      FieldName = 'COGNOM'
      Origin = 'METGES.COGNOM'
      Size = 15
    end
    object qBuscaNC: TIBStringField
      FieldName = 'NC'
      Origin = 'METGES.NC'
      FixedChar = True
      Size = 6
    end
    object qBuscaNOM: TIBStringField
      FieldName = 'NOM'
      Origin = 'METGES.NOM'
      FixedChar = True
      Size = 3
    end
    object qBuscaTRACTE: TIBStringField
      FieldName = 'TRACTE'
      Origin = 'METGES.TRACTE'
      FixedChar = True
      Size = 4
    end
    object qBuscaDIGCON: TIBStringField
      FieldName = 'DIGCON'
      Origin = 'METGES.DIGCON'
      FixedChar = True
      Size = 2
    end
    object qBuscaC_GRUP: TIBStringField
      FieldName = 'C_GRUP'
      Origin = 'METGES.C_GRUP'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qBuscaHORARI: TIBStringField
      FieldName = 'HORARI'
      Origin = 'METGES.HORARI'
      FixedChar = True
      Size = 1
    end
    object qBuscaDIA1: TIBStringField
      FieldName = 'DIA1'
      Origin = 'METGES.DIA1'
      FixedChar = True
      Size = 1
    end
    object qBuscaDIA2: TIBStringField
      FieldName = 'DIA2'
      Origin = 'METGES.DIA2'
      FixedChar = True
      Size = 1
    end
    object qBuscaPLANTA: TIBStringField
      FieldName = 'PLANTA'
      Origin = 'METGES.PLANTA'
      FixedChar = True
      Size = 5
    end
    object qBuscaBAIXA: TIBStringField
      FieldName = 'BAIXA'
      Origin = 'METGES.BAIXA'
      Required = True
      Size = 1
    end
    object qBuscaULTIMCANVICLAU: TDateTimeField
      FieldName = 'ULTIMCANVICLAU'
      Origin = 'METGES.ULTIMCANVICLAU'
    end
    object qBuscaHINHABILITAT: TDateTimeField
      FieldName = 'HINHABILITAT'
      Origin = 'METGES.HINHABILITAT'
    end
    object qBuscaAINHABILITAT: TIntegerField
      FieldName = 'AINHABILITAT'
      Origin = 'METGES.AINHABILITAT'
    end
    object qBuscaESUSEREXTRA: TIBStringField
      FieldName = 'ESUSEREXTRA'
      Origin = 'METGES.ESUSEREXTRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qBuscaC_ESPECIAL: TIBStringField
      FieldName = 'C_ESPECIAL'
      Origin = 'METGES.C_ESPECIAL'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qBuscaNOMSENCER: TIBStringField
      FieldName = 'NOMSENCER'
      Origin = 'METGES.NOMSENCER'
      Size = 40
    end
    object qBuscaC_SUPERVISOR: TIBStringField
      FieldName = 'C_SUPERVISOR'
      Origin = 'METGES.C_SUPERVISOR'
      Size = 5
    end
    object qBuscaDNI: TIBStringField
      FieldName = 'DNI'
      Origin = 'METGES.DNI'
      Size = 9
    end
    object qBuscaT_DOC1: TSmallintField
      FieldName = 'T_DOC1'
      Origin = 'METGES.T_DOC'
    end
    object qBuscaCOGNOM1: TIBStringField
      FieldName = 'COGNOM1'
      Origin = 'METGES.COGNOM1'
    end
    object qBuscaEXTENSIO: TIBStringField
      FieldName = 'EXTENSIO'
      Origin = 'METGES.EXTENSIO'
      Size = 3
    end
    object qBuscaPERFIL: TIBStringField
      FieldName = 'PERFIL'
      Origin = 'METGES.PERFIL'
      Size = 4
    end
    object qBuscaNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'METGES.NOMBRE'
    end
    object qBuscaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'METGES.EMAIL'
      Size = 250
    end
    object qBuscaEMAIL_CLAU: TIBStringField
      FieldName = 'EMAIL_CLAU'
      Origin = 'METGES.EMAIL_CLAU'
    end
    object qBuscaCLAUPAS: TIBStringField
      FieldName = 'CLAUPAS'
      Origin = 'METGES.CLAUPAS'
      Size = 40
    end
    object qBuscaCLAUPAS_1: TIBStringField
      FieldName = 'CLAUPAS_1'
      Origin = 'METGES.CLAUPAS_1'
      Size = 40
    end
    object qBuscaCLAUPAS_2: TIBStringField
      FieldName = 'CLAUPAS_2'
      Origin = 'METGES.CLAUPAS_2'
      Size = 40
    end
    object qBuscaE_INCORRECTES: TSmallintField
      FieldName = 'E_INCORRECTES'
      Origin = 'METGES.E_INCORRECTES'
      Required = True
    end
    object qBuscaE_GRACIA: TSmallintField
      FieldName = 'E_GRACIA'
      Origin = 'METGES.E_GRACIA'
      Required = True
    end
    object qBuscaUNITAT: TSmallintField
      FieldName = 'UNITAT'
      Origin = 'METGES.UNITAT'
    end
    object qBuscaDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
      Origin = 'METGES.DATA_BAIXA'
    end
    object qBuscaSEXE: TIBStringField
      FieldName = 'SEXE'
      Origin = 'METGES.SEXE'
      FixedChar = True
      Size = 1
    end
    object qBuscaNMETGERECEPTA: TIBStringField
      FieldName = 'NMETGERECEPTA'
      Origin = 'METGES.NMETGERECEPTA'
      Size = 9
    end
    object qBuscaC_UNITAT: TSmallintField
      FieldName = 'C_UNITAT'
      Origin = 'METGES.C_UNITAT'
    end
    object qBuscaC_PROV: TIBStringField
      FieldName = 'C_PROV'
      Origin = 'METGES.C_PROV'
      Size = 2
    end
  end
  object bInformesReg: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsBusca
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInformes.Informes_Reg
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsInformes
    Left = 180
    Top = 312
    object bInformesReg_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_USUARI'
      Size = 5
    end
    object bInformesReg_Comentari: TStringField
      Tag = 100
      DisplayLabel = 'Comentari'
      DisplayWidth = 250
      FieldName = 'COMENTARI'
      Size = 250
    end
    object bInformesReg_ID_Informe: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Informe'
      DisplayWidth = 8
      FieldName = 'ID_Informe'
      DisplayFormat = '#,##0;; '
    end
    object bInformesReg_Linia: TIntegerField
      Tag = 100
      DisplayLabel = 'L'#237'nia'
      DisplayWidth = 8
      FieldName = 'Linia'
      DisplayFormat = '#,##0;; '
    end
    object bInformesReg_Accio: TSmallintField
      Tag = 100
      DisplayLabel = 'Acci'#243
      DisplayWidth = 2
      FieldName = 'Accio'
    end
    object bInformesReg_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bInformesReg_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'ID Informe'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'informe_ID_Informe'
      LookupKeyFields = 'ID_Informe'
      KeyFields = 'informe'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformesReg_C0_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'informe_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'informe'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformesReg_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'informe_C_Tipus'
      LookupKeyFields = 'C_Tipus'
      KeyFields = 'informe'
      Size = 3
      Calculated = True
    end
    object bInformesReg_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'informe_C_Usuari'
      LookupKeyFields = 'C_Usuari'
      KeyFields = 'informe'
      Size = 5
      Calculated = True
    end
    object bInformesReg_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Urgent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'informe_Urgent'
      LookupKeyFields = 'Urgent'
      KeyFields = 'informe'
      Size = 1
      Calculated = True
    end
    object bInformesReg_C0_5: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'informe_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'informe'
      Calculated = True
    end
    object bInformesReg_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Arxiu'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'informe_Arxiu'
      LookupKeyFields = 'Arxiu'
      KeyFields = 'informe'
      Size = 100
      Calculated = True
    end
    object bInformesReg_C1_0: TStringField
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
    object bInformesReg_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesReg_C1_2: TStringField
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
    object bInformesReg_C1_3: TStringField
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
    object bInformesReg_C1_4: TStringField
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
    object bInformesReg_C1_5: TStringField
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
    object bInformesReg_C1_6: TStringField
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
    object bInformesReg_C1_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuari_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesReg_C1_8: TStringField
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
    object bInformesReg_C1_9: TStringField
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
    object bInformesReg_C1_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesReg_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesReg_C1_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesReg_C1_13: TStringField
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
    object bInformesReg_C1_14: TStringField
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
    object bInformesReg_C1_15: TStringField
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
    object bInformesReg_C1_16: TIntegerField
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
    object bInformesReg_C1_17: TDateTimeField
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
    object bInformesReg_C2_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'accio_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'accio'
      Calculated = True
    end
    object bInformesReg_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'accio_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'accio'
      Size = 40
      Calculated = True
    end
    object bInformesReg_C2_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'accio_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'accio'
      Calculated = True
    end
    object bInformesReg_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'accio_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'accio'
      Size = 40
      Calculated = True
    end
    object bInformesReg_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'accio_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'accio'
      Size = 10
      Calculated = True
    end
    object bInformesReg_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'accio_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'accio'
      Calculated = True
    end
  end
  object dsInformesReg: TDataSource
    DataSet = bInformesReg
    Left = 180
    Top = 360
  end
  object bInformesHC3: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsBusca
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInformes.Informes_HCCC
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsInformes
    Left = 260
    Top = 312
    object bInformesHC3_ID_Informe: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Informe'
      DisplayWidth = 8
      FieldName = 'ID_Informe'
      DisplayFormat = '#,##0;; '
    end
    object bInformesHC3_Linia: TIntegerField
      Tag = 100
      DisplayLabel = 'L'#237'nia'
      DisplayWidth = 8
      FieldName = 'Linia'
      DisplayFormat = '#,##0;; '
    end
    object bInformesHC3_ID_HCCC: TStringField
      Tag = 100
      DisplayLabel = 'ID HCCC'
      DisplayWidth = 50
      FieldName = 'ID_HCCC'
      Size = 50
    end
    object bInformesHC3_Republica: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Republica'
      Size = 1
    end
    object bInformesHC3_ID_nHCE: TIntegerField
      Tag = 100
      DisplayLabel = 'ID nova HCE'
      DisplayWidth = 8
      FieldName = 'ID_nHCE'
      DisplayFormat = '#,##0;; '
    end
    object bInformesHC3_Publicar_HC3: TStringField
      Tag = 100
      DisplayLabel = 'Publicar HC3'
      DisplayWidth = 1
      FieldName = 'Publicar_HC3'
      Size = 1
    end
    object bInformesHC3_Publicar_APP: TStringField
      Tag = 100
      DisplayLabel = 'Publicar APP'
      DisplayWidth = 1
      FieldName = 'Publicar_APP'
      Size = 1
    end
    object bInformesHC3_ID_APP: TStringField
      Tag = 100
      DisplayLabel = 'ID APP'
      DisplayWidth = 50
      FieldName = 'ID_APP'
      Size = 50
    end
    object bInformesHC3_ID_HCCC_OLD: TStringField
      Tag = 100
      DisplayLabel = 'ID HCCC anterior'
      DisplayWidth = 50
      FieldName = 'ID_HCCC_OLD'
      Size = 50
    end
    object bInformesHC3_ID_APP_OLD: TStringField
      Tag = 100
      DisplayLabel = 'ID APP anterior'
      DisplayWidth = 50
      FieldName = 'ID_APP_OLD'
      Size = 50
    end
    object bInformesHC3_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'ID Informe'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'informe_ID_Informe'
      LookupKeyFields = 'ID_Informe'
      KeyFields = 'informe'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformesHC3_C0_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'informe_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'informe'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformesHC3_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'informe_C_Tipus'
      LookupKeyFields = 'C_Tipus'
      KeyFields = 'informe'
      Size = 3
      Calculated = True
    end
    object bInformesHC3_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'informe_C_Usuari'
      LookupKeyFields = 'C_Usuari'
      KeyFields = 'informe'
      Size = 5
      Calculated = True
    end
    object bInformesHC3_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Urgent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'informe_Urgent'
      LookupKeyFields = 'Urgent'
      KeyFields = 'informe'
      Size = 1
      Calculated = True
    end
    object bInformesHC3_C0_5: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'informe_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'informe'
      Calculated = True
    end
    object bInformesHC3_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Arxiu'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'informe_Arxiu'
      LookupKeyFields = 'Arxiu'
      KeyFields = 'informe'
      Size = 100
      Calculated = True
    end
  end
  object dsInformesHC3: TDataSource
    DataSet = bInformesHC3
    Left = 260
    Top = 360
  end
  object bInformesLin: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsBusca
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInformes.Informes_Lin
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsInformes
    Left = 108
    Top = 312
    object bInformesLin_ID: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object bInformesLin_ID_Informe: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Informe'
      DisplayWidth = 8
      FieldName = 'ID_Informe'
      DisplayFormat = '#,##0;; '
    end
    object bInformesLin_C_Item: TIntegerField
      Tag = 100
      DisplayLabel = 'Codi '#237'tem'
      DisplayWidth = 8
      FieldName = 'C_Item'
      DisplayFormat = ' '
    end
    object bInformesLin_Text: TMemoField
      Tag = 100
      DisplayWidth = 30000
      FieldName = 'Text'
      BlobType = ftMemo
      Size = 30000
    end
    object bInformesLin_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object bInformesLin_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bInformesLin_Text_Tmp: TMemoField
      Tag = 100
      DisplayWidth = 30000
      FieldName = 'Text_Tmp'
      BlobType = ftMemo
      Size = 30000
    end
    object bInformesLin_Data_Tmp: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data_Tmp'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bInformesLin_C_Usuari_Tmp: TStringField
      Tag = 100
      DisplayLabel = 'Usuari_Tmp'
      DisplayWidth = 5
      FieldName = 'C_Usuari_Tmp'
      Size = 5
    end
    object bInformesLin_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'ID Informe'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'informe_ID_Informe'
      LookupKeyFields = 'ID_Informe'
      KeyFields = 'informe'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformesLin_C0_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'informe_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'informe'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformesLin_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'informe_C_Tipus'
      LookupKeyFields = 'C_Tipus'
      KeyFields = 'informe'
      Size = 3
      Calculated = True
    end
    object bInformesLin_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'informe_C_Usuari'
      LookupKeyFields = 'C_Usuari'
      KeyFields = 'informe'
      Size = 5
      Calculated = True
    end
    object bInformesLin_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Urgent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'informe_Urgent'
      LookupKeyFields = 'Urgent'
      KeyFields = 'informe'
      Size = 1
      Calculated = True
    end
    object bInformesLin_C0_5: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'informe_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'informe'
      Calculated = True
    end
    object bInformesLin_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Arxiu'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'informe_Arxiu'
      LookupKeyFields = 'Arxiu'
      KeyFields = 'informe'
      Size = 100
      Calculated = True
    end
    object bInformesLin_C1_0: TStringField
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
    object bInformesLin_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesLin_C1_2: TStringField
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
    object bInformesLin_C1_3: TStringField
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
    object bInformesLin_C1_4: TStringField
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
    object bInformesLin_C1_5: TStringField
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
    object bInformesLin_C1_6: TStringField
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
    object bInformesLin_C1_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuari_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesLin_C1_8: TStringField
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
    object bInformesLin_C1_9: TStringField
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
    object bInformesLin_C1_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesLin_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesLin_C1_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bInformesLin_C1_13: TStringField
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
    object bInformesLin_C1_14: TStringField
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
    object bInformesLin_C1_15: TStringField
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
    object bInformesLin_C1_16: TIntegerField
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
    object bInformesLin_C1_17: TDateTimeField
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
    object bInformesLin_C2_0: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi '#237'tem'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'item_C_Item'
      LookupKeyFields = 'C_Item'
      KeyFields = 'item'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformesLin_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Tipus informe'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'item_C_TipusInforme'
      LookupKeyFields = 'C_TipusInforme'
      KeyFields = 'item'
      Size = 3
      Calculated = True
    end
    object bInformesLin_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' '#237'tem'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'item_N_Item'
      LookupKeyFields = 'N_Item'
      KeyFields = 'item'
      Size = 80
      Calculated = True
    end
    object bInformesLin_C2_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Nivell'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'item_Nivell'
      LookupKeyFields = 'Nivell'
      KeyFields = 'item'
      Calculated = True
    end
    object bInformesLin_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Tag'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'item_Tag'
      LookupKeyFields = 'Tag'
      KeyFields = 'item'
      Size = 15
      Calculated = True
    end
    object bInformesLin_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Obligatori'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'item_Obligatori'
      LookupKeyFields = 'Obligatori'
      KeyFields = 'item'
      Size = 1
      Calculated = True
    end
    object bInformesLin_C2_6: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'item_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'item'
      Calculated = True
    end
    object bInformesLin_C2_7: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus '#237'tem'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'item_C_TipusItem'
      LookupKeyFields = 'C_TipusItem'
      KeyFields = 'item'
      Calculated = True
    end
    object bInformesLin_C2_8: TStringField
      Tag = 101
      DisplayLabel = 'SQL selecci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'item_SQL_Select'
      LookupKeyFields = 'SQL_Select'
      KeyFields = 'item'
      Size = 255
      Calculated = True
    end
    object bInformesLin_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'SQL bolcatge'
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'item_SQL_Bolcatge'
      LookupKeyFields = 'SQL_Bolcatge'
      KeyFields = 'item'
      Size = 255
      Calculated = True
    end
    object bInformesLin_C2_10: TIntegerField
      Tag = 101
      DisplayLabel = 'Tipus ECB'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'item_TipusECB'
      LookupKeyFields = 'TipusECB'
      KeyFields = 'item'
      Calculated = True
    end
    object bInformesLin_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'SQL comprovaci'#243
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'item_SQL_Comprova'
      LookupKeyFields = 'SQL_Comprova'
      KeyFields = 'item'
      Size = 255
      Calculated = True
    end
    object bInformesLin_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'usuarit_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'usuarit'
      Size = 5
      Calculated = True
    end
    object bInformesLin_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuarit_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'usuarit'
      Calculated = True
    end
    object bInformesLin_C3_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'usuarit_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'usuarit'
      Size = 15
      Calculated = True
    end
    object bInformesLin_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'usuarit_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'usuarit'
      Size = 4
      Calculated = True
    end
    object bInformesLin_C3_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuarit_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'usuarit'
      Size = 2
      Calculated = True
    end
    object bInformesLin_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuarit_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'usuarit'
      Size = 2
      Calculated = True
    end
    object bInformesLin_C3_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuarit_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'usuarit'
      Size = 1
      Calculated = True
    end
    object bInformesLin_C3_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuarit_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'usuarit'
      Calculated = True
    end
    object bInformesLin_C3_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuarit_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'usuarit'
      Size = 1
      Calculated = True
    end
    object bInformesLin_C3_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'usuarit_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'usuarit'
      Size = 40
      Calculated = True
    end
    object bInformesLin_C3_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuarit_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'usuarit'
      Calculated = True
    end
    object bInformesLin_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuarit_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'usuarit'
      Calculated = True
    end
    object bInformesLin_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuarit_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'usuarit'
      Calculated = True
    end
    object bInformesLin_C3_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'usuarit_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'usuarit'
      Size = 6
      Calculated = True
    end
    object bInformesLin_C3_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'usuarit_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'usuarit'
      Size = 9
      Calculated = True
    end
    object bInformesLin_C3_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'usuarit_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'usuarit'
      Size = 250
      Calculated = True
    end
    object bInformesLin_C3_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuarit_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'usuarit'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bInformesLin_C3_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'usuarit_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'usuarit'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
  end
  object dsInformesLin: TDataSource
    DataSet = bInformesLin
    Left = 108
    Top = 360
  end
end
