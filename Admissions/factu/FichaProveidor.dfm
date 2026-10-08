object wFichaProveidor: TwFichaProveidor
  Left = 512
  Top = 182
  Width = 696
  Height = 474
  Caption = 'Proveidors'
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
  object HYBarra1: THYBarra
    Left = 0
    Top = 0
    Width = 688
    Height = 25
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clSilver
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    DataSource = dsProv
    VerOrdenar = False
    VerIndices = False
    Titulo = True
    VerPrint = False
    VerRefresh = True
  end
  object HYArea1: THYArea
    Left = 0
    Top = 25
    Width = 688
    Height = 191
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    DataSource = dsProv
    object Bevel2: TBevel
      Left = 176
      Top = 37
      Width = 369
      Height = 73
      Shape = bsFrame
    end
    object Bevel1: TBevel
      Left = 10
      Top = 37
      Width = 161
      Height = 73
      Shape = bsFrame
    end
    object Label1: TLabel
      Left = 350
      Top = 39
      Width = 50
      Height = 13
      Caption = 'Te Rappel'
    end
    object Eti_Prov_Prov_N_Codi: THYLabel
      Left = 26
      Top = 73
      Width = 120
      Height = 19
      DataField = 'Prov_N_Codi'
      DataSource = dsProv
      EtiFontColor = -1
      HyColorNo = False
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
    end
    object Ed_Prov_C_Prov: THYEdit
      Left = 10
      Top = 2
      Width = 95
      Height = 33
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Codi Prov.'
      EtiSepara = 14
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataFactu.Prov
      TabOrder = 0
      AutoSelect = False
      DataSource = dsProv
      DataField = 'C_Prov'
    end
    object Ed_Prov_N_Prov: THYEdit
      Left = 114
      Top = 2
      Width = 319
      Height = 33
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Proveidor'
      EtiSepara = 14
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataFactu.Prov
      TabOrder = 1
      AutoSelect = False
      DataSource = dsProv
      DataField = 'N_Prov'
    end
    object Ed_Prov_Cif: THYEdit
      Left = 450
      Top = 2
      Width = 95
      Height = 33
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'CIF'
      EtiSepara = 14
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataFactu.Prov
      TabOrder = 2
      AutoSelect = False
      DataSource = dsProv
      DataField = 'Cif'
    end
    object Ed_Prov_Rappel: THYEdit
      Left = 424
      Top = 39
      Width = 81
      Height = 33
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = '% Rappel'
      EtiSepara = 14
      EtiOrienta = eoArriba
      EtiAlign = taLeftJustify
      Diccionario = wDataFactu.Prov
      TabOrder = 6
      AutoSelect = False
      DataSource = dsProv
      DataField = 'PerRappelOrtesi'
    end
    object Check_Prov_SN: THYCheck
      Left = 360
      Top = 55
      Width = 19
      Height = 17
      DataField = 'RappelOrtesi'
      DataSource = dsProv
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Check_Prov_ProvaEsp: THYCheck
      Left = 208
      Top = 70
      Width = 111
      Height = 17
      Caption = 'Prova Especials'
      DataField = 'ProvaEsp'
      DataSource = dsProv
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Check_Prov_Ortesis: THYCheck
      Left = 256
      Top = 54
      Width = 63
      Height = 17
      Caption = 'Ortesis'
      DataField = 'Ortesis'
      DataSource = dsProv
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object HYEdit1: THYEdit
      Left = 424
      Top = 69
      Width = 81
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = '% Rappel Prova Especial'
      EtiSepara = 100
      EtiOrienta = eoNoMostrar
      EtiAlign = taLeftJustify
      Diccionario = wDataFactu.Prov
      TabOrder = 8
      AutoSelect = False
      DataSource = dsProv
      DataField = 'PerRappelProvaEsp'
    end
    object HYCheck1: THYCheck
      Left = 360
      Top = 71
      Width = 19
      Height = 17
      DataField = 'RappelProvaEsp'
      DataSource = dsProv
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Ed_Prov_Nacionalidad: THYEdit
      Left = 27
      Top = 52
      Width = 119
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Nacionalidad'
      EtiSepara = 100
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataFactu.Prov
      TabOrder = 9
      AutoSelect = False
      DataSource = dsProv
      DataField = 'Nacionalidad'
    end
    object HYCheck2: THYCheck
      Left = 208
      Top = 86
      Width = 111
      Height = 17
      Caption = 'Ambul'#224'ncia'
      DataField = 'Ambulancia'
      DataSource = dsProv
      TabOrder = 10
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Ed_Prov_IvaExempt: THYEdit
      Left = 9
      Top = 136
      Width = 672
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Iva Exempt Catal'#224
      EtiSepara = 100
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataFactu.Prov
      TabOrder = 11
      AutoSelect = False
      DataSource = dsProv
      DataField = 'IvaExempt'
    end
    object HYEdit2: THYEdit
      Left = 9
      Top = 160
      Width = 672
      Height = 19
      Idioma = Castellano
      EtiFontColor = clWindowText
      Eti = 'Iva Exempt Castell'#224
      EtiSepara = 100
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Diccionario = wDataFactu.Prov
      TabOrder = 12
      AutoSelect = False
      DataSource = dsProv
      DataField = 'IvaExempt2'
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 216
    Width = 688
    Height = 227
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Direcci'#243
      object HYArea2: THYArea
        Left = 0
        Top = 0
        Width = 680
        Height = 199
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        DataSource = dsProv
        object HYEdit3: THYEdit
          Left = 10
          Top = 16
          Width = 425
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Direcci'#243
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 0
          AutoSelect = False
          DataSource = dsProv
          DataField = 'Direccio'
        end
        object HYEdit4: THYEdit
          Left = 10
          Top = 40
          Width = 265
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Poblaci'#243
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 1
          AutoSelect = False
          DataSource = dsProv
          DataField = 'Poblacio'
        end
        object HYEdit5: THYEdit
          Left = 10
          Top = 64
          Width = 145
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Codi Postal'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 2
          AutoSelect = False
          DataSource = dsProv
          DataField = 'CPostal'
        end
        object HYEdit7: THYEdit
          Left = 10
          Top = 88
          Width = 225
          Height = 19
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Tel'#233'fon'
          EtiSepara = 100
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 3
          AutoSelect = False
          DataSource = dsProv
          DataField = 'Telefon'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dades Bancaries'
      ImageIndex = 1
      object HYArea3: THYArea
        Left = 0
        Top = 0
        Width = 680
        Height = 199
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        DataSource = dsProv
        object HYEdit25: THYEdit
          Left = 18
          Top = 8
          Width = 87
          Height = 33
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Entitat Bancaria'
          EtiSepara = 14
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 0
          AutoSelect = False
          DataSource = dsProv
          DataField = 'C_Banc'
        end
        object HYEdit26: THYEdit
          Left = 18
          Top = 48
          Width = 415
          Height = 33
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Banc'
          EtiSepara = 14
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 1
          AutoSelect = False
          DataSource = dsProv
          DataField = 'N_Banc'
        end
        object HYEdit27: THYEdit
          Left = 18
          Top = 88
          Width = 415
          Height = 33
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Direcci'#243' Banc'
          EtiSepara = 14
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 2
          AutoSelect = False
          DataSource = dsProv
          DataField = 'Dir_Banc'
        end
        object HYEdit28: THYEdit
          Left = 122
          Top = 128
          Width = 311
          Height = 33
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Poblaci'#243' Banc'
          EtiSepara = 14
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 3
          AutoSelect = False
          DataSource = dsProv
          DataField = 'Pob_Banc'
        end
        object HYEdit29: THYEdit
          Left = 18
          Top = 128
          Width = 95
          Height = 33
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'CPostal Banc'
          EtiSepara = 14
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 4
          AutoSelect = False
          DataSource = dsProv
          DataField = 'CP_Banc'
        end
        object HYEdit30: THYEdit
          Left = 114
          Top = 8
          Width = 95
          Height = 33
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Agencia'
          EtiSepara = 14
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 5
          AutoSelect = False
          DataSource = dsProv
          DataField = 'C_Agencia'
        end
        object HYEdit31: THYEdit
          Left = 218
          Top = 8
          Width = 39
          Height = 33
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'DC'
          EtiSepara = 14
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 6
          AutoSelect = False
          DataSource = dsProv
          DataField = 'DC'
        end
        object HYEdit32: THYEdit
          Left = 266
          Top = 8
          Width = 167
          Height = 33
          Idioma = Castellano
          EtiFontColor = clWindowText
          Eti = 'Compte'
          EtiSepara = 14
          EtiOrienta = eoArriba
          EtiAlign = taLeftJustify
          Diccionario = wDataFactu.Prov
          TabOrder = 7
          AutoSelect = False
          DataSource = dsProv
          DataField = 'Compte'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tarifes Proves Especials'
      ImageIndex = 2
      object HYGrid1: THYGrid
        Left = 0
        Top = 25
        Width = 680
        Height = 174
        Align = alClient
        Color = clWhite
        DataSource = dsProvEsp
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
            FieldName = 'C_ProvaEsp'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Proves_N_ProvaEsp'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Proves_Actiu'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Preu'
            Width = 87
            Visible = True
          end>
      end
      object HYBarra2: THYBarra
        Left = 0
        Top = 0
        Width = 680
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = ' '
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        DataSource = dsProvEsp
        VerConsultar = False
        VerOrdenar = False
        VerSalir = False
        VerIndices = False
        Titulo = True
        VerPrint = False
        VerRefresh = True
      end
    end
  end
  object Prov: ThySqlTable
    AfterOpen = CProvReadOnlyOrNot
    AfterInsert = CProvReadOnlyOrNot
    AfterPost = CProvReadOnlyOrNot
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PROVEIDORS WHERE C_Prov= :P0')
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataFactu.Prov
    IndiceActivo = 'Codi'
    CalcSimple = False
    AutoPost = False
    New.Active = True
    New.OrderDbField = 'C_Prov'
    Left = 40
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'P0'
        ParamType = ptUnknown
        Value = '00'
      end>
    object Prov_C_Prov: TStringField
      Tag = 100
      DisplayLabel = 'Codi Prov.'
      DisplayWidth = 10
      FieldName = 'C_Prov'
      Size = 10
    end
    object Prov_N_Prov: TStringField
      Tag = 100
      DisplayLabel = 'Proveidor'
      DisplayWidth = 40
      FieldName = 'N_Prov'
      Size = 40
    end
    object Prov_Direccio: TStringField
      Tag = 100
      DisplayLabel = 'Direcci'#243
      DisplayWidth = 40
      FieldName = 'Direccio'
      Size = 40
    end
    object Prov_Poblacio: TStringField
      Tag = 100
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 20
      FieldName = 'Poblacio'
    end
    object Prov_CPostal: TStringField
      Tag = 100
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldName = 'CPostal'
      Size = 5
    end
    object Prov_Cif: TStringField
      Tag = 100
      DisplayLabel = 'CIF'
      DisplayWidth = 15
      FieldName = 'Cif'
      Size = 15
    end
    object Prov_Telefon: TStringField
      Tag = 100
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 15
      FieldName = 'Telefon'
      Size = 15
    end
    object Prov_Rappel: TFloatField
      Tag = 100
      DisplayWidth = 5
      FieldName = 'Rappel'
      DisplayFormat = '#,##0.###" %";; '
    end
    object Prov_SN: TStringField
      Tag = 100
      DisplayLabel = 'Si o No'
      DisplayWidth = 1
      FieldName = 'SN'
      Size = 1
    end
    object Prov_C_Banc: TStringField
      Tag = 100
      DisplayLabel = 'Entitat Bancaria'
      DisplayWidth = 4
      FieldName = 'C_Banc'
      Size = 4
    end
    object Prov_N_Banc: TStringField
      Tag = 100
      DisplayLabel = 'Banc'
      DisplayWidth = 40
      FieldName = 'N_Banc'
      Size = 40
    end
    object Prov_Dir_Banc: TStringField
      Tag = 100
      DisplayLabel = 'Direcci'#243' Banc'
      DisplayWidth = 40
      FieldName = 'Dir_Banc'
      Size = 40
    end
    object Prov_Pob_Banc: TStringField
      Tag = 100
      DisplayLabel = 'Poblaci'#243' Banc'
      DisplayWidth = 20
      FieldName = 'Pob_Banc'
    end
    object Prov_CP_Banc: TStringField
      Tag = 100
      DisplayLabel = 'CPostal Banc'
      DisplayWidth = 5
      FieldName = 'CP_Banc'
      Size = 5
    end
    object Prov_C_Agencia: TStringField
      Tag = 100
      DisplayLabel = 'Agencia'
      DisplayWidth = 4
      FieldName = 'C_Agencia'
      Size = 4
    end
    object Prov_DC: TStringField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'DC'
      Size = 2
    end
    object Prov_Compte: TStringField
      Tag = 100
      DisplayWidth = 10
      FieldName = 'Compte'
      Size = 10
    end
    object Prov_ProvaEsp: TStringField
      Tag = 100
      DisplayLabel = 'Prova Especials'
      DisplayWidth = 1
      FieldName = 'ProvaEsp'
      Size = 1
    end
    object Prov_Ortesis: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Ortesis'
      Size = 1
    end
    object Prov_RappelOrtesi: TStringField
      Tag = 100
      DisplayLabel = 'Rappel Ortesi'
      DisplayWidth = 1
      FieldName = 'RappelOrtesi'
      Size = 1
    end
    object Prov_PerRappelOrtesi: TFloatField
      Tag = 100
      DisplayLabel = '% Rappel Ortesi'
      DisplayWidth = 5
      FieldName = 'PerRappelOrtesi'
      DisplayFormat = '#,##0.###" %";; '
    end
    object Prov_RappelProvaEsp: TStringField
      Tag = 100
      DisplayLabel = 'Rappel Prova Especial'
      DisplayWidth = 1
      FieldName = 'RappelProvaEsp'
      Size = 1
    end
    object Prov_PerRappelProvaEsp: TFloatField
      Tag = 100
      DisplayLabel = '% Rappel Prova Especial'
      DisplayWidth = 5
      FieldName = 'PerRappelProvaEsp'
      DisplayFormat = '#,##0.###" %";; '
    end
    object Prov_Nacionalidad: TSmallintField
      Tag = 100
      DisplayLabel = 'Nacionalidad del Proveedor'
      DisplayWidth = 1
      FieldName = 'Nacionalidad'
    end
    object Prov_Ambulancia: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Ambulancia'
      Size = 1
    end
    object Prov_IvaExempt: TStringField
      Tag = 100
      DisplayLabel = 'Iva Exempt Catal'#224
      DisplayWidth = 100
      FieldName = 'IvaExempt'
      Size = 100
    end
    object Prov_IvaExempt2: TStringField
      Tag = 100
      DisplayLabel = 'Iva Exempt Castell'#224
      DisplayWidth = 100
      FieldName = 'IvaExempt2'
      Size = 100
    end
    object Prov_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Prov_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Prov'
      Calculated = True
    end
    object Prov_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Prov_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Prov'
      Size = 40
      Calculated = True
    end
    object Prov_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Prov_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Prov'
      Calculated = True
    end
    object Prov_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Prov_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Prov'
      Size = 40
      Calculated = True
    end
    object Prov_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Prov_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'Prov'
      Size = 10
      Calculated = True
    end
    object Prov_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Prov_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'Prov'
      Calculated = True
    end
  end
  object dsProv: TDataSource
    DataSet = Prov
    Left = 40
    Top = 200
  end
  object TarifaProvaEsp: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataFactu.TarifaProvaEsp
    IndiceActivo = 'Prima'
    CalcSimple = False
    AutoPost = False
    Padre = dsProv
    Left = 38
    Top = 251
    object TarifaProvaEsp_C_Prov: TStringField
      Tag = 100
      DisplayLabel = 'Codi Proveidor'
      DisplayWidth = 10
      FieldName = 'C_Prov'
      Size = 10
    end
    object TarifaProvaEsp_C_ProvaEsp: TStringField
      Tag = 100
      DisplayLabel = 'Codi Prova'
      DisplayWidth = 5
      FieldName = 'C_ProvaEsp'
      Size = 5
    end
    object TarifaProvaEsp_Preu: TFloatField
      Tag = 100
      DisplayWidth = 13
      FieldName = 'Preu'
      DisplayFormat = '#,##0.###;;0'
    end
    object TarifaProvaEsp_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi Prov.'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Proveidors_C_Prov'
      LookupKeyFields = 'C_Prov'
      KeyFields = 'Proveidors'
      Size = 10
      Calculated = True
    end
    object TarifaProvaEsp_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Proveidor'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Proveidors_N_Prov'
      LookupKeyFields = 'N_Prov'
      KeyFields = 'Proveidors'
      Size = 40
      Calculated = True
    end
    object TarifaProvaEsp_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Proveidors_Poblacio'
      LookupKeyFields = 'Poblacio'
      KeyFields = 'Proveidors'
      Calculated = True
    end
    object TarifaProvaEsp_C0_3: TFloatField
      Tag = 101
      DisplayLabel = 'Rappel'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Proveidors_Rappel'
      LookupKeyFields = 'Rappel'
      KeyFields = 'Proveidors'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object TarifaProvaEsp_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Proveidors_Telefon'
      LookupKeyFields = 'Telefon'
      KeyFields = 'Proveidors'
      Size = 15
      Calculated = True
    end
    object TarifaProvaEsp_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Direcci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Proveidors_Direccio'
      LookupKeyFields = 'Direccio'
      KeyFields = 'Proveidors'
      Size = 40
      Calculated = True
    end
    object TarifaProvaEsp_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Proveidors_CPostal'
      LookupKeyFields = 'CPostal'
      KeyFields = 'Proveidors'
      Size = 5
      Calculated = True
    end
    object TarifaProvaEsp_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'CIF'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Proveidors_Cif'
      LookupKeyFields = 'Cif'
      KeyFields = 'Proveidors'
      Size = 15
      Calculated = True
    end
    object TarifaProvaEsp_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Prova Especial'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Proves_C_ProvaEsp'
      LookupKeyFields = 'C_ProvaEsp'
      KeyFields = 'Proves'
      Size = 5
      Calculated = True
    end
    object TarifaProvaEsp_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Proves_N_ProvaEsp'
      LookupKeyFields = 'N_ProvaEsp'
      KeyFields = 'Proves'
      Calculated = True
    end
    object TarifaProvaEsp_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Actiu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Proves_Actiu'
      LookupKeyFields = 'Actiu'
      KeyFields = 'Proves'
      Size = 1
      Calculated = True
    end
    object TarifaProvaEsp_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Prov.Predeterminat'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Proves_C_Prov'
      LookupKeyFields = 'C_Prov'
      KeyFields = 'Proves'
      Size = 10
      Calculated = True
    end
  end
  object dsProvEsp: TDataSource
    DataSet = TarifaProvaEsp
    Left = 40
    Top = 304
  end
end
