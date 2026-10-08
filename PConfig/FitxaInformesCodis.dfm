object wFitxaInformesCodis: TwFitxaInformesCodis
  Left = 239
  Top = 178
  Width = 1300
  Height = 740
  Caption = 'Informes (tipus, plantilles)'
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
  object pcInformes: TPageControl
    Left = 0
    Top = 0
    Width = 1284
    Height = 701
    ActivePage = TabTipusInf
    Align = alClient
    Style = tsButtons
    TabIndex = 0
    TabOrder = 0
    object TabTipusInf: TTabSheet
      Caption = 'Tipus'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 670
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter4: TSplitter
          Left = 0
          Top = 532
          Width = 1276
          Height = 4
          Cursor = crVSplit
          Align = alBottom
        end
        object HYGrid1: THYGrid
          Left = 0
          Top = 25
          Width = 1276
          Height = 507
          Align = alClient
          Color = clWhite
          DataSource = dsInfTipus
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
              FieldName = 'C_Tipus'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'N_Tipus'
              Width = 316
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Centre'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Solicitable'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Anulable'
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
              FieldName = 'C_DretPresta'
              Title.Caption = 'Dret presta.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_DretMotiu'
              Title.Caption = 'Dret motiu'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Conjunt'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Bolca_Anota'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EliminaBuits'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'corregir_N_Codi'
              Title.Caption = 'Correcci'#243
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALIDACIOAUTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Autors'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Bolca_IB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDFdirecte'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gestionat_N_Codi'
              Title.Caption = 'Gestionat per'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ImpressioAuto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'publicar_N_Codi'
              Title.Caption = 'Publicar HC3'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Diagnostic_Alta'
              Title.Caption = 'Diag. alta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Publicar_APP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ruta_Inici'
              Title.Caption = 'C. Ruta inici'
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ruta1_Ruta'
              Title.Caption = 'Ruta de l'#39'informe generat'
              Width = 202
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_Arxiu'
              Title.Caption = 'C. Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_N_Codi'
              Title.Caption = 'Data per al nom de l'#39'arxiu'
              Width = 158
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ruta_Fi'
              Title.Caption = 'C. Ruta fi'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ruta2_Ruta'
              Title.Caption = 'Ruta de l'#39'informe finaltizat'
              Width = 126
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Baixa'
              Width = 31
              Visible = True
            end>
        end
        object HYBarra1: THYBarra
          Left = 0
          Top = 0
          Width = 1276
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          DataSource = dsInfTipus
          Titulo = False
          VerPrint = True
          VerRefresh = True
          object Label7: TLabel
            Left = 1142
            Top = 0
            Width = 134
            Height = 25
            Align = alRight
            Caption = 'TIPUS D'#39'INFORMES    '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object cbBaixa: TCheckBox
            Left = 440
            Top = 4
            Width = 145
            Height = 17
            Caption = 'Mostra els tipus de baixa'
            TabOrder = 0
            OnClick = cbBaixaClick
          end
        end
        object mgAjudaTipus: THyMoveGroupControl
          Left = 592
          Top = 2
          Width = 537
          Height = 423
          Caption = 'Ajuda'
          TabOrder = 2
          FontCaption.Charset = DEFAULT_CHARSET
          FontCaption.Color = clWhite
          FontCaption.Height = -11
          FontCaption.Name = 'MS Sans Serif'
          FontCaption.Style = []
          object Label26: TLabel
            Left = 8
            Top = 198
            Width = 502
            Height = 26
            Caption = 
              'Finalitzaci'#243' i entrega ("Gestionat per") autom'#224'tica:'#13#10'En ser val' +
              'idats s'#39'imprimeixen directament i es deixen a InformesImprimir p' +
              'erqu'#232' es finalitzin autom'#224'ticament.'
          end
          object Label27: TLabel
            Left = 8
            Top = 332
            Width = 262
            Height = 26
            Caption = 
              'Validaci'#243' Autom'#224'tica: S - es valida de forma autom'#224'tica'#13#10'       ' +
              '                            N - ho valida un usuari'
          end
          object Label30: TLabel
            Left = 8
            Top = 364
            Width = 278
            Height = 26
            Caption = 
              'Finalitzaci'#243' Autom'#224'tica: S - es finalitza de forma autom'#224'tica'#13#10' ' +
              '                                     N - ho finalitza un usuari'
          end
          object Panel6: TPanel
            Left = 2
            Top = 19
            Width = 533
            Height = 62
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            BorderWidth = 5
            TabOrder = 0
            object Label9: TLabel
              Left = 5
              Top = 5
              Width = 523
              Height = 52
              Align = alTop
              Caption = 
                'Centre: descripci'#243' a CodiCampsCurt.'#13#10'             Serveix per fi' +
                'ltrar els tipus possibles des d'#39'Admissions (en fer la sol'#183'lictiu' +
                'd).'#13#10'             B i E tamb'#233' serveixen per filtrar aquests caso' +
                's a la llista d'#39'informes pendents,'#13#10'             escrivint "GBCN' +
                '" o "EASE" respectivament.'
            end
          end
          object Panel7: TPanel
            Left = 2
            Top = 329
            Width = 533
            Height = 21
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 1
            object Label19: TLabel
              Left = 4
              Top = 4
              Width = 525
              Height = 13
              Align = alTop
              Caption = 'Validaci'#243' autom'#224'tica: descripci'#243' a CodiCampsCurt'
            end
          end
          object Panel8: TPanel
            Left = 2
            Top = 102
            Width = 533
            Height = 86
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 2
            object Label22: TLabel
              Left = 4
              Top = 4
              Width = 525
              Height = 78
              Align = alTop
              Caption = 
                'Ordre:   Detalls a CodiCamps'#13#10'             Per als d'#39'alta (ordre' +
                ' 1):'#13#10'                  - es busca/demana el diang'#242'sitc d'#39'alta (' +
                'abans de la validaci'#243')'#13#10'                  - es demana programaci' +
                #243' de prestaci'#243' (en ser validats)'#13#10'                  - es demana ' +
                'finalitzaci'#243' de proc'#233's, pla terap'#232'utic, etc (en ser validats i s' +
                'i cal segons prestaci'#243' alta)'#13#10'                  - es mostren a l' +
                'a llista de metges encara que estiguin pendents de corregir.'
            end
          end
          object Panel9: TPanel
            Left = 2
            Top = 384
            Width = 533
            Height = 34
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 3
            object Label18: TLabel
              Left = 4
              Top = 4
              Width = 525
              Height = 26
              Align = alTop
              Caption = 
                'Diagn'#242'stic alta:   S: en publicar s'#39'ha d'#39'agafar el diagn'#242'stic a ' +
                'l'#39'alta del tractament '#13#10'                           N: en publica' +
                'r s'#39'ha d'#39'agafar el diagn'#242'stic d'#39'ingr'#233's del tractament'
            end
          end
          object Panel10: TPanel
            Left = 2
            Top = 282
            Width = 533
            Height = 47
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 4
            object Label10: TLabel
              Left = 4
              Top = 4
              Width = 525
              Height = 39
              Align = alTop
              Caption = 
                'Bolca a Interbase: indica si s'#39'ha de bolcar l'#39'informe a Interbas' +
                'e en ser validat.'#13#10'                              Ha de ser "S" p' +
                'er als informes que s'#39'han de veure al curs cl'#237'nic i es guarden a' +
                ' InfMetAltes.'#13#10'                              Tamb'#233' per als de tr' +
                'asllat, ja que poden ser convertits en alta.'
            end
          end
          object Panel11: TPanel
            Left = 2
            Top = 235
            Width = 533
            Height = 47
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 5
            object Label8: TLabel
              Left = 4
              Top = 4
              Width = 525
              Height = 39
              Align = alTop
              Caption = 
                'Elimina buits: indica si s'#39'han d'#39'eliminar els apartats que quede' +
                'n buits en substituir el TAG quan la procedure '#13#10'               ' +
                '       "P_Inf_Plantilles_Omple" retorna '#39' '#39' a "valor"'#13#10'         ' +
                '             En cas afirmatiu, s'#39'elimina el par'#224'graf del TAG i e' +
                'l t'#237'tol de l'#39'apartat.'
            end
          end
          object Panel12: TPanel
            Left = 2
            Top = 81
            Width = 533
            Height = 21
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 6
            object Label6: TLabel
              Left = 4
              Top = 4
              Width = 525
              Height = 13
              Align = alTop
              Caption = 'Sol'#183'licitable: descripci'#243' a CodiCampsCurt.'
            end
          end
          object Panel13: TPanel
            Left = 2
            Top = 350
            Width = 533
            Height = 34
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 7
            object Label21: TLabel
              Left = 4
              Top = 4
              Width = 525
              Height = 26
              Align = alTop
              Caption = 
                'Finalitzaci'#243' i entrega autom'#224'tica:'#13#10'En ser validats s'#39'imprimeixe' +
                'n directament i es deixen a InformesImprimir perqu'#232' es finalitzi' +
                'n autom'#224'ticament.'
            end
          end
          object Panel14: TPanel
            Left = 2
            Top = 188
            Width = 533
            Height = 47
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 8
            object Label23: TLabel
              Left = 4
              Top = 4
              Width = 525
              Height = 39
              Align = alTop
              Caption = 
                'Dret presta i dret motiu: la procedure GeneraAlta generar'#224' una s' +
                'ol'#183'licitud d'#39'informe '#13#10'                                     d'#39'aq' +
                'uest tipus per les prestaci'#243'ns/motius amb dret P226 que, a m'#233's, ' +
                #13#10'                                     tinguin el dret indicat a' +
                ' aquest tipus.'
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 536
          Width = 1276
          Height = 134
          Align = alBottom
          Caption = 'Panel5'
          TabOrder = 3
          object HYBarra6: THYBarra
            Left = 1
            Top = 1
            Width = 1274
            Height = 25
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DataSource = dsHC3TipusDocument
            VerOrdenar = False
            VerSalir = False
            VerIndices = False
            Titulo = False
            VerPrint = True
            VerRefresh = True
            object Label20: TLabel
              Left = 1097
              Top = 0
              Width = 177
              Height = 25
              Align = alRight
              Caption = 'TIPUS DE DOCUMENT HC3    '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
            end
          end
          object HYGrid5: THYGrid
            Left = 1
            Top = 26
            Width = 1274
            Height = 107
            Align = alClient
            Color = clWhite
            DataSource = dsHC3TipusDocument
            DefaultDrawing = False
            FixedColor = clSilver
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            AlPintarGrid = HYGrid5AlPintarGrid
            DefaultRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'T_DOC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIPCIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPUS_DOCUMENT'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INICI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_FINAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_PRESTACIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Presta_N_Prestacio'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'C_MOTIU'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Motiu_N_Codi'
                Width = 64
                Visible = True
              end>
          end
        end
      end
    end
    object TabItems: TTabSheet
      Caption = 'Plantilles - '#205'tems - Tags'
      ImageIndex = 4
      object Splitter1: TSplitter
        Left = 838
        Top = 159
        Width = 4
        Height = 287
        Cursor = crHSplit
        Align = alRight
      end
      object Splitter2: TSplitter
        Left = 0
        Top = 155
        Width = 1276
        Height = 4
        Cursor = crVSplit
        Align = alTop
      end
      object Panel1: TPanel
        Left = 842
        Top = 159
        Width = 434
        Height = 287
        Align = alRight
        Caption = 'Panel1'
        TabOrder = 0
        object HYBarra3: THYBarra
          Left = 1
          Top = 1
          Width = 432
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsInfTags
          VerEditar = False
          VerOrdenar = False
          VerSiguiente = False
          VerAnterior = False
          VerPrimero = False
          VerUltimo = False
          VerSalir = False
          Titulo = False
          VerPrint = False
          VerRefresh = True
          DesignSize = (
            432
            25)
          object sbCopiaTags: TSpeedButton
            Left = 317
            Top = 0
            Width = 63
            Height = 25
            Hint = 'Copia els Tags d'#39'un altre tipus dinforme'
            Anchors = [akTop, akRight]
            Caption = 'Copia'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              888877777777777888887FFFFFFFFF7884887FFFFFFFFF7844487FF000000F74
              44447FFFFFFFFF7884887FFF0000FF7884887FFFFFFFFF7884887FF000000F78
              84887FFFFFFFFF7884887FF000000F7884887FFFFFFFFF7884887F000FFFFF78
              84887FFFFFFFFF7884887FFFFFFFFF7888887777777777788888}
            ParentFont = False
            OnClick = sbCopiaTagsClick
          end
          object Label4: TLabel
            Left = 390
            Top = 0
            Width = 42
            Height = 25
            Align = alRight
            Caption = 'TAGS  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object HYGrid3: THYGrid
          Left = 1
          Top = 26
          Width = 432
          Height = 260
          Align = alClient
          Color = clWhite
          DataSource = dsInfTags
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
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tag'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cos'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fase'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fase_N_Codi'
              Width = 180
              Visible = True
            end>
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 159
        Width = 838
        Height = 287
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object HYBarra5: THYBarra
          Left = 0
          Top = 0
          Width = 846
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DataSource = dsInfItems
          VerEditar = False
          VerOrdenar = False
          VerSiguiente = False
          VerAnterior = False
          VerPrimero = False
          VerUltimo = False
          VerSalir = False
          Titulo = False
          VerPrint = True
          VerRefresh = True
          object Label1: TLabel
            Left = 264
            Top = 6
            Width = 374
            Height = 13
            Caption = 'En posar TAG a un '#237'tem, s'#39'afegeix el TAG corresponent de fase 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 799
            Top = 0
            Width = 47
            Height = 13
            Align = alRight
            Caption = #205'TEMS  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object HYGrid4: THYGrid
          Left = 0
          Top = 25
          Width = 846
          Height = 270
          Align = alClient
          Color = clWhite
          DataSource = dsInfItems
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
              FieldName = 'C_Item'
              ReadOnly = True
              Title.Caption = 'C. '#205'tem'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'N_Item'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nivell'
              Title.Caption = 'Niv.'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nivell_N_Codi'
              Title.Caption = 'Nivell'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Obligatori'
              Title.Caption = 'Obligat.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Editable'
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
              FieldName = 'C_TipusItem'
              Title.Caption = 'Tip.'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tipusitem_N_Codi'
              Title.Caption = 'Tipus '#237'tem'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TipusECB'
              Title.Caption = 'Tipus plantilla'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tag'
              Title.Caption = 'Tag (sense %)'
              Width = 100
              Visible = True
            end>
        end
      end
      object HYBarra4: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 33
        Align = alTop
        Alignment = taRightJustify
        BevelInner = bvLowered
        Caption = ' '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object HYLabel2: THYLabel
          Left = 136
          Top = 7
          Width = 305
          Height = 19
          DataField = 'N_Tipus'
          DataSource = dsInfTipus
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          EtiFontColor = -1
          HyColorNo = False
          EtiSepara = 100
          EtiOrienta = eoNoMostrar
          EtiAlign = taLeftJustify
        end
        object edCTipus: THYTextEdit
          Left = 8
          Top = 7
          Width = 120
          Height = 19
          Projecto = wData.Projecte
          Tipo = teConsultaCustom
          ConsultaCustom = cTipus
          Eti = 'Tipus d'#39'informe'
          EtiSepara = 80
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Color = clBtnFace
          ParentColor = False
          TabOrder = 0
          TabStop = True
          AutoSelect = False
          ReadOnly = True
        end
        object pTipusECB: TPanel
          Left = 456
          Top = 6
          Width = 254
          Height = 21
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object Label11: TLabel
            Left = 0
            Top = 4
            Width = 147
            Height = 13
            Caption = 'Tipus plantilla (tipus ECB)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cbTipusECB: TComboBox
            Left = 153
            Top = 0
            Width = 101
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            OnChange = cbTipusECBChange
          end
        end
      end
      object HYGrid2: THYGrid
        Left = 0
        Top = 58
        Width = 1276
        Height = 97
        Align = alTop
        Color = clWhite
        DataSource = dsInfPlantilles
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
            FieldName = 'C_Plantilla'
            ReadOnly = True
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_Plantilla'
            Width = 214
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Idioma'
            Title.Caption = 'C. Idioma'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idioma_N_Codi'
            Title.Caption = 'Idioma'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Arxiu'
            Width = 392
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipusECB'
            Title.Caption = 'Tipus plantilla'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Baixa'
            Width = 35
            Visible = True
          end>
      end
      object HYBarra2: THYBarra
        Left = 0
        Top = 33
        Width = 1276
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        DataSource = dsInfPlantilles
        VerEditar = False
        VerOrdenar = False
        VerSiguiente = False
        VerAnterior = False
        VerPrimero = False
        VerUltimo = False
        VerIndices = False
        Titulo = False
        VerPrint = False
        VerRefresh = True
        object Label2: TLabel
          Left = 264
          Top = 6
          Width = 425
          Height = 13
          Caption = 
            'Els arxius (plantilles Word) estan ubicats a G:\BIN\Curs\Plantil' +
            'les informes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 1201
          Top = 0
          Width = 83
          Height = 13
          Align = alRight
          Caption = 'PLANTILLES  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
      object mgAjudaItems: THyMoveGroupControl
        Left = 720
        Top = 10
        Width = 529
        Height = 401
        Caption = 'Ajuda'
        TabOrder = 5
        FontCaption.Charset = DEFAULT_CHARSET
        FontCaption.Color = clWhite
        FontCaption.Height = -11
        FontCaption.Name = 'MS Sans Serif'
        FontCaption.Style = []
        object Panel16: TPanel
          Left = 2
          Top = 330
          Width = 525
          Height = 62
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 0
          object Label25: TLabel
            Left = 16
            Top = 5
            Width = 463
            Height = 52
            Caption = 
              '          La procedure "P_Plantilles_Omple" retorna ordre -1 per' +
              ' alguns TAGS (que s'#243'n textos llargs) '#13#10'          i tamb'#233' per als' +
              ' que tenen Cos = "S", amb l'#39'objectiu de fer InsertText en compte' +
              's de '#13#10'          ReplaceAll (els textos llargs queden truncats e' +
              'n fer replace) i quedar-nos a lloc.'#13#10'          (Un ReplaceAll pr' +
              'ovoca que el Find torni a l'#39'inici del document quan acaba).     ' +
              '     '
          end
        end
        object Panel17: TPanel
          Left = 2
          Top = 19
          Width = 525
          Height = 23
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 1
          object Label28: TLabel
            Left = 8
            Top = 5
            Width = 36
            Height = 13
            Caption = #205'TEMS:'
          end
        end
        object Panel15: TPanel
          Left = 2
          Top = 42
          Width = 525
          Height = 62
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 2
          object Label16: TLabel
            Left = 16
            Top = 5
            Width = 494
            Height = 52
            Caption = 
              'Tipus Plantilla: ha de ser el producte dels tipus de plantilla a' +
              'ls quals pertany l'#39#237'tem.                        '#13#10'              ' +
              '          Per a AHO el tipus de plantilla equival al Tipus ECB (' +
              'CodiCamps.TipusCodi = '#39'TIPUSECB'#39')'#13#10'                        Per a' +
              ' CNI '#233's el tipus de consentiment informat.'#13#10'                    ' +
              '    Per a CEX/CEB es defineix en funci'#243' de si '#233's 1a visita o suc' +
              'cessiva.'
          end
        end
        object Panel18: TPanel
          Left = 2
          Top = 104
          Width = 525
          Height = 23
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 3
          object Label29: TLabel
            Left = 16
            Top = 5
            Width = 386
            Height = 13
            Caption = 
              'Nivell:               Indica la indentaci'#243' i format en el formul' +
              'ari d'#39'introducci'#243' d'#39'e dades.'
          end
        end
        object Panel19: TPanel
          Left = 2
          Top = 222
          Width = 525
          Height = 23
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 4
          object Label14: TLabel
            Left = 8
            Top = 5
            Width = 35
            Height = 13
            Caption = 'TAGS: '
          end
        end
        object Panel20: TPanel
          Left = 2
          Top = 186
          Width = 525
          Height = 36
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 5
          object Label12: TLabel
            Left = 16
            Top = 5
            Width = 390
            Height = 26
            Caption = 
              'SQL bolcatge:  '#201's el proc'#233's que busca informaci'#243' a l'#39'HCE per bol' +
              'car-la com a text '#13#10'                        a l'#39#237'tem corresponen' +
              't en el formulari d'#39'introduccio de dades.'
          end
        end
        object Panel21: TPanel
          Left = 2
          Top = 150
          Width = 525
          Height = 36
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 6
          object Label13: TLabel
            Left = 16
            Top = 5
            Width = 401
            Height = 26
            Caption = 
              'SQL selecci'#243':   '#201's la llista d'#39'opcions que ofereix el formulari ' +
              'per aquest '#237'tem. '#13#10'                         Pot ser multiselecci' +
              #243' o tipus consulta, com indica el camp Tipus '#237'tem.'
          end
        end
        object Panel22: TPanel
          Left = 2
          Top = 281
          Width = 525
          Height = 49
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 7
          object Label24: TLabel
            Left = 16
            Top = 5
            Width = 439
            Height = 39
            Caption = 
              'Cos:   Indica si el TAG pertany al cos del document (o a la cap'#231 +
              'alera)'#13#10'          Ho necessitem en alguns casos per quedar-nos-h' +
              'i ubicats despr'#233's de fer la substituci'#243' '#13#10'          (concretamen' +
              't quan cal eliminar l'#39'apartat en cas de quedar buit)'
          end
        end
        object Panel23: TPanel
          Left = 2
          Top = 245
          Width = 525
          Height = 36
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 8
          object Label15: TLabel
            Left = 16
            Top = 5
            Width = 356
            Height = 26
            Caption = 
              'Fase:  Indica en quin moment de l'#39'edici'#243' d'#39'un informe es cerca a' +
              'quest TAG '#13#10'           per substituir-lo pel valor que retorna l' +
              'a procedure'
          end
        end
        object Panel25: TPanel
          Left = 2
          Top = 127
          Width = 525
          Height = 23
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 9
          object Label35: TLabel
            Left = 16
            Top = 5
            Width = 407
            Height = 13
            Caption = 
              'Editable:           Indica si el text bolcat al memo (a partir d' +
              'e la selecci'#243') es pot modificar.'
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 446
        Width = 1276
        Height = 224
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 6
        object HYArea1: THYArea
          Left = 0
          Top = 0
          Width = 1284
          Height = 224
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = True
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
          DataSource = dsInfItems
          object Label17: TLabel
            Left = 16
            Top = 8
            Width = 330
            Height = 13
            Caption = 
              'SQL Selecci'#243'    [ Llista per a la selecci'#243' '#250'nica o m'#250'ltiple, si ' +
              #233's el cas ] '
          end
          object Label32: TLabel
            Left = 624
            Top = 8
            Width = 289
            Height = 13
            Caption = 'INDICACIONS    [ informaci'#243' d'#39'ajuda per complimentar l'#39#237'tem ]'
          end
          object Label33: TLabel
            Left = 624
            Top = 112
            Width = 376
            Height = 13
            Caption = 
              'SQL Bolcatge    [ informaci'#243' que es bolca autom'#224'ticament a l'#39#237'te' +
              'm o a l'#39'informe ]'
          end
          object Label34: TLabel
            Left = 16
            Top = 112
            Width = 532
            Height = 13
            Caption = 
              'SQL Comprovaci'#243'    [ Per avisar si falta informaci'#243' abans de bol' +
              'car-la; directament relacionat amb SQL bolcatge ]'
          end
          object Ed_bInfItems_SQL_Select: THYMemo
            Left = 16
            Top = 24
            Width = 600
            Height = 80
            DataField = 'SQL_Select'
            DataSource = dsInfItems
            ParentColor = True
            TabOrder = 0
          end
          object Ed_bInfItems_SQL_Comprova: THYMemo
            Left = 16
            Top = 128
            Width = 600
            Height = 80
            DataField = 'SQL_Comprova'
            DataSource = dsInfItems
            ParentColor = True
            TabOrder = 1
          end
          object Ed_bInfItems_SQL_Bolcatge: THYMemo
            Left = 624
            Top = 128
            Width = 600
            Height = 80
            DataField = 'SQL_Bolcatge'
            DataSource = dsInfItems
            ParentColor = True
            TabOrder = 2
          end
          object Ed_bInfItems_Indicacions: THYMemo
            Left = 624
            Top = 24
            Width = 600
            Height = 80
            DataField = 'Indicacions'
            DataSource = dsInfItems
            ParentColor = True
            TabOrder = 3
          end
        end
      end
    end
    object TabDocARtf: TTabSheet
      Caption = 'DOC ->  RTF '
      ImageIndex = 2
      TabVisible = False
      object Unitat: TDriveComboBoxEx
        Left = 8
        Top = 40
        Width = 200
        Height = 22
        DirList = Carpetes
        TabOrder = 1
      end
      object Filtre: TEdit
        Left = 220
        Top = 40
        Width = 200
        Height = 21
        TabOrder = 2
        Text = 'Filtre'
        OnChange = FiltreChange
      end
      object bInicialitza: TButton
        Left = 8
        Top = 8
        Width = 200
        Height = 25
        Caption = 'Inicialitza'
        TabOrder = 3
        OnClick = bInicialitzaClick
      end
      object bConverteix: TButton
        Left = 692
        Top = 8
        Width = 250
        Height = 25
        Caption = 'Converteix la selecci'#243
        TabOrder = 4
        OnClick = bConverteixClick
      end
      object LlistaFitxers: TListBox
        Left = 432
        Top = 40
        Width = 510
        Height = 475
        ItemHeight = 13
        MultiSelect = True
        TabOrder = 5
      end
      object bLlista: TButton
        Left = 432
        Top = 8
        Width = 250
        Height = 25
        Caption = 'Llista'
        TabOrder = 6
        OnClick = bLlistaClick
      end
      object Carpetes: TDirectoryListBox
        Left = 8
        Top = 66
        Width = 200
        Height = 447
        FileList = Fitxers
        ItemHeight = 16
        TabOrder = 0
        OnClick = CarpetesChange
      end
      object Fitxers: TFileListBoxEx
        Left = 220
        Top = 66
        Width = 200
        Height = 449
        ItemHeight = 13
        Mask = '*.doc'
        MultiSelect = True
        TabOrder = 7
      end
      object cbConfirma: TCheckBox
        Left = 224
        Top = 16
        Width = 193
        Height = 17
        Caption = 'Demana confirmaci'#243' en eliminar'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object mErrors: TMemo
        Left = 432
        Top = 520
        Width = 510
        Height = 89
        Lines.Strings = (
          'Log errors')
        TabOrder = 9
      end
    end
    object TabRTFaRTF: TTabSheet
      Caption = 'RTF a RTF real'
      ImageIndex = 3
      TabVisible = False
      object UnitatRTF: TDriveComboBoxEx
        Left = 8
        Top = 40
        Width = 200
        Height = 22
        DirList = CarpetesRTF
        TabOrder = 0
      end
      object FiltreRTF: TEdit
        Left = 220
        Top = 40
        Width = 200
        Height = 21
        TabOrder = 1
        Text = 'Filtre'
        OnChange = FiltreRTFChange
      end
      object bInicialitzaRTF: TButton
        Left = 8
        Top = 8
        Width = 200
        Height = 25
        Caption = 'Inicialitza'
        TabOrder = 2
        OnClick = bInicialitzaRTFClick
      end
      object bConverteixRTF: TButton
        Left = 692
        Top = 8
        Width = 250
        Height = 25
        Caption = 'Converteix la selecci'#243
        TabOrder = 3
        OnClick = bConverteixRTFClick
      end
      object LlistaFitxersRTF: TListBox
        Left = 432
        Top = 40
        Width = 510
        Height = 475
        ItemHeight = 13
        MultiSelect = True
        TabOrder = 4
      end
      object bLlistaRTF: TButton
        Left = 432
        Top = 8
        Width = 250
        Height = 25
        Caption = 'Llista'
        TabOrder = 5
        OnClick = bLlistaRTFClick
      end
      object CarpetesRTF: TDirectoryListBox
        Left = 8
        Top = 66
        Width = 200
        Height = 447
        FileList = FitxersRTF
        ItemHeight = 16
        TabOrder = 6
        OnClick = CarpetesRTFChange
      end
      object FitxersRTF: TFileListBoxEx
        Left = 220
        Top = 66
        Width = 200
        Height = 449
        ItemHeight = 13
        Mask = '*.doc'
        MultiSelect = True
        TabOrder = 7
      end
      object mErrorsRTF: TMemo
        Left = 432
        Top = 520
        Width = 510
        Height = 89
        Lines.Strings = (
          'Log errors')
        TabOrder = 8
      end
    end
    object TabLlistes: TTabSheet
      Caption = 'Llistes'
      ImageIndex = 4
      object Panel24: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 670
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 25
          Width = 1276
          Height = 645
          Align = alClient
          AutoFitColWidths = True
          Color = clWhite
          DataSource = dsInfLlistes
          DrawMemoText = True
          FixedColor = clSilver
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText]
          RowHeight = 4
          RowLines = 2
          RowSizingAllowed = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'ID'
              Footers = <>
              ReadOnly = True
              Width = 33
            end
            item
              EditButtons = <>
              FieldName = 'C_Tipus'
              Footers = <>
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'C_Item'
              Footers = <>
              Width = 35
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'item_N_Item'
              Footers = <>
              Width = 104
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'C_Area'
              Footers = <>
              Width = 33
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'area_N_Area'
              Footers = <>
              ReadOnly = True
              Title.Caption = #192'rea (descripci'#243')'
              Width = 95
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'Grups_UM'
              Footers = <>
              Width = 65
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'Automatic'
              Footers = <>
              Width = 54
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'Ordre'
              Footers = <>
              Width = 40
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'Baixa'
              Footers = <>
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'Text_CA'
              Footers = <>
              Width = 350
            end
            item
              EditButtons = <>
              FieldName = 'Text_ES'
              Footers = <>
              Width = 350
            end
            item
              EditButtons = <>
              FieldName = 'Text_EN'
              Footers = <>
              Width = 350
            end
            item
              EditButtons = <>
              FieldName = 'SQL'
              Footers = <>
              Width = 350
            end>
        end
        object HYBarra8: THYBarra
          Left = 0
          Top = 0
          Width = 1276
          Height = 25
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = ' '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          DataSource = dsInfLlistes
          VerEditar = False
          VerOrdenar = False
          VerSiguiente = False
          VerAnterior = False
          VerPrimero = False
          VerUltimo = False
          Titulo = False
          VerPrint = True
          VerRefresh = True
          object Label31: TLabel
            Left = 1217
            Top = 0
            Width = 59
            Height = 25
            Align = alRight
            Caption = 'LLISTES  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
      end
    end
  end
  object bInfPlantilles: THYSqlBrowse
    AfterScroll = bInfPlantillesAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsInfTipus
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInformes.Informes_Plantilles
    IndiceActivo = 'tipusecb'
    CalcSimple = False
    AutoPost = False
    Padre = dsInfTipus
    Left = 128
    Top = 304
    object bInfPlantilles_C_Tipus: TStringField
      Tag = 100
      DisplayLabel = 'Codi Tipus'
      DisplayWidth = 3
      FieldName = 'C_Tipus'
      Size = 3
    end
    object bInfPlantilles_C_Plantilla: TIntegerField
      Tag = 100
      DisplayLabel = 'Codi Plantilla'
      DisplayWidth = 8
      FieldName = 'C_Plantilla'
      DisplayFormat = '#,##0;; '
    end
    object bInfPlantilles_Idioma: TSmallintField
      Tag = 100
      DisplayWidth = 15
      FieldName = 'Idioma'
      DisplayFormat = '#,##0;; '
    end
    object bInfPlantilles_Arxiu: TStringField
      Tag = 100
      DisplayWidth = 100
      FieldName = 'Arxiu'
      Size = 100
    end
    object bInfPlantilles_N_Plantilla: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243' plantilla'
      DisplayWidth = 40
      FieldName = 'N_Plantilla'
      Size = 40
    end
    object bInfPlantilles_Baixa: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Baixa'
      Size = 1
    end
    object bInfPlantilles_TipusECB: TIntegerField
      Tag = 100
      DisplayLabel = 'Tipus ECB'
      DisplayWidth = 8
      FieldName = 'TipusECB'
    end
    object bInfPlantilles_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi tipus'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Tipus_C_Tipus'
      LookupKeyFields = 'C_Tipus'
      KeyFields = 'Tipus'
      Size = 3
      Calculated = True
    end
    object bInfPlantilles_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' tipus'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'Tipus_N_Tipus'
      LookupKeyFields = 'N_Tipus'
      KeyFields = 'Tipus'
      Size = 80
      Calculated = True
    end
    object bInfPlantilles_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tipus_Centre'
      LookupKeyFields = 'Centre'
      KeyFields = 'Tipus'
      Size = 1
      Calculated = True
    end
    object bInfPlantilles_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Sol'#183'licitable'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tipus_Solicitable'
      LookupKeyFields = 'Solicitable'
      KeyFields = 'Tipus'
      Size = 1
      Calculated = True
    end
    object bInfPlantilles_C0_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Tipus_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Tipus'
      Calculated = True
    end
    object bInfPlantilles_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Conjunt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tipus_Conjunt'
      LookupKeyFields = 'Conjunt'
      KeyFields = 'Tipus'
      Size = 1
      Calculated = True
    end
    object bInfPlantilles_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'S'#39'ha de corregir'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tipus_Corregir'
      LookupKeyFields = 'Corregir'
      KeyFields = 'Tipus'
      Size = 1
      Calculated = True
    end
    object bInfPlantilles_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Validaci'#243' autom'#224'tica'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tipus_ValidacioAuto'
      LookupKeyFields = 'ValidacioAuto'
      KeyFields = 'Tipus'
      Size = 1
      Calculated = True
    end
    object bInfPlantilles_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Impressi'#243' autom'#224'tica'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tipus_ImpressioAuto'
      LookupKeyFields = 'ImpressioAuto'
      KeyFields = 'Tipus'
      Size = 1
      Calculated = True
    end
    object bInfPlantilles_C0_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Gestionat per'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Tipus_Gestionat'
      LookupKeyFields = 'Gestionat'
      KeyFields = 'Tipus'
      Calculated = True
    end
    object bInfPlantilles_C0_10: TStringField
      Tag = 101
      DisplayLabel = 'Publicar a l'#39'HC3'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tipus_Publicar_HC3'
      LookupKeyFields = 'Publicar_HC3'
      KeyFields = 'Tipus'
      Size = 1
      Calculated = True
    end
    object bInfPlantilles_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Utilitza diagn'#242'stic a l'#39'alta'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tipus_Diagnostic_Alta'
      LookupKeyFields = 'Diagnostic_Alta'
      KeyFields = 'Tipus'
      Size = 1
      Calculated = True
    end
    object bInfPlantilles_C0_12: TStringField
      Tag = 101
      DisplayLabel = 'Publicar a l'#39'APP'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Tipus_Publicar_APP'
      LookupKeyFields = 'Publicar_APP'
      KeyFields = 'Tipus'
      Size = 1
      Calculated = True
    end
    object bInfPlantilles_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'idioma_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'idioma'
      Calculated = True
    end
    object bInfPlantilles_C1_1: TStringField
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
    object bInfPlantilles_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'idioma_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'idioma'
      Calculated = True
    end
    object bInfPlantilles_C1_3: TStringField
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
    object bInfPlantilles_C1_4: TStringField
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
    object bInfPlantilles_C1_5: TStringField
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
  object dsInfPlantilles: TDataSource
    DataSet = bInfPlantilles
    Left = 128
    Top = 356
  end
  object bInfTipus: THYSqlBrowse
    AfterScroll = bInfTipusAfterScroll
    DatabaseName = 'Interna'
    Filter = 'BAIXA = '#39'N'#39
    Filtered = True
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInformes.Informes_Tipus
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Left = 56
    Top = 304
    object bInfTipus_C_Tipus: TStringField
      Tag = 100
      DisplayLabel = 'Codi tipus'
      DisplayWidth = 3
      FieldName = 'C_Tipus'
      Size = 3
    end
    object bInfTipus_N_Tipus: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243' tipus'
      DisplayWidth = 80
      FieldName = 'N_Tipus'
      Size = 80
    end
    object bInfTipus_Solicitable: TStringField
      Tag = 100
      DisplayLabel = 'Sol'#183'licitable'
      DisplayWidth = 1
      FieldName = 'Solicitable'
      Size = 1
    end
    object bInfTipus_Corregir: TStringField
      Tag = 100
      DisplayLabel = 'S'#39'ha de corregir'
      DisplayWidth = 1
      FieldName = 'Corregir'
      Size = 1
    end
    object bInfTipus_Publicar_HC3: TStringField
      Tag = 100
      DisplayLabel = 'Publicar a l'#39'HC3'
      DisplayWidth = 1
      FieldName = 'Publicar_HC3'
      Size = 1
    end
    object bInfTipus_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Ordre'
    end
    object bInfTipus_Baixa: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Baixa'
      Size = 1
    end
    object bInfTipus_Ruta_Inici: TStringField
      Tag = 100
      DisplayLabel = 'Ruta inici'
      DisplayWidth = 20
      FieldName = 'Ruta_Inici'
    end
    object bInfTipus_Data_Arxiu: TSmallintField
      Tag = 100
      DisplayLabel = 'Data arxiu'
      DisplayWidth = 2
      FieldName = 'Data_Arxiu'
    end
    object bInfTipus_Ruta_Fi: TStringField
      Tag = 100
      DisplayLabel = 'Ruta fi'
      DisplayWidth = 20
      FieldName = 'Ruta_Fi'
    end
    object bInfTipus_PDFdirecte: TStringField
      Tag = 100
      DisplayLabel = 'PDF directe'
      DisplayWidth = 1
      FieldName = 'PDFdirecte'
      Size = 1
    end
    object bInfTipus_Gestionat: TSmallintField
      Tag = 100
      DisplayLabel = 'Gestionat per'
      DisplayWidth = 2
      FieldName = 'Gestionat'
    end
    object bInfTipus_Centre: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Centre'
      Size = 1
    end
    object bInfTipus_Conjunt: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Conjunt'
      Size = 1
    end
    object bInfTipus_PlantillaFinal: TStringField
      Tag = 100
      DisplayLabel = 'Bolca a plantilla final'
      DisplayWidth = 1
      FieldName = 'PlantillaFinal'
      Size = 1
    end
    object bInfTipus_C_DretPresta: TStringField
      Tag = 100
      DisplayLabel = 'Dret prestaci'#243' alta'
      DisplayWidth = 10
      FieldName = 'C_DretPresta'
      Size = 10
    end
    object bInfTipus_C_DretMotiu: TStringField
      Tag = 100
      DisplayLabel = 'Dret motiu alta'
      DisplayWidth = 10
      FieldName = 'C_DretMotiu'
      Size = 10
    end
    object bInfTipus_Anulable: TStringField
      Tag = 100
      DisplayLabel = 'Anul'#183'lable'
      DisplayWidth = 1
      FieldName = 'Anulable'
      Size = 1
    end
    object bInfTipus_Bolca_IB: TStringField
      Tag = 100
      DisplayLabel = 'Bolcar a Interbase'
      DisplayWidth = 1
      FieldName = 'Bolca_IB'
      Size = 1
    end
    object bInfTipus_Bolca_Anota: TStringField
      Tag = 100
      DisplayLabel = 'Bolca anotaci'#243' al Curs'
      DisplayWidth = 1
      FieldName = 'Bolca_Anota'
      Size = 1
    end
    object bInfTipus_Publicar_APP: TStringField
      Tag = 100
      DisplayLabel = 'Publicar a l'#39'APP'
      DisplayWidth = 1
      FieldName = 'Publicar_APP'
      Size = 1
    end
    object bInfTipus_Diagnostic_Alta: TStringField
      Tag = 100
      DisplayLabel = 'Utilitza diagn'#242'stic a l'#39'alta'
      DisplayWidth = 1
      FieldName = 'Diagnostic_Alta'
      Size = 1
    end
    object bInfTipus_ImpressioAuto: TStringField
      Tag = 100
      DisplayLabel = 'Impressi'#243' autom'#224'tica'
      DisplayWidth = 1
      FieldName = 'ImpressioAuto'
      Size = 1
    end
    object bInfTipus_Autors: TStringField
      Tag = 100
      DisplayLabel = 'Autors a la signatura final'
      DisplayWidth = 1
      FieldName = 'Autors'
      Size = 1
    end
    object bInfTipus_EliminaBuits: TStringField
      Tag = 100
      DisplayLabel = 'Elimina apartats buits'
      DisplayWidth = 1
      FieldName = 'EliminaBuits'
      Size = 1
    end
    object bInfTipus_ValidacioAuto: TStringField
      Tag = 100
      DisplayLabel = 'Validaci'#243' autom'#224'tica'
      DisplayWidth = 1
      FieldName = 'VALIDACIOAUTO'
      Origin = 'INTERNA.INFORMES_TIPUS.VALIDACIOAUTO'
      FixedChar = True
      Size = 1
    end
    object bInfTipus_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'ruta1_Nom'
      LookupKeyFields = 'Nom'
      KeyFields = 'ruta1'
      Calculated = True
    end
    object bInfTipus_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Ruta'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'ruta1_Ruta'
      LookupKeyFields = 'Ruta'
      KeyFields = 'ruta1'
      Size = 100
      Calculated = True
    end
    object bInfTipus_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'data_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'data'
      Calculated = True
    end
    object bInfTipus_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'data_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'data'
      Size = 40
      Calculated = True
    end
    object bInfTipus_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'data_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'data'
      Calculated = True
    end
    object bInfTipus_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'data_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'data'
      Size = 40
      Calculated = True
    end
    object bInfTipus_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'data_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'data'
      Size = 10
      Calculated = True
    end
    object bInfTipus_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'data_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'data'
      Calculated = True
    end
    object bInfTipus_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'ruta2_Nom'
      LookupKeyFields = 'Nom'
      KeyFields = 'ruta2'
      Calculated = True
    end
    object bInfTipus_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Ruta'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'ruta2_Ruta'
      LookupKeyFields = 'Ruta'
      KeyFields = 'ruta2'
      Size = 100
      Calculated = True
    end
    object bInfTipus_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'corregir_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'corregir'
      Size = 1
      Calculated = True
    end
    object bInfTipus_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'corregir_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'corregir'
      Size = 60
      Calculated = True
    end
    object bInfTipus_C4_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'gestionat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'gestionat'
      Calculated = True
    end
    object bInfTipus_C4_1: TStringField
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
    object bInfTipus_C4_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'gestionat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'gestionat'
      Calculated = True
    end
    object bInfTipus_C4_3: TStringField
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
    object bInfTipus_C4_4: TStringField
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
    object bInfTipus_C4_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'gestionat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'gestionat'
      Calculated = True
    end
    object bInfTipus_C5_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'solicitable_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'solicitable'
      Size = 1
      Calculated = True
    end
    object bInfTipus_C5_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'solicitable_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'solicitable'
      Size = 60
      Calculated = True
    end
    object bInfTipus_C6_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'publicar_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'publicar'
      Size = 1
      Calculated = True
    end
    object bInfTipus_C6_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'publicar_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'publicar'
      Size = 60
      Calculated = True
    end
    object bInfTipus_C7_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'centre_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'centre'
      Size = 1
      Calculated = True
    end
    object bInfTipus_C7_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'centre_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'centre'
      Size = 60
      Calculated = True
    end
    object bInfTipus_C8_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig de Dret'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'dretpresta_C_Dret'
      LookupKeyFields = 'C_Dret'
      KeyFields = 'dretpresta'
      Size = 10
      Calculated = True
    end
    object bInfTipus_C8_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'dretpresta_Descripcio'
      LookupKeyFields = 'Descripcio'
      KeyFields = 'dretpresta'
      Size = 80
      Calculated = True
    end
    object bInfTipus_C8_2: TStringField
      Tag = 101
      DisplayLabel = 'DretOrdre'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'dretpresta_DretOrdre'
      LookupKeyFields = 'DretOrdre'
      KeyFields = 'dretpresta'
      Size = 100
      Calculated = True
    end
    object bInfTipus_C9_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig de Dret'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'dretmotiu_C_Dret'
      LookupKeyFields = 'C_Dret'
      KeyFields = 'dretmotiu'
      Size = 10
      Calculated = True
    end
    object bInfTipus_C9_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'dretmotiu_Descripcio'
      LookupKeyFields = 'Descripcio'
      KeyFields = 'dretmotiu'
      Size = 80
      Calculated = True
    end
    object bInfTipus_C9_2: TStringField
      Tag = 101
      DisplayLabel = 'DretOrdre'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'dretmotiu_DretOrdre'
      LookupKeyFields = 'DretOrdre'
      KeyFields = 'dretmotiu'
      Size = 100
      Calculated = True
    end
    object bInfTipus_C10_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'ordre_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'ordre'
      Calculated = True
    end
    object bInfTipus_C10_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'ordre_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'ordre'
      Size = 40
      Calculated = True
    end
    object bInfTipus_C10_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'ordre_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'ordre'
      Calculated = True
    end
    object bInfTipus_C10_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'ordre_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'ordre'
      Size = 40
      Calculated = True
    end
    object bInfTipus_C10_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'ordre_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'ordre'
      Size = 10
      Calculated = True
    end
    object bInfTipus_C10_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'ordre_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'ordre'
      Calculated = True
    end
    object bInfTipus_C11_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'bolcaanota_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'bolcaanota'
      Size = 1
      Calculated = True
    end
    object bInfTipus_C11_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'bolcaanota_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'bolcaanota'
      Size = 60
      Calculated = True
    end
    object bInfTipus_C12_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'validar_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'validar'
      Size = 1
      Calculated = True
    end
    object bInfTipus_C12_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'validar_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'validar'
      Size = 60
      Calculated = True
    end
  end
  object dsInfTipus: TDataSource
    DataSet = bInfTipus
    Left = 56
    Top = 356
  end
  object bInfTags: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsInfTipus
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInformes.Informes_Tags
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsInfTipus
    Left = 204
    Top = 304
    object bInfTags_Tag: TStringField
      Tag = 100
      DisplayWidth = 15
      FieldName = 'Tag'
      Size = 15
    end
    object bInfTags_Fase: TSmallintField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Fase'
    end
    object bInfTags_C_Tipus: TStringField
      Tag = 100
      DisplayLabel = 'Tipus informe'
      DisplayWidth = 3
      FieldName = 'C_Tipus'
      Size = 3
    end
    object bInfTags_ID: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object bInfTags_Cos: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Cos'
      Size = 1
    end
    object bInfTags_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Fase_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Fase'
      Calculated = True
    end
    object bInfTags_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Fase_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Fase'
      Size = 40
      Calculated = True
    end
    object bInfTags_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Fase_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Fase'
      Calculated = True
    end
    object bInfTags_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Fase_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Fase'
      Size = 40
      Calculated = True
    end
    object bInfTags_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Fase_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Fase'
      Size = 10
      Calculated = True
    end
    object bInfTags_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Fase_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Fase'
      Calculated = True
    end
    object bInfTags_C1_0: TStringField
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
    object bInfTags_C1_1: TStringField
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
    object bInfTags_C1_2: TStringField
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
    object bInfTags_C1_3: TStringField
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
    object bInfTags_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipus_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'tipus'
      Calculated = True
    end
    object bInfTags_C1_5: TStringField
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
    object bInfTags_C1_6: TStringField
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
    object bInfTags_C1_7: TStringField
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
    object bInfTags_C1_8: TStringField
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
    object bInfTags_C1_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Gestionat per'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipus_Gestionat'
      LookupKeyFields = 'Gestionat'
      KeyFields = 'tipus'
      Calculated = True
    end
    object bInfTags_C1_10: TStringField
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
    object bInfTags_C1_11: TStringField
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
    object bInfTags_C1_12: TStringField
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
  end
  object dsInfTags: TDataSource
    DataSet = bInfTags
    Left = 204
    Top = 356
  end
  object bInfItems: THYSqlBrowse
    DatabaseName = 'Interna'
    OnFilterRecord = bInfItemsFilterRecord
    DataSource = dsInfTipus
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInformes.Informes_Items
    IndiceActivo = 'ordre'
    CalcSimple = False
    AutoPost = False
    Padre = dsInfTipus
    Left = 276
    Top = 304
    object bInfItems_C_Item: TIntegerField
      Tag = 100
      DisplayLabel = 'Codi '#237'tem'
      DisplayWidth = 8
      FieldName = 'C_Item'
      DisplayFormat = '#,##0;; '
    end
    object bInfItems_C_TipusInforme: TStringField
      Tag = 100
      DisplayLabel = 'Tipus informe'
      DisplayWidth = 3
      FieldName = 'C_TipusInforme'
      Size = 3
    end
    object bInfItems_N_Item: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243' '#237'tem'
      DisplayWidth = 80
      FieldName = 'N_Item'
      Size = 80
    end
    object bInfItems_Obligatori: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Obligatori'
      Size = 1
    end
    object bInfItems_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Ordre'
    end
    object bInfItems_Nivell: TSmallintField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Nivell'
    end
    object bInfItems_C_TipusItem: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus '#237'tem'
      DisplayWidth = 2
      FieldName = 'C_TipusItem'
    end
    object bInfItems_SQL_Select: TStringField
      Tag = 100
      DisplayLabel = 'SQL selecci'#243
      DisplayWidth = 255
      FieldName = 'SQL_Select'
      Size = 255
    end
    object bInfItems_Tag: TStringField
      Tag = 100
      DisplayWidth = 15
      FieldName = 'Tag'
      Size = 15
    end
    object bInfItems_SQL_Comprova: TStringField
      Tag = 100
      DisplayLabel = 'SQL comprovaci'#243
      DisplayWidth = 255
      FieldName = 'SQL_Comprova'
      Size = 255
    end
    object bInfItems_SQL_Bolcatge: TStringField
      Tag = 100
      DisplayLabel = 'SQL bolcatge'
      DisplayWidth = 255
      FieldName = 'SQL_Bolcatge'
      Size = 255
    end
    object bInfItems_TipusECB: TIntegerField
      Tag = 100
      DisplayLabel = 'Tipus ECB'
      DisplayWidth = 8
      FieldName = 'TipusECB'
    end
    object bInfItems_Editable: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Editable'
      Size = 1
    end
    object bInfItems_Indicacions: TMemoField
      Tag = 100
      DisplayWidth = 3000
      FieldName = 'Indicacions'
      BlobType = ftMemo
      Size = 3000
    end
    object bInfItems_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi tipus'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_C_Tipus'
      LookupKeyFields = 'C_Tipus'
      KeyFields = 'tipusinforme'
      Size = 3
      Calculated = True
    end
    object bInfItems_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' tipus'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_N_Tipus'
      LookupKeyFields = 'N_Tipus'
      KeyFields = 'tipusinforme'
      Size = 80
      Calculated = True
    end
    object bInfItems_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Centre'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_Centre'
      LookupKeyFields = 'Centre'
      KeyFields = 'tipusinforme'
      Size = 1
      Calculated = True
    end
    object bInfItems_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Sol'#183'licitable'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_Solicitable'
      LookupKeyFields = 'Solicitable'
      KeyFields = 'tipusinforme'
      Size = 1
      Calculated = True
    end
    object bInfItems_C0_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'tipusinforme'
      Calculated = True
    end
    object bInfItems_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Conjunt'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_Conjunt'
      LookupKeyFields = 'Conjunt'
      KeyFields = 'tipusinforme'
      Size = 1
      Calculated = True
    end
    object bInfItems_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'S'#39'ha de corregir'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_Corregir'
      LookupKeyFields = 'Corregir'
      KeyFields = 'tipusinforme'
      Size = 1
      Calculated = True
    end
    object bInfItems_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Validaci'#243' autom'#224'tica'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_ValidacioAuto'
      LookupKeyFields = 'ValidacioAuto'
      KeyFields = 'tipusinforme'
      Size = 1
      Calculated = True
    end
    object bInfItems_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Impressi'#243' autom'#224'tica'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_ImpressioAuto'
      LookupKeyFields = 'ImpressioAuto'
      KeyFields = 'tipusinforme'
      Size = 1
      Calculated = True
    end
    object bInfItems_C0_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Gestionat per'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_Gestionat'
      LookupKeyFields = 'Gestionat'
      KeyFields = 'tipusinforme'
      Calculated = True
    end
    object bInfItems_C0_10: TStringField
      Tag = 101
      DisplayLabel = 'Publicar a l'#39'HC3'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_Publicar_HC3'
      LookupKeyFields = 'Publicar_HC3'
      KeyFields = 'tipusinforme'
      Size = 1
      Calculated = True
    end
    object bInfItems_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Utilitza diagn'#242'stic a l'#39'alta'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_Diagnostic_Alta'
      LookupKeyFields = 'Diagnostic_Alta'
      KeyFields = 'tipusinforme'
      Size = 1
      Calculated = True
    end
    object bInfItems_C0_12: TStringField
      Tag = 101
      DisplayLabel = 'Publicar a l'#39'APP'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinforme_Publicar_APP'
      LookupKeyFields = 'Publicar_APP'
      KeyFields = 'tipusinforme'
      Size = 1
      Calculated = True
    end
    object bInfItems_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'nivell_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'nivell'
      Calculated = True
    end
    object bInfItems_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'nivell_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'nivell'
      Size = 40
      Calculated = True
    end
    object bInfItems_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'nivell_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'nivell'
      Calculated = True
    end
    object bInfItems_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'nivell_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'nivell'
      Size = 40
      Calculated = True
    end
    object bInfItems_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'nivell_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'nivell'
      Size = 10
      Calculated = True
    end
    object bInfItems_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'nivell_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'nivell'
      Calculated = True
    end
    object bInfItems_C2_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipusitem_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'tipusitem'
      Calculated = True
    end
    object bInfItems_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tipusitem_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'tipusitem'
      Size = 40
      Calculated = True
    end
    object bInfItems_C2_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tipusitem_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'tipusitem'
      Calculated = True
    end
    object bInfItems_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tipusitem_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'tipusitem'
      Size = 40
      Calculated = True
    end
    object bInfItems_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'tipusitem_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'tipusitem'
      Size = 10
      Calculated = True
    end
    object bInfItems_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'tipusitem_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'tipusitem'
      Calculated = True
    end
  end
  object dsInfItems: TDataSource
    DataSet = bInfItems
    Left = 276
    Top = 356
  end
  object cTipus: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select distinct T.C_TIPUS, T.N_TIPUS'
      'from INFORMES_TIPUS T'
      'left outer join INFORMES_PLANTILLES P on T.C_TIPUS = P.C_TIPUS'
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataInformes.Informes_Tipus
    Titulo = 'Tipus d'#39'informe'
    Filtros = <
      item
        Nombre = 'T'#233' plantilla'
        NombreDB = 'P.C_TIPUS'
        Tipo = tiCaracter
        Condicion = tiNoVacio
      end>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cTipusAlSeleccionar
    ConsultaGetSqlField = cTipusConsultaGetSqlField
    Left = 56
    Top = 248
  end
  object dsInfLlistes: TDataSource
    DataSet = bInfLlistes
    Left = 344
    Top = 356
  end
  object bInfLlistes: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInformes.Informes_Llistes
    IndiceActivo = 'ordre'
    CalcSimple = False
    AutoPost = False
    Left = 344
    Top = 304
    object bInfLlistes_ID: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;;0'
    end
    object bInfLlistes_C_Item: TIntegerField
      Tag = 100
      DisplayLabel = #205'tem'
      DisplayWidth = 8
      FieldName = 'C_Item'
    end
    object bInfLlistes_C_Area: TStringField
      Tag = 100
      DisplayLabel = #192'rea'
      DisplayWidth = 3
      FieldName = 'C_Area'
      Size = 3
    end
    object bInfLlistes_Grups_UM: TStringField
      Tag = 100
      DisplayLabel = 'Grups UM'
      DisplayWidth = 40
      FieldName = 'Grups_UM'
      Size = 40
    end
    object bInfLlistes_Automatic: TStringField
      Tag = 100
      DisplayLabel = #192'utom'#224'tic'
      DisplayWidth = 1
      FieldName = 'Automatic'
      Size = 1
    end
    object bInfLlistes_SQL: TStringField
      Tag = 100
      DisplayWidth = 255
      FieldName = 'SQL'
      Size = 255
    end
    object bInfLlistes_Text_CA: TMemoField
      Tag = 100
      DisplayLabel = 'Text catal'#224
      DisplayWidth = 3000
      FieldName = 'Text_CA'
      BlobType = ftMemo
      Size = 3000
    end
    object bInfLlistes_Text_ES: TMemoField
      Tag = 100
      DisplayLabel = 'Text castell'#224
      DisplayWidth = 3000
      FieldName = 'Text_ES'
      BlobType = ftMemo
      Size = 3000
    end
    object bInfLlistes_Text_EN: TMemoField
      Tag = 100
      DisplayLabel = 'Text angl'#232's'
      DisplayWidth = 3000
      FieldName = 'Text_EN'
      BlobType = ftMemo
      Size = 3000
    end
    object bInfLlistes_Ordre: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Ordre'
      DisplayFormat = '#,##0;; '
    end
    object bInfLlistes_Baixa: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Baixa'
      Size = 1
    end
    object bInfLlistes_C_Tipus: TStringField
      Tag = 100
      DisplayLabel = 'Tipus informe'
      DisplayWidth = 3
      FieldName = 'C_Tipus'
      Size = 3
    end
    object bInfLlistes_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di Area'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'area_C_Area'
      LookupKeyFields = 'C_Area'
      KeyFields = 'area'
      Size = 3
      Calculated = True
    end
    object bInfLlistes_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Area'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'area_N_Area'
      LookupKeyFields = 'N_Area'
      KeyFields = 'area'
      Size = 40
      Calculated = True
    end
    object bInfLlistes_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Objectiu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'area_Objectiu'
      LookupKeyFields = 'Objectiu'
      KeyFields = 'area'
      Size = 1
      Calculated = True
    end
    object bInfLlistes_C0_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'area_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'area'
      Calculated = True
    end
    object bInfLlistes_C0_4: TStringField
      Tag = 101
      DisplayLabel = #192'rea escales'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'area_E_Area'
      LookupKeyFields = 'E_Area'
      KeyFields = 'area'
      Size = 40
      Calculated = True
    end
    object bInfLlistes_C1_0: TIntegerField
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
    object bInfLlistes_C1_1: TStringField
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
    object bInfLlistes_C1_2: TStringField
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
    object bInfLlistes_C1_3: TStringField
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
    object bInfLlistes_C1_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'item_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'item'
      Calculated = True
    end
    object bInfLlistes_C1_5: TSmallintField
      Tag = 101
      DisplayLabel = 'Nivell'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'item_Nivell'
      LookupKeyFields = 'Nivell'
      KeyFields = 'item'
      Calculated = True
    end
    object bInfLlistes_C1_6: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus '#237'tem'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'item_C_TipusItem'
      LookupKeyFields = 'C_TipusItem'
      KeyFields = 'item'
      Calculated = True
    end
    object bInfLlistes_C1_7: TStringField
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
    object bInfLlistes_C1_8: TStringField
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
    object bInfLlistes_C1_9: TStringField
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
    object bInfLlistes_C1_10: TStringField
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
    object bInfLlistes_C1_11: TIntegerField
      Tag = 101
      DisplayLabel = 'Tipus ECB'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'item_TipusECB'
      LookupKeyFields = 'TipusECB'
      KeyFields = 'item'
      Calculated = True
    end
    object bInfLlistes_C1_12: TStringField
      Tag = 101
      DisplayLabel = 'Editable'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'item_Editable'
      LookupKeyFields = 'Editable'
      KeyFields = 'item'
      Size = 1
      Calculated = True
    end
  end
  object qTipusECB: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select C_CODI, N_CODI, ORDRE from CODICAMPS '
      'where TIPUSCODI = '#39'TIPUSECB'#39
      'order by C_CODI')
    Left = 56
    Top = 414
  end
  object dsTipusECB: TDataSource
    DataSet = qTipusECB
    Left = 114
    Top = 414
  end
  object bHC3TipusDocument: THYSqlBrowse
    AfterInsert = bHC3TipusDocumentAfterInsert
    BeforePost = bHC3TipusDocumentBeforePost
    DatabaseName = 'Interna'
    Filtered = True
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM HC3TIPUSDOCUMENT'
      ''
      'ORDER BY HC3TIPUSDOCUMENT.'#39'T_DOC'#39', HC3TIPUSDOCUMENT.'#39'DATA_INICI'#39)
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataHC3.HC3TipusDocument
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Left = 435
    Top = 304
    object bHC3TipusDocument_T_DOC: TStringField
      Tag = 100
      DisplayLabel = 'Tipus document a Guttmann'
      DisplayWidth = 3
      FieldName = 'T_DOC'
      Size = 3
    end
    object bHC3TipusDocument_DESCRIPCIO: TStringField
      Tag = 100
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldName = 'DESCRIPCIO'
      Size = 40
    end
    object bHC3TipusDocument_TIPUS_DOCUMENT: TStringField
      Tag = 100
      DisplayLabel = 'Tipus document a HC3'
      DisplayWidth = 15
      FieldName = 'TIPUS_DOCUMENT'
      Size = 15
    end
    object bHC3TipusDocument_DATA_INICI: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data inici vig'#232'ncia'
      DisplayWidth = 11
      FieldName = 'DATA_INICI'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bHC3TipusDocument_DATA_FINAL: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data final vig'#232'ncia'
      DisplayWidth = 11
      FieldName = 'DATA_FINAL'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bHC3TipusDocument_C_PRESTACIO: TStringField
      Tag = 100
      DisplayLabel = 'Prestaci'#243' associada'
      DisplayWidth = 4
      FieldName = 'C_PRESTACIO'
      Size = 4
    end
    object bHC3TipusDocument_C_MOTIU: TSmallintField
      Tag = 100
      DisplayLabel = 'Motiu d'#39'ingr'#233's associat'
      DisplayWidth = 8
      FieldName = 'C_MOTIU'
      DisplayFormat = '#,##0;; '
    end
    object bHC3TipusDocument_C0_0: TStringField
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
    object bHC3TipusDocument_C0_1: TStringField
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
    object bHC3TipusDocument_C0_2: TStringField
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
    object bHC3TipusDocument_C0_3: TStringField
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
    object bHC3TipusDocument_C0_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Presta_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'Presta'
      Calculated = True
    end
    object bHC3TipusDocument_C0_5: TStringField
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
    object bHC3TipusDocument_C0_6: TStringField
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
    object bHC3TipusDocument_C0_7: TSmallintField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Presta_Grup'
      LookupKeyFields = 'Grup'
      KeyFields = 'Presta'
      Calculated = True
    end
    object bHC3TipusDocument_C0_8: TStringField
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
    object bHC3TipusDocument_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Motiu'
      Calculated = True
    end
    object bHC3TipusDocument_C1_1: TStringField
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
    object bHC3TipusDocument_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Motiu_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Motiu'
      Calculated = True
    end
    object bHC3TipusDocument_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Motiu_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Motiu'
      Size = 40
      Calculated = True
    end
    object bHC3TipusDocument_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Motiu_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Motiu'
      Size = 10
      Calculated = True
    end
    object bHC3TipusDocument_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Motiu_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Motiu'
      Calculated = True
    end
  end
  object dsHC3TipusDocument: TDataSource
    DataSet = bHC3TipusDocument
    Left = 435
    Top = 356
  end
end
