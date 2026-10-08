object wFitxaProtocolsRHF: TwFitxaProtocolsRHF
  Left = 521
  Top = 106
  Width = 1228
  Height = 849
  Caption = 'Protocols NR / RHF '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1220
    Height = 818
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Protocols NR'
      object Panel1: TPanel
        Left = 0
        Top = 329
        Width = 1212
        Height = 255
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 0
        object HYBarra4: THYBarra
          Left = 0
          Top = 0
          Width = 1212
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsProtocolsNR
          Titulo = True
          VerPrint = True
          VerRefresh = True
        end
        object HYGrid4: THYGrid
          Left = 0
          Top = 25
          Width = 561
          Height = 230
          Align = alLeft
          Color = clWhite
          DataSource = dsProtocolsNR
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
              FieldName = 'Protocol'
              Width = 300
              Visible = True
            end>
        end
        object HYArea1: THYArea
          Left = 561
          Top = 25
          Width = 651
          Height = 230
          Align = alClient
          Color = clWhite
          ParentColor = False
          TabOrder = 2
          DataSource = dsProtocolsNR
          object Eti_brwProtocolsNR_centrefac_N_CentreFac: THYLabel
            Left = 232
            Top = 56
            Width = 273
            Height = 19
            DataField = 'centrefac_N_CentreFac'
            DataSource = dsProtocolsNR
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Eti_brwProtocolsNR_motiu_N_Codi: THYLabel
            Left = 232
            Top = 33
            Width = 273
            Height = 19
            DataField = 'motiu_N_Codi'
            DataSource = dsProtocolsNR
            EtiFontColor = -1
            HyColorNo = False
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
          end
          object Ed_brwProtocolsNR_ID: THYEdit
            Left = 21
            Top = 8
            Width = 219
            Height = 20
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'ID'
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 0
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'ID'
          end
          object Ed_brwProtocolsNR_C_Motiu: THYEdit
            Left = 21
            Top = 32
            Width = 204
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Motiu tractament'
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 1
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'C_Motiu'
          end
          object Ed_brwProtocolsNR_C_CentreFac: THYEdit
            Left = 21
            Top = 56
            Width = 204
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Centre de facturaci'#243
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 2
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'C_CentreFac'
          end
          object Ed_brwProtocolsNR_Protocol: THYEdit
            Left = 21
            Top = 80
            Width = 484
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Protocol'
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 3
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Protocol'
          end
          object Ed_brwProtocolsNR_Inicial5D: THYEdit
            Left = 21
            Top = 104
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. inicial setmanes 5D '
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 4
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Inicial5D'
          end
          object Ed_brwProtocolsNR_Maxim5D: THYEdit
            Left = 325
            Top = 104
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. m'#224'xim setmanes 5D '
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 5
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Maxim5D'
          end
          object Ed_brwProtocolsNR_Inicial4D: THYEdit
            Left = 21
            Top = 128
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. inicial setmanes 4D '
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 6
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Inicial4D'
          end
          object Ed_brwProtocolsNR_Maxim4D: THYEdit
            Left = 325
            Top = 128
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. m'#224'xim setmanes 4D '
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 7
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Maxim4D'
          end
          object Ed_brwProtocolsNR_Inicial3D: THYEdit
            Left = 21
            Top = 152
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. inicial setmanes 3D '
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 8
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Inicial3D'
          end
          object Ed_brwProtocolsNR_Maxim3D: THYEdit
            Left = 325
            Top = 152
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. m'#224'xim setmanes 3D '
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 9
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Maxim3D'
          end
          object Ed_brwProtocolsNR_Inicial2D: THYEdit
            Left = 21
            Top = 176
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. inicial setmanes 2D'
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 10
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Inicial2D'
          end
          object Ed_brwProtocolsNR_Maxim2D: THYEdit
            Left = 325
            Top = 176
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. m'#224'xim setmanes 2D '
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 11
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Maxim2D'
          end
          object Ed_brwProtocolsNR_Inicial1D: THYEdit
            Left = 21
            Top = 200
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. inicial setmanes 1D '
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 12
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Inicial1D'
          end
          object Ed_brwProtocolsNR_Maxim1D: THYEdit
            Left = 325
            Top = 200
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'N'#250'm. m'#224'xim setmanes 1D '
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 13
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'Maxim1D'
          end
          object Ed_brwProtocolsNR_DuradaMax: THYEdit
            Left = 21
            Top = 232
            Width = 284
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Durada m'#224'xima'
            EtiSepara = 150
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataPerfilsNR.Protocols_ProcesNR
            TabOrder = 14
            AutoSelect = False
            DataSource = dsProtocolsNR
            DataField = 'DuradaMax'
          end
          object Check_brwProtocolsNR_DuradaFixa: THYCheck
            Left = 19
            Top = 256
            Width = 165
            Height = 17
            Caption = 'Durada fixa'
            DataField = 'DuradaFixa'
            DataSource = dsProtocolsNR
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1212
        Height = 329
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 561
          Height = 329
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          TabOrder = 0
          object HYBarra5: THYBarra
            Left = 0
            Top = 0
            Width = 561
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsPerfilNR
            VerIndices = False
            Titulo = True
            VerPrint = True
            VerRefresh = True
          end
          object HYGrid5: THYGrid
            Left = 0
            Top = 25
            Width = 561
            Height = 304
            Align = alClient
            Color = clWhite
            DataSource = dsPerfilNR
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
          end
        end
        object Panel4: TPanel
          Left = 561
          Top = 0
          Width = 651
          Height = 329
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel4'
          TabOrder = 1
          object HYBarra6: THYBarra
            Left = 0
            Top = 0
            Width = 651
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsUMPerfilNR
            VerIndices = False
            Titulo = True
            VerPrint = True
            VerRefresh = True
          end
          object HYGrid6: THYGrid
            Left = 0
            Top = 25
            Width = 651
            Height = 304
            Align = alClient
            Color = clWhite
            DataSource = dsUMPerfilNR
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
                FieldName = 'C_Perfil'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'perfil_N_Perfil'
                Width = 161
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_UnitatMedica'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'um_N_UNITATM'
                Width = 222
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Severitat'
                Visible = True
              end>
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 584
        Width = 1212
        Height = 206
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel5'
        TabOrder = 2
        object HYGrid8: THYGrid
          Left = 0
          Top = 0
          Width = 561
          Height = 206
          Align = alLeft
          Color = clWhite
          DataSource = dsUnitatM
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
              FieldName = 'C_UNITATM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'N_UNITATM'
              Visible = True
            end>
        end
        object Panel6: TPanel
          Left = 561
          Top = 0
          Width = 651
          Height = 206
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel6'
          TabOrder = 1
          object HYBarra7: THYBarra
            Left = 0
            Top = 0
            Width = 651
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsSeveritatUM
            VerIndices = False
            Titulo = True
            VerPrint = True
            VerRefresh = True
          end
          object HYGrid7: THYGrid
            Left = 0
            Top = 25
            Width = 651
            Height = 181
            Align = alClient
            Color = clWhite
            DataSource = dsSeveritatUM
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
                FieldName = 'C_UnitatMedica'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'um_N_UNITATM'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_Severitat'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'N_Severitat'
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Protocols RHF (hist'#242'ric)'
      ImageIndex = 1
      object HYBarra1: THYBarra
        Left = 0
        Top = 0
        Width = 1116
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = 'PERFILS    '
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        DataSource = dsPerfils
        VerConsultar = False
        VerOrdenar = False
        VerIndices = False
        Titulo = False
        VerPrint = False
        VerRefresh = True
      end
      object HYGrid1: THYGrid
        Left = 0
        Top = 25
        Width = 1116
        Height = 120
        Align = alTop
        Color = clWhite
        DataSource = dsPerfils
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
            FieldName = 'C_Patologia'
            Title.Caption = 'Codi'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_Patologia'
            Title.Caption = 'Descripci'#243' perfil'
            Visible = True
          end>
      end
      object HYBarra2: THYBarra
        Left = 0
        Top = 145
        Width = 1116
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = 'PROTOCOLS    '
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        DataSource = dsProtocols
        VerConsultar = False
        VerOrdenar = False
        VerSalir = False
        VerIndices = False
        Titulo = False
        VerPrint = False
        VerRefresh = True
      end
      object HYGrid2: THYGrid
        Left = 0
        Top = 170
        Width = 1116
        Height = 120
        Align = alTop
        Color = clWhite
        DataSource = dsProtocols
        DefaultDrawing = False
        FixedColor = clSilver
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        DefaultRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'C_Protocol'
            Title.Caption = 'Codi'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_Protocol'
            Title.Caption = 'Descripci'#243' protocol'
            Visible = True
          end>
      end
      object HYBarra3: THYBarra
        Left = 0
        Top = 290
        Width = 1116
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = #205'TEMS    '
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        DataSource = dsItems
        VerConsultar = False
        VerOrdenar = False
        VerSalir = False
        VerIndices = False
        Titulo = False
        VerPrint = False
        VerRefresh = True
      end
      object HYGrid3: THYGrid
        Left = 0
        Top = 315
        Width = 1116
        Height = 664
        Align = alClient
        Color = clWhite
        DataSource = dsItems
        DefaultDrawing = False
        FixedColor = clSilver
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        DefaultRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'Subordre'
            Title.Caption = 'Ordre'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_Item'
            Title.Caption = 'Descripci'#243' '#237'tem'
            Visible = True
          end>
      end
    end
  end
  object brwPerfils: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataSeguiment.ProtocolsRHF1
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Left = 136
    Top = 88
    object brwPerfils_C_Patologia: TIntegerField
      Tag = 100
      DisplayLabel = 'C Patologia'
      DisplayWidth = 8
      FieldName = 'C_Patologia'
      DisplayFormat = '#,##0;; '
    end
    object brwPerfils_N_Patologia: TStringField
      Tag = 100
      DisplayLabel = 'N Patologia'
      DisplayWidth = 40
      FieldName = 'N_Patologia'
      Size = 40
    end
  end
  object dsPerfils: TDataSource
    DataSet = brwPerfils
    Left = 208
    Top = 88
  end
  object brwProtocols: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataSeguiment.ProtocolsRHF2
    IndiceActivo = 'protocol'
    CalcSimple = False
    AutoPost = False
    Padre = dsPerfils
    Left = 136
    Top = 232
    object brwProtocols_ID_Protocol: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Protocol'
      DisplayWidth = 8
      FieldName = 'ID_Protocol'
      DisplayFormat = '#,##0;; '
    end
    object brwProtocols_C_Patologia: TIntegerField
      Tag = 100
      DisplayLabel = 'C Patologia'
      DisplayWidth = 8
      FieldName = 'C_Patologia'
      DisplayFormat = '#,##0;; '
    end
    object brwProtocols_C_Protocol: TStringField
      Tag = 100
      DisplayLabel = 'C Protocol'
      DisplayWidth = 1
      FieldName = 'C_Protocol'
      Size = 1
    end
    object brwProtocols_N_Protocol: TStringField
      Tag = 100
      DisplayLabel = 'N Protocol'
      DisplayWidth = 101
      FieldName = 'N_Protocol'
      Size = 101
    end
    object brwProtocols_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'C Patologia'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'patologia_C_Patologia'
      LookupKeyFields = 'C_Patologia'
      KeyFields = 'patologia'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwProtocols_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'N Patologia'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'patologia_N_Patologia'
      LookupKeyFields = 'N_Patologia'
      KeyFields = 'patologia'
      Size = 40
      Calculated = True
    end
  end
  object dsProtocols: TDataSource
    DataSet = brwProtocols
    Left = 208
    Top = 232
  end
  object brwItems: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataSeguiment.ProtocolsItems
    IndiceActivo = 'protoitem'
    CalcSimple = False
    AutoPost = False
    Padre = dsProtocols
    Left = 136
    Top = 368
    object brwItems_ID_Protocol: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Protocol'
      DisplayWidth = 8
      FieldName = 'ID_Protocol'
      DisplayFormat = '#,##0;; '
    end
    object brwItems_Subordre: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Subordre'
      DisplayFormat = '#,##0;; '
    end
    object brwItems_C_Item: TIntegerField
      Tag = 100
      DisplayLabel = 'C Item'
      DisplayWidth = 8
      FieldName = 'C_Item'
      DisplayFormat = '#,##0;; '
    end
    object brwItems_N_Item: TStringField
      Tag = 100
      DisplayLabel = 'N Item'
      DisplayWidth = 100
      FieldName = 'N_Item'
      Size = 100
    end
    object brwItems_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C Protocol'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Protocol_C_Protocol'
      LookupKeyFields = 'C_Protocol'
      KeyFields = 'Protocol'
      Size = 1
      Calculated = True
    end
    object brwItems_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'N Protocol'
      DisplayWidth = 101
      FieldKind = fkCalculated
      FieldName = 'Protocol_N_Protocol'
      LookupKeyFields = 'N_Protocol'
      KeyFields = 'Protocol'
      Size = 101
      Calculated = True
    end
    object brwItems_C0_2: TIntegerField
      Tag = 101
      DisplayLabel = 'ID Protocol'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Protocol_ID_Protocol'
      LookupKeyFields = 'ID_Protocol'
      KeyFields = 'Protocol'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object brwItems_C0_3: TIntegerField
      Tag = 101
      DisplayLabel = 'C Patologia'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Protocol_C_Patologia'
      LookupKeyFields = 'C_Patologia'
      KeyFields = 'Protocol'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
  end
  object dsItems: TDataSource
    DataSet = brwItems
    Left = 208
    Top = 368
  end
  object brwProtocolsNR: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PROTOCOLS_PROCESNR'
      ''
      'ORDER BY PROTOCOLS_PROCESNR.'#39'ID'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataPerfilsNR.Protocols_ProcesNR
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Left = 600
    Top = 224
    object brwProtocolsNR_ID: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object brwProtocolsNR_C_Motiu: TSmallintField
      Tag = 100
      DisplayLabel = 'Motiu tractament'
      DisplayWidth = 2
      FieldName = 'C_Motiu'
    end
    object brwProtocolsNR_C_CentreFac: TStringField
      Tag = 100
      DisplayLabel = 'Centre de facturaci'#243
      DisplayWidth = 2
      FieldName = 'C_CentreFac'
      Size = 2
    end
    object brwProtocolsNR_Protocol: TStringField
      Tag = 100
      DisplayWidth = 80
      FieldName = 'Protocol'
      Size = 80
    end
    object brwProtocolsNR_Inicial5D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. inicial setmanes 5D '
      DisplayWidth = 2
      FieldName = 'Inicial5D'
    end
    object brwProtocolsNR_Maxim5D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. m'#224'xim setmanes 5D '
      DisplayWidth = 2
      FieldName = 'Maxim5D'
    end
    object brwProtocolsNR_Inicial4D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. inicial setmanes 4D '
      DisplayWidth = 2
      FieldName = 'Inicial4D'
    end
    object brwProtocolsNR_Maxim4D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. m'#224'xim setmanes 4D '
      DisplayWidth = 2
      FieldName = 'Maxim4D'
    end
    object brwProtocolsNR_Inicial3D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. inicial setmanes 3D '
      DisplayWidth = 2
      FieldName = 'Inicial3D'
    end
    object brwProtocolsNR_Maxim3D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. m'#224'xim setmanes 3D '
      DisplayWidth = 2
      FieldName = 'Maxim3D'
    end
    object brwProtocolsNR_Inicial2D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. inicial setmanes 2D'
      DisplayWidth = 2
      FieldName = 'Inicial2D'
    end
    object brwProtocolsNR_Maxim2D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. m'#224'xim setmanes 2D '
      DisplayWidth = 2
      FieldName = 'Maxim2D'
    end
    object brwProtocolsNR_Inicial1D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. inicial setmanes 1D '
      DisplayWidth = 2
      FieldName = 'Inicial1D'
    end
    object brwProtocolsNR_Maxim1D: TSmallintField
      Tag = 100
      DisplayLabel = 'N'#250'm. m'#224'xim setmanes 1D '
      DisplayWidth = 2
      FieldName = 'Maxim1D'
    end
    object brwProtocolsNR_DuradaMax: TIntegerField
      Tag = 100
      DisplayLabel = 'Durada m'#224'xima'
      DisplayWidth = 2
      FieldName = 'DuradaMax'
      DisplayFormat = '#0" setmanes";; '
    end
    object brwProtocolsNR_DuradaFixa: TStringField
      Tag = 100
      DisplayLabel = 'Durada fixa'
      DisplayWidth = 1
      FieldName = 'DuradaFixa'
      Size = 1
    end
    object brwProtocolsNR_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'motiu'
      Calculated = True
    end
    object brwProtocolsNR_C0_1: TStringField
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
    object brwProtocolsNR_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'motiu_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'motiu'
      Calculated = True
    end
    object brwProtocolsNR_C0_3: TStringField
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
    object brwProtocolsNR_C0_4: TStringField
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
    object brwProtocolsNR_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'motiu_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'motiu'
      Calculated = True
    end
    object brwProtocolsNR_C1_0: TStringField
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
    object brwProtocolsNR_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'centrefac_N_CentreFac'
      LookupKeyFields = 'N_CentreFac'
      KeyFields = 'centrefac'
      Calculated = True
    end
    object brwProtocolsNR_C1_2: TStringField
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
  end
  object dsProtocolsNR: TDataSource
    DataSet = brwProtocolsNR
    Left = 680
    Top = 224
  end
  object PerfilsNR: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PERFILSNR'
      ''
      'ORDER BY PERFILSNR.'#39'C_Perfil'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataPerfilsNR.PerfilsNR
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Left = 608
    Top = 376
    object PerfilsNR_C_Perfil: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'C_Perfil'
    end
    object PerfilsNR_N_Perfil: TStringField
      Tag = 100
      DisplayLabel = 'Perfil NR'
      DisplayWidth = 40
      FieldName = 'N_Perfil'
      Size = 40
    end
    object PerfilsNR_Durada: TSmallintField
      Tag = 100
      DisplayLabel = 'Durada fase intensiva IG'
      DisplayWidth = 2
      FieldName = 'Durada'
      DisplayFormat = '#0" mesos";; '
    end
  end
  object dsPerfilNR: TDataSource
    DataSet = PerfilsNR
    Left = 688
    Top = 376
  end
  object UMPerfilNR: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM UM_PERFILNR'
      'WHERE  ( C_Perfil = :C_Perfil )'
      'ORDER BY UM_PERFILNR.'#39'C_UnitatMedica'#39', UM_PERFILNR.'#39'Severitat'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataPerfilsNR.UM_PerfilNR
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsPerfilNR
    Left = 616
    Top = 440
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'C_Perfil'
        ParamType = ptUnknown
        Size = 2
        Value = 1
      end>
    object UMPerfilNR_C_UnitatMedica: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'C_UnitatMedica'
    end
    object UMPerfilNR_Severitat: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Severitat'
    end
    object UMPerfilNR_C_Perfil: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'C_Perfil'
    end
    object UMPerfilNR_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'um_C_UNITATM'
      LookupKeyFields = 'C_UNITATM'
      KeyFields = 'um'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object UMPerfilNR_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'um_N_UNITATM'
      LookupKeyFields = 'N_UNITATM'
      KeyFields = 'um'
      Size = 30
      Calculated = True
    end
    object UMPerfilNR_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat Administrativa'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'um_C_UNITATA'
      LookupKeyFields = 'C_UNITATA'
      KeyFields = 'um'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object UMPerfilNR_C0_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat RM'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'um_C_UNITATRM'
      LookupKeyFields = 'C_UNITATRM'
      KeyFields = 'um'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object UMPerfilNR_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'um_BAIXA'
      LookupKeyFields = 'BAIXA'
      KeyFields = 'um'
      Size = 1
      Calculated = True
    end
    object UMPerfilNR_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'um_C_GRUP'
      LookupKeyFields = 'C_GRUP'
      KeyFields = 'um'
      Size = 1
      Calculated = True
    end
    object UMPerfilNR_C0_6: TSmallintField
      Tag = 101
      DisplayLabel = 'Diagnostic_UM'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'um_Diagnostic_UM'
      LookupKeyFields = 'Diagnostic_UM'
      KeyFields = 'um'
      Calculated = True
    end
    object UMPerfilNR_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C_Perfil'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'perfil_C_Perfil'
      LookupKeyFields = 'C_Perfil'
      KeyFields = 'perfil'
      Calculated = True
    end
    object UMPerfilNR_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Perfil NR'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'perfil_N_Perfil'
      LookupKeyFields = 'N_Perfil'
      KeyFields = 'perfil'
      Size = 40
      Calculated = True
    end
    object UMPerfilNR_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Durada fase intensiva IG'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'perfil_Durada'
      LookupKeyFields = 'Durada'
      KeyFields = 'perfil'
      DisplayFormat = '#0" mesos";; '
      Calculated = True
    end
  end
  object dsUMPerfilNR: TDataSource
    DataSet = UMPerfilNR
    Left = 680
    Top = 440
  end
  object SeveritatUM: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SEVERITATUM'
      'WHERE  ( C_UnitatMedica = :C_UNITATM )'
      'ORDER BY SEVERITATUM.'#39'C_UnitatMedica'#39', SEVERITATUM.'#39'C_Severitat'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataPerfilsNR.SeveritatUM
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsUnitatM
    Left = 776
    Top = 512
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'C_UNITATM'
        ParamType = ptUnknown
        Size = 2
        Value = 0
      end>
    object SeveritatUM_C_UnitatMedica: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi unitat m'#232'dica'
      DisplayWidth = 2
      FieldName = 'C_UnitatMedica'
    end
    object SeveritatUM_C_Severitat: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi severitat'
      DisplayWidth = 2
      FieldName = 'C_Severitat'
    end
    object SeveritatUM_N_Severitat: TStringField
      Tag = 100
      DisplayLabel = 'Desc. Severitat'
      DisplayWidth = 40
      FieldName = 'N_Severitat'
      Size = 40
    end
    object SeveritatUM_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'um_C_UNITATM'
      LookupKeyFields = 'C_UNITATM'
      KeyFields = 'um'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object SeveritatUM_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'um_N_UNITATM'
      LookupKeyFields = 'N_UNITATM'
      KeyFields = 'um'
      Size = 30
      Calculated = True
    end
    object SeveritatUM_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat Administrativa'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'um_C_UNITATA'
      LookupKeyFields = 'C_UNITATA'
      KeyFields = 'um'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object SeveritatUM_C0_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat RM'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'um_C_UNITATRM'
      LookupKeyFields = 'C_UNITATRM'
      KeyFields = 'um'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object SeveritatUM_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'um_BAIXA'
      LookupKeyFields = 'BAIXA'
      KeyFields = 'um'
      Size = 1
      Calculated = True
    end
    object SeveritatUM_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'um_C_GRUP'
      LookupKeyFields = 'C_GRUP'
      KeyFields = 'um'
      Size = 1
      Calculated = True
    end
    object SeveritatUM_C0_6: TSmallintField
      Tag = 101
      DisplayLabel = 'Diagnostic_UM'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'um_Diagnostic_UM'
      LookupKeyFields = 'Diagnostic_UM'
      KeyFields = 'um'
      Calculated = True
    end
  end
  object dsSeveritatUM: TDataSource
    DataSet = SeveritatUM
    Left = 856
    Top = 520
  end
  object UnitatM: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM UNITATM'
      ''
      'ORDER BY UNITATM.'#39'C_UNITATM'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataCodis.UnitatM
    IndiceActivo = 'Codi'
    CalcSimple = False
    AutoPost = False
    Left = 616
    Top = 520
    object UnitatM_C_UNITATM: TSmallintField
      Tag = 100
      DisplayLabel = 'Codi'
      DisplayWidth = 2
      FieldName = 'C_UNITATM'
      DisplayFormat = '#,##0;; '
    end
    object UnitatM_N_UNITATM: TStringField
      Tag = 100
      DisplayLabel = 'Nom'
      DisplayWidth = 30
      FieldName = 'N_UNITATM'
      Size = 30
    end
    object UnitatM_C_UNITATA: TSmallintField
      Tag = 100
      DisplayLabel = 'Unitat Administrativa'
      DisplayWidth = 3
      FieldName = 'C_UNITATA'
      DisplayFormat = '#,##0;; '
    end
    object UnitatM_C_UNITATRM: TSmallintField
      Tag = 100
      DisplayLabel = 'Unitat RM'
      DisplayWidth = 3
      FieldName = 'C_UNITATRM'
      DisplayFormat = '#,##0;; '
    end
    object UnitatM_BAIXA: TStringField
      Tag = 100
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldName = 'BAIXA'
      Size = 1
    end
    object UnitatM_C_GRUP: TStringField
      Tag = 100
      DisplayLabel = 'Grup'
      DisplayWidth = 1
      FieldName = 'C_GRUP'
      Size = 1
    end
    object UnitatM_N_GRUP: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243' grup'
      DisplayWidth = 30
      FieldName = 'N_GRUP'
      Size = 30
    end
    object UnitatM_Diagnostic_UM: TSmallintField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'Diagnostic_UM'
    end
    object UnitatM_Lesio_REC: TSmallintField
      Tag = 100
      DisplayLabel = 'Lesi'#243' REC'
      DisplayWidth = 2
      FieldName = 'Lesio_REC'
    end
    object UnitatM_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'diag_um_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'diag_um'
      Calculated = True
    end
    object UnitatM_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'diag_um_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'diag_um'
      Size = 40
      Calculated = True
    end
    object UnitatM_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'diag_um_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'diag_um'
      Calculated = True
    end
    object UnitatM_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'diag_um_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'diag_um'
      Size = 40
      Calculated = True
    end
    object UnitatM_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'diag_um_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'diag_um'
      Size = 10
      Calculated = True
    end
    object UnitatM_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'diag_um_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'diag_um'
      Calculated = True
    end
    object UnitatM_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'Codi lesi'#243' REC'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'LesioREC_C_Lesio_REC'
      LookupKeyFields = 'C_Lesio_REC'
      KeyFields = 'LesioREC'
      Calculated = True
    end
    object UnitatM_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Lesi'#243' REC'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'LesioREC_N_Lesio_REC'
      LookupKeyFields = 'N_Lesio_REC'
      KeyFields = 'LesioREC'
      Size = 40
      Calculated = True
    end
  end
  object dsUnitatM: TDataSource
    DataSet = UnitatM
    Left = 680
    Top = 520
  end
end
