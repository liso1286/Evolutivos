object wFitxaEscales: TwFitxaEscales
  Left = 277
  Top = 157
  AutoScroll = False
  Caption = 'Escales'
  ClientHeight = 711
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
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
  TextHeight = 14
  object PanelEsc: TPanel
    Left = 0
    Top = 0
    Width = 1100
    Height = 711
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' '
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 417
      Top = 0
      Width = 3
      Height = 707
      Cursor = crHSplit
    end
    object PanelBusca: TPanel
      Left = 420
      Top = 0
      Width = 676
      Height = 707
      Align = alClient
      BevelOuter = bvNone
      Caption = ' '
      Color = clSilver
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 248
        Width = 676
        Height = 6
        Cursor = crVSplit
        Align = alTop
      end
      object Panel1: TPanel
        Left = 0
        Top = 254
        Width = 676
        Height = 453
        Align = alClient
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 0
        object HYGrid1: THYGrid
          Left = 0
          Top = 25
          Width = 676
          Height = 428
          Align = alClient
          Color = clWhite
          DataSource = dsL
          DefaultDrawing = False
          FixedColor = clSilver
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          DefaultRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'Clau'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_Item'
              Title.Caption = 'Codi'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'items_N_Item'
              Title.Caption = #205'tem'
              Width = 214
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'D_Item'
              Title.Caption = 'Valoraci'#243
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'items_Ordre'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'items_Area_Usuari'
              Title.Caption = #192'rea'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'items_Tipus'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'items_C_Escala'
              Title.Caption = 'Escala'
              Visible = True
            end>
        end
        object HYBarra3: THYBarra
          Left = 0
          Top = 0
          Width = 676
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 'L'#237'nies        '
          Color = clSilver
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsL
          VerConsultar = False
          VerOrdenar = False
          VerSalir = False
          VerIndices = False
          Titulo = False
          VerPrint = False
          VerRefresh = True
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 676
        Height = 248
        Align = alTop
        BevelOuter = bvNone
        Caption = ' '
        Constraints.MinHeight = 185
        TabOrder = 1
        object HYBarra1: THYBarra
          Left = 0
          Top = 0
          Width = 676
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 'Cap'#231'alera'
          Color = clSilver
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsC
          VerConsultar = False
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
          Top = 25
          Width = 676
          Height = 223
          Align = alClient
          Color = clWhite
          ParentColor = False
          TabOrder = 1
          DataSource = dsC
          object Label1: TLabel
            Left = 336
            Top = 18
            Width = 71
            Height = 14
            Caption = '(no procedeix)'
            Visible = False
          end
          object Label2: TLabel
            Left = 336
            Top = 42
            Width = 284
            Height = 14
            Caption = 'I: ingr'#233's, C: continuaci'#243', T: tractament, A: alta, S: seguiment'
            Visible = False
          end
          object Ed_EscalesCap_Clau: THYEdit
            Left = 16
            Top = 16
            Width = 134
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Clau'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 0
            AutoSelect = False
            ReadOnly = True
            DataSource = dsC
            DataField = 'Clau'
          end
          object Ed_EscalesCap_C_Tractament: THYEdit
            Left = 16
            Top = 70
            Width = 134
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tractament'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 1
            AutoSelect = False
            DataSource = dsC
            DataField = 'C_Tractament'
          end
          object Ed_EscalesCap_C_Historia: THYEdit
            Left = 16
            Top = 42
            Width = 134
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Hist'#242'ria'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 2
            AutoSelect = False
            DataSource = dsC
            DataField = 'C_Historia'
          end
          object Ed_EscalesCap_Data: THYEdit
            Left = 312
            Top = 141
            Width = 215
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data entrada'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 3
            AutoSelect = False
            DataSource = dsC
            DataField = 'Data'
          end
          object Ed_EscalesCap_C_Usuari: THYEdit
            Left = 16
            Top = 141
            Width = 116
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Usuari'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 4
            AutoSelect = False
            DataSource = dsC
            DataField = 'C_Usuari'
          end
          object Ed_EscalesCap_C_Entrada: THYEdit
            Left = 218
            Top = 16
            Width = 101
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'C Entrada'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 5
            AutoSelect = False
            DataSource = dsC
            DataField = 'C_Entrada'
          end
          object Ed_EscalesCap_C_Escala: THYEdit
            Left = 16
            Top = 106
            Width = 90
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Escala'
            EtiSepara = 65
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 6
            AutoSelect = False
            DataSource = dsC
            DataField = 'C_Escala'
          end
          object Eti_EscalesCap_escales_R_Escala: THYEdit
            Left = 113
            Top = 106
            Width = 78
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            EtiSepara = 60
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 7
            TabStop = False
            AutoSelect = False
            ReadOnly = True
            DataSource = dsC
            DataField = 'escales_R_Escala'
          end
          object edAnulat: THYEdit
            Left = 218
            Top = 69
            Width = 101
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Anul'#183'lat / Estat'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 8
            AutoSelect = False
            DataSource = dsC
            DataField = 'Anulat'
          end
          object edDataAnulat: THYEdit
            Left = 336
            Top = 93
            Width = 185
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data anul'#183'lat'
            EtiSepara = 70
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 9
            AutoSelect = False
            DataSource = dsC
            DataField = 'Data_Anulat'
          end
          object edValidador: THYEdit
            Left = 16
            Top = 169
            Width = 118
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Metge valida'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 10
            AutoSelect = False
            DataSource = dsC
            DataField = 'C_Validador'
          end
          object edDataValidat: THYEdit
            Left = 312
            Top = 169
            Width = 215
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data validat'
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 11
            AutoSelect = False
            DataSource = dsC
            DataField = 'Data_Validat'
          end
          object Eti_EscalesCap_Usuari_Metge: THYEdit
            Left = 137
            Top = 141
            Width = 150
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Metge'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 12
            AutoSelect = False
            DataSource = dsC
            DataField = 'Usuari_Metge'
          end
          object Eti_EscalesCap_validador_Metge: THYEdit
            Left = 137
            Top = 169
            Width = 150
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Metge'
            EtiSepara = 100
            EtiOrienta = eoNoMostrar
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 13
            AutoSelect = False
            DataSource = dsC
            DataField = 'validador_Metge'
          end
          object edNAnulat: TEdit
            Left = 336
            Top = 69
            Width = 150
            Height = 20
            BorderStyle = bsNone
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 14
            Text = 'edNAnulat'
          end
          object Ed_EscalesCap_Tipus: THYEdit
            Left = 218
            Top = 40
            Width = 101
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Tipus'
            EtiSepara = 80
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 15
            AutoSelect = False
            DataSource = dsC
            DataField = 'Tipus'
          end
          object Ed_EscalesCap_Data_Adm: THYEdit
            Left = 312
            Top = 195
            Width = 215
            Height = 19
            Idioma = Castellano
            EtiFontColor = clWindowText
            Eti = 'Data administraci'#243
            EtiSepara = 100
            EtiOrienta = eoIzquierda
            EtiAlign = taLeftJustify
            Diccionario = wDataEscales.EscalesCap
            TabOrder = 16
            AutoSelect = False
            DataSource = dsC
            DataField = 'Data_Adm'
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 417
      Height = 707
      Align = alLeft
      Caption = 'Panel4'
      Color = 16772294
      TabOrder = 1
      object TabsFiltre: TPageControl
        Left = 1
        Top = 1
        Width = 415
        Height = 705
        ActivePage = TabFiltre
        Align = alClient
        Constraints.MinHeight = 270
        Style = tsButtons
        TabIndex = 1
        TabOrder = 0
        object TabList: TTabSheet
          Caption = 'Llista'
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 407
            Height = 673
            Align = alClient
            Color = 16772294
            Ctl3D = True
            DataSource = dsBusca
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'P0'
                ReadOnly = False
                Title.Caption = 'clau'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'R_ESCALA'
                Title.Caption = 'Escala'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_TRACTAMENT'
                Title.Caption = 'Tractament'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_HISTORIA'
                Title.Caption = 'Hist'#242'ria'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'Data'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_PRESTACIO'
                Title.Caption = 'Prestaci'#243
                Width = 50
                Visible = True
              end>
          end
        end
        object TabFiltre: TTabSheet
          Caption = 'Filtres Autom'#224'tics'
          object fHistoria: THYEditFiltro
            Left = 0
            Top = 11
            Width = 407
            Height = 29
            Diccionario = wDataBasics.Filiacio
            DiccionarioCampo = 'num_hist'
            Campo = 'c.c_historia'
            Tipo = tiNumero
            Condicion = tiIgual
            EtiSepara = 100
            CondiFija = False
            Caption = 'Hist'#242'ria'
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
          end
          object fEscala: THYEditFiltro
            Left = 0
            Top = 40
            Width = 407
            Height = 29
            Diccionario = wDataEscales.Escales
            DiccionarioCampo = 'r_escala'
            Campo = 'e.r_escala'
            Tipo = tiCaracter
            Condicion = tiIgual
            EtiSepara = 100
            CondiFija = True
            Caption = 'Escala'
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
          end
          object Panel5: TPanel
            Left = 0
            Top = 330
            Width = 407
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            BorderWidth = 5
            Caption = ' '
            Color = 16772294
            TabOrder = 5
            object AplicarFiltre: TButton
              Left = 23
              Top = 15
              Width = 80
              Height = 25
              Caption = '&Aplicar Filtre'
              TabOrder = 0
              OnClick = AplicarFiltreClick
            end
            object Netejar: TButton
              Left = 119
              Top = 15
              Width = 80
              Height = 25
              Caption = '&Netejar Filtres'
              TabOrder = 1
              OnClick = NetejarClick
            end
            object tottot: TButton
              Left = 215
              Top = 15
              Width = 80
              Height = 25
              Caption = '&Mostrar Tots'
              TabOrder = 2
              OnClick = tottotClick
            end
          end
          object fClau: THYEditFiltro
            Left = 0
            Top = 98
            Width = 407
            Height = 29
            Campo = 'c.clau'
            Tipo = tiNumero
            Condicion = tiMayor
            EtiSepara = 100
            CondiFija = False
            Caption = 'Clau'
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 407
            Height = 11
            Align = alTop
            BevelOuter = bvNone
            Color = 16772294
            TabOrder = 6
          end
          object fData: THYEditFiltro
            Left = 0
            Top = 156
            Width = 407
            Height = 29
            Campo = 'c.data'
            Tipo = tiFecha
            Condicion = tiMayor
            EtiSepara = 100
            CondiFija = False
            Caption = 'Data d'#39'entrada'
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
          end
          object fUsuari: THYEditFiltro
            Left = 0
            Top = 127
            Width = 407
            Height = 29
            Diccionario = wDataBasics.Metges
            DiccionarioCampo = 'codi'
            Campo = 'c.c_usuari'
            Tipo = tiCaracter
            Condicion = tiIgual
            EtiSepara = 100
            CondiFija = False
            Caption = 'Usuari entrada'
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
          end
          object fEntrada: THYEditFiltro
            Left = 0
            Top = 185
            Width = 407
            Height = 29
            Campo = 'c.c_entrada'
            Tipo = tiNumero
            Condicion = tiIgual
            EtiSepara = 100
            CondiFija = False
            Caption = 'N'#250'mero d'#39'entrada'
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 7
          end
          object fGrup: THYEditFiltro
            Left = 0
            Top = 69
            Width = 407
            Height = 29
            Diccionario = wDataEscales.Escales
            DiccionarioCampo = 'n_grup'
            Campo = 'e.n_grup'
            Tipo = tiCaracter
            Condicion = tiIgual
            EtiSepara = 100
            CondiFija = False
            Caption = 'Grup Escala'
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 8
          end
          object fEstat: THYEditFiltro
            Left = 0
            Top = 214
            Width = 407
            Height = 29
            Campo = 'c.anulat'
            Tipo = tiCaracter
            Condicion = tiIgual
            EtiSepara = 100
            CondiFija = False
            Caption = 'Anul'#183'lat / Estat'
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 9
          end
          object fValidador: THYEditFiltro
            Left = 0
            Top = 272
            Width = 407
            Height = 29
            Diccionario = wDataBasics.Metges
            DiccionarioCampo = 'codi'
            Campo = 'c.c_validador'
            Tipo = tiCaracter
            Condicion = tiIgual
            EtiSepara = 100
            CondiFija = False
            Caption = 'Validador'
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 10
          end
          object fDataValidat: THYEditFiltro
            Left = 0
            Top = 301
            Width = 407
            Height = 29
            Campo = 'c.data_validat'
            Tipo = tiFecha
            Condicion = tiMayor
            EtiSepara = 100
            CondiFija = False
            Caption = 'Data validaci'#243
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 11
          end
          object fDataAnulat: THYEditFiltro
            Left = 0
            Top = 243
            Width = 407
            Height = 29
            Campo = 'c.data_anulat'
            Tipo = tiFecha
            Condicion = tiMayor
            EtiSepara = 100
            CondiFija = False
            Caption = 'Data anul'#183'laci'#243
            ParentColor = True
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 12
          end
        end
        object TabSql: TTabSheet
          Caption = 'Custom SQL'
          ImageIndex = 1
          object MemoSql: TMemo
            Left = 0
            Top = 0
            Width = 407
            Height = 636
            Align = alClient
            Lines.Strings = (
              'MemoSql')
            TabOrder = 0
          end
          object Panel7: TPanel
            Left = 0
            Top = 636
            Width = 407
            Height = 37
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 5
            Caption = ' '
            ParentColor = True
            TabOrder = 1
            object bAplicaSql: TButton
              Left = 184
              Top = 7
              Width = 97
              Height = 25
              Caption = '&Aplicar Sql'
              TabOrder = 0
              OnClick = bAplicaSqlClick
            end
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 233
      Top = 0
      Width = 81
      Height = 22
      AutoSize = True
      BevelOuter = bvNone
      Color = 16772294
      TabOrder = 2
      object Ultima: TEdit
        Left = 0
        Top = 0
        Width = 81
        Height = 22
        ReadOnly = True
        TabOrder = 0
        Text = #218'ltima'
      end
    end
  end
  object EscalesCap: THYSqlBrowse
    AfterScroll = EscalesCapAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsBusca
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ESCALESCAP'
      'WHERE clau=:P0'#13#10
      'ORDER BY ESCALESCAP.'#39'Clau'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataEscales.EscalesCap
    IndiceActivo = 'Pk'
    CalcSimple = False
    AlConsultarCampoFiltro2 = EscalesCapAlConsultarCampoFiltro2
    AutoPost = False
    Filtro.Strings = (
      'clau=:P0')
    Left = 34
    Top = 505
    ParamData = <
      item
        DataType = ftString
        Name = 'P0'
        ParamType = ptUnknown
      end>
    object EscalesCap_Clau: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Clau'
      DisplayFormat = '#,##0;; '
    end
    object EscalesCap_C_Escala: TIntegerField
      Tag = 100
      DisplayLabel = 'C Escala'
      DisplayWidth = 8
      FieldName = 'C_Escala'
      DisplayFormat = '#,##0;; '
    end
    object EscalesCap_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
      DisplayFormat = '#,##0;; '
    end
    object EscalesCap_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'Num Hist'#242'ria'
      DisplayWidth = 8
      FieldName = 'C_Historia'
      DisplayFormat = '#,##0;; '
    end
    object EscalesCap_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 11
      FieldName = 'Data'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object EscalesCap_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object EscalesCap_C_Entrada: TIntegerField
      Tag = 100
      Alignment = taLeftJustify
      DisplayLabel = 'C Entrada'
      DisplayWidth = 8
      FieldName = 'C_Entrada'
      DisplayFormat = '#,##0;; '
    end
    object EscalesCap_Anulat: TStringField
      Tag = 100
      DisplayLabel = 'Anul'#183'lat'
      DisplayWidth = 1
      FieldName = 'Anulat'
      Size = 1
    end
    object EscalesCap_Data_Anulat: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data anul'#183'lat'
      DisplayWidth = 19
      FieldName = 'Data_Anulat'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object EscalesCap_C_Validador: TStringField
      Tag = 100
      DisplayLabel = 'Validador'
      DisplayWidth = 5
      FieldName = 'C_Validador'
      Size = 5
    end
    object EscalesCap_Data_Validat: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data validat'
      DisplayWidth = 19
      FieldName = 'Data_Validat'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object EscalesCap_Tipus: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tipus'
      Size = 1
    end
    object EscalesCap_Data_Adm: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data administraci'#243
      DisplayWidth = 19
      FieldName = 'Data_Adm'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object EscalesCap_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'C Escala'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'escales_C_Escala'
      LookupKeyFields = 'C_Escala'
      KeyFields = 'escales'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object EscalesCap_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'escales_R_Escala'
      LookupKeyFields = 'R_Escala'
      KeyFields = 'escales'
      Size = 15
      Calculated = True
    end
    object EscalesCap_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'N Escala'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'escales_N_Escala'
      LookupKeyFields = 'N_Escala'
      KeyFields = 'escales'
      Size = 50
      Calculated = True
    end
    object EscalesCap_C0_3: TSmallintField
      Tag = 101
      DisplayLabel = 'C Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'escales_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'escales'
      Calculated = True
    end
    object EscalesCap_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'N Grup'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'escales_N_Grup'
      LookupKeyFields = 'N_Grup'
      KeyFields = 'escales'
      Size = 40
      Calculated = True
    end
    object EscalesCap_C1_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'tractaments'
      DisplayFormat = '#,###;; '
      Calculated = True
    end
    object EscalesCap_C1_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'tractaments'
      Calculated = True
    end
    object EscalesCap_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'tractaments'
      Size = 4
      Calculated = True
    end
    object EscalesCap_C1_3: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Ingr'#233's'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tractaments_Data_Ingres'
      LookupKeyFields = 'Data_Ingres'
      KeyFields = 'tractaments'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object EscalesCap_C1_4: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Alta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tractaments_Data_Alta'
      LookupKeyFields = 'Data_Alta'
      KeyFields = 'tractaments'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object EscalesCap_C1_5: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data PreAlta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tractaments_Data_PreAlta'
      LookupKeyFields = 'Data_PreAlta'
      KeyFields = 'tractaments'
      DisplayFormat = 'dd"/"mm"/"yyyy'
      Calculated = True
    end
    object EscalesCap_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_Coordinador'
      LookupKeyFields = 'C_Coordinador'
      KeyFields = 'tractaments'
      Size = 5
      Calculated = True
    end
    object EscalesCap_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_DiagnosticAlta'
      LookupKeyFields = 'C_DiagnosticAlta'
      KeyFields = 'tractaments'
      Size = 15
      Calculated = True
    end
    object EscalesCap_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Alta'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tractaments_N_DiagnosticAlta'
      LookupKeyFields = 'N_DiagnosticAlta'
      KeyFields = 'tractaments'
      Size = 40
      Calculated = True
    end
    object EscalesCap_C1_9: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tractaments_PercentatgePacient'
      LookupKeyFields = 'PercentatgePacient'
      KeyFields = 'tractaments'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object EscalesCap_C1_10: TStringField
      Tag = 101
      DisplayLabel = 'Refer'#232'ncia'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tractaments_Referencia'
      LookupKeyFields = 'Referencia'
      KeyFields = 'tractaments'
      Size = 40
      Calculated = True
    end
    object EscalesCap_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'tractaments'
      Size = 2
      Calculated = True
    end
    object EscalesCap_C1_12: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'tractaments'
      Size = 3
      Calculated = True
    end
    object EscalesCap_C1_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'tractaments'
      Size = 4
      Calculated = True
    end
    object EscalesCap_C1_14: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat Facturaci'#243
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_EstatFac'
      LookupKeyFields = 'C_EstatFac'
      KeyFields = 'tractaments'
      Calculated = True
    end
    object EscalesCap_C1_15: TSmallintField
      Tag = 101
      DisplayLabel = 'Vegada'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tractaments_Vegada'
      LookupKeyFields = 'Vegada'
      KeyFields = 'tractaments'
      Calculated = True
    end
    object EscalesCap_C1_16: TSmallintField
      Tag = 101
      DisplayLabel = 'Motiu'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_Motiu'
      LookupKeyFields = 'C_Motiu'
      KeyFields = 'tractaments'
      Calculated = True
    end
    object EscalesCap_C1_17: TStringField
      Tag = 101
      DisplayLabel = 'Fi de proc'#233's'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tractaments_Fi_Proces'
      LookupKeyFields = 'Fi_Proces'
      KeyFields = 'tractaments'
      Size = 1
      Calculated = True
    end
    object EscalesCap_C1_18: TStringField
      Tag = 101
      DisplayLabel = 'Metge proc'#233's'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tractaments_Metge_Proces'
      LookupKeyFields = 'Metge_Proces'
      KeyFields = 'tractaments'
      Size = 5
      Calculated = True
    end
    object EscalesCap_C1_19: TStringField
      Tag = 101
      DisplayLabel = 'Planta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_Planta'
      LookupKeyFields = 'C_Planta'
      KeyFields = 'tractaments'
      Size = 15
      Calculated = True
    end
    object EscalesCap_C1_20: TIntegerField
      Tag = 101
      DisplayLabel = 'Estat informe alta'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tractaments_EstatInformeAlta'
      LookupKeyFields = 'EstatInformeAlta'
      KeyFields = 'tractaments'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object EscalesCap_C1_21: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_DiagnosticIngres'
      LookupKeyFields = 'C_DiagnosticIngres'
      KeyFields = 'tractaments'
      Size = 15
      Calculated = True
    end
    object EscalesCap_C1_22: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tractaments_G_DiagnosticIngres'
      LookupKeyFields = 'G_DiagnosticIngres'
      KeyFields = 'tractaments'
      Size = 15
      Calculated = True
    end
    object EscalesCap_C1_23: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Ingr'#233's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tractaments_N_DiagnosticIngres'
      LookupKeyFields = 'N_DiagnosticIngres'
      KeyFields = 'tractaments'
      Size = 40
      Calculated = True
    end
    object EscalesCap_C1_24: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tractaments_G_DiagnosticAlta'
      LookupKeyFields = 'G_DiagnosticAlta'
      KeyFields = 'tractaments'
      Size = 15
      Calculated = True
    end
    object EscalesCap_C1_25: TStringField
      Tag = 101
      DisplayLabel = 'Residencia'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'tractaments_c_Residencia'
      LookupKeyFields = 'c_Residencia'
      KeyFields = 'tractaments'
      Size = 10
      Calculated = True
    end
    object EscalesCap_C1_26: TStringField
      Tag = 101
      DisplayLabel = 'Resid'#232'ncia PADES'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'tractaments_N_RESIDENCIA'
      LookupKeyFields = 'N_RESIDENCIA'
      KeyFields = 'tractaments'
      Size = 44
      Calculated = True
    end
    object EscalesCap_C1_27: TStringField
      Tag = 101
      DisplayLabel = 'Actua PADES'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tractaments_ACTUA_PADES'
      LookupKeyFields = 'ACTUA_PADES'
      KeyFields = 'tractaments'
      Size = 1
      Calculated = True
    end
    object EscalesCap_C1_28: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Sinistre'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tractaments_Data_Sinistre'
      LookupKeyFields = 'Data_Sinistre'
      KeyFields = 'tractaments'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object EscalesCap_C1_29: TIntegerField
      Tag = 101
      DisplayLabel = 'Codi de Proc'#233's'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tractaments_C_Proces'
      LookupKeyFields = 'C_Proces'
      KeyFields = 'tractaments'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object EscalesCap_C2_0: TStringField
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
    object EscalesCap_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Usuari_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'Usuari'
      Calculated = True
    end
    object EscalesCap_C2_2: TStringField
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
    object EscalesCap_C2_3: TStringField
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
    object EscalesCap_C2_4: TStringField
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
    object EscalesCap_C2_5: TStringField
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
    object EscalesCap_C2_6: TStringField
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
    object EscalesCap_C2_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Usuari_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'Usuari'
      Calculated = True
    end
    object EscalesCap_C2_8: TStringField
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
    object EscalesCap_C2_9: TStringField
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
    object EscalesCap_C2_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Usuari_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'Usuari'
      Calculated = True
    end
    object EscalesCap_C2_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Usuari_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'Usuari'
      Calculated = True
    end
    object EscalesCap_C2_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Usuari_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'Usuari'
      Calculated = True
    end
    object EscalesCap_C2_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'Usuari_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'Usuari'
      Size = 6
      Calculated = True
    end
    object EscalesCap_C2_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'Usuari_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'Usuari'
      Size = 9
      Calculated = True
    end
    object EscalesCap_C2_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'Usuari_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'Usuari'
      Size = 250
      Calculated = True
    end
    object EscalesCap_C2_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Usuari_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'Usuari'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object EscalesCap_C2_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Usuari_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'Usuari'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object EscalesCap_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'validador_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'validador'
      Size = 5
      Calculated = True
    end
    object EscalesCap_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'validador_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'validador'
      Calculated = True
    end
    object EscalesCap_C3_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'validador_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'validador'
      Size = 15
      Calculated = True
    end
    object EscalesCap_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'validador_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'validador'
      Size = 4
      Calculated = True
    end
    object EscalesCap_C3_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'validador_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'validador'
      Size = 2
      Calculated = True
    end
    object EscalesCap_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'validador_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'validador'
      Size = 2
      Calculated = True
    end
    object EscalesCap_C3_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'validador_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'validador'
      Size = 1
      Calculated = True
    end
    object EscalesCap_C3_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'validador_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'validador'
      Calculated = True
    end
    object EscalesCap_C3_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'validador_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'validador'
      Size = 1
      Calculated = True
    end
    object EscalesCap_C3_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'validador_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'validador'
      Size = 40
      Calculated = True
    end
    object EscalesCap_C3_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'validador_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'validador'
      Calculated = True
    end
    object EscalesCap_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'validador_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'validador'
      Calculated = True
    end
    object EscalesCap_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'validador_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'validador'
      Calculated = True
    end
    object EscalesCap_C3_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'validador_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'validador'
      Size = 6
      Calculated = True
    end
    object EscalesCap_C3_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'validador_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'validador'
      Size = 9
      Calculated = True
    end
    object EscalesCap_C3_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'validador_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'validador'
      Size = 250
      Calculated = True
    end
    object EscalesCap_C3_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'validador_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'validador'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object EscalesCap_C3_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'validador_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'validador'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
  end
  object EscalesLin: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsC
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataEscales.EscalesLin
    IndiceActivo = 'Pk'
    CalcSimple = False
    AlConsultarCampoFiltro2 = EscalesLinAlConsultarCampoFiltro2
    AutoPost = False
    Filtro.Strings = (
      'clau = :clau')
    Left = 34
    Top = 559
    object EscalesLin_C_Item: TIntegerField
      Tag = 100
      DisplayLabel = 'C Item'
      DisplayWidth = 8
      FieldName = 'C_Item'
      Required = True
      DisplayFormat = '#,##0;; '
    end
    object EscalesLin_Clau: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Clau'
      LookupDataSet = EscalesCap
      LookupKeyFields = 'Clau'
      LookupResultField = 'Clau'
      DisplayFormat = '#,##0;; '
    end
    object EscalesLin_D_Item: TStringField
      Tag = 100
      DisplayLabel = 'D Item'
      DisplayWidth = 15
      FieldName = 'D_Item'
      Size = 15
    end
    object EscalesLin_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'C Item'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'items_C_Item'
      LookupKeyFields = 'C_Item'
      KeyFields = 'items'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object EscalesLin_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'N Item'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'items_N_Item'
      LookupKeyFields = 'N_Item'
      KeyFields = 'items'
      Size = 40
      Calculated = True
    end
    object EscalesLin_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'items_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'items'
      Calculated = True
    end
    object EscalesLin_C0_3: TIntegerField
      Tag = 101
      DisplayLabel = 'C Escala'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'items_C_Escala'
      LookupKeyFields = 'C_Escala'
      KeyFields = 'items'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object EscalesLin_C0_4: TStringField
      Tag = 101
      DisplayLabel = #192'rea Usuari'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'items_Area_Usuari'
      LookupKeyFields = 'Area_Usuari'
      KeyFields = 'items'
      Size = 3
      Calculated = True
    end
    object EscalesLin_C0_5: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'items_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'items'
      Calculated = True
    end
  end
  object dsC: TDataSource
    DataSet = EscalesCap
    Left = 98
    Top = 506
  end
  object dsL: TDataSource
    DataSet = EscalesLin
    Left = 98
    Top = 559
  end
  object qryBusca: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select C.CLAU as P0, E.R_ESCALA, C.C_TRACTAMENT, C.C_HISTORIA,'
      '           C.DATA, T.C_PRESTACIO'
      'from ESCALESCAP C, ESCALES E, TRACTAMENTS T'
      'where C.C_ESCALA = E.C_ESCALA'
      'and C.C_TRACTAMENT = T.C_TRACTAMENT'
      ''
      'order by C.DATA')
    Left = 162
    Top = 506
  end
  object dsBusca: TDataSource
    DataSet = qryBusca
    Left = 234
    Top = 506
  end
end
